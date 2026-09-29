Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCNMinRegStrategy?download=true
inline.NumInlined: 554
inline.NumDeleted: 304
begin_hunk_0
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_5SUnitELb1EE15growAndPushBackES3_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18makeMinRegScheduleENS_8ArrayRefIPKNS_5SUnitEEERKNS_11ScheduleDAGE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallPtrSet", align 8 ; 15 uses
  %5 = alloca %"class.llvm::SmallVector.30", align 8 ; 13 uses
  %6 = alloca %"class.(anonymous namespace)::GCNMinRegScheduler", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 4, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 18 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 76
  store i32 0, ptr %i.h, align 4, !tbaa !12
  store ptr %i.f, ptr %i.f, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 14 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !54
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57, !noalias !54 ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !58, !noalias !54 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 264                 ; 3 uses
  %i.s = icmp ugt i64 %i.r, 1152921504606846975
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13, !noalias !54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not170.i = icmp eq ptr %i.m, %i.n
  br i1 %.not170.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i, label %_ZNSt6vectorIPKN4llvm5SUnitESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIPKN4llvm5SUnitESaIS3_EE7reserveEm.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = shl nuw nsw i64 %i.r, 3
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #14, !noalias !54 ; 8 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !62, !alias.scope !54
  store ptr %i.w, ptr %i.u, align 8, !tbaa !63, !alias.scope !54
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r ; 6 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !64, !alias.scope !54
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !57, !noalias !54 ; 5 uses
  %.pre98.i = load ptr, ptr %i.k, align 8, !tbaa !58, !noalias !54 ; 5 uses
  %.pre103.i = ptrtoint ptr %.pre.i to i64
  %.pre104.i = ptrtoint ptr %.pre98.i to i64
  %.pre106.i = sub i64 %.pre103.i, %.pre104.i
  %.pre108.i = sdiv exact i64 %.pre106.i, 264     ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67, !noalias !54 ; 4 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !68, !noalias !54 ; 9 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 7 uses
  %i.af = icmp ugt i64 %.pre108.i, %i.ae
  br i1 %i.af, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4llvm5SUnitESaIS3_EE7reserveEm.exit.i
  %i.ag = sub nuw nsw i64 %.pre108.i, %i.ae       ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69, !noalias !54
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ab
  %i.al = ashr exact i64 %i.ak, 2                 ; 2 uses
  %i.am = icmp ult i64 %i.ae, 2305843009213693952
  call void @llvm.assume(i1 %i.am), !noalias !54
  %i.an = xor i64 %i.ae, 2305843009213693951      ; 2 uses
  %i.ao = icmp ule i64 %i.al, %i.an
  call void @llvm.assume(i1 %i.ao), !noalias !54
  %.not23.i = icmp ult i64 %i.al, %i.ag
  br i1 %.not23.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.z, align 4, !tbaa !70, !noalias !54
  %i.ap = getelementptr i8, ptr %i.z, i64 4       ; 3 uses
  %i.aq = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.e
  %.idx.i.i.i.i.i.i11 = shl nuw nsw i64 %i.aq, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %.idx.i.i.i.i.i.i11, i1 false), !tbaa !70, !noalias !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i11
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.e
  %.0.i.i.i.i12 = phi ptr [ %i.as, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ap, %bb.e ]
  store ptr %.0.i.i.i.i12, ptr %i.y, align 8, !tbaa !67, !noalias !54
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.at = icmp ult i64 %i.an, %i.ag
  br i1 %i.at, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13, !noalias !54
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.f
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ag)
  %i.au = add nuw nsw i64 %.sroa.speculated.i.i, %i.ae
  %i.av = call i64 @llvm.umin.i64(i64 %i.au, i64 2305843009213693951) ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #14, !noalias !54 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ad ; 3 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !70, !noalias !54
  %i.az = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.bb = getelementptr i8, ptr %i.ay, i64 4
  %.idx.i.i.i.i.i26.i = shl nuw nsw i64 %i.az, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %.idx.i.i.i.i.i26.i, i1 false), !tbaa !70, !noalias !54
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.bc = icmp sgt i64 %i.ad, 0
  br i1 %i.bc, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.aa, i64 %i.ad, i1 false), !noalias !54
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit28.i
  %.not.i29.i = icmp eq ptr %i.aa, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !69, !noalias !54
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.bf) #15, !noalias !54
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.ax, ptr %i.j, align 8, !tbaa !68, !noalias !54
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ag
  store ptr %i.bg, ptr %i.y, align 8, !tbaa !67, !noalias !54
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bh, ptr %i.ah, align 8, !tbaa !69, !noalias !54
  %.pre.i.i.pre = load ptr, ptr %i.l, align 8, !tbaa !57, !noalias !54 ; 2 uses
  %.pre10.i.i.pre = load ptr, ptr %i.k, align 8, !tbaa !58, !noalias !54 ; 2 uses
  %.pre52 = ptrtoint ptr %.pre.i.i.pre to i64
  %.pre53 = ptrtoint ptr %.pre10.i.i.pre to i64
  %.pre54 = sub i64 %.pre52, %.pre53
  %.pre55 = sdiv exact i64 %.pre54, 264
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i

