Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/do_fit?download=true
inline.NumInlined: 93
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_:bb.a
; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(60) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %1) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.b, ptr %i.a, align 8, !tbaa !44
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !46
  %i.f = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.f, ptr %i.c, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.h, ptr %i.g, align 1, !tbaa !48
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = load ptr, ptr %0, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !48
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !48
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z6jacobiPPdiS_S0_Pi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z11do_fit_ndimiiPfPA3_KfPA3_f(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 16       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader29.preheader, label %._crit_edge

.preheader29.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %.pre = load float, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre44 = load float, ptr %.phi.trans.insert, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre46 = load float, ptr %.phi.trans.insert45, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre48 = load float, ptr %.phi.trans.insert47, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre51 = load float, ptr %.phi.trans.insert50, align 16, !tbaa !9 ; 2 uses
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre54 = load float, ptr %.phi.trans.insert53, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre56 = load float, ptr %.phi.trans.insert55, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre59 = load float, ptr %.phi.trans.insert58, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre62 = load float, ptr %.phi.trans.insert61, align 16, !tbaa !9 ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader29.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.preheader29.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %.pre44, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %.pre46, i64 0
  %broadcast.splat66 = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %.pre48, i64 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %.pre51, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %.pre54, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %.pre56, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %.pre59, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <8 x float> poison, float %.pre62, i64 0
  %broadcast.splat78 = shufflevector <8 x float> %broadcast.splatinsert77, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %5 = mul nuw nsw i64 %index, 12
  %6 = getelementptr nuw i8, ptr %4, i64 %5
  %wide.vec = load <24 x float>, ptr %6, align 4, !tbaa !9 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 3 uses
  %strided.vec79 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 3 uses
  %strided.vec80 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 3 uses
  %7 = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %index
  %i.c = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.d = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat64, <8 x float> %strided.vec79, <8 x float> %i.c)
  %i.e = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat66, <8 x float> %strided.vec80, <8 x float> %i.d)
  %i.f = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat68, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.g = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat70, <8 x float> %strided.vec79, <8 x float> %i.f)
  %i.h = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat72, <8 x float> %strided.vec80, <8 x float> %i.g)
  %i.i = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat74, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.j = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat76, <8 x float> %strided.vec79, <8 x float> %i.i)
  %i.k = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat78, <8 x float> %strided.vec80, <8 x float> %i.j)
  %i.l = shufflevector <8 x float> %i.e, <8 x float> %i.h, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.m = shufflevector <8 x float> %i.k, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.l, <16 x float> %i.m, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %7, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader29.preheader81

.preheader29.preheader81:                         ; preds = %.preheader29.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader29.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader81, %.preheader29
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader29 ], [ %indvars.iv.ph, %.preheader29.preheader81 ] ; 3 uses
  %8 = mul nuw nsw i64 %indvars.iv, 12
  %scevgep = getelementptr nuw i8, ptr %4, i64 %8 ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %scevgep, align 4, !tbaa !9 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %9 = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %.pre, float %.sroa.0.0.copyload, float 0.000000e+00)
  %i.p = tail call float @llvm.fmuladd.f32(float %.pre44, float %.sroa.6.0.copyload, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.pre46, float %.sroa.9.0.copyload, float %i.p)
  store float %i.q, ptr %9, align 4, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.r = tail call float @llvm.fmuladd.f32(float %.pre48, float %.sroa.0.0.copyload, float 0.000000e+00)
  %i.s = tail call float @llvm.fmuladd.f32(float %.pre51, float %.sroa.6.0.copyload, float %i.r)
  %i.t = tail call float @llvm.fmuladd.f32(float %.pre54, float %.sroa.9.0.copyload, float %i.s)
  store float %i.t, ptr %10, align 4, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = tail call float @llvm.fmuladd.f32(float %.pre56, float %.sroa.0.0.copyload, float 0.000000e+00)
  %i.v = tail call float @llvm.fmuladd.f32(float %.pre59, float %.sroa.6.0.copyload, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %.pre62, float %.sroa.9.0.copyload, float %i.v)
  store float %i.w, ptr %11, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !53

._crit_edge:                                      ; preds = %.preheader29, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 16       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef 3, i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.preheader29.preheader.i, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit

