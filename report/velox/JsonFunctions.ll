Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonFunctions?download=true
inline.NumInlined: 16949
inline.NumDeleted: 7026
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_b:bb.a
  %i.d = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::vector.193", align 8  ; 13 uses
  %44 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %45 = alloca %"class.std::shared_ptr.142", align 16 ; 7 uses
  %46 = alloca %"class.std::shared_ptr.142", align 16 ; 4 uses
  %47 = alloca %"class.std::shared_ptr.142", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %48 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %49 = alloca %"class.std::optional.171", align 8 ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.g = alloca i64, align 8                      ; 11 uses
  %i.h = alloca i64, align 8                      ; 11 uses
  %51 = alloca %"class.std::vector.72", align 8   ; 17 uses
  %52 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %53 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %54 = alloca %"class.std::optional.372", align 1 ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %55 = alloca %"class.std::shared_ptr.655", align 8 ; 7 uses
  %56 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %57 = alloca %"class.std::vector.193", align 8  ; 13 uses
  %58 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.m = zext i1 %5 to i8
  store i8 %i.m, ptr %i.a, align 1, !tbaa !664
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %0, ptr %27, align 8, !tbaa !1307
  %i.n = load atomic i8, ptr %0 acquire, align 8, !range !641, !noundef !642
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit, label %bb.b, !prof !662

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_E14call_once_slowIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %27)
  br label %_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit

_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.p = load ptr, ptr %2, align 8, !tbaa !752    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !768
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.eo

bb.c:                                             ; preds = %_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !769
  %i.u = load i32, ptr %28, align 8, !tbaa !888
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.w = load ptr, ptr %3, align 8, !tbaa !784
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !805
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.y = getelementptr inbounds nuw i8, ptr %30, i64 1
  store i8 0, ptr %i.y, align 1, !tbaa !887
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %29, i64 noundef %i.v, ptr noundef %i.x, ptr noundef nonnull align 1 dereferenceable(2) %30, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.z = load ptr, ptr %3, align 8, !tbaa !784
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !805 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3357)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !668, !noalias !3357
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !3357
  %i.ae = invoke noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i64 noundef 112)
          to label %.noexc unwind label %bb.m, !inline_history !3358 ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !668, !noalias !3357
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !3357
  %i.ai = invoke noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i64 noundef %i.ae, i64 0)
          to label %.noexc148 unwind label %bb.m, !inline_history !3358 ; 11 uses

.noexc148:                                        ; preds = %.noexc
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.d, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i, !prof !663

bb.d:                                             ; preds = %.noexc148
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #50
          to label %.noexc149 unwind label %bb.m

.noexc149:                                        ; preds = %bb.d
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i: ; preds = %.noexc148
  %i.aj = add i64 %i.ae, -96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !832, !noalias !3357
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !889, !noalias !3357
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  store i64 %i.aj, ptr %i.ao, align 8, !tbaa !892, !noalias !3357
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !893, !noalias !3357
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i8 1, ptr %i.aq, align 4, !tbaa !894, !noalias !3357
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 -1, i64 16, i1 false), !noalias !3357
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ai, align 8, !tbaa !668, !noalias !3357
  store i64 16, ptr %i.an, align 8, !tbaa !885, !noalias !3357
  store ptr %i.ai, ptr %31, align 8, !tbaa !824, !alias.scope !3357
  %i.as = atomicrmw add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !3357 ; 0 uses
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !892, !noalias !3357 ; 2 uses
  %.not.i450 = icmp ult i64 %i.at, 16
  br i1 %.not.i450, label %bb.e, label %_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, !prof !663

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !3357
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !3359
  store i64 16, ptr %6, align 16, !tbaa !638, !alias.scope !3360, !noalias !3359
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.at, ptr %i.au, align 16, !tbaa !638, !alias.scope !3360, !noalias !3359
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.55, i64 11, i64 68, ptr nonnull %6)
          to label %.noexc458 unwind label %bb.h

.noexc458:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !3359
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.55) #50
          to label %bb.f unwind label %bb.g, !noalias !3357

bb.f:                                             ; preds = %.noexc458
  unreachable

bb.g:                                             ; preds = %.noexc458
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %7, align 8, !tbaa !710, !noalias !3357 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455: ; preds = %bb.g
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !638, !noalias !3357
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #48, !noalias !3357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !3357
  br label %.body459

bb.h:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body459

.body459:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456, %bb.h
  %eh.lpad-body460 = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456 ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #26
  br label %.body

_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i
  %i.bc = load ptr, ptr %31, align 8, !tbaa !824  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !894
  %i.bf = and i8 %i.be, 2
  %.not.i150 = icmp eq i8 %i.bf, 0
  br i1 %.not.i150, label %bb.j, label %bb.i, !prof !662

bb.i:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #50
          to label %.noexc151 unwind label %bb.cl

.noexc151:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !889 ; 2 uses
  %i.bi = load i32, ptr %28, align 8, !tbaa !888  ; 3 uses
  %i.bj = icmp ult i32 %i.bi, 13
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = select i1 %i.bj, ptr %i.bk, ptr %i.bm   ; 3 uses
  %i.bo = zext i32 %i.bi to i64                   ; 5 uses
  %i.bp = and i64 %i.bo, 4294967264               ; 2 uses
  %.not.i152380 = icmp ult i32 %i.bi, 32
  br i1 %.not.i152380, label %.preheader.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.bq = add nuw nsw i64 %i.br, 32               ; 2 uses
  %.not.i152 = icmp samesign ugt i64 %i.bq, %i.bo
  br i1 %.not.i152, label %.preheader.i, label %.lr.ph, !llvm.loop !89

