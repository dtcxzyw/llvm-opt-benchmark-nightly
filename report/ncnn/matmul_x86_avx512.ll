Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/matmul_x86_avx512?download=true
inline.NumInlined: 95
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnn17MatMul_x86_avx512D0Ev
define linkonce_odr hidden void @_ZN4ncnn17MatMul_x86_avx512D0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #16
  ret void
}

declare noundef i32 @_ZN4ncnn6MatMul10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(212), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17MatMul_x86_avx51215create_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((216, 224)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::ParamDict", align 8   ; 18 uses
  %3 = alloca %"class.ncnn::ModelBinFromMatArray", align 8 ; 7 uses
  %i.a = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, i32 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 3, i32 noundef %i.d)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4, i32 noundef 0)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 5, i32 noundef 0)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 6, i32 noundef 1)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 7, i32 noundef 0)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 8, i32 noundef 0)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 9, i32 noundef 0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 10, i32 noundef -1)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 11, i32 noundef 0)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 12, i32 noundef 1)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.m unwind label %bb.q       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 0

bb.q:                                             ; preds = %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.u, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn6 = phi { ptr, i32 } [ %i.t, %bb.q ], [ %.pn, %bb.t ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17MatMul_x86_avx51216destroy_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn17MatMul_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %13 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 23 uses
  %15 = alloca %"class.ncnn::Mat", align 16       ; 18 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 19 uses
  %17 = alloca %"class.std::vector.3", align 8    ; 12 uses
  %18 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %19 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %20 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 23 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 19 uses
  %23 = alloca %"class.ncnn::Mat", align 16       ; 18 uses
  %24 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %25 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %26 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %27 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %28 = alloca %"class.ncnn::Mat", align 16       ; 31 uses
  %29 = alloca %"class.ncnn::Mat", align 16       ; 31 uses
  %30 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %31 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %32 = alloca %"class.ncnn::Mat", align 16       ; 30 uses
  %33 = alloca %"class.ncnn::Mat", align 16       ; 30 uses
  %34 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %35 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 72 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 9 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !35     ; 104 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70   ; 7 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !71   ; 4 uses
  %i.j = icmp eq i32 %i.e, 1                      ; 3 uses
  %i.k = icmp eq i32 %i.g, 1                      ; 3 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %bb.cf

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.l = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
          to label %.noexc1115 unwind label %bb.bd ; 8 uses

.noexc1115:                                       ; preds = %bb.b
  store ptr %i.l, ptr %4, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i64 0, ptr %i.r, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !72
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i32 noundef %i.v, i32 noundef 1, ptr noundef null)
          to label %bb.c unwind label %bb.be

bb.c:                                             ; preds = %.noexc1115
  %i.w = load ptr, ptr %4, align 8, !tbaa !35     ; 12 uses
  %i.x = icmp eq ptr %i.w, %5
  %.phi.trans.insert1943 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.pre1944 = load ptr, ptr %.phi.trans.insert1943, align 8, !tbaa !41 ; 3 uses
  br i1 %i.x, label %_ZN4ncnn3MataSERKS0_.exit421, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i419 = icmp eq ptr %.pre1944, null
  br i1 %.not.i419, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = atomicrmw add ptr %.pre1944, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 2 uses
  %.not.i811 = icmp eq ptr %i.aa, null
  br i1 %.not.i811, label %.noexc420, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %.noexc420

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 3 uses
  %.not3.i812 = icmp eq ptr %i.ae, null
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i812, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.af)
          to label %.noexc420 unwind label %bb.bf, !inline_history !0

bb.j:                                             ; preds = %bb.h
  %.not.i958 = icmp eq ptr %i.af, null
  br i1 %.not.i958, label %.noexc420, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.af) #15
  br label %.noexc420

.noexc420:                                        ; preds = %bb.g, %bb.f, %bb.i, %bb.j, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  %i.ao = load ptr, ptr %.phi.trans.insert1943, align 8, !tbaa !41
  %i.ap = load <2 x ptr>, ptr %5, align 16, !tbaa !73
  store <2 x ptr> %i.ap, ptr %i.w, align 8, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !71
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !74
  store i32 %i.at, ptr %i.ak, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ay = load <4 x i32>, ptr %i.ax, align 8, !tbaa !75
  store <4 x i32> %i.ay, ptr %i.al, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !76
  store i32 %i.ba, ptr %i.am, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bc = load i64, ptr %i.bb, align 16, !tbaa !39
  store i64 %i.bc, ptr %i.an, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit421

_ZN4ncnn3MataSERKS0_.exit421:                     ; preds = %bb.c, %.noexc420
  %i.bd = phi ptr [ %i.ao, %.noexc420 ], [ %.pre1944, %bb.c ] ; 2 uses
  %.not.i517 = icmp eq ptr %i.bd, null
  br i1 %.not.i517, label %_ZN4ncnn3MatD2Ev.exit494, label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit421
  %i.be = atomicrmw add ptr %i.bd, i32 -1 acq_rel, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit494

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !42 ; 3 uses
  %.not3.i = icmp eq ptr %i.bh, null
  %i.bi = load ptr, ptr %5, align 16, !tbaa !43   ; 3 uses
  br i1 %.not3.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bi)
          to label %_ZN4ncnn3MatD2Ev.exit494 unwind label %bb.q, !inline_history !0

bb.o:                                             ; preds = %bb.m
  %.not.i1106 = icmp eq ptr %i.bi, null
  br i1 %.not.i1106, label %_ZN4ncnn3MatD2Ev.exit494, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.bi) #15
  br label %_ZN4ncnn3MatD2Ev.exit494