.preheader29.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 3 uses
  %.pre.i = load float, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre44.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre46.i = load float, ptr %.phi.trans.insert45.i, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre48.i = load float, ptr %.phi.trans.insert47.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert50.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre51.i = load float, ptr %.phi.trans.insert50.i, align 16, !tbaa !9 ; 2 uses
  %.phi.trans.insert53.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre54.i = load float, ptr %.phi.trans.insert53.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert55.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre56.i = load float, ptr %.phi.trans.insert55.i, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert58.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre59.i = load float, ptr %.phi.trans.insert58.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert61.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre62.i = load float, ptr %.phi.trans.insert61.i, align 16, !tbaa !9 ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.preheader29.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader29.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <8 x float> poison, float %.pre44.i, i64 0
  %broadcast.splat4 = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <8 x float> poison, float %.pre46.i, i64 0
  %broadcast.splat6 = shufflevector <8 x float> %broadcast.splatinsert5, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <8 x float> poison, float %.pre48.i, i64 0
  %broadcast.splat8 = shufflevector <8 x float> %broadcast.splatinsert7, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x float> poison, float %.pre51.i, i64 0
  %broadcast.splat10 = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x float> poison, float %.pre54.i, i64 0
  %broadcast.splat12 = shufflevector <8 x float> %broadcast.splatinsert11, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x float> poison, float %.pre56.i, i64 0
  %broadcast.splat14 = shufflevector <8 x float> %broadcast.splatinsert13, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x float> poison, float %.pre59.i, i64 0
  %broadcast.splat16 = shufflevector <8 x float> %broadcast.splatinsert15, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x float> poison, float %.pre62.i, i64 0
  %broadcast.splat18 = shufflevector <8 x float> %broadcast.splatinsert17, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %4 = mul nuw nsw i64 %index, 12
  %5 = getelementptr nuw i8, ptr %3, i64 %4
  %wide.vec = load <24 x float>, ptr %5, align 4, !tbaa !9 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 3 uses
  %strided.vec19 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 3 uses
  %strided.vec20 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 3 uses
  %6 = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %index
  %i.c = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.d = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat4, <8 x float> %strided.vec19, <8 x float> %i.c)
  %i.e = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat6, <8 x float> %strided.vec20, <8 x float> %i.d)
  %i.f = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat8, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.g = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat10, <8 x float> %strided.vec19, <8 x float> %i.f)
  %i.h = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat12, <8 x float> %strided.vec20, <8 x float> %i.g)
  %i.i = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat14, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.j = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat16, <8 x float> %strided.vec19, <8 x float> %i.i)
  %i.k = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat18, <8 x float> %strided.vec20, <8 x float> %i.j)
  %i.l = shufflevector <8 x float> %i.e, <8 x float> %i.h, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.m = shufflevector <8 x float> %i.k, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.l, <16 x float> %i.m, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %6, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit, label %.preheader29.i.preheader

