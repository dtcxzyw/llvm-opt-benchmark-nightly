Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/resolution_proofs_util?download=true
inline.NumInlined: 1812
inline.NumDeleted: 588
begin_hunk_0_@_ZN4cvc58internal5proof21eliminateCrowdingLitsEPNS0_11NodeManagerEbRKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EESA_SA_SA_PNS0_7CDProofEPNS0_16ProofNodeManagerE:bb.a
  %19 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %20 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %21 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %22 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %23 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %24 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %25 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 4 uses
  %27 = alloca %"class.std::tuple.168", align 8   ; 4 uses
  %28 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %29 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %30 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %31 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %32 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %33 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %34 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %35 = alloca %"class.std::tuple.161", align 8   ; 4 uses
  %36 = alloca %"class.std::tuple.164", align 1   ; 3 uses
  %37 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 4 uses
  %39 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 4 uses
  %41 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 4 uses
  %43 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %44 = alloca %"class.std::vector.0", align 8    ; 14 uses
  %45 = alloca %"class.std::vector.0", align 8    ; 14 uses
  %46 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %47 = alloca %"class.std::unordered_set.77", align 8 ; 20 uses
  %48 = alloca %"class.std::vector.93", align 8   ; 23 uses
  %49 = alloca %"class.std::map.98", align 8      ; 21 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 8 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %52 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 6 uses
  %53 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %55 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %56 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %57 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 6 uses
  %58 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %59 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate.109", align 8 ; 6 uses
  %61 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %62 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %63 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %66 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %67 = alloca %"class.std::vector.0", align 8    ; 15 uses
  %68 = alloca %"class.std::vector.0", align 8    ; 15 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %70 = alloca %"class.std::vector.0", align 8    ; 11 uses
  %71 = alloca %"class.std::vector.0", align 8    ; 11 uses
  %72 = alloca %"class.std::vector.0", align 8    ; 13 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %74 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %76 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %77 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %78 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %79 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %80 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %81 = alloca %"class.std::vector.0", align 8    ; 10 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %83 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %84 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %85 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %86 = alloca %"class.std::vector.0", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = load ptr, ptr %5, align 8, !tbaa !26     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, !prof !27

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
  %.pre = load ptr, ptr %5, align 8, !tbaa !28
  %.pre2638 = load ptr, ptr %i.c, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre2638, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.m, ptr %44, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.l, ptr %i.k, ptr noundef %i.m)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn413.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.n, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 3 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !26     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %.not.i.i.i.i465 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i465, label %.noexc470, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775800
  br i1 %i.y, label %.noexc.i.i469, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466, !prof !27

.noexc.i.i469:                                    ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i469
  unreachable

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466: ; preds = %bb.f
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #23
          to label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466..noexc470_crit_edge unwind label %bb.k

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466..noexc470_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466
  %.pre2639 = load ptr, ptr %6, align 8, !tbaa !28
  %.pre2640 = load ptr, ptr %i.s, align 8, !tbaa !28
  br label %.noexc470

.noexc470:                                        ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466..noexc470_crit_edge, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit
  %i.aa = phi ptr [ %i.t, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ], [ %.pre2640, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466..noexc470_crit_edge ]
  %i.ab = phi ptr [ %i.u, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ], [ %.pre2639, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466..noexc470_crit_edge ]
  %i.ac = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit ], [ %i.z, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466..noexc470_crit_edge ] ; 5 uses
  store ptr %i.ac, ptr %45, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !29
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.ab, ptr %i.aa, ptr noundef %i.ac)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc470
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i467 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i467, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.x) #24
  br label %.body

bb.i:                                             ; preds = %.noexc470
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !30
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %46, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  store ptr %i.ai, ptr %47, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 5 uses
  store i64 1, ptr %i.aj, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %47, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %47, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ao = load ptr, ptr %5, align 8, !tbaa !26
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %i.at = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 40 uses
  store i32 0, ptr %i.at, align 8, !tbaa !135
  %i.au = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 13 uses
  store ptr null, ptr %i.au, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 3 uses
  store ptr %i.at, ptr %i.av, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %49, i64 32
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %49, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ba
  br i1 %.not, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit.thread, label %.lr.ph2405

