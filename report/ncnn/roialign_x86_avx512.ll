Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign_x86_avx512?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<ncnn::PreCalc<float>, std::allocator<ncnn::PreCalc<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<ncnn::PreCalc<float>, std::allocator<ncnn::PreCalc<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<ncnn::PreCalc<float>, std::allocator<ncnn::PreCalc<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ncnn::PreCalc<float>, std::allocator<ncnn::PreCalc<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4ncnn19ROIAlign_x86_avx512D0Ev = comdat any

$_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE = comdat any

$_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE = comdat any

@_ZTVN4ncnn19ROIAlign_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn19ROIAlign_x86_avx512E, ptr @_ZN4ncnn5LayerD2Ev, ptr @_ZN4ncnn19ROIAlign_x86_avx512D0Ev, ptr @_ZN4ncnn8ROIAlign10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn19ROIAlign_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn19ROIAlign_x86_avx512E, ptr @_ZTIN4ncnn8ROIAlignE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn19ROIAlign_x86_avx512E = hidden constant [29 x i8] c"N4ncnn19ROIAlign_x86_avx512E\00", align 1
@_ZTIN4ncnn8ROIAlignE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

@_ZN4ncnn19ROIAlign_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn19ROIAlign_x86_avx512C2Ev

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn19ROIAlign_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #14
  ret void
}

declare noundef i32 @_ZN4ncnn8ROIAlign10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 13 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.std::vector.8", align 8     ; 10 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !49     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50   ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !51   ; 3 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  store i32 %i.t, ptr %i.c, align 4, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.v = load ptr, ptr %2, align 8, !tbaa !49     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.t, i64 noundef %i.r, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !52
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.af, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !34  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.am = load float, ptr %i.al, align 4, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = load <1 x float>, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = insertelement <2 x float> poison, float %i.am, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.aq, i64 1
  %i.au = shufflevector <1 x float> %i.ao, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = fmul fast <2 x float> %i.at, %i.au      ; 5 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  store float %i.aw, ptr %i.d, align 4, !tbaa !36
  %i.ax = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  store float %i.ax, ptr %i.e, align 4, !tbaa !36
  %i.ay = load <2 x float>, ptr %i.ar, align 4, !tbaa !36
  %i.az = fmul fast <2 x float> %i.ay, %i.au      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !55, !range !56, !noundef !57
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bd = fadd fast <2 x float> %i.av, splat (float -5.000000e-01) ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  store float %i.be, ptr %i.d, align 4, !tbaa !36
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  store float %i.bf, ptr %i.e, align 4, !tbaa !36
  %i.bg = fsub fast <2 x float> %i.az, %i.av
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = fsub fast <2 x float> %i.az, %i.av
  %i.bi = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bh, <2 x float> splat (float 1.000000e+00))
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.bj = phi float [ %i.be, %.thread ], [ %i.aw, %bb.c ] ; 2 uses
  %i.bk = phi float [ %i.bf, %.thread ], [ %i.ax, %bb.c ] ; 2 uses
  %i.bl = phi <2 x float> [ %i.bg, %.thread ], [ %i.bi, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.bm = load <2 x i32>, ptr %i.w, align 8, !tbaa !16 ; 5 uses
  %i.bn = sitofp fast <2 x i32> %i.bm to <2 x float>
  %i.bo = fdiv fast <2 x float> %i.bl, %i.bn      ; 3 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 4 uses
  store float %i.bp, ptr %i.f, align 4, !tbaa !36
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 4 uses
  store float %i.bq, ptr %i.g, align 4, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !58
  switch i32 %i.bs, label %bb.q [
    i32 0, label %bb.e
    i32 1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0                   ; 2 uses
  %i.bw = uitofp nneg i32 %i.bu to float          ; 2 uses
  %i.bx = tail call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bo) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1
  %.in = select i1 %i.bv, float %i.bw, float %i.by
  %i.bz = extractelement <2 x float> %i.bx, i64 0
  %i.ca = select fast i1 %i.bv, float %i.bw, float %i.bz
  %i.cb = fptosi float %.in to i32
  %i.cc = fptosi float %i.ca to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.cd = sext i32 %i.cb to i64
  %i.ce = sext i32 %i.cc to i64
  %i.cf = extractelement <2 x i32> %i.bm, i64 0
  %i.cg = sext i32 %i.cf to i64
  %i.ch = extractelement <2 x i32> %i.bm, i64 1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.cg
  %i.ck = mul i64 %i.cj, %i.ce
  %i.cl = mul i64 %i.ck, %i.cd                    ; 5 uses
  %i.cm = icmp ugt i64 %i.cl, 288230376151711743
  br i1 %i.cm, label %.noexc, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.noexc44

_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc44:                                         ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.cn = shl nuw nsw i64 %i.cl, 5
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #16 ; 5 uses
  store ptr %i.co, ptr %4, align 8, !tbaa !40
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.co, i8 0, i64 32, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  %i.cs = add nsw i64 %i.cl, -1                   ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.noexc44
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.f
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.co, i64 32, i1 false), !tbaa.struct !60
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc44, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.cr, %.noexc44 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.cw, align 8, !tbaa !61
  %i.cx = load i32, ptr %i.y, align 4, !tbaa !33
  %i.cy = load i32, ptr %i.w, align 8, !tbaa !32
  %i.cz = load i32, ptr %i.bt, align 4, !tbaa !37
  invoke void @_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %i.p, i32 noundef %i.n, i32 noundef %i.cx, i32 noundef %i.cy, float noundef nofpclass(nan inf) %i.bk, float noundef nofpclass(nan inf) %i.bj, float noundef nofpclass(nan inf) %i.bq, float noundef nofpclass(nan inf) %i.bp, i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !62
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.db)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  %i.dc = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !59
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #14
  br label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.q