.preheader29.i.preheader:                         ; preds = %.preheader29.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader29.preheader.i ], [ %n.vec, %middle.block ]
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i.preheader, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ %indvars.iv.i.ph, %.preheader29.i.preheader ] ; 3 uses
  %7 = mul nuw nsw i64 %indvars.iv.i, 12
  %scevgep.i = getelementptr nuw i8, ptr %3, i64 %7 ; 3 uses
  %.sroa.0.0.copyload.i = load float, ptr %scevgep.i, align 4, !tbaa !9 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %8 = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.i ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %.pre.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.p = tail call float @llvm.fmuladd.f32(float %.pre44.i, float %.sroa.6.0.copyload.i, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.pre46.i, float %.sroa.9.0.copyload.i, float %i.p)
  store float %i.q, ptr %8, align 4, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.r = tail call float @llvm.fmuladd.f32(float %.pre48.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.s = tail call float @llvm.fmuladd.f32(float %.pre51.i, float %.sroa.6.0.copyload.i, float %i.r)
  %i.t = tail call float @llvm.fmuladd.f32(float %.pre54.i, float %.sroa.9.0.copyload.i, float %i.s)
  store float %i.t, ptr %9, align 4, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = tail call float @llvm.fmuladd.f32(float %.pre56.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.v = tail call float @llvm.fmuladd.f32(float %.pre59.i, float %.sroa.6.0.copyload.i, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %.pre62.i, float %.sroa.9.0.copyload.i, float %i.v)
  store float %i.w, ptr %10, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit, label %.preheader29.i, !llvm.loop !55

_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit:              ; preds = %.preheader29.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z12reset_x_ndimiiPKiiS0_PA3_fPKf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 30 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 305) #17
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.e = load ptr, ptr %7, align 8, !tbaa !46     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.h = load i64, ptr %i.f, align 8, !tbaa !48
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %i.a, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  %.not = icmp eq ptr %2, null
  %i.k = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader70, label %.preheader72

.preheader72:                                     ; preds = %bb.h
  br i1 %i.k, label %.lr.ph77, label %.loopexit71

.lr.ph77:                                         ; preds = %.preheader72
  %i.l = icmp sgt i32 %0, 0
  %wide.trip.count107 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.l, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph77
  %wide.trip.count102 = zext nneg i32 %0 to i64
  %trip.count.minus.1 = add nsw i64 %wide.trip.count102, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.m = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter = and i64 %wide.trip.count107, 3      ; 3 uses
  %i.n = icmp ult i32 %1, 4
  br i1 %i.n, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i64 %wide.trip.count107, 2147483644
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next105.3, %.lr.ph.us ] ; 5 uses
  %.05476.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader.new ], [ %i.aw, %.lr.ph.us ]
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter.next.3, %.lr.ph.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %6, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = getelementptr inbounds [12 x i8], ptr %5, i64 %i.q
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.t, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158, <4 x float> %wide.masked.load, <4 x float> %wide.masked.load159)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.u, ptr align 8 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %6, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.1 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat158.1 = shufflevector <4 x float> %broadcast.splatinsert157.1, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = getelementptr inbounds [12 x i8], ptr %5, i64 %i.y
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ab, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.1, <4 x float> %wide.masked.load.1, <4 x float> %wide.masked.load159.1)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ac, ptr align 8 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.2 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat158.2 = shufflevector <4 x float> %broadcast.splatinsert157.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ag
  %wide.masked.load.2 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aj, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.2, <4 x float> %wide.masked.load.2, <4 x float> %wide.masked.load159.2)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ak, ptr align 8 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.3 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat158.3 = shufflevector <4 x float> %broadcast.splatinsert157.3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ao
  %i.as = fadd float %.05476.us, %i.s
  %i.at = fadd float %i.as, %i.aa
  %i.au = fadd float %i.at, %i.ai
  %wide.masked.load.3 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ar, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.3, <4 x float> %wide.masked.load.3, <4 x float> %wide.masked.load159.3)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.av, ptr align 8 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.aw = fadd float %i.au, %i.aq                 ; 3 uses
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit71.loopexit213.unr-lcssa, label %.lr.ph.us, !llvm.loop !56

.preheader70:                                     ; preds = %bb.h
  br i1 %i.k, label %.lr.ph81, label %.loopexit71

.lr.ph81:                                         ; preds = %.preheader70
  %i.ax = icmp sgt i32 %0, 0
  %wide.trip.count122 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.ax, label %.lr.ph.us83.preheader, label %._crit_edge

.lr.ph.us83.preheader:                            ; preds = %.lr.ph81
  %wide.trip.count117 = zext nneg i32 %0 to i64
  %trip.count.minus.1163 = add nsw i64 %wide.trip.count117, -1
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %trip.count.minus.1163, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ay = icmp uge <4 x i64> %broadcast.splat165, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter217 = and i64 %wide.trip.count122, 3   ; 3 uses
  %i.az = icmp ult i32 %1, 4
  br i1 %i.az, label %.lr.ph.us83.epil.preheader, label %.lr.ph.us83.preheader.new

.lr.ph.us83.preheader.new:                        ; preds = %.lr.ph.us83.preheader
  %unroll_iter222 = and i64 %wide.trip.count122, 2147483644
  br label %.lr.ph.us83

.lr.ph.us83:                                      ; preds = %.lr.ph.us83, %.lr.ph.us83.preheader.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.us83.preheader.new ], [ %indvars.iv.next120.3, %.lr.ph.us83 ] ; 6 uses
  %.15580.us = phi float [ 0.000000e+00, %.lr.ph.us83.preheader.new ], [ %i.bt, %.lr.ph.us83 ]
  %niter223 = phi i64 [ 0, %.lr.ph.us83.preheader.new ], [ %niter223.next.3, %.lr.ph.us83 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat167 = shufflevector <4 x float> %broadcast.splatinsert166, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv119
  %wide.masked.load171 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bc, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167, <4 x float> %wide.masked.load171, <4 x float> %wide.masked.load172)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 8 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.1 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat167.1 = shufflevector <4 x float> %broadcast.splatinsert166.1, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