bb.q:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit494:                         ; preds = %bb.l, %_ZN4ncnn3MataSERKS0_.exit421, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !32
  %.not336 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72 ; 2 uses
  %. = select i1 %.not336, i32 1, i32 %i.br
  %.2315 = select i1 %.not336, i32 %i.br, i32 1
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %., i32 noundef %.2315, ptr noundef null)
          to label %bb.r unwind label %bb.bm

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit494
  %i.bs = load ptr, ptr %4, align 8, !tbaa !35    ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, %6
  %.phi.trans.insert1945 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.pre1946 = load ptr, ptr %.phi.trans.insert1945, align 8, !tbaa !41 ; 3 uses
  br i1 %i.bu, label %_ZN4ncnn3MataSERKS0_.exit418, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i416 = icmp eq ptr %.pre1946, null
  br i1 %.not.i416, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = atomicrmw add ptr %.pre1946, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %.not.i815 = icmp eq ptr %i.bx, null
  br i1 %.not.i815, label %.noexc417, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = atomicrmw add ptr %i.bx, i32 -1 acq_rel, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.w, label %.noexc417

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42 ; 3 uses
  %.not3.i816 = icmp eq ptr %i.cb, null
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i816, label %bb.y, label %bb.x

end_hunk_0
begin_hunk_1_@_ZNK4ncnn17MatMul_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.azh = landingpad { ptr, i32 }
          catch ptr null
  %i.azi = extractvalue { ptr, i32 } %i.azh, 0
  call void @__clang_call_terminate(ptr %i.azi) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit457:                         ; preds = %bb.pu, %_ZN4ncnn3MatD2Ev.exit458, %bb.pw, %bb.px, %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.azj = load ptr, ptr %i.amm, align 8, !tbaa !41 ; 2 uses
  %.not.i667 = icmp eq ptr %i.azj, null
  br i1 %.not.i667, label %_ZN4ncnn3MatD2Ev.exit456, label %bb.qa

bb.qa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit457
  %i.azk = atomicrmw add ptr %i.azj, i32 -1 acq_rel, align 4
  %i.azl = icmp eq i32 %i.azk, 1
  br i1 %i.azl, label %bb.qb, label %_ZN4ncnn3MatD2Ev.exit456

bb.qb:                                            ; preds = %bb.qa
  %i.azm = load ptr, ptr %i.amp, align 8, !tbaa !42 ; 3 uses
  %.not3.i668 = icmp eq ptr %i.azm, null
  %i.azn = load ptr, ptr %21, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i668, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.azo = load ptr, ptr %i.azm, align 8, !tbaa !34
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 24
  %i.azq = load ptr, ptr %i.azp, align 8
  invoke void %i.azq(ptr noundef nonnull align 8 dereferenceable(8) %i.azm, ptr noundef %i.azn)
          to label %_ZN4ncnn3MatD2Ev.exit456 unwind label %bb.qf, !inline_history !0

bb.qd:                                            ; preds = %bb.qb
  %.not.i1030 = icmp eq ptr %i.azn, null
  br i1 %.not.i1030, label %_ZN4ncnn3MatD2Ev.exit456, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  call void @free(ptr noundef nonnull %i.azn) #15
  br label %_ZN4ncnn3MatD2Ev.exit456

bb.qf:                                            ; preds = %bb.qc
  %i.azr = landingpad { ptr, i32 }
          catch ptr null
  %i.azs = extractvalue { ptr, i32 } %i.azr, 0
  call void @__clang_call_terminate(ptr %i.azs) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit456:                         ; preds = %bb.qa, %_ZN4ncnn3MatD2Ev.exit457, %bb.qc, %bb.qd, %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.wt

bb.qg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit459, %_ZN4ncnn3MatD2Ev.exit461, %bb.nq
  %.pn295.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn295.pn.pn.pn, %bb.nq ], [ %.pn289, %_ZN4ncnn3MatD2Ev.exit461 ], [ %.pn287, %_ZN4ncnn3MatD2Ev.exit459 ] ; 5 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !41 ; 2 uses
  %.not.i671 = icmp eq ptr %i.azu, null
  br i1 %.not.i671, label %_ZN4ncnn3MatD2Ev.exit455, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.azv = atomicrmw add ptr %i.azu, i32 -1 acq_rel, align 4
  %i.azw = icmp eq i32 %i.azv, 1
  br i1 %i.azw, label %bb.qi, label %_ZN4ncnn3MatD2Ev.exit455

bb.qi:                                            ; preds = %bb.qh
  %i.azx = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.azy = load ptr, ptr %i.azx, align 16, !tbaa !42 ; 3 uses
  %.not3.i672 = icmp eq ptr %i.azy, null
  %i.azz = load ptr, ptr %23, align 16, !tbaa !43 ; 3 uses
  br i1 %.not3.i672, label %bb.qk, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.baa = load ptr, ptr %i.azy, align 8, !tbaa !34
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 24
  %i.bac = load ptr, ptr %i.bab, align 8
  invoke void %i.bac(ptr noundef nonnull align 8 dereferenceable(8) %i.azy, ptr noundef %i.azz)
          to label %_ZN4ncnn3MatD2Ev.exit455 unwind label %bb.qm, !inline_history !0

bb.qk:                                            ; preds = %bb.qi
  %.not.i1028 = icmp eq ptr %i.azz, null
  br i1 %.not.i1028, label %_ZN4ncnn3MatD2Ev.exit455, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  call void @free(ptr noundef nonnull %i.azz) #15
  br label %_ZN4ncnn3MatD2Ev.exit455