.preheader.i:                                     ; preds = %bb.k, %bb.j
  %.not302 = icmp eq i64 %i.bp, %i.bo
  br i1 %.not302, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.br = phi i64 [ %i.bq, %bb.k ], [ 32, %bb.j ] ; 2 uses
  %.013.i381 = phi i64 [ %i.br, %bb.k ], [ 0, %bb.j ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.013.i381
  %i.bt = load <4 x i64>, ptr %i.bs, align 1, !tbaa !638 ; 3 uses
  %i.bu = bitcast <4 x i64> %i.bt to <32 x i8>
  %59 = bitcast <4 x i64> %i.bt to <32 x i8>
  %60 = shufflevector <32 x i8> %59, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bv = icmp ugt <16 x i8> %60, splat (i8 -128)
  %i.bw = sext <16 x i1> %i.bv to <16 x i8>
  %i.bx = icmp ugt <32 x i8> %i.bu, splat (i8 -128)
  %i.by = sext <32 x i1> %i.bx to <32 x i8>
  %i.bz = bitcast <32 x i8> %i.by to <8 x i32>
  %i.ca = bitcast <16 x i8> %i.bw to <4 x i32>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <8 x i32> %i.bz, <8 x i32> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cd = bitcast <8 x i32> %i.cc to <4 x i64>
  %i.ce = bitcast <4 x i64> %i.bt to <32 x i8>    ; 2 uses
  %i.cf = icmp eq <32 x i8> %i.ce, splat (i8 -128)
  %i.cg = icmp eq <32 x i8> %i.ce, splat (i8 92)
  %i.ch = or <32 x i1> %i.cg, %i.cf
  %i.ci = sext <32 x i1> %i.ch to <32 x i8>
  %i.cj = bitcast <32 x i8> %i.ci to <4 x i64>
  %i.ck = or <4 x i64> %i.cd, %i.cj               ; 2 uses
  %i.cl = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ck, <4 x i64> %i.ck)
  %.not.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i, label %.loopexit86, label %bb.k, !llvm.loop !89

