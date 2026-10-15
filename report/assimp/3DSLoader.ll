Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSLoader?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14ParseMainChunkEv:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.au = and i64 %i.am, 4294967295               ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967295
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.at, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 2 uses
  store ptr %i.ba, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.n, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.n:                                             ; preds = %bb.m
  %i.be = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull @.str.41)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5: ; preds = %bb.l, %bb.m
  %i.bg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  %.pre-phi14 = phi i64 [ %.pre13, %._crit_edge ], [ %i.bn, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bq = and i64 %.pre-phi14, 4294967294
  %i.br = icmp samesign ult i64 %i.bq, 6
  br i1 %i.br, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.q, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA42_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA42_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6Assimp19Discreet3DSImporter12CheckIndicesERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare void @_ZN6Assimp19Discreet3DSImporter10MakeUniqueERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiVector3t, align 8          ; 5 uses
  %2 = alloca %"class.std::vector.44", align 8    ; 12 uses
  %3 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 15 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store <2 x float> zeroinitializer, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %1)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not257 = icmp eq ptr %i.w, %i.x
  br i1 %.not257, label %.preheader217, label %.lr.ph

.preheader217:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not258 = icmp eq ptr %i.y, %i.z
  br i1 %.not258, label %._crit_edge, label %.lr.ph229

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.bs, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.bq, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082221 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load float, ptr %5, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %6 = load float, ptr %i.au, align 4
  %7 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %8 = load float, ptr %7, align 4
  %i.av = load <2 x float>, ptr %i.ao, align 4    ; 2 uses
  %i.aw = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %i.ax = fsub <2 x float> %i.av, %i.aw           ; 2 uses
  %9 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x float> %9, float %i.at, i64 0
  %10 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x float> %10, float %6, i64 0 ; 2 uses
  %i.ba = fsub <2 x float> %i.ay, %i.az           ; 2 uses
  %i.bb = load <2 x float>, ptr %i.as, align 4    ; 2 uses
  %11 = fsub <2 x float> %i.bb, %i.aw             ; 2 uses
  %12 = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bc = insertelement <2 x float> %12, float %8, i64 0
  %i.bd = fsub <2 x float> %i.bc, %i.az           ; 2 uses
  %13 = extractelement <2 x float> %11, i64 1
  %14 = fneg float %13
  %15 = extractelement <2 x float> %i.ba, i64 0
  %16 = fmul float %15, %14
  %17 = extractelement <2 x float> %i.ax, i64 1
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %18 = call float @llvm.fmuladd.f32(float %17, float %i.be, float %16)
  %19 = fneg <2 x float> %i.bd
  %20 = fmul <2 x float> %i.ax, %19
  %21 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %11, <2 x float> %20) ; 2 uses
  %.sroa.0.0.vec.insert.i99 = insertelement <2 x float> poison, float %18, i64 0
  %22 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i99, <2 x float> %21, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.ai ; 2 uses
  store <2 x float> %22, ptr %i.bg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %23 = extractelement <2 x float> %21, i64 1     ; 3 uses
  store float %23, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bh = load i32, ptr %i.al, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  store <2 x float> %22, ptr %i.bk, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store float %23, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.bl = load i32, ptr %i.ap, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  store <2 x float> %22, ptr %i.bo, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %23, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.bp = add i32 %.082221, 1                     ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = load ptr, ptr %i.v, align 8
  %i.bs = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 4
  %i.bx = icmp ugt i64 %i.bw, %i.bq
  br i1 %i.bx, label %.lr.ph, label %.preheader217, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph229
  %foldExtExtBinop = fsub <2 x float> %i.db, %i.cz
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop323 = fsub <2 x float> %i.db, %i.cz ; 2 uses
  %i.bz = fsub float %.sroa.speculated, %.sroa.speculated196 ; 2 uses
  %foldExtExtBinop325 = fmul <2 x float> %foldExtExtBinop323, %foldExtExtBinop323
  %i.ca = extractelement <2 x float> %foldExtExtBinop325, i64 1
  %i.cb = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.ca)
  %i.cc = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cb)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader217
  %i.cd = phi float [ 1.200000e+21, %.preheader217 ], [ %i.cc, %._crit_edge.loopexit ]
  %i.ce = call noundef float @sqrtf(float noundef %i.cd) #28
  %i.cf = fmul float %i.ce, f0x3727C5AC           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cg = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not301 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not301, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cm = sdiv exact i64 %i.ck, 12
  %i.cn = icmp ugt i64 %i.cm, 768614336404564650
  br i1 %i.cn, label %.noexc133, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

