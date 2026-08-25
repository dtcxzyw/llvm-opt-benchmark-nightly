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
  %i.l = load ptr, ptr %1, align 8, !tbaa !9      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13   ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19   ; 3 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  store i32 %i.t, ptr %i.c, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.v = load ptr, ptr %2, align 8, !tbaa !9      ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.t, i64 noundef %i.r, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.af, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !40  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.am = load float, ptr %i.al, align 4, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %6 = load float, ptr %i.an, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %7 = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <2 x float> %7, float %i.ap, i64 1
  %i.as = insertelement <2 x float> poison, float %6, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = fmul fast <2 x float> %i.ar, %i.at      ; 5 uses
  %i.av = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  store float %i.av, ptr %i.d, align 4, !tbaa !42
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  store float %i.aw, ptr %i.e, align 4, !tbaa !42
  %i.ax = load <2 x float>, ptr %i.aq, align 4, !tbaa !42
  %i.ay = fmul fast <2 x float> %i.ax, %i.at      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !44, !range !45, !noundef !46
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bc = fadd fast <2 x float> %i.au, splat (float -5.000000e-01) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  store float %i.bd, ptr %i.d, align 4, !tbaa !42
  %i.be = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  store float %i.be, ptr %i.e, align 4, !tbaa !42
  %i.bf = fsub fast <2 x float> %i.ay, %i.au
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bg = fsub fast <2 x float> %i.ay, %i.au
  %i.bh = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bg, <2 x float> splat (float 1.000000e+00))
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.bi = phi float [ %i.bd, %.thread ], [ %i.av, %bb.c ] ; 2 uses
  %i.bj = phi float [ %i.be, %.thread ], [ %i.aw, %bb.c ] ; 2 uses
  %i.bk = phi <2 x float> [ %i.bf, %.thread ], [ %i.bh, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.bl = load <2 x i32>, ptr %i.w, align 8, !tbaa !18 ; 5 uses
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = fdiv fast <2 x float> %i.bk, %i.bm      ; 3 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0 ; 4 uses
  store float %i.bo, ptr %i.f, align 4, !tbaa !42
  %i.bp = extractelement <2 x float> %i.bn, i64 1 ; 4 uses
  store float %i.bp, ptr %i.g, align 4, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !47
  switch i32 %i.br, label %bb.q [
    i32 0, label %bb.e
    i32 1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !48 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0                   ; 2 uses
  %i.bv = uitofp nneg i32 %i.bt to float          ; 2 uses
  %i.bw = tail call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bn) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1
  %.in = select i1 %i.bu, float %i.bv, float %i.bx
  %i.by = extractelement <2 x float> %i.bw, i64 0
  %i.bz = select fast i1 %i.bu, float %i.bv, float %i.by
  %i.ca = fptosi float %.in to i32
  %i.cb = fptosi float %i.bz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.cc = sext i32 %i.ca to i64
  %i.cd = sext i32 %i.cb to i64
  %i.ce = extractelement <2 x i32> %i.bl, i64 0
  %i.cf = sext i32 %i.ce to i64
  %i.cg = extractelement <2 x i32> %i.bl, i64 1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, %i.cf
  %i.cj = mul i64 %i.ci, %i.cd
  %i.ck = mul i64 %i.cj, %i.cc                    ; 5 uses
  %i.cl = icmp ugt i64 %i.ck, 288230376151711743
  br i1 %i.cl, label %.noexc, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.noexc44

_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc44:                                         ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.cm = shl nuw nsw i64 %i.ck, 5
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #16 ; 5 uses
  store ptr %i.cn, ptr %4, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 3 uses
  %i.cr = add nsw i64 %i.ck, -1                   ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.noexc44
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cr, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.f
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cq, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.cn, i64 32, i1 false), !tbaa.struct !53
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !54

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc44, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.cq, %.noexc44 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !56
  %i.cw = load i32, ptr %i.y, align 4, !tbaa !37
  %i.cx = load i32, ptr %i.w, align 8, !tbaa !22
  %i.cy = load i32, ptr %i.bs, align 4, !tbaa !48
  invoke void @_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %i.p, i32 noundef %i.n, i32 noundef %i.cw, i32 noundef %i.cx, float noundef nofpclass(nan inf) %i.bj, float noundef nofpclass(nan inf) %i.bi, float noundef nofpclass(nan inf) %i.bp, float noundef nofpclass(nan inf) %i.bo, i32 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !57
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.da)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  %i.db = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #14
  br label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.q

bb.i:                                             ; preds = %.loopexit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !52
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #14
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
  resume { ptr, i32 } %i.dh

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !48 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dr = uitofp nneg i32 %i.dp to float
  %i.ds = fptosi float %i.dr to i32               ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dt = tail call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.bp)
  %i.du = fptosi float %i.dt to i32
  %i.dv = tail call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.bo)
  %.pre = fptosi float %i.dv to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi = phi i32 [ %.pre, %bb.m ], [ %i.ds, %bb.l ] ; 5 uses
  %i.dw = phi i32 [ %i.du, %bb.m ], [ %i.ds, %bb.l ] ; 5 uses
  store i32 %i.dw, ptr %i.h, align 4, !tbaa !18
  store i32 %.pre-phi, ptr %i.i, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.dx = mul nsw i32 %i.dw, %.pre-phi
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 1)
  %i.dy = uitofp nneg i32 %.sroa.speculated to float
  store float %i.dy, ptr %i.j, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.dz = sext i32 %i.dw to i64
  %i.ea = sext i32 %.pre-phi to i64
  %i.eb = extractelement <2 x i32> %i.bl, i64 0
  %i.ec = sext i32 %i.eb to i64
  %i.ed = extractelement <2 x i32> %i.bl, i64 1
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul nsw i64 %i.ee, %i.ec
  %i.eg = mul i64 %i.ef, %i.dz
  %i.eh = mul i64 %i.eg, %i.ea                    ; 5 uses
  %i.ei = icmp ugt i64 %i.eh, 288230376151711743
  br i1 %i.ei, label %.noexc56, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48

.noexc56:                                         ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48: ; preds = %bb.n
  %.not.i.i.i.i49 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i.i.i49, label %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55, label %.noexc57

_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55: ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit82

.noexc57:                                         ; preds = %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i48
  %i.ej = shl nuw nsw i64 %i.eh, 5
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #16 ; 5 uses
  store ptr %i.ek, ptr %5, align 8, !tbaa !49
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.el, ptr %i.em, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ek, i8 0, i64 32, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.eo = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.loopexit82, label %bb.o

bb.o:                                             ; preds = %.noexc57
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.eo, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i.i.i.i.i.i.i50 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i.i.i51:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i51, %bb.o
  %.06.i.i.i.i.i.i.i.i.i52 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i51 ], [ %i.en, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.06.i.i.i.i.i.i.i.i.i52, ptr noundef nonnull align 4 dereferenceable(32) %i.ek, i64 32, i1 false), !tbaa.struct !53
  %i.er = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i52, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %.loopexit82, label %.lr.ph.i.i.i.i.i.i.i.i.i51, !llvm.loop !54

.loopexit82:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i51, %.noexc57, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55
  %.0.i.i.i.i.i54 = phi ptr [ null, %_ZNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EEC2EmRKS3_.exit.thread.i55 ], [ %i.en, %.noexc57 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i51 ]
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i54, ptr %i.es, align 8, !tbaa !56
  %i.et = load i32, ptr %i.y, align 4, !tbaa !37
  %i.eu = load i32, ptr %i.w, align 8, !tbaa !22
  call void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %i.p, i32 noundef %i.n, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef %i.dw, i32 noundef %.pre-phi, float noundef nofpclass(nan inf) %i.bj, float noundef nofpclass(nan inf) %i.bi, float noundef nofpclass(nan inf) %i.bp, float noundef nofpclass(nan inf) %i.bo, i32 noundef %i.dw, i32 noundef %.pre-phi, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !57
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ew)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.l, ptr nonnull %i.v, ptr nonnull %0, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %5, ptr nonnull %i.j)
  %i.ex = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60, label %bb.p

bb.p:                                             ; preds = %.loopexit82
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #14
  br label %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60

_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60: ; preds = %.loopexit82, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit60, %_ZNSt6vectorIN4ncnn7PreCalcIfEESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.a, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.q
  %.035 = phi i32 [ 0, %bb.q ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.035
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn19ROIAlign_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn8ROIAlignC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn19ROIAlign_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !58
  ret void
}