bb.l:                                             ; preds = %.lr.ph.i
  %i.cm = add nuw nsw i64 %.126.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %i.bo
  br i1 %exitcond.not.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i, !llvm.loop !90

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.126.i = phi i64 [ %i.cm, %bb.l ], [ %i.bp, %.preheader.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.126.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !638 ; 2 uses
  %.not17.i = icmp slt i8 %i.co, 0
  %i.cp = icmp eq i8 %i.co, 92
  %or.cond.i = or i1 %.not17.i, %i.cp
  br i1 %or.cond.i, label %.loopexit86, label %bb.l

.loopexit86:                                      ; preds = %.lr.ph, %.lr.ph.i
  %i.cq = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit unwind label %bb.bq

bb.m:                                             ; preds = %bb.d, %.noexc, %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit: ; preds = %bb.l, %.loopexit86, %.preheader.i
  %.2.i42 = phi i1 [ true, %.loopexit86 ], [ false, %.preheader.i ], [ false, %bb.l ] ; 3 uses
  %.0 = phi i64 [ %i.cq, %.loopexit86 ], [ %i.v, %.preheader.i ], [ %i.v, %bb.l ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.ct = add i64 %.0, 64                         ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !698 ; 7 uses
  %i.cw = icmp ult i64 %i.cv, %i.ct
  br i1 %i.cw, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.cx = sub nuw i64 %i.ct, %i.cv                ; 4 uses
  %i.cy = sub i64 9223372036854775807, %i.cv
  %i.cz = icmp ult i64 %i.cy, %i.cx
  br i1 %i.cz, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.266) #50
          to label %.noexc153 unwind label %bb.bq

.noexc153:                                        ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !710 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.dd = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.de = load i64, ptr %i.db, align 8, !tbaa !638
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.df = phi i64 [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ct, %i.df
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef %i.cv, i64 noundef 0, ptr noundef null, i64 noundef %i.cx)
          to label %.noexc154 unwind label %bb.bq

.noexc154:                                        ; preds = %bb.p
  %.pre.i.i = load ptr, ptr %i.cs, align 8, !tbaa !710
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %.noexc154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.dg = phi ptr [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %.noexc154 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cv ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.cx, 1
  br i1 %cond.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.dh, align 1, !tbaa !638
  br label %.sink.split.i.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.dh, i8 0, i64 %i.cx, i1 false)
  br label %.sink.split.i.i

bb.s:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.di = icmp ult i64 %i.ct, %i.cv
  br i1 %i.di, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.s, %bb.r, %bb.q
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !698
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !710
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ct
  store i8 0, ptr %i.dk, align 1, !tbaa !638
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.sink.split.i.i, %bb.s
  br i1 %.2.i42, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.dl = load i32, ptr %28, align 8, !tbaa !888  ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 13
  %i.dn = load ptr, ptr %i.bl, align 8
  %i.do = select i1 %i.dm, ptr %i.bk, ptr %i.dn
  %i.dp = zext i32 %i.dl to i64
  %i.dq = load ptr, ptr %i.cs, align 8, !tbaa !710
  %i.dr = invoke noundef i64 @_ZN8facebook5velox21normalizeForJsonParseEPKcmPc(ptr noundef %i.do, i64 noundef %i.dp, ptr noundef %i.dq)
          to label %bb.v unwind label %bb.bq

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ds = load ptr, ptr %i.cs, align 8, !tbaa !710
  %i.dt = load i32, ptr %28, align 8, !tbaa !888  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 13
  %i.dv = load ptr, ptr %i.bl, align 8
  %i.dw = select i1 %i.du, ptr %i.bk, ptr %i.dv
  %i.dx = zext i32 %i.dt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dw, i64 %i.dx, i1 false)
  %i.dy = load i32, ptr %28, align 8, !tbaa !888
  %i.dz = zext i32 %i.dy to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i = phi i64 [ %i.dz, %bb.u ], [ %i.dr, %bb.t ] ; 2 uses
  %i.ea = load ptr, ptr %i.cs, align 8, !tbaa !710
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.0.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eb, i8 0, i64 64, i1 false)
  %.not = icmp eq i64 %.0.i, %.0
  br i1 %.not, label %bb.ac, label %bb.w, !prof !662

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.ec = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl12prepareInputERKNS0_10StringViewEb(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(16) %28, i1 noundef zeroext %.2.i42)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !3361
  store i64 %i.ec, ptr %26, align 16, !tbaa !638, !alias.scope !3362, !noalias !3361
  %i.ed = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %.0, ptr %i.ed, align 16, !tbaa !638, !alias.scope !3362, !noalias !3361
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr nonnull @.str.55, i64 11, i64 68, ptr nonnull %26)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !3361
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr nonnull @.str.55) #50
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 2 uses
  %i.eg = load ptr, ptr %32, align 8, !tbaa !710  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !638
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.pn111 = phi { ptr, i32 } [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ee, %bb.aa ], [ %i.ef, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.bs

bb.ac:                                            ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_b:bb.a

bb.ft:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.wv = load i32, ptr %i.tm, align 8, !tbaa !816 ; 2 uses
  %i.ww = icmp slt i32 %i.wu, %i.wv
  br i1 %i.ww, label %.lr.ph.i264, label %.loopexit67

.lr.ph.i264:                                      ; preds = %bb.ft, %.noexc267
  %.018.i = phi i32 [ %i.wx, %.noexc267 ], [ %i.wu, %bb.ft ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr noundef nonnull readonly align 8 dereferenceable(56) %21, i32 noundef %.018.i)
          to label %.noexc267 unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %.lr.ph.i264
  %i.wx = add nsw i32 %.018.i, 1                  ; 2 uses
  %exitcond.not.i265 = icmp eq i32 %i.wx, %i.wv
  br i1 %exitcond.not.i265, label %.loopexit67, label %.lr.ph.i264, !llvm.loop !3338

bb.fu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.wy = load ptr, ptr %1, align 8, !tbaa !835   ; 5 uses
  %i.wz = load i32, ptr %i.tm, align 8, !tbaa !816 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %i.e, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.a, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %3, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %51, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr %i.g, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr %i.h, ptr %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i8 1, ptr %20, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.wy, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i255 = icmp slt i32 %i.wu, %i.wz
  br i1 %.not.i.i.i.i255, label %bb.fv, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i

bb.fv:                                            ; preds = %bb.fu
  %i.xa = add i32 %i.wu, 63                       ; 2 uses
  %i.xb = srem i32 %i.xa, 64
  %i.xc = sub nsw i32 %i.xa, %i.xb                ; 6 uses
  %i.xd = and i32 %i.wz, -64                      ; 6 uses
  %i.xe = icmp slt i32 %i.xd, %i.xc
  br i1 %i.xe, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.xf = ashr i32 %i.wz, 6
  %i.xg = and i32 %i.wz, 63
  %i.xh = zext nneg i32 %i.xg to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.xh
  %i.xi = xor i64 %notmask.i.i.i.i.i, -1
  %i.xj = sub nsw i32 %i.xc, %i.wu                ; 2 uses
  %i.xk = zext nneg i32 %i.xj to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.xk
  %i.xl = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.xm = sub nsw i32 64, %i.xj
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = shl i64 %i.xl, %i.xn
  %i.xp = and i64 %i.xo, %i.xi
  %i.xq = sext i32 %i.xf to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.wy, i64 %i.xq
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !665
  %i.xt = and i64 %i.xp, %i.xs                    ; 2 uses
  %.not.i.i.i.i.i263 = icmp eq i64 %i.xt, 0
  br i1 %.not.i.i.i.i.i263, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fw, %.noexc268
  %.011.i.i.i.i.i = phi i64 [ %i.xy, %.noexc268 ], [ %i.xt, %bb.fw ] ; 3 uses
  %i.xu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.xv = trunc nuw nsw i64 %i.xu to i32
  %i.xw = or disjoint i32 %i.xd, %i.xv
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.xw)
          to label %.noexc268 unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc268:                                        ; preds = %.preheader.i.i.i.i.i
  %i.xx = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.xy = and i64 %i.xx, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.xy, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !3339

bb.fx:                                            ; preds = %bb.fv
  %.not32.i.i.i.i = icmp eq i32 %i.wu, %i.xc
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xz = sdiv i32 %i.wu, 64                      ; 2 uses
  %i.ya = sub nsw i32 %i.xc, %i.wu                ; 2 uses
  %i.yb = zext nneg i32 %i.ya to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.yb
  %i.yc = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.yd = sub nsw i32 64, %i.ya
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = shl i64 %i.yc, %i.ye
  %i.yg = sext i32 %i.xz to i64
  %i.yh = getelementptr inbounds [8 x i8], ptr %i.wy, i64 %i.yg
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !665
  %i.yj = and i64 %i.yi, %i.yf                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.yj, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.fy
  %i.yk = shl nsw i32 %i.xz, 6
  br label %bb.fz

bb.fz:                                            ; preds = %.noexc269, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.yj, %.preheader.i37.i.i.i.i ], [ %i.yp, %.noexc269 ] ; 3 uses
  %i.yl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ym = trunc nuw nsw i64 %i.yl to i32
  %i.yn = or disjoint i32 %i.yk, %i.ym
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.yn)
          to label %.noexc269 unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc269:                                        ; preds = %bb.fz
  %i.yo = add i64 %.011.i38.i.i.i.i, -1
  %i.yp = and i64 %i.yo, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.yp, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.fz, !llvm.loop !3339

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc269, %bb.fy, %bb.fx
  %i.yq = add nsw i32 %i.xc, 64                   ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.yq, %i.xd
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i256