bb.qm:                                            ; preds = %bb.qj
  %i.bad = landingpad { ptr, i32 }
          catch ptr null
  %i.bae = extractvalue { ptr, i32 } %i.bad, 0
  call void @__clang_call_terminate(ptr %i.bae) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit455:                         ; preds = %bb.ql, %bb.qk, %bb.qj, %bb.qg, %bb.qh, %bb.mn
  %.pn295.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aoh, %bb.mn ], [ %.pn295.pn.pn.pn.pn, %bb.qh ], [ %.pn295.pn.pn.pn.pn, %bb.qg ], [ %.pn295.pn.pn.pn.pn, %bb.qj ], [ %.pn295.pn.pn.pn.pn, %bb.qk ], [ %.pn295.pn.pn.pn.pn, %bb.ql ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.baf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !41 ; 2 uses
  %.not.i675 = icmp eq ptr %i.bag, null
  br i1 %.not.i675, label %_ZN4ncnn3MatD2Ev.exit454, label %bb.qn

bb.qn:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit455
  %i.bah = atomicrmw add ptr %i.bag, i32 -1 acq_rel, align 4
  %i.bai = icmp eq i32 %i.bah, 1
  br i1 %i.bai, label %bb.qo, label %_ZN4ncnn3MatD2Ev.exit454

bb.qo:                                            ; preds = %bb.qn
  %i.baj = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !42 ; 3 uses
  %.not3.i676 = icmp eq ptr %i.bak, null
  %i.bal = load ptr, ptr %22, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i676, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.bam = load ptr, ptr %i.bak, align 8, !tbaa !34
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 24
  %i.bao = load ptr, ptr %i.ban, align 8
  invoke void %i.bao(ptr noundef nonnull align 8 dereferenceable(8) %i.bak, ptr noundef %i.bal)
          to label %_ZN4ncnn3MatD2Ev.exit454 unwind label %bb.qs, !inline_history !0

bb.qq:                                            ; preds = %bb.qo
  %.not.i1026 = icmp eq ptr %i.bal, null
  br i1 %.not.i1026, label %_ZN4ncnn3MatD2Ev.exit454, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  call void @free(ptr noundef nonnull %i.bal) #15
  br label %_ZN4ncnn3MatD2Ev.exit454

bb.qs:                                            ; preds = %bb.qp
  %i.bap = landingpad { ptr, i32 }
          catch ptr null
  %i.baq = extractvalue { ptr, i32 } %i.bap, 0
  call void @__clang_call_terminate(ptr %i.baq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit454:                         ; preds = %bb.qr, %bb.qq, %bb.qp, %_ZN4ncnn3MatD2Ev.exit455, %bb.qn, %bb.mm
  %.pn295.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aog, %bb.mm ], [ %.pn295.pn.pn.pn.pn.pn, %bb.qn ], [ %.pn295.pn.pn.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit455 ], [ %.pn295.pn.pn.pn.pn.pn, %bb.qp ], [ %.pn295.pn.pn.pn.pn.pn, %bb.qq ], [ %.pn295.pn.pn.pn.pn.pn, %bb.qr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.bar = load ptr, ptr %i.amm, align 8, !tbaa !41 ; 2 uses
  %.not.i679 = icmp eq ptr %i.bar, null
  br i1 %.not.i679, label %_ZN4ncnn3MatD2Ev.exit453, label %bb.qt

bb.qt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit454
  %i.bas = atomicrmw add ptr %i.bar, i32 -1 acq_rel, align 4
  %i.bat = icmp eq i32 %i.bas, 1
  br i1 %i.bat, label %bb.qu, label %_ZN4ncnn3MatD2Ev.exit453

bb.qu:                                            ; preds = %bb.qt
  %i.bau = load ptr, ptr %i.amp, align 8, !tbaa !42 ; 3 uses
  %.not3.i680 = icmp eq ptr %i.bau, null
  %i.bav = load ptr, ptr %21, align 8, !tbaa !43  ; 3 uses
  br i1 %.not3.i680, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.baw = load ptr, ptr %i.bau, align 8, !tbaa !34
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 24
  %i.bay = load ptr, ptr %i.bax, align 8
  invoke void %i.bay(ptr noundef nonnull align 8 dereferenceable(8) %i.bau, ptr noundef %i.bav)
          to label %_ZN4ncnn3MatD2Ev.exit453 unwind label %bb.qy, !inline_history !0

bb.qw:                                            ; preds = %bb.qu
  %.not.i1024 = icmp eq ptr %i.bav, null
  br i1 %.not.i1024, label %_ZN4ncnn3MatD2Ev.exit453, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  call void @free(ptr noundef nonnull %i.bav) #15
  br label %_ZN4ncnn3MatD2Ev.exit453

bb.qy:                                            ; preds = %bb.qv
  %i.baz = landingpad { ptr, i32 }
          catch ptr null
  %i.bba = extractvalue { ptr, i32 } %i.baz, 0
  call void @__clang_call_terminate(ptr %i.bba) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit453:                         ; preds = %bb.qt, %_ZN4ncnn3MatD2Ev.exit454, %bb.qv, %bb.qw, %bb.qx
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.wu

bb.qz:                                            ; preds = %bb.mi
  switch i32 %.sroa.speculated, label %bb.vi [
    i32 3, label %bb.ra
    i32 4, label %bb.te
  ]

bb.ra:                                            ; preds = %bb.qz
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  br i1 %i.hv, label %bb.rb, label %bb.rc

bb.rb:                                            ; preds = %bb.ra
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !72
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bbe = load i32, ptr %i.bbd, align 8, !tbaa !79
  call void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i32 noundef %i.bbc, i32 noundef %i.bbe, i32 noundef 1, ptr noundef null)
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.rc:                                            ; preds = %bb.ra
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !41 ; 2 uses
  %i.bbh = load <2 x ptr>, ptr %i.a, align 8, !tbaa !73
  store <2 x ptr> %i.bbh, ptr %28, align 16, !tbaa !73
  %i.bbi = getelementptr inbounds nuw i8, ptr %28, i64 16
  %36 = load i64, ptr %i.h, align 8, !tbaa !71
  store i64 %36, ptr %i.bbi, align 16, !tbaa !71
  %i.bbj = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bbl = load i32, ptr %i.bbk, align 8, !tbaa !74
  store i32 %i.bbl, ptr %i.bbj, align 8, !tbaa !74
  %i.bbm = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !42
  store ptr %i.bbo, ptr %i.bbm, align 16, !tbaa !42
  %i.bbp = getelementptr inbounds nuw i8, ptr %28, i64 40
  %37 = load <4 x i32>, ptr %i.d, align 8, !tbaa !75
  store <4 x i32> %37, ptr %i.bbp, align 8, !tbaa !75
  %i.bbq = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %38 = load i32, ptr %i.bbr, align 8, !tbaa !76
  store i32 %38, ptr %i.bbq, align 8, !tbaa !76
  %i.bbs = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bbu = load i64, ptr %i.bbt, align 8, !tbaa !39
  store i64 %i.bbu, ptr %i.bbs, align 16, !tbaa !39
  %.not.i1108 = icmp eq ptr %i.bbg, null
  br i1 %.not.i1108, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.bbv = atomicrmw add ptr %i.bbg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.rd, %bb.rc, %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  br i1 %i.hw, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !72
  %i.bby = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bbz = load i32, ptr %i.bby, align 8, !tbaa !79
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %29, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.bbx, i32 noundef %i.bbz, i32 noundef 1, ptr noundef null)
          to label %_ZN4ncnn3Mat6addrefEv.exit1110 unwind label %bb.ri

