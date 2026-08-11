inline.NumInlined: 3838
inline.NumDeleted: 1144
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN3igl6opengl4glfw6Viewer10erase_coreEm:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, ptr noundef nonnull align 16 dereferenceable(64) %i.au, i64 64, i1 false), !tbaa.struct !166
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i64 64, i1 false), !tbaa.struct !166
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 416
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ax, ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i64 64, i1 false), !tbaa.struct !166
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 480
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.az, ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i64 64, i1 false), !tbaa.struct !166
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 544
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 544
  %i.bd = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i, !llvm.loop !259

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 16, !tbaa !66
  br label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.b, %bb.c, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i
  %i.bf = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i ], [ %i.m, %bb.c ], [ %i.m, %bb.b ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -544
  store ptr %i.bg, ptr %i.b, align 16, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 16, !tbaa !68 ; 3 uses
  %.not = icmp ult i64 %i.bi, %1
  %.not5 = icmp eq i64 %i.bi, 0
  %or.cond = or i1 %.not, %.not5
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 16, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.d, %bb.a
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3igl6opengl4glfw6Viewer11append_coreEN5Eigen6MatrixIfLi4ELi1ELi0ELi4ELi1EEEb(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr nofree noundef readonly align 16 captures(none) dead_on_return %1, i1 noundef zeroext %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !68
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !67
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %i.e = getelementptr inbounds nuw [544 x i8], ptr %.pre.i, i64 %i.d ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !66  ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 16, !tbaa !119
  store i32 %i.j, ptr %i.g, align 16, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !164
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.m, ptr noundef nonnull align 16 dereferenceable(12) %i.n, i64 12, i1 false), !tbaa.struct !165
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !164
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.s, ptr noundef nonnull align 16 dereferenceable(9) %i.t, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false), !tbaa.struct !165
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false), !tbaa.struct !165
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !165
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aa, ptr noundef nonnull align 16 dereferenceable(12) %i.ab, i64 12, i1 false), !tbaa.struct !165
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !tbaa.struct !165
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, ptr noundef nonnull align 8 dereferenceable(28) %i.af, i64 28, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i64 64, i1 false), !tbaa.struct !166
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %i.al, i64 64, i1 false), !tbaa.struct !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 16 dereferenceable(64) %i.an, i64 64, i1 false), !tbaa.struct !166
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i64 64, i1 false), !tbaa.struct !166
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i64 64, i1 false), !tbaa.struct !166
  %i.as = load ptr, ptr %i.f, align 16, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 544 ; 2 uses
  store ptr %i.at, ptr %i.f, align 16, !tbaa !66
  br label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.g, ptr noundef nonnull align 16 dereferenceable(544) %i.e)
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !12
  br label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c
  %i.au = phi ptr [ %i.at, %bb.b ], [ %.pre, %bb.c ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -336
  %i.aw = load <4 x float>, ptr %1, align 16, !tbaa !145
  store <4 x float> %i.aw, ptr %i.av, align 16, !tbaa !145
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !161 ; 2 uses
  %i.az = load ptr, ptr %i.f, align 16, !tbaa !12
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -544
  store i32 %i.ay, ptr %i.ba, align 16, !tbaa !119
  %i.bb = shl i32 %i.ay, 1
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !161
  br i1 %2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE9push_backERKS2_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !9 ; 2 uses
  %.not11 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.bo, %.lr.ph ], [ %i.bd, %bb.d ] ; 3 uses
  %i.bg = load ptr, ptr %i.f, align 16, !tbaa !12
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -544
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !119
  tail call void @_ZN3igl6opengl10ViewerData11set_visibleEbj(ptr noundef nonnull align 8 dereferenceable(1488) %.sroa.08.012, i1 noundef zeroext true, i32 noundef %i.bi)
  %i.bj = load i64, ptr %i.b, align 16, !tbaa !68
  %.pre.i6 = load ptr, ptr %i.a, align 8, !tbaa !67
  %sext.i7 = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext.i7, 32
  %i.bl = getelementptr inbounds nuw [544 x i8], ptr %.pre.i6, i64 %i.bk
  %i.bm = load ptr, ptr %i.f, align 16, !tbaa !12
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -544
  tail call void @_ZN3igl6opengl10ViewerData12copy_optionsERKNS0_10ViewerCoreES4_(ptr noundef nonnull align 8 dereferenceable(1488) %.sroa.08.012, ptr noundef nonnull align 16 dereferenceable(544) %i.bl, ptr noundef nonnull align 16 dereferenceable(544) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 1488 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.bf
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE9push_backERKS2_.exit
  %i.bp = load ptr, ptr %i.f, align 16, !tbaa !66 ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 544
  %i.bv = add nsw i64 %i.bu, -1
  store i64 %i.bv, ptr %i.b, align 16, !tbaa !68
  %i.bw = getelementptr inbounds i8, ptr %i.bp, i64 -544
  %i.bx = load i32, ptr %i.bw, align 16, !tbaa !119
  ret i32 %i.bx
}

declare void @_ZN3igl6opengl10ViewerData12copy_optionsERKNS0_10ViewerCoreES4_(ptr noundef nonnull align 8 dereferenceable(1488), ptr noundef nonnull align 16 dereferenceable(544), ptr noundef nonnull align 16 dereferenceable(544)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl4glfw6Viewer11draw_bufferIhEEvRNS0_10ViewerCoreERN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEESA_SA_SA_SA_(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x i64>, ptr %i.i, align 8, !tbaa !171 ; 4 uses
  %i.m = icmp eq <2 x i64> %i.l, zeroinitializer
  %i.n = sitofp <2 x i64> %i.l to <2 x float>
  %i.o = load <2 x float>, ptr %i.j, align 8
  %i.p = select <2 x i1> %i.m, <2 x float> %i.o, <2 x float> %i.n
  %i.q = fptosi <2 x float> %i.p to <2 x i32>     ; 3 uses
  %i.r = extractelement <2 x i32> %i.q, i64 0     ; 14 uses
  %i.s = sext i32 %i.r to i64                     ; 11 uses
  %i.t = extractelement <2 x i32> %i.q, i64 1     ; 13 uses
  %i.u = sext i32 %i.t to i64                     ; 11 uses
  %i.v = icmp eq i32 %i.r, 0
  %i.w = icmp eq i32 %i.t, 0
  %or.cond.i.i = or i1 %i.v, %i.w                 ; 5 uses
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = sdiv i64 9223372036854775807, %i.u
  %i.y = icmp slt i64 %i.x, %i.s
  br i1 %i.y, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  %i.aa = mul nsw i64 %i.u, %i.s                  ; 15 uses
  %i.ab = extractelement <2 x i64> %i.l, i64 0
  %i.ac = extractelement <2 x i64> %i.l, i64 1
  %i.ad = mul nsw i64 %i.ac, %i.ab
  %.not.i.i = icmp eq i64 %i.aa, %i.ad
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !260
  tail call void @free(ptr noundef %i.ae) #30
  %i.af = icmp sgt i64 %i.aa, 0
  br i1 %i.af, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.aa) #38 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.ag, %bb.e ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !260
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.sink.split.i.i
  store i64 %i.s, ptr %i.i, align 8, !tbaa !261
  store i64 %i.u, ptr %i.k, align 8, !tbaa !262
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i115, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.aj = sdiv i64 9223372036854775807, %i.u
  %i.ak = icmp slt i64 %i.aj, %i.s
  br i1 %i.ak, label %bb.h, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i115

bb.h:                                             ; preds = %bb.g
  %i.al = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.al, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i115: ; preds = %bb.g, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !262
  %i.aq = mul nsw i64 %i.ap, %i.an
  %.not.i.i116 = icmp eq i64 %i.aa, %i.aq
  br i1 %.not.i.i116, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit119, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i115
  %i.ar = load ptr, ptr %3, align 8, !tbaa !260
  tail call void @free(ptr noundef %i.ar) #30
  %i.as = icmp sgt i64 %i.aa, 0
  br i1 %i.as, label %bb.j, label %.sink.split.i.i117

bb.j:                                             ; preds = %bb.i
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.aa) #38 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %.sink.split.i.i117

bb.k:                                             ; preds = %bb.j
  %i.av = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.av, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i117:                               ; preds = %bb.j, %bb.i
  %.sink.i.i118 = phi ptr [ %i.at, %bb.j ], [ null, %bb.i ]
  store ptr %.sink.i.i118, ptr %3, align 8, !tbaa !260
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit119

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit119: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i115, %.sink.split.i.i117
  store i64 %i.s, ptr %i.am, align 8, !tbaa !261
  store i64 %i.u, ptr %i.ao, align 8, !tbaa !262
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i121, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit119
  %i.aw = sdiv i64 9223372036854775807, %i.u
  %i.ax = icmp slt i64 %i.aw, %i.s
  br i1 %i.ax, label %bb.m, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i121

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ay, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i121: ; preds = %bb.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit119
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !261
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !262
  %i.bd = mul nsw i64 %i.bc, %i.ba
  %.not.i.i122 = icmp eq i64 %i.aa, %i.bd
  br i1 %.not.i.i122, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit125, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i121
  %i.be = load ptr, ptr %4, align 8, !tbaa !260
  tail call void @free(ptr noundef %i.be) #30
  %i.bf = icmp sgt i64 %i.aa, 0
  br i1 %i.bf, label %bb.o, label %.sink.split.i.i123

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.aa) #38 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.p, label %.sink.split.i.i123

bb.p:                                             ; preds = %bb.o
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bi, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i123:                               ; preds = %bb.o, %bb.n
  %.sink.i.i124 = phi ptr [ %i.bg, %bb.o ], [ null, %bb.n ]
  store ptr %.sink.i.i124, ptr %4, align 8, !tbaa !260
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit125

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit125: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i121, %.sink.split.i.i123
  store i64 %i.s, ptr %i.az, align 8, !tbaa !261
  store i64 %i.u, ptr %i.bb, align 8, !tbaa !262
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i127, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit125
  %i.bj = sdiv i64 9223372036854775807, %i.u
  %i.bk = icmp slt i64 %i.bj, %i.s
  br i1 %i.bk, label %bb.r, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i127