.lr.ph.i.i.i.i256:                                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.yt = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.yu = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.ga

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.wz, %i.xd
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i, label %bb.hk

bb.ga:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i256
  %i.yv = phi i32 [ %i.yq, %.lr.ph.i.i.i.i256 ], [ %i.agl, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.xc, %.lr.ph.i.i.i.i256 ], [ %i.yv, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.yw = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.wy, i64 %i.yx
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !665 ; 2 uses
  switch i64 %i.yz, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.gb
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ga
  %i.za = shl nsw i32 %i.yw, 6
  br label %bb.gt

bb.gb:                                            ; preds = %bb.ga
  %i.zb = shl nsw i32 %i.yw, 6                    ; 2 uses
  %i.zc = add i32 %i.zb, 64
  %i.zd = sext i32 %i.zc to i64
  %.0.off.i.i.i.i = add i32 %.060.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.gb
  %i.ze = sext i32 %i.zb to i64
  br label %bb.gc

bb.gc:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.ze, %.lr.ph25.i.i.i.i.i ], [ %i.acs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.zf = load ptr, ptr %i.e, align 8, !tbaa !1039
  %i.zg = trunc i64 %.024.i.i.i.i.i to i32
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 216
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !1023
  %sext.i.i.i.i.i.i = shl i64 %.024.i.i.i.i.i, 32
  %i.zj = ashr exact i64 %sext.i.i.i.i.i.i, 28
  %i.zk = getelementptr inbounds i8, ptr %i.zi, i64 %i.zj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.zk, i64 16, i1 false), !tbaa.struct !769
  %i.zl = load i32, ptr %18, align 8, !tbaa !888  ; 3 uses
  %i.zm = icmp ult i32 %i.zl, 13
  %i.zn = load ptr, ptr %i.ys, align 8
  %i.zo = select i1 %i.zm, ptr %i.yr, ptr %i.zn   ; 3 uses
  %i.zp = zext i32 %i.zl to i64                   ; 7 uses
  %i.zq = and i64 %i.zp, 4294967264               ; 2 uses
  %.not.i.i.i.i.i.i.i257385 = icmp ult i32 %i.zl, 32
  br i1 %.not.i.i.i.i.i.i.i257385, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph387

bb.gd:                                            ; preds = %.lr.ph387
  %i.zr = add nuw nsw i64 %i.zs, 32               ; 2 uses
  %.not.i.i.i.i.i.i.i257 = icmp samesign ugt i64 %i.zr, %i.zp
  br i1 %.not.i.i.i.i.i.i.i257, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph387, !llvm.loop !89

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.gd, %bb.gc
  %.not.i.i.i.i.i.i260 = icmp eq i64 %i.zq, %i.zp
  br i1 %.not.i.i.i.i.i.i260, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph387:                                        ; preds = %bb.gc, %bb.gd
  %i.zs = phi i64 [ %i.zr, %bb.gd ], [ 32, %bb.gc ] ; 2 uses
  %.013.i.i.i.i.i.i.i386 = phi i64 [ %i.zs, %bb.gd ], [ 0, %bb.gc ]
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.013.i.i.i.i.i.i.i386
  %i.zu = load <4 x i64>, ptr %i.zt, align 1, !tbaa !638 ; 3 uses
  %i.zv = bitcast <4 x i64> %i.zu to <32 x i8>
  %61 = bitcast <4 x i64> %i.zu to <32 x i8>
  %62 = shufflevector <32 x i8> %61, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zw = icmp ugt <16 x i8> %62, splat (i8 -128)
  %i.zx = sext <16 x i1> %i.zw to <16 x i8>
  %i.zy = icmp ugt <32 x i8> %i.zv, splat (i8 -128)
  %i.zz = sext <32 x i1> %i.zy to <32 x i8>
  %i.aaa = bitcast <32 x i8> %i.zz to <8 x i32>
  %i.aab = bitcast <16 x i8> %i.zx to <4 x i32>
  %i.aac = shufflevector <4 x i32> %i.aab, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aad = shufflevector <8 x i32> %i.aaa, <8 x i32> %i.aac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aae = bitcast <8 x i32> %i.aad to <4 x i64>
  %i.aaf = bitcast <4 x i64> %i.zu to <32 x i8>   ; 2 uses
  %i.aag = icmp eq <32 x i8> %i.aaf, splat (i8 -128)
  %i.aah = icmp eq <32 x i8> %i.aaf, splat (i8 92)
  %i.aai = or <32 x i1> %i.aah, %i.aag
  %i.aaj = sext <32 x i1> %i.aai to <32 x i8>
  %i.aak = bitcast <32 x i8> %i.aaj to <4 x i64>
  %i.aal = or <4 x i64> %i.aae, %i.aak            ; 2 uses
  %i.aam = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.aal, <4 x i64> %i.aal)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aam, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit25.i.i.i.i.i.i, label %bb.gd, !llvm.loop !89