.lr.ph2405:                                       ; preds = %bb.j
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %storemerge4002377 = add nsw i64 %i.as, -1      ; 2 uses
  %.not4012378 = icmp eq i64 %storemerge4002377, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %48, i64 16
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i466, %.noexc.i.i469
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.sb

bb.m:                                             ; preds = %.lr.ph2405, %bb.cw
  %.02772402 = phi i64 [ 0, %.lr.ph2405 ], [ %i.mt, %bb.cw ] ; 3 uses
  %.sroa.01828.02401 = phi ptr [ null, %.lr.ph2405 ], [ %.sroa.01828.4, %bb.cw ] ; 10 uses
  %.sroa.16.02400 = phi ptr [ null, %.lr.ph2405 ], [ %.sroa.16.4, %bb.cw ] ; 4 uses
  %.sroa.27.02399 = phi ptr [ null, %.lr.ph2405 ], [ %.sroa.27.4, %bb.cw ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.bl = load ptr, ptr %3, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.02772402
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  store ptr %i.bn, ptr %50, align 8, !tbaa !51
  %i.bo = load i64, ptr %i.bf, align 8, !tbaa !52
  %.not.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.not.i.i.i, label %.preheader1928, label %bb.o

.preheader1928:                                   ; preds = %bb.m, %bb.n
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i472 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i472, label %.loopexit1929, label %bb.n

bb.n:                                             ; preds = %.preheader1928
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.br = icmp eq ptr %i.bn, %i.bq
  br i1 %i.br, label %.critedge, label %.preheader1928, !llvm.loop !80

bb.o:                                             ; preds = %bb.m
  %i.bs = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb0EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %47, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %.noexc473 unwind label %bb.ac ; 3 uses

.noexc473:                                        ; preds = %bb.o
  %i.bt = load i64, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  %i.bu = urem i64 %i.bs, %i.bt                   ; 2 uses
  %i.bv = load ptr, ptr %47, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %.loopexit1929, label %bb.p

bb.p:                                             ; preds = %.noexc473
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53 ; 3 uses
  %i.bz = load ptr, ptr %50, align 8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !57
  %i.cd = icmp eq i64 %i.bs, %i.cc
  %i.ce = load ptr, ptr %i.ca, align 8
  %i.cf = icmp eq ptr %i.bz, %i.ce
  %i.cg = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %i.cg, label %.critedge, label %.lr.ph.i.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ci = icmp eq i64 %i.bs, %i.co
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = icmp eq ptr %i.bz, %i.cj
  %i.cl = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %i.cl, label %.critedge, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i.i = phi ptr [ %i.cm, %bb.q ], [ %i.by, %bb.p ]
  %i.cm = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !53 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit1929, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !57 ; 2 uses
  %i.cp = urem i64 %i.co, %i.bt
  %.not19.i.i.i.i.i = icmp eq i64 %i.cp, %i.bu
  br i1 %.not19.i.i.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !81

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.r
  br label %.loopexit1929, !llvm.loop !81

.loopexit1929:                                    ; preds = %.lr.ph.i.i.i.i.i, %.preheader1928, %..loopexit_crit_edge21.i.i.i.i.i, %.noexc473
  %i.cq = load ptr, ptr %4, align 8, !tbaa !28    ; 4 uses
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 3 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.02772402 ; 5 uses
  %i.cu = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = ashr i64 %i.cw, 5                       ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit1929
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !49 ; 4 uses
  %i.da = and i64 %i.cw, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %i.dn, %bb.w ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i ], [ %i.dm, %bb.w ] ; 9 uses
  %i.db = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !49
  %i.dc = icmp eq ptr %i.db, %i.cz
  br i1 %i.dc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !49
  %i.df = icmp eq ptr %i.de, %i.cz
  br i1 %i.df, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3145, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !49
  %i.di = icmp eq ptr %i.dh, %i.cz
  br i1 %i.di, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3143, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  %i.dl = icmp eq ptr %i.dk, %i.cz
  br i1 %i.dl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.dn = add nsw i64 %.052.i.i.i, -1
  %i.do = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.do, label %bb.s, label %._crit_edge.loopexit.i.i.i, !llvm.loop !82

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.w
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.cu, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.loopexit1929
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cw, %.loopexit1929 ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cq, %.loopexit1929 ] ; 5 uses
  %i.dp = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.dp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.thread [
    i64 3, label %bb.x
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.ad

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !49
  br label %bb.ab

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !49
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.dq = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !49
  %i.dr = load ptr, ptr %i.ct, align 8, !tbaa !49 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge._crit_edge.i.i.i
  %i.du = phi ptr [ %i.dr, %bb.y ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.dt, %bb.y ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.dv = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !49
  %i.dw = icmp eq ptr %i.dv, %i.du
  br i1 %i.dw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge._crit_edge57.i.i.i
  %i.dy = phi ptr [ %i.du, %bb.aa ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.dx, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.dz = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !49
  %i.ea = icmp eq ptr %i.dz, %i.dy
  %spec.select.i.i.i = select i1 %i.ea, ptr %.sroa.032.2.i.i.i, ptr %i.cr
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3143: ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3145: ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit: ; preds = %bb.s, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3143, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3145, %bb.ab, %bb.z, %bb.x
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.z ], [ %spec.select.i.i.i, %bb.ab ], [ %.sroa.032.0.lcssa.i.i.i, %bb.x ], [ %i.ed, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3145 ], [ %i.ec, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit3143 ], [ %i.eb, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.s ]
  %.not1905 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br i1 %.not1905, label %bb.ad, label %bb.cw

.critedge:                                        ; preds = %bb.q, %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.cw

bb.ac:                                            ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.rz

bb.ad:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.thread, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.ef = load ptr, ptr %i.ct, align 8, !tbaa !49 ; 5 uses
  store ptr %i.ef, ptr %51, align 8, !tbaa !49
  %i.eg = load i64, ptr %i.ef, align 8            ; 3 uses
  %i.eh = lshr i64 %i.eg, 40
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = and i32 %i.ei, 1048575                  ; 3 uses
  %i.ek = icmp samesign ult i32 %i.ej, 1048574
  br i1 %i.ek, label %bb.ae, label %bb.af, !prof !58

bb.ae:                                            ; preds = %bb.ad
  %i.el = add nuw nsw i32 %i.ej, 1
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 40
  %i.eo = and i64 %i.eg, -1152920405095219201
  %i.ep = or i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.ef, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.af:                                            ; preds = %bb.ad
  %i.eq = icmp eq i32 %i.ej, 1048574
  br i1 %i.eq, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !27

bb.ag:                                            ; preds = %bb.af
  %i.er = or i64 %i.eg, 1152920405095219200
  store i64 %i.er, ptr %i.ef, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.ai

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  %i.es = load ptr, ptr %51, align 8, !tbaa !49
  store ptr %i.es, ptr %52, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  store ptr %47, ptr %43, align 8, !tbaa !138
  %i.et = invoke { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %47, ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

bb.ah:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br i1 %.not4012378, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ah
  %.pre2641 = load ptr, ptr %44, align 8, !tbaa !26 ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread1866
  %storemerge4002380 = phi i64 [ %storemerge400, %.thread1866 ], [ %storemerge4002377, %.lr.ph.preheader ] ; 5 uses
  %storemerge400.in23792627 = add i64 %storemerge4002380, 1 ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %.pre2641, i64 %storemerge400.in23792627
  %i.ev = getelementptr i8, ptr %i.eu, i64 -16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = and i64 %i.ey, 1023
  %.not402 = icmp eq i64 %i.ez, 23
  br i1 %.not402, label %bb.ak, label %.thread1866

bb.ai:                                            ; preds = %bb.ag
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %bb.cx

bb.ak:                                            ; preds = %.lr.ph
  %i.fc = load ptr, ptr %45, align 8, !tbaa !26
  %.idx1906 = shl i64 %storemerge4002380, 4
  %i.fd = getelementptr i8, ptr %i.fc, i64 %.idx1906
  %i.fe = getelementptr i8, ptr %i.fd, i64 -16    ; 2 uses
  %i.ff = add i64 %storemerge4002380, -1          ; 3 uses
  %87 = getelementptr inbounds nuw [8 x i8], ptr %.pre2641, i64 %i.ff
  %88 = load ptr, ptr %i.fe, align 8, !tbaa !49
  %i.fg = load ptr, ptr %87, align 8, !tbaa !49
  %i.fh = icmp eq ptr %88, %i.fg
  br i1 %i.fh, label %.thread1866, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !49, !noalias !139 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %42), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21, !noalias !140
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !61, !noalias !140
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef %i.fk, i32 noundef 20)
          to label %.noexc484 unwind label %bb.at

.noexc484:                                        ; preds = %bb.al
  store ptr %i.fi, ptr %42, align 8, !tbaa !51, !noalias !140
  %i.fl = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef nonnull align 8 %42)
          to label %bb.am unwind label %bb.ao, !noalias !140 ; 0 uses