bb.rf:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bca = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !41 ; 2 uses
  %i.bcc = load <2 x ptr>, ptr %i.b, align 8, !tbaa !73
  store <2 x ptr> %i.bcc, ptr %29, align 16, !tbaa !73
  %i.bcd = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bce = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bcf = load i64, ptr %i.bce, align 8, !tbaa !71
  store i64 %i.bcf, ptr %i.bcd, align 16, !tbaa !71
  %i.bcg = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.bch = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bci = load i32, ptr %i.bch, align 8, !tbaa !74
  store i32 %i.bci, ptr %i.bcg, align 8, !tbaa !74
  %i.bcj = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bck = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !42
  store ptr %i.bcl, ptr %i.bcj, align 16, !tbaa !42
  %i.bcm = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.bcn = load <4 x i32>, ptr %i.f, align 8, !tbaa !75
  store <4 x i32> %i.bcn, ptr %i.bcm, align 8, !tbaa !75
  %i.bco = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bcq = load i32, ptr %i.bcp, align 8, !tbaa !76
  store i32 %i.bcq, ptr %i.bco, align 8, !tbaa !76
  %i.bcr = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bct = load i64, ptr %i.bcs, align 8, !tbaa !39
  store i64 %i.bct, ptr %i.bcr, align 16, !tbaa !39
  %.not.i1109 = icmp eq ptr %i.bcb, null
  br i1 %.not.i1109, label %_ZN4ncnn3Mat6addrefEv.exit1110, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bcu = atomicrmw add ptr %i.bcb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1110

_ZN4ncnn3Mat6addrefEv.exit1110:                   ; preds = %bb.rg, %bb.rf, %bb.re
  %i.bcv = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.bcw = load i32, ptr %i.bcv, align 16, !tbaa !79
  %i.bcx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bcy = load i32, ptr %i.bcx, align 8, !tbaa !32
  %i.bcz = icmp eq i32 %i.bcy, 0
  %i.bda = getelementptr inbounds nuw i8, ptr %29, i64 44 ; 2 uses
  %i.bdb = load i32, ptr %i.bda, align 4
  %i.bdc = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %i.bdd = load i32, ptr %i.bdc, align 16
  %i.bde = select i1 %i.bcz, i32 %i.bdb, i32 %i.bdd
  %i.bdf = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.bdh = load i32, ptr %i.bdf, align 8, !tbaa !75
  %i.bdi = load i32, ptr %i.bdg, align 8, !tbaa !75
  %i.bdj = call i32 @llvm.smax.i32(i32 %i.bdh, i32 %i.bdi) ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !78
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i32 noundef %i.bde, i32 noundef %i.bcw, i32 noundef %i.bdj, i64 noundef %i.i, ptr noundef %i.bdl)
          to label %bb.rh unwind label %bb.rj

bb.rh:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1110
  %i.bdm = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.bdn = icmp eq ptr %i.bdm, null
  br i1 %i.bdn, label %.critedge347, label %_ZNK4ncnn3Mat5emptyEv.exit495

_ZNK4ncnn3Mat5emptyEv.exit495:                    ; preds = %bb.rh
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !39
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bdr = load i32, ptr %i.bdq, align 8, !tbaa !76
  %i.bds = sext i32 %i.bdr to i64
  %i.bdt = mul i64 %i.bdp, %i.bds
  %i.bdu = icmp eq i64 %i.bdt, 0
  br i1 %i.bdu, label %.critedge347, label %.preheader1406

.preheader1406:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit495
  %i.bdv = icmp sgt i32 %i.bdj, 0
  br i1 %i.bdv, label %.lr.ph1765, label %._crit_edge1766

.lr.ph1765:                                       ; preds = %.preheader1406
  %i.bdw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %28, i64 44
  %i.bdz = getelementptr inbounds nuw i8, ptr %28, i64 52
  %i.bea = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.beb = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bec = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.bed = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bee = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.bef = getelementptr inbounds nuw i8, ptr %29, i64 52
  %i.beg = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.beh = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bei = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.bej = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bek = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.bel = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.beo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bep = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.beq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ber = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bes = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bet = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.beu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %wide.trip.count1789 = zext nneg i32 %i.bdj to i64
  br label %bb.rk

bb.ri:                                            ; preds = %bb.re
  %i.bev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit444

bb.rj:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1110
  %i.bew = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

bb.rk:                                            ; preds = %.lr.ph1765, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1269
  %indvars.iv1786 = phi i64 [ 0, %.lr.ph1765 ], [ %indvars.iv.next1787, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1269 ] ; 4 uses
  %i.bex = load i32, ptr %i.bdf, align 8, !tbaa !76
  %i.bey = load i32, ptr %i.bdg, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.bez = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
          to label %.noexc1236 unwind label %bb.sa ; 28 uses