declare void @_ZN4ncnn8ROIAlignC2Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef nofpclass(nan inf) %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge152.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = sitofp fast i32 %0 to float              ; 2 uses
  %i.d = sitofp fast i32 %1 to float              ; 2 uses
  %i.e = icmp sgt i32 %8, 0
  %i.f = uitofp nneg i32 %8 to float              ; 2 uses
  %i.g = add nsw i32 %1, -1                       ; 3 uses
  %i.h = add nsw i32 %0, -1
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge152.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.i = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <16 x float> poison, float %7, i64 0
  %broadcast.splat172 = shufflevector <16 x float> %broadcast.splatinsert171, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <16 x i32> poison, i32 %1, i64 0
  %broadcast.splat178 = shufflevector <16 x i32> %broadcast.splatinsert177, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <16 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat180 = shufflevector <16 x i32> %broadcast.splatinsert179, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat192 = shufflevector <4 x float> %broadcast.splatinsert191, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0151 = phi i32 [ %.2.lcssa, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.077150 = phi i32 [ %i.n, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.k = uitofp nneg i32 %.077150 to float
  %i.l = fmul fast float %6, %i.k
  %i.m = fadd fast float %i.l, %4
  %.sroa.speculated127 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.m, float 0.000000e+00)
  %.sroa.speculated123 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated127, float %i.c) ; 2 uses
  %i.n = add nuw nsw i32 %.077150, 1              ; 3 uses
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fmul fast float %6, %i.o
  %i.q = fadd fast float %i.p, %4
  %.sroa.speculated111 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.q, float 0.000000e+00)
  %.sroa.speculated107 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated111, float %i.c)
  %i.r = fsub fast float %.sroa.speculated107, %.sroa.speculated123
  %i.s = tail call fast nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.r)
  br label %bb.b

._crit_edge152.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

.loopexit.loopexit:                               ; preds = %._crit_edge.us
  %i.t = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %.2.lcssa = phi i32 [ %.1149, %bb.d ], [ %i.t, %.loopexit.loopexit ] ; 2 uses
  %exitcond156.not = icmp eq i32 %i.x, %3
  br i1 %exitcond156.not, label %._crit_edge, label %bb.b, !llvm.loop !60

._crit_edge:                                      ; preds = %.loopexit
  %exitcond157.not = icmp eq i32 %i.n, %2
  br i1 %exitcond157.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !61

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.1149 = phi i32 [ %.0151, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %.078148 = phi i32 [ 0, %.preheader ], [ %i.x, %.loopexit ] ; 2 uses
  %i.u = uitofp nneg i32 %.078148 to float
  %i.v = fmul fast float %7, %i.u
  %i.w = fadd fast float %i.v, %5
  %i.x = add nuw nsw i32 %.078148, 1              ; 3 uses
  %.sroa.speculated119 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.w, float 0.000000e+00)
  %.sroa.speculated115 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated119, float %i.d) ; 4 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = fmul fast float %7, %i.y
  %i.aa = fadd fast float %i.z, %5
  %.sroa.speculated103 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aa, float 0.000000e+00)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated103, float %i.d)
  %i.ab = fsub fast float %.sroa.speculated, %.sroa.speculated115
  %i.ac = tail call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float nofpclass(nan inf) %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in = phi float [ %i.s, %bb.c ], [ %i.f, %bb.b ]
  %i.ad = phi fast float [ %i.ac, %bb.c ], [ %i.f, %bb.b ]
  %i.ae = fptosi float %.in to i32                ; 3 uses
  %i.af = fptosi float %i.ad to i32               ; 6 uses
  %i.ag = icmp sgt i32 %i.ae, 0
  %i.ah = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %.lr.ph144.split.us, label %.loopexit