bb.am:                                            ; preds = %.noexc484
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %53, ptr noundef nonnull align 8 dereferenceable(124) %41)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ao:                                            ; preds = %.noexc484
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ao, %bb.an
  %.pn.i.i = phi { ptr, i32 } [ %i.fm, %bb.an ], [ %i.fn, %bb.ao ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21, !noalias !140
  br label %.body485

bb.ap:                                            ; preds = %bb.am
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %42), !noalias !139
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.pre2641, i64 %i.ff ; 3 uses
  %i.fp = load ptr, ptr %53, align 8, !tbaa !49   ; 4 uses
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !49
  %i.fr = icmp eq ptr %i.fp, %i.fq
  %i.fs = load i64, ptr %i.fp, align 8            ; 3 uses
  %i.ft = and i64 %i.fs, 1152920405095219200
  %.not.i.i487 = icmp eq i64 %i.ft, 1152920405095219200
  br i1 %.not.i.i487, label %.critedge424, label %bb.aq, !prof !27

bb.aq:                                            ; preds = %bb.ap
  %i.fu = add i64 %i.fs, 1152920405095219200
  %i.fv = and i64 %i.fu, 1152920405095219200      ; 2 uses
  %i.fw = and i64 %i.fs, -1152920405095219201
  %i.fx = or disjoint i64 %i.fv, %i.fw
  store i64 %i.fx, ptr %i.fp, align 8
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.ar, label %.critedge424, !prof !27

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %.critedge424 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #25
  unreachable

