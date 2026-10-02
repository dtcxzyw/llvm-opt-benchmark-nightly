Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512?download=true
inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<ncnn::Mat, std::allocator<ncnn::Mat>>::_Vector_impl" }
%"struct.std::_Vector_base<ncnn::Mat, std::allocator<ncnn::Mat>>::_Vector_impl" = type { %"struct.std::_Vector_base<ncnn::Mat, std::allocator<ncnn::Mat>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ncnn::Mat, std::allocator<ncnn::Mat>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$_ZN4ncnn6InterpD2Ev = comdat any

$_ZN4ncnn17Interp_x86_avx512D0Ev = comdat any

$_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn17Interp_x86_avx512E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn17Interp_x86_avx512E, ptr @_ZN4ncnn6InterpD2Ev, ptr @_ZN4ncnn17Interp_x86_avx512D0Ev, ptr @_ZN4ncnn6Interp10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn6Interp7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn17Interp_x86_avx512E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn17Interp_x86_avx512E, ptr @_ZTIN4ncnn6InterpE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn17Interp_x86_avx512E = hidden constant [27 x i8] c"N4ncnn17Interp_x86_avx512E\00", align 1
@_ZTIN4ncnn6InterpE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN4ncnn6InterpE = external constant { [12 x ptr] }, align 8

@_ZN4ncnn17Interp_x86_avx512C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn17Interp_x86_avx512C2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn6InterpD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6InterpE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #6
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn17Interp_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6InterpE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4ncnn6InterpD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZN4ncnn6InterpD2Ev.exit

_ZN4ncnn6InterpD2Ev.exit:                         ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(272) %0) #6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #24
  ret void
}

declare noundef i32 @_ZN4ncnn6Interp10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 13 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 14 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca float, align 4                    ; 4 uses
  %i.m = alloca float, align 4                    ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 7 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !23     ; 30 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !23     ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  store i32 %i.z, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !30
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !33
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29
  store i32 %i.al, ptr %i.e, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27
  store i32 %i.an, ptr %i.f, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.w to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = sdiv exact i64 %i.av, 72                ; 5 uses
  %i.ax = icmp ugt i64 %i.aw, 128102389400760775
  br i1 %i.ax, label %.noexc137, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc137:                                        ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.w
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #26 ; 4 uses
  store ptr %i.az, ptr %4, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !36
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.prol ], [ %i.az, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.prol ], [ %i.aw, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 64
  store i64 0, ptr %i.bd, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  %i.be = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !75

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.az, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.aw, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.be, %.lr.ph.i.i.i.i.i.prol ]
  %i.bg = icmp ult i64 %i.aw, 4
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i64 0, ptr %i.bi, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bh, i8 0, i64 28, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bl, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i8 0, i64 28, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 176
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  store i64 0, ptr %i.bo, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 216
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 280
  store i64 0, ptr %i.br, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bp, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  %i.bs = add i64 %.01012.i.i.i.i.i, -4           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bt, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !35
  %.pre144 = load ptr, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.bu = icmp eq ptr %.pre, %.pre144
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.lcssa, ptr %i.bv, align 8, !tbaa !35
  br i1 %i.bu, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnn3MataSERKS0_.exit107, %.loopexit.thread, %.loopexit
  %i.bw = phi ptr [ %i.ay, %.loopexit.thread ], [ %i.bv, %.loopexit ], [ %i.bv, %_ZN4ncnn3MataSERKS0_.exit107 ]
  %i.bx = invoke noundef i32 @_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.l unwind label %bb.t       ; 0 uses

.lr.ph:                                           ; preds = %.loopexit, %_ZN4ncnn3MataSERKS0_.exit107
  %i.by = phi ptr [ %i.fb, %_ZN4ncnn3MataSERKS0_.exit107 ], [ %.pre144, %.loopexit ]
  %.0142 = phi i64 [ %i.ez, %_ZN4ncnn3MataSERKS0_.exit107 ], [ 0, %.loopexit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.by, i64 %.0142 ; 15 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !31, !noalias !79
  switch i32 %i.cb, label %bb.f [
    i32 1, label %.noexc
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

.noexc:                                           ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !29, !noalias !79
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !33, !noalias !79
  %i.cg = mul nsw i32 %i.cf, %i.cd                ; 2 uses
  %i.ch = insertelement <4 x i32> <i32 1, i32 poison, i32 1, i32 1>, i32 %i.cg, i64 1
  %i.ci = sext i32 %i.cg to i64
  %i.cj = add nsw i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 4611686018427387900
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29, !noalias !79 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !27, !noalias !79
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !33, !noalias !79
  %i.cr = mul nsw i32 %i.cq, %i.co                ; 2 uses
  %i.cs = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.cm, i64 1
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cr, i64 2
  %i.cu = sext i32 %i.cm to i64
  %i.cv = sext i32 %i.cr to i64
  %i.cw = mul nsw i64 %i.cv, %i.cu
  %i.cx = add nsw i64 %i.cw, 3
  %i.cy = and i64 %i.cx, 4611686018427387900
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 44 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !30, !noalias !79
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !33, !noalias !79
  %i.df = mul nsw i32 %i.de, %i.dc
  %i.dg = load <2 x i32>, ptr %i.cz, align 4, !tbaa !28, !noalias !79
  %i.dh = load i32, ptr %i.da, align 8, !tbaa !27, !noalias !79
  %i.di = load i32, ptr %i.cz, align 4, !tbaa !29, !noalias !79
  %i.dj = shufflevector <2 x i32> %i.dg, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dk = shufflevector <4 x i32> <i32 3, i32 poison, i32 poison, i32 1>, <4 x i32> %i.dj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dl = sext i32 %i.di to i64
  %i.dm = sext i32 %i.dh to i64
  %i.dn = mul nsw i64 %i.dm, %i.dl
  %i.do = add nsw i64 %i.dn, 3
  %i.dp = and i64 %i.do, 4611686018427387900
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !29, !noalias !79 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !27, !noalias !79 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !40, !noalias !79 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !30, !noalias !79
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !33, !noalias !79
  %i.ea = mul nsw i32 %i.dz, %i.dx
  %.sroa.29.44.vec.insert = insertelement <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>, i32 %i.dr, i64 1
  %.sroa.29.48.vec.insert = insertelement <4 x i32> %.sroa.29.44.vec.insert, i32 %i.dt, i64 2
  %.sroa.29.52.vec.insert = insertelement <4 x i32> %.sroa.29.48.vec.insert, i32 %i.dv, i64 3
  %i.eb = sext i32 %i.dr to i64
  %i.ec = sext i32 %i.dt to i64
  %i.ed = mul nsw i64 %i.ec, %i.eb
  %i.ee = sext i32 %i.dv to i64
  %i.ef = mul i64 %i.ed, %i.ee
  %i.eg = add i64 %i.ef, 3
  %i.eh = and i64 %i.eg, 4611686018427387900
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.noexc, %bb.c, %bb.d, %bb.e
  %.sroa.12.0 = phi i64 [ 4, %bb.e ], [ 4, %.noexc ], [ 4, %bb.c ], [ 4, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.42196.0 = phi i64 [ %i.eh, %bb.e ], [ %i.ck, %.noexc ], [ %i.cy, %bb.c ], [ %i.dp, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.37.0 = phi i32 [ %i.ea, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ %i.df, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.29.0 = phi <4 x i32> [ %.sroa.29.52.vec.insert, %bb.e ], [ %i.ch, %.noexc ], [ %i.ct, %bb.c ], [ %i.dk, %bb.d ], [ zeroinitializer, %.lr.ph ]
  %.sroa.17.0 = phi i32 [ 1, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.lr.ph ]
  %i.ei = load ptr, ptr %4, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw [72 x i8], ptr %i.ei, i64 %.0142 ; 11 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.pre146 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.not.i118 = icmp eq ptr %.pre146, null
  br i1 %.not.i118, label %_ZN4ncnn3MataSERKS0_.exit107, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.el = atomicrmw add ptr %.pre146, i32 -1 acq_rel, align 4
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.h, label %_ZN4ncnn3MataSERKS0_.exit107

bb.h:                                             ; preds = %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %.not3.i119 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MataSERKS0_.exit107 unwind label %_ZN4ncnn3MatD2Ev.exit, !inline_history !1

bb.j:                                             ; preds = %bb.h
  %.not.i131 = icmp eq ptr %i.ep, null
  br i1 %.not.i131, label %_ZN4ncnn3MataSERKS0_.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ep) #6
  br label %_ZN4ncnn3MataSERKS0_.exit107

_ZN4ncnn3MataSERKS0_.exit107:                     ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  store ptr null, ptr %i.ej, align 8, !tbaa !43
  store ptr null, ptr %i.ek, align 8, !tbaa !41
  store i64 %.sroa.12.0, ptr %i.et, align 8, !tbaa !32
  store i32 %.sroa.17.0, ptr %i.eu, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr null, ptr %i.ey, align 8, !tbaa !42
  store <4 x i32> %.sroa.29.0, ptr %i.ev, align 8, !tbaa !28
  store i32 %.sroa.37.0, ptr %i.ew, align 8, !tbaa !30
  store i64 %.sroa.42196.0, ptr %i.ex, align 8, !tbaa !37
  %i.ez = add nuw i64 %.0142, 1                   ; 2 uses
  %i.fa = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.fb = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = sdiv exact i64 %i.fe, 72
  %i.fg = icmp ult i64 %i.ez, %i.ff
  br i1 %i.fg, label %.lr.ph, label %._crit_edge, !llvm.loop !78

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %4, align 8, !tbaa !23    ; 3 uses
  %i.fj = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.fi, %bb.l ] ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i139 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i139, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.fm = atomicrmw add ptr %i.fl, i32 -1 acq_rel, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.n, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !42 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.fp, null
  %i.fq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.p, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN4ncnn17Interp_x86_avx512C2Ev:bb.a
  tail call void @_ZN4ncnn6InterpC2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn17Interp_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !88
  ret void
}

declare void @_ZN4ncnn6InterpC2Ev(ptr noundef nonnull align 8 dereferenceable(272)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef i32 @_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i unwind label %bb.g, !inline_history !1

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.j) #6
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #27
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i:          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  store i64 0, ptr %i.q, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #24
  br label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17Interp_x86_avx51213forward_bf16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca float, align 4                    ; 4 uses
  %i.m = alloca float, align 4                    ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 6 uses
  %i.w = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 14 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !23     ; 20 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !23     ; 36 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  store i32 %i.am, ptr %i.v, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27
  store i32 %i.ao, ptr %i.w, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !34
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = sdiv exact i64 %i.aw, 72                ; 5 uses
  %i.ay = icmp ugt i64 %i.ax, 128102389400760775
  br i1 %i.ay, label %.noexc95, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc95:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.x
  br i1 %.not.i.i.i.i, label %.loopexit.thread, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge

_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #26 ; 4 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !36
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.prol ], [ %i.ba, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.prol ], [ %i.ax, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 64
  store i64 0, ptr %i.be, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i.prol, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  %i.bf = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !89

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.ax, %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.prol ]
  %i.bh = icmp ult i64 %i.ax, 4
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store i64 0, ptr %i.bj, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.013.i.i.i.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bm, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bl, i8 0, i64 28, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 176
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  store i64 0, ptr %i.bp, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 216
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 248
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 280
  store i64 0, ptr %i.bs, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, i8 0, i64 28, i1 false)
  %i.bt = add i64 %.01012.i.i.i.i.i, -4           ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !35
  %.pre101 = load ptr, ptr %1, align 8, !tbaa !23 ; 2 uses
  %i.bv = icmp eq ptr %.pre, %.pre101
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.lcssa, ptr %i.bw, align 8, !tbaa !35
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnn3MataSERKS0_.exit66, %.loopexit.thread, %.loopexit
  %i.bx = phi ptr [ %i.az, %.loopexit.thread ], [ %i.bw, %.loopexit ], [ %i.bw, %_ZN4ncnn3MataSERKS0_.exit66 ]
  %i.by = invoke noundef i32 @_ZNK4ncnn6Interp14eval_size_exprERKSt6vectorINS_3MatESaIS2_EERiS7_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.l unwind label %bb.t       ; 0 uses

.lr.ph:                                           ; preds = %.loopexit, %_ZN4ncnn3MataSERKS0_.exit66
  %i.bz = phi ptr [ %i.fb, %_ZN4ncnn3MataSERKS0_.exit66 ], [ %.pre101, %.loopexit ]
  %.0100 = phi i64 [ %i.ez, %_ZN4ncnn3MataSERKS0_.exit66 ], [ 0, %.loopexit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %.0100 ; 15 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !31, !noalias !93
  switch i32 %i.cc, label %bb.f [
    i32 1, label %.noexc
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

.noexc:                                           ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29, !noalias !93
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !33, !noalias !93
  %i.ch = mul nsw i32 %i.cg, %i.ce                ; 2 uses
  %i.ci = insertelement <4 x i32> <i32 1, i32 poison, i32 1, i32 1>, i32 %i.ch, i64 1
  %i.cj = sext i32 %i.ch to i64
  %i.ck = add nsw i64 %i.cj, 3
  %i.cl = and i64 %i.ck, 4611686018427387900
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29, !noalias !93 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !27, !noalias !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !33, !noalias !93
  %i.cs = mul nsw i32 %i.cr, %i.cp                ; 2 uses
  %i.ct = insertelement <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, i32 %i.cn, i64 1
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cs, i64 2
  %i.cv = sext i32 %i.cn to i64
  %i.cw = sext i32 %i.cs to i64
  %i.cx = mul nsw i64 %i.cw, %i.cv
  %i.cy = add nsw i64 %i.cx, 3
  %i.cz = and i64 %i.cy, 4611686018427387900
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 44 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !30, !noalias !93
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !33, !noalias !93
  %i.dg = mul nsw i32 %i.df, %i.dd
  %i.dh = load <2 x i32>, ptr %i.da, align 4, !tbaa !28, !noalias !93
  %i.di = load i32, ptr %i.db, align 8, !tbaa !27, !noalias !93
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !29, !noalias !93
  %i.dk = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dl = shufflevector <4 x i32> <i32 3, i32 poison, i32 poison, i32 1>, <4 x i32> %i.dk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dm = sext i32 %i.dj to i64
  %i.dn = sext i32 %i.di to i64
  %i.do = mul nsw i64 %i.dn, %i.dm
  %i.dp = add nsw i64 %i.do, 3
  %i.dq = and i64 %i.dp, 4611686018427387900
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29, !noalias !93 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !27, !noalias !93 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40, !noalias !93 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !30, !noalias !93
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !33, !noalias !93
  %i.eb = mul nsw i32 %i.ea, %i.dy
  %.sroa.31.44.vec.insert = insertelement <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>, i32 %i.ds, i64 1
  %.sroa.31.48.vec.insert = insertelement <4 x i32> %.sroa.31.44.vec.insert, i32 %i.du, i64 2
  %.sroa.31.52.vec.insert = insertelement <4 x i32> %.sroa.31.48.vec.insert, i32 %i.dw, i64 3
  %i.ec = sext i32 %i.ds to i64
  %i.ed = sext i32 %i.du to i64
  %i.ee = mul nsw i64 %i.ed, %i.ec
  %i.ef = sext i32 %i.dw to i64
  %i.eg = mul i64 %i.ee, %i.ef
  %i.eh = add i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 4611686018427387900
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.noexc, %bb.c, %bb.d, %bb.e
  %.sroa.44152.0 = phi i64 [ %i.ei, %bb.e ], [ %i.cl, %.noexc ], [ %i.cz, %bb.c ], [ %i.dq, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.39.0 = phi i32 [ %i.eb, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ %i.dg, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.31.0 = phi <4 x i32> [ %.sroa.31.52.vec.insert, %bb.e ], [ %i.ci, %.noexc ], [ %i.cu, %bb.c ], [ %i.dl, %bb.d ], [ zeroinitializer, %.lr.ph ]
  %.sroa.13.0 = phi i64 [ 4, %bb.e ], [ 4, %.noexc ], [ 4, %bb.c ], [ 4, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.18.0 = phi i32 [ 1, %bb.e ], [ 1, %.noexc ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.lr.ph ]
  %i.ej = load ptr, ptr %4, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw [72 x i8], ptr %i.ej, i64 %.0100 ; 10 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.pre103 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41 ; 2 uses
  %.not.i76 = icmp eq ptr %.pre103, null
  br i1 %.not.i76, label %_ZN4ncnn3MataSERKS0_.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.el = atomicrmw add ptr %.pre103, i32 -1 acq_rel, align 4
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.h, label %_ZN4ncnn3MataSERKS0_.exit66

bb.h:                                             ; preds = %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MataSERKS0_.exit66 unwind label %_ZN4ncnn3MatD2Ev.exit, !inline_history !1

bb.j:                                             ; preds = %bb.h
  %.not.i89 = icmp eq ptr %i.ep, null
  br i1 %.not.i89, label %_ZN4ncnn3MataSERKS0_.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ep) #6
  br label %_ZN4ncnn3MataSERKS0_.exit66

_ZN4ncnn3MataSERKS0_.exit66:                      ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  store <2 x ptr> splat (ptr null), ptr %i.ek, align 8, !tbaa !48
  store i64 %.sroa.13.0, ptr %i.et, align 8, !tbaa !32
  store i32 %.sroa.18.0, ptr %i.eu, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store ptr null, ptr %i.ey, align 8, !tbaa !42
  store <4 x i32> %.sroa.31.0, ptr %i.ev, align 8, !tbaa !28
  store i32 %.sroa.39.0, ptr %i.ew, align 8, !tbaa !30
  store i64 %.sroa.44152.0, ptr %i.ex, align 8, !tbaa !37
  %i.ez = add nuw i64 %.0100, 1                   ; 2 uses
  %i.fa = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.fb = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = sdiv exact i64 %i.fe, 72
  %i.fg = icmp ult i64 %i.ez, %i.ff
  br i1 %i.fg, label %.lr.ph, label %._crit_edge, !llvm.loop !92

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %._crit_edge
  %i.fi = load ptr, ptr %4, align 8, !tbaa !23    ; 3 uses
  %i.fj = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.fi, %bb.l ] ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i97, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.fm = atomicrmw add ptr %i.fl, i32 -1 acq_rel, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.n, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !42 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.fp, null
  %i.fq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !13
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8:bb.a
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.ay, !inline_history !1

bb.aw:                                            ; preds = %bb.au
  %.not.i274.i = icmp eq ptr %i.wg, null
  br i1 %.not.i274.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.wg) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.ay:                                            ; preds = %bb.av
  %i.wk = landingpad { ptr, i32 }
          catch ptr null
  %i.wl = extractvalue { ptr, i32 } %i.wk, 0
  call void @__clang_call_terminate(ptr %i.wl) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL27resize_bilinear_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit260.i, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pre = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnnL27resize_bilinear_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.aa
  %i.wm = phi i32 [ %.pre, %_ZN4ncnnL27resize_bilinear_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.kn, %bb.aa ] ; 2 uses
  %i.wn = icmp eq i32 %i.wm, 4
  br i1 %i.wn, label %bb.ba, label %bb.by

bb.ba:                                            ; preds = %bb.az
  %i.wo = load ptr, ptr %6, align 8, !tbaa !63    ; 4 uses
  %i.wp = load ptr, ptr %7, align 8, !tbaa !61    ; 8 uses
  %i.wq = load ptr, ptr %8, align 8, !tbaa !63
  %i.wr = load ptr, ptr %9, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc106 unwind label %bb.cy

.noexc106:                                        ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69 unwind label %bb.bn

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69:       ; preds = %.noexc106
  %i.ws = icmp sgt i32 %i.ba, 0
  br i1 %i.ws, label %.lr.ph527.i, label %._crit_edge.i70

.lr.ph527.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69
  %i.wt = load ptr, ptr %13, align 8, !tbaa !43
  %i.wu = load ptr, ptr %12, align 8, !tbaa !43
  %i.wv = icmp sgt i32 %i.az, 3                   ; 3 uses
  %i.ww = shl i32 %i.az, 2                        ; 7 uses
  %i.wx = zext nneg i32 %i.ww to i64              ; 2 uses
  %invariant.op.i.i71 = add nsw i64 %i.wx, -7
  %wide.trip.count566.i = zext nneg i32 %i.ba to i64
  %invariant.op.i72 = add nsw i64 %i.bi, -3       ; 2 uses
  %invariant.op588.i = add nsw i64 %i.bi, -1      ; 2 uses
  %wide.trip.count.i73 = zext i32 %i.az to i64    ; 2 uses
  %i.wy = mul i64 %i.bf, %i.bi
  %i.wz = mul i64 %i.av, %i.ay                    ; 3 uses
  %i.xa = add i64 %i.bg, %i.bc
  %i.xb = mul i64 %i.bf, %i.bi
  br label %bb.bo

._crit_edge.i70:                                  ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69
  %i.xc = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not.i388.i = icmp eq ptr %i.xc, null
  br i1 %.not.i388.i, label %_ZN4ncnn3MatD2Ev.exit386.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i70
  %i.xd = atomicrmw add ptr %i.xc, i32 -1 acq_rel, align 4
  %i.xe = icmp eq i32 %i.xd, 1
  br i1 %i.xe, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit386.i

bb.bc:                                            ; preds = %bb.bb
  %i.xf = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %.not3.i389.i = icmp eq ptr %i.xf, null
  %i.xg = load ptr, ptr %13, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i389.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.xh = load ptr, ptr %i.xf, align 8, !tbaa !13
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8
  invoke void %i.xj(ptr noundef nonnull align 8 dereferenceable(8) %i.xf, ptr noundef %i.xg)
          to label %_ZN4ncnn3MatD2Ev.exit386.i unwind label %bb.bg, !inline_history !1

bb.be:                                            ; preds = %bb.bc
  %.not.i403.i = icmp eq ptr %i.xg, null
  br i1 %.not.i403.i, label %_ZN4ncnn3MatD2Ev.exit386.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.xg) #6
  br label %_ZN4ncnn3MatD2Ev.exit386.i

bb.bg:                                            ; preds = %bb.bd
  %i.xk = landingpad { ptr, i32 }
          catch ptr null
  %i.xl = extractvalue { ptr, i32 } %i.xk, 0
  call void @__clang_call_terminate(ptr %i.xl) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit386.i:                       ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %._crit_edge.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.xm = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i392.i = icmp eq ptr %i.xm, null
  br i1 %.not.i392.i, label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit386.i
  %i.xn = atomicrmw add ptr %i.xm, i32 -1 acq_rel, align 4
  %i.xo = icmp eq i32 %i.xn, 1
  br i1 %i.xo, label %bb.bi, label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.xp = load ptr, ptr %i.af, align 8, !tbaa !42 ; 3 uses
  %.not3.i393.i = icmp eq ptr %i.xp, null
  %i.xq = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i393.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xr = load ptr, ptr %i.xp, align 8, !tbaa !13
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8
  invoke void %i.xt(ptr noundef nonnull align 8 dereferenceable(8) %i.xp, ptr noundef %i.xq)
          to label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.bm, !inline_history !1

bb.bk:                                            ; preds = %bb.bi
  %.not.i401.i = icmp eq ptr %i.xq, null
  br i1 %.not.i401.i, label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.xq) #6
  br label %_ZN4ncnnL27resize_bilinear_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bm:                                            ; preds = %bb.bj
  %i.xu = landingpad { ptr, i32 }
          catch ptr null
  %i.xv = extractvalue { ptr, i32 } %i.xu, 0
  call void @__clang_call_terminate(ptr %i.xv) #27
  unreachable

bb.bn:                                            ; preds = %.noexc106
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.xx = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i396.i = icmp eq ptr %i.xx, null
  br i1 %.not.i396.i, label %_ZN4ncnn3MatD2Ev.exit.i68, label %bb.bs

bb.bo:                                            ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81, %.lr.ph527.i
  %indvars.iv563.i = phi i64 [ 0, %.lr.ph527.i ], [ %indvars.iv.next564.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81 ] ; 4 uses
  %.0526.i = phi ptr [ %i.wq, %.lr.ph527.i ], [ %i.anr, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81 ] ; 3 uses
  %.0332524.i = phi i32 [ -2, %.lr.ph527.i ], [ %i.yb, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81 ] ; 2 uses
  %.0333523.i = phi ptr [ %i.wt, %.lr.ph527.i ], [ %.1334.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81 ] ; 8 uses
  %.0335522.i = phi ptr [ %i.wu, %.lr.ph527.i ], [ %.1336.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i81 ] ; 11 uses
  %i.xy = mul i64 %i.xb, %indvars.iv563.i
  %i.xz = add i64 %i.xa, %i.xy                    ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv563.i
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !28 ; 6 uses
  %i.yc = icmp eq i32 %i.yb, %.0332524.i
  br i1 %i.yc, label %.loopexit.i74, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.yd = add nsw i32 %.0332524.i, 1
  %i.ye = icmp eq i32 %i.yb, %i.yd
  br i1 %i.ye, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.yf = add nsw i32 %i.yb, 1
  %i.yg = sext i32 %i.yf to i64
  %i.yh = mul i64 %i.wz, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.yh ; 7 uses
  br i1 %i.wv, label %.lr.ph511.i, label %.preheader494.i

