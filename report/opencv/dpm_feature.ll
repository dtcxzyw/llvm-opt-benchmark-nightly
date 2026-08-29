Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_feature?download=true
inline.NumInlined: 288
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv3dpm7FeatureC2ENS0_16PyramidParameterE:bb.a

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.f, label %_ZN2cv3dpm16PyramidParameterC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load double, ptr %i.p, align 8, !tbaa !25
  store double %i.w, ptr %i.l, align 8, !tbaa !25
  br label %_ZN2cv3dpm16PyramidParameterC2ERKS1_.exit

_ZN2cv3dpm16PyramidParameterC2ERKS1_.exit:        ; preds = %bb.d, %bb.e, %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dpm7Feature21computeFeaturePyramidERKNS_3MatERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::dpm::ParalComputePyramid", align 8 ; 12 uses
  %4 = alloca %"class.cv::Range", align 4         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dpm19ParalComputePyramidE, i64 16), ptr %3, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.a, ptr %i.e, align 8, !tbaa !32
  invoke void @_ZN2cv3dpm19ParalComputePyramid10initializeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = load i32, ptr %i.a, align 8, !tbaa !34
  store i32 0, ptr %4, align 4, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !38
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef -1.000000e+00)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dpm19ParalComputePyramid10initializeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !43, !align !44
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dpm19ParalComputePyramid10initializeEv, ptr noundef nonnull @.str.1, i32 noundef 75) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !51
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.l = uitofp nneg i32 %i.c to double
  %i.m = fdiv double 1.000000e+00, %i.l
  %exp2 = tail call double @exp2(double %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !43, !align !44 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store double %exp2, ptr %i.o, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52, !nonnull !43, !align !44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !53   ; 6 uses
  %i.t = icmp slt i32 %i.s, 3
  br i1 %i.t, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.9, i32 noundef 109) #16
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8, !tbaa !51
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.aa = icmp sgt i32 %i.s, 0
  br i1 %i.aa, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k
  %i.ab = icmp eq i32 %i.s, 0
  %i.ac = zext i1 %i.ab to i32
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 84 ; 2 uses
  %i.ae = icmp eq i32 %i.s, 2
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i32 %i.s, 1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

bb.n:                                             ; preds = %bb.l, %.thread.i
  %i.aj = phi i32 [ %i.ac, %.thread.i ], [ %i.ah, %bb.l ]
  %i.ak = icmp sgt i32 %i.s, -1
  %i.al = zext i1 %i.ak to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.m, %bb.n
  %i.am = phi i32 [ %i.ah, %bb.m ], [ %i.aj, %bb.n ]
  %i.an = phi i32 [ %i.ai, %bb.m ], [ %i.al, %bb.n ]
  %i.ao = sitofp i32 %i.am to double              ; 3 uses
  %i.ap = sitofp i32 %i.an to double              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ao, ptr %i.aq, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %7 = fcmp olt double %i.ap, %i.ao
  %8 = select i1 %7, double %i.ap, double %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul nnan double %i.at, 5.000000e+00
  %i.av = fptrunc double %i.au to float
  %i.aw = fpext float %i.av to double
  %i.ax = fdiv double %8, %i.aw
  %i.ay = tail call double @log(double noundef %i.ax) #18
  %i.az = load double, ptr %i.o, align 8, !tbaa !9
  %i.ba = tail call double @log(double noundef %i.az) #18
  %i.bb = fdiv double %i.ay, %i.ba
  %i.bc = tail call double @llvm.floor.f64(double %i.bb)
  %i.bd = fptosi double %i.bc to i32
  %i.be = add nsw i32 %i.bd, 1                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !18
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !45  ; 2 uses
  %i.bh = icmp slt i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dpm19ParalComputePyramid10initializeEv, ptr noundef nonnull @.str.1, i32 noundef 84) #16
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.s:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.r
  %.pn9 = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57, !nonnull !43, !align !44 ; 3 uses
  %i.br = add nsw i32 %i.be, %i.bg
  %i.bs = sext i32 %i.br to i64                   ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 3 uses
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !60 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 208               ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = sub nuw nsw i64 %i.bs, %i.bz
  tail call void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.cb)
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.v:                                             ; preds = %bb.t
  %i.cc = icmp ugt i64 %i.bz, %i.bs
  br i1 %i.cc, label %bb.w, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw [208 x i8], ptr %i.bv, i64 %i.bs ; 3 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.cd
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.cd, %bb.w ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.bu
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !58
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !39, !nonnull !43, !align !44 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !18
  %i.cj = load i32, ptr %i.cf, align 8, !tbaa !45
  %i.ck = add nsw i32 %i.cj, %i.ci
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19 ; 2 uses
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !20 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3                 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.cl
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.cu = sub nuw nsw i64 %i.cl, %i.cs
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %i.cu)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.cv = icmp ugt i64 %i.cs, %i.cl
  br i1 %i.cv, label %bb.z, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.cn, %i.cw
  br i1 %.not.i.i15, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.z
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !19
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv3dpm19ParalComputePyramidC2ERKNS_3MatERSt6vectorIS2_SaIS2_EERNS0_16PyramidParameterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dpm19ParalComputePyramidE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.d, align 8, !tbaa !32
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !63
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !64
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !46
  %i.g = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.g, ptr %i.b, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

end_hunk_0