bb.i:                                             ; preds = %.loopexit
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !59
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #14
  br label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit46

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit46: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %i.di

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !37 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ds = uitofp nneg i32 %i.dq to float
  %i.dt = fptosi float %i.ds to i32               ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.du = tail call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.bq)
  %i.dv = fptosi float %i.du to i32
  %i.dw = tail call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.bp)
  %.pre = fptosi float %i.dw to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi = phi i32 [ %.pre, %bb.m ], [ %i.dt, %bb.l ] ; 5 uses
  %i.dx = phi i32 [ %i.dv, %bb.m ], [ %i.dt, %bb.l ] ; 5 uses
  store i32 %i.dx, ptr %i.h, align 4, !tbaa !16
  store i32 %.pre-phi, ptr %i.i, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.dy = mul nsw i32 %i.dx, %.pre-phi
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 1)
  %i.dz = uitofp nneg i32 %.sroa.speculated to float
  store float %i.dz, ptr %i.j, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ea = sext i32 %i.dx to i64
  %i.eb = sext i32 %.pre-phi to i64
  %i.ec = extractelement <2 x i32> %i.bm, i64 0
  %i.ed = sext i32 %i.ec to i64
  %i.ee = extractelement <2 x i32> %i.bm, i64 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %i.ef, %i.ed
  %i.eh = mul i64 %i.eg, %i.ea
  %i.ei = mul i64 %i.eh, %i.eb                    ; 5 uses
  %i.ej = icmp ugt i64 %i.ei, 288230376151711743
  br i1 %i.ej, label %.noexc56, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48

.noexc56:                                         ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48: ; preds = %bb.n
  %.not.i.i.i.i49 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i.i49, label %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55, label %.noexc57

_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55: ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit82

.noexc57:                                         ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48
  %i.ek = shl nuw nsw i64 %i.ei, 5
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #16 ; 5 uses
  store ptr %i.el, ptr %5, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.el, i8 0, i64 32, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 3 uses
  %i.ep = add nsw i64 %i.ei, -1                   ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %.loopexit82, label %bb.o