.preheader494.loopexit.i:                         ; preds = %.lr.ph511.i
  %i.yj = trunc nuw nsw i64 %indvars.iv.next549.i to i32
  br label %.preheader494.i

.preheader494.i:                                  ; preds = %.preheader494.loopexit.i, %bb.bq
  %.0328.lcssa.i = phi ptr [ %i.wo, %bb.bq ], [ %i.aap, %.preheader494.loopexit.i ] ; 2 uses
  %.0325.lcssa.i = phi i32 [ 0, %bb.bq ], [ %i.yj, %.preheader494.loopexit.i ] ; 3 uses
  %i.yk = or disjoint i32 %.0325.lcssa.i, 1
  %i.yl = icmp slt i32 %i.yk, %i.az
  br i1 %i.yl, label %.lr.ph516.preheader.i, label %.preheader.i103

.lr.ph516.preheader.i:                            ; preds = %.preheader494.i
  %i.ym = zext nneg i32 %.0325.lcssa.i to i64     ; 2 uses
  %i.yn = add nuw nsw i64 %i.ym, 1
  br label %.lr.ph516.i

.lr.ph511.i:                                      ; preds = %bb.bq, %.lr.ph511.i
  %indvars.iv548.i = phi i64 [ %indvars.iv.next549.i, %.lr.ph511.i ], [ 0, %bb.bq ] ; 3 uses
  %.0328509.i = phi ptr [ %i.aap, %.lr.ph511.i ], [ %i.wo, %bb.bq ] ; 7 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv548.i
  %18 = getelementptr inbounds nuw i8, ptr %.0328509.i, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %.0328509.i, i64 16
  %20 = insertelement <8 x ptr> poison, ptr %.0328509.i, i64 0
  %21 = insertelement <8 x ptr> %20, ptr %18, i64 1
  %22 = insertelement <8 x ptr> %21, ptr %19, i64 2
  %i.yp = shufflevector <8 x ptr> %22, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.yq = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.yp, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.yr = getelementptr inbounds nuw i8, ptr %.0328509.i, i64 24
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !60
  %i.yt = shufflevector <8 x float> %i.yq, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yu = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yw = shufflevector <16 x float> %i.yt, <16 x float> %i.yv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.yx = getelementptr inbounds nuw i8, ptr %.0328509.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.yy = shufflevector <3 x ptr> %i.yx, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.yz = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.yy, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.za = getelementptr inbounds nuw i8, ptr %.0328509.i, i64 28
  %i.zb = load float, ptr %i.za, align 4, !tbaa !60
  %i.zc = shufflevector <8 x float> %i.yz, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zd = insertelement <4 x float> poison, float %i.zb, i64 0
  %i.ze = shufflevector <4 x float> %i.zd, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zf = shufflevector <16 x float> %i.zc, <16 x float> %i.ze, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.zg = load <4 x i32>, ptr %i.yo, align 4, !tbaa !28
  %i.zh = shl nsw <4 x i32> %i.zg, splat (i32 2)  ; 4 uses
  %i.zi = extractelement <4 x i32> %i.zh, i64 0
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.zj ; 2 uses
  %i.zl = load <4 x float>, ptr %i.zk, align 16, !tbaa !20
  %i.zm = extractelement <4 x i32> %i.zh, i64 1
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.zn ; 2 uses
  %i.zp = load <4 x float>, ptr %i.zo, align 16, !tbaa !20
  %i.zq = extractelement <4 x i32> %i.zh, i64 2
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.zr ; 2 uses
  %i.zt = load <4 x float>, ptr %i.zs, align 16, !tbaa !20
  %i.zu = extractelement <4 x i32> %i.zh, i64 3
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.zv ; 2 uses
  %i.zx = load <4 x float>, ptr %i.zw, align 16, !tbaa !20
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zz = load <4 x float>, ptr %i.zy, align 16, !tbaa !20
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.aab = load <4 x float>, ptr %i.aaa, align 16, !tbaa !20
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.aad = load <4 x float>, ptr %i.aac, align 16, !tbaa !20
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.aaf = load <4 x float>, ptr %i.aae, align 16, !tbaa !20
  %i.aag = shufflevector <4 x float> %i.zl, <4 x float> %i.zp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aah = shufflevector <4 x float> %i.zt, <4 x float> %i.zx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aai = shufflevector <16 x float> %i.aag, <16 x float> %i.aah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aaj = shufflevector <4 x float> %i.zz, <4 x float> %i.aab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aak = shufflevector <4 x float> %i.aad, <4 x float> %i.aaf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aal = shufflevector <16 x float> %i.aaj, <16 x float> %i.aak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aam = fmul fast <16 x float> %i.yw, %i.aai
  %i.aan = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aal, <16 x float> nofpclass(nan inf) %i.zf, <16 x float> nofpclass(nan inf) %i.aam)
  %.idx.i105 = shl nuw nsw i64 %indvars.iv548.i, 4
  %i.aao = getelementptr inbounds nuw i8, ptr %.0335522.i, i64 %.idx.i105
  store <16 x float> %i.aan, ptr %i.aao, align 1, !tbaa !20
  %i.aap = getelementptr inbounds nuw i8, ptr %.0328509.i, i64 32 ; 2 uses
  %indvars.iv.next549.i = add nuw nsw i64 %indvars.iv548.i, 4 ; 3 uses
  %i.aaq = icmp slt i64 %indvars.iv.next549.i, %invariant.op.i72
  br i1 %i.aaq, label %.lr.ph511.i, label %.preheader494.loopexit.i, !llvm.loop !178

.preheader.loopexit.i104:                         ; preds = %.lr.ph516.i
  %i.aar = trunc nuw nsw i64 %indvars.iv.next554.i to i32
  br label %.preheader.i103

.preheader.i103:                                  ; preds = %.preheader.loopexit.i104, %.preheader494.i
  %.1329.lcssa.i = phi ptr [ %.0328.lcssa.i, %.preheader494.i ], [ %i.acc, %.preheader.loopexit.i104 ]
  %.1326.lcssa.i = phi i32 [ %.0325.lcssa.i, %.preheader494.i ], [ %i.aar, %.preheader.loopexit.i104 ] ; 2 uses
  %i.aas = icmp slt i32 %.1326.lcssa.i, %i.az
  br i1 %i.aas, label %.lr.ph521.preheader.i, label %.loopexit.i74

.lr.ph521.preheader.i:                            ; preds = %.preheader.i103
  %i.aat = zext nneg i32 %.1326.lcssa.i to i64
  br label %.lr.ph521.i

.lr.ph516.i:                                      ; preds = %.lr.ph516.i, %.lr.ph516.preheader.i
  %indvars.iv553.i = phi i64 [ %i.ym, %.lr.ph516.preheader.i ], [ %indvars.iv.next554.i, %.lr.ph516.i ] ; 3 uses
  %indvars.iv551.i = phi i64 [ %i.yn, %.lr.ph516.preheader.i ], [ %indvars.iv.next552.i, %.lr.ph516.i ] ; 2 uses
  %.1329514.i = phi ptr [ %.0328.lcssa.i, %.lr.ph516.preheader.i ], [ %i.acc, %.lr.ph516.i ] ; 5 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv553.i
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !28
  %i.aaw = shl nsw i32 %i.aav, 2
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv551.i
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !28
  %i.aaz = shl nsw i32 %i.aay, 2
  %i.aba = load float, ptr %.1329514.i, align 4, !tbaa !60
  %i.abb = getelementptr inbounds nuw i8, ptr %.1329514.i, i64 8
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !60
  %i.abd = insertelement <4 x float> poison, float %i.aba, i64 0
  %i.abe = insertelement <4 x float> poison, float %i.abc, i64 0
  %i.abf = shufflevector <4 x float> %i.abd, <4 x float> %i.abe, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.abg = getelementptr inbounds nuw i8, ptr %.1329514.i, i64 4
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !60
  %i.abi = getelementptr inbounds nuw i8, ptr %.1329514.i, i64 12
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !60
  %i.abk = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.abl = insertelement <4 x float> poison, float %i.abj, i64 0
  %i.abm = shufflevector <4 x float> %i.abk, <4 x float> %i.abl, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.abn = sext i32 %i.aaw to i64
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.abn ; 2 uses
  %i.abp = load <4 x float>, ptr %i.abo, align 16, !tbaa !20
  %i.abq = sext i32 %i.aaz to i64
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.abq ; 2 uses
  %i.abs = load <4 x float>, ptr %i.abr, align 16, !tbaa !20
  %i.abt = shufflevector <4 x float> %i.abp, <4 x float> %i.abs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abv = load <4 x float>, ptr %i.abu, align 16, !tbaa !20
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abx = load <4 x float>, ptr %i.abw, align 16, !tbaa !20
  %i.aby = shufflevector <4 x float> %i.abv, <4 x float> %i.abx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abz = fmul fast <8 x float> %i.abf, %i.abt
  %i.aca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aby, <8 x float> nofpclass(nan inf) %i.abm, <8 x float> nofpclass(nan inf) %i.abz)
  %.idx581.i = shl nuw nsw i64 %indvars.iv553.i, 4
  %i.acb = getelementptr inbounds nuw i8, ptr %.0335522.i, i64 %.idx581.i
  store <8 x float> %i.aca, ptr %i.acb, align 1, !tbaa !20
  %i.acc = getelementptr inbounds nuw i8, ptr %.1329514.i, i64 16 ; 2 uses
  %indvars.iv.next554.i = add nuw nsw i64 %indvars.iv553.i, 2 ; 3 uses
  %i.acd = icmp slt i64 %indvars.iv.next554.i, %invariant.op588.i
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 2
  br i1 %i.acd, label %.lr.ph516.i, label %.preheader.loopexit.i104, !llvm.loop !179

.lr.ph521.i:                                      ; preds = %.lr.ph521.i, %.lr.ph521.preheader.i
  %indvars.iv558.i = phi i64 [ %i.aat, %.lr.ph521.preheader.i ], [ %indvars.iv.next559.i, %.lr.ph521.i ] ; 3 uses
  %.2330519.i = phi ptr [ %.1329.lcssa.i, %.lr.ph521.preheader.i ], [ %i.acw, %.lr.ph521.i ] ; 3 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv558.i
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !28
  %i.acg = shl nsw i32 %i.acf, 2
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.ach ; 2 uses
  %i.acj = load float, ptr %.2330519.i, align 4, !tbaa !60
  %i.ack = insertelement <4 x float> poison, float %i.acj, i64 0
  %i.acl = shufflevector <4 x float> %i.ack, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acm = getelementptr inbounds nuw i8, ptr %.2330519.i, i64 4
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !60
  %i.aco = insertelement <4 x float> poison, float %i.acn, i64 0
  %i.acp = shufflevector <4 x float> %i.aco, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acq = load <4 x float>, ptr %i.aci, align 16, !tbaa !20
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.acs = load <4 x float>, ptr %i.acr, align 16, !tbaa !20
  %i.act = fmul fast <4 x float> %i.acq, %i.acl
  %i.acu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.acs, <4 x float> nofpclass(nan inf) %i.acp, <4 x float> nofpclass(nan inf) %i.act)
  %.idx582.i = shl nuw nsw i64 %indvars.iv558.i, 4
  %i.acv = getelementptr inbounds nuw i8, ptr %.0335522.i, i64 %.idx582.i
  store <4 x float> %i.acu, ptr %i.acv, align 16, !tbaa !20
  %i.acw = getelementptr inbounds nuw i8, ptr %.2330519.i, i64 8
  %indvars.iv.next559.i = add nuw nsw i64 %indvars.iv558.i, 1 ; 2 uses
  %exitcond562.not.i = icmp eq i64 %indvars.iv.next559.i, %wide.trip.count.i73
  br i1 %exitcond562.not.i, label %.loopexit.i74, label %.lr.ph521.i, !llvm.loop !180

bb.br:                                            ; preds = %bb.bp
  %i.acx = sext i32 %i.yb to i64
  %i.acy = mul i64 %i.wz, %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.acy ; 7 uses
  %i.ada = add nsw i32 %i.yb, 1
  %i.adb = sext i32 %i.ada to i64
  %i.adc = mul i64 %i.wz, %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adc ; 7 uses
  br i1 %i.wv, label %.lr.ph.i100, label %.preheader497.i

.preheader497.loopexit.i:                         ; preds = %.lr.ph.i100
  %i.ade = trunc nuw nsw i64 %indvars.iv.next.i102 to i32
  br label %.preheader497.i

.preheader497.i:                                  ; preds = %.preheader497.loopexit.i, %bb.br
  %.0322.lcssa.i = phi ptr [ %i.wo, %bb.br ], [ %i.agk, %.preheader497.loopexit.i ] ; 2 uses
  %.0321.lcssa.i = phi i32 [ 0, %bb.br ], [ %i.ade, %.preheader497.loopexit.i ] ; 3 uses
  %i.adf = or disjoint i32 %.0321.lcssa.i, 1
  %i.adg = icmp slt i32 %i.adf, %i.az
  br i1 %i.adg, label %.lr.ph503.preheader.i, label %.preheader495.i

.lr.ph503.preheader.i:                            ; preds = %.preheader497.i
  %i.adh = zext nneg i32 %.0321.lcssa.i to i64    ; 2 uses
  %i.adi = add nuw nsw i64 %i.adh, 1
  br label %.lr.ph503.i

.lr.ph.i100:                                      ; preds = %bb.br, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i102, %.lr.ph.i100 ], [ 0, %bb.br ] ; 3 uses
  %.0322498.i = phi ptr [ %i.agk, %.lr.ph.i100 ], [ %i.wo, %bb.br ] ; 7 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.i101
  %23 = getelementptr inbounds nuw i8, ptr %.0322498.i, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %.0322498.i, i64 16
  %25 = insertelement <8 x ptr> poison, ptr %.0322498.i, i64 0
  %26 = insertelement <8 x ptr> %25, ptr %23, i64 1
  %27 = insertelement <8 x ptr> %26, ptr %24, i64 2
  %i.adk = shufflevector <8 x ptr> %27, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.adl = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.adk, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.adm = getelementptr inbounds nuw i8, ptr %.0322498.i, i64 24
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !60
  %i.ado = shufflevector <8 x float> %i.adl, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adp = insertelement <4 x float> poison, float %i.adn, i64 0
  %i.adq = shufflevector <4 x float> %i.adp, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adr = shufflevector <16 x float> %i.ado, <16 x float> %i.adq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.0322498.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.adt = shufflevector <3 x ptr> %i.ads, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.adu = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.adt, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.adv = getelementptr inbounds nuw i8, ptr %.0322498.i, i64 28
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !60
  %i.adx = shufflevector <8 x float> %i.adu, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ady = insertelement <4 x float> poison, float %i.adw, i64 0
  %i.adz = shufflevector <4 x float> %i.ady, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aea = shufflevector <16 x float> %i.adx, <16 x float> %i.adz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.aeb = load <4 x i32>, ptr %i.adj, align 4, !tbaa !28
  %i.aec = shl nsw <4 x i32> %i.aeb, splat (i32 2) ; 4 uses
  %i.aed = extractelement <4 x i32> %i.aec, i64 0
  %i.aee = sext i32 %i.aed to i64                 ; 2 uses
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.aee ; 2 uses
  %i.aeg = load <4 x float>, ptr %i.aef, align 16, !tbaa !20
  %i.aeh = extractelement <4 x i32> %i.aec, i64 1
  %i.aei = sext i32 %i.aeh to i64                 ; 2 uses
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.aei ; 2 uses
  %i.aek = load <4 x float>, ptr %i.aej, align 16, !tbaa !20
  %i.ael = extractelement <4 x i32> %i.aec, i64 2
  %i.aem = sext i32 %i.ael to i64                 ; 2 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.aem ; 2 uses
  %i.aeo = load <4 x float>, ptr %i.aen, align 16, !tbaa !20
  %i.aep = extractelement <4 x i32> %i.aec, i64 3
  %i.aeq = sext i32 %i.aep to i64                 ; 2 uses
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.aeq ; 2 uses
  %i.aes = load <4 x float>, ptr %i.aer, align 16, !tbaa !20
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %i.aeu = load <4 x float>, ptr %i.aet, align 16, !tbaa !20
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.aew = load <4 x float>, ptr %i.aev, align 16, !tbaa !20
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aey = load <4 x float>, ptr %i.aex, align 16, !tbaa !20
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.afa = load <4 x float>, ptr %i.aez, align 16, !tbaa !20
  %i.afb = shufflevector <4 x float> %i.aeg, <4 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afc = shufflevector <4 x float> %i.aeo, <4 x float> %i.aes, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afd = shufflevector <16 x float> %i.afb, <16 x float> %i.afc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.afe = shufflevector <4 x float> %i.aeu, <4 x float> %i.aew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aff = shufflevector <4 x float> %i.aey, <4 x float> %i.afa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afg = shufflevector <16 x float> %i.afe, <16 x float> %i.aff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.afh = fmul fast <16 x float> %i.adr, %i.afd
  %i.afi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afg, <16 x float> nofpclass(nan inf) %i.aea, <16 x float> nofpclass(nan inf) %i.afh)
  %i.afj = shl nuw nsw i64 %indvars.iv.i101, 2    ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.0335522.i, i64 %i.afj
  store <16 x float> %i.afi, ptr %i.afk, align 1, !tbaa !20
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.aee ; 2 uses
  %i.afm = load <4 x float>, ptr %i.afl, align 16, !tbaa !20
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.aei ; 2 uses
  %i.afo = load <4 x float>, ptr %i.afn, align 16, !tbaa !20
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.aem ; 2 uses
  %i.afq = load <4 x float>, ptr %i.afp, align 16, !tbaa !20
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.aeq ; 2 uses
  %i.afs = load <4 x float>, ptr %i.afr, align 16, !tbaa !20
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %i.afu = load <4 x float>, ptr %i.aft, align 16, !tbaa !20
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %i.afw = load <4 x float>, ptr %i.afv, align 16, !tbaa !20
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.afy = load <4 x float>, ptr %i.afx, align 16, !tbaa !20
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.aga = load <4 x float>, ptr %i.afz, align 16, !tbaa !20
  %i.agb = shufflevector <4 x float> %i.afm, <4 x float> %i.afo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agc = shufflevector <4 x float> %i.afq, <4 x float> %i.afs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agd = shufflevector <16 x float> %i.agb, <16 x float> %i.agc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.age = shufflevector <4 x float> %i.afu, <4 x float> %i.afw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agf = shufflevector <4 x float> %i.afy, <4 x float> %i.aga, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agg = shufflevector <16 x float> %i.age, <16 x float> %i.agf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.agh = fmul fast <16 x float> %i.agd, %i.adr
  %i.agi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.agg, <16 x float> nofpclass(nan inf) %i.aea, <16 x float> nofpclass(nan inf) %i.agh)
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.0333523.i, i64 %i.afj
  store <16 x float> %i.agi, ptr %i.agj, align 1, !tbaa !20
  %i.agk = getelementptr inbounds nuw i8, ptr %.0322498.i, i64 32 ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i101, 4 ; 3 uses
  %i.agl = icmp slt i64 %indvars.iv.next.i102, %invariant.op.i72
  br i1 %i.agl, label %.lr.ph.i100, label %.preheader497.loopexit.i, !llvm.loop !181

.preheader495.loopexit.i:                         ; preds = %.lr.ph503.i
  %i.agm = trunc nuw nsw i64 %indvars.iv.next541.i to i32
  br label %.preheader495.i

.preheader495.i:                                  ; preds = %.preheader495.loopexit.i, %.preheader497.i
  %.1323.lcssa.i = phi ptr [ %.0322.lcssa.i, %.preheader497.i ], [ %i.ail, %.preheader495.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0321.lcssa.i, %.preheader497.i ], [ %i.agm, %.preheader495.loopexit.i ] ; 2 uses
  %i.agn = icmp slt i32 %.1.lcssa.i, %i.az
  br i1 %i.agn, label %.lr.ph508.preheader.i, label %.loopexit.i74

.lr.ph508.preheader.i:                            ; preds = %.preheader495.i
  %i.ago = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph508.i

.lr.ph503.i:                                      ; preds = %.lr.ph503.i, %.lr.ph503.preheader.i
  %indvars.iv540.i = phi i64 [ %i.adh, %.lr.ph503.preheader.i ], [ %indvars.iv.next541.i, %.lr.ph503.i ] ; 3 uses
  %indvars.iv538.i = phi i64 [ %i.adi, %.lr.ph503.preheader.i ], [ %indvars.iv.next539.i, %.lr.ph503.i ] ; 2 uses
  %.1323501.i = phi ptr [ %.0322.lcssa.i, %.lr.ph503.preheader.i ], [ %i.ail, %.lr.ph503.i ] ; 5 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv540.i
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !28
  %i.agr = shl nsw i32 %i.agq, 2
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv538.i
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !28
  %i.agu = shl nsw i32 %i.agt, 2
  %i.agv = load float, ptr %.1323501.i, align 4, !tbaa !60
  %i.agw = getelementptr inbounds nuw i8, ptr %.1323501.i, i64 8
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !60
  %i.agy = insertelement <4 x float> poison, float %i.agv, i64 0
  %i.agz = insertelement <4 x float> poison, float %i.agx, i64 0
  %i.aha = shufflevector <4 x float> %i.agy, <4 x float> %i.agz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1323501.i, i64 4
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !60
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1323501.i, i64 12
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !60
  %i.ahf = insertelement <4 x float> poison, float %i.ahc, i64 0
  %i.ahg = insertelement <4 x float> poison, float %i.ahe, i64 0
  %i.ahh = shufflevector <4 x float> %i.ahf, <4 x float> %i.ahg, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.ahi = sext i32 %i.agr to i64                 ; 2 uses
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.ahi ; 2 uses
  %i.ahk = load <4 x float>, ptr %i.ahj, align 16, !tbaa !20
  %i.ahl = sext i32 %i.agu to i64                 ; 2 uses
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.ahl ; 2 uses
  %i.ahn = load <4 x float>, ptr %i.ahm, align 16, !tbaa !20
  %i.aho = shufflevector <4 x float> %i.ahk, <4 x float> %i.ahn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahq = load <4 x float>, ptr %i.ahp, align 16, !tbaa !20
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.ahs = load <4 x float>, ptr %i.ahr, align 16, !tbaa !20
  %i.aht = shufflevector <4 x float> %i.ahq, <4 x float> %i.ahs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahu = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.ahi ; 2 uses
  %i.ahv = load <4 x float>, ptr %i.ahu, align 16, !tbaa !20
  %i.ahw = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.ahl ; 2 uses
  %i.ahx = load <4 x float>, ptr %i.ahw, align 16, !tbaa !20
  %i.ahy = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16
  %i.aia = load <4 x float>, ptr %i.ahz, align 16, !tbaa !20
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16
  %i.aic = load <4 x float>, ptr %i.aib, align 16, !tbaa !20
  %i.aid = shufflevector <4 x float> %i.aia, <4 x float> %i.aic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aie = fmul fast <8 x float> %i.aha, %i.aho
  %i.aif = fmul fast <8 x float> %i.ahy, %i.aha
  %i.aig = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aht, <8 x float> nofpclass(nan inf) %i.ahh, <8 x float> nofpclass(nan inf) %i.aie)
  %i.aih = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aid, <8 x float> nofpclass(nan inf) %i.ahh, <8 x float> nofpclass(nan inf) %i.aif)
  %i.aii = shl nuw nsw i64 %indvars.iv540.i, 2    ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %.0335522.i, i64 %i.aii
  store <8 x float> %i.aig, ptr %i.aij, align 1, !tbaa !20
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %.0333523.i, i64 %i.aii
  store <8 x float> %i.aih, ptr %i.aik, align 1, !tbaa !20
  %i.ail = getelementptr inbounds nuw i8, ptr %.1323501.i, i64 16 ; 2 uses
  %indvars.iv.next541.i = add nuw nsw i64 %indvars.iv540.i, 2 ; 3 uses
  %i.aim = icmp slt i64 %indvars.iv.next541.i, %invariant.op588.i
  %indvars.iv.next539.i = add nuw nsw i64 %indvars.iv538.i, 2
  br i1 %i.aim, label %.lr.ph503.i, label %.preheader495.loopexit.i, !llvm.loop !182