bb.ge:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aan = add nuw nsw i64 %.126.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aan, %i.zp
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !90

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.ge
  %.126.i.i.i.i.i.i.i = phi i64 [ %i.aan, %bb.ge ], [ %i.zq, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.126.i.i.i.i.i.i.i
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !638 ; 2 uses
  %.not17.i.i.i.i.i.i.i = icmp slt i8 %i.aap, 0
  %i.aaq = icmp eq i8 %i.aap, 92
  %or.cond.i.i.i.i.i.i.i = or i1 %.not17.i.i.i.i.i.i.i, %i.aaq
  br i1 %or.cond.i.i.i.i.i.i.i, label %.loopexit25.i.i.i.i.i.i, label %bb.ge

.loopexit25.i.i.i.i.i.i:                          ; preds = %.lr.ph387, %.lr.ph.i.i.i.i.i.i.i
  %i.aar = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.zo, i64 noundef %i.zp)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %.loopexit25.i.i.i.i.i.i
  %i.aas = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 3 uses
  %i.aat = extractvalue { ptr, i32 } %i.aas, 1
  %i.aau = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #26
  %i.aav = icmp eq i32 %i.aat, %i.aau
  br i1 %i.aav, label %bb.gg, label %.loopexit18.i.i.i.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.aaw = extractvalue { ptr, i32 } %i.aas, 0
  %i.aax = call ptr @__cxa_begin_catch(ptr %i.aaw) #26
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !1233 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 144
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !710 ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 152
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !698
  %i.abe = icmp eq i64 %i.abd, 4
  br i1 %i.abe, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.gg
  %i.abf = load i8, ptr %i.abb, align 1, !tbaa !638
  %or.cond.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.abf, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !638
  %or.cond.not.i.i.i.1.i.i.i.i.i.i = icmp eq i8 %i.abh, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abb, i64 2
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !638
  %or.cond.not.i.i.i.2.i.i.i.i.i.i = icmp eq i8 %i.abj, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 3
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !638
  %or.cond.not.i.i.i.3.i.i.i.i.i.i = icmp eq i8 %i.abl, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i
  %i.abm = load i8, ptr %i.a, align 1, !tbaa !664, !range !641, !noundef !642
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %bb.gn, label %bb.gi

.loopexit.i.i.i.i.i.i:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, %bb.gg
  invoke void @__cxa_rethrow() #50
          to label %bb.gs unwind label %bb.gh

bb.gh:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gi:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #26
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.zg, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.abp = load ptr, ptr %19, align 8, !tbaa !1235
  %.not.i15.i.i.i.i.i.i = icmp eq ptr %i.abp, null
  br i1 %.not.i15.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.gk, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gi
  %i.abq = landingpad { ptr, i32 }
          cleanup
  %i.abr = load ptr, ptr %19, align 8, !tbaa !1235
  %.not.i16.i.i.i.i.i.i = icmp eq ptr %i.abr, null
  br i1 %.not.i16.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i: ; preds = %bb.gm, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.go

bb.gn:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i, %tailrecurse.i.i.i.i.3.i.i.i.i.i.i
  %i.abs = load ptr, ptr %i.i, align 8, !tbaa !935
  %i.abt = lshr i64 %.024.i.i.i.i.i, 3
  %i.abu = and i64 %i.abt, 536870911
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abu ; 2 uses
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !638
  %i.abx = and i64 %.024.i.i.i.i.i, 7
  %i.aby = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !638
  %i.aca = and i8 %i.abz, %i.abw
  store i8 %i.aca, ptr %i.abv, align 1, !tbaa !638
  invoke void @__cxa_end_catch()
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.go:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i, %bb.gh
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.abo, %bb.gh ], [ %i.abq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18.i.i.i.i.i unwind label %bb.gr

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i: ; preds = %bb.ge, %.loopexit25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.2.i23.i.i.i.i.i.i = phi i1 [ true, %.loopexit25.i.i.i.i.i.i ], [ false, %.preheader.i.i.i.i.i.i.i ], [ false, %bb.ge ]
  %.0.i.i.i.i.i.i258 = phi i64 [ %i.aar, %.loopexit25.i.i.i.i.i.i ], [ %i.zp, %.preheader.i.i.i.i.i.i.i ], [ %i.zp, %bb.ge ] ; 2 uses
  %i.acb = load ptr, ptr %51, align 8, !tbaa !730
  %i.acc = sdiv i64 %.024.i.i.i.i.i, 64
  %i.acd = getelementptr inbounds [8 x i8], ptr %i.acb, i64 %i.acc
  %i.ace = and i64 %.024.i.i.i.i.i, -9223372036854775745
  %i.acf = icmp ugt i64 %i.ace, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.acf, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acd, i64 %storemerge.idx.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.acg = and i64 %.024.i.i.i.i.i, 63
  %i.ach = shl nuw i64 1, %i.acg                  ; 2 uses
  br i1 %.2.i23.i.i.i.i.i.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i
  %i.aci = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !665
  %i.acj = or i64 %i.aci, %i.ach
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.gq:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i
  %i.ack = xor i64 %i.ach, -1
  %i.acl = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !665
  %i.acm = and i64 %i.acl, %i.ack
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.gq, %bb.gp
  %storemerge.i.i.i.i.i.i259 = phi i64 [ %i.acm, %bb.gq ], [ %i.acj, %bb.gp ]
  store i64 %storemerge.i.i.i.i.i.i259, ptr %storemerge.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !665
  %i.acn = load i64, ptr %i.g, align 8, !tbaa !665
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.acn, i64 %.0.i.i.i.i.i.i258)
  store i64 %.sroa.speculated.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !665
  %i.aco = load i64, ptr %i.h, align 8, !tbaa !665
  %i.acp = add i64 %i.aco, %.0.i.i.i.i.i.i258
  store i64 %i.acp, ptr %i.h, align 8, !tbaa !665
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i