end_hunk_0
begin_hunk_1_@_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE:bb.a
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.co = add i64 %.2142.us, %n.vec181            ; 2 uses
  %broadcast.splatinsert182 = insertelement <4 x float> poison, float %.081.us, i64 0
  %broadcast.splat183 = shufflevector <4 x float> %broadcast.splatinsert182, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %.080.us, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat187 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat189 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat201, <i32 0, i32 1, i32 2, i32 3>
  %i.cp = getelementptr [32 x i8], ptr %i.ak, i64 %.2142.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index202 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next205, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind203 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next206, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = uitofp nneg <4 x i32> %vec.ind203 to <4 x float>
  %i.cr = fadd fast <4 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fmul fast <4 x float> %broadcast.splat191, %i.cr
  %i.ct = fmul fast <4 x float> %i.cs, %i.as
  %i.cu = fadd fast <4 x float> %i.ct, %broadcast.splat195 ; 3 uses
  %i.cv = fptosi <4 x float> %i.cu to <4 x i32>   ; 4 uses
  %i.cw = add nsw <4 x i32> %i.cv, splat (i32 1)  ; 3 uses
  %i.cx = sitofp fast <4 x i32> %i.cw to <4 x float>
  %i.cy = fsub fast <4 x float> %i.cx, %i.cu
  %i.cz = sitofp fast <4 x i32> %i.cv to <4 x float>
  %i.da = fsub fast <4 x float> %i.cu, %i.cz
  %i.db = icmp slt <4 x i32> %i.cw, %broadcast.splat197 ; 2 uses
  %i.dc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cw, <4 x i32> %broadcast.splat199) ; 2 uses
  %i.dd = select nsz <4 x i1> %i.db, <4 x float> %i.cy, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.de = select nsz <4 x i1> %i.db, <4 x float> %i.da, <4 x float> zeroinitializer ; 2 uses
  %i.df = add nsw <4 x i32> %broadcast.splat187, %i.cv
  %i.dg = add nsw <4 x i32> %i.dc, %broadcast.splat187
  %i.dh = add nsw <4 x i32> %broadcast.splat189, %i.cv
  %i.di = add nsw <4 x i32> %i.dc, %broadcast.splat189
  %i.dj = fmul fast <4 x float> %i.dd, %broadcast.splat183
  %i.dk = fmul fast <4 x float> %i.de, %broadcast.splat183
  %i.dl = fmul fast <4 x float> %i.dd, %broadcast.splat185
  %i.dm = fmul fast <4 x float> %i.de, %broadcast.splat185
  %i.dn = getelementptr [32 x i8], ptr %i.cp, i64 %index202
  %.uncasted212 = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted213 = shufflevector <4 x i32> %i.dh, <4 x i32> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted214 = shufflevector <8 x i32> %.uncasted212, <8 x i32> %.uncasted213, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dq = bitcast <16 x i32> %.uncasted214 to <16 x float>
  %i.dr = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec204 = shufflevector <16 x float> %i.dq, <16 x float> %i.dr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec204, ptr %i.dn, align 4, !tbaa !42
  %index.next205 = add nuw i64 %index202, 4       ; 2 uses
  %vec.ind.next206 = add nuw nsw <4 x i32> %vec.ind203, splat (i32 4)
  %i.ds = icmp eq i64 %index.next205, %n.vec181
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n207, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.2142.us, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.086139.us.ph = phi i32 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %i.dt = insertelement <4 x float> poison, float %.081.us, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %.080.us, i64 1
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.086139.us = phi i32 [ %i.eq, %vec.epilog.scalar.ph ], [ %.086139.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dw = uitofp ninf nsz nneg i32 %.086139.us to float
  %i.dx = fadd fast float %i.dw, 5.000000e-01
  %i.dy = fmul fast float %7, %i.dx
  %i.dz = fmul fast float %i.dy, %i.at
  %i.ea = fadd fast float %i.dz, %.sroa.speculated115 ; 3 uses
  %i.eb = fptosi float %i.ea to i32               ; 3 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 3 uses
  %i.ed = sitofp fast i32 %i.ec to float
  %i.ee = sitofp fast i32 %i.eb to float
  %.not.us = icmp slt i32 %i.ec, %1               ; 2 uses
  %.085.us = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.g)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.eg = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %i.eh = insertelement <4 x i32> %i.eg, i32 %.085.us, i64 1
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ej = add nsw <4 x i32> %i.bi, %i.ei
  store <4 x i32> %i.ej, ptr %i.ef, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = fsub fast float %i.ed, %i.ea
  %i.el = fsub fast float %i.ea, %i.ee
  %.083.us = select nsz i1 %.not.us, float %i.ek, float 1.000000e+00
  %.082.us = select nsz i1 %.not.us, float %i.el, float 0.000000e+00
  %i.em = insertelement <4 x float> poison, float %.083.us, i64 0
  %i.en = insertelement <4 x float> %i.em, float %.082.us, i64 1
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ep = fmul fast <4 x float> %i.eo, %i.dv
  store <4 x float> %i.ep, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !36
  %i.eq = add nuw nsw i32 %.086139.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !69

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 2 uses
  %i.er = add nuw nsw i32 %.079141.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.er, %i.ae
  br i1 %exitcond155.not, label %.loopexit.loopexit, label %iter.check, !llvm.loop !70
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %12) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.h = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !16
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not166 = icmp sgt i32 %i.k, %i.j
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !34, !noalias !81
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !81
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !81
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !34, !noalias !82
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35, !noalias !82
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !82
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !16
  %i.ae = sitofp fast i32 %i.ad to float
  %i.af = load i32, ptr %11, align 4, !tbaa !16
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !37  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0                   ; 2 uses
  %i.aj = uitofp nneg i32 %i.ah to float          ; 2 uses
  %i.ak = sext i32 %i.k to i64
  %i.al = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.am = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge165
  %indvars.iv181 = phi i64 [ %i.ak, %.noexc.lr.ph.split.split ], [ %indvars.iv.next182, %._crit_edge165 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv181
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 13 uses
  %.reass170 = mul i64 %factor.op.mul169, %indvars.iv181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass170
  br label %.preheader147

.preheader147:                                    ; preds = %.noexc, %._crit_edge
  %.064164 = phi i32 [ 0, %.noexc ], [ %i.as, %._crit_edge ] ; 2 uses
  %.065163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.067162 = phi ptr [ %i.ar, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.as = add nuw nsw i32 %.064164, 1             ; 3 uses
  %i.at = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %.064164, i64 1
  %i.av = uitofp ninf nsz nneg <2 x i32> %i.au to <2 x float>
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %i.ac
  %exitcond180.not = icmp eq i32 %i.as, %i.w
  br i1 %exitcond180.not, label %._crit_edge165, label %.preheader147, !llvm.loop !75

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.166159 = phi i32 [ %.065163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ax = load float, ptr %6, align 4, !tbaa !36
  %i.ay = load float, ptr %7, align 4, !tbaa !36
  %i.az = load float, ptr %8, align 4, !tbaa !36
  %i.ba = load float, ptr %9, align 4, !tbaa !36
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul fast <2 x float> %i.bc, %i.av
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fadd fast <2 x float> %i.bd, %i.bf
  %i.bh = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bg, <2 x float> zeroinitializer)
  %i.bi = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bh, <2 x float> %i.ap) ; 2 uses
  %i.bj = trunc i64 %indvars.iv.next177 to i32
  %i.bk = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bl = trunc i64 %indvars.iv176 to i32
  %i.bm = insertelement <2 x i32> %i.bk, i32 %i.bl, i64 1
  %i.bn = uitofp ninf nsz nneg <2 x i32> %i.bm to <2 x float>
  %i.bo = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul fast <2 x float> %i.bp, %i.bn
  %i.br = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fadd fast <2 x float> %i.bq, %i.bs
  %i.bu = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bt, <2 x float> zeroinitializer)
  %i.bv = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bu, <2 x float> %i.an) ; 2 uses
  %i.bw = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bi, i64 1 ; 2 uses
  %i.by = fsub fast float %i.bw, %i.bx
  %i.bz = call fast nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.by)
  %i.ca = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.cb = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.cc = fsub fast float %i.ca, %i.cb
  %i.cd = call fast nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.cc)
  %.in = select i1 %i.ai, float %i.aj, float %i.bz
  %i.ce = select fast i1 %i.ai, float %i.aj, float %i.cd
  %i.cf = fptosi float %.in to i32                ; 3 uses
  %i.cg = fptosi float %i.ce to i32               ; 6 uses
  %i.ch = fcmp fast ole float %i.bw, %i.bx
  %i.ci = fcmp fast ole float %i.ca, %i.cb
  %i.cj = select i1 %i.ch, i1 true, i1 %i.ci
  %i.ck = mul i32 %i.cg, %i.cf                    ; 2 uses
  %i.cl = icmp sgt i32 %i.cf, 0
  %i.cm = icmp sgt i32 %i.cg, 0
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.cn = load ptr, ptr %12, align 8, !tbaa !40   ; 4 uses
  %i.co = zext nneg i32 %i.cg to i64              ; 6 uses
  %i.cp = sext i32 %.166159 to i64
  %min.iters.check = icmp ult i32 %i.cg, 4
  %min.iters.check193 = icmp ult i32 %i.cg, 16
  %i.cq = and i64 %i.co, 12
  %n.vec = and i64 %i.co, 2147483632              ; 5 uses
  %i.cr = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.co
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  %n.vec225 = and i64 %i.co, 2147483644           ; 4 uses
  %i.cs = trunc nuw nsw i64 %n.vec225 to i32
  %cmp.n246 = icmp eq i64 %n.vec225, %i.co
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.fz, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  %.2152.us = phi i64 [ %i.cp, %.preheader.lr.ph.split.us ], [ %i.fy, %._crit_edge.us ] ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = add i64 %.2152.us, %n.vec
  %i.cu = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.062153.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.cu, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi194 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.cv = add i64 %.2152.us, %index               ; 2 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cv
  %i.cx = getelementptr [32 x i8], ptr %i.cn, i64 %i.cv
  %i.cy = getelementptr i8, ptr %i.cx, i64 256
  %wide.vec = load <64 x float>, ptr %i.cw, align 4, !tbaa !42 ; 8 uses
  %i.cz = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.da = shufflevector <64 x i32> %i.cz, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.db = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.dc = shufflevector <64 x i32> %i.db, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.dd = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.de = shufflevector <64 x i32> %i.dd, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.df = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.dg = shufflevector <64 x i32> %i.df, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec198 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec199 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec200 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec201 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %wide.vec202 = load <64 x float>, ptr %i.cy, align 4, !tbaa !42 ; 8 uses
  %i.dh = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.di = shufflevector <64 x i32> %i.dh, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.dj = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dk = shufflevector <64 x i32> %i.dj, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.dl = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dm = shufflevector <64 x i32> %i.dl, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.dn = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.do = shufflevector <64 x i32> %i.dn, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec207 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec208 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec209 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec210 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.dp = sext <8 x i32> %i.da to <8 x i64>
  %i.dq = sext <8 x i32> %i.di to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.dp
  %wide.gep211 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.dq
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep211, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.dr = fmul fast <8 x float> %wide.masked.gather, %strided.vec198
  %i.ds = fmul fast <8 x float> %wide.masked.gather212, %strided.vec207
  %i.dt = sext <8 x i32> %i.dc to <8 x i64>
  %i.du = sext <8 x i32> %i.dk to <8 x i64>
  %wide.gep213 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.dt
  %wide.gep214 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.du
  %wide.masked.gather215 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep213, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather216 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep214, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.dv = fmul fast <8 x float> %wide.masked.gather215, %strided.vec199
  %i.dw = fmul fast <8 x float> %wide.masked.gather216, %strided.vec208
  %i.dx = sext <8 x i32> %i.de to <8 x i64>
  %i.dy = sext <8 x i32> %i.dm to <8 x i64>
  %wide.gep217 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.dx
  %wide.gep218 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.dy
  %wide.masked.gather219 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather220 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.dz = fmul fast <8 x float> %wide.masked.gather219, %strided.vec200
  %i.ea = fmul fast <8 x float> %wide.masked.gather220, %strided.vec209
  %i.eb = sext <8 x i32> %i.dg to <8 x i64>
  %i.ec = sext <8 x i32> %i.do to <8 x i64>
  %wide.gep221 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.eb
  %wide.gep222 = getelementptr inbounds [4 x i8], ptr %i.aq, <8 x i64> %i.ec
  %wide.masked.gather223 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep221, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather224 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.ed = fmul fast <8 x float> %wide.masked.gather223, %strided.vec201
  %i.ee = fmul fast <8 x float> %wide.masked.gather224, %strided.vec210
  %i.ef = fadd fast <8 x float> %i.dr, %vec.phi
  %i.eg = fadd fast <8 x float> %i.ds, %vec.phi194
  %i.eh = fadd fast <8 x float> %i.ef, %i.dv
  %i.ei = fadd fast <8 x float> %i.eg, %i.dw
  %i.ej = fadd fast <8 x float> %i.eh, %i.dz
  %i.ek = fadd fast <8 x float> %i.ei, %i.ea
  %i.el = fadd fast <8 x float> %i.ej, %i.ed      ; 2 uses
  %i.em = fadd fast <8 x float> %i.ek, %i.ee      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.em, %i.el
  %i.eo = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.eo, %vec.epilog.iter.check ], [ %.062153.us, %vector.main.loop.iter.check ]
  %i.ep = add i64 %.2152.us, %n.vec225
  %i.eq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.er = getelementptr [32 x i8], ptr %i.cn, i64 %.2152.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index226 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi227 = phi <4 x float> [ %i.eq, %vec.epilog.ph ], [ %i.fm, %vec.epilog.vector.body ]
  %i.es = getelementptr [32 x i8], ptr %i.er, i64 %index226
  %wide.vec228 = load <32 x float>, ptr %i.es, align 4, !tbaa !42 ; 8 uses
  %i.et = bitcast <32 x float> %wide.vec228 to <32 x i32>
  %i.eu = shufflevector <32 x i32> %i.et, <32 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.ev = bitcast <32 x float> %wide.vec228 to <32 x i32>
  %i.ew = shufflevector <32 x i32> %i.ev, <32 x i32> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %i.ex = bitcast <32 x float> %wide.vec228 to <32 x i32>
  %i.ey = shufflevector <32 x i32> %i.ex, <32 x i32> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.ez = bitcast <32 x float> %wide.vec228 to <32 x i32>
  %i.fa = shufflevector <32 x i32> %i.ez, <32 x i32> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec233 = shufflevector <32 x float> %wide.vec228, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec234 = shufflevector <32 x float> %wide.vec228, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec235 = shufflevector <32 x float> %wide.vec228, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec236 = shufflevector <32 x float> %wide.vec228, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.fb = sext <4 x i32> %i.eu to <4 x i64>
  %wide.gep237 = getelementptr inbounds [4 x i8], ptr %i.aq, <4 x i64> %i.fb
  %wide.masked.gather238 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep237, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.fc = fmul fast <4 x float> %wide.masked.gather238, %strided.vec233
  %i.fd = sext <4 x i32> %i.ew to <4 x i64>
  %wide.gep239 = getelementptr inbounds [4 x i8], ptr %i.aq, <4 x i64> %i.fd
  %wide.masked.gather240 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep239, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.fe = fmul fast <4 x float> %wide.masked.gather240, %strided.vec234
  %i.ff = sext <4 x i32> %i.ey to <4 x i64>
  %wide.gep241 = getelementptr inbounds [4 x i8], ptr %i.aq, <4 x i64> %i.ff
  %wide.masked.gather242 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep241, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.fg = fmul fast <4 x float> %wide.masked.gather242, %strided.vec235
  %i.fh = sext <4 x i32> %i.fa to <4 x i64>
  %wide.gep243 = getelementptr inbounds [4 x i8], ptr %i.aq, <4 x i64> %i.fh
  %wide.masked.gather244 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep243, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.fi = fmul fast <4 x float> %wide.masked.gather244, %strided.vec236
  %i.fj = fadd fast <4 x float> %i.fc, %vec.phi227
  %i.fk = fadd fast <4 x float> %i.fj, %i.fe
  %i.fl = fadd fast <4 x float> %i.fk, %i.fg
  %i.fm = fadd fast <4 x float> %i.fl, %i.fi      ; 2 uses
  %index.next245 = add nuw i64 %index226, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next245, %n.vec225
  br i1 %i.fn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fm) ; 2 uses
  br i1 %cmp.n246, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.2152.us, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.ep, %vec.epilog.middle.block ]
end_hunk_1