.lr.ph508.i:                                      ; preds = %.lr.ph508.i, %.lr.ph508.preheader.i
  %indvars.iv545.i = phi i64 [ %i.ago, %.lr.ph508.preheader.i ], [ %indvars.iv.next546.i, %.lr.ph508.i ] ; 3 uses
  %.2324506.i = phi ptr [ %.1323.lcssa.i, %.lr.ph508.preheader.i ], [ %i.ajn, %.lr.ph508.i ] ; 3 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv545.i
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !28
  %i.aip = shl nsw i32 %i.aio, 2
  %i.aiq = sext i32 %i.aip to i64                 ; 2 uses
  %i.air = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.aiq ; 2 uses
  %i.ais = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.aiq ; 2 uses
  %i.ait = load float, ptr %.2324506.i, align 4, !tbaa !60
  %i.aiu = insertelement <4 x float> poison, float %i.ait, i64 0
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.2324506.i, i64 4
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !60
  %i.aiy = insertelement <4 x float> poison, float %i.aix, i64 0
  %i.aiz = shufflevector <4 x float> %i.aiy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aja = load <4 x float>, ptr %i.air, align 16, !tbaa !20
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.air, i64 16
  %i.ajc = load <4 x float>, ptr %i.ajb, align 16, !tbaa !20
  %i.ajd = load <4 x float>, ptr %i.ais, align 16, !tbaa !20
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.ajf = load <4 x float>, ptr %i.aje, align 16, !tbaa !20
  %i.ajg = fmul fast <4 x float> %i.aja, %i.aiv
  %i.ajh = fmul fast <4 x float> %i.ajd, %i.aiv
  %i.aji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajc, <4 x float> nofpclass(nan inf) %i.aiz, <4 x float> nofpclass(nan inf) %i.ajg)
  %i.ajj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajf, <4 x float> nofpclass(nan inf) %i.aiz, <4 x float> nofpclass(nan inf) %i.ajh)
  %i.ajk = shl nuw nsw i64 %indvars.iv545.i, 2    ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0335522.i, i64 %i.ajk
  store <4 x float> %i.aji, ptr %i.ajl, align 16, !tbaa !20
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %.0333523.i, i64 %i.ajk
  store <4 x float> %i.ajj, ptr %i.ajm, align 16, !tbaa !20
  %i.ajn = getelementptr inbounds nuw i8, ptr %.2324506.i, i64 8
  %indvars.iv.next546.i = add nuw nsw i64 %indvars.iv545.i, 1 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next546.i, %wide.trip.count.i73
  br i1 %exitcond.not.i99, label %.loopexit.i74, label %.lr.ph508.i, !llvm.loop !183

.loopexit.i74:                                    ; preds = %.lr.ph508.i, %.lr.ph521.i, %.preheader495.i, %.preheader.i103, %bb.bo
  %.1336.i = phi ptr [ %.0335522.i, %bb.bo ], [ %.0333523.i, %.preheader.i103 ], [ %.0335522.i, %.preheader495.i ], [ %.0333523.i, %.lr.ph521.i ], [ %.0335522.i, %.lr.ph508.i ] ; 8 uses
  %.1334.i = phi ptr [ %.0333523.i, %bb.bo ], [ %.0335522.i, %.preheader.i103 ], [ %.0333523.i, %.preheader495.i ], [ %.0335522.i, %.lr.ph521.i ], [ %.0333523.i, %.lr.ph508.i ] ; 8 uses
  %.1334.i399 = ptrtoaddr ptr %.1334.i to i64
  %.1336.i401 = ptrtoaddr ptr %.1336.i to i64
  %i.ajo = mul i64 %i.wy, %indvars.iv563.i
end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 24
  %i.bih = load ptr, ptr %i.big, align 8
  invoke void %i.bih(ptr noundef nonnull align 8 dereferenceable(8) %i.bid, ptr noundef %i.bie)
          to label %_ZN4ncnn3MatD2Ev.exit1606.i unwind label %bb.do, !inline_history !1

bb.dm:                                            ; preds = %bb.dk
  %.not.i1647.i = icmp eq ptr %i.bie, null
  br i1 %.not.i1647.i, label %_ZN4ncnn3MatD2Ev.exit1606.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @free(ptr noundef nonnull %i.bie) #6
  br label %_ZN4ncnn3MatD2Ev.exit1606.i

bb.do:                                            ; preds = %bb.dl
  %i.bii = landingpad { ptr, i32 }
          catch ptr null
  %i.bij = extractvalue { ptr, i32 } %i.bii, 0
  call void @__clang_call_terminate(ptr %i.bij) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1606.i:                      ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj, %._crit_edge.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.bik = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %.not.i1612.i = icmp eq ptr %i.bik, null
  br i1 %.not.i1612.i, label %_ZN4ncnn3MatD2Ev.exit1605.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1606.i
  %i.bil = atomicrmw add ptr %i.bik, i32 -1 acq_rel, align 4
  %i.bim = icmp eq i32 %i.bil, 1
  br i1 %i.bim, label %bb.dq, label %_ZN4ncnn3MatD2Ev.exit1605.i

bb.dq:                                            ; preds = %bb.dp
  %i.bin = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 3 uses
  %.not3.i1613.i = icmp eq ptr %i.bin, null
  %i.bio = load ptr, ptr %16, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i1613.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bip = load ptr, ptr %i.bin, align 8, !tbaa !13
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 24
  %i.bir = load ptr, ptr %i.biq, align 8
  invoke void %i.bir(ptr noundef nonnull align 8 dereferenceable(8) %i.bin, ptr noundef %i.bio)
          to label %_ZN4ncnn3MatD2Ev.exit1605.i unwind label %bb.du, !inline_history !1

bb.ds:                                            ; preds = %bb.dq
  %.not.i1645.i = icmp eq ptr %i.bio, null
  br i1 %.not.i1645.i, label %_ZN4ncnn3MatD2Ev.exit1605.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @free(ptr noundef nonnull %i.bio) #6
  br label %_ZN4ncnn3MatD2Ev.exit1605.i

bb.du:                                            ; preds = %bb.dr
  %i.bis = landingpad { ptr, i32 }
          catch ptr null
  %i.bit = extractvalue { ptr, i32 } %i.bis, 0
  call void @__clang_call_terminate(ptr %i.bit) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1605.i:                      ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dp, %_ZN4ncnn3MatD2Ev.exit1606.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.biu = load ptr, ptr %i.at, align 8, !tbaa !41 ; 2 uses
  %.not.i1616.i = icmp eq ptr %i.biu, null
  br i1 %.not.i1616.i, label %_ZN4ncnn3MatD2Ev.exit1604.i, label %bb.dv

bb.dv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1605.i
  %i.biv = atomicrmw add ptr %i.biu, i32 -1 acq_rel, align 4
  %i.biw = icmp eq i32 %i.biv, 1
  br i1 %i.biw, label %bb.dw, label %_ZN4ncnn3MatD2Ev.exit1604.i

bb.dw:                                            ; preds = %bb.dv
  %i.bix = load ptr, ptr %i.au, align 8, !tbaa !42 ; 3 uses
  %.not3.i1617.i = icmp eq ptr %i.bix, null
  %i.biy = load ptr, ptr %15, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i1617.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.biz = load ptr, ptr %i.bix, align 8, !tbaa !13
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 24
  %i.bjb = load ptr, ptr %i.bja, align 8
  invoke void %i.bjb(ptr noundef nonnull align 8 dereferenceable(8) %i.bix, ptr noundef %i.biy)
          to label %_ZN4ncnn3MatD2Ev.exit1604.i unwind label %bb.ea, !inline_history !1

bb.dy:                                            ; preds = %bb.dw
  %.not.i1643.i = icmp eq ptr %i.biy, null
  br i1 %.not.i1643.i, label %_ZN4ncnn3MatD2Ev.exit1604.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @free(ptr noundef nonnull %i.biy) #6
  br label %_ZN4ncnn3MatD2Ev.exit1604.i

bb.ea:                                            ; preds = %bb.dx
  %i.bjc = landingpad { ptr, i32 }
          catch ptr null
  %i.bjd = extractvalue { ptr, i32 } %i.bjc, 0
  call void @__clang_call_terminate(ptr %i.bjd) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1604.i:                      ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dv, %_ZN4ncnn3MatD2Ev.exit1605.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.bje = load ptr, ptr %i.aq, align 8, !tbaa !41 ; 2 uses
  %.not.i1620.i = icmp eq ptr %i.bje, null
  br i1 %.not.i1620.i, label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1604.i
  %i.bjf = atomicrmw add ptr %i.bje, i32 -1 acq_rel, align 4
  %i.bjg = icmp eq i32 %i.bjf, 1
  br i1 %i.bjg, label %bb.ec, label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.ec:                                            ; preds = %bb.eb
  %i.bjh = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 3 uses
  %.not3.i1621.i = icmp eq ptr %i.bjh, null
  %i.bji = load ptr, ptr %14, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i1621.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bjj = load ptr, ptr %i.bjh, align 8, !tbaa !13
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 24
  %i.bjl = load ptr, ptr %i.bjk, align 8
  invoke void %i.bjl(ptr noundef nonnull align 8 dereferenceable(8) %i.bjh, ptr noundef %i.bji)
          to label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.eg, !inline_history !1

bb.ee:                                            ; preds = %bb.ec
  %.not.i1641.i = icmp eq ptr %i.bji, null
  br i1 %.not.i1641.i, label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @free(ptr noundef nonnull %i.bji) #6
  br label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.eg:                                            ; preds = %bb.ed
  %i.bjm = landingpad { ptr, i32 }
          catch ptr null
  %i.bjn = extractvalue { ptr, i32 } %i.bjm, 0
  call void @__clang_call_terminate(ptr %i.bjn) #27
  unreachable

bb.eh:                                            ; preds = %.noexc106
  %i.bjo = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit1601.i

bb.ei:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1655.i
  %i.bjp = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit1602.i

bb.ej:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1653.i
  %i.bjq = landingpad { ptr, i32 }
          catch ptr null                          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.bjr = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %.not.i1624.i = icmp eq ptr %i.bjr, null
  br i1 %.not.i1624.i, label %_ZN4ncnn3MatD2Ev.exit1602.i, label %bb.es

bb.ek:                                            ; preds = %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81, %.lr.ph2359.i
  %indvars.iv2435.i = phi i64 [ 0, %.lr.ph2359.i ], [ %indvars.iv.next2436.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 4 uses
  %.02358.i = phi ptr [ %i.bhm, %.lr.ph2359.i ], [ %i.drt, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 5 uses
  %.013752356.i = phi i32 [ -3, %.lr.ph2359.i ], [ %i.bjv, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 4 uses
  %.013762355.i = phi ptr [ %i.bhp, %.lr.ph2359.i ], [ %.11377.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 12 uses
  %.013782354.i = phi ptr [ %i.bhq, %.lr.ph2359.i ], [ %.11379.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 15 uses
  %.013802353.i = phi ptr [ %i.bhr, %.lr.ph2359.i ], [ %.11381.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 18 uses
  %.013822352.i = phi ptr [ %i.bhs, %.lr.ph2359.i ], [ %.11383.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81 ] ; 21 uses
  %i.bjs = mul i64 %i.bhz, %indvars.iv2435.i
  %i.bjt = add i64 %i.bhy, %i.bjs                 ; 4 uses
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bhn, i64 %indvars.iv2435.i
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !28 ; 15 uses
  %i.bjw = icmp eq i32 %i.bjv, %.013752356.i
  br i1 %i.bjw, label %.loopexit.i74, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.bjx = add nsw i32 %.013752356.i, 1
  %i.bjy = icmp eq i32 %i.bjv, %i.bjx
  br i1 %i.bjy, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.bjz = add nsw i32 %i.bjv, 2
  %i.bka = sext i32 %i.bjz to i64
  %i.bkb = mul i64 %i.bhx, %i.bka
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bkb ; 7 uses
  br i1 %i.bht, label %.lr.ph2341.i, label %.preheader2292.i

.preheader2292.loopexit.i:                        ; preds = %.lr.ph2341.i
  %i.bkd = trunc nuw nsw i64 %indvars.iv.next2421.i to i32
  br label %.preheader2292.i

.preheader2292.i:                                 ; preds = %.preheader2292.loopexit.i, %bb.em
  %.01371.lcssa.i = phi ptr [ %i.bhk, %bb.em ], [ %i.bnz, %.preheader2292.loopexit.i ] ; 2 uses
  %.01368.lcssa.i = phi i32 [ 0, %bb.em ], [ %i.bkd, %.preheader2292.loopexit.i ] ; 3 uses
  %i.bke = or disjoint i32 %.01368.lcssa.i, 1
  %i.bkf = icmp slt i32 %i.bke, %i.bx
  br i1 %i.bkf, label %.lr.ph2346.preheader.i, label %.preheader.i103

.lr.ph2346.preheader.i:                           ; preds = %.preheader2292.i
  %i.bkg = zext nneg i32 %.01368.lcssa.i to i64   ; 2 uses
  %i.bkh = add nuw nsw i64 %i.bkg, 1
  br label %.lr.ph2346.i

.lr.ph2341.i:                                     ; preds = %bb.em, %.lr.ph2341.i
  %indvars.iv2420.i = phi i64 [ %indvars.iv.next2421.i, %.lr.ph2341.i ], [ 0, %bb.em ] ; 3 uses
  %.013712339.i = phi ptr [ %i.bnz, %.lr.ph2341.i ], [ %i.bhk, %bb.em ] ; 11 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2420.i
  %26 = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 32
  %28 = insertelement <8 x ptr> poison, ptr %.013712339.i, i64 0
  %29 = insertelement <8 x ptr> %28, ptr %26, i64 1
  %30 = insertelement <8 x ptr> %29, ptr %27, i64 2
  %i.bkj = shufflevector <8 x ptr> %30, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.bkk = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.bkj, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.bkl = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 48
  %i.bkm = load float, ptr %i.bkl, align 4, !tbaa !60
  %i.bkn = shufflevector <8 x float> %i.bkk, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bko = insertelement <4 x float> poison, float %i.bkm, i64 0
  %i.bkp = shufflevector <4 x float> %i.bko, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bkq = shufflevector <16 x float> %i.bkn, <16 x float> %i.bkp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.bkr = getelementptr inbounds nuw i8, ptr %.013712339.i, <3 x i64> <i64 4, i64 20, i64 36>
  %i.bks = shufflevector <3 x ptr> %i.bkr, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.bkt = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.bks, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.bku = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 52
  %i.bkv = load float, ptr %i.bku, align 4, !tbaa !60
  %i.bkw = shufflevector <8 x float> %i.bkt, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bkx = insertelement <4 x float> poison, float %i.bkv, i64 0
  %i.bky = shufflevector <4 x float> %i.bkx, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bkz = shufflevector <16 x float> %i.bkw, <16 x float> %i.bky, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.bla = getelementptr inbounds nuw i8, ptr %.013712339.i, <3 x i64> <i64 8, i64 24, i64 40>
  %i.blb = shufflevector <3 x ptr> %i.bla, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.blc = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.blb, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.bld = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 56
  %i.ble = load float, ptr %i.bld, align 4, !tbaa !60
  %i.blf = shufflevector <8 x float> %i.blc, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.blg = insertelement <4 x float> poison, float %i.ble, i64 0
  %i.blh = shufflevector <4 x float> %i.blg, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bli = shufflevector <16 x float> %i.blf, <16 x float> %i.blh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.blj = getelementptr inbounds nuw i8, ptr %.013712339.i, <3 x i64> <i64 12, i64 28, i64 44>
  %i.blk = shufflevector <3 x ptr> %i.blj, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.bll = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.blk, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.blm = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 60
  %i.bln = load float, ptr %i.blm, align 4, !tbaa !60
  %i.blo = shufflevector <8 x float> %i.bll, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.blp = insertelement <4 x float> poison, float %i.bln, i64 0
  %i.blq = shufflevector <4 x float> %i.blp, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.blr = shufflevector <16 x float> %i.blo, <16 x float> %i.blq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.bls = load <4 x i32>, ptr %i.bki, align 4, !tbaa !28
  %i.blt = shl nsw <4 x i32> %i.bls, splat (i32 2) ; 4 uses
  %i.blu = extractelement <4 x i32> %i.blt, i64 0
  %i.blv = sext i32 %i.blu to i64
  %i.blw = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.blv ; 4 uses
  %i.blx = getelementptr inbounds i8, ptr %i.blw, i64 -16
  %i.bly = load <4 x float>, ptr %i.blx, align 16, !tbaa !20
  %i.blz = extractelement <4 x i32> %i.blt, i64 1
  %i.bma = sext i32 %i.blz to i64
  %i.bmb = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bma ; 4 uses
  %i.bmc = getelementptr inbounds i8, ptr %i.bmb, i64 -16
  %i.bmd = load <4 x float>, ptr %i.bmc, align 16, !tbaa !20
  %i.bme = extractelement <4 x i32> %i.blt, i64 2
  %i.bmf = sext i32 %i.bme to i64
  %i.bmg = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bmf ; 4 uses
  %i.bmh = getelementptr inbounds i8, ptr %i.bmg, i64 -16
  %i.bmi = load <4 x float>, ptr %i.bmh, align 16, !tbaa !20
  %i.bmj = extractelement <4 x i32> %i.blt, i64 3
  %i.bmk = sext i32 %i.bmj to i64
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bmk ; 4 uses
  %i.bmm = getelementptr inbounds i8, ptr %i.bml, i64 -16
  %i.bmn = load <4 x float>, ptr %i.bmm, align 16, !tbaa !20
  %i.bmo = shufflevector <4 x float> %i.bly, <4 x float> %i.bmd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmp = shufflevector <4 x float> %i.bmi, <4 x float> %i.bmn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmq = shufflevector <16 x float> %i.bmo, <16 x float> %i.bmp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bmr = load <4 x float>, ptr %i.blw, align 16, !tbaa !20
  %i.bms = load <4 x float>, ptr %i.bmb, align 16, !tbaa !20
  %i.bmt = load <4 x float>, ptr %i.bmg, align 16, !tbaa !20
  %i.bmu = load <4 x float>, ptr %i.bml, align 16, !tbaa !20
  %i.bmv = shufflevector <4 x float> %i.bmr, <4 x float> %i.bms, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmw = shufflevector <4 x float> %i.bmt, <4 x float> %i.bmu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmx = shufflevector <16 x float> %i.bmv, <16 x float> %i.bmw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.blw, i64 16
  %i.bmz = load <4 x float>, ptr %i.bmy, align 16, !tbaa !20
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmb, i64 16
  %i.bnb = load <4 x float>, ptr %i.bna, align 16, !tbaa !20
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmg, i64 16
  %i.bnd = load <4 x float>, ptr %i.bnc, align 16, !tbaa !20
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  %i.bnf = load <4 x float>, ptr %i.bne, align 16, !tbaa !20
  %i.bng = shufflevector <4 x float> %i.bmz, <4 x float> %i.bnb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnh = shufflevector <4 x float> %i.bnd, <4 x float> %i.bnf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bni = shufflevector <16 x float> %i.bng, <16 x float> %i.bnh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.blw, i64 32
  %i.bnk = load <4 x float>, ptr %i.bnj, align 16, !tbaa !20
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bmb, i64 32
  %i.bnm = load <4 x float>, ptr %i.bnl, align 16, !tbaa !20
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bmg, i64 32
  %i.bno = load <4 x float>, ptr %i.bnn, align 16, !tbaa !20
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bml, i64 32
  %i.bnq = load <4 x float>, ptr %i.bnp, align 16, !tbaa !20
  %i.bnr = shufflevector <4 x float> %i.bnk, <4 x float> %i.bnm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bns = shufflevector <4 x float> %i.bno, <4 x float> %i.bnq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnt = shufflevector <16 x float> %i.bnr, <16 x float> %i.bns, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bnu = fmul fast <16 x float> %i.bmq, %i.bkq
  %i.bnv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmx, <16 x float> nofpclass(nan inf) %i.bkz, <16 x float> nofpclass(nan inf) %i.bnu)
  %i.bnw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bni, <16 x float> nofpclass(nan inf) %i.bli, <16 x float> nofpclass(nan inf) %i.bnv)
  %i.bnx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bnt, <16 x float> nofpclass(nan inf) %i.blr, <16 x float> nofpclass(nan inf) %i.bnw)
  %.idx.i105 = shl nuw nsw i64 %indvars.iv2420.i, 4
  %i.bny = getelementptr inbounds nuw i8, ptr %.013822352.i, i64 %.idx.i105
  store <16 x float> %i.bnx, ptr %i.bny, align 1, !tbaa !20
  %i.bnz = getelementptr inbounds nuw i8, ptr %.013712339.i, i64 64 ; 2 uses
  %indvars.iv.next2421.i = add nuw nsw i64 %indvars.iv2420.i, 4 ; 3 uses
  %i.boa = icmp slt i64 %indvars.iv.next2421.i, %invariant.op.i72
  br i1 %i.boa, label %.lr.ph2341.i, label %.preheader2292.loopexit.i, !llvm.loop !229

.preheader.loopexit.i104:                         ; preds = %.lr.ph2346.i
  %i.bob = trunc nuw nsw i64 %indvars.iv.next2426.i to i32
  br label %.preheader.i103

.preheader.i103:                                  ; preds = %.preheader.loopexit.i104, %.preheader2292.i
  %.11372.lcssa.i = phi ptr [ %.01371.lcssa.i, %.preheader2292.i ], [ %i.bqm, %.preheader.loopexit.i104 ]
  %.11369.lcssa.i = phi i32 [ %.01368.lcssa.i, %.preheader2292.i ], [ %i.bob, %.preheader.loopexit.i104 ] ; 2 uses
  %i.boc = icmp slt i32 %.11369.lcssa.i, %i.bx
  br i1 %i.boc, label %.lr.ph2351.preheader.i, label %.loopexit.i74

.lr.ph2351.preheader.i:                           ; preds = %.preheader.i103
  %i.bod = zext nneg i32 %.11369.lcssa.i to i64
  br label %.lr.ph2351.i

.lr.ph2346.i:                                     ; preds = %.lr.ph2346.i, %.lr.ph2346.preheader.i
  %indvars.iv2425.i = phi i64 [ %i.bkg, %.lr.ph2346.preheader.i ], [ %indvars.iv.next2426.i, %.lr.ph2346.i ] ; 3 uses
  %indvars.iv2423.i = phi i64 [ %i.bkh, %.lr.ph2346.preheader.i ], [ %indvars.iv.next2424.i, %.lr.ph2346.i ] ; 2 uses
  %.113722344.i = phi ptr [ %.01371.lcssa.i, %.lr.ph2346.preheader.i ], [ %i.bqm, %.lr.ph2346.i ] ; 9 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2425.i
  %i.bof = load i32, ptr %i.boe, align 4, !tbaa !28
  %i.bog = shl nsw i32 %i.bof, 2
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2423.i
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !28
  %i.boj = shl nsw i32 %i.boi, 2
  %i.bok = load float, ptr %.113722344.i, align 4, !tbaa !60
  %i.bol = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 16
  %i.bom = load float, ptr %i.bol, align 4, !tbaa !60
  %i.bon = insertelement <4 x float> poison, float %i.bok, i64 0
  %i.boo = insertelement <4 x float> poison, float %i.bom, i64 0
  %i.bop = shufflevector <4 x float> %i.bon, <4 x float> %i.boo, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.boq = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 4
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !60
  %i.bos = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 20
  %i.bot = load float, ptr %i.bos, align 4, !tbaa !60
  %i.bou = insertelement <4 x float> poison, float %i.bor, i64 0
  %i.bov = insertelement <4 x float> poison, float %i.bot, i64 0
  %i.bow = shufflevector <4 x float> %i.bou, <4 x float> %i.bov, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.box = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 8
  %i.boy = load float, ptr %i.box, align 4, !tbaa !60
  %i.boz = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 24
  %i.bpa = load float, ptr %i.boz, align 4, !tbaa !60
  %i.bpb = insertelement <4 x float> poison, float %i.boy, i64 0
  %i.bpc = insertelement <4 x float> poison, float %i.bpa, i64 0
  %i.bpd = shufflevector <4 x float> %i.bpb, <4 x float> %i.bpc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bpe = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 12
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !60
  %i.bpg = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 28
  %i.bph = load float, ptr %i.bpg, align 4, !tbaa !60
  %i.bpi = insertelement <4 x float> poison, float %i.bpf, i64 0
  %i.bpj = insertelement <4 x float> poison, float %i.bph, i64 0
  %i.bpk = shufflevector <4 x float> %i.bpi, <4 x float> %i.bpj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.bpl = sext i32 %i.bog to i64
  %i.bpm = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bpl ; 4 uses
  %i.bpn = getelementptr inbounds i8, ptr %i.bpm, i64 -16
  %i.bpo = load <4 x float>, ptr %i.bpn, align 16, !tbaa !20
  %i.bpp = sext i32 %i.boj to i64
  %i.bpq = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bpp ; 4 uses
  %i.bpr = getelementptr inbounds i8, ptr %i.bpq, i64 -16
  %i.bps = load <4 x float>, ptr %i.bpr, align 16, !tbaa !20
  %i.bpt = shufflevector <4 x float> %i.bpo, <4 x float> %i.bps, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpu = load <4 x float>, ptr %i.bpm, align 16, !tbaa !20
  %i.bpv = load <4 x float>, ptr %i.bpq, align 16, !tbaa !20
  %i.bpw = shufflevector <4 x float> %i.bpu, <4 x float> %i.bpv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpm, i64 16
  %i.bpy = load <4 x float>, ptr %i.bpx, align 16, !tbaa !20
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpq, i64 16
  %i.bqa = load <4 x float>, ptr %i.bpz, align 16, !tbaa !20
  %i.bqb = shufflevector <4 x float> %i.bpy, <4 x float> %i.bqa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpm, i64 32
  %i.bqd = load <4 x float>, ptr %i.bqc, align 16, !tbaa !20
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpq, i64 32
  %i.bqf = load <4 x float>, ptr %i.bqe, align 16, !tbaa !20
  %i.bqg = shufflevector <4 x float> %i.bqd, <4 x float> %i.bqf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqh = fmul fast <8 x float> %i.bpt, %i.bop
  %i.bqi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bpw, <8 x float> nofpclass(nan inf) %i.bow, <8 x float> nofpclass(nan inf) %i.bqh)
  %i.bqj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bqb, <8 x float> nofpclass(nan inf) %i.bpd, <8 x float> nofpclass(nan inf) %i.bqi)
  %i.bqk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bqg, <8 x float> nofpclass(nan inf) %i.bpk, <8 x float> nofpclass(nan inf) %i.bqj)
  %.idx2465.i = shl nuw nsw i64 %indvars.iv2425.i, 4
  %i.bql = getelementptr inbounds nuw i8, ptr %.013822352.i, i64 %.idx2465.i
  store <8 x float> %i.bqk, ptr %i.bql, align 1, !tbaa !20
  %i.bqm = getelementptr inbounds nuw i8, ptr %.113722344.i, i64 32 ; 2 uses
  %indvars.iv.next2426.i = add nuw nsw i64 %indvars.iv2425.i, 2 ; 3 uses
  %i.bqn = icmp slt i64 %indvars.iv.next2426.i, %invariant.op2478.i
  %indvars.iv.next2424.i = add nuw nsw i64 %indvars.iv2423.i, 2
  br i1 %i.bqn, label %.lr.ph2346.i, label %.preheader.loopexit.i104, !llvm.loop !230