.loopexit18.i.i.i.i.i:                            ; preds = %bb.gf, %bb.go
  %.merged.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %bb.go ], [ %i.aas, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body271

bb.gr:                                            ; preds = %bb.go
  %i.acq = landingpad { ptr, i32 }
          catch ptr null
  %i.acr = extractvalue { ptr, i32 } %i.acq, 0
  call void @__clang_call_terminate(ptr %i.acr) #49
  unreachable

bb.gs:                                            ; preds = %.loopexit.i.i.i.i.i.i
  unreachable

_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i: ; preds = %bb.gn, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.acs = add nuw i64 %.024.i.i.i.i.i, 1         ; 2 uses
  %i.act = icmp ult i64 %i.acs, %i.zd
  br i1 %i.act, label %bb.gc, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !3340

bb.gt:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.01523.i.i.i.i.i = phi i64 [ %i.yz, %.lr.ph.i.i.i.i.i ], [ %i.agk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i ] ; 3 uses
  %i.acu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01523.i.i.i.i.i, i1 true)
  %i.acv = trunc nuw nsw i64 %i.acu to i32
  %i.acw = or disjoint i32 %i.za, %i.acv          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.acx = load ptr, ptr %i.e, align 8, !tbaa !1039
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 216
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !1023
  %i.ada = sext i32 %i.acw to i64                 ; 4 uses
  %i.adb = getelementptr inbounds [16 x i8], ptr %i.acz, i64 %i.ada
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.adb, i64 16, i1 false), !tbaa.struct !769
  %i.adc = load i32, ptr %16, align 8, !tbaa !888 ; 3 uses
  %i.add = icmp ult i32 %i.adc, 13
  %i.ade = load ptr, ptr %i.yu, align 8
  %i.adf = select i1 %i.add, ptr %i.yt, ptr %i.ade ; 3 uses
  %i.adg = zext i32 %i.adc to i64                 ; 7 uses
  %i.adh = and i64 %i.adg, 4294967264             ; 2 uses
  %.not.i.i48.i.i.i.i388 = icmp ult i32 %i.adc, 32
  br i1 %.not.i.i48.i.i.i.i388, label %.preheader.i.i.i.i.i.i, label %.lr.ph390

bb.gu:                                            ; preds = %.lr.ph390
  %i.adi = add nuw nsw i64 %i.adj, 32             ; 2 uses
  %.not.i.i48.i.i.i.i = icmp samesign ugt i64 %i.adi, %i.adg
  br i1 %.not.i.i48.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph390, !llvm.loop !89

.preheader.i.i.i.i.i.i:                           ; preds = %bb.gu, %bb.gt
  %.not.i49.i.i.i.i = icmp eq i64 %i.adh, %i.adg
  br i1 %.not.i49.i.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i262

.lr.ph390:                                        ; preds = %bb.gt, %bb.gu
  %i.adj = phi i64 [ %i.adi, %bb.gu ], [ 32, %bb.gt ] ; 2 uses
  %.013.i.i.i.i.i.i389 = phi i64 [ %i.adj, %bb.gu ], [ 0, %bb.gt ]
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 %.013.i.i.i.i.i.i389
  %i.adl = load <4 x i64>, ptr %i.adk, align 1, !tbaa !638 ; 3 uses
  %i.adm = bitcast <4 x i64> %i.adl to <32 x i8>
  %63 = bitcast <4 x i64> %i.adl to <32 x i8>
  %64 = shufflevector <32 x i8> %63, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.adn = icmp ugt <16 x i8> %64, splat (i8 -128)
  %i.ado = sext <16 x i1> %i.adn to <16 x i8>
  %i.adp = icmp ugt <32 x i8> %i.adm, splat (i8 -128)
  %i.adq = sext <32 x i1> %i.adp to <32 x i8>
  %i.adr = bitcast <32 x i8> %i.adq to <8 x i32>
  %i.ads = bitcast <16 x i8> %i.ado to <4 x i32>
  %i.adt = shufflevector <4 x i32> %i.ads, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adu = shufflevector <8 x i32> %i.adr, <8 x i32> %i.adt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.adv = bitcast <8 x i32> %i.adu to <4 x i64>
  %i.adw = bitcast <4 x i64> %i.adl to <32 x i8>  ; 2 uses
  %i.adx = icmp eq <32 x i8> %i.adw, splat (i8 -128)
  %i.ady = icmp eq <32 x i8> %i.adw, splat (i8 92)
  %i.adz = or <32 x i1> %i.ady, %i.adx
  %i.aea = sext <32 x i1> %i.adz to <32 x i8>
  %i.aeb = bitcast <32 x i8> %i.aea to <4 x i64>
  %i.aec = or <4 x i64> %i.adv, %i.aeb            ; 2 uses
  %i.aed = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.aec, <4 x i64> %i.aec)
  %.not.i.i.i.i.i.i.i.i261 = icmp eq i32 %i.aed, 0
  br i1 %.not.i.i.i.i.i.i.i.i261, label %.loopexit25.i.i.i.i.i, label %bb.gu, !llvm.loop !89

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i.i.i262
  %i.aee = add nuw nsw i64 %.126.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aee, %i.adg
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i262, !llvm.loop !90

.lr.ph.i.i.i.i.i.i262:                            ; preds = %.preheader.i.i.i.i.i.i, %bb.gv
  %.126.i.i.i.i.i.i = phi i64 [ %i.aee, %bb.gv ], [ %i.adh, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adf, i64 %.126.i.i.i.i.i.i
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !638 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp slt i8 %i.aeg, 0
  %i.aeh = icmp eq i8 %i.aeg, 92
  %or.cond.i.i.i.i.i.i = or i1 %.not17.i.i.i.i.i.i, %i.aeh
  br i1 %or.cond.i.i.i.i.i.i, label %.loopexit25.i.i.i.i.i, label %bb.gv

.loopexit25.i.i.i.i.i:                            ; preds = %.lr.ph390, %.lr.ph.i.i.i.i.i.i262
  %i.aei = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.adf, i64 noundef %i.adg)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i unwind label %bb.gw