.noexc1236:                                       ; preds = %bb.rk
  %i.bfa = icmp eq i32 %i.bey, 1
  store ptr %i.bez, ptr %30, align 8, !tbaa !35
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bez, i64 144
  store ptr %i.bfb, ptr %i.bdw, align 8, !tbaa !38
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 32 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bez, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bez, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bfc, i8 0, i64 28, i1 false)
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bez, i64 72
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bez, i64 104
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bez, i64 136
  store i64 0, ptr %i.bfg, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bff, i8 0, i64 28, i1 false)
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bez, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bfd, i8 0, i64 36, i1 false)
  store ptr %i.bfh, ptr %i.bdx, align 8, !tbaa !40
  %i.bfi = icmp eq i32 %i.bex, 1
  %i.bfj = load i32, ptr %i.bdz, align 4, !tbaa !80, !noalias !85
  %i.bfk = load ptr, ptr %28, align 16, !tbaa !43, !noalias !85
  %i.bfl = load i64, ptr %i.bea, align 16, !tbaa !39, !noalias !85
  %i.bfm = and i64 %indvars.iv1786, 4294967295
  %i.bfn = select i1 %i.bfi, i64 0, i64 %i.bfm
  %i.bfo = mul i64 %i.bfl, %i.bfn
  %i.bfp = load i64, ptr %i.beb, align 16, !tbaa !71, !noalias !85 ; 4 uses
  %i.bfq = mul i64 %i.bfo, %i.bfp
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfk, i64 %i.bfq
  %i.bfs = load i32, ptr %i.bec, align 8, !tbaa !74, !noalias !85
  %i.bft = load ptr, ptr %i.bed, align 16, !tbaa !42, !noalias !85
  %i.bfu = load i32, ptr %i.bee, align 8, !tbaa !70, !noalias !85 ; 2 uses
  %i.bfv = add nsw i32 %i.bfu, -1
  %i.bfw = icmp eq i32 %i.bfu, 4
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bez, i64 8
  %.pre1899 = load i32, ptr %i.bef, align 4, !tbaa !80, !noalias !86
  %.pre1902 = load i64, ptr %i.beh, align 16, !tbaa !71, !noalias !86 ; 4 uses
  %.pre1903 = load i32, ptr %i.bei, align 8, !tbaa !74, !noalias !86
  %.pre1904 = load ptr, ptr %i.bej, align 16, !tbaa !42, !noalias !86
  %.pre1905 = load i32, ptr %i.bek, align 8, !tbaa !70, !noalias !86 ; 2 uses
  %.pre1901 = load i64, ptr %i.beg, align 16, !tbaa !39, !noalias !86
  %.pre1900 = load ptr, ptr %29, align 16, !tbaa !43, !noalias !86
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bez, i64 24
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bez, i64 40
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bez, i64 44
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bez, i64 48
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bez, i64 52
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bez, i64 56
  store ptr %i.bfr, ptr %i.bez, align 8, !tbaa !43
  store ptr null, ptr %i.bfx, align 8, !tbaa !41
  store i64 %i.bfp, ptr %i.bfy, align 8, !tbaa !71
  store i32 %i.bfs, ptr %i.bfz, align 8, !tbaa !74
  store ptr %i.bft, ptr %i.bfc, align 8, !tbaa !42
  store i32 %i.bfv, ptr %i.bga, align 8, !tbaa !70
  store i32 1, ptr %i.bgd, align 4, !tbaa !80
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17MatMul_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sa
  %.pn280.pn.pn.pn = phi { ptr, i32 } [ %.pn280.pn, %bb.sd ], [ %i.bkr, %bb.sa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  br label %bb.sr

._crit_edge1766:                                  ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1269, %.preheader1406
  %i.bku = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !41 ; 2 uses
  %.not.i707 = icmp eq ptr %i.bkv, null
  br i1 %.not.i707, label %_ZN4ncnn3MatD2Ev.exit446, label %bb.sf

bb.sf:                                            ; preds = %._crit_edge1766
  %i.bkw = atomicrmw add ptr %i.bkv, i32 -1 acq_rel, align 4
  %i.bkx = icmp eq i32 %i.bkw, 1
  br i1 %i.bkx, label %bb.sg, label %_ZN4ncnn3MatD2Ev.exit446

bb.sg:                                            ; preds = %bb.sf
  %i.bky = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bkz = load ptr, ptr %i.bky, align 16, !tbaa !42 ; 3 uses
  %.not3.i708 = icmp eq ptr %i.bkz, null
  %i.bla = load ptr, ptr %29, align 16, !tbaa !43 ; 3 uses
  br i1 %.not3.i708, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.blb = load ptr, ptr %i.bkz, align 8, !tbaa !34
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 24
  %i.bld = load ptr, ptr %i.blc, align 8
  invoke void %i.bld(ptr noundef nonnull align 8 dereferenceable(8) %i.bkz, ptr noundef %i.bla)
          to label %_ZN4ncnn3MatD2Ev.exit446 unwind label %bb.sk, !inline_history !0

bb.si:                                            ; preds = %bb.sg
  %.not.i1010 = icmp eq ptr %i.bla, null
  br i1 %.not.i1010, label %_ZN4ncnn3MatD2Ev.exit446, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  call void @free(ptr noundef nonnull %i.bla) #15
  br label %_ZN4ncnn3MatD2Ev.exit446

bb.sk:                                            ; preds = %bb.sh
  %i.ble = landingpad { ptr, i32 }
          catch ptr null
  %i.blf = extractvalue { ptr, i32 } %i.ble, 0
  call void @__clang_call_terminate(ptr %i.blf) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit446:                         ; preds = %bb.sf, %._crit_edge1766, %bb.sh, %bb.si, %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.blg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !41 ; 2 uses
  %.not.i711 = icmp eq ptr %i.blh, null
  br i1 %.not.i711, label %_ZN4ncnn3MatD2Ev.exit445, label %bb.sl

bb.sl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit446
  %i.bli = atomicrmw add ptr %i.blh, i32 -1 acq_rel, align 4
  %i.blj = icmp eq i32 %i.bli, 1
  br i1 %i.blj, label %bb.sm, label %_ZN4ncnn3MatD2Ev.exit445

bb.sm:                                            ; preds = %bb.sl
  %i.blk = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bll = load ptr, ptr %i.blk, align 16, !tbaa !42 ; 3 uses
  %.not3.i712 = icmp eq ptr %i.bll, null
  %i.blm = load ptr, ptr %28, align 16, !tbaa !43 ; 3 uses
  br i1 %.not3.i712, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bln = load ptr, ptr %i.bll, align 8, !tbaa !34
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 24
  %i.blp = load ptr, ptr %i.blo, align 8
  invoke void %i.blp(ptr noundef nonnull align 8 dereferenceable(8) %i.bll, ptr noundef %i.blm)
          to label %_ZN4ncnn3MatD2Ev.exit445 unwind label %bb.sq, !inline_history !0

bb.so:                                            ; preds = %bb.sm
  %.not.i1008 = icmp eq ptr %i.blm, null
  br i1 %.not.i1008, label %_ZN4ncnn3MatD2Ev.exit445, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  call void @free(ptr noundef nonnull %i.blm) #15
  br label %_ZN4ncnn3MatD2Ev.exit445

bb.sq:                                            ; preds = %bb.sn
  %i.blq = landingpad { ptr, i32 }
          catch ptr null
  %i.blr = extractvalue { ptr, i32 } %i.blq, 0
  call void @__clang_call_terminate(ptr %i.blr) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit445:                         ; preds = %bb.sl, %_ZN4ncnn3MatD2Ev.exit446, %bb.sn, %bb.so, %bb.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %bb.wt

bb.sr:                                            ; preds = %bb.se, %bb.rj
  %.pn280.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn280.pn.pn.pn, %bb.se ], [ %i.bew, %bb.rj ] ; 5 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !41 ; 2 uses
  %.not.i715 = icmp eq ptr %i.blt, null
  br i1 %.not.i715, label %_ZN4ncnn3MatD2Ev.exit444, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.blu = atomicrmw add ptr %i.blt, i32 -1 acq_rel, align 4
  %i.blv = icmp eq i32 %i.blu, 1
  br i1 %i.blv, label %bb.st, label %_ZN4ncnn3MatD2Ev.exit444