bb.j:                                             ; preds = %_ZNSt6vectorIPKN4llvm5SUnitESaIS3_EE7reserveEm.exit.i
  %i.bi = icmp ult i64 %.pre108.i, %i.ae
  br i1 %i.bi, label %bb.k, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.pre108.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !67, !noalias !54
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i:           ; preds = %bb.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, %bb.l, %bb.k, %bb.j
  %i.bk = phi ptr [ %i.x, %bb.l ], [ %i.x, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %i.x, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ]
  %i.bl = phi ptr [ %i.w, %bb.l ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.w, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %i.w, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ]
  %i.bm = phi ptr [ %i.aa, %bb.l ], [ %i.aa, %bb.j ], [ %i.aa, %bb.k ], [ %i.aa, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %i.ax, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ] ; 4 uses
  %.pre-phi17.i.i = phi i64 [ %.pre108.i, %bb.l ], [ %.pre108.i, %bb.j ], [ %.pre108.i, %bb.k ], [ %.pre108.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %.pre55, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ 0, %bb.c ] ; 7 uses
  %i.bn = phi ptr [ %.pre98.i, %bb.l ], [ %.pre98.i, %bb.j ], [ %.pre98.i, %bb.k ], [ %.pre98.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %.pre10.i.i.pre, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.n, %bb.c ] ; 12 uses
  %i.bo = phi ptr [ %.pre.i, %bb.l ], [ %.pre.i, %bb.j ], [ %.pre.i, %bb.k ], [ %.pre.i, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i ], [ %.pre.i.i.pre, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.m, %bb.c ]
  %.not.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_118GCNMinRegScheduler12initNumPredsERKSt6vectorIN4llvm5SUnitESaIS3_EE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i
  %min.iters.check = icmp ult i64 %.pre-phi17.i.i, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader167, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.bp = add i64 %.pre-phi17.i.i, -1             ; 2 uses
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = icmp eq i64 %i.bq, 4294967295
  %i.bs = icmp ugt i64 %i.bp, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.preheader167, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bu = shl nuw nsw i64 %.pre-phi17.i.i, 2
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bu
  %scevgep153 = getelementptr i8, ptr %i.bn, i64 216
  %i.bv = mul nuw nsw i64 %.pre-phi17.i.i, 264
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv
  %scevgep154 = getelementptr i8, ptr %i.bw, i64 -44
  %bound0 = icmp ult ptr %i.bm, %scevgep154
  %bound1 = icmp ult ptr %scevgep153, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre-phi17.i.i, 8589934584    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bx = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.by = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.bz = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.ca = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.cb = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.cc = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.cd = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.ce = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 216
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 480
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 744
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 1008
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 1272
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 1536
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 1800
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 2064
  %i.cn = load i32, ptr %i.cf, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.co = load i32, ptr %i.cg, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cp = load i32, ptr %i.ch, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cq = load i32, ptr %i.ci, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cr = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.cs = insertelement <4 x i32> %i.cr, i32 %i.co, i64 1
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 2
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cq, i64 3
  %i.cv = load i32, ptr %i.cj, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cw = load i32, ptr %i.ck, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cx = load i32, ptr %i.cl, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cy = load i32, ptr %i.cm, align 8, !tbaa !82, !alias.scope !83, !noalias !54
  %i.cz = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cy, i64 3
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x i32> %i.cu, ptr %i.dd, align 4, !tbaa !70, !alias.scope !84, !noalias !85
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !70, !alias.scope !84, !noalias !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi17.i.i, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_118GCNMinRegScheduler12initNumPredsERKSt6vectorIN4llvm5SUnitESaIS3_EE.exit.i, label %.lr.ph.i.i.preheader167