bb.r:                                             ; preds = %bb.q
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bl, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i127: ; preds = %bb.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit125
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !261
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !262
  %i.bq = mul nsw i64 %i.bp, %i.bn
  %.not.i.i128 = icmp eq i64 %i.aa, %i.bq
  br i1 %.not.i.i128, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit131, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i127
  %i.br = load ptr, ptr %5, align 8, !tbaa !260
  tail call void @free(ptr noundef %i.br) #30
  %i.bs = icmp sgt i64 %i.aa, 0
  br i1 %i.bs, label %bb.t, label %.sink.split.i.i129

bb.t:                                             ; preds = %bb.s
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.aa) #38 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.u, label %.sink.split.i.i129

bb.u:                                             ; preds = %bb.t
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bv, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i129:                               ; preds = %bb.t, %bb.s
  %.sink.i.i130 = phi ptr [ %i.bt, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i.i130, ptr %5, align 8, !tbaa !260
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit131

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit131: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i127, %.sink.split.i.i129
  store i64 %i.s, ptr %i.bm, align 8, !tbaa !261
  store i64 %i.u, ptr %i.bo, align 8, !tbaa !262
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i133, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit131
  %i.bw = sdiv i64 9223372036854775807, %i.u
  %i.bx = icmp slt i64 %i.bw, %i.s
  br i1 %i.bx, label %bb.w, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i133

end_hunk_0
begin_hunk_1_@_ZN3igl6opengl4glfw6Viewer11draw_bufferIhEEvRNS0_10ViewerCoreERN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEESA_SA_SA_SA_:bb.a
bb.aa:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit137
  %i.dh = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.da
  br i1 %i.di, label %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.dj = load i64, ptr %i.da, align 8, !tbaa !145
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #35
  br label %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit147

_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit147: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dl = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.dl(i32 noundef 36160, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.dm = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !263
  call void %i.dm(i32 noundef 1, ptr noundef nonnull %i.f)
  %i.dn = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.do = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.dn(i32 noundef 36160, i32 noundef %i.do)
  %i.dp = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.dp(i32 noundef 1, ptr noundef nonnull %i.g)
  %i.dq = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.dr = load i32, ptr %i.g, align 4, !tbaa !65
  call void %i.dq(i32 noundef 3553, i32 noundef %i.dr)
  %i.ds = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !263
  call void %i.ds(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef null)
  %i.dt = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.dt(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.du = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.du(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.dv = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.dw = load i32, ptr %i.g, align 4, !tbaa !65
  call void %i.dv(i32 noundef 36160, i32 noundef 36064, i32 noundef 3553, i32 noundef %i.dw, i32 noundef 0)
  %i.dx = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.dx(i32 noundef 1, ptr noundef nonnull %i.h)
  %i.dy = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.dz = load i32, ptr %i.h, align 4, !tbaa !65
  call void %i.dy(i32 noundef 3553, i32 noundef %i.dz)
  %i.ea = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !263
  call void %i.ea(i32 noundef 3553, i32 noundef 0, i32 noundef 35056, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 0, i32 noundef 34041, i32 noundef 34042, ptr noundef null)
  %i.eb = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.eb(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.ec = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.ec(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.ed = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.ee = load i32, ptr %i.h, align 4, !tbaa !65
  call void %i.ed(i32 noundef 36160, i32 noundef 33306, i32 noundef 3553, i32 noundef %i.ee, i32 noundef 0)
  %i.ef = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.ef(i32 noundef 36160, i32 noundef 0)
  %i.eg = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.eh = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.eg(i32 noundef 36160, i32 noundef %i.eh)
  %i.ei = load ptr, ptr @glad_glClearColor, align 8, !tbaa !263
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ek = load float, ptr %i.ej, align 16, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.em = load float, ptr %i.el, align 4, !tbaa !69
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eo = load float, ptr %i.en, align 8, !tbaa !69
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !69
  call void %i.ei(float noundef %i.ek, float noundef %i.em, float noundef %i.eo, float noundef %i.eq)
  %i.er = load ptr, ptr @glad_glClear, align 8, !tbaa !263
  call void %i.er(i32 noundef 16640)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %.sroa.0191.0.copyload = load <4 x float>, ptr %i.es, align 16, !tbaa !145
  store <2 x float> zeroinitializer, ptr %i.es, align 16, !tbaa !69
  %i.et = sitofp <2 x i32> %i.q to <2 x float>
  store <2 x float> %i.et, ptr %i.j, align 8, !tbaa !69
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !9  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !9 ; 2 uses
  %.not193194 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not193194, label %._crit_edge.i.i148, label %.lr.ph

._crit_edge.i.i148:                               ; preds = %bb.ad, %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit147
  store <4 x float> %.sroa.0191.0.copyload, ptr %i.es, align 16, !tbaa !145
  %i.ey = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.ey(i32 noundef 36008, i32 noundef %i.ez)
  %i.fa = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.fb = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.fa(i32 noundef 36009, i32 noundef %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.fc, ptr %8, align 8, !tbaa !170
  store i64 2322280100032570722, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.fd, align 8, !tbaa !172
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.fe, align 8, !tbaa !145
  %i.ff = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %8)
          to label %bb.ae unwind label %bb.ag     ; 0 uses

bb.ab:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit137
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.da
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.ab
  %i.fj = load i64, ptr %i.da, align 8, !tbaa !145
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

.lr.ph:                                           ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit147, %bb.ad
  %.sroa.0173.0195 = phi ptr [ %i.fp, %bb.ad ], [ %i.ev, %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit147 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0173.0195, i64 584
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !85
  %i.fn = load i32, ptr %1, align 16, !tbaa !119
  %i.fo = and i32 %i.fn, %i.fm
  %.not113 = icmp eq i32 %i.fo, 0
  br i1 %.not113, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  call void @_ZN3igl6opengl10ViewerCore4drawERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(1488) %.sroa.0173.0195, i1 noundef zeroext true)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0173.0195, i64 1488 ; 2 uses
  %.not193 = icmp eq ptr %i.fp, %i.ex
  br i1 %.not193, label %._crit_edge.i.i148, label %.lr.ph

bb.ae:                                            ; preds = %._crit_edge.i.i148
  %i.fq = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fc
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.ae
  %i.fs = load i64, ptr %i.fc, align 8, !tbaa !145
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  %i.fu = load ptr, ptr @glad_glBlitFramebuffer, align 8, !tbaa !263
  call void %i.fu(i32 noundef 0, i32 noundef 0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 0, i32 noundef 0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 16640, i32 noundef 9728)
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fv, ptr %9, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 19, ptr %i.a, align 8, !tbaa !171
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc160 unwind label %bb.ah ; 2 uses

.noexc160:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  store ptr %i.fw, ptr %9, align 8, !tbaa !61
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !171 ; 3 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.fw, ptr noundef nonnull align 1 dereferenceable(19) @.str.14, i64 19, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !172
  %i.fz = load ptr, ptr %9, align 8, !tbaa !61
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  store i8 0, ptr %i.ga, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.gb = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %9)
          to label %bb.af unwind label %bb.ai     ; 0 uses

bb.af:                                            ; preds = %.noexc160
  %i.gc = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fv
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.af
  %i.ge = load i64, ptr %i.fv, align 8, !tbaa !145
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  %i.gg = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.gh = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.gg(i32 noundef 36160, i32 noundef %i.gh)
  %i.gi = mul nsw i32 %i.t, %i.r                  ; 2 uses
  %i.gj = shl nsw i32 %i.gi, 2
  %i.gk = sext i32 %i.gj to i64
  %i.gl = call noalias ptr @calloc(i64 noundef %i.gk, i64 noundef 1) #39 ; 3 uses
  %i.gm = sext i32 %i.gi to i64
  %i.gn = call noalias ptr @calloc(i64 noundef %i.gm, i64 noundef 1) #39 ; 3 uses
  %i.go = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !263
  call void %i.go(i32 noundef 0, i32 noundef 0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 6408, i32 noundef 5121, ptr noundef %i.gl)
  %i.gp = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !263
  call void %i.gp(i32 noundef 0, i32 noundef 0, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 6402, i32 noundef 5121, ptr noundef %i.gn)
  %i.gq = icmp ne i32 %i.t, 0
  %i.gr = icmp ne i32 %i.r, 0
  %or.cond = and i1 %i.gq, %i.gr
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge201.split

.preheader.preheader:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %wide.trip.count210 = zext i32 %i.t to i64
  %wide.trip.count = zext i32 %i.r to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv207 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next208, %._crit_edge ] ; 6 uses
  %indvars.iv202 = phi i32 [ 0, %.preheader.preheader ], [ %indvars.iv.next203, %._crit_edge ] ; 2 uses
  %10 = sext i32 %indvars.iv202 to i64
  br label %bb.aj

._crit_edge201.split:                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  call void @free(ptr noundef %i.gl) #30
  call void @free(ptr noundef %i.gn) #30
  %i.gs = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.gs(i32 noundef 36009, i32 noundef 0)
  %i.gt = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.gt(i32 noundef 36008, i32 noundef 0)
  %i.gu = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.gu(i32 noundef 36160, i32 noundef 0)
  %i.gv = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.gv(i32 noundef 1, ptr noundef nonnull %i.g)
  %i.gw = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.gw(i32 noundef 1, ptr noundef nonnull %i.h)
  %i.gx = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.gx(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.gy = load ptr, ptr @glad_glDeleteRenderbuffers, align 8, !tbaa !263
  call void %i.gy(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.gz = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !263
  call void %i.gz(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.ha = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !263
  call void %i.ha(i32 noundef 1, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void

bb.ag:                                            ; preds = %._crit_edge.i.i148
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.ag
  %i.he = load i64, ptr %i.fc, align 8, !tbaa !145
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.ai:                                            ; preds = %.noexc160
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.fv
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.ai
  %i.hk = load i64, ptr %i.fv, align 8, !tbaa !145
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

._crit_edge:                                      ; preds = %bb.aj
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %indvars.iv.next203 = add i32 %indvars.iv202, %i.r
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge201.split, label %.preheader, !llvm.loop !264

bb.aj:                                            ; preds = %.preheader, %bb.aj
  %indvars.iv202.a = phi i64 [ %10, %.preheader ], [ %indvars.iv.next203.a, %bb.aj ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.aj ] ; 6 uses
  %i.hm = shl nsw i64 %indvars.iv202.a, 2
  %i.hn = getelementptr inbounds i8, ptr %i.gl, i64 %i.hm ; 4 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !145
  %i.hp = load ptr, ptr %2, align 8, !tbaa !260
  %i.hq = load i64, ptr %i.i, align 8, !tbaa !261
  %i.hr = mul nsw i64 %i.hq, %indvars.iv207
  %i.hs = getelementptr i8, ptr %i.hp, i64 %indvars.iv
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hr
  store i8 %i.ho, ptr %i.ht, align 1, !tbaa !145
  %i.hu = getelementptr i8, ptr %i.hn, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !145
  %i.hw = load ptr, ptr %3, align 8, !tbaa !260
  %i.hx = load i64, ptr %i.am, align 8, !tbaa !261
  %i.hy = mul nsw i64 %i.hx, %indvars.iv207
  %i.hz = getelementptr i8, ptr %i.hw, i64 %indvars.iv
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hy
  store i8 %i.hv, ptr %i.ia, align 1, !tbaa !145
  %i.ib = getelementptr i8, ptr %i.hn, i64 2
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !145
  %i.id = load ptr, ptr %4, align 8, !tbaa !260
  %i.ie = load i64, ptr %i.az, align 8, !tbaa !261
  %i.if = mul nsw i64 %i.ie, %indvars.iv207
  %i.ig = getelementptr i8, ptr %i.id, i64 %indvars.iv
  %i.ih = getelementptr i8, ptr %i.ig, i64 %i.if
  store i8 %i.ic, ptr %i.ih, align 1, !tbaa !145
  %i.ii = getelementptr i8, ptr %i.hn, i64 3
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !145
  %i.ik = load ptr, ptr %5, align 8, !tbaa !260
  %i.il = load i64, ptr %i.bm, align 8, !tbaa !261
  %i.im = mul nsw i64 %i.il, %indvars.iv207
  %i.in = getelementptr i8, ptr %i.ik, i64 %indvars.iv
  %i.io = getelementptr i8, ptr %i.in, i64 %i.im
  store i8 %i.ij, ptr %i.io, align 1, !tbaa !145
  %i.ip = getelementptr inbounds i8, ptr %i.gn, i64 %indvars.iv202.a
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !145
  %i.ir = load ptr, ptr %6, align 8, !tbaa !260
  %i.is = load i64, ptr %i.bz, align 8, !tbaa !261
  %i.it = mul nsw i64 %i.is, %indvars.iv207
  %i.iu = getelementptr i8, ptr %i.ir, i64 %indvars.iv
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.it
  store i8 %i.iq, ptr %i.iv, align 1, !tbaa !145
  %indvars.iv.next203.a = add nsw i64 %indvars.iv202.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aj, !llvm.loop !265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.ai, %bb.ag, %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  %.pn109.pn = phi { ptr, i32 } [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %i.hb, %bb.ag ], [ %i.hg, %bb.ah ], [ %i.hh, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %.pn109.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.fg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  resume { ptr, i32 } %.pn109.pn.pn
}

declare noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl4glfw6Viewer11draw_bufferIdEEvRNS0_10ViewerCoreERN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEESA_SA_SA_SA_(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !171 ; 2 uses
  %i.l = icmp eq <2 x i64> %i.k, zeroinitializer
  %i.m = sitofp <2 x i64> %i.k to <2 x float>
  %i.n = load <2 x float>, ptr %i.j, align 8
  %i.o = select <2 x i1> %i.l, <2 x float> %i.n, <2 x float> %i.m
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 3 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0     ; 14 uses
  %i.r = sext i32 %i.q to i64                     ; 7 uses
  %i.s = extractelement <2 x i32> %i.p, i64 1     ; 12 uses
  %i.t = sext i32 %i.s to i64                     ; 7 uses
  %i.u = icmp eq i32 %i.q, 0                      ; 2 uses
  %i.v = icmp eq i32 %i.s, 0                      ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = sdiv i64 9223372036854775807, %i.t
  %i.x = icmp slt i64 %i.w, %i.r
  br i1 %i.x, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121

bb.c:                                             ; preds = %bb.b
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121: ; preds = %bb.b, %bb.a
  %i.z = mul nsw i64 %i.t, %i.r                   ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.aa = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !263
  call void %i.aa(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.ab = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.ab(i32 noundef 36160, i32 noundef %i.ac)
  %i.ad = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.ad(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.ae = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.af = load i32, ptr %i.d, align 4, !tbaa !65
  call void %i.ae(i32 noundef 37120, i32 noundef %i.af)
  %i.ag = load ptr, ptr @glad_glTexImage2DMultisample, align 8, !tbaa !263
  call void %i.ag(i32 noundef 37120, i32 noundef 4, i32 noundef 6408, i32 noundef %i.q, i32 noundef %i.s, i8 noundef zeroext 1)
  %i.ah = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  call void %i.ah(i32 noundef 37120, i32 noundef 0)
  %i.ai = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !65
  call void %i.ai(i32 noundef 36160, i32 noundef 36064, i32 noundef 37120, i32 noundef %i.aj, i32 noundef 0)
  %i.ak = load ptr, ptr @glad_glGenRenderbuffers, align 8, !tbaa !263
  call void %i.ak(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.al = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !263
  %i.am = load i32, ptr %i.e, align 4, !tbaa !65
  call void %i.al(i32 noundef 36161, i32 noundef %i.am)
  %i.an = load ptr, ptr @glad_glRenderbufferStorageMultisample, align 8, !tbaa !263
  call void %i.an(i32 noundef 36161, i32 noundef 4, i32 noundef 35056, i32 noundef %i.q, i32 noundef %i.s)
  %i.ao = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !263
  call void %i.ao(i32 noundef 36161, i32 noundef 0)
  %i.ap = load ptr, ptr @glad_glFramebufferRenderbuffer, align 8, !tbaa !263
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !65
  call void %i.ap(i32 noundef 36160, i32 noundef 33306, i32 noundef 36161, i32 noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ar, ptr %7, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 26, ptr %i.b, align 8, !tbaa !171
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !61
  %i.at = load i64, ptr %i.b, align 8, !tbaa !171 ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.as, ptr noundef nonnull align 1 dereferenceable(26) @.str.12, i64 26, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !172
  %i.av = load ptr, ptr %7, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ax = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %7)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121
  %i.ay = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !145
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #35
  br label %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131

_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.bc(i32 noundef 36160, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.bd = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !263
  call void %i.bd(i32 noundef 1, ptr noundef nonnull %i.f)
  %i.be = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.be(i32 noundef 36160, i32 noundef %i.bf)
  %i.bg = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.bg(i32 noundef 1, ptr noundef nonnull %i.g)
  %i.bh = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !65
  call void %i.bh(i32 noundef 3553, i32 noundef %i.bi)
  %i.bj = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !263
  call void %i.bj(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef null)
  %i.bk = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bk(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.bl = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bl(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.bm = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.bn = load i32, ptr %i.g, align 4, !tbaa !65
  call void %i.bm(i32 noundef 36160, i32 noundef 36064, i32 noundef 3553, i32 noundef %i.bn, i32 noundef 0)
  %i.bo = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.bo(i32 noundef 1, ptr noundef nonnull %i.h)
  %i.bp = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !65
  call void %i.bp(i32 noundef 3553, i32 noundef %i.bq)
  %i.br = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !263
  call void %i.br(i32 noundef 3553, i32 noundef 0, i32 noundef 35056, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 0, i32 noundef 34041, i32 noundef 34042, ptr noundef null)
  %i.bs = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bs(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.bt = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bt(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.bu = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.bv = load i32, ptr %i.h, align 4, !tbaa !65
  call void %i.bu(i32 noundef 36160, i32 noundef 33306, i32 noundef 3553, i32 noundef %i.bv, i32 noundef 0)
  %i.bw = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.bw(i32 noundef 36160, i32 noundef 0)
  %i.bx = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.by = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.bx(i32 noundef 36160, i32 noundef %i.by)
  %i.bz = load ptr, ptr @glad_glClearColor, align 8, !tbaa !263
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load float, ptr %i.ca, align 16, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !69
  call void %i.bz(float noundef %i.cb, float noundef %i.cd, float noundef %i.cf, float noundef %i.ch)
  %i.ci = load ptr, ptr @glad_glClear, align 8, !tbaa !263
  call void %i.ci(i32 noundef 16640)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %.sroa.0175.0.copyload = load <4 x float>, ptr %i.cj, align 16, !tbaa !145
  store <2 x float> zeroinitializer, ptr %i.cj, align 16, !tbaa !69
  %i.ck = sitofp <2 x i32> %i.p to <2 x float>
  store <2 x float> %i.ck, ptr %i.j, align 8, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !9  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !9 ; 2 uses
  %.not177178 = icmp eq ptr %i.cm, %i.co
  br i1 %.not177178, label %._crit_edge.i.i132, label %.lr.ph

._crit_edge.i.i132:                               ; preds = %bb.g, %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131
  store <4 x float> %.sroa.0175.0.copyload, ptr %i.cj, align 16, !tbaa !145
  %i.cp = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.cp(i32 noundef 36008, i32 noundef %i.cq)
  %i.cr = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.cs = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.cr(i32 noundef 36009, i32 noundef %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ct, ptr %8, align 8, !tbaa !170
  store i64 2322280100032570722, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.cu, align 8, !tbaa !172
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.cv, align 8, !tbaa !145
  %i.cw = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %8)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ar
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.e
  %i.da = load i64, ptr %i.ar, align 8, !tbaa !145
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

.lr.ph:                                           ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131, %bb.g
  %.sroa.0157.0179 = phi ptr [ %i.dg, %bb.g ], [ %i.cm, %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0157.0179, i64 584
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !85
  %i.de = load i32, ptr %1, align 16, !tbaa !119
  %i.df = and i32 %i.de, %i.dd
  %.not113 = icmp eq i32 %i.df, 0
  br i1 %.not113, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN3igl6opengl10ViewerCore4drawERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(1488) %.sroa.0157.0179, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0157.0179, i64 1488 ; 2 uses
  %.not177 = icmp eq ptr %i.dg, %i.co
  br i1 %.not177, label %._crit_edge.i.i132, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge.i.i132
  %i.dh = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ct
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.h
  %i.dj = load i64, ptr %i.ct, align 8, !tbaa !145
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  %i.dl = load ptr, ptr @glad_glBlitFramebuffer, align 8, !tbaa !263
  call void %i.dl(i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 16640, i32 noundef 9728)
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dm, ptr %9, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 19, ptr %i.a, align 8, !tbaa !171
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc144 unwind label %bb.k  ; 2 uses

.noexc144:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  store ptr %i.dn, ptr %9, align 8, !tbaa !61
  %i.do = load i64, ptr %i.a, align 8, !tbaa !171 ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.dn, ptr noundef nonnull align 1 dereferenceable(19) @.str.14, i64 19, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !172
  %i.dq = load ptr, ptr %9, align 8, !tbaa !61
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ds = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %9)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %.noexc144
  %i.dt = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.i
  %i.dv = load i64, ptr %i.dm, align 8, !tbaa !145
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.dx = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.dx(i32 noundef 36160, i32 noundef %i.dy)
  %i.dz = mul nsw i32 %i.s, %i.q                  ; 2 uses
  %i.ea = shl nsw i32 %i.dz, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = call noalias ptr @calloc(i64 noundef %i.eb, i64 noundef 4) #39 ; 5 uses
  %i.ed = sext i32 %i.dz to i64
  %i.ee = call noalias ptr @calloc(i64 noundef %i.ed, i64 noundef 4) #39 ; 4 uses
  %i.ef = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !263
  call void %i.ef(i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.ec)
  %i.eg = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !263
  call void %i.eg(i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.ee)
  %brmerge = or i1 %i.v, %i.u
  br i1 %brmerge, label %._crit_edge193.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %2, align 8, !tbaa !209   ; 3 uses
  %i.em = load i64, ptr %i.i, align 8, !tbaa !202 ; 3 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !209   ; 5 uses
  %i.eo = load i64, ptr %i.ek, align 8, !tbaa !202 ; 3 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !209   ; 6 uses
  %i.eq = load i64, ptr %i.ej, align 8, !tbaa !202 ; 4 uses
  %i.er = load ptr, ptr %5, align 8, !tbaa !209   ; 6 uses
  %i.es = load i64, ptr %i.ei, align 8, !tbaa !202 ; 4 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !209   ; 6 uses
  %i.eu = load i64, ptr %i.eh, align 8, !tbaa !202 ; 4 uses
  %wide.trip.count204 = zext i32 %i.s to i64      ; 2 uses
  %wide.trip.count = zext i32 %i.q to i64         ; 8 uses
  %i.ev = add nsw i64 %wide.trip.count204, -1     ; 5 uses
  %i.ew = mul i64 %i.em, %i.ev
  %i.ex = add i64 %i.ew, %wide.trip.count
  %i.ey = shl i64 %i.ex, 3
  %scevgep = getelementptr i8, ptr %i.el, i64 %i.ey
  %i.ez = mul i64 %i.eo, %i.ev
  %i.fa = add i64 %i.ez, %wide.trip.count
  %i.fb = shl i64 %i.fa, 3
  %scevgep225 = getelementptr i8, ptr %i.en, i64 %i.fb ; 3 uses
  %i.fc = mul i64 %i.eq, %i.ev
  %i.fd = add i64 %i.fc, %wide.trip.count
  %i.fe = shl i64 %i.fd, 3
  %scevgep226 = getelementptr i8, ptr %i.ep, i64 %i.fe ; 4 uses
  %i.ff = mul i64 %i.es, %i.ev
  %i.fg = add i64 %i.ff, %wide.trip.count
  %i.fh = shl i64 %i.fg, 3
  %scevgep227 = getelementptr i8, ptr %i.er, i64 %i.fh ; 4 uses
  %i.fi = mul i64 %i.eu, %i.ev
  %i.fj = add i64 %i.fi, %wide.trip.count
  %i.fk = shl i64 %i.fj, 3
  %scevgep228 = getelementptr i8, ptr %i.et, i64 %i.fk ; 4 uses
  %i.fl = insertelement <4 x ptr> poison, ptr %i.el, i64 0
  %i.fm = shufflevector <4 x ptr> %i.fl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fn = insertelement <4 x ptr> poison, ptr %scevgep225, i64 0
  %i.fo = insertelement <4 x ptr> %i.fn, ptr %scevgep226, i64 1
  %i.fp = insertelement <4 x ptr> %i.fo, ptr %scevgep227, i64 2
  %i.fq = insertelement <4 x ptr> %i.fp, ptr %scevgep228, i64 3
  %i.fr = insertelement <4 x ptr> poison, ptr %i.en, i64 0
  %i.fs = insertelement <4 x ptr> %i.fr, ptr %i.ep, i64 1
  %i.ft = insertelement <4 x ptr> %i.fs, ptr %i.er, i64 2
  %i.fu = insertelement <4 x ptr> %i.ft, ptr %i.et, i64 3
  %i.fv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.fw = shufflevector <4 x ptr> %i.fv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fx = insertelement <2 x ptr> poison, ptr %i.er, i64 0
  %i.fy = insertelement <2 x ptr> %i.fx, ptr %i.ep, i64 1
  %i.fz = insertelement <2 x ptr> poison, ptr %scevgep225, i64 0 ; 2 uses
  %i.ga = insertelement <2 x ptr> %i.fz, ptr %scevgep227, i64 1
  %i.gb = insertelement <2 x ptr> poison, ptr %i.en, i64 0 ; 2 uses
  %i.gc = insertelement <2 x ptr> %i.gb, ptr %i.er, i64 1
  %i.gd = insertelement <2 x ptr> poison, ptr %scevgep227, i64 0
  %i.ge = insertelement <2 x ptr> %i.gd, ptr %scevgep226, i64 1
  %i.gf = insertelement <2 x ptr> poison, ptr %i.et, i64 0
  %i.gg = insertelement <2 x ptr> %i.gf, ptr %i.ep, i64 1
  %i.gh = insertelement <2 x ptr> %i.fz, ptr %scevgep228, i64 1
  %i.gi = insertelement <2 x ptr> %i.gb, ptr %i.et, i64 1
  %i.gj = insertelement <2 x ptr> poison, ptr %scevgep228, i64 0
  %i.gk = insertelement <2 x ptr> %i.gj, ptr %scevgep226, i64 1
  %min.iters.check = icmp ult i32 %i.q, 22
  %i.gl = icmp ult <4 x ptr> %i.fm, %i.fq
  %i.gm = icmp ult <4 x ptr> %i.fu, %i.fw
  %i.gn = and <4 x i1> %i.gl, %i.gm
  %bound0247 = icmp ult ptr %i.en, %scevgep226
  %bound1248 = icmp ult ptr %i.ep, %scevgep225
  %found.conflict249 = and i1 %bound0247, %bound1248
  %i.go = icmp ult <2 x ptr> %i.gc, %i.ge
  %i.gp = icmp ult <2 x ptr> %i.fy, %i.ga
  %i.gq = icmp ult <2 x ptr> %i.gi, %i.gk
  %i.gr = icmp ult <2 x ptr> %i.gg, %i.gh
  %i.gs = or i64 %i.eu, %i.eo
  %i.gt = or i64 %i.eu, %i.eq
  %bound0277 = icmp ult ptr %i.er, %scevgep228
  %bound1278 = icmp ult ptr %i.et, %scevgep227
  %found.conflict279 = and i1 %bound0277, %bound1278
  %i.gu = bitcast <4 x i1> %i.gn to i4
  %i.gv = icmp ne i4 %i.gu, 0
  %i.gw = or i64 %i.es, %i.gs
  %i.gx = or i64 %i.es, %i.gt
  %i.gy = and <2 x i1> %i.gp, %i.go
  %i.gz = and <2 x i1> %i.gr, %i.gq
  %i.ha = or <2 x i1> %i.gy, %i.gz
  %i.hb = or i64 %i.eq, %i.gw
  %.mask = and i64 %i.gx, 1152921504606846976
  %i.hc = icmp ne i64 %.mask, 0
  %op.rdx293 = or i1 %i.hc, %found.conflict249
  %i.hd = bitcast <2 x i1> %i.ha to i2
  %op.rdx294 = icmp ne i2 %i.hd, 0
  %i.he = or i64 %i.hb, %i.em
  %.mask300 = and i64 %i.he, 1152921504606846976
  %i.hf = icmp ne i64 %.mask300, 0
  %op.rdx295 = or i1 %i.gv, %i.hf
  %op.rdx296 = or i1 %op.rdx293, %op.rdx294
  %op.rdx297 = or i1 %op.rdx295, %op.rdx296
  %op.rdx298 = or i1 %op.rdx297, %found.conflict279
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv201 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next204, %._crit_edge ] ; 6 uses
  %indvars.iv196 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next197, %._crit_edge ] ; 2 uses
  %10 = sext i32 %indvars.iv196 to i64            ; 3 uses
  %i.hg = mul nsw i64 %i.em, %indvars.iv201
  %invariant.gep = getelementptr [8 x i8], ptr %i.el, i64 %i.hg ; 2 uses
  %i.hh = mul nsw i64 %i.eo, %indvars.iv201
  %invariant.gep183 = getelementptr [8 x i8], ptr %i.en, i64 %i.hh ; 2 uses
  %i.hi = mul nsw i64 %i.eq, %indvars.iv201
  %invariant.gep185 = getelementptr [8 x i8], ptr %i.ep, i64 %i.hi ; 2 uses
  %i.hj = mul nsw i64 %i.es, %indvars.iv201
  %invariant.gep187 = getelementptr [8 x i8], ptr %i.er, i64 %i.hj ; 2 uses
  %i.hk = mul nsw i64 %i.eu, %indvars.iv201
  %invariant.gep189 = getelementptr [8 x i8], ptr %i.et, i64 %i.hk ; 2 uses
  %brmerge303 = select i1 %min.iters.check, i1 true, i1 %op.rdx298
  br i1 %brmerge303, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.hl = add nsw i64 %n.vec, %10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.hm = add i64 %index, %10                     ; 3 uses
  %i.hn = shl nsw i64 %i.hm, 4
  %i.ho = shl i64 %i.hm, 4
  %i.hp = getelementptr inbounds i8, ptr %i.ec, i64 %i.hn ; 4 uses
  %i.hq = getelementptr i8, ptr %i.ec, i64 %i.ho  ; 4 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  %i.hs = load float, ptr %i.hp, align 4, !tbaa !69
  %i.ht = load float, ptr %i.hr, align 4, !tbaa !69
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.ht, i64 1
  %i.hw = fpext <2 x float> %i.hv to <2 x double>
  %i.hx = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.hw, ptr %i.hx, align 8, !tbaa !72, !alias.scope !266, !noalias !269
  %i.hy = getelementptr i8, ptr %i.hp, i64 4
  %i.hz = getelementptr i8, ptr %i.hq, i64 20
  %i.ia = load float, ptr %i.hy, align 4, !tbaa !69
  %i.ib = load float, ptr %i.hz, align 4, !tbaa !69
  %i.ic = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.id = insertelement <2 x float> %i.ic, float %i.ib, i64 1
  %i.ie = fpext <2 x float> %i.id to <2 x double>
  %i.if = getelementptr [8 x i8], ptr %invariant.gep183, i64 %index
  store <2 x double> %i.ie, ptr %i.if, align 8, !tbaa !72, !alias.scope !274, !noalias !275
  %i.ig = getelementptr i8, ptr %i.hp, i64 8
  %i.ih = getelementptr i8, ptr %i.hq, i64 24
  %i.ii = load float, ptr %i.ig, align 4, !tbaa !69
  %i.ij = load float, ptr %i.ih, align 4, !tbaa !69
  %i.ik = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ij, i64 1
  %i.im = fpext <2 x float> %i.il to <2 x double>
  %i.in = getelementptr [8 x i8], ptr %invariant.gep185, i64 %index
  store <2 x double> %i.im, ptr %i.in, align 8, !tbaa !72, !alias.scope !276, !noalias !277
  %i.io = getelementptr i8, ptr %i.hp, i64 12
  %i.ip = getelementptr i8, ptr %i.hq, i64 28
  %i.iq = load float, ptr %i.io, align 4, !tbaa !69
  %i.ir = load float, ptr %i.ip, align 4, !tbaa !69
  %i.is = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.ir, i64 1
  %i.iu = fpext <2 x float> %i.it to <2 x double>
  %i.iv = getelementptr [8 x i8], ptr %invariant.gep187, i64 %index
  store <2 x double> %i.iu, ptr %i.iv, align 8, !tbaa !72, !alias.scope !278, !noalias !279
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.hm
  %wide.load = load <2 x float>, ptr %i.iw, align 4, !tbaa !69
  %i.ix = fpext <2 x float> %wide.load to <2 x double>
  %i.iy = getelementptr [8 x i8], ptr %invariant.gep189, i64 %index
  store <2 x double> %i.ix, ptr %i.iy, align 8, !tbaa !72, !alias.scope !279
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv196.ph = phi i64 [ %i.hl, %middle.block ], [ %10, %.preheader ]
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge193.split:                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  call void @free(ptr noundef %i.ec) #30
  call void @free(ptr noundef %i.ee) #30
  %i.ja = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.ja(i32 noundef 36009, i32 noundef 0)
  %i.jb = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.jb(i32 noundef 36008, i32 noundef 0)
  %i.jc = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.jc(i32 noundef 36160, i32 noundef 0)
  %i.jd = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.jd(i32 noundef 1, ptr noundef nonnull %i.g)
  %i.je = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.je(i32 noundef 1, ptr noundef nonnull %i.h)
  %i.jf = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.jf(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.jg = load ptr, ptr @glad_glDeleteRenderbuffers, align 8, !tbaa !263
  call void %i.jg(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.jh = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !263
  call void %i.jh(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.ji = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !263
  call void %i.ji(i32 noundef 1, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void

bb.j:                                             ; preds = %._crit_edge.i.i132
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jk = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.ct
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.j
  %i.jm = load i64, ptr %i.ct, align 8, !tbaa !145
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.l:                                             ; preds = %.noexc144
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dm
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.l
  %i.js = load i64, ptr %i.dm, align 8, !tbaa !145
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %indvars.iv.next197 = add i32 %indvars.iv196, %i.q
  %exitcond205.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count204
  br i1 %exitcond205.not, label %._crit_edge193.split, label %.preheader, !llvm.loop !283

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv196.a = phi i64 [ %indvars.iv.next197.a, %scalar.ph ], [ %indvars.iv196.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %.idx = shl nsw i64 %indvars.iv196.a, 4
  %i.ju = getelementptr inbounds i8, ptr %i.ec, i64 %.idx
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep184 = getelementptr [8 x i8], ptr %invariant.gep183, i64 %indvars.iv
  %gep186 = getelementptr [8 x i8], ptr %invariant.gep185, i64 %indvars.iv
  %i.jv = load <4 x float>, ptr %i.ju, align 4, !tbaa !69
  %i.jw = fpext <4 x float> %i.jv to <4 x double> ; 4 uses
  %i.jx = extractelement <4 x double> %i.jw, i64 0
  store double %i.jx, ptr %gep, align 8, !tbaa !72
  %i.jy = extractelement <4 x double> %i.jw, i64 1
  store double %i.jy, ptr %gep184, align 8, !tbaa !72
  %i.jz = extractelement <4 x double> %i.jw, i64 2
  store double %i.jz, ptr %gep186, align 8, !tbaa !72
  %gep188 = getelementptr [8 x i8], ptr %invariant.gep187, i64 %indvars.iv
  %i.ka = extractelement <4 x double> %i.jw, i64 3
  store double %i.ka, ptr %gep188, align 8, !tbaa !72
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %indvars.iv196.a
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !69
  %i.kd = fpext float %i.kc to double
  %gep190 = getelementptr [8 x i8], ptr %invariant.gep189, i64 %indvars.iv
  store double %i.kd, ptr %gep190, align 8, !tbaa !72
  %indvars.iv.next197.a = add nsw i64 %indvars.iv196.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.l, %bb.j, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  %.pn109.pn = phi { ptr, i32 } [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.jj, %bb.j ], [ %i.jo, %bb.k ], [ %i.jp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %.pn109.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.cx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  resume { ptr, i32 } %.pn109.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6opengl4glfw6Viewer11draw_bufferIfEEvRNS0_10ViewerCoreERN5Eigen6MatrixIT_Lin1ELin1ELi0ELin1ELin1EEESA_SA_SA_SA_(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !171 ; 2 uses
  %i.l = icmp eq <2 x i64> %i.k, zeroinitializer
  %i.m = sitofp <2 x i64> %i.k to <2 x float>
  %i.n = load <2 x float>, ptr %i.j, align 8
  %i.o = select <2 x i1> %i.l, <2 x float> %i.n, <2 x float> %i.m
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 3 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0     ; 14 uses
  %i.r = sext i32 %i.q to i64                     ; 7 uses
  %i.s = extractelement <2 x i32> %i.p, i64 1     ; 12 uses
  %i.t = sext i32 %i.s to i64                     ; 7 uses
  %i.u = icmp eq i32 %i.q, 0                      ; 2 uses
  %i.v = icmp eq i32 %i.s, 0                      ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = sdiv i64 9223372036854775807, %i.t
  %i.x = icmp slt i64 %i.w, %i.r
  br i1 %i.x, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121

bb.c:                                             ; preds = %bb.b
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121: ; preds = %bb.b, %bb.a
  %i.z = mul nsw i64 %i.t, %i.r                   ; 5 uses
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.z, i64 noundef %i.r, i64 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.aa = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !263
  call void %i.aa(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.ab = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.ab(i32 noundef 36160, i32 noundef %i.ac)
  %i.ad = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.ad(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.ae = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.af = load i32, ptr %i.d, align 4, !tbaa !65
  call void %i.ae(i32 noundef 37120, i32 noundef %i.af)
  %i.ag = load ptr, ptr @glad_glTexImage2DMultisample, align 8, !tbaa !263
  call void %i.ag(i32 noundef 37120, i32 noundef 4, i32 noundef 6408, i32 noundef %i.q, i32 noundef %i.s, i8 noundef zeroext 1)
  %i.ah = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  call void %i.ah(i32 noundef 37120, i32 noundef 0)
  %i.ai = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !65
  call void %i.ai(i32 noundef 36160, i32 noundef 36064, i32 noundef 37120, i32 noundef %i.aj, i32 noundef 0)
  %i.ak = load ptr, ptr @glad_glGenRenderbuffers, align 8, !tbaa !263
  call void %i.ak(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.al = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !263
  %i.am = load i32, ptr %i.e, align 4, !tbaa !65
  call void %i.al(i32 noundef 36161, i32 noundef %i.am)
  %i.an = load ptr, ptr @glad_glRenderbufferStorageMultisample, align 8, !tbaa !263
  call void %i.an(i32 noundef 36161, i32 noundef 4, i32 noundef 35056, i32 noundef %i.q, i32 noundef %i.s)
  %i.ao = load ptr, ptr @glad_glBindRenderbuffer, align 8, !tbaa !263
  call void %i.ao(i32 noundef 36161, i32 noundef 0)
  %i.ap = load ptr, ptr @glad_glFramebufferRenderbuffer, align 8, !tbaa !263
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !65
  call void %i.ap(i32 noundef 36160, i32 noundef 33306, i32 noundef 36161, i32 noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ar, ptr %7, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 26, ptr %i.b, align 8, !tbaa !171
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !61
  %i.at = load i64, ptr %i.b, align 8, !tbaa !171 ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.as, ptr noundef nonnull align 1 dereferenceable(26) @.str.12, i64 26, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !172
  %i.av = load ptr, ptr %7, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ax = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %7)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121
  %i.ay = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !145
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #35
  br label %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131

_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.bc(i32 noundef 36160, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.bd = load ptr, ptr @glad_glGenFramebuffers, align 8, !tbaa !263
  call void %i.bd(i32 noundef 1, ptr noundef nonnull %i.f)
  %i.be = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.be(i32 noundef 36160, i32 noundef %i.bf)
  %i.bg = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.bg(i32 noundef 1, ptr noundef nonnull %i.g)
  %i.bh = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !65
  call void %i.bh(i32 noundef 3553, i32 noundef %i.bi)
  %i.bj = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !263
  call void %i.bj(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef null)
  %i.bk = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bk(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.bl = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bl(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.bm = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.bn = load i32, ptr %i.g, align 4, !tbaa !65
  call void %i.bm(i32 noundef 36160, i32 noundef 36064, i32 noundef 3553, i32 noundef %i.bn, i32 noundef 0)
  %i.bo = load ptr, ptr @glad_glGenTextures, align 8, !tbaa !263
  call void %i.bo(i32 noundef 1, ptr noundef nonnull %i.h)
  %i.bp = load ptr, ptr @glad_glBindTexture, align 8, !tbaa !263
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !65
  call void %i.bp(i32 noundef 3553, i32 noundef %i.bq)
  %i.br = load ptr, ptr @glad_glTexImage2D, align 8, !tbaa !263
  call void %i.br(i32 noundef 3553, i32 noundef 0, i32 noundef 35056, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 0, i32 noundef 34041, i32 noundef 34042, ptr noundef null)
  %i.bs = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bs(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729)
  %i.bt = load ptr, ptr @glad_glTexParameteri, align 8, !tbaa !263
  call void %i.bt(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729)
  %i.bu = load ptr, ptr @glad_glFramebufferTexture2D, align 8, !tbaa !263
  %i.bv = load i32, ptr %i.h, align 4, !tbaa !65
  call void %i.bu(i32 noundef 36160, i32 noundef 33306, i32 noundef 3553, i32 noundef %i.bv, i32 noundef 0)
  %i.bw = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.bw(i32 noundef 36160, i32 noundef 0)
  %i.bx = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.by = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.bx(i32 noundef 36160, i32 noundef %i.by)
  %i.bz = load ptr, ptr @glad_glClearColor, align 8, !tbaa !263
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load float, ptr %i.ca, align 16, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !69
  call void %i.bz(float noundef %i.cb, float noundef %i.cd, float noundef %i.cf, float noundef %i.ch)
  %i.ci = load ptr, ptr @glad_glClear, align 8, !tbaa !263
  call void %i.ci(i32 noundef 16640)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %.sroa.0175.0.copyload = load <4 x float>, ptr %i.cj, align 16, !tbaa !145
  store <2 x float> zeroinitializer, ptr %i.cj, align 16, !tbaa !69
  %i.ck = sitofp <2 x i32> %i.p to <2 x float>
  store <2 x float> %i.ck, ptr %i.j, align 8, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !9  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !9 ; 2 uses
  %.not177178 = icmp eq ptr %i.cm, %i.co
  br i1 %.not177178, label %._crit_edge.i.i132, label %.lr.ph

._crit_edge.i.i132:                               ; preds = %bb.g, %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131
  store <4 x float> %.sroa.0175.0.copyload, ptr %i.cj, align 16, !tbaa !145
  %i.cp = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !65
  call void %i.cp(i32 noundef 36008, i32 noundef %i.cq)
  %i.cr = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.cs = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.cr(i32 noundef 36009, i32 noundef %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ct, ptr %8, align 8, !tbaa !170
  store i64 2322280100032570722, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.cu, align 8, !tbaa !172
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.cv, align 8, !tbaa !145
  %i.cw = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %8)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit121
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ar
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.e
  %i.da = load i64, ptr %i.ar, align 8, !tbaa !145
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

.lr.ph:                                           ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131, %bb.g
  %.sroa.0157.0179 = phi ptr [ %i.dg, %bb.g ], [ %i.cm, %_ZN5Eigen16CommaInitializerINS_6MatrixIfLi4ELi1ELi0ELi4ELi1EEEEcmERKf.exit131 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0157.0179, i64 584
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !85
  %i.de = load i32, ptr %1, align 16, !tbaa !119
  %i.df = and i32 %i.de, %i.dd
  %.not113 = icmp eq i32 %i.df, 0
  br i1 %.not113, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN3igl6opengl10ViewerCore4drawERNS0_10ViewerDataEb(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(1488) %.sroa.0157.0179, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0157.0179, i64 1488 ; 2 uses
  %.not177 = icmp eq ptr %i.dg, %i.co
  br i1 %.not177, label %._crit_edge.i.i132, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge.i.i132
  %i.dh = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ct
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.h
  %i.dj = load i64, ptr %i.ct, align 8, !tbaa !145
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  %i.dl = load ptr, ptr @glad_glBlitFramebuffer, align 8, !tbaa !263
  call void %i.dl(i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 16640, i32 noundef 9728)
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dm, ptr %9, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 19, ptr %i.a, align 8, !tbaa !171
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc144 unwind label %bb.k  ; 2 uses

.noexc144:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  store ptr %i.dn, ptr %9, align 8, !tbaa !61
  %i.do = load i64, ptr %i.a, align 8, !tbaa !171 ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.dn, ptr noundef nonnull align 1 dereferenceable(19) @.str.14, i64 19, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !172
  %i.dq = load ptr, ptr %9, align 8, !tbaa !61
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ds = invoke noundef i32 @_ZN3igl6opengl15report_gl_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %9)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %.noexc144
  %i.dt = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.i
  %i.dv = load i64, ptr %i.dm, align 8, !tbaa !145
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.dx = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !65
  call void %i.dx(i32 noundef 36160, i32 noundef %i.dy)
  %i.dz = mul nsw i32 %i.s, %i.q                  ; 2 uses
  %i.ea = shl nsw i32 %i.dz, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = call noalias ptr @calloc(i64 noundef %i.eb, i64 noundef 4) #39 ; 9 uses
  %i.ed = sext i32 %i.dz to i64
  %i.ee = call noalias ptr @calloc(i64 noundef %i.ed, i64 noundef 4) #39 ; 6 uses
  %i.ef = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !263
  call void %i.ef(i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 6408, i32 noundef 5126, ptr noundef %i.ec)
  %i.eg = load ptr, ptr @glad_glReadPixels, align 8, !tbaa !263
  call void %i.eg(i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 6402, i32 noundef 5126, ptr noundef %i.ee)
  %brmerge = or i1 %i.v, %i.u
  br i1 %brmerge, label %._crit_edge193.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load ptr, ptr %2, align 8, !tbaa !285   ; 5 uses
  %i.em = load i64, ptr %i.i, align 8, !tbaa !287 ; 4 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !285   ; 8 uses
  %i.eo = load i64, ptr %i.ek, align 8, !tbaa !287 ; 4 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !285   ; 5 uses
  %i.eq = load i64, ptr %i.ej, align 8, !tbaa !287 ; 4 uses
  %i.er = load ptr, ptr %5, align 8, !tbaa !285   ; 8 uses
  %i.es = load i64, ptr %i.ei, align 8, !tbaa !287 ; 4 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !285   ; 8 uses
  %i.eu = load i64, ptr %i.eh, align 8, !tbaa !287 ; 3 uses
  %wide.trip.count204 = zext i32 %i.s to i64      ; 2 uses
  %wide.trip.count = zext i32 %i.q to i64         ; 10 uses
  %i.ev = add nsw i64 %wide.trip.count204, -1     ; 5 uses
  %i.ew = mul i64 %i.em, %i.ev
  %i.ex = shl nuw nsw i64 %wide.trip.count, 2
  %i.ey = add i64 %i.ew, %wide.trip.count
  %i.ez = shl i64 %i.ey, 2
  %scevgep230.a = getelementptr i8, ptr %i.el, i64 %i.ez ; 3 uses
  %i.fa = mul i64 %i.eo, %i.ev
  %i.fb = add i64 %i.fa, %wide.trip.count
  %i.fc = shl i64 %i.fb, 2
  %scevgep231.a = getelementptr i8, ptr %i.en, i64 %i.fc ; 6 uses
  %i.fd = mul i64 %i.eq, %i.ev
  %i.fe = add i64 %i.fd, %wide.trip.count
  %i.ff = shl i64 %i.fe, 2
  %scevgep232.a = getelementptr i8, ptr %i.ep, i64 %i.ff ; 3 uses
  %i.fg = mul i64 %i.es, %i.ev
  %i.fh = add i64 %i.fg, %wide.trip.count
  %i.fi = shl i64 %i.fh, 2
  %scevgep233.a = getelementptr i8, ptr %i.er, i64 %i.fi ; 6 uses
  %i.fj = mul i64 %i.eu, %i.ev
  %i.fk = add i64 %i.fj, %wide.trip.count
  %i.fl = shl i64 %i.fk, 2
  %scevgep234.a = getelementptr i8, ptr %i.et, i64 %i.fl ; 6 uses
  %i.fm = shl nuw nsw i64 %wide.trip.count, 4
  %scevgep236.a = getelementptr i8, ptr %i.ec, i64 %i.fm
  %scevgep239 = getelementptr i8, ptr %i.ee, i64 %i.ex
  %i.fn = insertelement <4 x ptr> poison, ptr %i.el, i64 0
  %i.fo = shufflevector <4 x ptr> %i.fn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fp = insertelement <4 x ptr> poison, ptr %scevgep231.a, i64 0
  %i.fq = insertelement <4 x ptr> %i.fp, ptr %scevgep232.a, i64 1
  %i.fr = insertelement <4 x ptr> %i.fq, ptr %scevgep233.a, i64 2
  %i.fs = insertelement <4 x ptr> %i.fr, ptr %scevgep234.a, i64 3
  %i.ft = insertelement <4 x ptr> poison, ptr %i.en, i64 0
  %i.fu = insertelement <4 x ptr> %i.ft, ptr %i.ep, i64 1
  %i.fv = insertelement <4 x ptr> %i.fu, ptr %i.er, i64 2
  %i.fw = insertelement <4 x ptr> %i.fv, ptr %i.et, i64 3
  %i.fx = insertelement <4 x ptr> poison, ptr %scevgep230.a, i64 0
  %i.fy = shufflevector <4 x ptr> %i.fx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fz = insertelement <4 x ptr> poison, ptr %i.ep, i64 0
  %i.ga = shufflevector <4 x ptr> %i.fz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gb = insertelement <4 x ptr> poison, ptr %scevgep233.a, i64 0
  %i.gc = insertelement <4 x ptr> %i.gb, ptr %scevgep234.a, i64 1
  %i.gd = insertelement <4 x ptr> poison, ptr %i.er, i64 0
  %i.ge = insertelement <4 x ptr> %i.gd, ptr %i.et, i64 1
  %i.gf = insertelement <4 x ptr> poison, ptr %scevgep232.a, i64 0
  %i.gg = shufflevector <4 x ptr> %i.gf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.q, 52
  %i.gh = icmp ult <4 x ptr> %i.fo, %i.fs
  %i.gi = icmp ult <4 x ptr> %i.fw, %i.fy
  %i.gj = and <4 x i1> %i.gh, %i.gi
  %bound0269 = icmp ult ptr %i.en, %scevgep232.a
  %bound1270 = icmp ult ptr %i.ep, %scevgep231.a
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0275 = icmp ult ptr %i.en, %scevgep233.a
  %bound1276 = icmp ult ptr %i.er, %scevgep231.a
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0281 = icmp ult ptr %i.en, %scevgep234.a
  %bound1282 = icmp ult ptr %i.et, %scevgep231.a
  %found.conflict283 = and i1 %bound0281, %bound1282
  %bound0319 = icmp ult ptr %i.er, %scevgep234.a
  %bound1320 = icmp ult ptr %i.et, %scevgep233.a
  %found.conflict321 = and i1 %bound0319, %bound1320
  %i.gk = bitcast <4 x i1> %i.gj to i4
  %i.gl = icmp ne i4 %i.gk, 0
  %op.rdx378 = or i1 %found.conflict277, %found.conflict283
  %i.gm = or i64 %i.em, %i.eo
  %i.gn = or i64 %i.gm, %i.es
  %i.go = or i64 %i.gn, %i.eq
  %.mask = and i64 %i.go, 2305843009213693952
  %i.gp = icmp ne i64 %.mask, 0
  %i.gq = or i64 %i.eo, %i.eu
  %i.gr = or i64 %i.gq, %i.es
  %i.gs = or i64 %i.gr, %i.eq
  %i.gt = or i64 %i.gs, %i.em
  %.mask404 = and i64 %i.gt, 2305843009213693952
  %i.gu = icmp ne i64 %.mask404, 0
  %op.rdx402 = or i1 %i.gu, %i.gl
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv201 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next204, %._crit_edge ] ; 6 uses
  %indvars.iv196 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next197, %._crit_edge ] ; 3 uses
  %10 = sext i32 %indvars.iv196 to i64            ; 4 uses
  %i.gv = mul nsw i64 %i.em, %indvars.iv201
  %invariant.gep = getelementptr [4 x i8], ptr %i.el, i64 %i.gv ; 2 uses
  %i.gw = mul nsw i64 %i.eo, %indvars.iv201
  %invariant.gep183 = getelementptr [4 x i8], ptr %i.en, i64 %i.gw ; 2 uses
  %i.gx = mul nsw i64 %i.eq, %indvars.iv201
  %invariant.gep185 = getelementptr [4 x i8], ptr %i.ep, i64 %i.gx ; 2 uses
  %i.gy = mul nsw i64 %i.es, %indvars.iv201
  %invariant.gep187 = getelementptr [4 x i8], ptr %i.er, i64 %i.gy ; 2 uses
  %i.gz = mul nsw i64 %i.eu, %indvars.iv201
  %invariant.gep189 = getelementptr [4 x i8], ptr %i.et, i64 %i.gz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %11 = sext i32 %indvars.iv196 to i64            ; 2 uses
  %i.ha = shl nsw i64 %11, 2                      ; 2 uses
  %scevgep235 = getelementptr i8, ptr %scevgep239, i64 %i.ha ; 5 uses
  %scevgep237 = getelementptr i8, ptr %i.ee, i64 %i.ha ; 5 uses
  %i.hb = shl nsw i64 %11, 4                      ; 2 uses
  %scevgep238 = getelementptr i8, ptr %scevgep236.a, i64 %i.hb ; 5 uses
  %scevgep240 = getelementptr i8, ptr %i.ec, i64 %i.hb ; 5 uses
  %bound0259 = icmp ult ptr %i.el, %scevgep238
  %bound1260 = icmp ult ptr %scevgep240, %scevgep230.a
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0264 = icmp ult ptr %i.el, %scevgep235
  %bound1265 = icmp ult ptr %scevgep237, %scevgep230.a
  %found.conflict266 = and i1 %bound0264, %bound1265
  %bound0287 = icmp ult ptr %i.en, %scevgep238
  %bound1288 = icmp ult ptr %scevgep240, %scevgep231.a
  %found.conflict289 = and i1 %bound0287, %bound1288
  %bound0292 = icmp ult ptr %i.en, %scevgep235
  %bound1293 = icmp ult ptr %scevgep237, %scevgep231.a
  %found.conflict294 = and i1 %bound0292, %bound1293
  %i.hc = insertelement <4 x ptr> %i.gc, ptr %scevgep238, i64 2
  %i.hd = insertelement <4 x ptr> %i.hc, ptr %scevgep235, i64 3
  %i.he = icmp ult <4 x ptr> %i.ga, %i.hd
  %i.hf = insertelement <4 x ptr> %i.ge, ptr %scevgep240, i64 2
  %i.hg = insertelement <4 x ptr> %i.hf, ptr %scevgep237, i64 3
  %i.hh = icmp ult <4 x ptr> %i.hg, %i.gg
  %i.hi = and <4 x i1> %i.he, %i.hh
  %bound0325 = icmp ult ptr %i.er, %scevgep238
  %bound1326 = icmp ult ptr %scevgep240, %scevgep233.a
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0330 = icmp ult ptr %i.er, %scevgep235
  %bound1331 = icmp ult ptr %scevgep237, %scevgep233.a
  %found.conflict332 = and i1 %bound0330, %bound1331
  %bound0335 = icmp ult ptr %i.et, %scevgep238
  %bound1336 = icmp ult ptr %scevgep240, %scevgep234.a
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0340 = icmp ult ptr %i.et, %scevgep235
  %bound1341 = icmp ult ptr %scevgep237, %scevgep234.a
  %found.conflict342 = and i1 %bound0340, %bound1341
  %i.hj = bitcast <4 x i1> %i.hi to i4
  %i.hk = icmp ne i4 %i.hj, 0
  %op.rdx376.a = or i1 %i.hk, %found.conflict261
  %op.rdx377.a = or i1 %found.conflict266, %found.conflict271
  %op.rdx379 = or i1 %found.conflict289, %found.conflict294
  %op.rdx380 = or i1 %found.conflict321, %found.conflict327
  %op.rdx381 = or i1 %found.conflict332, %found.conflict337
  %op.rdx390 = or i1 %op.rdx376.a, %op.rdx377.a
  %op.rdx391 = or i1 %op.rdx378, %op.rdx379
  %op.rdx392 = or i1 %op.rdx380, %op.rdx381
  %op.rdx393.a = or i1 %found.conflict342, %i.gp
  %op.rdx397.a = or i1 %op.rdx390, %op.rdx391
  %op.rdx398 = or i1 %op.rdx392, %op.rdx393.a
  %op.rdx401 = or i1 %op.rdx397.a, %op.rdx398
  %op.rdx403 = or i1 %op.rdx401, %op.rdx402
  br i1 %op.rdx403, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hl = add nsw i64 %n.vec, %10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.hm = add i64 %index, %10                     ; 5 uses
  %i.hn = shl nsw i64 %i.hm, 4
  %i.ho = shl i64 %i.hm, 4
  %i.hp = shl i64 %i.hm, 4
  %i.hq = shl i64 %i.hm, 4
  %i.hr = getelementptr inbounds i8, ptr %i.ec, i64 %i.hn ; 4 uses
  %i.hs = getelementptr i8, ptr %i.ec, i64 %i.ho  ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  %i.hu = getelementptr i8, ptr %i.ec, i64 %i.hp  ; 4 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 32
  %i.hw = getelementptr i8, ptr %i.ec, i64 %i.hq  ; 4 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 48
  %i.hy = load float, ptr %i.hr, align 4, !tbaa !69, !alias.scope !288
  %i.hz = load float, ptr %i.ht, align 4, !tbaa !69, !alias.scope !288
  %i.ia = load float, ptr %i.hv, align 4, !tbaa !69, !alias.scope !288
  %i.ib = load float, ptr %i.hx, align 4, !tbaa !69, !alias.scope !288
  %i.ic = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 1
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 2
  %i.if = insertelement <4 x float> %i.ie, float %i.ib, i64 3
  %i.ig = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.if, ptr %i.ig, align 4, !tbaa !69, !alias.scope !291, !noalias !293
  %i.ih = getelementptr i8, ptr %i.hr, i64 4
  %i.ii = getelementptr i8, ptr %i.hs, i64 20
  %i.ij = getelementptr i8, ptr %i.hu, i64 36
  %i.ik = getelementptr i8, ptr %i.hw, i64 52
  %i.il = load float, ptr %i.ih, align 4, !tbaa !69, !alias.scope !288
  %i.im = load float, ptr %i.ii, align 4, !tbaa !69, !alias.scope !288
  %i.in = load float, ptr %i.ij, align 4, !tbaa !69, !alias.scope !288
  %i.io = load float, ptr %i.ik, align 4, !tbaa !69, !alias.scope !288
  %i.ip = insertelement <4 x float> poison, float %i.il, i64 0
  %i.iq = insertelement <4 x float> %i.ip, float %i.im, i64 1
  %i.ir = insertelement <4 x float> %i.iq, float %i.in, i64 2
  %i.is = insertelement <4 x float> %i.ir, float %i.io, i64 3
  %i.it = getelementptr [4 x i8], ptr %invariant.gep183, i64 %index
  store <4 x float> %i.is, ptr %i.it, align 4, !tbaa !69, !alias.scope !299, !noalias !300
  %i.iu = getelementptr i8, ptr %i.hr, i64 8
  %i.iv = getelementptr i8, ptr %i.hs, i64 24
  %i.iw = getelementptr i8, ptr %i.hu, i64 40
  %i.ix = getelementptr i8, ptr %i.hw, i64 56
  %i.iy = load float, ptr %i.iu, align 4, !tbaa !69, !alias.scope !288
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !69, !alias.scope !288
  %i.ja = load float, ptr %i.iw, align 4, !tbaa !69, !alias.scope !288
  %i.jb = load float, ptr %i.ix, align 4, !tbaa !69, !alias.scope !288
  %i.jc = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.jd = insertelement <4 x float> %i.jc, float %i.iz, i64 1
  %i.je = insertelement <4 x float> %i.jd, float %i.ja, i64 2
  %i.jf = insertelement <4 x float> %i.je, float %i.jb, i64 3
  %i.jg = getelementptr [4 x i8], ptr %invariant.gep185, i64 %index
  store <4 x float> %i.jf, ptr %i.jg, align 4, !tbaa !69, !alias.scope !301, !noalias !302
  %i.jh = getelementptr i8, ptr %i.hr, i64 12
  %i.ji = getelementptr i8, ptr %i.hs, i64 28
  %i.jj = getelementptr i8, ptr %i.hu, i64 44
  %i.jk = getelementptr i8, ptr %i.hw, i64 60
  %i.jl = load float, ptr %i.jh, align 4, !tbaa !69, !alias.scope !288
  %i.jm = load float, ptr %i.ji, align 4, !tbaa !69, !alias.scope !288
  %i.jn = load float, ptr %i.jj, align 4, !tbaa !69, !alias.scope !288
  %i.jo = load float, ptr %i.jk, align 4, !tbaa !69, !alias.scope !288
  %i.jp = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jq = insertelement <4 x float> %i.jp, float %i.jm, i64 1
  %i.jr = insertelement <4 x float> %i.jq, float %i.jn, i64 2
  %i.js = insertelement <4 x float> %i.jr, float %i.jo, i64 3
  %i.jt = getelementptr [4 x i8], ptr %invariant.gep187, i64 %index
  store <4 x float> %i.js, ptr %i.jt, align 4, !tbaa !69, !alias.scope !303, !noalias !304
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.hm
  %wide.load = load <4 x float>, ptr %i.ju, align 4, !tbaa !69, !alias.scope !305
  %i.jv = getelementptr [4 x i8], ptr %invariant.gep189, i64 %index
  store <4 x float> %wide.load, ptr %i.jv, align 4, !tbaa !69, !alias.scope !306, !noalias !307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv198.ph = phi i64 [ %10, %vector.memcheck ], [ %10, %.preheader ], [ %i.hl, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge193.split:                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  call void @free(ptr noundef %i.ec) #30
  call void @free(ptr noundef %i.ee) #30
  %i.jx = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.jx(i32 noundef 36009, i32 noundef 0)
  %i.jy = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.jy(i32 noundef 36008, i32 noundef 0)
  %i.jz = load ptr, ptr @glad_glBindFramebuffer, align 8, !tbaa !263
  call void %i.jz(i32 noundef 36160, i32 noundef 0)
  %i.ka = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.ka(i32 noundef 1, ptr noundef nonnull %i.g)
  %i.kb = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.kb(i32 noundef 1, ptr noundef nonnull %i.h)
  %i.kc = load ptr, ptr @glad_glDeleteTextures, align 8, !tbaa !263
  call void %i.kc(i32 noundef 1, ptr noundef nonnull %i.d)
  %i.kd = load ptr, ptr @glad_glDeleteRenderbuffers, align 8, !tbaa !263
  call void %i.kd(i32 noundef 1, ptr noundef nonnull %i.e)
  %i.ke = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !263
  call void %i.ke(i32 noundef 1, ptr noundef nonnull %i.c)
  %i.kf = load ptr, ptr @glad_glDeleteFramebuffers, align 8, !tbaa !263
  call void %i.kf(i32 noundef 1, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void

bb.j:                                             ; preds = %._crit_edge.i.i132
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ct
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.j
  %i.kj = load i64, ptr %i.ct, align 8, !tbaa !145
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.l:                                             ; preds = %.noexc144
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.dm
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.l
  %i.kp = load i64, ptr %i.dm, align 8, !tbaa !145
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %indvars.iv.next197 = add i32 %indvars.iv196, %i.q
  %exitcond205.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count204
  br i1 %exitcond205.not, label %._crit_edge193.split, label %.preheader, !llvm.loop !309

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv196.a = phi i64 [ %indvars.iv.next197.a, %scalar.ph ], [ %indvars.iv198.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %.idx = shl nsw i64 %indvars.iv196.a, 4
  %i.kr = getelementptr inbounds i8, ptr %i.ec, i64 %.idx ; 4 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !69
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.ks, ptr %gep, align 4, !tbaa !69
  %i.kt = getelementptr i8, ptr %i.kr, i64 4
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !69
  %gep184 = getelementptr [4 x i8], ptr %invariant.gep183, i64 %indvars.iv
  store float %i.ku, ptr %gep184, align 4, !tbaa !69
  %i.kv = getelementptr i8, ptr %i.kr, i64 8
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !69
  %gep186 = getelementptr [4 x i8], ptr %invariant.gep185, i64 %indvars.iv
  store float %i.kw, ptr %gep186, align 4, !tbaa !69
  %i.kx = getelementptr i8, ptr %i.kr, i64 12
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !69
  %gep188 = getelementptr [4 x i8], ptr %invariant.gep187, i64 %indvars.iv
  store float %i.ky, ptr %gep188, align 4, !tbaa !69
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %indvars.iv196.a
  %i.la = load float, ptr %i.kz, align 4, !tbaa !69
  %gep190 = getelementptr [4 x i8], ptr %invariant.gep189, i64 %indvars.iv
  store float %i.la, ptr %gep190, align 4, !tbaa !69
  %indvars.iv.next197.a = add nsw i64 %indvars.iv196.a, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.l, %bb.j, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  %.pn109.pn = phi { ptr, i32 } [ %i.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.kg, %bb.j ], [ %i.kl, %bb.k ], [ %i.km, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %.pn109.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.cx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  resume { ptr, i32 } %.pn109.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @glfwSetWindowShouldClose(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN3igl6opengl10ViewerDataC1Ev(ptr noundef nonnull align 8 dereferenceable(1488)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl6opengl10ViewerDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1488) dereferenceable(1488) %0) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @_ZN3igl6opengl6MeshGLD2Ev(ptr noundef nonnull align 8 dead_on_return(804) dereferenceable(804) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !311  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !312  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i, align 8, !tbaa !61 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !145
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !313

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !311  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !312  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.aa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !61 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.y = load i64, ptr %i.w, align 8, !tbaa !145
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !313

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ab = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !314
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i9, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !311 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !312 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17
  %.05.i.i.i15 = phi ptr [ %i.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17 ], [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !61 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %.lr.ph.i.i.i14
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !145
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17: ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 32 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.aq, %i.ak
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19, label %.lr.ph.i.i.i14, !llvm.loop !313

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17
  %.pr.i20 = load ptr, ptr %i.ah, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.ar = phi ptr [ %.pr.i20, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i19 ], [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i22 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i22, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !314
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
end_hunk_1