.critedge424:                                     ; preds = %bb.ar, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  br i1 %i.fr, label %.thread1866, label %bb.au

bb.at:                                            ; preds = %bb.al
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body485

.body485:                                         ; preds = %.body.i, %bb.at
  %eh.lpad-body486 = phi { ptr, i32 } [ %i.gb, %bb.at ], [ %.pn.i.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  br label %bb.cx

bb.au:                                            ; preds = %.critedge424
  %i.gc = load ptr, ptr %i.fo, align 8, !tbaa !49 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = and i32 %i.gf, 1023                     ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 1023
  %i.gi = select i1 %i.gh, i32 -1, i32 %i.gg
  %i.gj = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.gi)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gk = icmp eq i32 %i.gj, 2
  %spec.select.v.i.i = select i1 %i.gk, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 %spec.select.v.i.i
  %i.gl = load ptr, ptr %i.fo, align 8, !tbaa !49 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = lshr i64 %i.go, 32
  %i.gq = and i64 %i.gp, 67108863
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gq
  %i.gs = invoke ptr @_ZSt9__find_ifIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb1EEEEEN9__gnu_cxx5__ops16_Iter_equals_valIKS6_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %spec.select.i.i, ptr nonnull %i.gr, ptr nonnull align 8 dereferenceable(8) %51)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.pre2641, i64 %i.ff
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !49 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = lshr i64 %i.gx, 32
  %i.gz = and i64 %i.gy, 67108863
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gz
  %.not1907 = icmp eq ptr %i.gs, %i.ha
  br i1 %.not1907, label %.thread1866, label %._crit_edge.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.thread1866:                                      ; preds = %bb.ak, %bb.aw, %.critedge424, %.lr.ph
  %storemerge400 = add i64 %storemerge4002380, -1 ; 2 uses
  %.not401 = icmp eq i64 %storemerge400, 0
  br i1 %.not401, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !87