bb.st:                                            ; preds = %bb.ss
  %i.blw = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.blx = load ptr, ptr %i.blw, align 16, !tbaa !42 ; 3 uses
  %.not3.i716 = icmp eq ptr %i.blx, null
  %i.bly = load ptr, ptr %29, align 16, !tbaa !43 ; 3 uses
  br i1 %.not3.i716, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.blz = load ptr, ptr %i.blx, align 8, !tbaa !34
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 24
  %i.bmb = load ptr, ptr %i.bma, align 8
  invoke void %i.bmb(ptr noundef nonnull align 8 dereferenceable(8) %i.blx, ptr noundef %i.bly)
          to label %_ZN4ncnn3MatD2Ev.exit444 unwind label %bb.sx, !inline_history !0

bb.sv:                                            ; preds = %bb.st
  %.not.i1006 = icmp eq ptr %i.bly, null
  br i1 %.not.i1006, label %_ZN4ncnn3MatD2Ev.exit444, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  call void @free(ptr noundef nonnull %i.bly) #15
  br label %_ZN4ncnn3MatD2Ev.exit444

bb.sx:                                            ; preds = %bb.su
  %i.bmc = landingpad { ptr, i32 }
          catch ptr null
  %i.bmd = extractvalue { ptr, i32 } %i.bmc, 0
  call void @__clang_call_terminate(ptr %i.bmd) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit444:                         ; preds = %bb.sw, %bb.sv, %bb.su, %bb.sr, %bb.ss, %bb.ri
  %.pn280.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bev, %bb.ri ], [ %.pn280.pn.pn.pn.pn, %bb.ss ], [ %.pn280.pn.pn.pn.pn, %bb.sr ], [ %.pn280.pn.pn.pn.pn, %bb.su ], [ %.pn280.pn.pn.pn.pn, %bb.sv ], [ %.pn280.pn.pn.pn.pn, %bb.sw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.bme = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !41 ; 2 uses
  %.not.i719 = icmp eq ptr %i.bmf, null
  br i1 %.not.i719, label %_ZN4ncnn3MatD2Ev.exit443, label %bb.sy

bb.sy:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit444
  %i.bmg = atomicrmw add ptr %i.bmf, i32 -1 acq_rel, align 4
  %i.bmh = icmp eq i32 %i.bmg, 1
  br i1 %i.bmh, label %bb.sz, label %_ZN4ncnn3MatD2Ev.exit443

bb.sz:                                            ; preds = %bb.sy
  %i.bmi = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bmj = load ptr, ptr %i.bmi, align 16, !tbaa !42 ; 3 uses
  %.not3.i720 = icmp eq ptr %i.bmj, null
  %i.bmk = load ptr, ptr %28, align 16, !tbaa !43 ; 3 uses
  br i1 %.not3.i720, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.bml = load ptr, ptr %i.bmj, align 8, !tbaa !34
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 24
  %i.bmn = load ptr, ptr %i.bmm, align 8
  invoke void %i.bmn(ptr noundef nonnull align 8 dereferenceable(8) %i.bmj, ptr noundef %i.bmk)
          to label %_ZN4ncnn3MatD2Ev.exit443 unwind label %bb.td, !inline_history !0

bb.tb:                                            ; preds = %bb.sz
  %.not.i1004 = icmp eq ptr %i.bmk, null
  br i1 %.not.i1004, label %_ZN4ncnn3MatD2Ev.exit443, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  call void @free(ptr noundef nonnull %i.bmk) #15
  br label %_ZN4ncnn3MatD2Ev.exit443

bb.td:                                            ; preds = %bb.ta
  %i.bmo = landingpad { ptr, i32 }
          catch ptr null
  %i.bmp = extractvalue { ptr, i32 } %i.bmo, 0
  call void @__clang_call_terminate(ptr %i.bmp) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit443:                         ; preds = %bb.sy, %_ZN4ncnn3MatD2Ev.exit444, %bb.ta, %bb.tb, %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %bb.wu

bb.te:                                            ; preds = %bb.qz
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  %i.bmq = icmp eq i32 %i.e, 3
  br i1 %i.bmq, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bms = load i32, ptr %i.bmr, align 4, !tbaa !72
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bmu = load i32, ptr %i.bmt, align 8, !tbaa !79
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bmw = load i32, ptr %i.bmv, align 8, !tbaa !76
  call void @_ZNK4ncnn3Mat7reshapeEiiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %32, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i32 noundef %i.bms, i32 noundef %i.bmu, i32 noundef %i.bmw, i32 noundef 1, ptr noundef null)
  br label %_ZN4ncnn3Mat6addrefEv.exit1112