bb.gw:                                            ; preds = %.loopexit25.i.i.i.i.i
  %i.aej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 3 uses
  %i.aek = extractvalue { ptr, i32 } %i.aej, 1
  %i.ael = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #26
  %i.aem = icmp eq i32 %i.aek, %i.ael
  br i1 %i.aem, label %bb.gx, label %.loopexit.i.i.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.aen = extractvalue { ptr, i32 } %i.aej, 0
  %i.aeo = call ptr @__cxa_begin_catch(ptr %i.aen) #26
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !1233 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 144
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !710 ; 4 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 152
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !698
  %i.aev = icmp eq i64 %i.aeu, 4
  br i1 %i.aev, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.gx
  %i.aew = load i8, ptr %i.aes, align 1, !tbaa !638
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aew, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 1
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !638
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.aey, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aes, i64 2
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !638
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.afa, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aes, i64 3
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !638
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.afc, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  %i.afd = load i8, ptr %i.a, align 1, !tbaa !664, !range !641, !noundef !642
  %i.afe = trunc nuw i8 %i.afd to i1
  br i1 %i.afe, label %bb.he, label %bb.gz

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.gx
  invoke void @__cxa_rethrow() #50
          to label %bb.hj unwind label %bb.gy

bb.gy:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.gz:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #26
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.acw, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ha unwind label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.afg = load ptr, ptr %17, align 8, !tbaa !1235
  %.not.i15.i.i.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not.i15.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.he

bb.hc:                                            ; preds = %bb.gz
  %i.afh = landingpad { ptr, i32 }
          cleanup
  %i.afi = load ptr, ptr %17, align 8, !tbaa !1235
  %.not.i16.i.i.i.i.i = icmp eq ptr %i.afi, null
  br i1 %.not.i16.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i: ; preds = %bb.hd, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.hf

bb.he:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.afj = load ptr, ptr %i.i, align 8, !tbaa !935
  %i.afk = zext i32 %i.acw to i64                 ; 2 uses
  %i.afl = lshr i64 %i.afk, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afl ; 2 uses
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !638
  %i.afo = and i64 %i.afk, 7
  %i.afp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !638
  %i.afr = and i8 %i.afq, %i.afn
  store i8 %i.afr, ptr %i.afm, align 1, !tbaa !638
  invoke void @__cxa_end_catch()
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i, %bb.gy
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.aff, %bb.gy ], [ %i.afh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i ]
  invoke void @__cxa_end_catch()
          to label %.loopexit.i.i.i.i unwind label %bb.hi

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i: ; preds = %bb.gv, %.loopexit25.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.2.i23.i.i.i.i.i = phi i1 [ true, %.loopexit25.i.i.i.i.i ], [ false, %.preheader.i.i.i.i.i.i ], [ false, %bb.gv ]
  %.0.i.i.i.i.i = phi i64 [ %i.aei, %.loopexit25.i.i.i.i.i ], [ %i.adg, %.preheader.i.i.i.i.i.i ], [ %i.adg, %bb.gv ] ; 2 uses
  %i.afs = load ptr, ptr %51, align 8, !tbaa !730
  %i.aft = sdiv i64 %i.ada, 64
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.afs, i64 %i.aft
  %i.afv = and i64 %i.ada, -9223372036854775745
  %i.afw = icmp ugt i64 %i.afv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i.i.i.i = select i1 %i.afw, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.afu, i64 %storemerge.idx.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.afx = and i64 %i.ada, 63
  %i.afy = shl nuw i64 1, %i.afx                  ; 2 uses
  br i1 %.2.i23.i.i.i.i.i, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i
  %i.afz = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !665
  %i.aga = or i64 %i.afz, %i.afy
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i

bb.hh:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i
  %i.agb = xor i64 %i.afy, -1
  %i.agc = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !665
  %i.agd = and i64 %i.agc, %i.agb
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i:         ; preds = %bb.hh, %bb.hg
  %storemerge.i.i.i.i.i = phi i64 [ %i.agd, %bb.hh ], [ %i.aga, %bb.hg ]
  store i64 %storemerge.i.i.i.i.i, ptr %storemerge.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !665
  %i.age = load i64, ptr %i.g, align 8, !tbaa !665
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.age, i64 %.0.i.i.i.i.i)
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.g, align 8, !tbaa !665
  %i.agf = load i64, ptr %i.h, align 8, !tbaa !665
  %i.agg = add i64 %i.agf, %.0.i.i.i.i.i
  store i64 %i.agg, ptr %i.h, align 8, !tbaa !665
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.gw, %bb.hf
  %.merged.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.hf ], [ %i.aej, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body271

bb.hi:                                            ; preds = %bb.hf
  %i.agh = landingpad { ptr, i32 }
          catch ptr null
  %i.agi = extractvalue { ptr, i32 } %i.agh, 0
  call void @__clang_call_terminate(ptr %i.agi) #49
  unreachable

bb.hj:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

end_hunk_1
begin_hunk_2_@_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_8JsonTypeEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISF_SaISF_EEEEvPT_DpOT0_:bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !705
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !679
  store ptr null, ptr %2, align 8, !tbaa !1294
  store ptr null, ptr %8, align 8, !tbaa !824
  %i.e = load i32, ptr %4, align 4, !tbaa !637
  %i.f = load ptr, ptr %5, align 8, !tbaa !824    ; 3 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !824
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = atomicrmw add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !1002
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !1002
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 %8, i32 noundef %i.e, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.k = load ptr, ptr %9, align 8, !tbaa !824    ; 7 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !668
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %.noexc.i unwind label %bb.e, !inline_history !16

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !832
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !668
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i.i
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.e, !inline_history !16

bb.e:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.c, %bb.d, %.noexc.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !824    ; 7 uses
  %.not.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !668
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.noexc.i10 unwind label %bb.g, !inline_history !16

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !832
  %.not.i.i11 = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !668
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i.i12
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.g, !inline_history !16

bb.g:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %.noexc.i10
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !705 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.an, align 8, !tbaa !708
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !709
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !668
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #26, !inline_history !42
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !668
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #26, !inline_history !42
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !638
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !637
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !663

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #26
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.n:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %i.bc
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #44 align 2 personality ptr @__gxx_personality_v0 !guid !4020 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !4022, !nonnull !642, !align !915
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1039
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1023
  %i.e = sext i32 %1 to i64                       ; 4 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !769
  %i.g = load i32, ptr %2, align 8, !tbaa !888    ; 3 uses
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = zext i32 %i.g to i64                     ; 7 uses
  %i.n = and i64 %i.m, 4294967264                 ; 2 uses
  %.not.i36 = icmp ult i32 %i.g, 32
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %i.p, 32                 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.o, %i.m
  br i1 %.not.i, label %.preheader.i, label %.lr.ph, !llvm.loop !89

.preheader.i:                                     ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %i.n, %i.m
  br i1 %.not, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ 32, %bb.a ]   ; 2 uses
  %.013.i37 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.013.i37
  %i.r = load <4 x i64>, ptr %i.q, align 1, !tbaa !638 ; 3 uses
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>
  %4 = bitcast <4 x i64> %i.r to <32 x i8>
  %5 = shufflevector <32 x i8> %4, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.t = icmp ugt <16 x i8> %5, splat (i8 -128)
  %i.u = sext <16 x i1> %i.t to <16 x i8>
  %i.v = icmp ugt <32 x i8> %i.s, splat (i8 -128)
  %i.w = sext <32 x i1> %i.v to <32 x i8>
  %i.x = bitcast <32 x i8> %i.w to <8 x i32>
  %i.y = bitcast <16 x i8> %i.u to <4 x i32>
  %i.z = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <8 x i32> %i.x, <8 x i32> %i.z, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ab = bitcast <8 x i32> %i.aa to <4 x i64>
  %i.ac = bitcast <4 x i64> %i.r to <32 x i8>     ; 2 uses
  %i.ad = icmp eq <32 x i8> %i.ac, splat (i8 -128)
  %i.ae = icmp eq <32 x i8> %i.ac, splat (i8 92)
  %i.af = or <32 x i1> %i.ae, %i.ad
  %i.ag = sext <32 x i1> %i.af to <32 x i8>
  %i.ah = bitcast <32 x i8> %i.ag to <4 x i64>
  %i.ai = or <4 x i64> %i.ab, %i.ah               ; 2 uses
  %i.aj = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ai, <4 x i64> %i.ai)
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %.loopexit25, label %bb.b, !llvm.loop !89