._crit_edge.loopexit:                             ; preds = %bb.aw, %.thread1866
  %storemerge400.in.lcssa.ph = phi i64 [ 1, %.thread1866 ], [ %storemerge400.in23792627, %bb.aw ]
  %storemerge400.lcssa.ph = phi i64 [ 0, %.thread1866 ], [ %storemerge4002380, %bb.aw ]
  %i.hc = add i64 %storemerge400.in.lcssa.ph, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ah
  %storemerge400.in.lcssa = phi i64 [ -1, %bb.ah ], [ %i.hc, %._crit_edge.loopexit ] ; 2 uses
  %storemerge400.lcssa = phi i64 [ 0, %bb.ah ], [ %storemerge400.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %storemerge400.in.lcssa, ptr %i.b, align 8, !tbaa !62
  %i.hd = load ptr, ptr %i.bh, align 8, !tbaa !65 ; 4 uses
  %i.he = load ptr, ptr %i.bi, align 8, !tbaa !66
  %.not.i490 = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i490, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge
  %i.hf = load ptr, ptr %51, align 8, !tbaa !49   ; 5 uses
  store ptr %i.hf, ptr %i.hd, align 8, !tbaa !49
  %i.hg = load i64, ptr %i.hf, align 8            ; 3 uses
  %i.hh = lshr i64 %i.hg, 40
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 1048575                  ; 3 uses
  %i.hk = icmp samesign ult i32 %i.hj, 1048574
  br i1 %i.hk, label %bb.az, label %bb.ba, !prof !58

bb.az:                                            ; preds = %bb.ay
  %i.hl = add nuw nsw i32 %i.hj, 1
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 40
  %i.ho = and i64 %i.hg, -1152920405095219201
  %i.hp = or i64 %i.hn, %i.ho
  store i64 %i.hp, ptr %i.hf, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2IRS3_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.hq = icmp eq i32 %i.hj, 1048574
  br i1 %i.hq, label %bb.bb, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2IRS3_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i, !prof !27

bb.bb:                                            ; preds = %bb.ba
  %i.hr = or i64 %i.hg, 1152920405095219200
  store i64 %i.hr, ptr %i.hf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2IRS3_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i unwind label %bb.cb

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2IRS3_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.ht = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.ht, ptr %i.hs, align 8, !tbaa !68
  %i.hu = load ptr, ptr %i.bh, align 8, !tbaa !65
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store ptr %i.hv, ptr %i.bh, align 8, !tbaa !65
  br label %.noexc492

bb.bc:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEEmESaIS5_EE17_M_realloc_insertIJRS4_mEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr %i.hd, ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc492 unwind label %bb.cb

.noexc492:                                        ; preds = %bb.bc, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2IRS3_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.hw = icmp ult i64 %storemerge400.lcssa, %i.as
  br i1 %i.hw, label %.lr.ph2389.preheader, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550._crit_edge

.lr.ph2389.preheader:                             ; preds = %.noexc492
  %.pre2643.a = load ptr, ptr %45, align 8, !tbaa !26
  br label %.lr.ph2389

.lr.ph2389:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550, %.lr.ph2389.preheader
  %i.hx = phi ptr [ %i.la, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550 ], [ %.pre2643.a, %.lr.ph2389.preheader ] ; 4 uses
  %.sroa.01828.12388 = phi ptr [ %.sroa.01828.2, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550 ], [ %.sroa.01828.02401, %.lr.ph2389.preheader ] ; 7 uses
  %.sroa.16.12387 = phi ptr [ %.sroa.16.2, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550 ], [ %.sroa.16.02400, %.lr.ph2389.preheader ] ; 7 uses
  %.sroa.27.12386 = phi ptr [ %.sroa.27.2, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550 ], [ %.sroa.27.02399, %.lr.ph2389.preheader ] ; 5 uses
  %.018522385 = phi i64 [ %i.lk, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit550 ], [ %storemerge400.lcssa, %.lr.ph2389.preheader ] ; 4 uses
  %.idx2875 = shl i64 %.018522385, 4
  %i.hy = getelementptr i8, ptr %i.hx, i64 %.idx2875 ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !49
  %i.ib = load ptr, ptr %46, align 8, !tbaa !49
  %i.ic = icmp eq ptr %i.ia, %i.ib                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !49 ; 12 uses
  store ptr %i.id, ptr %54, align 8, !tbaa !49
  %i.ie = load i64, ptr %i.id, align 8            ; 3 uses
  %i.if = lshr i64 %i.ie, 40
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 1048575                  ; 3 uses
  %i.ii = icmp samesign ult i32 %i.ih, 1048574
  br i1 %i.ii, label %bb.bd, label %bb.be, !prof !58

bb.bd:                                            ; preds = %.lr.ph2389
  %i.ij = add nuw nsw i32 %i.ih, 1
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ik, 40
  %i.im = and i64 %i.ie, -1152920405095219201
  %i.in = or i64 %i.il, %i.im
  store i64 %i.in, ptr %i.id, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit505

bb.be:                                            ; preds = %.lr.ph2389
  %i.io = icmp eq i32 %i.ih, 1048574
  br i1 %i.io, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit505, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.ip = or i64 %i.ie, 1152920405095219200
  store i64 %i.ip, ptr %i.id, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit505 unwind label %bb.cd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit505: ; preds = %bb.be, %bb.bd, %bb.bf
  %i.iq = load ptr, ptr %51, align 8, !tbaa !49   ; 3 uses
  %i.ir = icmp eq ptr %i.iq, %i.id
  %or.cond = select i1 %i.ir, i1 %i.ic, i1 false
  br i1 %or.cond, label %.critedge428.thread, label %bb.bg

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit505
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %40), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21, !noalias !142
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !61, !noalias !142
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %39, ptr noundef %i.it, i32 noundef 20)
          to label %.noexc531 unwind label %bb.ce