.noexc133:                                        ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #30
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #31 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cp, i8 0, i64 %i.ck, i1 false)
  store ptr %i.cp, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ck ; 2 uses
  store ptr %i.cq, ptr %i.cl, align 8
  store ptr %i.cq, ptr %i.co, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.lr.ph229:                                        ; preds = %.preheader217, %.lr.ph229
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph229 ], [ 0, %.preheader217 ] ; 2 uses
  %.sroa.13193.0225 = phi float [ %.sroa.speculated196, %.lr.ph229 ], [ 1.000000e+10, %.preheader217 ] ; 2 uses
  %.sroa.13.0222 = phi float [ %.sroa.speculated, %.lr.ph229 ], [ -1.000000e+10, %.preheader217 ] ; 2 uses
  %i.cr = phi <2 x float> [ %i.db, %.lr.ph229 ], [ splat (float -1.000000e+10), %.preheader217 ] ; 2 uses
  %i.cs = phi <2 x float> [ %i.cz, %.lr.ph229 ], [ splat (float 1.000000e+10), %.preheader217 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load float, ptr %i.cu, align 4          ; 4 uses
  %i.cw = fcmp olt float %i.cv, %.sroa.13193.0225
  %.sroa.speculated196 = select i1 %i.cw, float %i.cv, float %.sroa.13193.0225 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.ct, align 4    ; 4 uses
  %i.cy = fcmp olt <2 x float> %i.cx, %i.cs
  %i.cz = select <2 x i1> %i.cy, <2 x float> %i.cx, <2 x float> %i.cs ; 3 uses
  %i.da = fcmp olt <2 x float> %i.cr, %i.cx
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cx, <2 x float> %i.cr ; 3 uses
  %i.dc = fcmp olt float %.sroa.13.0222, %i.cv
  %.sroa.speculated = select i1 %i.dc, float %i.cv, float %.sroa.13.0222 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dd = and i64 %indvars.iv.next, 4294967295
  %i.de = icmp ugt i64 %i.ad, %i.dd
  br i1 %i.de, label %.lr.ph229, label %._crit_edge.loopexit, !llvm.loop !52

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.df = phi ptr [ %i.cp, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dh = load ptr, ptr %i.v, align 8
  %.not236 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not236, label %._crit_edge238, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0172.0237 = phi ptr [ %i.eb, %bb.j ], [ %i.dg, %bb.f ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 12 ; 3 uses
  %i.dj = load i32, ptr %.sroa.0172.0237, align 4 ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load i32, ptr %i.di, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dm, i32 noundef %i.dj, i32 noundef %i.dn)
          to label %bb.h unwind label %bb.k

._crit_edge238:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.o

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 4
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %0, align 8
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load i32, ptr %i.di, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i32 noundef %i.dq, i32 noundef %i.du)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 8
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %0, align 8
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load i32, ptr %i.di, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dz, i32 noundef %i.dw, i32 noundef %i.ea)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.eb, %i.ec
  br i1 %.not, label %._crit_edge238, label %.preheader, !llvm.loop !53

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %._crit_edge238
  %i.ee = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ef = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12
  %i.ek = add nsw i64 %i.ej, 63                   ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = and i64 %i.el, 2305843009213693944
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #31
          to label %bb.n unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.eo = lshr i64 %i.ek, 6                       ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo
  %.idx.i = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.en, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.m
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.n, %bb.l
  %.sroa.16168.0 = phi ptr [ null, %bb.l ], [ %i.ep, %bb.n ] ; 4 uses
  %.sroa.0160.0 = phi ptr [ null, %bb.l ], [ %i.en, %bb.n ] ; 10 uses
  %i.er = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8
  %.not213253 = icmp eq ptr %i.er, %i.es
  br i1 %.not213253, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge256:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ev = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.o:                                             ; preds = %._crit_edge238
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.lr.ph255, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0155.0254 = phi ptr [ %i.er, %.lr.ph255 ], [ %i.fk, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0155.0254, i64 12 ; 3 uses
  %i.ey = load i32, ptr %.sroa.0155.0254, align 4 ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj:bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fp, i64 1032 ; 2 uses
  store float %i.ii, ptr %i.ij, align 4
  %i.ik = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = icmp ugt ptr %i.in, %i.ip
  br i1 %i.iq, label %bb.bh, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58

bb.bh:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.ir = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull @.str.39)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @__cxa_throw(ptr nonnull %i.ir, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ir) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.it = load float, ptr %i.im, align 1
  store ptr %i.in, ptr %i.il, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fp, i64 1036 ; 2 uses
  store float %i.it, ptr %i.iu, align 4
  %i.iv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = icmp ugt ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.bk, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59

bb.bk:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.jc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull @.str.39)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jc) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.je = load float, ptr %i.ix, align 1
  store ptr %i.iy, ptr %i.iw, align 8
  %i.jf = load float, ptr %i.hy, align 4
  %i.jg = fsub float %i.je, %i.jf
  store float %i.jg, ptr %i.fs, align 4
  %i.jh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = icmp ugt ptr %i.jk, %i.jm
  br i1 %i.jn, label %bb.bn, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60