.lr.ph.i.i.preheader167:                          ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader167, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader167 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [264 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 216
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !82, !noalias !54
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !70, !noalias !54
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dk = and i64 %indvars.iv.next.i.i, 4294967295
  %i.dl = icmp ugt i64 %.pre-phi17.i.i, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i, label %_ZN12_GLOBAL__N_118GCNMinRegScheduler12initNumPredsERKSt6vectorIN4llvm5SUnitESaIS3_EE.exit.i, !llvm.loop !34

_ZN12_GLOBAL__N_118GCNMinRegScheduler12initNumPredsERKSt6vectorIN4llvm5SUnitESaIS3_EE.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i.i
  %.idx.i = shl nuw nsw i64 %2, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not79.i = icmp eq i64 %2, 0
  br i1 %.not79.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_118GCNMinRegScheduler12initNumPredsERKSt6vectorIN4llvm5SUnitESaIS3_EE.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.t

._crit_edge.i:                                    ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i, %_ZN12_GLOBAL__N_118GCNMinRegScheduler12initNumPredsERKSt6vectorIN4llvm5SUnitESaIS3_EE.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 192
  %.val21.i = load ptr, ptr %i.do, align 8, !tbaa !10, !noalias !54 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 200
  %.val22.i = load i32, ptr %i.dp, align 8, !tbaa !11, !noalias !54 ; 2 uses
  %i.dq = zext i32 %.val22.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.dq, 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %.val22.i, 0
  br i1 %.not1.i.i, label %_ZN12_GLOBAL__N_118GCNMinRegScheduler17releaseSuccessorsEPKN4llvm5SUnitEi.exit.i, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %._crit_edge.i
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.lr.ph.i26.i
  %.0142.i.i = phi ptr [ %.val21.i, %.lr.ph.i26.i ], [ %i.ev, %bb.s ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.0142.i.i, align 8, !noalias !54 ; 2 uses
  %i.dt = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dv = and i64 %.0.copyload.i.i.i.i.i.i, 6
  %i.dw = icmp eq i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %.0142.i.i, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !noalias !54
  %i.dz = icmp ugt i32 %i.dy, 3
  %i.ea = select i1 %i.dw, i1 %i.dz, i1 false
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 200
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !89, !noalias !54 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !68, !noalias !54
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !70, !noalias !54
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !70, !noalias !54
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ej = load ptr, ptr %6, align 8, !tbaa !25, !noalias !54 ; 2 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = add i64 %i.ek, 32                       ; 2 uses
  %i.em = load i64, ptr %i.ds, align 8, !tbaa !26, !noalias !54
  %i.en = icmp ult i64 %i.el, %i.em
  br i1 %i.en, label %bb.q, label %bb.r, !prof !27

bb.q:                                             ; preds = %bb.p
  %i.eo = inttoptr i64 %i.el to ptr
  store ptr %i.eo, ptr %6, align 8, !tbaa !25, !noalias !54
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ep = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(120) %6, i64 noundef 32, i64 noundef 32, i8 0), !noalias !54
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i.i

_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi ptr [ %i.ej, %bb.q ], [ %i.ep, %bb.r ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i.i, i8 0, i64 16, i1 false), !noalias !54
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.du, ptr %i.eq, align 8, !tbaa !94, !noalias !54
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store i32 0, ptr %i.er, align 8, !tbaa !95, !noalias !54
  %.val16.i.i = load ptr, ptr %i.i, align 8, !tbaa !53, !noalias !54 ; 3 uses
  %i.es = load ptr, ptr %.val16.i.i, align 8, !tbaa !52, !noalias !54 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store ptr %.val16.i.i, ptr %i.et, align 8, !tbaa !53, !noalias !54
  store ptr %i.es, ptr %.0.i.i.i.i, align 8, !tbaa !52, !noalias !54
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %.0.i.i.i.i, ptr %i.eu, align 8, !tbaa !53, !noalias !54
  store ptr %.0.i.i.i.i, ptr %.val16.i.i, align 8, !tbaa !52, !noalias !54
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i.i, %bb.o, %bb.n, %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %.0142.i.i, i64 16 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.ev, %i.dr
  br i1 %.not.i27.i, label %_ZN12_GLOBAL__N_118GCNMinRegScheduler17releaseSuccessorsEPKN4llvm5SUnitEi.exit.i, label %bb.m

_ZN12_GLOBAL__N_118GCNMinRegScheduler17releaseSuccessorsEPKN4llvm5SUnitEi.exit.i: ; preds = %bb.s, %._crit_edge.i
  %.val.i.i81.i = load ptr, ptr %i.f, align 8, !tbaa !52, !noalias !54
  %i.ew = icmp eq ptr %i.f, %.val.i.i81.i
  br i1 %i.ew, label %_ZN12_GLOBAL__N_118GCNMinRegScheduler8scheduleEN4llvm8ArrayRefIPKNS1_5SUnitEEERKNS1_11ScheduleDAGE.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %_ZN12_GLOBAL__N_118GCNMinRegScheduler17releaseSuccessorsEPKN4llvm5SUnitEi.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.w

bb.t:                                             ; preds = %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i, %.lr.ph.i
  %.080.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ft, %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i ] ; 2 uses
  %i.fg = load ptr, ptr %.080.i, align 8, !tbaa !96, !noalias !54
  %i.fh = load ptr, ptr %6, align 8, !tbaa !25, !noalias !54 ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = add i64 %i.fi, 32                       ; 2 uses
  %i.fk = load i64, ptr %i.dn, align 8, !tbaa !26, !noalias !54
  %i.fl = icmp ult i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.u, label %bb.v, !prof !27

bb.u:                                             ; preds = %bb.t
  %i.fm = inttoptr i64 %i.fj to ptr
  store ptr %i.fm, ptr %6, align 8, !tbaa !25, !noalias !54
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i

bb.v:                                             ; preds = %bb.t
  %i.fn = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(120) %6, i64 noundef 32, i64 noundef 32, i8 0), !noalias !54
  br label %_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i

_ZN4llvm24SpecificBumpPtrAllocatorIN12_GLOBAL__N_118GCNMinRegScheduler9CandidateEE8AllocateEm.exit.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i = phi ptr [ %i.fh, %bb.u ], [ %i.fn, %bb.v ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i, i8 0, i64 16, i1 false), !noalias !54
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %i.fg, ptr %i.fo, align 8, !tbaa !94, !noalias !54
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 0, ptr %i.fp, align 8, !tbaa !95, !noalias !54
end_hunk_0