.lr.ph2351.i:                                     ; preds = %.lr.ph2351.i, %.lr.ph2351.preheader.i
  %indvars.iv2430.i = phi i64 [ %i.bod, %.lr.ph2351.preheader.i ], [ %indvars.iv.next2431.i, %.lr.ph2351.i ] ; 3 uses
  %.213732349.i = phi ptr [ %.11372.lcssa.i, %.lr.ph2351.preheader.i ], [ %i.bru, %.lr.ph2351.i ] ; 5 uses
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2430.i
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !28
  %i.bqq = shl nsw i32 %i.bqp, 2
  %i.bqr = sext i32 %i.bqq to i64
  %i.bqs = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bqr ; 4 uses
  %i.bqt = load float, ptr %.213732349.i, align 4, !tbaa !60
  %i.bqu = insertelement <4 x float> poison, float %i.bqt, i64 0
  %i.bqv = shufflevector <4 x float> %i.bqu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bqw = getelementptr inbounds nuw i8, ptr %.213732349.i, i64 4
  %i.bqx = load float, ptr %i.bqw, align 4, !tbaa !60
  %i.bqy = insertelement <4 x float> poison, float %i.bqx, i64 0
  %i.bqz = shufflevector <4 x float> %i.bqy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bra = getelementptr inbounds nuw i8, ptr %.213732349.i, i64 8
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !60
  %i.brc = insertelement <4 x float> poison, float %i.brb, i64 0
  %i.brd = shufflevector <4 x float> %i.brc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bre = getelementptr inbounds nuw i8, ptr %.213732349.i, i64 12
  %i.brf = load float, ptr %i.bre, align 4, !tbaa !60
  %i.brg = insertelement <4 x float> poison, float %i.brf, i64 0
  %i.brh = shufflevector <4 x float> %i.brg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bri = getelementptr inbounds i8, ptr %i.bqs, i64 -16
  %i.brj = load <4 x float>, ptr %i.bri, align 16, !tbaa !20
  %i.brk = load <4 x float>, ptr %i.bqs, align 16, !tbaa !20
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bqs, i64 16
  %i.brm = load <4 x float>, ptr %i.brl, align 16, !tbaa !20
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bqs, i64 32
  %i.bro = load <4 x float>, ptr %i.brn, align 16, !tbaa !20
  %i.brp = fmul fast <4 x float> %i.brj, %i.bqv
  %i.brq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brk, <4 x float> nofpclass(nan inf) %i.bqz, <4 x float> nofpclass(nan inf) %i.brp)
  %i.brr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brm, <4 x float> nofpclass(nan inf) %i.brd, <4 x float> nofpclass(nan inf) %i.brq)
  %i.brs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bro, <4 x float> nofpclass(nan inf) %i.brh, <4 x float> nofpclass(nan inf) %i.brr)
  %.idx2466.i = shl nuw nsw i64 %indvars.iv2430.i, 4
  %i.brt = getelementptr inbounds nuw i8, ptr %.013822352.i, i64 %.idx2466.i
  store <4 x float> %i.brs, ptr %i.brt, align 16, !tbaa !20
  %i.bru = getelementptr inbounds nuw i8, ptr %.213732349.i, i64 16
  %indvars.iv.next2431.i = add nuw nsw i64 %indvars.iv2430.i, 1 ; 2 uses
  %exitcond2434.not.i = icmp eq i64 %indvars.iv.next2431.i, %wide.trip.count.i73
  br i1 %exitcond2434.not.i, label %.loopexit.i74, label %.lr.ph2351.i, !llvm.loop !231

bb.en:                                            ; preds = %bb.el
  %i.brv = add nsw i32 %.013752356.i, 2
  %i.brw = icmp eq i32 %i.bjv, %i.brv
  br i1 %i.brw, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.brx = add nsw i32 %i.bjv, 1
  %i.bry = sext i32 %i.brx to i64
  %i.brz = mul i64 %i.bhx, %i.bry
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.brz ; 7 uses
  %i.bsb = add nsw i32 %i.bjv, 2
  %i.bsc = sext i32 %i.bsb to i64
  %i.bsd = mul i64 %i.bhx, %i.bsc
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bsd ; 7 uses
  br i1 %i.bht, label %.lr.ph2328.i, label %.preheader2295.i

.preheader2295.loopexit.i:                        ; preds = %.lr.ph2328.i
  %i.bsf = trunc nuw nsw i64 %indvars.iv.next2406.i to i32
  br label %.preheader2295.i

.preheader2295.i:                                 ; preds = %.preheader2295.loopexit.i, %bb.eo
  %.01362.lcssa.i = phi ptr [ %i.bhk, %bb.eo ], [ %i.bxz, %.preheader2295.loopexit.i ] ; 2 uses
  %.01359.lcssa.i = phi i32 [ 0, %bb.eo ], [ %i.bsf, %.preheader2295.loopexit.i ] ; 3 uses
  %i.bsg = or disjoint i32 %.01359.lcssa.i, 1
  %i.bsh = icmp slt i32 %i.bsg, %i.bx
  br i1 %i.bsh, label %.lr.ph2333.preheader.i, label %.preheader2293.i

.lr.ph2333.preheader.i:                           ; preds = %.preheader2295.i
  %i.bsi = zext nneg i32 %.01359.lcssa.i to i64   ; 2 uses
  %i.bsj = add nuw nsw i64 %i.bsi, 1
  br label %.lr.ph2333.i

.lr.ph2328.i:                                     ; preds = %bb.eo, %.lr.ph2328.i
  %indvars.iv2405.i = phi i64 [ %indvars.iv.next2406.i, %.lr.ph2328.i ], [ 0, %bb.eo ] ; 3 uses
  %.013622326.i = phi ptr [ %i.bxz, %.lr.ph2328.i ], [ %i.bhk, %bb.eo ] ; 11 uses
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2405.i
  %31 = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 16
  %32 = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 32
  %33 = insertelement <8 x ptr> poison, ptr %.013622326.i, i64 0
  %34 = insertelement <8 x ptr> %33, ptr %31, i64 1
  %35 = insertelement <8 x ptr> %34, ptr %32, i64 2
  %i.bsl = shufflevector <8 x ptr> %35, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.bsm = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.bsl, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.bsn = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 48
  %i.bso = load float, ptr %i.bsn, align 4, !tbaa !60
  %i.bsp = shufflevector <8 x float> %i.bsm, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bsq = insertelement <4 x float> poison, float %i.bso, i64 0
  %i.bsr = shufflevector <4 x float> %i.bsq, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bss = shufflevector <16 x float> %i.bsp, <16 x float> %i.bsr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %.013622326.i, <3 x i64> <i64 4, i64 20, i64 36>
  %i.bsu = shufflevector <3 x ptr> %i.bst, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.bsv = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.bsu, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.bsw = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 52
  %i.bsx = load float, ptr %i.bsw, align 4, !tbaa !60
  %i.bsy = shufflevector <8 x float> %i.bsv, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bsz = insertelement <4 x float> poison, float %i.bsx, i64 0
  %i.bta = shufflevector <4 x float> %i.bsz, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.btb = shufflevector <16 x float> %i.bsy, <16 x float> %i.bta, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %.013622326.i, <3 x i64> <i64 8, i64 24, i64 40>
  %i.btd = shufflevector <3 x ptr> %i.btc, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.bte = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.btd, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.btf = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 56
  %i.btg = load float, ptr %i.btf, align 4, !tbaa !60
  %i.bth = shufflevector <8 x float> %i.bte, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bti = insertelement <4 x float> poison, float %i.btg, i64 0
  %i.btj = shufflevector <4 x float> %i.bti, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.btk = shufflevector <16 x float> %i.bth, <16 x float> %i.btj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %.013622326.i, <3 x i64> <i64 12, i64 28, i64 44>
  %i.btm = shufflevector <3 x ptr> %i.btl, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.btn = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.btm, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.bto = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 60
  %i.btp = load float, ptr %i.bto, align 4, !tbaa !60
  %i.btq = shufflevector <8 x float> %i.btn, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.btr = insertelement <4 x float> poison, float %i.btp, i64 0
  %i.bts = shufflevector <4 x float> %i.btr, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.btt = shufflevector <16 x float> %i.btq, <16 x float> %i.bts, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.btu = load <4 x i32>, ptr %i.bsk, align 4, !tbaa !28
  %i.btv = shl nsw <4 x i32> %i.btu, splat (i32 2) ; 4 uses
  %i.btw = extractelement <4 x i32> %i.btv, i64 0
  %i.btx = sext i32 %i.btw to i64                 ; 2 uses
  %i.bty = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.btx ; 4 uses
  %i.btz = getelementptr inbounds i8, ptr %i.bty, i64 -16
  %i.bua = load <4 x float>, ptr %i.btz, align 16, !tbaa !20
  %i.bub = extractelement <4 x i32> %i.btv, i64 1
  %i.buc = sext i32 %i.bub to i64                 ; 2 uses
  %i.bud = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.buc ; 4 uses
  %i.bue = getelementptr inbounds i8, ptr %i.bud, i64 -16
  %i.buf = load <4 x float>, ptr %i.bue, align 16, !tbaa !20
  %i.bug = extractelement <4 x i32> %i.btv, i64 2
  %i.buh = sext i32 %i.bug to i64                 ; 2 uses
  %i.bui = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.buh ; 4 uses
  %i.buj = getelementptr inbounds i8, ptr %i.bui, i64 -16
  %i.buk = load <4 x float>, ptr %i.buj, align 16, !tbaa !20
  %i.bul = extractelement <4 x i32> %i.btv, i64 3
  %i.bum = sext i32 %i.bul to i64                 ; 2 uses
  %i.bun = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.bum ; 4 uses
  %i.buo = getelementptr inbounds i8, ptr %i.bun, i64 -16
  %i.bup = load <4 x float>, ptr %i.buo, align 16, !tbaa !20
  %i.buq = shufflevector <4 x float> %i.bua, <4 x float> %i.buf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bur = shufflevector <4 x float> %i.buk, <4 x float> %i.bup, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bus = shufflevector <16 x float> %i.buq, <16 x float> %i.bur, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.but = load <4 x float>, ptr %i.bty, align 16, !tbaa !20
  %i.buu = load <4 x float>, ptr %i.bud, align 16, !tbaa !20
  %i.buv = load <4 x float>, ptr %i.bui, align 16, !tbaa !20
  %i.buw = load <4 x float>, ptr %i.bun, align 16, !tbaa !20
  %i.bux = shufflevector <4 x float> %i.but, <4 x float> %i.buu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buy = shufflevector <4 x float> %i.buv, <4 x float> %i.buw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buz = shufflevector <16 x float> %i.bux, <16 x float> %i.buy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bty, i64 16
  %i.bvb = load <4 x float>, ptr %i.bva, align 16, !tbaa !20
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bud, i64 16
  %i.bvd = load <4 x float>, ptr %i.bvc, align 16, !tbaa !20
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bui, i64 16
  %i.bvf = load <4 x float>, ptr %i.bve, align 16, !tbaa !20
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %i.bvh = load <4 x float>, ptr %i.bvg, align 16, !tbaa !20
  %i.bvi = shufflevector <4 x float> %i.bvb, <4 x float> %i.bvd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvj = shufflevector <4 x float> %i.bvf, <4 x float> %i.bvh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvk = shufflevector <16 x float> %i.bvi, <16 x float> %i.bvj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bty, i64 32
  %i.bvm = load <4 x float>, ptr %i.bvl, align 16, !tbaa !20
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bud, i64 32
  %i.bvo = load <4 x float>, ptr %i.bvn, align 16, !tbaa !20
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bui, i64 32
  %i.bvq = load <4 x float>, ptr %i.bvp, align 16, !tbaa !20
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bun, i64 32
  %i.bvs = load <4 x float>, ptr %i.bvr, align 16, !tbaa !20
  %i.bvt = shufflevector <4 x float> %i.bvm, <4 x float> %i.bvo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvu = shufflevector <4 x float> %i.bvq, <4 x float> %i.bvs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvv = shufflevector <16 x float> %i.bvt, <16 x float> %i.bvu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bvw = fmul fast <16 x float> %i.bus, %i.bss
  %i.bvx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.buz, <16 x float> nofpclass(nan inf) %i.btb, <16 x float> nofpclass(nan inf) %i.bvw)
  %i.bvy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bvk, <16 x float> nofpclass(nan inf) %i.btk, <16 x float> nofpclass(nan inf) %i.bvx)
  %i.bvz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bvv, <16 x float> nofpclass(nan inf) %i.btt, <16 x float> nofpclass(nan inf) %i.bvy)
  %i.bwa = shl nuw nsw i64 %indvars.iv2405.i, 2   ; 2 uses
  %i.bwb = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.bwa
  store <16 x float> %i.bvz, ptr %i.bwb, align 1, !tbaa !20
  %i.bwc = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.btx ; 4 uses
  %i.bwd = getelementptr inbounds i8, ptr %i.bwc, i64 -16
  %i.bwe = load <4 x float>, ptr %i.bwd, align 16, !tbaa !20
  %i.bwf = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.buc ; 4 uses
  %i.bwg = getelementptr inbounds i8, ptr %i.bwf, i64 -16
  %i.bwh = load <4 x float>, ptr %i.bwg, align 16, !tbaa !20
  %i.bwi = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.buh ; 4 uses
  %i.bwj = getelementptr inbounds i8, ptr %i.bwi, i64 -16
  %i.bwk = load <4 x float>, ptr %i.bwj, align 16, !tbaa !20
  %i.bwl = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.bum ; 4 uses
  %i.bwm = getelementptr inbounds i8, ptr %i.bwl, i64 -16
  %i.bwn = load <4 x float>, ptr %i.bwm, align 16, !tbaa !20
  %i.bwo = shufflevector <4 x float> %i.bwe, <4 x float> %i.bwh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwp = shufflevector <4 x float> %i.bwk, <4 x float> %i.bwn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwq = shufflevector <16 x float> %i.bwo, <16 x float> %i.bwp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bwr = load <4 x float>, ptr %i.bwc, align 16, !tbaa !20
  %i.bws = load <4 x float>, ptr %i.bwf, align 16, !tbaa !20
  %i.bwt = load <4 x float>, ptr %i.bwi, align 16, !tbaa !20
  %i.bwu = load <4 x float>, ptr %i.bwl, align 16, !tbaa !20
  %i.bwv = shufflevector <4 x float> %i.bwr, <4 x float> %i.bws, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bww = shufflevector <4 x float> %i.bwt, <4 x float> %i.bwu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwx = shufflevector <16 x float> %i.bwv, <16 x float> %i.bww, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwc, i64 16
  %i.bwz = load <4 x float>, ptr %i.bwy, align 16, !tbaa !20
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16
  %i.bxb = load <4 x float>, ptr %i.bxa, align 16, !tbaa !20
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwi, i64 16
  %i.bxd = load <4 x float>, ptr %i.bxc, align 16, !tbaa !20
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bwl, i64 16
  %i.bxf = load <4 x float>, ptr %i.bxe, align 16, !tbaa !20
  %i.bxg = shufflevector <4 x float> %i.bwz, <4 x float> %i.bxb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxh = shufflevector <4 x float> %i.bxd, <4 x float> %i.bxf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxi = shufflevector <16 x float> %i.bxg, <16 x float> %i.bxh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bwc, i64 32
  %i.bxk = load <4 x float>, ptr %i.bxj, align 16, !tbaa !20
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bwf, i64 32
  %i.bxm = load <4 x float>, ptr %i.bxl, align 16, !tbaa !20
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bwi, i64 32
  %i.bxo = load <4 x float>, ptr %i.bxn, align 16, !tbaa !20
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bwl, i64 32
  %i.bxq = load <4 x float>, ptr %i.bxp, align 16, !tbaa !20
  %i.bxr = shufflevector <4 x float> %i.bxk, <4 x float> %i.bxm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxs = shufflevector <4 x float> %i.bxo, <4 x float> %i.bxq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxt = shufflevector <16 x float> %i.bxr, <16 x float> %i.bxs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bxu = fmul fast <16 x float> %i.bwq, %i.bss
  %i.bxv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bwx, <16 x float> nofpclass(nan inf) %i.btb, <16 x float> nofpclass(nan inf) %i.bxu)
  %i.bxw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bxi, <16 x float> nofpclass(nan inf) %i.btk, <16 x float> nofpclass(nan inf) %i.bxv)
  %i.bxx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bxt, <16 x float> nofpclass(nan inf) %i.btt, <16 x float> nofpclass(nan inf) %i.bxw)
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.bwa
  store <16 x float> %i.bxx, ptr %i.bxy, align 1, !tbaa !20
  %i.bxz = getelementptr inbounds nuw i8, ptr %.013622326.i, i64 64 ; 2 uses
  %indvars.iv.next2406.i = add nuw nsw i64 %indvars.iv2405.i, 4 ; 3 uses
  %i.bya = icmp slt i64 %indvars.iv.next2406.i, %invariant.op.i72
  br i1 %i.bya, label %.lr.ph2328.i, label %.preheader2295.loopexit.i, !llvm.loop !232

.preheader2293.loopexit.i:                        ; preds = %.lr.ph2333.i
  %i.byb = trunc nuw nsw i64 %indvars.iv.next2411.i to i32
  br label %.preheader2293.i

.preheader2293.i:                                 ; preds = %.preheader2293.loopexit.i, %.preheader2295.i
  %.11363.lcssa.i = phi ptr [ %.01362.lcssa.i, %.preheader2295.i ], [ %i.cbm, %.preheader2293.loopexit.i ]
  %.11360.lcssa.i = phi i32 [ %.01359.lcssa.i, %.preheader2295.i ], [ %i.byb, %.preheader2293.loopexit.i ] ; 2 uses
  %i.byc = icmp slt i32 %.11360.lcssa.i, %i.bx
  br i1 %i.byc, label %.lr.ph2338.preheader.i, label %.loopexit.i74

.lr.ph2338.preheader.i:                           ; preds = %.preheader2293.i
  %i.byd = zext nneg i32 %.11360.lcssa.i to i64
  br label %.lr.ph2338.i