.lr.ph144.split.us:                               ; preds = %bb.d
  %i.ai = uitofp nneg i32 %i.af to float          ; 3 uses
  %i.aj = uitofp nneg i32 %i.ae to float
  %i.ak = load ptr, ptr %9, align 8, !tbaa !49    ; 3 uses
  %i.al = sext i32 %.1149 to i64
  %i.am = zext nneg i32 %i.af to i64              ; 5 uses
  %i.an = fdiv fast float 1.000000e+00, %i.aj
  %min.iters.check = icmp ult i32 %i.af, 4
  %min.iters.check164 = icmp ult i32 %i.af, 16
  %i.ao = and i64 %i.am, 12
  %n.vec = and i64 %i.am, 2147483632              ; 5 uses
  %i.ap = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %broadcast.splatinsert173 = insertelement <16 x float> poison, float %i.ai, i64 0
  %broadcast.splat174 = shufflevector <16 x float> %broadcast.splatinsert173, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert175 = insertelement <16 x float> poison, float %.sroa.speculated115, i64 0
  %broadcast.splat176 = shufflevector <16 x float> %broadcast.splatinsert175, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aq = fdiv fast <16 x float> splat (float 1.000000e+00), %broadcast.splat174
  %cmp.n = icmp eq i64 %n.vec, %i.am
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  %n.vec182 = and i64 %i.am, 2147483644           ; 4 uses
  %i.ar = trunc nuw nsw i64 %n.vec182 to i32
  %broadcast.splatinsert193 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat194 = shufflevector <4 x float> %broadcast.splatinsert193, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %.sroa.speculated115, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat194
  %cmp.n208 = icmp eq i64 %n.vec182, %i.am
  %i.at = fdiv fast float 1.000000e+00, %i.ai
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us, %.lr.ph144.split.us
  %.2142.us = phi i64 [ %i.al, %.lr.ph144.split.us ], [ %indvars.iv.next.lcssa, %._crit_edge.us ] ; 5 uses
  %.079141.us = phi i32 [ 0, %.lr.ph144.split.us ], [ %i.er, %._crit_edge.us ] ; 2 uses
  %i.au = uitofp nneg i32 %.079141.us to float
  %i.av = fadd fast float %i.au, 5.000000e-01
  %i.aw = fmul fast float %6, %i.av
  %i.ax = fmul fast float %i.aw, %i.an
  %i.ay = fadd fast float %i.ax, %.sroa.speculated123 ; 3 uses
  %i.az = fptosi float %i.ay to i32               ; 3 uses
  %i.ba = add nsw i32 %i.az, 1                    ; 3 uses
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = sitofp fast i32 %i.az to float
  %i.bd = fsub fast float %i.ay, %i.bc
  %i.be = fsub fast float %i.bb, %i.ay
  %.not95.us = icmp slt i32 %i.ba, %0             ; 2 uses
  %.084.us = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.h)
  %.081.us = select nsz i1 %.not95.us, float %i.be, float 1.000000e+00 ; 3 uses
  %.080.us = select nsz i1 %.not95.us, float %i.bd, float 0.000000e+00 ; 3 uses
  %i.bf = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bg = insertelement <2 x i32> %i.bf, i32 %.084.us, i64 1
  %i.bh = mul nsw <2 x i32> %i.j, %i.bg           ; 5 uses
  %i.bi = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check164, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = add i64 %.2142.us, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.081.us, i64 0
  %broadcast.splatinsert165 = insertelement <16 x float> poison, float %.080.us, i64 0
  %broadcast.splat168 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat170 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.bk = getelementptr [32 x i8], ptr %i.ak, i64 %.2142.us
  %i.bl = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <32 x i32> zeroinitializer
  %i.bm = shufflevector <16 x float> %broadcast.splatinsert165, <16 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bn = uitofp nneg <16 x i32> %vec.ind to <16 x float>
  %i.bo = fadd fast <16 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = fmul fast <16 x float> %broadcast.splat172, %i.bo
  %i.bq = fmul fast <16 x float> %i.bp, %i.aq
  %i.br = fadd fast <16 x float> %i.bq, %broadcast.splat176 ; 3 uses
  %i.bs = fptosi <16 x float> %i.br to <16 x i32> ; 4 uses
  %i.bt = add nsw <16 x i32> %i.bs, splat (i32 1) ; 3 uses
  %i.bu = sitofp fast <16 x i32> %i.bt to <16 x float>
  %i.bv = fsub fast <16 x float> %i.bu, %i.br
  %i.bw = sitofp fast <16 x i32> %i.bs to <16 x float>
  %i.bx = fsub fast <16 x float> %i.br, %i.bw
  %i.by = icmp slt <16 x i32> %i.bt, %broadcast.splat178 ; 2 uses
  %i.bz = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.bt, <16 x i32> %broadcast.splat180) ; 2 uses
  %i.ca = select nsz <16 x i1> %i.by, <16 x float> %i.bv, <16 x float> splat (float 1.000000e+00) ; 2 uses
  %i.cb = select nsz <16 x i1> %i.by, <16 x float> %i.bx, <16 x float> zeroinitializer ; 2 uses
  %i.cc = add nsw <16 x i32> %broadcast.splat168, %i.bs
  %i.cd = add nsw <16 x i32> %i.bz, %broadcast.splat168
  %i.ce = add nsw <16 x i32> %broadcast.splat170, %i.bs
  %i.cf = add nsw <16 x i32> %i.bz, %broadcast.splat170
  %i.cg = getelementptr [32 x i8], ptr %i.bk, i64 %index
  %.uncasted = shufflevector <16 x i32> %i.cc, <16 x i32> %i.cd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %.uncasted211 = shufflevector <16 x i32> %i.ce, <16 x i32> %i.cf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ch = shufflevector <16 x float> %i.ca, <16 x float> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ci = fmul fast <32 x float> %i.ch, %i.bl
  %i.cj = shufflevector <16 x float> %i.ca, <16 x float> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ck = fmul fast <32 x float> %i.cj, %i.bm
  %.uncasted212 = shufflevector <32 x i32> %.uncasted, <32 x i32> %.uncasted211, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cl = bitcast <64 x i32> %.uncasted212 to <64 x float>
  %i.cm = shufflevector <32 x float> %i.ci, <32 x float> %i.ck, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec = shufflevector <64 x float> %i.cl, <64 x float> %i.cm, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec, ptr %i.cg, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val181 = phi i32 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.co = add i64 %.2142.us, %n.vec182            ; 2 uses
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %.081.us, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %.080.us, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat188 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat190 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %bc.resume.val181, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat202, <i32 0, i32 1, i32 2, i32 3>
  %i.cp = getelementptr [32 x i8], ptr %i.ak, i64 %.2142.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index203 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next206, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind204 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next207, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = uitofp nneg <4 x i32> %vec.ind204 to <4 x float>
  %i.cr = fadd fast <4 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fmul fast <4 x float> %broadcast.splat192, %i.cr
  %i.ct = fmul fast <4 x float> %i.cs, %i.as
  %i.cu = fadd fast <4 x float> %i.ct, %broadcast.splat196 ; 3 uses
  %i.cv = fptosi <4 x float> %i.cu to <4 x i32>   ; 4 uses
  %i.cw = add nsw <4 x i32> %i.cv, splat (i32 1)  ; 3 uses
  %i.cx = sitofp fast <4 x i32> %i.cw to <4 x float>
  %i.cy = fsub fast <4 x float> %i.cx, %i.cu
  %i.cz = sitofp fast <4 x i32> %i.cv to <4 x float>
  %i.da = fsub fast <4 x float> %i.cu, %i.cz
  %i.db = icmp slt <4 x i32> %i.cw, %broadcast.splat198 ; 2 uses
  %i.dc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cw, <4 x i32> %broadcast.splat200) ; 2 uses
  %i.dd = select nsz <4 x i1> %i.db, <4 x float> %i.cy, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.de = select nsz <4 x i1> %i.db, <4 x float> %i.da, <4 x float> zeroinitializer ; 2 uses
  %i.df = add nsw <4 x i32> %broadcast.splat188, %i.cv
  %i.dg = add nsw <4 x i32> %i.dc, %broadcast.splat188
  %i.dh = add nsw <4 x i32> %broadcast.splat190, %i.cv
  %i.di = add nsw <4 x i32> %i.dc, %broadcast.splat190
  %i.dj = fmul fast <4 x float> %i.dd, %broadcast.splat184
  %i.dk = fmul fast <4 x float> %i.de, %broadcast.splat184
  %i.dl = fmul fast <4 x float> %i.dd, %broadcast.splat186
  %i.dm = fmul fast <4 x float> %i.de, %broadcast.splat186
  %i.dn = getelementptr [32 x i8], ptr %i.cp, i64 %index203
  %.uncasted213 = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted214 = shufflevector <4 x i32> %i.dh, <4 x i32> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted215 = shufflevector <8 x i32> %.uncasted213, <8 x i32> %.uncasted214, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dq = bitcast <16 x i32> %.uncasted215 to <16 x float>
  %i.dr = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec205 = shufflevector <16 x float> %i.dq, <16 x float> %i.dr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec205, ptr %i.dn, align 4, !tbaa !62
  %index.next206 = add nuw i64 %index203, 4       ; 2 uses
  %vec.ind.next207 = add nuw nsw <4 x i32> %vec.ind204, splat (i32 4)
  %i.ds = icmp eq i64 %index.next206, %n.vec182
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n208, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

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
  %i.dw = uitofp nneg i32 %.086139.us to float
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
  store <4 x i32> %i.ej, ptr %i.ef, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = fsub fast float %i.ea, %i.ee
  %i.el = fsub fast float %i.ed, %i.ea
  %.082.us = select nsz i1 %.not.us, float %i.ek, float 0.000000e+00
  %.083.us = select nsz i1 %.not.us, float %i.el, float 1.000000e+00
  %i.em = insertelement <4 x float> poison, float %.083.us, i64 0
  %i.en = insertelement <4 x float> %i.em, float %.082.us, i64 1
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ep = fmul fast <4 x float> %i.eo, %i.dv
  store <4 x float> %i.ep, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !42
  %i.eq = add nuw nsw i32 %.086139.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !68

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 2 uses
  %i.er = add nuw nsw i32 %.079141.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.er, %i.ae
  br i1 %exitcond155.not, label %.loopexit.loopexit, label %iter.check, !llvm.loop !69
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %12) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not166 = icmp sgt i32 %i.k, %i.j
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !70
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !70
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !70
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !73
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !73
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !73
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !18
  %i.ae = load i32, ptr %11, align 4, !tbaa !18
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>   ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !48  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = uitofp nneg i32 %i.ai to float
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.an = insertelement <2 x i1> poison, i1 %i.aj, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge165
  %indvars.iv181 = phi i64 [ %i.al, %.noexc.lr.ph.split.split ], [ %indvars.iv.next182, %._crit_edge165 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 13 uses
  %.reass170 = mul i64 %factor.op.mul169, %indvars.iv181
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass170
  br label %.preheader147

.preheader147:                                    ; preds = %.noexc, %._crit_edge
  %.064164 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %.065163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.067162 = phi ptr [ %i.as, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.at = uitofp nneg i32 %.064164 to float
  %i.au = add nuw nsw i32 %.064164, 1             ; 3 uses
  %i.av = uitofp nneg i32 %i.au to float
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %i.ac
  %exitcond180.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond180.not, label %._crit_edge165, label %.preheader147, !llvm.loop !76

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.166159 = phi i32 [ %.065163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ax = load float, ptr %6, align 4, !tbaa !42
  %i.ay = load float, ptr %7, align 4, !tbaa !42  ; 2 uses
  %i.az = load float, ptr %8, align 4, !tbaa !42
  %i.ba = trunc nuw nsw i64 %indvars.iv176 to i32
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = load float, ptr %9, align 4, !tbaa !42  ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next177 to i32
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = fmul fast float %i.ay, %i.at
  %i.bg = fmul fast float %i.bc, %i.bb
  %i.bh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bf, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.ax, i64 1 ; 2 uses
  %i.bl = fadd fast <2 x float> %i.bi, %i.bk
  %i.bm = fmul fast float %i.ay, %i.av
  %i.bn = fmul fast float %i.bc, %i.be
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bm, i64 1
  %i.bq = fadd fast <2 x float> %i.bp, %i.bk
  %i.br = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bl, <2 x float> zeroinitializer)
  %i.bs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.br, <2 x float> %i.ah) ; 3 uses
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  %i.bv = fsub fast <2 x float> %i.bu, %i.bs
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  %i.bx = select <2 x i1> %i.ao, <2 x float> %i.aq, <2 x float> %i.bw
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 3 uses
  %i.bz = fcmp ole <2 x float> %i.bu, %i.bs
  %i.ca = extractelement <2 x i1> %i.bz, i64 1
  %i.cb = fcmp ole <2 x float> %i.bu, %i.bs
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = select i1 %i.ca, i1 true, i1 %i.cc
  %i.ce = extractelement <2 x i32> %i.by, i64 0   ; 5 uses
  %i.cf = extractelement <2 x i32> %i.by, i64 1   ; 2 uses
  %i.cg = mul i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %i.ci = extractelement <2 x i1> %i.ch, i64 0
  %i.cj = extractelement <2 x i1> %i.ch, i64 1
  %or.cond = select i1 %i.cj, i1 %i.ci, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.ck = load ptr, ptr %12, align 8, !tbaa !49   ; 4 uses
  %i.cl = zext nneg i32 %i.ce to i64              ; 6 uses
  %i.cm = sext i32 %.166159 to i64
  %min.iters.check = icmp ult i32 %i.ce, 4
  %min.iters.check193 = icmp ult i32 %i.ce, 16
  %i.cn = and i64 %i.cl, 12
  %n.vec = and i64 %i.cl, 2147483632              ; 5 uses
  %i.co = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.cl
  %min.epilog.iters.check = icmp eq i64 %i.cn, 0
  %n.vec226 = and i64 %i.cl, 2147483644           ; 4 uses
  %i.cp = trunc nuw nsw i64 %n.vec226 to i32
  %cmp.n247 = icmp eq i64 %n.vec226, %i.cl
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.fw, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  %.2152.us = phi i64 [ %i.cm, %.preheader.lr.ph.split.us ], [ %i.fv, %._crit_edge.us ] ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cq = add i64 %.2152.us, %n.vec
  %i.cr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.062153.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.cr, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi194 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %i.cs = add i64 %.2152.us, %index               ; 2 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cs
  %i.cu = getelementptr [32 x i8], ptr %i.ck, i64 %i.cs
  %i.cv = getelementptr i8, ptr %i.cu, i64 256
  %wide.vec = load <64 x float>, ptr %i.ct, align 4, !tbaa !62 ; 8 uses
  %i.cw = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.cx = shufflevector <64 x i32> %i.cw, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cy = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.cz = shufflevector <64 x i32> %i.cy, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.da = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.db = shufflevector <64 x i32> %i.da, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.dc = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.dd = shufflevector <64 x i32> %i.dc, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec198 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec199 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec200 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec201 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %wide.vec202 = load <64 x float>, ptr %i.cv, align 4, !tbaa !62 ; 8 uses
  %i.de = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.df = shufflevector <64 x i32> %i.de, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.dg = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dh = shufflevector <64 x i32> %i.dg, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.di = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dj = shufflevector <64 x i32> %i.di, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.dk = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dl = shufflevector <64 x i32> %i.dk, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec207 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec208 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec209 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec210 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.dm = sext <8 x i32> %i.cx to <8 x i64>
  %i.dn = sext <8 x i32> %i.df to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dm
  %wide.gep211 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dn
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep211, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.do = fmul fast <8 x float> %wide.masked.gather, %strided.vec198
  %i.dp = fmul fast <8 x float> %wide.masked.gather212, %strided.vec207
  %i.dq = sext <8 x i32> %i.cz to <8 x i64>
  %i.dr = sext <8 x i32> %i.dh to <8 x i64>
  %wide.gep213 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dq
  %wide.gep214 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dr
  %wide.masked.gather215 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep213, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather216 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep214, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.ds = fmul fast <8 x float> %wide.masked.gather215, %strided.vec199
  %i.dt = fmul fast <8 x float> %wide.masked.gather216, %strided.vec208
  %i.du = fadd fast <8 x float> %i.do, %i.ds
  %i.dv = fadd fast <8 x float> %i.dp, %i.dt
  %i.dw = sext <8 x i32> %i.db to <8 x i64>
  %i.dx = sext <8 x i32> %i.dj to <8 x i64>
  %wide.gep217 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dw
  %wide.gep218 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dx
  %wide.masked.gather219 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather220 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.dy = fmul fast <8 x float> %wide.masked.gather219, %strided.vec200
  %i.dz = fmul fast <8 x float> %wide.masked.gather220, %strided.vec209
  %i.ea = fadd fast <8 x float> %i.du, %i.dy
  %i.eb = fadd fast <8 x float> %i.dv, %i.dz
  %i.ec = sext <8 x i32> %i.dd to <8 x i64>
  %i.ed = sext <8 x i32> %i.dl to <8 x i64>
  %wide.gep221 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.ec
  %wide.gep222 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.ed
  %wide.masked.gather223 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep221, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather224 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.ee = fmul fast <8 x float> %wide.masked.gather223, %strided.vec201
  %i.ef = fmul fast <8 x float> %wide.masked.gather224, %strided.vec210
  %i.eg = fadd fast <8 x float> %i.ea, %i.ee
  %i.eh = fadd fast <8 x float> %i.eb, %i.ef
  %i.ei = fadd fast <8 x float> %i.eg, %vec.phi   ; 2 uses
  %i.ej = fadd fast <8 x float> %i.eh, %vec.phi194 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.ej, %i.ei
  %i.el = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.el, %vec.epilog.iter.check ], [ %.062153.us, %vector.main.loop.iter.check ]
  %i.em = add i64 %.2152.us, %n.vec226
  %i.en = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.eo = getelementptr [32 x i8], ptr %i.ck, i64 %.2152.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next246, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi228 = phi <4 x float> [ %i.en, %vec.epilog.ph ], [ %i.fj, %vec.epilog.vector.body ]
  %i.ep = getelementptr [32 x i8], ptr %i.eo, i64 %index227
  %wide.vec229 = load <32 x float>, ptr %i.ep, align 4, !tbaa !62 ; 8 uses
  %i.eq = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.er = shufflevector <32 x i32> %i.eq, <32 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.es = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.et = shufflevector <32 x i32> %i.es, <32 x i32> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %i.eu = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.ev = shufflevector <32 x i32> %i.eu, <32 x i32> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.ew = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.ex = shufflevector <32 x i32> %i.ew, <32 x i32> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec234 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec235 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec236 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec237 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.ey = sext <4 x i32> %i.er to <4 x i64>
  %wide.gep238 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.ey
  %wide.masked.gather239 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep238, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ez = fmul fast <4 x float> %wide.masked.gather239, %strided.vec234
  %i.fa = sext <4 x i32> %i.et to <4 x i64>
  %wide.gep240 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.fa
  %wide.masked.gather241 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep240, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.fb = fmul fast <4 x float> %wide.masked.gather241, %strided.vec235
  %i.fc = fadd fast <4 x float> %i.ez, %i.fb
  %i.fd = sext <4 x i32> %i.ev to <4 x i64>
  %wide.gep242 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.fd
  %wide.masked.gather243 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep242, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.fe = fmul fast <4 x float> %wide.masked.gather243, %strided.vec236
  %i.ff = fadd fast <4 x float> %i.fc, %i.fe
  %i.fg = sext <4 x i32> %i.ex to <4 x i64>
  %wide.gep244 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.fg
  %wide.masked.gather245 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep244, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.fh = fmul fast <4 x float> %wide.masked.gather245, %strided.vec237
  %i.fi = fadd fast <4 x float> %i.ff, %i.fh
  %i.fj = fadd fast <4 x float> %i.fi, %vec.phi228 ; 2 uses
  %index.next246 = add nuw i64 %index227, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next246, %n.vec226
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fj) ; 2 uses
  br i1 %cmp.n247, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.2152.us, %iter.check ], [ %i.cq, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  %.060150.us.ph = phi i32 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  %.1149.us.ph = phi float [ %.062153.us, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.060150.us = phi i32 [ %i.fu, %vec.epilog.scalar.ph ], [ %.060150.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1149.us = phi float [ %op.rdx, %vec.epilog.scalar.ph ], [ %.1149.us.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load <4 x float>, ptr %i.fn, align 4, !tbaa !42
  %i.fp = load <4 x i32>, ptr %i.fm, align 4, !tbaa !18
  %i.fq = sext <4 x i32> %i.fp to <4 x i64>
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.fq
  %i.fs = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.fr, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ft = fmul fast <4 x float> %i.fs, %i.fo
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.1149.us, <4 x float> %i.ft) ; 2 uses
  %i.fu = add nuw nsw i32 %.060150.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.fu, %i.ce
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !79

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi float [ %i.fl, %vec.epilog.middle.block ], [ %i.el, %middle.block ], [ %op.rdx, %vec.epilog.scalar.ph ] ; 2 uses
  %i.fv = add nsw i64 %.2152.us, %i.cl
  %i.fw = add nuw nsw i32 %.061154.us, 1          ; 2 uses
  %exitcond175.not = icmp eq i32 %i.fw, %i.cf
  br i1 %exitcond175.not, label %._crit_edge155.loopexit, label %iter.check, !llvm.loop !80

._crit_edge155.loopexit:                          ; preds = %._crit_edge.us
  %i.fx = add i32 %.166159, %i.cg
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.166159, %bb.c ], [ %i.fx, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa, %._crit_edge155.loopexit ]
  %i.fy = sitofp fast i32 %i.cg to float
  %i.fz = fdiv fast float %.062.lcssa, %i.fy
  %i.ga = select fast i1 %i.cd, float 0.000000e+00, float %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %indvars.iv176
  store float %i.ga, ptr %i.gb, align 4, !tbaa !42
  %exitcond179.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge168.split:                             ; preds = %._crit_edge165, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge168.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !82 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader110.lr.ph, label %._crit_edge142.split

.preheader110.lr.ph:                              ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp slt i32 %5, 1
  %i.d = sitofp fast i32 %0 to float
  %i.e = sitofp fast i32 %1 to float
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %i.g = sitofp fast i32 %i.f to float
  %i.h = add nsw i32 %1, -1                       ; 4 uses
  %i.i = sitofp fast i32 %i.h to float
  %i.j = icmp slt i32 %4, 1
  %or.cond.not170 = or i1 %i.b, %i.j
  %brmerge = or i1 %or.cond.not170, %i.c
  br i1 %brmerge, label %._crit_edge142.split, label %.preheader110.us.us.preheader

.preheader110.us.us.preheader:                    ; preds = %.preheader110.lr.ph
  %i.k = sitofp fast i32 %11 to float
  %i.l = sitofp fast i32 %10 to float
  %i.m = zext nneg i32 %5 to i64
  %i.n = shl nuw nsw i64 %i.m, 5
  %i.o = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.p = fdiv fast float 1.000000e+00, %i.l
  %i.q = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.r = fdiv fast float 1.000000e+00, %i.k
  br label %.preheader110.us.us

.preheader110.us.us:                              ; preds = %.preheader110.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %.0141.us.us = phi i32 [ %.us-phi.us.us.us.us.us, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader110.us.us.preheader ]
  %.087140.us.us = phi i32 [ %i.by, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader110.us.us.preheader ] ; 2 uses
  %i.s = uitofp nneg i32 %.087140.us.us to float
  %i.t = fmul fast float %8, %i.s
  %i.u = fadd fast float %6, %i.t
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge116.split.us.us.us.us.us, %.preheader110.us.us
  %.1134.us.us.us.us = phi i32 [ %.0141.us.us, %.preheader110.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge116.split.us.us.us.us.us ]
  %.088133.us.us.us.us = phi i32 [ 0, %.preheader110.us.us ], [ %i.bx, %._crit_edge116.split.us.us.us.us.us ] ; 2 uses
  %i.v = uitofp nneg i32 %.088133.us.us.us.us to float
  %i.w = fmul fast float %9, %i.v
  %i.x = fadd fast float %7, %i.w
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %.2114.us.us.us.us.us = phi i32 [ %.1134.us.us.us.us, %.preheader.us.us.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge.us.us.us.us.us ] ; 3 uses
  %.089113.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.bs, %._crit_edge.us.us.us.us.us ] ; 2 uses
  %i.y = uitofp nneg i32 %.089113.us.us.us.us.us to float
  %i.z = fadd fast float %i.y, 5.000000e-01
  %i.aa = fmul fast float %8, %i.z
  %i.ab = fmul fast float %i.aa, %i.p
  %i.ac = fadd fast float %i.ab, %i.u             ; 3 uses
  %i.ad = fcmp fast olt float %i.ac, -1.000000e+00
  %i.ae = fcmp fast ogt float %i.ac, %i.d
  %or.cond.us.us.us.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %.093.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00) ; 2 uses
  %i.af = fptosi float %.093.us.us.us.us.us to i32 ; 3 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.f, %i.af ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  %.097.us.us.us.us.us = select i1 %.not.us.us.us.us.us, i32 %i.ag, i32 %i.f
  %.095.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %.095.us.us.us.us.us, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.097.us.us.us.us.us, i64 1
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = mul nsw <4 x i32> %i.aj, %i.q
  %or.cond.fr.us.us.us.us.us = freeze i1 %or.cond.us.us.us.us.us
  br i1 %or.cond.fr.us.us.us.us.us, label %.lr.ph.split.us.us.us.us.us.us, label %.lr.ph.split.us130.us.us.us.us.preheader