bb.bn:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.jo = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, ptr noundef nonnull @.str.39)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @__cxa_throw(ptr nonnull %i.jo, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jo) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.jq = load float, ptr %i.jj, align 1
  store ptr %i.jk, ptr %i.ji, align 8
  %i.jr = load float, ptr %i.ij, align 4
  %i.js = fsub float %i.jq, %i.jr
  store float %i.js, ptr %i.ft, align 4
  %i.jt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = icmp ugt ptr %i.jw, %i.jy
  br i1 %i.jz, label %bb.bq, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61

bb.bq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.ka = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull @.str.39)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ka) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.kc = load float, ptr %i.jv, align 1
  store ptr %i.jw, ptr %i.ju, align 8
  %i.kd = load float, ptr %i.iu, align 4
  %i.ke = fsub float %i.kc, %i.kd                 ; 4 uses
  store float %i.ke, ptr %i.fu, align 4
  %i.kf = load <2 x float>, ptr %i.fs, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.kf, %i.kf
  %i.kg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.kh = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  %i.ki = call float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.kg)
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.ke, float %i.ki)
  %i.kk = call noundef float @sqrtf(float noundef %i.kj) #28 ; 3 uses
  %i.kl = fpext float %i.kk to double
  %i.km = fcmp olt double %i.kl, 1.000000e-05
  br i1 %i.km, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.kn = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kn, ptr noundef nonnull @.str.10)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.fs, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

.loopexit104:                                     ; preds = %.noexc.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp, %.loopexit104
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cl

bb.bv:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.ko = fcmp oeq float %i.kk, 0.000000e+00
  br i1 %i.ko, label %_ZN10aiVector3tIfEdVEf.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kp = fdiv float 1.000000e+00, %i.kk          ; 2 uses
  %i.kq = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x float> %i.kf, %i.kr
  store <2 x float> %i.ks, ptr %i.fs, align 4
  %i.kt = fmul float %i.ke, %i.kp
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

_ZN10aiVector3tIfEdVEf.exit.sink.split:           ; preds = %bb.bt, %bb.bw
  %.sink = phi float [ %i.kt, %bb.bw ], [ 0.000000e+00, %bb.bt ]
  store float %.sink, ptr %i.fu, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.sink.split, %bb.bv
  %i.ku = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = icmp ugt ptr %i.kx, %i.kz
  br i1 %i.la, label %bb.bx, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62