.lr.ph2333.i:                                     ; preds = %.lr.ph2333.i, %.lr.ph2333.preheader.i
  %indvars.iv2410.i = phi i64 [ %i.bsi, %.lr.ph2333.preheader.i ], [ %indvars.iv.next2411.i, %.lr.ph2333.i ] ; 3 uses
  %indvars.iv2408.i = phi i64 [ %i.bsj, %.lr.ph2333.preheader.i ], [ %indvars.iv.next2409.i, %.lr.ph2333.i ] ; 2 uses
  %.113632331.i = phi ptr [ %.01362.lcssa.i, %.lr.ph2333.preheader.i ], [ %i.cbm, %.lr.ph2333.i ] ; 9 uses
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2410.i
  %i.byf = load i32, ptr %i.bye, align 4, !tbaa !28
  %i.byg = shl nsw i32 %i.byf, 2
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2408.i
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !28
  %i.byj = shl nsw i32 %i.byi, 2
  %i.byk = load float, ptr %.113632331.i, align 4, !tbaa !60
  %i.byl = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 16
  %i.bym = load float, ptr %i.byl, align 4, !tbaa !60
  %i.byn = insertelement <4 x float> poison, float %i.byk, i64 0
  %i.byo = insertelement <4 x float> poison, float %i.bym, i64 0
  %i.byp = shufflevector <4 x float> %i.byn, <4 x float> %i.byo, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 4
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !60
  %i.bys = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 20
  %i.byt = load float, ptr %i.bys, align 4, !tbaa !60
  %i.byu = insertelement <4 x float> poison, float %i.byr, i64 0
  %i.byv = insertelement <4 x float> poison, float %i.byt, i64 0
  %i.byw = shufflevector <4 x float> %i.byu, <4 x float> %i.byv, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.byx = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 8
  %i.byy = load float, ptr %i.byx, align 4, !tbaa !60
  %i.byz = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 24
  %i.bza = load float, ptr %i.byz, align 4, !tbaa !60
  %i.bzb = insertelement <4 x float> poison, float %i.byy, i64 0
  %i.bzc = insertelement <4 x float> poison, float %i.bza, i64 0
  %i.bzd = shufflevector <4 x float> %i.bzb, <4 x float> %i.bzc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 12
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !60
  %i.bzg = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 28
  %i.bzh = load float, ptr %i.bzg, align 4, !tbaa !60
  %i.bzi = insertelement <4 x float> poison, float %i.bzf, i64 0
  %i.bzj = insertelement <4 x float> poison, float %i.bzh, i64 0
  %i.bzk = shufflevector <4 x float> %i.bzi, <4 x float> %i.bzj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.bzl = sext i32 %i.byg to i64                 ; 2 uses
  %i.bzm = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.bzl ; 4 uses
  %i.bzn = getelementptr inbounds i8, ptr %i.bzm, i64 -16
  %i.bzo = load <4 x float>, ptr %i.bzn, align 16, !tbaa !20
  %i.bzp = sext i32 %i.byj to i64                 ; 2 uses
  %i.bzq = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.bzp ; 4 uses
  %i.bzr = getelementptr inbounds i8, ptr %i.bzq, i64 -16
  %i.bzs = load <4 x float>, ptr %i.bzr, align 16, !tbaa !20
  %i.bzt = shufflevector <4 x float> %i.bzo, <4 x float> %i.bzs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzu = load <4 x float>, ptr %i.bzm, align 16, !tbaa !20
  %i.bzv = load <4 x float>, ptr %i.bzq, align 16, !tbaa !20
  %i.bzw = shufflevector <4 x float> %i.bzu, <4 x float> %i.bzv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzm, i64 16
  %i.bzy = load <4 x float>, ptr %i.bzx, align 16, !tbaa !20
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzq, i64 16
  %i.caa = load <4 x float>, ptr %i.bzz, align 16, !tbaa !20
  %i.cab = shufflevector <4 x float> %i.bzy, <4 x float> %i.caa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzm, i64 32
  %i.cad = load <4 x float>, ptr %i.cac, align 16, !tbaa !20
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzq, i64 32
  %i.caf = load <4 x float>, ptr %i.cae, align 16, !tbaa !20
  %i.cag = shufflevector <4 x float> %i.cad, <4 x float> %i.caf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cah = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.bzl ; 4 uses
  %i.cai = getelementptr inbounds i8, ptr %i.cah, i64 -16
  %i.caj = load <4 x float>, ptr %i.cai, align 16, !tbaa !20
  %i.cak = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.bzp ; 4 uses
  %i.cal = getelementptr inbounds i8, ptr %i.cak, i64 -16
  %i.cam = load <4 x float>, ptr %i.cal, align 16, !tbaa !20
  %i.can = shufflevector <4 x float> %i.caj, <4 x float> %i.cam, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cao = load <4 x float>, ptr %i.cah, align 16, !tbaa !20
  %i.cap = load <4 x float>, ptr %i.cak, align 16, !tbaa !20
  %i.caq = shufflevector <4 x float> %i.cao, <4 x float> %i.cap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.car = getelementptr inbounds nuw i8, ptr %i.cah, i64 16
  %i.cas = load <4 x float>, ptr %i.car, align 16, !tbaa !20
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cak, i64 16
  %i.cau = load <4 x float>, ptr %i.cat, align 16, !tbaa !20
  %i.cav = shufflevector <4 x float> %i.cas, <4 x float> %i.cau, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cah, i64 32
  %i.cax = load <4 x float>, ptr %i.caw, align 16, !tbaa !20
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cak, i64 32
  %i.caz = load <4 x float>, ptr %i.cay, align 16, !tbaa !20
  %i.cba = shufflevector <4 x float> %i.cax, <4 x float> %i.caz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cbb = fmul fast <8 x float> %i.bzt, %i.byp
  %i.cbc = fmul fast <8 x float> %i.can, %i.byp
  %i.cbd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bzw, <8 x float> nofpclass(nan inf) %i.byw, <8 x float> nofpclass(nan inf) %i.cbb)
  %i.cbe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.caq, <8 x float> nofpclass(nan inf) %i.byw, <8 x float> nofpclass(nan inf) %i.cbc)
  %i.cbf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cab, <8 x float> nofpclass(nan inf) %i.bzd, <8 x float> nofpclass(nan inf) %i.cbd)
  %i.cbg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cav, <8 x float> nofpclass(nan inf) %i.bzd, <8 x float> nofpclass(nan inf) %i.cbe)
  %i.cbh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cag, <8 x float> nofpclass(nan inf) %i.bzk, <8 x float> nofpclass(nan inf) %i.cbf)
  %i.cbi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cba, <8 x float> nofpclass(nan inf) %i.bzk, <8 x float> nofpclass(nan inf) %i.cbg)
  %i.cbj = shl nuw nsw i64 %indvars.iv2410.i, 2   ; 2 uses
  %i.cbk = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.cbj
  store <8 x float> %i.cbh, ptr %i.cbk, align 1, !tbaa !20
  %i.cbl = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.cbj
  store <8 x float> %i.cbi, ptr %i.cbl, align 1, !tbaa !20
  %i.cbm = getelementptr inbounds nuw i8, ptr %.113632331.i, i64 32 ; 2 uses
  %indvars.iv.next2411.i = add nuw nsw i64 %indvars.iv2410.i, 2 ; 3 uses
  %i.cbn = icmp slt i64 %indvars.iv.next2411.i, %invariant.op2478.i
  %indvars.iv.next2409.i = add nuw nsw i64 %indvars.iv2408.i, 2
  br i1 %i.cbn, label %.lr.ph2333.i, label %.preheader2293.loopexit.i, !llvm.loop !233

.lr.ph2338.i:                                     ; preds = %.lr.ph2338.i, %.lr.ph2338.preheader.i
  %indvars.iv2415.i = phi i64 [ %i.byd, %.lr.ph2338.preheader.i ], [ %indvars.iv.next2416.i, %.lr.ph2338.i ] ; 3 uses
  %.213642336.i = phi ptr [ %.11363.lcssa.i, %.lr.ph2338.preheader.i ], [ %i.cdi, %.lr.ph2338.i ] ; 5 uses
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2415.i
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !28
  %i.cbq = shl nsw i32 %i.cbp, 2
  %i.cbr = sext i32 %i.cbq to i64                 ; 2 uses
  %i.cbs = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.cbr ; 4 uses
  %i.cbt = getelementptr inbounds [4 x i8], ptr %i.bse, i64 %i.cbr ; 4 uses
  %i.cbu = load float, ptr %.213642336.i, align 4, !tbaa !60
  %i.cbv = insertelement <4 x float> poison, float %i.cbu, i64 0
  %i.cbw = shufflevector <4 x float> %i.cbv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %.213642336.i, i64 4
  %i.cby = load float, ptr %i.cbx, align 4, !tbaa !60
  %i.cbz = insertelement <4 x float> poison, float %i.cby, i64 0
  %i.cca = shufflevector <4 x float> %i.cbz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %.213642336.i, i64 8
  %i.ccc = load float, ptr %i.ccb, align 4, !tbaa !60
  %i.ccd = insertelement <4 x float> poison, float %i.ccc, i64 0
  %i.cce = shufflevector <4 x float> %i.ccd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %.213642336.i, i64 12
  %i.ccg = load float, ptr %i.ccf, align 4, !tbaa !60
  %i.cch = insertelement <4 x float> poison, float %i.ccg, i64 0
  %i.cci = shufflevector <4 x float> %i.cch, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccj = getelementptr inbounds i8, ptr %i.cbs, i64 -16
  %i.cck = load <4 x float>, ptr %i.ccj, align 16, !tbaa !20
  %i.ccl = load <4 x float>, ptr %i.cbs, align 16, !tbaa !20
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.cbs, i64 16
  %i.ccn = load <4 x float>, ptr %i.ccm, align 16, !tbaa !20
  %i.cco = getelementptr inbounds nuw i8, ptr %i.cbs, i64 32
  %i.ccp = load <4 x float>, ptr %i.cco, align 16, !tbaa !20
  %i.ccq = getelementptr inbounds i8, ptr %i.cbt, i64 -16
  %i.ccr = load <4 x float>, ptr %i.ccq, align 16, !tbaa !20
  %i.ccs = load <4 x float>, ptr %i.cbt, align 16, !tbaa !20
  %i.cct = getelementptr inbounds nuw i8, ptr %i.cbt, i64 16
  %i.ccu = load <4 x float>, ptr %i.cct, align 16, !tbaa !20
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.cbt, i64 32
  %i.ccw = load <4 x float>, ptr %i.ccv, align 16, !tbaa !20
  %i.ccx = fmul fast <4 x float> %i.cck, %i.cbw
  %i.ccy = fmul fast <4 x float> %i.ccr, %i.cbw
  %i.ccz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccl, <4 x float> nofpclass(nan inf) %i.cca, <4 x float> nofpclass(nan inf) %i.ccx)
  %i.cda = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccs, <4 x float> nofpclass(nan inf) %i.cca, <4 x float> nofpclass(nan inf) %i.ccy)
  %i.cdb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccn, <4 x float> nofpclass(nan inf) %i.cce, <4 x float> nofpclass(nan inf) %i.ccz)
  %i.cdc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccu, <4 x float> nofpclass(nan inf) %i.cce, <4 x float> nofpclass(nan inf) %i.cda)
  %i.cdd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccp, <4 x float> nofpclass(nan inf) %i.cci, <4 x float> nofpclass(nan inf) %i.cdb)
  %i.cde = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ccw, <4 x float> nofpclass(nan inf) %i.cci, <4 x float> nofpclass(nan inf) %i.cdc)
  %i.cdf = shl nuw nsw i64 %indvars.iv2415.i, 2   ; 2 uses
  %i.cdg = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.cdf
  store <4 x float> %i.cdd, ptr %i.cdg, align 16, !tbaa !20
  %i.cdh = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.cdf
  store <4 x float> %i.cde, ptr %i.cdh, align 16, !tbaa !20
  %i.cdi = getelementptr inbounds nuw i8, ptr %.213642336.i, i64 16
  %indvars.iv.next2416.i = add nuw nsw i64 %indvars.iv2415.i, 1 ; 2 uses
  %exitcond2419.not.i = icmp eq i64 %indvars.iv.next2416.i, %wide.trip.count.i73
  br i1 %exitcond2419.not.i, label %.loopexit.i74, label %.lr.ph2338.i, !llvm.loop !234

bb.ep:                                            ; preds = %bb.en
  %i.cdj = add nsw i32 %.013752356.i, 3
  %i.cdk = icmp eq i32 %i.bjv, %i.cdj
  br i1 %i.cdk, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.cdl = sext i32 %i.bjv to i64
  %i.cdm = mul i64 %i.bhx, %i.cdl
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cdm ; 7 uses
  %i.cdo = add nsw i32 %i.bjv, 1
  %i.cdp = sext i32 %i.cdo to i64
  %i.cdq = mul i64 %i.bhx, %i.cdp
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cdq ; 7 uses
  %i.cds = add nsw i32 %i.bjv, 2
  %i.cdt = sext i32 %i.cds to i64
  %i.cdu = mul i64 %i.bhx, %i.cdt
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cdu ; 7 uses
  br i1 %i.bht, label %.lr.ph2315.i, label %.preheader2298.i

.preheader2298.loopexit.i:                        ; preds = %.lr.ph2315.i
  %i.cdw = trunc nuw nsw i64 %indvars.iv.next2391.i to i32
  br label %.preheader2298.i

.preheader2298.i:                                 ; preds = %.preheader2298.loopexit.i, %bb.eq
  %.01356.lcssa.i = phi ptr [ %i.bhk, %bb.eq ], [ %i.cln, %.preheader2298.loopexit.i ] ; 2 uses
  %.01353.lcssa.i = phi i32 [ 0, %bb.eq ], [ %i.cdw, %.preheader2298.loopexit.i ] ; 3 uses
  %i.cdx = or disjoint i32 %.01353.lcssa.i, 1
  %i.cdy = icmp slt i32 %i.cdx, %i.bx
  br i1 %i.cdy, label %.lr.ph2320.preheader.i, label %.preheader2296.i

.lr.ph2320.preheader.i:                           ; preds = %.preheader2298.i
  %i.cdz = zext nneg i32 %.01353.lcssa.i to i64   ; 2 uses
  %i.cea = add nuw nsw i64 %i.cdz, 1
  br label %.lr.ph2320.i

.lr.ph2315.i:                                     ; preds = %bb.eq, %.lr.ph2315.i
  %indvars.iv2390.i = phi i64 [ %indvars.iv.next2391.i, %.lr.ph2315.i ], [ 0, %bb.eq ] ; 3 uses
  %.013562313.i = phi ptr [ %i.cln, %.lr.ph2315.i ], [ %i.bhk, %bb.eq ] ; 11 uses
  %i.ceb = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2390.i
  %36 = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 32
  %38 = insertelement <8 x ptr> poison, ptr %.013562313.i, i64 0
  %39 = insertelement <8 x ptr> %38, ptr %36, i64 1
  %40 = insertelement <8 x ptr> %39, ptr %37, i64 2
  %i.cec = shufflevector <8 x ptr> %40, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.ced = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.cec, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.cee = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 48
  %i.cef = load float, ptr %i.cee, align 4, !tbaa !60
  %i.ceg = shufflevector <8 x float> %i.ced, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ceh = insertelement <4 x float> poison, float %i.cef, i64 0
  %i.cei = shufflevector <4 x float> %i.ceh, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cej = shufflevector <16 x float> %i.ceg, <16 x float> %i.cei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %.013562313.i, <3 x i64> <i64 4, i64 20, i64 36>
  %i.cel = shufflevector <3 x ptr> %i.cek, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.cem = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.cel, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.cen = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 52
  %i.ceo = load float, ptr %i.cen, align 4, !tbaa !60
  %i.cep = shufflevector <8 x float> %i.cem, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ceq = insertelement <4 x float> poison, float %i.ceo, i64 0
  %i.cer = shufflevector <4 x float> %i.ceq, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ces = shufflevector <16 x float> %i.cep, <16 x float> %i.cer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.cet = getelementptr inbounds nuw i8, ptr %.013562313.i, <3 x i64> <i64 8, i64 24, i64 40>
  %i.ceu = shufflevector <3 x ptr> %i.cet, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.cev = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.ceu, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.cew = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 56
  %i.cex = load float, ptr %i.cew, align 4, !tbaa !60
  %i.cey = shufflevector <8 x float> %i.cev, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cez = insertelement <4 x float> poison, float %i.cex, i64 0
  %i.cfa = shufflevector <4 x float> %i.cez, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cfb = shufflevector <16 x float> %i.cey, <16 x float> %i.cfa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.cfc = getelementptr inbounds nuw i8, ptr %.013562313.i, <3 x i64> <i64 12, i64 28, i64 44>
  %i.cfd = shufflevector <3 x ptr> %i.cfc, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.cfe = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.cfd, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.cff = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 60
  %i.cfg = load float, ptr %i.cff, align 4, !tbaa !60
  %i.cfh = shufflevector <8 x float> %i.cfe, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cfi = insertelement <4 x float> poison, float %i.cfg, i64 0
  %i.cfj = shufflevector <4 x float> %i.cfi, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cfk = shufflevector <16 x float> %i.cfh, <16 x float> %i.cfj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 3 uses
  %i.cfl = load <4 x i32>, ptr %i.ceb, align 4, !tbaa !28
  %i.cfm = shl nsw <4 x i32> %i.cfl, splat (i32 2) ; 4 uses
  %i.cfn = extractelement <4 x i32> %i.cfm, i64 0
  %i.cfo = sext i32 %i.cfn to i64                 ; 3 uses
  %i.cfp = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cfo ; 4 uses
  %i.cfq = getelementptr inbounds i8, ptr %i.cfp, i64 -16
  %i.cfr = load <4 x float>, ptr %i.cfq, align 16, !tbaa !20
  %i.cfs = extractelement <4 x i32> %i.cfm, i64 1
  %i.cft = sext i32 %i.cfs to i64                 ; 3 uses
  %i.cfu = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cft ; 4 uses
  %i.cfv = getelementptr inbounds i8, ptr %i.cfu, i64 -16
  %i.cfw = load <4 x float>, ptr %i.cfv, align 16, !tbaa !20
  %i.cfx = extractelement <4 x i32> %i.cfm, i64 2
  %i.cfy = sext i32 %i.cfx to i64                 ; 3 uses
  %i.cfz = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cfy ; 4 uses
  %i.cga = getelementptr inbounds i8, ptr %i.cfz, i64 -16
  %i.cgb = load <4 x float>, ptr %i.cga, align 16, !tbaa !20
  %i.cgc = extractelement <4 x i32> %i.cfm, i64 3
  %i.cgd = sext i32 %i.cgc to i64                 ; 3 uses
  %i.cge = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cgd ; 4 uses
  %i.cgf = getelementptr inbounds i8, ptr %i.cge, i64 -16
  %i.cgg = load <4 x float>, ptr %i.cgf, align 16, !tbaa !20
  %i.cgh = shufflevector <4 x float> %i.cfr, <4 x float> %i.cfw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cgi = shufflevector <4 x float> %i.cgb, <4 x float> %i.cgg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cgj = shufflevector <16 x float> %i.cgh, <16 x float> %i.cgi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cgk = load <4 x float>, ptr %i.cfp, align 16, !tbaa !20
  %i.cgl = load <4 x float>, ptr %i.cfu, align 16, !tbaa !20
  %i.cgm = load <4 x float>, ptr %i.cfz, align 16, !tbaa !20
  %i.cgn = load <4 x float>, ptr %i.cge, align 16, !tbaa !20
  %i.cgo = shufflevector <4 x float> %i.cgk, <4 x float> %i.cgl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cgp = shufflevector <4 x float> %i.cgm, <4 x float> %i.cgn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cgq = shufflevector <16 x float> %i.cgo, <16 x float> %i.cgp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cfp, i64 16
  %i.cgs = load <4 x float>, ptr %i.cgr, align 16, !tbaa !20
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cfu, i64 16
  %i.cgu = load <4 x float>, ptr %i.cgt, align 16, !tbaa !20
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.cfz, i64 16
  %i.cgw = load <4 x float>, ptr %i.cgv, align 16, !tbaa !20
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cge, i64 16
  %i.cgy = load <4 x float>, ptr %i.cgx, align 16, !tbaa !20
  %i.cgz = shufflevector <4 x float> %i.cgs, <4 x float> %i.cgu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cha = shufflevector <4 x float> %i.cgw, <4 x float> %i.cgy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chb = shufflevector <16 x float> %i.cgz, <16 x float> %i.cha, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cfp, i64 32
  %i.chd = load <4 x float>, ptr %i.chc, align 16, !tbaa !20
  %i.che = getelementptr inbounds nuw i8, ptr %i.cfu, i64 32
  %i.chf = load <4 x float>, ptr %i.che, align 16, !tbaa !20
  %i.chg = getelementptr inbounds nuw i8, ptr %i.cfz, i64 32
  %i.chh = load <4 x float>, ptr %i.chg, align 16, !tbaa !20
  %i.chi = getelementptr inbounds nuw i8, ptr %i.cge, i64 32
  %i.chj = load <4 x float>, ptr %i.chi, align 16, !tbaa !20
  %i.chk = shufflevector <4 x float> %i.chd, <4 x float> %i.chf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chl = shufflevector <4 x float> %i.chh, <4 x float> %i.chj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.chm = shufflevector <16 x float> %i.chk, <16 x float> %i.chl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.chn = fmul fast <16 x float> %i.cgj, %i.cej
  %i.cho = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cgq, <16 x float> nofpclass(nan inf) %i.ces, <16 x float> nofpclass(nan inf) %i.chn)
  %i.chp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.chb, <16 x float> nofpclass(nan inf) %i.cfb, <16 x float> nofpclass(nan inf) %i.cho)
  %i.chq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.chm, <16 x float> nofpclass(nan inf) %i.cfk, <16 x float> nofpclass(nan inf) %i.chp)
  %i.chr = shl nuw nsw i64 %indvars.iv2390.i, 2   ; 3 uses
  %i.chs = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.chr
  store <16 x float> %i.chq, ptr %i.chs, align 1, !tbaa !20
  %i.cht = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cfo ; 4 uses
  %i.chu = getelementptr inbounds i8, ptr %i.cht, i64 -16
  %i.chv = load <4 x float>, ptr %i.chu, align 16, !tbaa !20
  %i.chw = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cft ; 4 uses
  %i.chx = getelementptr inbounds i8, ptr %i.chw, i64 -16
  %i.chy = load <4 x float>, ptr %i.chx, align 16, !tbaa !20
  %i.chz = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cfy ; 4 uses
  %i.cia = getelementptr inbounds i8, ptr %i.chz, i64 -16
  %i.cib = load <4 x float>, ptr %i.cia, align 16, !tbaa !20
  %i.cic = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cgd ; 4 uses
  %i.cid = getelementptr inbounds i8, ptr %i.cic, i64 -16
  %i.cie = load <4 x float>, ptr %i.cid, align 16, !tbaa !20
  %i.cif = shufflevector <4 x float> %i.chv, <4 x float> %i.chy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cig = shufflevector <4 x float> %i.cib, <4 x float> %i.cie, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cih = shufflevector <16 x float> %i.cif, <16 x float> %i.cig, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cii = load <4 x float>, ptr %i.cht, align 16, !tbaa !20
  %i.cij = load <4 x float>, ptr %i.chw, align 16, !tbaa !20
  %i.cik = load <4 x float>, ptr %i.chz, align 16, !tbaa !20
  %i.cil = load <4 x float>, ptr %i.cic, align 16, !tbaa !20
  %i.cim = shufflevector <4 x float> %i.cii, <4 x float> %i.cij, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cin = shufflevector <4 x float> %i.cik, <4 x float> %i.cil, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cio = shufflevector <16 x float> %i.cim, <16 x float> %i.cin, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cht, i64 16
  %i.ciq = load <4 x float>, ptr %i.cip, align 16, !tbaa !20
  %i.cir = getelementptr inbounds nuw i8, ptr %i.chw, i64 16
  %i.cis = load <4 x float>, ptr %i.cir, align 16, !tbaa !20
  %i.cit = getelementptr inbounds nuw i8, ptr %i.chz, i64 16
  %i.ciu = load <4 x float>, ptr %i.cit, align 16, !tbaa !20
  %i.civ = getelementptr inbounds nuw i8, ptr %i.cic, i64 16
  %i.ciw = load <4 x float>, ptr %i.civ, align 16, !tbaa !20
  %i.cix = shufflevector <4 x float> %i.ciq, <4 x float> %i.cis, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ciy = shufflevector <4 x float> %i.ciu, <4 x float> %i.ciw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ciz = shufflevector <16 x float> %i.cix, <16 x float> %i.ciy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cht, i64 32
  %i.cjb = load <4 x float>, ptr %i.cja, align 16, !tbaa !20
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.chw, i64 32
  %i.cjd = load <4 x float>, ptr %i.cjc, align 16, !tbaa !20
  %i.cje = getelementptr inbounds nuw i8, ptr %i.chz, i64 32
  %i.cjf = load <4 x float>, ptr %i.cje, align 16, !tbaa !20
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cic, i64 32
  %i.cjh = load <4 x float>, ptr %i.cjg, align 16, !tbaa !20
  %i.cji = shufflevector <4 x float> %i.cjb, <4 x float> %i.cjd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cjj = shufflevector <4 x float> %i.cjf, <4 x float> %i.cjh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cjk = shufflevector <16 x float> %i.cji, <16 x float> %i.cjj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cjl = fmul fast <16 x float> %i.cih, %i.cej
  %i.cjm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cio, <16 x float> nofpclass(nan inf) %i.ces, <16 x float> nofpclass(nan inf) %i.cjl)
  %i.cjn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ciz, <16 x float> nofpclass(nan inf) %i.cfb, <16 x float> nofpclass(nan inf) %i.cjm)
  %i.cjo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cjk, <16 x float> nofpclass(nan inf) %i.cfk, <16 x float> nofpclass(nan inf) %i.cjn)
  %i.cjp = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.chr
  store <16 x float> %i.cjo, ptr %i.cjp, align 1, !tbaa !20
  %i.cjq = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cfo ; 4 uses
  %i.cjr = getelementptr inbounds i8, ptr %i.cjq, i64 -16
  %i.cjs = load <4 x float>, ptr %i.cjr, align 16, !tbaa !20
  %i.cjt = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cft ; 4 uses
  %i.cju = getelementptr inbounds i8, ptr %i.cjt, i64 -16
  %i.cjv = load <4 x float>, ptr %i.cju, align 16, !tbaa !20
  %i.cjw = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cfy ; 4 uses
  %i.cjx = getelementptr inbounds i8, ptr %i.cjw, i64 -16
  %i.cjy = load <4 x float>, ptr %i.cjx, align 16, !tbaa !20
  %i.cjz = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cgd ; 4 uses
  %i.cka = getelementptr inbounds i8, ptr %i.cjz, i64 -16
  %i.ckb = load <4 x float>, ptr %i.cka, align 16, !tbaa !20
  %i.ckc = shufflevector <4 x float> %i.cjs, <4 x float> %i.cjv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ckd = shufflevector <4 x float> %i.cjy, <4 x float> %i.ckb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cke = shufflevector <16 x float> %i.ckc, <16 x float> %i.ckd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ckf = load <4 x float>, ptr %i.cjq, align 16, !tbaa !20
  %i.ckg = load <4 x float>, ptr %i.cjt, align 16, !tbaa !20
  %i.ckh = load <4 x float>, ptr %i.cjw, align 16, !tbaa !20
  %i.cki = load <4 x float>, ptr %i.cjz, align 16, !tbaa !20
  %i.ckj = shufflevector <4 x float> %i.ckf, <4 x float> %i.ckg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ckk = shufflevector <4 x float> %i.ckh, <4 x float> %i.cki, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ckl = shufflevector <16 x float> %i.ckj, <16 x float> %i.ckk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.cjq, i64 16
  %i.ckn = load <4 x float>, ptr %i.ckm, align 16, !tbaa !20
  %i.cko = getelementptr inbounds nuw i8, ptr %i.cjt, i64 16
  %i.ckp = load <4 x float>, ptr %i.cko, align 16, !tbaa !20
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cjw, i64 16
  %i.ckr = load <4 x float>, ptr %i.ckq, align 16, !tbaa !20
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cjz, i64 16
  %i.ckt = load <4 x float>, ptr %i.cks, align 16, !tbaa !20
  %i.cku = shufflevector <4 x float> %i.ckn, <4 x float> %i.ckp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ckv = shufflevector <4 x float> %i.ckr, <4 x float> %i.ckt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ckw = shufflevector <16 x float> %i.cku, <16 x float> %i.ckv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.cjq, i64 32
  %i.cky = load <4 x float>, ptr %i.ckx, align 16, !tbaa !20
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cjt, i64 32
  %i.cla = load <4 x float>, ptr %i.ckz, align 16, !tbaa !20
  %i.clb = getelementptr inbounds nuw i8, ptr %i.cjw, i64 32
  %i.clc = load <4 x float>, ptr %i.clb, align 16, !tbaa !20
  %i.cld = getelementptr inbounds nuw i8, ptr %i.cjz, i64 32
  %i.cle = load <4 x float>, ptr %i.cld, align 16, !tbaa !20
  %i.clf = shufflevector <4 x float> %i.cky, <4 x float> %i.cla, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.clg = shufflevector <4 x float> %i.clc, <4 x float> %i.cle, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.clh = shufflevector <16 x float> %i.clf, <16 x float> %i.clg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cli = fmul fast <16 x float> %i.cke, %i.cej
  %i.clj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ckl, <16 x float> nofpclass(nan inf) %i.ces, <16 x float> nofpclass(nan inf) %i.cli)
  %i.clk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ckw, <16 x float> nofpclass(nan inf) %i.cfb, <16 x float> nofpclass(nan inf) %i.clj)
  %i.cll = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.clh, <16 x float> nofpclass(nan inf) %i.cfk, <16 x float> nofpclass(nan inf) %i.clk)
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %.013782354.i, i64 %i.chr
  store <16 x float> %i.cll, ptr %i.clm, align 1, !tbaa !20
  %i.cln = getelementptr inbounds nuw i8, ptr %.013562313.i, i64 64 ; 2 uses
  %indvars.iv.next2391.i = add nuw nsw i64 %indvars.iv2390.i, 4 ; 3 uses
  %i.clo = icmp slt i64 %indvars.iv.next2391.i, %invariant.op.i72
  br i1 %i.clo, label %.lr.ph2315.i, label %.preheader2298.loopexit.i, !llvm.loop !235