.lr.ph.split.us130.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.us
  %.194.us.us.us.us.us = select nsz i1 %.not.us.us.us.us.us, float %.093.us.us.us.us.us, float %i.g
  %i.al = sitofp fast i32 %.095.us.us.us.us.us to float
  %i.am = fsub fast float %.194.us.us.us.us.us, %i.al ; 2 uses
  %i.an = fsub fast float 1.000000e+00, %i.am
  %i.ao = sext i32 %.2114.us.us.us.us.us to i64
  %i.ap = insertelement <4 x float> poison, float %i.an, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %.lr.ph.split.us130.us.us.us.us

.lr.ph.split.us130.us.us.us.us:                   ; preds = %.lr.ph.split.us130.us.us.us.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.split.us130.us.us.us.us.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.090111.us119.us.us.us.us = phi i32 [ 0, %.lr.ph.split.us130.us.us.us.us.preheader ], [ %i.bq, %bb.d ] ; 2 uses
  %i.as = uitofp nneg i32 %.090111.us119.us.us.us.us to float
  %i.at = fadd fast float %i.as, 5.000000e-01
  %i.au = fmul fast float %9, %i.at
  %i.av = fmul fast float %i.au, %i.r
  %i.aw = fadd fast float %i.av, %i.x             ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, -1.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, %i.e
  %or.cond109.us.us.us.us.us = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond109.us.us.us.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us130.us.us.us.us
  %.091.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aw, float 0.000000e+00) ; 2 uses
  %i.az = fptosi float %.091.us.us.us.us.us to i32 ; 3 uses
  %.not105.us.us.us.us.us = icmp sgt i32 %i.h, %i.az ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  %.098.us.us.us.us.us = select i1 %.not105.us.us.us.us.us, i32 %i.ba, i32 %i.h
  %.096.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.az) ; 2 uses
  %.192.us.us.us.us.us = select nsz i1 %.not105.us.us.us.us.us, float %.091.us.us.us.us.us, float %i.i
  %i.bb = sitofp fast i32 %.096.us.us.us.us.us to float
  %i.bc = fsub fast float %.192.us.us.us.us.us, %i.bb ; 2 uses
  %i.bd = fsub fast float 1.000000e+00, %i.bc
  %i.be = load ptr, ptr %12, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = insertelement <4 x i32> poison, i32 %.096.us.us.us.us.us, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %.098.us.us.us.us.us, i64 1
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = add nsw <4 x i32> %i.bi, %i.ak
  store <4 x i32> %i.bj, ptr %i.bf, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bc, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = fmul fast <4 x float> %i.bm, %i.ar
  store <4 x float> %i.bn, ptr %.sroa.7.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us130.us.us.us.us
  %i.bo = load ptr, ptr %12, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = add nuw nsw i32 %.090111.us119.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %5
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.loopexit149, label %.lr.ph.split.us130.us.us.us.us, !llvm.loop !84