.noexc531:                                        ; preds = %bb.bg
  store ptr %i.iq, ptr %40, align 8, !tbaa !51, !noalias !142
  %i.iu = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %39, ptr noundef nonnull align 8 %40)
          to label %bb.bh unwind label %bb.bj, !noalias !142 ; 0 uses

bb.bh:                                            ; preds = %.noexc531
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %55, ptr noundef nonnull align 8 dereferenceable(124) %39)
          to label %bb.bk unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i529

bb.bj:                                            ; preds = %.noexc531
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i529

.body.i529:                                       ; preds = %bb.bj, %bb.bi
  %.pn.i.i530 = phi { ptr, i32 } [ %i.iv, %bb.bi ], [ %i.iw, %bb.bj ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21, !noalias !142
  br label %.body532

bb.bk:                                            ; preds = %bb.bh
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %40), !noalias !141
  %i.ix = load ptr, ptr %55, align 8, !tbaa !49   ; 2 uses
  %i.iy = icmp ne ptr %i.ix, %i.id
  %or.cond4 = select i1 %i.iy, i1 true, i1 %i.ic
  br i1 %or.cond4, label %bb.bl, label %.critedge426

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  %i.iz = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21, !noalias !144
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !61, !noalias !144
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef %i.ja, i32 noundef 20)
          to label %.noexc537 unwind label %bb.cf

.noexc537:                                        ; preds = %bb.bl
  store ptr %i.id, ptr %38, align 8, !tbaa !51, !noalias !144
  %i.jb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull align 8 %38)
          to label %bb.bm unwind label %bb.bo, !noalias !144 ; 0 uses

bb.bm:                                            ; preds = %.noexc537
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %56, ptr noundef nonnull align 8 dereferenceable(124) %37)
          to label %bb.bp unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i535

bb.bo:                                            ; preds = %.noexc537
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i535

.body.i535:                                       ; preds = %bb.bo, %bb.bn
  %.pn.i.i536 = phi { ptr, i32 } [ %i.jc, %bb.bn ], [ %i.jd, %bb.bo ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21, !noalias !144
  br label %.body538

bb.bp:                                            ; preds = %bb.bm
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %38), !noalias !143
  %i.je = load ptr, ptr %56, align 8, !tbaa !49   ; 4 uses
  %i.jf = load ptr, ptr %51, align 8, !tbaa !49
  %i.jg = icmp eq ptr %i.je, %i.jf
  %i.jh = xor i1 %i.ic, true
  %i.ji = select i1 %i.jg, i1 %i.jh, i1 false
  %i.jj = load i64, ptr %i.je, align 8            ; 3 uses
  %i.jk = and i64 %i.jj, 1152920405095219200
end_hunk_0