end_hunk_3
begin_hunk_4_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.cms = getelementptr inbounds nuw i8, ptr %.113572318.i, i64 12
  %i.cmt = load float, ptr %i.cms, align 4, !tbaa !60
  %i.cmu = getelementptr inbounds nuw i8, ptr %.113572318.i, i64 28
  %i.cmv = load float, ptr %i.cmu, align 4, !tbaa !60
  %i.cmw = insertelement <4 x float> poison, float %i.cmt, i64 0
  %i.cmx = insertelement <4 x float> poison, float %i.cmv, i64 0
  %i.cmy = shufflevector <4 x float> %i.cmw, <4 x float> %i.cmx, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 3 uses
  %i.cmz = sext i32 %i.clu to i64                 ; 3 uses
  %i.cna = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cmz ; 4 uses
  %i.cnb = getelementptr inbounds i8, ptr %i.cna, i64 -16
  %i.cnc = load <4 x float>, ptr %i.cnb, align 16, !tbaa !20
  %i.cnd = sext i32 %i.clx to i64                 ; 3 uses
  %i.cne = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cnd ; 4 uses
  %i.cnf = getelementptr inbounds i8, ptr %i.cne, i64 -16
  %i.cng = load <4 x float>, ptr %i.cnf, align 16, !tbaa !20
  %i.cnh = shufflevector <4 x float> %i.cnc, <4 x float> %i.cng, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cni = load <4 x float>, ptr %i.cna, align 16, !tbaa !20
  %i.cnj = load <4 x float>, ptr %i.cne, align 16, !tbaa !20
  %i.cnk = shufflevector <4 x float> %i.cni, <4 x float> %i.cnj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cna, i64 16
  %i.cnm = load <4 x float>, ptr %i.cnl, align 16, !tbaa !20
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.cne, i64 16
  %i.cno = load <4 x float>, ptr %i.cnn, align 16, !tbaa !20
  %i.cnp = shufflevector <4 x float> %i.cnm, <4 x float> %i.cno, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cna, i64 32
  %i.cnr = load <4 x float>, ptr %i.cnq, align 16, !tbaa !20
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cne, i64 32
  %i.cnt = load <4 x float>, ptr %i.cns, align 16, !tbaa !20
  %i.cnu = shufflevector <4 x float> %i.cnr, <4 x float> %i.cnt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cnv = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cmz ; 4 uses
  %i.cnw = getelementptr inbounds i8, ptr %i.cnv, i64 -16
  %i.cnx = load <4 x float>, ptr %i.cnw, align 16, !tbaa !20
  %i.cny = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cnd ; 4 uses
  %i.cnz = getelementptr inbounds i8, ptr %i.cny, i64 -16
  %i.coa = load <4 x float>, ptr %i.cnz, align 16, !tbaa !20
  %i.cob = shufflevector <4 x float> %i.cnx, <4 x float> %i.coa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.coc = load <4 x float>, ptr %i.cnv, align 16, !tbaa !20
  %i.cod = load <4 x float>, ptr %i.cny, align 16, !tbaa !20
  %i.coe = shufflevector <4 x float> %i.coc, <4 x float> %i.cod, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cof = getelementptr inbounds nuw i8, ptr %i.cnv, i64 16
  %i.cog = load <4 x float>, ptr %i.cof, align 16, !tbaa !20
  %i.coh = getelementptr inbounds nuw i8, ptr %i.cny, i64 16
  %i.coi = load <4 x float>, ptr %i.coh, align 16, !tbaa !20
  %i.coj = shufflevector <4 x float> %i.cog, <4 x float> %i.coi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cok = getelementptr inbounds nuw i8, ptr %i.cnv, i64 32
  %i.col = load <4 x float>, ptr %i.cok, align 16, !tbaa !20
  %i.com = getelementptr inbounds nuw i8, ptr %i.cny, i64 32
  %i.con = load <4 x float>, ptr %i.com, align 16, !tbaa !20
  %i.coo = shufflevector <4 x float> %i.col, <4 x float> %i.con, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cop = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cmz ; 4 uses
  %i.coq = getelementptr inbounds i8, ptr %i.cop, i64 -16
  %i.cor = load <4 x float>, ptr %i.coq, align 16, !tbaa !20
  %i.cos = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cnd ; 4 uses
  %i.cot = getelementptr inbounds i8, ptr %i.cos, i64 -16
  %i.cou = load <4 x float>, ptr %i.cot, align 16, !tbaa !20
  %i.cov = shufflevector <4 x float> %i.cor, <4 x float> %i.cou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cow = load <4 x float>, ptr %i.cop, align 16, !tbaa !20
  %i.cox = load <4 x float>, ptr %i.cos, align 16, !tbaa !20
  %i.coy = shufflevector <4 x float> %i.cow, <4 x float> %i.cox, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.coz = getelementptr inbounds nuw i8, ptr %i.cop, i64 16
  %i.cpa = load <4 x float>, ptr %i.coz, align 16, !tbaa !20
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cos, i64 16
  %i.cpc = load <4 x float>, ptr %i.cpb, align 16, !tbaa !20
  %i.cpd = shufflevector <4 x float> %i.cpa, <4 x float> %i.cpc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cop, i64 32
  %i.cpf = load <4 x float>, ptr %i.cpe, align 16, !tbaa !20
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.cos, i64 32
  %i.cph = load <4 x float>, ptr %i.cpg, align 16, !tbaa !20
  %i.cpi = shufflevector <4 x float> %i.cpf, <4 x float> %i.cph, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cpj = fmul fast <8 x float> %i.cnh, %i.cmd
  %i.cpk = fmul fast <8 x float> %i.cob, %i.cmd
  %i.cpl = fmul fast <8 x float> %i.cov, %i.cmd
  %i.cpm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cnk, <8 x float> nofpclass(nan inf) %i.cmk, <8 x float> nofpclass(nan inf) %i.cpj)
  %i.cpn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.coe, <8 x float> nofpclass(nan inf) %i.cmk, <8 x float> nofpclass(nan inf) %i.cpk)
  %i.cpo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.coy, <8 x float> nofpclass(nan inf) %i.cmk, <8 x float> nofpclass(nan inf) %i.cpl)
  %i.cpp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cnp, <8 x float> nofpclass(nan inf) %i.cmr, <8 x float> nofpclass(nan inf) %i.cpm)
  %i.cpq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.coj, <8 x float> nofpclass(nan inf) %i.cmr, <8 x float> nofpclass(nan inf) %i.cpn)
  %i.cpr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cpd, <8 x float> nofpclass(nan inf) %i.cmr, <8 x float> nofpclass(nan inf) %i.cpo)
  %i.cps = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cnu, <8 x float> nofpclass(nan inf) %i.cmy, <8 x float> nofpclass(nan inf) %i.cpp)
  %i.cpt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.coo, <8 x float> nofpclass(nan inf) %i.cmy, <8 x float> nofpclass(nan inf) %i.cpq)
  %i.cpu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cpi, <8 x float> nofpclass(nan inf) %i.cmy, <8 x float> nofpclass(nan inf) %i.cpr)
  %i.cpv = shl nuw nsw i64 %indvars.iv2395.i, 2   ; 3 uses
  %i.cpw = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.cpv
  store <8 x float> %i.cps, ptr %i.cpw, align 1, !tbaa !20
  %i.cpx = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.cpv
  store <8 x float> %i.cpt, ptr %i.cpx, align 1, !tbaa !20
  %i.cpy = getelementptr inbounds nuw [4 x i8], ptr %.013782354.i, i64 %i.cpv
  store <8 x float> %i.cpu, ptr %i.cpy, align 1, !tbaa !20
  %i.cpz = getelementptr inbounds nuw i8, ptr %.113572318.i, i64 32 ; 2 uses
  %indvars.iv.next2396.i = add nuw nsw i64 %indvars.iv2395.i, 2 ; 3 uses
  %i.cqa = icmp slt i64 %indvars.iv.next2396.i, %invariant.op2478.i
  %indvars.iv.next2394.i = add nuw nsw i64 %indvars.iv2393.i, 2
  br i1 %i.cqa, label %.lr.ph2320.i, label %.preheader2296.loopexit.i, !llvm.loop !236

.lr.ph2325.i:                                     ; preds = %.lr.ph2325.i, %.lr.ph2325.preheader.i
  %indvars.iv2400.i = phi i64 [ %i.clr, %.lr.ph2325.preheader.i ], [ %indvars.iv.next2401.i, %.lr.ph2325.i ] ; 3 uses
  %.213582323.i = phi ptr [ %.11357.lcssa.i, %.lr.ph2325.preheader.i ], [ %i.csi, %.lr.ph2325.i ] ; 5 uses
  %i.cqb = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv2400.i
  %i.cqc = load i32, ptr %i.cqb, align 4, !tbaa !28
  %i.cqd = shl nsw i32 %i.cqc, 2
  %i.cqe = sext i32 %i.cqd to i64                 ; 3 uses
  %i.cqf = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cqe ; 4 uses
  %i.cqg = getelementptr inbounds [4 x i8], ptr %i.cdr, i64 %i.cqe ; 4 uses
  %i.cqh = getelementptr inbounds [4 x i8], ptr %i.cdv, i64 %i.cqe ; 4 uses
  %i.cqi = load float, ptr %.213582323.i, align 4, !tbaa !60
  %i.cqj = insertelement <4 x float> poison, float %i.cqi, i64 0
  %i.cqk = shufflevector <4 x float> %i.cqj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cql = getelementptr inbounds nuw i8, ptr %.213582323.i, i64 4
  %i.cqm = load float, ptr %i.cql, align 4, !tbaa !60
  %i.cqn = insertelement <4 x float> poison, float %i.cqm, i64 0
  %i.cqo = shufflevector <4 x float> %i.cqn, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %.213582323.i, i64 8
  %i.cqq = load float, ptr %i.cqp, align 4, !tbaa !60
  %i.cqr = insertelement <4 x float> poison, float %i.cqq, i64 0
  %i.cqs = shufflevector <4 x float> %i.cqr, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cqt = getelementptr inbounds nuw i8, ptr %.213582323.i, i64 12
  %i.cqu = load float, ptr %i.cqt, align 4, !tbaa !60
  %i.cqv = insertelement <4 x float> poison, float %i.cqu, i64 0
  %i.cqw = shufflevector <4 x float> %i.cqv, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cqx = getelementptr inbounds i8, ptr %i.cqf, i64 -16
  %i.cqy = load <4 x float>, ptr %i.cqx, align 16, !tbaa !20
  %i.cqz = load <4 x float>, ptr %i.cqf, align 16, !tbaa !20
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqf, i64 16
  %i.crb = load <4 x float>, ptr %i.cra, align 16, !tbaa !20
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cqf, i64 32
  %i.crd = load <4 x float>, ptr %i.crc, align 16, !tbaa !20
  %i.cre = getelementptr inbounds i8, ptr %i.cqg, i64 -16
  %i.crf = load <4 x float>, ptr %i.cre, align 16, !tbaa !20
  %i.crg = load <4 x float>, ptr %i.cqg, align 16, !tbaa !20
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cqg, i64 16
  %i.cri = load <4 x float>, ptr %i.crh, align 16, !tbaa !20
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cqg, i64 32
  %i.crk = load <4 x float>, ptr %i.crj, align 16, !tbaa !20
  %i.crl = getelementptr inbounds i8, ptr %i.cqh, i64 -16
  %i.crm = load <4 x float>, ptr %i.crl, align 16, !tbaa !20
  %i.crn = load <4 x float>, ptr %i.cqh, align 16, !tbaa !20
  %i.cro = getelementptr inbounds nuw i8, ptr %i.cqh, i64 16
  %i.crp = load <4 x float>, ptr %i.cro, align 16, !tbaa !20
  %i.crq = getelementptr inbounds nuw i8, ptr %i.cqh, i64 32
  %i.crr = load <4 x float>, ptr %i.crq, align 16, !tbaa !20
  %i.crs = fmul fast <4 x float> %i.cqy, %i.cqk
  %i.crt = fmul fast <4 x float> %i.crf, %i.cqk
  %i.cru = fmul fast <4 x float> %i.crm, %i.cqk
  %i.crv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqz, <4 x float> nofpclass(nan inf) %i.cqo, <4 x float> nofpclass(nan inf) %i.crs)
  %i.crw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crg, <4 x float> nofpclass(nan inf) %i.cqo, <4 x float> nofpclass(nan inf) %i.crt)
  %i.crx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crn, <4 x float> nofpclass(nan inf) %i.cqo, <4 x float> nofpclass(nan inf) %i.cru)
  %i.cry = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crb, <4 x float> nofpclass(nan inf) %i.cqs, <4 x float> nofpclass(nan inf) %i.crv)
  %i.crz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cri, <4 x float> nofpclass(nan inf) %i.cqs, <4 x float> nofpclass(nan inf) %i.crw)
  %i.csa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crp, <4 x float> nofpclass(nan inf) %i.cqs, <4 x float> nofpclass(nan inf) %i.crx)
  %i.csb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crd, <4 x float> nofpclass(nan inf) %i.cqw, <4 x float> nofpclass(nan inf) %i.cry)
  %i.csc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crk, <4 x float> nofpclass(nan inf) %i.cqw, <4 x float> nofpclass(nan inf) %i.crz)
  %i.csd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crr, <4 x float> nofpclass(nan inf) %i.cqw, <4 x float> nofpclass(nan inf) %i.csa)
  %i.cse = shl nuw nsw i64 %indvars.iv2400.i, 2   ; 3 uses
  %i.csf = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.cse
  store <4 x float> %i.csb, ptr %i.csf, align 16, !tbaa !20
  %i.csg = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.cse
  store <4 x float> %i.csc, ptr %i.csg, align 16, !tbaa !20
  %i.csh = getelementptr inbounds nuw [4 x i8], ptr %.013782354.i, i64 %i.cse
  store <4 x float> %i.csd, ptr %i.csh, align 16, !tbaa !20
  %i.csi = getelementptr inbounds nuw i8, ptr %.213582323.i, i64 16
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %wide.trip.count.i73
  br i1 %exitcond2404.not.i, label %.loopexit.i74, label %.lr.ph2325.i, !llvm.loop !237

bb.er:                                            ; preds = %bb.ep
  %i.csj = add nsw i32 %i.bjv, -1
  %i.csk = sext i32 %i.csj to i64
  %i.csl = mul i64 %i.bhx, %i.csk
  %i.csm = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.csl ; 7 uses
  %i.csn = sext i32 %i.bjv to i64
  %i.cso = mul i64 %i.bhx, %i.csn
  %i.csp = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cso ; 7 uses
  %i.csq = add nsw i32 %i.bjv, 1
  %i.csr = sext i32 %i.csq to i64
  %i.css = mul i64 %i.bhx, %i.csr
  %i.cst = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.css ; 7 uses
  %i.csu = add nsw i32 %i.bjv, 2
  %i.csv = sext i32 %i.csu to i64
  %i.csw = mul i64 %i.bhx, %i.csv
  %i.csx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.csw ; 7 uses
  br i1 %i.bht, label %.lr.ph.i100, label %.preheader2301.i

.preheader2301.loopexit.i:                        ; preds = %.lr.ph.i100
  %i.csy = trunc nuw nsw i64 %indvars.iv.next.i102 to i32
  br label %.preheader2301.i

.preheader2301.i:                                 ; preds = %.preheader2301.loopexit.i, %bb.er
  %.01350.lcssa.i = phi ptr [ %i.bhk, %bb.er ], [ %i.dcm, %.preheader2301.loopexit.i ] ; 2 uses
  %.01349.lcssa.i = phi i32 [ 0, %bb.er ], [ %i.csy, %.preheader2301.loopexit.i ] ; 3 uses
  %i.csz = or disjoint i32 %.01349.lcssa.i, 1
  %i.cta = icmp slt i32 %i.csz, %i.bx
  br i1 %i.cta, label %.lr.ph2307.preheader.i, label %.preheader2299.i

.lr.ph2307.preheader.i:                           ; preds = %.preheader2301.i
  %i.ctb = zext nneg i32 %.01349.lcssa.i to i64   ; 2 uses
  %i.ctc = add nuw nsw i64 %i.ctb, 1
  br label %.lr.ph2307.i