._crit_edge.us.us.us.us.us.loopexit149:           ; preds = %bb.d
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.loopexit149, %.lr.ph.split.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us = phi i32 [ %i.bw, %.lr.ph.split.us.us.us.us.us.us ], [ %i.br, %._crit_edge.us.us.us.us.us.loopexit149 ] ; 3 uses
  %i.bs = add nuw nsw i32 %.089113.us.us.us.us.us, 1 ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bs, %4
  br i1 %exitcond157.not, label %._crit_edge116.split.us.us.us.us.us, label %.lr.ph.us.us.us.us.us, !llvm.loop !85

.lr.ph.split.us.us.us.us.us.us:                   ; preds = %.lr.ph.us.us.us.us.us
  %i.bt = load ptr, ptr %12, align 8, !tbaa !49
  %i.bu = sext i32 %.2114.us.us.us.us.us to i64
  %i.bv = shl nsw i64 %i.bu, 5
  %scevgep = getelementptr nuw i8, ptr %i.bt, i64 %i.bv
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !62
  %i.bw = add i32 %5, %.2114.us.us.us.us.us
  br label %._crit_edge.us.us.us.us.us

._crit_edge116.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.088133.us.us.us.us, 1 ; 2 uses
  %exitcond158.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond158.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !86

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge116.split.us.us.us.us.us
  %i.by = add nuw nsw i32 %.087140.us.us, 1       ; 2 uses
  %exitcond159.not = icmp eq i32 %i.by, %2
  br i1 %exitcond159.not, label %._crit_edge142.split, label %.preheader110.us.us, !llvm.loop !87