bb.c:                                             ; preds = %.lr.ph.i
  %i.ak = add nuw nsw i64 %.126.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.m
  br i1 %exitcond.not.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i, !llvm.loop !90

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.126.i = phi i64 [ %i.ak, %bb.c ], [ %i.n, %.preheader.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %.126.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !638 ; 2 uses
  %.not17.i = icmp slt i8 %i.am, 0
  %i.an = icmp eq i8 %i.am, 92
  %or.cond.i = or i1 %.not17.i, %i.an
  br i1 %or.cond.i, label %.loopexit25, label %bb.c

.loopexit25:                                      ; preds = %.lr.ph, %.lr.ph.i
  %i.ao = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit unwind label %bb.d

bb.d:                                             ; preds = %.loopexit25
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 3 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #26
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.at = extractvalue { ptr, i32 } %i.ap, 0
  %i.au = call ptr @__cxa_begin_catch(ptr %i.at) #26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1233 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !710 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !698
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !638
  %or.cond.not.i.i.i = icmp eq i8 %i.bc, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !638
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.be, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !638
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bg, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !638
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bi, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !4023, !nonnull !642
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !664, !range !641, !noundef !642
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2, %bb.e
  invoke void @__cxa_rethrow() #50
          to label %bb.s unwind label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !4024, !nonnull !642, !align !915
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #26
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %3, align 8, !tbaa !1235
  %.not.i15 = icmp eq ptr %i.bq, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %3, align 8, !tbaa !1235
  %.not.i16 = icmp eq ptr %i.bs, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !4025, !nonnull !642, !align !915
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !935
  %i.bw = zext i32 %1 to i64                      ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !638
  %i.ca = and i64 %i.bw, 7
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !638
  %i.cd = and i8 %i.cc, %i.bz
  store i8 %i.cd, ptr %i.by, align 1, !tbaa !638
  call void @__cxa_end_catch()
  br label %bb.p

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.f ], [ %i.br, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17 ]
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit: ; preds = %bb.c, %.loopexit25, %.preheader.i
  %.2.i23 = phi i1 [ true, %.loopexit25 ], [ false, %.preheader.i ], [ false, %bb.c ]
  %.0 = phi i64 [ %i.ao, %.loopexit25 ], [ %i.m, %.preheader.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !4026, !nonnull !642, !align !915
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !730
  %i.ch = sdiv i64 %i.e, 64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = and i64 %i.e, -9223372036854775745
  %i.ck = icmp ugt i64 %i.cj, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ck, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ci, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.cl = and i64 %i.e, 63
  %i.cm = shl nuw i64 1, %i.cl                    ; 2 uses
  br i1 %.2.i23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.cn = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !665
  %i.co = or i64 %i.cn, %i.cm
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.o:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.cp = xor i64 %i.cm, -1
  %i.cq = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !665
  %i.cr = and i64 %i.cq, %i.cp
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.n, %bb.o
  %storemerge = phi i64 [ %i.cr, %bb.o ], [ %i.co, %bb.n ]
  store i64 %storemerge, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !665
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !4027, !nonnull !642, !align !915 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !665
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.cu, i64 %.0)
  store i64 %.sroa.speculated, ptr %i.ct, align 8, !tbaa !665
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !4028, !nonnull !642, !align !915 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !665
  %i.cy = add i64 %i.cx, %.0
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !665
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
end_hunk_2