.lr.ph.i100:                                      ; preds = %bb.er, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i102, %.lr.ph.i100 ], [ 0, %bb.er ] ; 3 uses
  %.013502302.i = phi ptr [ %i.dcm, %.lr.ph.i100 ], [ %i.bhk, %bb.er ] ; 11 uses
  %i.ctd = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %indvars.iv.i101
  %41 = getelementptr inbounds nuw i8, ptr %.013502302.i, i64 16
  %42 = getelementptr inbounds nuw i8, ptr %.013502302.i, i64 32
  %43 = insertelement <8 x ptr> poison, ptr %.013502302.i, i64 0
  %44 = insertelement <8 x ptr> %43, ptr %41, i64 1
  %45 = insertelement <8 x ptr> %44, ptr %42, i64 2
  %i.cte = shufflevector <8 x ptr> %45, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.ctf = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.cte, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.ctg = getelementptr inbounds nuw i8, ptr %.013502302.i, i64 48
  %i.cth = load float, ptr %i.ctg, align 4, !tbaa !60
  %i.cti = shufflevector <8 x float> %i.ctf, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctj = insertelement <4 x float> poison, float %i.cth, i64 0
  %i.ctk = shufflevector <4 x float> %i.ctj, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctl = shufflevector <16 x float> %i.cti, <16 x float> %i.ctk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 4 uses
  %i.ctm = getelementptr inbounds nuw i8, ptr %.013502302.i, <3 x i64> <i64 4, i64 20, i64 36>
  %i.ctn = shufflevector <3 x ptr> %i.ctm, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.cto = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.ctn, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.ctp = getelementptr inbounds nuw i8, ptr %.013502302.i, i64 52
  %i.ctq = load float, ptr %i.ctp, align 4, !tbaa !60
  %i.ctr = shufflevector <8 x float> %i.cto, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cts = insertelement <4 x float> poison, float %i.ctq, i64 0
  %i.ctt = shufflevector <4 x float> %i.cts, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctu = shufflevector <16 x float> %i.ctr, <16 x float> %i.ctt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 4 uses
  %i.ctv = getelementptr inbounds nuw i8, ptr %.013502302.i, <3 x i64> <i64 8, i64 24, i64 40>
  %i.ctw = shufflevector <3 x ptr> %i.ctv, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.ctx = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.ctw, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.cty = getelementptr inbounds nuw i8, ptr %.013502302.i, i64 56
  %i.ctz = load float, ptr %i.cty, align 4, !tbaa !60
  %i.cua = shufflevector <8 x float> %i.ctx, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cub = insertelement <4 x float> poison, float %i.ctz, i64 0
  %i.cuc = shufflevector <4 x float> %i.cub, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cud = shufflevector <16 x float> %i.cua, <16 x float> %i.cuc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 4 uses
  %i.cue = getelementptr inbounds nuw i8, ptr %.013502302.i, <3 x i64> <i64 12, i64 28, i64 44>
  %i.cuf = shufflevector <3 x ptr> %i.cue, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.cug = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.cuf, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.cuh = getelementptr inbounds nuw i8, ptr %.013502302.i, i64 60
  %i.cui = load float, ptr %i.cuh, align 4, !tbaa !60
  %i.cuj = shufflevector <8 x float> %i.cug, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cuk = insertelement <4 x float> poison, float %i.cui, i64 0
  %i.cul = shufflevector <4 x float> %i.cuk, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cum = shufflevector <16 x float> %i.cuj, <16 x float> %i.cul, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 4 uses
  %i.cun = load <4 x i32>, ptr %i.ctd, align 4, !tbaa !28
  %i.cuo = shl nsw <4 x i32> %i.cun, splat (i32 2) ; 4 uses
  %i.cup = extractelement <4 x i32> %i.cuo, i64 0
  %i.cuq = sext i32 %i.cup to i64                 ; 4 uses
  %i.cur = getelementptr inbounds [4 x i8], ptr %i.csm, i64 %i.cuq ; 4 uses
  %i.cus = getelementptr inbounds i8, ptr %i.cur, i64 -16
  %i.cut = load <4 x float>, ptr %i.cus, align 16, !tbaa !20
  %i.cuu = extractelement <4 x i32> %i.cuo, i64 1
  %i.cuv = sext i32 %i.cuu to i64                 ; 4 uses
  %i.cuw = getelementptr inbounds [4 x i8], ptr %i.csm, i64 %i.cuv ; 4 uses
  %i.cux = getelementptr inbounds i8, ptr %i.cuw, i64 -16
  %i.cuy = load <4 x float>, ptr %i.cux, align 16, !tbaa !20
  %i.cuz = extractelement <4 x i32> %i.cuo, i64 2
  %i.cva = sext i32 %i.cuz to i64                 ; 4 uses
  %i.cvb = getelementptr inbounds [4 x i8], ptr %i.csm, i64 %i.cva ; 4 uses
  %i.cvc = getelementptr inbounds i8, ptr %i.cvb, i64 -16
  %i.cvd = load <4 x float>, ptr %i.cvc, align 16, !tbaa !20
  %i.cve = extractelement <4 x i32> %i.cuo, i64 3
  %i.cvf = sext i32 %i.cve to i64                 ; 4 uses
  %i.cvg = getelementptr inbounds [4 x i8], ptr %i.csm, i64 %i.cvf ; 4 uses
  %i.cvh = getelementptr inbounds i8, ptr %i.cvg, i64 -16
  %i.cvi = load <4 x float>, ptr %i.cvh, align 16, !tbaa !20
  %i.cvj = shufflevector <4 x float> %i.cut, <4 x float> %i.cuy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvk = shufflevector <4 x float> %i.cvd, <4 x float> %i.cvi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvl = shufflevector <16 x float> %i.cvj, <16 x float> %i.cvk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cvm = load <4 x float>, ptr %i.cur, align 16, !tbaa !20
  %i.cvn = load <4 x float>, ptr %i.cuw, align 16, !tbaa !20
  %i.cvo = load <4 x float>, ptr %i.cvb, align 16, !tbaa !20
  %i.cvp = load <4 x float>, ptr %i.cvg, align 16, !tbaa !20
  %i.cvq = shufflevector <4 x float> %i.cvm, <4 x float> %i.cvn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvr = shufflevector <4 x float> %i.cvo, <4 x float> %i.cvp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvs = shufflevector <16 x float> %i.cvq, <16 x float> %i.cvr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cur, i64 16
  %i.cvu = load <4 x float>, ptr %i.cvt, align 16, !tbaa !20
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cuw, i64 16
  %i.cvw = load <4 x float>, ptr %i.cvv, align 16, !tbaa !20
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvb, i64 16
  %i.cvy = load <4 x float>, ptr %i.cvx, align 16, !tbaa !20
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvg, i64 16
  %i.cwa = load <4 x float>, ptr %i.cvz, align 16, !tbaa !20
  %i.cwb = shufflevector <4 x float> %i.cvu, <4 x float> %i.cvw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwc = shufflevector <4 x float> %i.cvy, <4 x float> %i.cwa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwd = shufflevector <16 x float> %i.cwb, <16 x float> %i.cwc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cur, i64 32
  %i.cwf = load <4 x float>, ptr %i.cwe, align 16, !tbaa !20
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cuw, i64 32
  %i.cwh = load <4 x float>, ptr %i.cwg, align 16, !tbaa !20
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvb, i64 32
  %i.cwj = load <4 x float>, ptr %i.cwi, align 16, !tbaa !20
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cvg, i64 32
  %i.cwl = load <4 x float>, ptr %i.cwk, align 16, !tbaa !20
  %i.cwm = shufflevector <4 x float> %i.cwf, <4 x float> %i.cwh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwn = shufflevector <4 x float> %i.cwj, <4 x float> %i.cwl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwo = shufflevector <16 x float> %i.cwm, <16 x float> %i.cwn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cwp = fmul fast <16 x float> %i.cvl, %i.ctl
  %i.cwq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cvs, <16 x float> nofpclass(nan inf) %i.ctu, <16 x float> nofpclass(nan inf) %i.cwp)
  %i.cwr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cwd, <16 x float> nofpclass(nan inf) %i.cud, <16 x float> nofpclass(nan inf) %i.cwq)
  %i.cws = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cwo, <16 x float> nofpclass(nan inf) %i.cum, <16 x float> nofpclass(nan inf) %i.cwr)
  %i.cwt = shl nuw nsw i64 %indvars.iv.i101, 2    ; 4 uses
  %i.cwu = getelementptr inbounds nuw [4 x i8], ptr %.013822352.i, i64 %i.cwt
  store <16 x float> %i.cws, ptr %i.cwu, align 1, !tbaa !20
  %i.cwv = getelementptr inbounds [4 x i8], ptr %i.csp, i64 %i.cuq ; 4 uses
  %i.cww = getelementptr inbounds i8, ptr %i.cwv, i64 -16
  %i.cwx = load <4 x float>, ptr %i.cww, align 16, !tbaa !20
  %i.cwy = getelementptr inbounds [4 x i8], ptr %i.csp, i64 %i.cuv ; 4 uses
  %i.cwz = getelementptr inbounds i8, ptr %i.cwy, i64 -16
  %i.cxa = load <4 x float>, ptr %i.cwz, align 16, !tbaa !20
  %i.cxb = getelementptr inbounds [4 x i8], ptr %i.csp, i64 %i.cva ; 4 uses
  %i.cxc = getelementptr inbounds i8, ptr %i.cxb, i64 -16
  %i.cxd = load <4 x float>, ptr %i.cxc, align 16, !tbaa !20
  %i.cxe = getelementptr inbounds [4 x i8], ptr %i.csp, i64 %i.cvf ; 4 uses
  %i.cxf = getelementptr inbounds i8, ptr %i.cxe, i64 -16
  %i.cxg = load <4 x float>, ptr %i.cxf, align 16, !tbaa !20
  %i.cxh = shufflevector <4 x float> %i.cwx, <4 x float> %i.cxa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cxi = shufflevector <4 x float> %i.cxd, <4 x float> %i.cxg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cxj = shufflevector <16 x float> %i.cxh, <16 x float> %i.cxi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cxk = load <4 x float>, ptr %i.cwv, align 16, !tbaa !20
  %i.cxl = load <4 x float>, ptr %i.cwy, align 16, !tbaa !20
  %i.cxm = load <4 x float>, ptr %i.cxb, align 16, !tbaa !20
  %i.cxn = load <4 x float>, ptr %i.cxe, align 16, !tbaa !20
  %i.cxo = shufflevector <4 x float> %i.cxk, <4 x float> %i.cxl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cxp = shufflevector <4 x float> %i.cxm, <4 x float> %i.cxn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cxq = shufflevector <16 x float> %i.cxo, <16 x float> %i.cxp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cwv, i64 16
  %i.cxs = load <4 x float>, ptr %i.cxr, align 16, !tbaa !20
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cwy, i64 16
  %i.cxu = load <4 x float>, ptr %i.cxt, align 16, !tbaa !20
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxb, i64 16
  %i.cxw = load <4 x float>, ptr %i.cxv, align 16, !tbaa !20
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxe, i64 16
  %i.cxy = load <4 x float>, ptr %i.cxx, align 16, !tbaa !20
  %i.cxz = shufflevector <4 x float> %i.cxs, <4 x float> %i.cxu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cya = shufflevector <4 x float> %i.cxw, <4 x float> %i.cxy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyb = shufflevector <16 x float> %i.cxz, <16 x float> %i.cya, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cwv, i64 32
  %i.cyd = load <4 x float>, ptr %i.cyc, align 16, !tbaa !20
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cwy, i64 32
  %i.cyf = load <4 x float>, ptr %i.cye, align 16, !tbaa !20
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxb, i64 32
  %i.cyh = load <4 x float>, ptr %i.cyg, align 16, !tbaa !20
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cxe, i64 32
  %i.cyj = load <4 x float>, ptr %i.cyi, align 16, !tbaa !20
  %i.cyk = shufflevector <4 x float> %i.cyd, <4 x float> %i.cyf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cyl = shufflevector <4 x float> %i.cyh, <4 x float> %i.cyj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cym = shufflevector <16 x float> %i.cyk, <16 x float> %i.cyl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cyn = fmul fast <16 x float> %i.cxj, %i.ctl
  %i.cyo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cxq, <16 x float> nofpclass(nan inf) %i.ctu, <16 x float> nofpclass(nan inf) %i.cyn)
  %i.cyp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cyb, <16 x float> nofpclass(nan inf) %i.cud, <16 x float> nofpclass(nan inf) %i.cyo)
  %i.cyq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cym, <16 x float> nofpclass(nan inf) %i.cum, <16 x float> nofpclass(nan inf) %i.cyp)
  %i.cyr = getelementptr inbounds nuw [4 x i8], ptr %.013802353.i, i64 %i.cwt
  store <16 x float> %i.cyq, ptr %i.cyr, align 1, !tbaa !20
  %i.cys = getelementptr inbounds [4 x i8], ptr %i.cst, i64 %i.cuq ; 4 uses
  %i.cyt = getelementptr inbounds i8, ptr %i.cys, i64 -16
  %i.cyu = load <4 x float>, ptr %i.cyt, align 16, !tbaa !20
  %i.cyv = getelementptr inbounds [4 x i8], ptr %i.cst, i64 %i.cuv ; 4 uses
  %i.cyw = getelementptr inbounds i8, ptr %i.cyv, i64 -16
  %i.cyx = load <4 x float>, ptr %i.cyw, align 16, !tbaa !20
  %i.cyy = getelementptr inbounds [4 x i8], ptr %i.cst, i64 %i.cva ; 4 uses
  %i.cyz = getelementptr inbounds i8, ptr %i.cyy, i64 -16
  %i.cza = load <4 x float>, ptr %i.cyz, align 16, !tbaa !20
  %i.czb = getelementptr inbounds [4 x i8], ptr %i.cst, i64 %i.cvf ; 4 uses
  %i.czc = getelementptr inbounds i8, ptr %i.czb, i64 -16
  %i.czd = load <4 x float>, ptr %i.czc, align 16, !tbaa !20
  %i.cze = shufflevector <4 x float> %i.cyu, <4 x float> %i.cyx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czf = shufflevector <4 x float> %i.cza, <4 x float> %i.czd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czg = shufflevector <16 x float> %i.cze, <16 x float> %i.czf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.czh = load <4 x float>, ptr %i.cys, align 16, !tbaa !20
  %i.czi = load <4 x float>, ptr %i.cyv, align 16, !tbaa !20
  %i.czj = load <4 x float>, ptr %i.cyy, align 16, !tbaa !20
  %i.czk = load <4 x float>, ptr %i.czb, align 16, !tbaa !20
  %i.czl = shufflevector <4 x float> %i.czh, <4 x float> %i.czi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czm = shufflevector <4 x float> %i.czj, <4 x float> %i.czk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czn = shufflevector <16 x float> %i.czl, <16 x float> %i.czm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cys, i64 16
  %i.czp = load <4 x float>, ptr %i.czo, align 16, !tbaa !20
  %i.czq = getelementptr inbounds nuw i8, ptr %i.cyv, i64 16
  %i.czr = load <4 x float>, ptr %i.czq, align 16, !tbaa !20
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cyy, i64 16
  %i.czt = load <4 x float>, ptr %i.czs, align 16, !tbaa !20
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czb, i64 16
  %i.czv = load <4 x float>, ptr %i.czu, align 16, !tbaa !20
  %i.czw = shufflevector <4 x float> %i.czp, <4 x float> %i.czr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czx = shufflevector <4 x float> %i.czt, <4 x float> %i.czv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.czy = shufflevector <16 x float> %i.czw, <16 x float> %i.czx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.czz = getelementptr inbounds nuw i8, ptr %i.cys, i64 32
  %i.daa = load <4 x float>, ptr %i.czz, align 16, !tbaa !20
  %i.dab = getelementptr inbounds nuw i8, ptr %i.cyv, i64 32
  %i.dac = load <4 x float>, ptr %i.dab, align 16, !tbaa !20
  %i.dad = getelementptr inbounds nuw i8, ptr %i.cyy, i64 32
  %i.dae = load <4 x float>, ptr %i.dad, align 16, !tbaa !20
  %i.daf = getelementptr inbounds nuw i8, ptr %i.czb, i64 32
  %i.dag = load <4 x float>, ptr %i.daf, align 16, !tbaa !20
  %i.dah = shufflevector <4 x float> %i.daa, <4 x float> %i.dac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dai = shufflevector <4 x float> %i.dae, <4 x float> %i.dag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.daj = shufflevector <16 x float> %i.dah, <16 x float> %i.dai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dak = fmul fast <16 x float> %i.czg, %i.ctl
  %i.dal = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.czn, <16 x float> nofpclass(nan inf) %i.ctu, <16 x float> nofpclass(nan inf) %i.dak)
  %i.dam = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.czy, <16 x float> nofpclass(nan inf) %i.cud, <16 x float> nofpclass(nan inf) %i.dal)
  %i.dan = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.daj, <16 x float> nofpclass(nan inf) %i.cum, <16 x float> nofpclass(nan inf) %i.dam)
  %i.dao = getelementptr inbounds nuw [4 x i8], ptr %.013782354.i, i64 %i.cwt
  store <16 x float> %i.dan, ptr %i.dao, align 1, !tbaa !20
  %i.dap = getelementptr inbounds [4 x i8], ptr %i.csx, i64 %i.cuq ; 4 uses
  %i.daq = getelementptr inbounds i8, ptr %i.dap, i64 -16
  %i.dar = load <4 x float>, ptr %i.daq, align 16, !tbaa !20
  %i.das = getelementptr inbounds [4 x i8], ptr %i.csx, i64 %i.cuv ; 4 uses
  %i.dat = getelementptr inbounds i8, ptr %i.das, i64 -16
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.14:bb.a
  %i.ye = load ptr, ptr %i.yc, align 8, !tbaa !13
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8
  invoke void %i.yg(ptr noundef nonnull align 8 dereferenceable(8) %i.yc, ptr noundef %i.yd)
          to label %_ZN4ncnn3MatD2Ev.exit.i31 unwind label %bb.ay, !inline_history !1

bb.aw:                                            ; preds = %bb.au
  %.not.i130.i33 = icmp eq ptr %i.yd, null
  br i1 %.not.i130.i33, label %_ZN4ncnn3MatD2Ev.exit.i31, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.yd) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i31

bb.ay:                                            ; preds = %bb.av
  %i.yh = landingpad { ptr, i32 }
          catch ptr null
  %i.yi = extractvalue { ptr, i32 } %i.yh, 0
  call void @__clang_call_terminate(ptr %i.yi) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i31:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit116.i37, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pre = load i32, ptr %5, align 4, !tbaa !28
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.aa
  %i.yj = phi i32 [ %.pre, %_ZN4ncnnL33resize_bilinear_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.no, %bb.aa ] ; 2 uses
  %i.yk = icmp eq i32 %i.yj, 4
  br i1 %i.yk, label %bb.ba, label %bb.by

bb.ba:                                            ; preds = %bb.az
  %i.yl = load ptr, ptr %6, align 8, !tbaa !63    ; 4 uses
  %i.ym = load ptr, ptr %7, align 8, !tbaa !61    ; 8 uses
  %i.yn = load ptr, ptr %8, align 8, !tbaa !63
  %i.yo = load ptr, ptr %9, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc114 unwind label %bb.cy

.noexc114:                                        ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i80 unwind label %bb.bn

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i80:       ; preds = %.noexc114
  %i.yp = icmp sgt i32 %i.ba, 0
  br i1 %i.yp, label %.lr.ph649.i, label %._crit_edge.i81

.lr.ph649.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i80
  %i.yq = load ptr, ptr %13, align 8, !tbaa !43
  %i.yr = load ptr, ptr %12, align 8, !tbaa !43
  %i.ys = icmp sgt i32 %i.az, 3                   ; 3 uses
  %i.yt = shl i32 %i.az, 2                        ; 7 uses
  %i.yu = zext nneg i32 %i.yt to i64              ; 2 uses
  %invariant.op.i.i82 = add nsw i64 %i.yu, -7
  %wide.trip.count688.i = zext nneg i32 %i.ba to i64
  %invariant.op.i = add nsw i64 %i.bh, -3         ; 2 uses
  %invariant.op710.i = add nsw i64 %i.bh, -1      ; 2 uses
  %wide.trip.count.i83 = zext i32 %i.az to i64    ; 2 uses
  %i.yv = mul i64 %i.be, %i.bh
  %i.yw = mul i64 %i.av, %i.ay                    ; 3 uses
  br label %bb.bo

._crit_edge.i81:                                  ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i80
  %i.yx = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not.i468.i = icmp eq ptr %i.yx, null
  br i1 %.not.i468.i, label %_ZN4ncnn3MatD2Ev.exit466.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i81
  %i.yy = atomicrmw add ptr %i.yx, i32 -1 acq_rel, align 4
  %i.yz = icmp eq i32 %i.yy, 1
  br i1 %i.yz, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit466.i

bb.bc:                                            ; preds = %bb.bb
  %i.za = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %.not3.i469.i = icmp eq ptr %i.za, null
  %i.zb = load ptr, ptr %13, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i469.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.zc = load ptr, ptr %i.za, align 8, !tbaa !13
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8
  invoke void %i.ze(ptr noundef nonnull align 8 dereferenceable(8) %i.za, ptr noundef %i.zb)
          to label %_ZN4ncnn3MatD2Ev.exit466.i unwind label %bb.bg, !inline_history !1

bb.be:                                            ; preds = %bb.bc
  %.not.i483.i = icmp eq ptr %i.zb, null
  br i1 %.not.i483.i, label %_ZN4ncnn3MatD2Ev.exit466.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.zb) #6
  br label %_ZN4ncnn3MatD2Ev.exit466.i

bb.bg:                                            ; preds = %bb.bd
  %i.zf = landingpad { ptr, i32 }
          catch ptr null
  %i.zg = extractvalue { ptr, i32 } %i.zf, 0
  call void @__clang_call_terminate(ptr %i.zg) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit466.i:                       ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %._crit_edge.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.zh = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i472.i = icmp eq ptr %i.zh, null
  br i1 %.not.i472.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit466.i
  %i.zi = atomicrmw add ptr %i.zh, i32 -1 acq_rel, align 4
  %i.zj = icmp eq i32 %i.zi, 1
  br i1 %i.zj, label %bb.bi, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.zk = load ptr, ptr %i.af, align 8, !tbaa !42 ; 3 uses
  %.not3.i473.i = icmp eq ptr %i.zk, null
  %i.zl = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i473.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.zm = load ptr, ptr %i.zk, align 8, !tbaa !13
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8
  invoke void %i.zo(ptr noundef nonnull align 8 dereferenceable(8) %i.zk, ptr noundef %i.zl)
          to label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.bm, !inline_history !1

bb.bk:                                            ; preds = %bb.bi
  %.not.i481.i = icmp eq ptr %i.zl, null
  br i1 %.not.i481.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.zl) #6
  br label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.bm:                                            ; preds = %bb.bj
  %i.zp = landingpad { ptr, i32 }
          catch ptr null
  %i.zq = extractvalue { ptr, i32 } %i.zp, 0
  call void @__clang_call_terminate(ptr %i.zq) #27
  unreachable

bb.bn:                                            ; preds = %.noexc114
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.zs = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %.not.i476.i = icmp eq ptr %i.zs, null
  br i1 %.not.i476.i, label %_ZN4ncnn3MatD2Ev.exit.i79, label %bb.bs

bb.bo:                                            ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91, %.lr.ph649.i
  %indvars.iv685.i = phi i64 [ 0, %.lr.ph649.i ], [ %indvars.iv.next686.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91 ] ; 3 uses
  %.0648.i = phi ptr [ %i.yn, %.lr.ph649.i ], [ %i.awx, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91 ] ; 3 uses
  %.0332646.i = phi i32 [ -2, %.lr.ph649.i ], [ %i.zu, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91 ] ; 2 uses
  %.0333645.i = phi ptr [ %i.yq, %.lr.ph649.i ], [ %.1334.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91 ] ; 8 uses
  %.0335644.i = phi ptr [ %i.yr, %.lr.ph649.i ], [ %.1336.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i91 ] ; 11 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %indvars.iv685.i
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !28 ; 6 uses
  %i.zv = icmp eq i32 %i.zu, %.0332646.i
  br i1 %i.zv, label %.loopexit.i84, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.zw = add nsw i32 %.0332646.i, 1
  %i.zx = icmp eq i32 %i.zu, %i.zw
  br i1 %i.zx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.zy = add nsw i32 %i.zu, 1
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = mul i64 %i.yw, %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aaa ; 7 uses
  br i1 %i.ys, label %.lr.ph633.i, label %.preheader616.i

.preheader616.loopexit.i:                         ; preds = %.lr.ph633.i
  %i.aac = trunc nuw nsw i64 %indvars.iv.next671.i to i32
  br label %.preheader616.i

.preheader616.i:                                  ; preds = %.preheader616.loopexit.i, %bb.bq
  %.0328.lcssa.i = phi ptr [ %i.yl, %bb.bq ], [ %i.ado, %.preheader616.loopexit.i ] ; 2 uses
  %.0325.lcssa.i = phi i32 [ 0, %bb.bq ], [ %i.aac, %.preheader616.loopexit.i ] ; 3 uses
  %i.aad = or disjoint i32 %.0325.lcssa.i, 1
  %i.aae = icmp slt i32 %i.aad, %i.az
  br i1 %i.aae, label %.lr.ph638.preheader.i, label %.preheader.i

.lr.ph638.preheader.i:                            ; preds = %.preheader616.i
  %i.aaf = zext nneg i32 %.0325.lcssa.i to i64    ; 2 uses
  %i.aag = add nuw nsw i64 %i.aaf, 1
  br label %.lr.ph638.i

.lr.ph633.i:                                      ; preds = %bb.bq, %.lr.ph633.i
  %indvars.iv670.i = phi i64 [ %indvars.iv.next671.i, %.lr.ph633.i ], [ 0, %bb.bq ] ; 3 uses
  %.0328631.i = phi ptr [ %i.ado, %.lr.ph633.i ], [ %i.yl, %bb.bq ] ; 7 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv670.i
  %18 = getelementptr inbounds nuw i8, ptr %.0328631.i, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %.0328631.i, i64 16
  %20 = insertelement <8 x ptr> poison, ptr %.0328631.i, i64 0
  %21 = insertelement <8 x ptr> %20, ptr %18, i64 1
  %22 = insertelement <8 x ptr> %21, ptr %19, i64 2
  %i.aai = shufflevector <8 x ptr> %22, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.aaj = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aai, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.aak = getelementptr inbounds nuw i8, ptr %.0328631.i, i64 24
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !60
  %i.aam = shufflevector <8 x float> %i.aaj, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aan = insertelement <4 x float> poison, float %i.aal, i64 0
  %i.aao = shufflevector <4 x float> %i.aan, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aap = shufflevector <16 x float> %i.aam, <16 x float> %i.aao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0328631.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.aar = shufflevector <3 x ptr> %i.aaq, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.aas = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aar, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.aat = getelementptr inbounds nuw i8, ptr %.0328631.i, i64 28
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !60
  %i.aav = shufflevector <8 x float> %i.aas, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaw = insertelement <4 x float> poison, float %i.aau, i64 0
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aay = shufflevector <16 x float> %i.aav, <16 x float> %i.aax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.aaz = load <4 x i32>, ptr %i.aah, align 4, !tbaa !28
  %i.aba = shl nsw <4 x i32> %i.aaz, splat (i32 2) ; 4 uses
  %i.abb = extractelement <4 x i32> %i.aba, i64 0
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.abc ; 2 uses
  %i.abe = load i64, ptr %i.abd, align 1, !tbaa !20
  %i.abf = insertelement <2 x i64> poison, i64 %i.abe, i64 0
  %i.abg = bitcast <2 x i64> %i.abf to <8 x i16>
  %i.abh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abi = bitcast <8 x i16> %i.abh to <4 x float>
  %i.abj = extractelement <4 x i32> %i.aba, i64 1
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.abk ; 2 uses
  %i.abm = load i64, ptr %i.abl, align 1, !tbaa !20
  %i.abn = insertelement <2 x i64> poison, i64 %i.abm, i64 0
  %i.abo = bitcast <2 x i64> %i.abn to <8 x i16>
  %i.abp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abq = bitcast <8 x i16> %i.abp to <4 x float>
  %i.abr = extractelement <4 x i32> %i.aba, i64 2
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.abs ; 2 uses
  %i.abu = load i64, ptr %i.abt, align 1, !tbaa !20
  %i.abv = insertelement <2 x i64> poison, i64 %i.abu, i64 0
  %i.abw = bitcast <2 x i64> %i.abv to <8 x i16>
  %i.abx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aby = bitcast <8 x i16> %i.abx to <4 x float>
  %i.abz = extractelement <4 x i32> %i.aba, i64 3
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.aca ; 2 uses
  %i.acc = load i64, ptr %i.acb, align 1, !tbaa !20
  %i.acd = insertelement <2 x i64> poison, i64 %i.acc, i64 0
  %i.ace = bitcast <2 x i64> %i.acd to <8 x i16>
  %i.acf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ace, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acg = bitcast <8 x i16> %i.acf to <4 x float>
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.aci = load i64, ptr %i.ach, align 1, !tbaa !20
  %i.acj = insertelement <2 x i64> poison, i64 %i.aci, i64 0
  %i.ack = bitcast <2 x i64> %i.acj to <8 x i16>
  %i.acl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ack, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acm = bitcast <8 x i16> %i.acl to <4 x float>
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.aco = load i64, ptr %i.acn, align 1, !tbaa !20
  %i.acp = insertelement <2 x i64> poison, i64 %i.aco, i64 0
  %i.acq = bitcast <2 x i64> %i.acp to <8 x i16>
  %i.acr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acs = bitcast <8 x i16> %i.acr to <4 x float>
  %i.act = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.acu = load i64, ptr %i.act, align 1, !tbaa !20
  %i.acv = insertelement <2 x i64> poison, i64 %i.acu, i64 0
  %i.acw = bitcast <2 x i64> %i.acv to <8 x i16>
  %i.acx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acy = bitcast <8 x i16> %i.acx to <4 x float>
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.ada = load i64, ptr %i.acz, align 1, !tbaa !20
  %i.adb = insertelement <2 x i64> poison, i64 %i.ada, i64 0
  %i.adc = bitcast <2 x i64> %i.adb to <8 x i16>
  %i.add = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ade = bitcast <8 x i16> %i.add to <4 x float>
  %i.adf = shufflevector <4 x float> %i.abi, <4 x float> %i.abq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adg = shufflevector <4 x float> %i.aby, <4 x float> %i.acg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adh = shufflevector <16 x float> %i.adf, <16 x float> %i.adg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.adi = shufflevector <4 x float> %i.acm, <4 x float> %i.acs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adj = shufflevector <4 x float> %i.acy, <4 x float> %i.ade, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adk = shufflevector <16 x float> %i.adi, <16 x float> %i.adj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.adl = fmul fast <16 x float> %i.adh, %i.aap
  %i.adm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adk, <16 x float> nofpclass(nan inf) %i.aay, <16 x float> nofpclass(nan inf) %i.adl)
  %.idx.i113 = shl nuw nsw i64 %indvars.iv670.i, 4
  %i.adn = getelementptr inbounds nuw i8, ptr %.0335644.i, i64 %.idx.i113
  store <16 x float> %i.adm, ptr %i.adn, align 1, !tbaa !20
  %i.ado = getelementptr inbounds nuw i8, ptr %.0328631.i, i64 32 ; 2 uses
  %indvars.iv.next671.i = add nuw nsw i64 %indvars.iv670.i, 4 ; 3 uses
  %i.adp = icmp slt i64 %indvars.iv.next671.i, %invariant.op.i
  br i1 %i.adp, label %.lr.ph633.i, label %.preheader616.loopexit.i, !llvm.loop !313