._crit_edge142.split:                             ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader110.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 9 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 8 uses
  %.not124 = icmp sgt i32 %i.k, %i.j
  br i1 %.not124, label %._crit_edge.split128, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !88
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !88
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !91 ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !91
  %factor.op.mul126 = mul i64 %i.s, %i.u          ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge.split128

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22   ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge.split128

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !18    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = zext nneg i32 %i.w to i64
  %i.ag = mul nuw nsw i64 %i.ae, %i.af
  %i.ah = shl nuw i64 %i.ag, 2                    ; 9 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = add nsw i32 %i.j, 1
  %i.ak = add i32 %i.j, 1
  %i.al = sub i32 %i.ak, %i.k
  %i.am = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %i.ai, %.noexc.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader ]
  %.reass127.prol = mul i64 %factor.op.mul126, %indvars.iv.prol
  %i.an = getelementptr i8, ptr %i.q, i64 %.reass127.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !94

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader
  %indvars.iv.unr = phi i64 [ %i.ai, %.noexc.preheader ], [ %indvars.iv.next.prol, %.noexc.prol ]
  %i.ao = icmp ult i32 %i.am, 7
  br i1 %i.ao, label %._crit_edge.split128, label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ap = load i32, ptr %7, align 4, !tbaa !18    ; 6 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.noexc.lr.ph.split.split.split.us.split.us, label %.noexc.us.preheader

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.split.us
  %i.ar = zext nneg i32 %i.z to i64
  %i.as = zext nneg i32 %i.w to i64
  %i.at = mul nuw nsw i64 %i.ar, %i.as
  %i.au = shl nuw i64 %i.at, 2                    ; 9 uses
  %i.av = sext i32 %i.k to i64                    ; 2 uses
  %i.aw = add nsw i32 %i.j, 1
  %i.ax = add i32 %i.j, 1
  %i.ay = sub i32 %i.ax, %i.k
  %i.az = sub i32 %i.j, %i.k
  %xtraiter243 = and i32 %i.ay, 7                 ; 2 uses
  %lcmp.mod244.not = icmp eq i32 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.noexc.us.prol.loopexit, label %.noexc.us.prol

.noexc.us.prol:                                   ; preds = %.noexc.us.preheader, %.noexc.us.prol
  %indvars.iv145.prol = phi i64 [ %indvars.iv.next146.prol, %.noexc.us.prol ], [ %i.av, %.noexc.us.preheader ] ; 2 uses
  %prol.iter245 = phi i32 [ %prol.iter245.next, %.noexc.us.prol ], [ 0, %.noexc.us.preheader ]
  %.reass127.us.prol = mul i64 %factor.op.mul126, %indvars.iv145.prol
  %i.ba = getelementptr i8, ptr %i.q, i64 %.reass127.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.prol = add nsw i64 %indvars.iv145.prol, 1 ; 2 uses
  %prol.iter245.next = add i32 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i32 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.noexc.us.prol.loopexit, label %.noexc.us.prol, !llvm.loop !96

.noexc.us.prol.loopexit:                          ; preds = %.noexc.us.prol, %.noexc.us.preheader
  %indvars.iv145.unr = phi i64 [ %i.av, %.noexc.us.preheader ], [ %indvars.iv.next146.prol, %.noexc.us.prol ]
  %i.bb = icmp ult i32 %i.az, 7
  br i1 %i.bb, label %._crit_edge.split128, label %.noexc.us