bb.tg:                                            ; preds = %bb.te
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !41 ; 2 uses
  %i.bmz = load <2 x ptr>, ptr %i.a, align 8, !tbaa !73
  store <2 x ptr> %i.bmz, ptr %32, align 16, !tbaa !73
  %i.bna = getelementptr inbounds nuw i8, ptr %32, i64 16
  %39 = load i64, ptr %i.h, align 8, !tbaa !71
  store i64 %39, ptr %i.bna, align 16, !tbaa !71
  %i.bnb = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bnd = load i32, ptr %i.bnc, align 8, !tbaa !74
  store i32 %i.bnd, ptr %i.bnb, align 8, !tbaa !74
  %i.bne = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !42
  store ptr %i.bng, ptr %i.bne, align 16, !tbaa !42
  %i.bnh = getelementptr inbounds nuw i8, ptr %32, i64 40
  %40 = load <4 x i32>, ptr %i.d, align 8, !tbaa !75
  store <4 x i32> %40, ptr %i.bnh, align 8, !tbaa !75
  %i.bni = getelementptr inbounds nuw i8, ptr %32, i64 56
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %41 = load i32, ptr %i.bnj, align 8, !tbaa !76
  store i32 %41, ptr %i.bni, align 8, !tbaa !76
  %i.bnk = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bnm = load i64, ptr %i.bnl, align 8, !tbaa !39
  store i64 %i.bnm, ptr %i.bnk, align 16, !tbaa !39
  %.not.i1111 = icmp eq ptr %i.bmy, null
  br i1 %.not.i1111, label %_ZN4ncnn3Mat6addrefEv.exit1112, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.bnn = atomicrmw add ptr %i.bmy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1112

_ZN4ncnn3Mat6addrefEv.exit1112:                   ; preds = %bb.th, %bb.tg, %bb.tf
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  %i.bno = icmp eq i32 %i.g, 3
  br i1 %i.bno, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1112
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !72
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bns = load i32, ptr %i.bnr, align 8, !tbaa !79
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bnu = load i32, ptr %i.bnt, align 8, !tbaa !76
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %33, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.bnq, i32 noundef %i.bns, i32 noundef %i.bnu, i32 noundef 1, ptr noundef null)
          to label %_ZN4ncnn3Mat6addrefEv.exit1114 unwind label %bb.tm

bb.tj:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1112
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !41 ; 2 uses
  %i.bnx = load <2 x ptr>, ptr %i.b, align 8, !tbaa !73
  store <2 x ptr> %i.bnx, ptr %33, align 16, !tbaa !73
  %i.bny = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.boa = load i64, ptr %i.bnz, align 8, !tbaa !71
  store i64 %i.boa, ptr %i.bny, align 16, !tbaa !71
  %i.bob = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.boc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bod = load i32, ptr %i.boc, align 8, !tbaa !74
  store i32 %i.bod, ptr %i.bob, align 8, !tbaa !74
  %i.boe = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.bof = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !42
  store ptr %i.bog, ptr %i.boe, align 16, !tbaa !42
  %i.boh = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.boi = load <4 x i32>, ptr %i.f, align 8, !tbaa !75
  store <4 x i32> %i.boi, ptr %i.boh, align 8, !tbaa !75
  %i.boj = getelementptr inbounds nuw i8, ptr %33, i64 56
  %i.bok = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bol = load i32, ptr %i.bok, align 8, !tbaa !76
  store i32 %i.bol, ptr %i.boj, align 8, !tbaa !76
  %i.bom = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.bon = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.boo = load i64, ptr %i.bon, align 8, !tbaa !39
  store i64 %i.boo, ptr %i.bom, align 16, !tbaa !39
  %.not.i1113 = icmp eq ptr %i.bnw, null
  br i1 %.not.i1113, label %_ZN4ncnn3Mat6addrefEv.exit1114, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bop = atomicrmw add ptr %i.bnw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1114