.preheader.loopexit.i:                            ; preds = %.lr.ph638.i
  %i.adq = trunc nuw nsw i64 %indvars.iv.next676.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader616.i
  %.1329.lcssa.i = phi ptr [ %.0328.lcssa.i, %.preheader616.i ], [ %i.afp, %.preheader.loopexit.i ]
  %.1326.lcssa.i = phi i32 [ %.0325.lcssa.i, %.preheader616.i ], [ %i.adq, %.preheader.loopexit.i ] ; 2 uses
  %i.adr = icmp slt i32 %.1326.lcssa.i, %i.az
  br i1 %i.adr, label %.lr.ph643.preheader.i, label %.loopexit.i84

.lr.ph643.preheader.i:                            ; preds = %.preheader.i
  %i.ads = zext nneg i32 %.1326.lcssa.i to i64
  br label %.lr.ph643.i

.lr.ph638.i:                                      ; preds = %.lr.ph638.i, %.lr.ph638.preheader.i
  %indvars.iv675.i = phi i64 [ %i.aaf, %.lr.ph638.preheader.i ], [ %indvars.iv.next676.i, %.lr.ph638.i ] ; 3 uses
  %indvars.iv673.i = phi i64 [ %i.aag, %.lr.ph638.preheader.i ], [ %indvars.iv.next674.i, %.lr.ph638.i ] ; 2 uses
  %.1329636.i = phi ptr [ %.0328.lcssa.i, %.lr.ph638.preheader.i ], [ %i.afp, %.lr.ph638.i ] ; 5 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv675.i
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !28
  %i.adv = shl nsw i32 %i.adu, 2
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv673.i
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !28
  %i.ady = load float, ptr %.1329636.i, align 4, !tbaa !60
  %i.adz = getelementptr inbounds nuw i8, ptr %.1329636.i, i64 8
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !60
  %i.aeb = insertelement <4 x float> poison, float %i.ady, i64 0
  %i.aec = insertelement <4 x float> poison, float %i.aea, i64 0
  %i.aed = shufflevector <4 x float> %i.aeb, <4 x float> %i.aec, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aee = getelementptr inbounds nuw i8, ptr %.1329636.i, i64 4
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !60
  %i.aeg = getelementptr inbounds nuw i8, ptr %.1329636.i, i64 12
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !60
  %i.aei = insertelement <4 x float> poison, float %i.aef, i64 0
  %i.aej = insertelement <4 x float> poison, float %i.aeh, i64 0
  %i.aek = shufflevector <4 x float> %i.aei, <4 x float> %i.aej, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ael = sext i32 %i.adv to i64
  %i.aem = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.ael ; 2 uses
  %i.aen = load i64, ptr %i.aem, align 1, !tbaa !20
  %i.aeo = insertelement <2 x i64> poison, i64 %i.aen, i64 0
  %i.aep = bitcast <2 x i64> %i.aeo to <8 x i16>
  %i.aeq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aep, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aer = shl nsw i32 %i.adx, 2
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.aes ; 2 uses
  %i.aeu = load i64, ptr %i.aet, align 1, !tbaa !20
  %i.aev = insertelement <2 x i64> poison, i64 %i.aeu, i64 0
  %i.aew = bitcast <2 x i64> %i.aev to <8 x i16>
  %i.aex = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aey = shufflevector <8 x i16> %i.aeq, <8 x i16> %i.aex, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aez = bitcast <16 x i16> %i.aey to <8 x float>
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.afb = load i64, ptr %i.afa, align 1, !tbaa !20
  %i.afc = insertelement <2 x i64> poison, i64 %i.afb, i64 0
  %i.afd = bitcast <2 x i64> %i.afc to <8 x i16>
  %i.afe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.afg = load i64, ptr %i.aff, align 1, !tbaa !20
  %i.afh = insertelement <2 x i64> poison, i64 %i.afg, i64 0
  %i.afi = bitcast <2 x i64> %i.afh to <8 x i16>
  %i.afj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afk = shufflevector <8 x i16> %i.afe, <8 x i16> %i.afj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afl = bitcast <16 x i16> %i.afk to <8 x float>
  %i.afm = fmul fast <8 x float> %i.aed, %i.aez
  %i.afn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afl, <8 x float> nofpclass(nan inf) %i.aek, <8 x float> nofpclass(nan inf) %i.afm)
  %.idx703.i = shl nuw nsw i64 %indvars.iv675.i, 4
  %i.afo = getelementptr inbounds nuw i8, ptr %.0335644.i, i64 %.idx703.i
  store <8 x float> %i.afn, ptr %i.afo, align 1, !tbaa !20
  %i.afp = getelementptr inbounds nuw i8, ptr %.1329636.i, i64 16 ; 2 uses
  %indvars.iv.next676.i = add nuw nsw i64 %indvars.iv675.i, 2 ; 3 uses
  %i.afq = icmp slt i64 %indvars.iv.next676.i, %invariant.op710.i
  %indvars.iv.next674.i = add nuw nsw i64 %indvars.iv673.i, 2
  br i1 %i.afq, label %.lr.ph638.i, label %.preheader.loopexit.i, !llvm.loop !314

.lr.ph643.i:                                      ; preds = %.lr.ph643.i, %.lr.ph643.preheader.i
  %indvars.iv680.i = phi i64 [ %i.ads, %.lr.ph643.preheader.i ], [ %indvars.iv.next681.i, %.lr.ph643.i ] ; 3 uses
  %.2330641.i = phi ptr [ %.1329.lcssa.i, %.lr.ph643.preheader.i ], [ %i.agr, %.lr.ph643.i ] ; 3 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv680.i
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !28
  %i.aft = shl nsw i32 %i.afs, 2
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.afu ; 2 uses
  %i.afw = load float, ptr %.2330641.i, align 4, !tbaa !60
  %i.afx = insertelement <4 x float> poison, float %i.afw, i64 0
  %i.afy = shufflevector <4 x float> %i.afx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afz = getelementptr inbounds nuw i8, ptr %.2330641.i, i64 4
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !60
  %i.agb = insertelement <4 x float> poison, float %i.aga, i64 0
  %i.agc = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agd = load i64, ptr %i.afv, align 1, !tbaa !20
  %i.age = insertelement <2 x i64> poison, i64 %i.agd, i64 0
  %i.agf = bitcast <2 x i64> %i.age to <8 x i16>
  %i.agg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agh = bitcast <8 x i16> %i.agg to <4 x float>
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agj = load i64, ptr %i.agi, align 1, !tbaa !20
  %i.agk = insertelement <2 x i64> poison, i64 %i.agj, i64 0
  %i.agl = bitcast <2 x i64> %i.agk to <8 x i16>
  %i.agm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.agl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agn = bitcast <8 x i16> %i.agm to <4 x float>
  %i.ago = fmul fast <4 x float> %i.afy, %i.agh
  %i.agp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agn, <4 x float> nofpclass(nan inf) %i.agc, <4 x float> nofpclass(nan inf) %i.ago)
  %.idx704.i = shl nuw nsw i64 %indvars.iv680.i, 4
  %i.agq = getelementptr inbounds nuw i8, ptr %.0335644.i, i64 %.idx704.i
  store <4 x float> %i.agp, ptr %i.agq, align 16, !tbaa !20
  %i.agr = getelementptr inbounds nuw i8, ptr %.2330641.i, i64 8
  %indvars.iv.next681.i = add nuw nsw i64 %indvars.iv680.i, 1 ; 2 uses
  %exitcond684.not.i = icmp eq i64 %indvars.iv.next681.i, %wide.trip.count.i83
  br i1 %exitcond684.not.i, label %.loopexit.i84, label %.lr.ph643.i, !llvm.loop !315

bb.br:                                            ; preds = %bb.bp
  %i.ags = sext i32 %i.zu to i64
  %i.agt = mul i64 %i.yw, %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.agt ; 7 uses
  %i.agv = add nsw i32 %i.zu, 1
  %i.agw = sext i32 %i.agv to i64
  %i.agx = mul i64 %i.yw, %i.agw
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.agx ; 7 uses
  br i1 %i.ys, label %.lr.ph.i110, label %.preheader619.i

.preheader619.loopexit.i:                         ; preds = %.lr.ph.i110
  %i.agz = trunc nuw nsw i64 %indvars.iv.next.i112 to i32
  br label %.preheader619.i

.preheader619.i:                                  ; preds = %.preheader619.loopexit.i, %bb.br
  %.0322.lcssa.i = phi ptr [ %i.yl, %bb.br ], [ %i.amr, %.preheader619.loopexit.i ] ; 2 uses
  %.0321.lcssa.i = phi i32 [ 0, %bb.br ], [ %i.agz, %.preheader619.loopexit.i ] ; 3 uses
  %i.aha = or disjoint i32 %.0321.lcssa.i, 1
  %i.ahb = icmp slt i32 %i.aha, %i.az
  br i1 %i.ahb, label %.lr.ph625.preheader.i, label %.preheader617.i

.lr.ph625.preheader.i:                            ; preds = %.preheader619.i
  %i.ahc = zext nneg i32 %.0321.lcssa.i to i64    ; 2 uses
  %i.ahd = add nuw nsw i64 %i.ahc, 1
  br label %.lr.ph625.i

.lr.ph.i110:                                      ; preds = %bb.br, %.lr.ph.i110
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %.lr.ph.i110 ], [ 0, %bb.br ] ; 3 uses
  %.0322620.i = phi ptr [ %i.amr, %.lr.ph.i110 ], [ %i.yl, %bb.br ] ; 7 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv.i111
  %23 = getelementptr inbounds nuw i8, ptr %.0322620.i, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %.0322620.i, i64 16
  %25 = insertelement <8 x ptr> poison, ptr %.0322620.i, i64 0
  %26 = insertelement <8 x ptr> %25, ptr %23, i64 1
  %27 = insertelement <8 x ptr> %26, ptr %24, i64 2
  %i.ahf = shufflevector <8 x ptr> %27, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.ahg = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.ahf, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0322620.i, i64 24
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !60
  %i.ahj = shufflevector <8 x float> %i.ahg, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahk = insertelement <4 x float> poison, float %i.ahi, i64 0
  %i.ahl = shufflevector <4 x float> %i.ahk, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahm = shufflevector <16 x float> %i.ahj, <16 x float> %i.ahl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.0322620.i, <3 x i64> <i64 4, i64 12, i64 20>
  %i.aho = shufflevector <3 x ptr> %i.ahn, <3 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2>
  %i.ahp = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.aho, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !60
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0322620.i, i64 28
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !60
  %i.ahs = shufflevector <8 x float> %i.ahp, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aht = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.ahu = shufflevector <4 x float> %i.aht, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahv = shufflevector <16 x float> %i.ahs, <16 x float> %i.ahu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.ahw = load <4 x i32>, ptr %i.ahe, align 4, !tbaa !28
  %i.ahx = shl nsw <4 x i32> %i.ahw, splat (i32 2) ; 4 uses
  %i.ahy = extractelement <4 x i32> %i.ahx, i64 0
  %i.ahz = sext i32 %i.ahy to i64                 ; 2 uses
  %i.aia = getelementptr inbounds [2 x i8], ptr %i.agu, i64 %i.ahz ; 2 uses
  %i.aib = load i64, ptr %i.aia, align 1, !tbaa !20
  %i.aic = insertelement <2 x i64> poison, i64 %i.aib, i64 0
  %i.aid = bitcast <2 x i64> %i.aic to <8 x i16>
  %i.aie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aid, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aif = bitcast <8 x i16> %i.aie to <4 x float>
  %i.aig = extractelement <4 x i32> %i.ahx, i64 1
  %i.aih = sext i32 %i.aig to i64                 ; 2 uses
  %i.aii = getelementptr inbounds [2 x i8], ptr %i.agu, i64 %i.aih ; 2 uses
  %i.aij = load i64, ptr %i.aii, align 1, !tbaa !20
  %i.aik = insertelement <2 x i64> poison, i64 %i.aij, i64 0
  %i.ail = bitcast <2 x i64> %i.aik to <8 x i16>
  %i.aim = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ail, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ain = bitcast <8 x i16> %i.aim to <4 x float>
  %i.aio = extractelement <4 x i32> %i.ahx, i64 2
  %i.aip = sext i32 %i.aio to i64                 ; 2 uses
  %i.aiq = getelementptr inbounds [2 x i8], ptr %i.agu, i64 %i.aip ; 2 uses
  %i.air = load i64, ptr %i.aiq, align 1, !tbaa !20
  %i.ais = insertelement <2 x i64> poison, i64 %i.air, i64 0
  %i.ait = bitcast <2 x i64> %i.ais to <8 x i16>
  %i.aiu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ait, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aiv = bitcast <8 x i16> %i.aiu to <4 x float>
  %i.aiw = extractelement <4 x i32> %i.ahx, i64 3
  %i.aix = sext i32 %i.aiw to i64                 ; 2 uses
  %i.aiy = getelementptr inbounds [2 x i8], ptr %i.agu, i64 %i.aix ; 2 uses
  %i.aiz = load i64, ptr %i.aiy, align 1, !tbaa !20
  %i.aja = insertelement <2 x i64> poison, i64 %i.aiz, i64 0
  %i.ajb = bitcast <2 x i64> %i.aja to <8 x i16>
  %i.ajc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajd = bitcast <8 x i16> %i.ajc to <4 x float>
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.ajf = load i64, ptr %i.aje, align 1, !tbaa !20
  %i.ajg = insertelement <2 x i64> poison, i64 %i.ajf, i64 0
  %i.ajh = bitcast <2 x i64> %i.ajg to <8 x i16>
  %i.aji = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajj = bitcast <8 x i16> %i.aji to <4 x float>
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  %i.ajl = load i64, ptr %i.ajk, align 1, !tbaa !20
  %i.ajm = insertelement <2 x i64> poison, i64 %i.ajl, i64 0
  %i.ajn = bitcast <2 x i64> %i.ajm to <8 x i16>
  %i.ajo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajp = bitcast <8 x i16> %i.ajo to <4 x float>
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.ajr = load i64, ptr %i.ajq, align 1, !tbaa !20
  %i.ajs = insertelement <2 x i64> poison, i64 %i.ajr, i64 0
  %i.ajt = bitcast <2 x i64> %i.ajs to <8 x i16>
  %i.aju = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ajv = bitcast <8 x i16> %i.aju to <4 x float>
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.ajx = load i64, ptr %i.ajw, align 1, !tbaa !20
  %i.ajy = insertelement <2 x i64> poison, i64 %i.ajx, i64 0
  %i.ajz = bitcast <2 x i64> %i.ajy to <8 x i16>
  %i.aka = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ajz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akb = bitcast <8 x i16> %i.aka to <4 x float>
  %i.akc = shufflevector <4 x float> %i.aif, <4 x float> %i.ain, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akd = shufflevector <4 x float> %i.aiv, <4 x float> %i.ajd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ake = shufflevector <16 x float> %i.akc, <16 x float> %i.akd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.akf = shufflevector <4 x float> %i.ajj, <4 x float> %i.ajp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akg = shufflevector <4 x float> %i.ajv, <4 x float> %i.akb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akh = shufflevector <16 x float> %i.akf, <16 x float> %i.akg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aki = fmul fast <16 x float> %i.ake, %i.ahm
  %i.akj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akh, <16 x float> nofpclass(nan inf) %i.ahv, <16 x float> nofpclass(nan inf) %i.aki)
  %i.akk = shl nuw nsw i64 %indvars.iv.i111, 2    ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %.0335644.i, i64 %i.akk
  store <16 x float> %i.akj, ptr %i.akl, align 1, !tbaa !20
  %i.akm = getelementptr inbounds [2 x i8], ptr %i.agy, i64 %i.ahz ; 2 uses
  %i.akn = load i64, ptr %i.akm, align 1, !tbaa !20
  %i.ako = insertelement <2 x i64> poison, i64 %i.akn, i64 0
  %i.akp = bitcast <2 x i64> %i.ako to <8 x i16>
  %i.akq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akr = bitcast <8 x i16> %i.akq to <4 x float>
  %i.aks = getelementptr inbounds [2 x i8], ptr %i.agy, i64 %i.aih ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 1, !tbaa !20
  %i.aku = insertelement <2 x i64> poison, i64 %i.akt, i64 0
  %i.akv = bitcast <2 x i64> %i.aku to <8 x i16>
  %i.akw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akx = bitcast <8 x i16> %i.akw to <4 x float>
  %i.aky = getelementptr inbounds [2 x i8], ptr %i.agy, i64 %i.aip ; 2 uses
  %i.akz = load i64, ptr %i.aky, align 1, !tbaa !20
  %i.ala = insertelement <2 x i64> poison, i64 %i.akz, i64 0
  %i.alb = bitcast <2 x i64> %i.ala to <8 x i16>
  %i.alc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ald = bitcast <8 x i16> %i.alc to <4 x float>
  %i.ale = getelementptr inbounds [2 x i8], ptr %i.agy, i64 %i.aix ; 2 uses
  %i.alf = load i64, ptr %i.ale, align 1, !tbaa !20
  %i.alg = insertelement <2 x i64> poison, i64 %i.alf, i64 0
  %i.alh = bitcast <2 x i64> %i.alg to <8 x i16>
  %i.ali = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alj = bitcast <8 x i16> %i.ali to <4 x float>
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.all = load i64, ptr %i.alk, align 1, !tbaa !20
  %i.alm = insertelement <2 x i64> poison, i64 %i.all, i64 0
  %i.aln = bitcast <2 x i64> %i.alm to <8 x i16>
  %i.alo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alp = bitcast <8 x i16> %i.alo to <4 x float>
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.alr = load i64, ptr %i.alq, align 1, !tbaa !20
  %i.als = insertelement <2 x i64> poison, i64 %i.alr, i64 0
  %i.alt = bitcast <2 x i64> %i.als to <8 x i16>
  %i.alu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alv = bitcast <8 x i16> %i.alu to <4 x float>
  %i.alw = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %i.alx = load i64, ptr %i.alw, align 1, !tbaa !20
  %i.aly = insertelement <2 x i64> poison, i64 %i.alx, i64 0
  %i.alz = bitcast <2 x i64> %i.aly to <8 x i16>
  %i.ama = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amb = bitcast <8 x i16> %i.ama to <4 x float>
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.amd = load i64, ptr %i.amc, align 1, !tbaa !20
  %i.ame = insertelement <2 x i64> poison, i64 %i.amd, i64 0
  %i.amf = bitcast <2 x i64> %i.ame to <8 x i16>
  %i.amg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.amf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amh = bitcast <8 x i16> %i.amg to <4 x float>
  %i.ami = shufflevector <4 x float> %i.akr, <4 x float> %i.akx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amj = shufflevector <4 x float> %i.ald, <4 x float> %i.alj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amk = shufflevector <16 x float> %i.ami, <16 x float> %i.amj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aml = shufflevector <4 x float> %i.alp, <4 x float> %i.alv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amm = shufflevector <4 x float> %i.amb, <4 x float> %i.amh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amn = shufflevector <16 x float> %i.aml, <16 x float> %i.amm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.amo = fmul fast <16 x float> %i.amk, %i.ahm
  %i.amp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.amn, <16 x float> nofpclass(nan inf) %i.ahv, <16 x float> nofpclass(nan inf) %i.amo)
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.0333645.i, i64 %i.akk
  store <16 x float> %i.amp, ptr %i.amq, align 1, !tbaa !20
  %i.amr = getelementptr inbounds nuw i8, ptr %.0322620.i, i64 32 ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 4 ; 3 uses
  %i.ams = icmp slt i64 %indvars.iv.next.i112, %invariant.op.i
  br i1 %i.ams, label %.lr.ph.i110, label %.preheader619.loopexit.i, !llvm.loop !316

.preheader617.loopexit.i:                         ; preds = %.lr.ph625.i
  %i.amt = trunc nuw nsw i64 %indvars.iv.next663.i to i32
  br label %.preheader617.i

.preheader617.i:                                  ; preds = %.preheader617.loopexit.i, %.preheader619.i
  %.1323.lcssa.i = phi ptr [ %.0322.lcssa.i, %.preheader619.i ], [ %i.apu, %.preheader617.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0321.lcssa.i, %.preheader619.i ], [ %i.amt, %.preheader617.loopexit.i ] ; 2 uses
  %i.amu = icmp slt i32 %.1.lcssa.i, %i.az
  br i1 %i.amu, label %.lr.ph630.preheader.i, label %.loopexit.i84

.lr.ph630.preheader.i:                            ; preds = %.preheader617.i
  %i.amv = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph630.i

.lr.ph625.i:                                      ; preds = %.lr.ph625.i, %.lr.ph625.preheader.i
  %indvars.iv662.i = phi i64 [ %i.ahc, %.lr.ph625.preheader.i ], [ %indvars.iv.next663.i, %.lr.ph625.i ] ; 3 uses
  %indvars.iv660.i = phi i64 [ %i.ahd, %.lr.ph625.preheader.i ], [ %indvars.iv.next661.i, %.lr.ph625.i ] ; 2 uses
  %.1323623.i = phi ptr [ %.0322.lcssa.i, %.lr.ph625.preheader.i ], [ %i.apu, %.lr.ph625.i ] ; 5 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv662.i
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !28
  %i.amy = shl nsw i32 %i.amx, 2
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv660.i
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !28
  %i.anb = load float, ptr %.1323623.i, align 4, !tbaa !60
  %i.anc = getelementptr inbounds nuw i8, ptr %.1323623.i, i64 8
  %i.and = load float, ptr %i.anc, align 4, !tbaa !60
  %i.ane = insertelement <4 x float> poison, float %i.anb, i64 0
  %i.anf = insertelement <4 x float> poison, float %i.and, i64 0
  %i.ang = shufflevector <4 x float> %i.ane, <4 x float> %i.anf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.1323623.i, i64 4
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !60
  %i.anj = getelementptr inbounds nuw i8, ptr %.1323623.i, i64 12
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !60
  %i.anl = insertelement <4 x float> poison, float %i.ani, i64 0
  %i.anm = insertelement <4 x float> poison, float %i.ank, i64 0
  %i.ann = shufflevector <4 x float> %i.anl, <4 x float> %i.anm, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.ano = sext i32 %i.amy to i64                 ; 2 uses
  %i.anp = getelementptr inbounds [2 x i8], ptr %i.agu, i64 %i.ano ; 2 uses
  %i.anq = load i64, ptr %i.anp, align 1, !tbaa !20
  %i.anr = insertelement <2 x i64> poison, i64 %i.anq, i64 0
  %i.ans = bitcast <2 x i64> %i.anr to <8 x i16>
  %i.ant = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ans, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anu = shl nsw i32 %i.ana, 2
  %i.anv = sext i32 %i.anu to i64                 ; 2 uses
  %i.anw = getelementptr inbounds [2 x i8], ptr %i.agu, i64 %i.anv ; 2 uses
  %i.anx = load i64, ptr %i.anw, align 1, !tbaa !20
  %i.any = insertelement <2 x i64> poison, i64 %i.anx, i64 0
  %i.anz = bitcast <2 x i64> %i.any to <8 x i16>
  %i.aoa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.anz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aob = shufflevector <8 x i16> %i.ant, <8 x i16> %i.aoa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aoc = bitcast <16 x i16> %i.aob to <8 x float>
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
end_hunk_5