.noexc.lr.ph.split.split.split.us.split.us:       ; preds = %.noexc.lr.ph.split.split.split.us
  %i.bc = load ptr, ptr %8, align 8, !tbaa !49    ; 4 uses
  %i.bd = zext nneg i32 %i.ap to i64              ; 6 uses
  %i.be = mul i32 %i.ap, %i.ac
  %i.bf = sext i32 %i.k to i64
  %i.bg = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.z to i64
  %min.iters.check = icmp ult i32 %i.ap, 4
  %min.iters.check179 = icmp ult i32 %i.ap, 16
  %i.bh = and i64 %i.bd, 12
  %n.vec = and i64 %i.bd, 2147483632              ; 5 uses
  %i.bi = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  %n.vec212 = and i64 %i.bd, 2147483644           ; 4 uses
  %i.bj = trunc nuw nsw i64 %n.vec212 to i32
  %cmp.n233 = icmp eq i64 %n.vec212, %i.bd
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %._crit_edge117.split123.us.split.us.us.us, %.noexc.lr.ph.split.split.split.us.split.us
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %._crit_edge117.split123.us.split.us.us.us ], [ %i.bf, %.noexc.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv160
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 13 uses
  %.reass127.us.us = mul i64 %factor.op.mul126, %indvars.iv160
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass127.us.us
  br label %.preheader89.us.us.us.us

.preheader89.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %.052116.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.ez, %._crit_edge.split.us.split.us.us.us.us.us ]
  %.053115.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.eu, %._crit_edge.split.us.split.us.us.us.us.us ]
  %.055112.us.us.us.us = phi ptr [ %i.bl, %.noexc.us.us ], [ %i.ey, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  br label %.preheader88.us.us.us.us.us.us

.preheader88.us.us.us.us.us.us:                   ; preds = %._crit_edge97.split.us.us.us.us.us.us.us, %.preheader89.us.us.us.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge97.split.us.us.us.us.us.us.us ], [ 0, %.preheader89.us.us.us.us ] ; 2 uses
  %.154101.us.us.us.us.us.us = phi i32 [ %i.eu, %._crit_edge97.split.us.us.us.us.us.us.us ], [ %.053115.us.us.us.us, %.preheader89.us.us.us.us ] ; 2 uses
  %i.bm = sext i32 %.154101.us.us.us.us.us.us to i64
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader88.us.us.us.us.us.us
  %.04996.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader88.us.us.us.us.us.us ], [ %i.et, %._crit_edge.us.us.us.us.us.us.us ]
  %.05095.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader88.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us.us ] ; 3 uses
  %.294.us.us.us.us.us.us.us = phi i64 [ %i.bm, %.preheader88.us.us.us.us.us.us ], [ %i.es, %._crit_edge.us.us.us.us.us.us.us ] ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = add i64 %.294.us.us.us.us.us.us.us, %n.vec
  %i.bo = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.05095.us.us.us.us.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.bo, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi180 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.bp = add i64 %.294.us.us.us.us.us.us.us, %index ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bp
  %i.br = getelementptr [32 x i8], ptr %i.bc, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 256
  %wide.vec = load <64 x float>, ptr %i.bq, align 4, !tbaa !62 ; 8 uses
  %i.bt = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bu = shufflevector <64 x i32> %i.bt, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.bv = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bw = shufflevector <64 x i32> %i.bv, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.bx = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.by = shufflevector <64 x i32> %i.bx, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bz = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.ca = shufflevector <64 x i32> %i.bz, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec184 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec185 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec186 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec187 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %wide.vec188 = load <64 x float>, ptr %i.bs, align 4, !tbaa !62 ; 8 uses
  %i.cb = bitcast <64 x float> %wide.vec188 to <64 x i32>
  %i.cc = shufflevector <64 x i32> %i.cb, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cd = bitcast <64 x float> %wide.vec188 to <64 x i32>
  %i.ce = shufflevector <64 x i32> %i.cd, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.cf = bitcast <64 x float> %wide.vec188 to <64 x i32>
  %i.cg = shufflevector <64 x i32> %i.cf, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.ch = bitcast <64 x float> %wide.vec188 to <64 x i32>
  %i.ci = shufflevector <64 x i32> %i.ch, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec193 = shufflevector <64 x float> %wide.vec188, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec194 = shufflevector <64 x float> %wide.vec188, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec195 = shufflevector <64 x float> %wide.vec188, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec196 = shufflevector <64 x float> %wide.vec188, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.cj = sext <8 x i32> %i.bu to <8 x i64>
  %i.ck = sext <8 x i32> %i.cc to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.cj
  %wide.gep197 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.ck
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather198 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep197, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.cl = fmul fast <8 x float> %wide.masked.gather, %strided.vec184
  %i.cm = fmul fast <8 x float> %wide.masked.gather198, %strided.vec193
  %i.cn = sext <8 x i32> %i.bw to <8 x i64>
  %i.co = sext <8 x i32> %i.ce to <8 x i64>
  %wide.gep199 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.cn
  %wide.gep200 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.co
  %wide.masked.gather201 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep199, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather202 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep200, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.cp = fmul fast <8 x float> %wide.masked.gather201, %strided.vec185
  %i.cq = fmul fast <8 x float> %wide.masked.gather202, %strided.vec194
  %i.cr = fadd fast <8 x float> %i.cl, %i.cp
  %i.cs = fadd fast <8 x float> %i.cm, %i.cq
  %i.ct = sext <8 x i32> %i.by to <8 x i64>
  %i.cu = sext <8 x i32> %i.cg to <8 x i64>
  %wide.gep203 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.ct
  %wide.gep204 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.cu
  %wide.masked.gather205 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep203, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather206 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.cv = fmul fast <8 x float> %wide.masked.gather205, %strided.vec186
  %i.cw = fmul fast <8 x float> %wide.masked.gather206, %strided.vec195
  %i.cx = fadd fast <8 x float> %i.cr, %i.cv
  %i.cy = fadd fast <8 x float> %i.cs, %i.cw
  %i.cz = sext <8 x i32> %i.ca to <8 x i64>
  %i.da = sext <8 x i32> %i.ci to <8 x i64>
  %wide.gep207 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.cz
  %wide.gep208 = getelementptr inbounds [4 x i8], ptr %i.bk, <8 x i64> %i.da
  %wide.masked.gather209 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep207, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather210 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep208, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.db = fmul fast <8 x float> %wide.masked.gather209, %strided.vec187
  %i.dc = fmul fast <8 x float> %wide.masked.gather210, %strided.vec196
  %i.dd = fadd fast <8 x float> %i.cx, %i.db
  %i.de = fadd fast <8 x float> %i.cy, %i.dc
  %i.df = fadd fast <8 x float> %i.dd, %vec.phi   ; 2 uses
  %i.dg = fadd fast <8 x float> %i.de, %vec.phi180 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.dg, %i.df
  %i.di = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.di, %vec.epilog.iter.check ], [ %.05095.us.us.us.us.us.us.us, %vector.main.loop.iter.check ]
  %i.dj = add i64 %.294.us.us.us.us.us.us.us, %n.vec212
  %i.dk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.dl = getelementptr [32 x i8], ptr %i.bc, i64 %.294.us.us.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index213 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next232, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi214 = phi <4 x float> [ %i.dk, %vec.epilog.ph ], [ %i.eg, %vec.epilog.vector.body ]
  %i.dm = getelementptr [32 x i8], ptr %i.dl, i64 %index213
  %wide.vec215 = load <32 x float>, ptr %i.dm, align 4, !tbaa !62 ; 8 uses
  %i.dn = bitcast <32 x float> %wide.vec215 to <32 x i32>
  %i.do = shufflevector <32 x i32> %i.dn, <32 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.dp = bitcast <32 x float> %wide.vec215 to <32 x i32>
  %i.dq = shufflevector <32 x i32> %i.dp, <32 x i32> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %i.dr = bitcast <32 x float> %wide.vec215 to <32 x i32>
  %i.ds = shufflevector <32 x i32> %i.dr, <32 x i32> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.dt = bitcast <32 x float> %wide.vec215 to <32 x i32>
  %i.du = shufflevector <32 x i32> %i.dt, <32 x i32> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec220 = shufflevector <32 x float> %wide.vec215, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec221 = shufflevector <32 x float> %wide.vec215, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec222 = shufflevector <32 x float> %wide.vec215, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec223 = shufflevector <32 x float> %wide.vec215, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dv = sext <4 x i32> %i.do to <4 x i64>
  %wide.gep224 = getelementptr inbounds [4 x i8], ptr %i.bk, <4 x i64> %i.dv
  %wide.masked.gather225 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep224, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.dw = fmul fast <4 x float> %wide.masked.gather225, %strided.vec220
  %i.dx = sext <4 x i32> %i.dq to <4 x i64>
  %wide.gep226 = getelementptr inbounds [4 x i8], ptr %i.bk, <4 x i64> %i.dx
  %wide.masked.gather227 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep226, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.dy = fmul fast <4 x float> %wide.masked.gather227, %strided.vec221
  %i.dz = fadd fast <4 x float> %i.dw, %i.dy
  %i.ea = sext <4 x i32> %i.ds to <4 x i64>
  %wide.gep228 = getelementptr inbounds [4 x i8], ptr %i.bk, <4 x i64> %i.ea
  %wide.masked.gather229 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep228, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.eb = fmul fast <4 x float> %wide.masked.gather229, %strided.vec222
  %i.ec = fadd fast <4 x float> %i.dz, %i.eb
  %i.ed = sext <4 x i32> %i.du to <4 x i64>
  %wide.gep230 = getelementptr inbounds [4 x i8], ptr %i.bk, <4 x i64> %i.ed
  %wide.masked.gather231 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep230, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ee = fmul fast <4 x float> %wide.masked.gather231, %strided.vec223
  %i.ef = fadd fast <4 x float> %i.ec, %i.ee
  %i.eg = fadd fast <4 x float> %i.ef, %vec.phi214 ; 2 uses
  %index.next232 = add nuw i64 %index213, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next232, %n.vec212
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ei = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.eg) ; 2 uses
  br i1 %cmp.n233, label %._crit_edge.us.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv150.ph = phi i64 [ %.294.us.us.us.us.us.us.us, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %.04892.us.us.us.us.us.us.us.ph = phi i32 [ 0, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.191.us.us.us.us.us.us.us.ph = phi float [ %.05095.us.us.us.us.us.us.us, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %vec.epilog.scalar.ph ], [ %indvars.iv150.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.04892.us.us.us.us.us.us.us = phi i32 [ %i.er, %vec.epilog.scalar.ph ], [ %.04892.us.us.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.191.us.us.us.us.us.us.us = phi float [ %op.rdx, %vec.epilog.scalar.ph ], [ %.191.us.us.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, 1
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %indvars.iv150 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load <4 x float>, ptr %i.ek, align 4, !tbaa !42
  %i.em = load <4 x i32>, ptr %i.ej, align 4, !tbaa !18
  %i.en = sext <4 x i32> %i.em to <4 x i64>
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.bk, <4 x i64> %i.en
  %i.ep = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.eo, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.eq = fmul fast <4 x float> %i.ep, %i.el
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.191.us.us.us.us.us.us.us, <4 x float> %i.eq) ; 2 uses
  %i.er = add nuw nsw i32 %.04892.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond153.not = icmp eq i32 %i.er, %i.ap
  br i1 %exitcond153.not, label %._crit_edge.us.us.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !99

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi float [ %i.ei, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %op.rdx, %vec.epilog.scalar.ph ] ; 2 uses
  %i.es = add nsw i64 %.294.us.us.us.us.us.us.us, %i.bd
  %i.et = add nuw nsw i32 %.04996.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond154.not = icmp eq i32 %i.et, %i.ac
  br i1 %exitcond154.not, label %._crit_edge97.split.us.us.us.us.us.us.us, label %iter.check, !llvm.loop !100

._crit_edge97.split.us.us.us.us.us.us.us:         ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.eu = add i32 %i.be, %.154101.us.us.us.us.us.us ; 2 uses
  %i.ev = load float, ptr %9, align 4, !tbaa !42
  %i.ew = fdiv fast float %.lcssa, %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.055112.us.us.us.us, i64 %indvars.iv155
  store float %i.ew, ptr %i.ex, align 4, !tbaa !42
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond158.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader88.us.us.us.us.us.us, !llvm.loop !101

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge97.split.us.us.us.us.us.us.us
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.055112.us.us.us.us, i64 %i.ab
  %i.ez = add nuw nsw i32 %.052116.us.us.us.us, 1 ; 2 uses
  %exitcond159.not = icmp eq i32 %i.ez, %i.w
  br i1 %exitcond159.not, label %._crit_edge117.split123.us.split.us.us.us, label %.preheader89.us.us.us.us, !llvm.loop !102

._crit_edge117.split123.us.split.us.us.us:        ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, 1 ; 2 uses
  %lftr.wideiv163 = trunc i64 %indvars.iv.next161 to i32
  %exitcond164.not = icmp eq i32 %i.bg, %lftr.wideiv163
  br i1 %exitcond164.not, label %._crit_edge.split128, label %.noexc.us.us

.noexc.us:                                        ; preds = %.noexc.us.prol.loopexit, %.noexc.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.7, %.noexc.us ], [ %indvars.iv145.unr, %.noexc.us.prol.loopexit ] ; 9 uses
  %.reass127.us = mul i64 %factor.op.mul126, %indvars.iv145
  %i.fa = getelementptr i8, ptr %i.q, i64 %.reass127.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.fa, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1
  %.reass127.us.1 = mul i64 %factor.op.mul126, %indvars.iv.next146
  %i.fb = getelementptr i8, ptr %i.q, i64 %.reass127.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.1 = add nsw i64 %indvars.iv145, 2
  %.reass127.us.2 = mul i64 %factor.op.mul126, %indvars.iv.next146.1
  %i.fc = getelementptr i8, ptr %i.q, i64 %.reass127.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fc, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.2 = add nsw i64 %indvars.iv145, 3
  %.reass127.us.3 = mul i64 %factor.op.mul126, %indvars.iv.next146.2
  %i.fd = getelementptr i8, ptr %i.q, i64 %.reass127.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.3 = add nsw i64 %indvars.iv145, 4
  %.reass127.us.4 = mul i64 %factor.op.mul126, %indvars.iv.next146.3
  %i.fe = getelementptr i8, ptr %i.q, i64 %.reass127.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fe, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.4 = add nsw i64 %indvars.iv145, 5
  %.reass127.us.5 = mul i64 %factor.op.mul126, %indvars.iv.next146.4
  %i.ff = getelementptr i8, ptr %i.q, i64 %.reass127.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.ff, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.5 = add nsw i64 %indvars.iv145, 6
  %.reass127.us.6 = mul i64 %factor.op.mul126, %indvars.iv.next146.5
  %i.fg = getelementptr i8, ptr %i.q, i64 %.reass127.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.fg, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.6 = add nsw i64 %indvars.iv145, 7
  %.reass127.us.7 = mul i64 %factor.op.mul126, %indvars.iv.next146.6
  %i.fh = getelementptr i8, ptr %i.q, i64 %.reass127.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %i.au, i1 false), !tbaa !42
  %indvars.iv.next146.7 = add nsw i64 %indvars.iv145, 8 ; 2 uses
  %lftr.wideiv148.7 = trunc i64 %indvars.iv.next146.7 to i32
  %exitcond149.not.7 = icmp eq i32 %i.aw, %lftr.wideiv148.7
  br i1 %exitcond149.not.7, label %._crit_edge.split128, label %.noexc.us

.noexc:                                           ; preds = %.noexc.prol.loopexit, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.noexc ], [ %indvars.iv.unr, %.noexc.prol.loopexit ] ; 9 uses
  %.reass127 = mul i64 %factor.op.mul126, %indvars.iv
  %i.fi = getelementptr i8, ptr %i.q, i64 %.reass127
  call void @llvm.memset.p0.i64(ptr align 4 %i.fi, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.reass127.1 = mul i64 %factor.op.mul126, %indvars.iv.next
  %i.fj = getelementptr i8, ptr %i.q, i64 %.reass127.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.fj, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %.reass127.2 = mul i64 %factor.op.mul126, %indvars.iv.next.1
  %i.fk = getelementptr i8, ptr %i.q, i64 %.reass127.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fk, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %.reass127.3 = mul i64 %factor.op.mul126, %indvars.iv.next.2
  %i.fl = getelementptr i8, ptr %i.q, i64 %.reass127.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.fl, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %.reass127.4 = mul i64 %factor.op.mul126, %indvars.iv.next.3
  %i.fm = getelementptr i8, ptr %i.q, i64 %.reass127.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fm, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %.reass127.5 = mul i64 %factor.op.mul126, %indvars.iv.next.4
  %i.fn = getelementptr i8, ptr %i.q, i64 %.reass127.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %.reass127.6 = mul i64 %factor.op.mul126, %indvars.iv.next.5
  %i.fo = getelementptr i8, ptr %i.q, i64 %.reass127.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.fo, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %.reass127.7 = mul i64 %factor.op.mul126, %indvars.iv.next.6
  %i.fp = getelementptr i8, ptr %i.q, i64 %.reass127.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.fp, i8 0, i64 %i.ah, i1 false), !tbaa !42
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.aj, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge.split128, label %.noexc

._crit_edge.split128:                             ; preds = %.noexc.prol.loopexit, %.noexc, %.noexc.us.prol.loopexit, %.noexc.us, %._crit_edge117.split123.us.split.us.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split128, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !6, i64 44}
!14 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !15, i64 8, !16, i64 16, !6, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !16, i64 64}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!14, !6, i64 48}
!20 = !{!14, !16, i64 16}
!21 = !{!14, !6, i64 56}
!22 = !{!23, !6, i64 208}
!23 = !{!"_ZTSN4ncnn8ROIAlignE", !24, i64 0, !6, i64 208, !6, i64 212, !36, i64 216, !6, i64 220, !25, i64 224, !6, i64 228}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !12, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !16, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !10, i64 0}
!36 = !{!"float", !7, i64 0}
!37 = !{!23, !6, i64 212}
!38 = !{!39, !17, i64 8}
!39 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !17, i64 8, !17, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!40 = !{!14, !12, i64 0}
!41 = !{!14, !16, i64 64}
!42 = !{!36, !36, i64 0}
!43 = !{!23, !36, i64 216}
!44 = !{!23, !25, i64 224}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!23, !6, i64 228}
!48 = !{!23, !6, i64 220}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN4ncnn7PreCalcIfEESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN4ncnn7PreCalcIfEE", !12, i64 0}
!52 = !{!50, !51, i64 16}
!53 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 4, !42, i64 28, i64 4, !42}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!50, !51, i64 8}
!57 = !{!39, !6, i64 4}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !8, i64 0}
!60 = distinct !{!60, !55}
!61 = distinct !{!61, !55}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !55, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!"branch_weights", i32 4, i32 12}
!67 = distinct !{!67, !55, !64, !65}
!68 = distinct !{!68, !55, !65, !64}
!69 = distinct !{!69, !55}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, !"_ZNK4ncnn3Mat7channelEi"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!75 = distinct !{!75, !"_ZN4ncnn3Mat7channelEi"}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55, !64, !65}
!78 = distinct !{!78, !55, !64, !65}
!79 = distinct !{!79, !55, !65, !64}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = !{!83}
!83 = !{i64 2, i64 -1, i64 -1, i1 true}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = distinct !{!87, !55}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!90 = distinct !{!90, !"_ZNK4ncnn3Mat7channelEi"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!93 = distinct !{!93, !"_ZN4ncnn3Mat7channelEi"}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !55, !64, !65}
!98 = distinct !{!98, !55, !64, !65}
!99 = distinct !{!99, !55, !65, !64}
!100 = distinct !{!100, !55}
!101 = distinct !{!101, !55}
!102 = distinct !{!102, !55}
end_hunk_0