_ZN4ncnn3Mat6addrefEv.exit1114:                   ; preds = %bb.tk, %bb.tj, %bb.ti
  %i.boq = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  %i.bor = load i32, ptr %i.boq, align 16, !tbaa !79
  %i.bos = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bot = load i32, ptr %i.bos, align 8, !tbaa !32
  %i.bou = icmp eq i32 %i.bot, 0
  %i.bov = getelementptr inbounds nuw i8, ptr %33, i64 44 ; 3 uses
  %i.bow = load i32, ptr %i.bov, align 4
  %i.box = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  %i.boy = load i32, ptr %i.box, align 16
  %i.boz = select i1 %i.bou, i32 %i.bow, i32 %i.boy
  %i.bpa = getelementptr inbounds nuw i8, ptr %32, i64 52 ; 2 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %33, i64 52 ; 2 uses
  %i.bpc = load i32, ptr %i.bpa, align 4, !tbaa !75
  %i.bpd = load i32, ptr %i.bpb, align 4, !tbaa !75
  %i.bpe = call i32 @llvm.smax.i32(i32 %i.bpc, i32 %i.bpd) ; 3 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %32, i64 56 ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %i.bph = load i32, ptr %i.bpf, align 8, !tbaa !75
  %i.bpi = load i32, ptr %i.bpg, align 8, !tbaa !75
  %i.bpj = call i32 @llvm.smax.i32(i32 %i.bph, i32 %i.bpi) ; 3 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !78
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i32 noundef %i.boz, i32 noundef %i.bor, i32 noundef %i.bpe, i32 noundef %i.bpj, i64 noundef %i.i, ptr noundef %i.bpl)
          to label %bb.tl unwind label %bb.tn

bb.tl:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1114
  %i.bpm = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.bpn = icmp eq ptr %i.bpm, null
  br i1 %i.bpn, label %.critedge349, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.tl
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.bpp = load i64, ptr %i.bpo, align 8, !tbaa !39
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bpr = load i32, ptr %i.bpq, align 8, !tbaa !76
  %i.bps = sext i32 %i.bpr to i64
  %i.bpt = mul i64 %i.bpp, %i.bps
  %i.bpu = icmp eq i64 %i.bpt, 0
  br i1 %i.bpu, label %.critedge349, label %.preheader1407

.preheader1407:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.bpv = icmp sgt i32 %i.bpj, 0
  br i1 %i.bpv, label %.lr.ph1762, label %._crit_edge1763.split

.lr.ph1762:                                       ; preds = %.preheader1407
  %i.bpw = icmp sgt i32 %i.bpe, 0
  %i.bpx = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %32, i64 44 ; 2 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.bqb = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.bqc = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.bqd = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.bqe = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.bqf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.bqg = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.bqh = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.bqi = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 216
  br i1 %i.bpw, label %.lr.ph.preheader, label %._crit_edge1763.split

.lr.ph.preheader:                                 ; preds = %.lr.ph1762
  %wide.trip.count1784 = zext nneg i32 %i.bpj to i64
  %wide.trip.count = zext nneg i32 %i.bpe to i64
  br label %.lr.ph

bb.tm:                                            ; preds = %bb.ti
  %i.bqq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit428

bb.tn:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1114
  %i.bqr = landingpad { ptr, i32 }
          cleanup
  br label %bb.uv

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv1781 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next1782, %._crit_edge ] ; 4 uses
  %i.bqs = load i32, ptr %i.bpf, align 8, !tbaa !76
  %i.bqt = icmp eq i32 %i.bqs, 1
  %i.bqu = load i32, ptr %i.bpg, align 8, !tbaa !76
  %i.bqv = icmp eq i32 %i.bqu, 1
  %i.bqw = and i64 %indvars.iv1781, 4294967295
  %i.bqx = select i1 %i.bqt, i64 0, i64 %i.bqw
  %i.bqy = and i64 %indvars.iv1781, 4294967295
  %i.bqz = select i1 %i.bqv, i64 0, i64 %i.bqy
  br label %bb.to

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1309
  %indvars.iv.next1782 = add nuw nsw i64 %indvars.iv1781, 1 ; 2 uses
  %exitcond1785.not = icmp eq i64 %indvars.iv.next1782, %wide.trip.count1784
  br i1 %exitcond1785.not, label %._crit_edge1763.split, label %.lr.ph, !llvm.loop !62

bb.to:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1309
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1309 ] ; 4 uses
  %i.bra = load i32, ptr %i.bpa, align 4, !tbaa !80
  %i.brb = load i32, ptr %i.bpb, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %i.brc = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
          to label %.noexc351 unwind label %bb.ue ; 19 uses

.noexc351:                                        ; preds = %bb.to
  %i.brd = icmp eq i32 %i.brb, 1
  %i.bre = icmp eq i32 %i.bra, 1
  store ptr %i.brc, ptr %34, align 8, !tbaa !35
  %i.brf = getelementptr inbounds nuw i8, ptr %i.brc, i64 144
  store ptr %i.brf, ptr %i.bpx, align 8, !tbaa !38
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brc, i64 32
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brc, i64 64
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brc, i64 72
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brc, i64 144
  store ptr %i.brj, ptr %i.bpy, align 8, !tbaa !40
  %i.brk = load ptr, ptr %32, align 16, !tbaa !43, !noalias !88
  %i.brl = load i64, ptr %i.bqa, align 16, !tbaa !39, !noalias !88
  %i.brm = mul i64 %i.brl, %i.bqx
  %i.brn = load i64, ptr %i.bqb, align 16, !tbaa !71, !noalias !88 ; 3 uses
  %i.bro = mul i64 %i.brm, %i.brn
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brk, i64 %i.bro
  %i.brq = load i32, ptr %i.bqc, align 8, !tbaa !74, !noalias !88
  %i.brr = load ptr, ptr %i.bqd, align 16, !tbaa !42, !noalias !88
  %i.brs = and i64 %indvars.iv, 4294967295
  %i.brt = select i1 %i.bre, i64 0, i64 %i.brs
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brc, i64 8
  %.pre1886 = load i64, ptr %i.bqf, align 16, !tbaa !71, !noalias !89 ; 3 uses
  %.pre1887 = load i32, ptr %i.bqg, align 8, !tbaa !74, !noalias !89
  %.pre1888 = load ptr, ptr %i.bqh, align 16, !tbaa !42, !noalias !89
  %.pre1885 = load i64, ptr %i.bqe, align 16, !tbaa !39, !noalias !89
  %.pre1884 = load ptr, ptr %33, align 16, !tbaa !43, !noalias !89
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brc, i64 16
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brc, i64 24
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brc, i64 40
end_hunk_2