bb.bx:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.lb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull @.str.39)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lb) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62: ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.ld = load float, ptr %i.kw, align 1
  store ptr %i.kx, ptr %i.kv, align 8
  %i.le = fmul float %i.ld, f0x3C8EFA35
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.fs, align 4 ; 4 uses
  %.sroa.25.0.copyload = load float, ptr %i.fu, align 4 ; 3 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop161 = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.04.0.copyload
  %i.lf = extractelement <2 x float> %foldExtExtBinop161, i64 1
  %i.lg = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.lf)
  %i.lh = call noundef float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float %.sroa.25.0.copyload, float %i.lg)
  %i.li = call noundef float @sqrtf(float noundef %i.lh) #28 ; 2 uses
  %i.lj = fcmp oeq float %i.li, 0.000000e+00
  %7 = fdiv float 1.000000e+00, %i.li
  %i.lk = fmul float %i.le, 5.000000e-01          ; 2 uses
  %i.ll = call noundef float @sinf(float noundef %i.lk) #28
  %i.lm = call noundef float @cosf(float noundef %i.lk) #28 ; 3 uses
  %i.ln = fneg float %i.lm                        ; 2 uses
  %8 = shufflevector <2 x float> %.sroa.04.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %9 = insertelement <4 x float> %8, float %.sroa.25.0.copyload, i64 1 ; 2 uses
  %10 = insertelement <4 x float> poison, float %7, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = fmul <4 x float> %9, %11
  %13 = insertelement <4 x i1> poison, i1 %i.lj, i64 0
  %14 = shufflevector <4 x i1> %13, <4 x i1> poison, <4 x i32> zeroinitializer
  %15 = select <4 x i1> %14, <4 x float> %9, <4 x float> %12
  %16 = insertelement <4 x float> poison, float %i.ll, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = fmul <4 x float> %17, %15                 ; 13 uses
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %20 = insertelement <4 x float> poison, float %i.ln, i64 0
  %21 = insertelement <4 x float> %20, float %i.lm, i64 1
  %22 = shufflevector <4 x float> %21, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %23 = fmul <4 x float> %19, %22                 ; 2 uses
  %24 = extractelement <4 x float> %18, i64 0     ; 2 uses
  %25 = extractelement <4 x float> %23, i64 3
  %26 = call float @llvm.fmuladd.f32(float %24, float %24, float %25)
  %27 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %28 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %18, <4 x float> %23) ; 4 uses
  %29 = shufflevector <4 x float> %18, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 0, i32 poison>
  %30 = insertelement <4 x float> %29, float %i.lm, i64 3
  %31 = insertelement <4 x float> %18, float 1.000000e+00, i64 0
  %32 = insertelement <4 x float> %31, float %i.ln, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %34 = fmul <4 x float> %30, %33
  %35 = shufflevector <4 x float> %28, <4 x float> %18, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %36 = shufflevector <4 x float> %18, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 3, i32 1>
  %37 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %36, <4 x float> %34) ; 3 uses
  %38 = call float @llvm.fmuladd.f32(float %26, float -2.000000e+00, float 1.000000e+00)
  %39 = shufflevector <4 x float> %18, <4 x float> %28, <4 x i32> <i32 3, i32 poison, i32 6, i32 poison>
  %40 = insertelement <4 x float> %39, float %38, i64 1
  %41 = shufflevector <4 x float> %40, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %42 = fmul <4 x float> %41, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %43 = shufflevector <4 x float> %18, <4 x float> %37, <4 x i32> <i32 0, i32 poison, i32 4, i32 7>
  %44 = shufflevector <4 x float> %43, <4 x float> %28, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %45 = shufflevector <4 x float> %18, <4 x float> <float poison, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %46 = fmul <4 x float> %44, %45
  %47 = shufflevector <4 x float> %18, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %48 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %47, <4 x float> %46) ; 3 uses
  %49 = extractelement <4 x float> %48, i64 0
  %i.lo = call float @llvm.fmuladd.f32(float %49, float -2.000000e+00, float 1.000000e+00)
  %50 = shufflevector <4 x float> %28, <4 x float> %37, <2 x i32> <i32 1, i32 5>
  %51 = fmul <2 x float> %50, splat (float 2.000000e+00)
  %52 = shufflevector <4 x float> %48, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> zeroinitializer, <2 x float> %52)
  %53 = extractelement <4 x float> %48, i64 3
  %i.lq = call float @llvm.fmuladd.f32(float %i.lo, float 0.000000e+00, float %53)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fp, i64 1040
  store <2 x float> %i.lp, ptr %i.lr, align 4
  store float %i.lq, ptr %i.fr, align 4
  %i.ls = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8            ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = icmp ugt ptr %i.lv, %i.lx
  br i1 %i.ly, label %bb.ca, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63

bb.ca:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %i.lz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, ptr noundef nonnull @.str.39)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @__cxa_throw(ptr nonnull %i.lz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lz) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %i.mb = load float, ptr %i.lu, align 1
  store ptr %i.lv, ptr %i.lt, align 8
  %i.mc = fmul float %i.mb, f0x3C8EFA35           ; 2 uses
  %i.md = fcmp olt float %i.mc, 1.000000e-03
  %spec.store.select = select i1 %i.md, float f0x3F490FDB, float %i.mc
  store float %spec.store.select, ptr %i.fv, align 4
  %i.me = load i8, ptr %i.w, align 1, !range !29, !noundef !30
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63
  call void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63, %bb.cd, %bb.an, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.mg = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  store ptr %i.mi, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 40 ; 2 uses
  %i.mm = and i64 %i.bc, 4294967295               ; 2 uses
  %i.mn = icmp eq i64 %i.mm, 4294967295
  br i1 %i.mn, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mp = load ptr, ptr %i.mo, align 8
  store ptr %i.mp, ptr %i.ml, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.cg:                                            ; preds = %bb.ce
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mm ; 2 uses
  store ptr %i.ms, ptr %i.ml, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = icmp ugt ptr %i.ms, %i.mu
  br i1 %i.mv, label %bb.ch, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.ch:                                            ; preds = %bb.cg
  %i.mw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, ptr noundef nonnull @.str.41)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @__cxa_throw(ptr nonnull %i.mw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mw) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64: ; preds = %bb.cf, %bb.cg
  %i.my = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = ptrtoint ptr %i.na to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 2 uses
  %i.ng = and i64 %i.nf, 4294967295
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %.thread, label %bb.ck

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.ck:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  %.pre-phi130 = phi i64 [ %.pre129, %._crit_edge ], [ %i.nf, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ni = and i64 %.pre-phi130, 4294967294
  %i.nj = icmp samesign ult i64 %i.ni, 6
  br i1 %i.nj, label %.loopexit, label %bb.b

bb.cl:                                            ; preds = %bb.bu, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %lpad.phi109, %bb.am ], [ %lpad.phi, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.ck, %bb.a, %.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !75
  store i8 0, ptr %i.b, align 8, !alias.scope !75
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !75 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !75 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !75 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !75 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !75
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #28
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
end_hunk_1
