inline.NumInlined: 16951
inline.NumDeleted: 7027
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_b:bb.a
  %42 = alloca %"class.std::shared_ptr.655", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::vector.193", align 8  ; 11 uses
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
  %51 = alloca %"class.std::vector.72", align 8   ; 16 uses
  %52 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %53 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %54 = alloca %"class.std::optional.372", align 1 ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %55 = alloca %"class.std::shared_ptr.655", align 8 ; 7 uses
  %56 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %57 = alloca %"class.std::vector.193", align 8  ; 11 uses
  %58 = alloca [1 x %"class.boost::intrusive_ptr"], align 8 ; 7 uses
  %i.m = zext i1 %5 to i8
  store i8 %i.m, ptr %i.a, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %0, ptr %27, align 8, !tbaa !2215
  %i.n = load atomic i8, ptr %0 acquire, align 8, !range !26, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN5folly15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES2_E14call_once_slowIZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvOT_DpOT0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %27)
  br label %_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit

_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.p = load ptr, ptr %2, align 8, !tbaa !284    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !287
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.eq

bb.c:                                             ; preds = %_ZN5folly9call_onceINS_15basic_once_flagINS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEES3_EEZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS8_17SelectivityVectorERKSt10shared_ptrINS8_10BaseVectorEERKSF_IKNS8_4TypeEERNS8_4exec7EvalCtxERSH_bEUlvE_JEEEvRT_OT0_DpOT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !303
  %i.u = load i32, ptr %28, align 8, !tbaa !476
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.w = load ptr, ptr %3, align 8, !tbaa !304
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.y = getelementptr inbounds nuw i8, ptr %30, i64 1
  store i8 0, ptr %i.y, align 1, !tbaa !474
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %29, i64 noundef %i.v, ptr noundef %i.x, ptr noundef nonnull align 1 dereferenceable(2) %30, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.z = load ptr, ptr %3, align 8, !tbaa !304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !319 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83, !noalias !2218
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2218
  %i.ae = invoke noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i64 noundef 112)
          to label %.noexc unwind label %bb.m, !inline_history !2221 ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !83, !noalias !2218
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !2218
  %i.ai = invoke noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i64 noundef %i.ae, i64 0)
          to label %.noexc144 unwind label %bb.m, !inline_history !2221 ; 11 uses

.noexc144:                                        ; preds = %.noexc
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.d, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i, !prof !71

bb.d:                                             ; preds = %.noexc144
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #49
          to label %.noexc145 unwind label %bb.m

.noexc145:                                        ; preds = %bb.d
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i: ; preds = %.noexc144
  %i.aj = add i64 %i.ae, -96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !378, !noalias !2218
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !477, !noalias !2218
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  store i64 %i.aj, ptr %i.ao, align 8, !tbaa !504, !noalias !2218
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !505, !noalias !2218
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i8 1, ptr %i.aq, align 4, !tbaa !506, !noalias !2218
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 -1, i64 16, i1 false), !noalias !2218
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ai, align 8, !tbaa !83, !noalias !2218
  store i64 16, ptr %i.an, align 8, !tbaa !473, !noalias !2218
  store ptr %i.ai, ptr %31, align 8, !tbaa !362, !alias.scope !2218
  %i.as = atomicrmw add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !2218 ; 0 uses
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !504, !noalias !2218 ; 2 uses
  %.not.i436 = icmp ult i64 %i.at, 16
  br i1 %.not.i436, label %bb.e, label %_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, !prof !71

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !2218
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !2222
  store i64 16, ptr %6, align 16, !tbaa !20, !alias.scope !2225, !noalias !2222
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.at, ptr %i.au, align 16, !tbaa !20, !alias.scope !2225, !noalias !2222
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.55, i64 11, i64 68, ptr nonnull %6)
          to label %.noexc445 unwind label %bb.h

.noexc445:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !2222
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.55) #49
          to label %bb.f unwind label %bb.g, !noalias !2218

bb.f:                                             ; preds = %.noexc445
  unreachable

bb.g:                                             ; preds = %.noexc445
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %7, align 8, !tbaa !137, !noalias !2218 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i442: ; preds = %bb.g
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !20, !noalias !2218
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #47, !noalias !2218
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i443: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i442
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !2218
  br label %.body446

bb.h:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body446

.body446:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i443, %bb.h
  %eh.lpad-body447 = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i443 ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #26
  br label %.body

_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit.i
  %i.bc = load ptr, ptr %31, align 8, !tbaa !362  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !506
  %i.bf = and i8 %i.be, 2
  %.not.i146 = icmp eq i8 %i.bf, 0
  br i1 %.not.i146, label %bb.j, label %bb.i, !prof !69

bb.i:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #49
          to label %.noexc147 unwind label %bb.n

.noexc147:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !477 ; 2 uses
  %i.bi = load i32, ptr %28, align 8, !tbaa !476  ; 3 uses
  %i.bj = icmp ult i32 %i.bi, 13
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = select i1 %i.bj, ptr %i.bk, ptr %i.bm   ; 3 uses
  %i.bo = zext i32 %i.bi to i64                   ; 5 uses
  %i.bp = and i64 %i.bo, 4294967264               ; 2 uses
  %.not.i148317 = icmp ult i32 %i.bi, 32
  br i1 %.not.i148317, label %.preheader.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.bq = add nuw nsw i64 %i.br, 32               ; 2 uses
  %.not.i148 = icmp samesign ugt i64 %i.bq, %i.bo
  br i1 %.not.i148, label %.preheader.i, label %.lr.ph, !llvm.loop !2228

.preheader.i:                                     ; preds = %bb.k, %bb.j
  %.not274 = icmp eq i64 %i.bp, %i.bo
  br i1 %.not274, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.br = phi i64 [ %i.bq, %bb.k ], [ 32, %bb.j ] ; 2 uses
  %.013.i318 = phi i64 [ %i.br, %bb.k ], [ 0, %bb.j ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.013.i318
  %i.bt = load <4 x i64>, ptr %i.bs, align 1, !tbaa !20, !noalias !2229 ; 3 uses
  %59 = bitcast <4 x i64> %i.bt to <32 x i8>
  %i.bu = bitcast <4 x i64> %i.bt to <32 x i8>
  %60 = shufflevector <32 x i8> %i.bu, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %61 = icmp ugt <16 x i8> %60, splat (i8 -128)
  %62 = sext <16 x i1> %61 to <16 x i8>
  %i.bv = icmp ugt <32 x i8> %59, splat (i8 -128)
  %63 = sext <32 x i1> %i.bv to <32 x i8>
  %64 = bitcast <32 x i8> %63 to <8 x i32>
  %65 = bitcast <16 x i8> %62 to <4 x i32>
  %66 = shufflevector <4 x i32> %65, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %67 = shufflevector <8 x i32> %64, <8 x i32> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %68 = bitcast <8 x i32> %67 to <4 x i64>
  %i.bw = bitcast <4 x i64> %i.bt to <32 x i8>    ; 2 uses
  %i.bx = icmp eq <32 x i8> %i.bw, splat (i8 -128)
  %i.by = icmp eq <32 x i8> %i.bw, splat (i8 92)
  %i.bz = or <32 x i1> %i.by, %i.bx
  %69 = sext <32 x i1> %i.bz to <32 x i8>
  %70 = bitcast <32 x i8> %69 to <4 x i64>
  %71 = or <4 x i64> %68, %70                     ; 2 uses
  %i.ca = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %71, <4 x i64> %71)
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i, label %.loopexit88, label %bb.k, !llvm.loop !2228

bb.l:                                             ; preds = %.lr.ph.i
  %i.cb = add i64 %.127.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %i.bo
  br i1 %exitcond.not.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i, !llvm.loop !2236

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.127.i = phi i64 [ %i.cb, %bb.l ], [ %i.bp, %.preheader.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.127.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20  ; 2 uses
  %.not17.i = icmp slt i8 %i.cd, 0
  %i.ce = icmp eq i8 %i.cd, 92
  %or.cond.i = or i1 %.not17.i, %i.ce
  br i1 %or.cond.i, label %.loopexit88, label %bb.l

.loopexit88:                                      ; preds = %.lr.ph, %.lr.ph.i
  %i.cf = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit unwind label %bb.o

bb.m:                                             ; preds = %bb.d, %.noexc, %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.o:                                             ; preds = %bb.v, %bb.r, %bb.q, %.loopexit88
  %i.ci = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  br label %bb.bv

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit: ; preds = %bb.l, %.loopexit88, %.preheader.i
  %.2.i42 = phi i1 [ true, %.loopexit88 ], [ false, %.preheader.i ], [ false, %bb.l ] ; 3 uses
  %.0 = phi i64 [ %i.cf, %.loopexit88 ], [ %i.v, %.preheader.i ], [ %i.v, %bb.l ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.ck = add i64 %.0, 64                         ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !123 ; 7 uses
  %i.cn = icmp ult i64 %i.cm, %i.ck
  br i1 %i.cn, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.co = sub nuw i64 %i.ck, %i.cm                ; 4 uses
  %i.cp = sub i64 9223372036854775807, %i.cm
  %i.cq = icmp ult i64 %i.cp, %i.co
  br i1 %i.cq, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.266) #49
          to label %.noexc149 unwind label %bb.o

.noexc149:                                        ; preds = %bb.q
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !137 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.cu = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cw = phi i64 [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cw
  br i1 %.not.i.i.i.i, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef %i.cm, i64 noundef 0, ptr noundef null, i64 noundef %i.co)
          to label %.noexc150 unwind label %bb.o

.noexc150:                                        ; preds = %bb.r
  %.pre.i.i = load ptr, ptr %i.cj, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %.noexc150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.cx = phi ptr [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %.noexc150 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cm ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.co, 1
  br i1 %cond.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.cy, align 1, !tbaa !20
  br label %.sink.split.i.i

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cy, i8 0, i64 %i.co, i1 false)
  br label %.sink.split.i.i

bb.u:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.cz = icmp ult i64 %i.ck, %i.cm
  br i1 %i.cz, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.u, %bb.t, %bb.s
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !123
  %i.da = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ck
  store i8 0, ptr %i.db, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.sink.split.i.i, %bb.u
  br i1 %.2.i42, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.dc = load i32, ptr %28, align 8, !tbaa !476  ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 13
  %i.de = load ptr, ptr %i.bl, align 8
  %i.df = select i1 %i.dd, ptr %i.bk, ptr %i.de
  %i.dg = zext i32 %i.dc to i64
  %i.dh = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.di = invoke noundef i64 @_ZN8facebook5velox21normalizeForJsonParseEPKcmPc(ptr noundef %i.df, i64 noundef %i.dg, ptr noundef %i.dh)
          to label %bb.x unwind label %bb.o

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.dj = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.dk = load i32, ptr %28, align 8, !tbaa !476  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 13
  %i.dm = load ptr, ptr %i.bl, align 8
  %i.dn = select i1 %i.dl, ptr %i.bk, ptr %i.dm
  %i.do = zext i32 %i.dk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.dn, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %28, align 8, !tbaa !476
  %i.dq = zext i32 %i.dp to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i = phi i64 [ %i.dq, %bb.w ], [ %i.di, %bb.v ] ; 2 uses
  %i.dr = load ptr, ptr %i.cj, align 8, !tbaa !137
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ds, i8 0, i64 64, i1 false)
  %.not = icmp eq i64 %.0.i, %.0
  br i1 %.not, label %bb.ae, label %bb.y, !prof !69

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.dt = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl12prepareInputERKNS0_10StringViewEb(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(16) %28, i1 noundef zeroext %.2.i42)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !2237
  store i64 %i.dt, ptr %26, align 16, !tbaa !20, !alias.scope !2240, !noalias !2237
  %i.du = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %.0, ptr %i.du, align 16, !tbaa !20, !alias.scope !2240, !noalias !2237
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr nonnull @.str.55, i64 11, i64 68, ptr nonnull %26)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !2237
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr nonnull @.str.55) #49
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.dv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 2 uses
  %i.dx = load ptr, ptr %32, align 8, !tbaa !137  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ac
  %.pn111 = phi { ptr, i32 } [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dv, %bb.ac ], [ %i.dw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.bv

bb.ae:                                            ; preds = %bb.x
  %i.ec = invoke fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb(ptr noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %.0, i1 noundef zeroext %.2.i42)
          to label %bb.af unwind label %bb.bh     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.not100 = icmp eq i32 %i.ec, 0
  br i1 %.not100, label %.critedge, label %bb.ag
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_b:bb.a
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !541 ; 8 uses
  br i1 %.0.i.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.wc = load i32, ptr %i.sx, align 8, !tbaa !341 ; 2 uses
  %i.wd = icmp slt i32 %i.wb, %i.wc
  br i1 %i.wd, label %.lr.ph.i255, label %.loopexit67

.lr.ph.i255:                                      ; preds = %bb.ft, %.noexc258
  %.018.i = phi i32 [ %i.we, %.noexc258 ], [ %i.wb, %bb.ft ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr noundef nonnull readonly align 8 dereferenceable(56) %21, i32 noundef %.018.i)
          to label %.noexc258 unwind label %.loopexit63

.noexc258:                                        ; preds = %.lr.ph.i255
  %i.we = add i32 %.018.i, 1                      ; 2 uses
  %exitcond.not.i256 = icmp eq i32 %i.we, %i.wc
  br i1 %exitcond.not.i256, label %.loopexit67, label %.lr.ph.i255, !llvm.loop !2277

bb.fu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.wf = load ptr, ptr %1, align 8, !tbaa !391   ; 5 uses
  %i.wg = load i32, ptr %i.sx, align 8, !tbaa !341 ; 7 uses
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
  store ptr %i.wf, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i247 = icmp slt i32 %i.wb, %i.wg
  br i1 %.not.i.i.i.i247, label %bb.fv, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i

bb.fv:                                            ; preds = %bb.fu
  %i.wh = add i32 %i.wb, 63                       ; 2 uses
  %i.wi = srem i32 %i.wh, 64
  %i.wj = sub nsw i32 %i.wh, %i.wi                ; 6 uses
  %i.wk = and i32 %i.wg, -64                      ; 6 uses
  %i.wl = icmp slt i32 %i.wk, %i.wj
  br i1 %i.wl, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.wm = ashr i32 %i.wg, 6
  %i.wn = and i32 %i.wg, 63
  %i.wo = zext nneg i32 %i.wn to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.wo
  %i.wp = xor i64 %notmask.i.i.i.i.i, -1
  %i.wq = sub nsw i32 %i.wj, %i.wb                ; 2 uses
  %i.wr = zext nneg i32 %i.wq to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.wr
  %i.ws = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.wt = sub nsw i32 64, %i.wq
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = shl i64 %i.ws, %i.wu
  %i.ww = and i64 %i.wv, %i.wp
  %i.wx = sext i32 %i.wm to i64
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.wf, i64 %i.wx
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !75
  %i.xa = and i64 %i.ww, %i.wz                    ; 2 uses
  %.not.i.i.i.i.i254 = icmp eq i64 %i.xa, 0
  br i1 %.not.i.i.i.i.i254, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fw, %.noexc259
  %.011.i.i.i.i.i = phi i64 [ %i.xf, %.noexc259 ], [ %i.xa, %bb.fw ] ; 3 uses
  %i.xb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.xc = trunc nuw nsw i64 %i.xb to i32
  %i.xd = or disjoint i32 %i.wk, %i.xc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.xd)
          to label %.noexc259 unwind label %.loopexit.split-lp64.loopexit

.noexc259:                                        ; preds = %.preheader.i.i.i.i.i
  %i.xe = add nsw i64 %.011.i.i.i.i.i, -1
  %i.xf = and i64 %i.xe, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.xf, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !2278

bb.fx:                                            ; preds = %bb.fv
  %.not32.i.i.i.i = icmp eq i32 %i.wb, %i.wj
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xg = sdiv i32 %i.wb, 64                      ; 2 uses
  %i.xh = sub nsw i32 %i.wj, %i.wb                ; 2 uses
  %i.xi = zext nneg i32 %i.xh to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.xi
  %i.xj = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.xk = sub nsw i32 64, %i.xh
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = shl i64 %i.xj, %i.xl
  %i.xn = sext i32 %i.xg to i64
  %i.xo = getelementptr inbounds [8 x i8], ptr %i.wf, i64 %i.xn
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !75
  %i.xq = and i64 %i.xp, %i.xm                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.xq, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.fy
  %i.xr = shl nsw i32 %i.xg, 6
  br label %bb.fz

bb.fz:                                            ; preds = %.noexc260, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.xq, %.preheader.i37.i.i.i.i ], [ %i.xw, %.noexc260 ] ; 3 uses
  %i.xs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.xt = trunc nuw nsw i64 %i.xs to i32
  %i.xu = or disjoint i32 %i.xr, %i.xt
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.xu)
          to label %.noexc260 unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc260:                                        ; preds = %bb.fz
  %i.xv = add i64 %.011.i38.i.i.i.i, -1
  %i.xw = and i64 %i.xv, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.xw, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.fz, !llvm.loop !2278

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc260, %bb.fy, %bb.fx
  %i.xx = add nsw i32 %i.wj, 64                   ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.xx, %i.wk
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.xz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ya = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.ga

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.wg, %i.wk
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiiSN_.exit.i, label %bb.hk

bb.ga:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.yc = phi i32 [ %i.xx, %.lr.ph.i.i.i.i ], [ %i.aew, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.wj, %.lr.ph.i.i.i.i ], [ %i.yc, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.yd = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds [8 x i8], ptr %i.wf, i64 %i.ye
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !75 ; 2 uses
  switch i64 %i.yg, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.gb
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ga
  %i.yh = shl nsw i32 %i.yd, 6
  br label %bb.gt

bb.gb:                                            ; preds = %bb.ga
  %i.yi = shl nsw i32 %i.yd, 6                    ; 2 uses
  %i.yj = add i32 %i.yi, 64
  %i.yk = sext i32 %i.yj to i64
  %.0.off.i.i.i.i = add i32 %.060.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.gb
  %i.yl = sext i32 %i.yi to i64
  br label %bb.gc

bb.gc:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.yl, %.lr.ph25.i.i.i.i.i ], [ %i.abo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ym = load ptr, ptr %i.e, align 8, !tbaa !1346
  %i.yn = trunc i64 %.024.i.i.i.i.i to i32
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 216
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !1298
  %sext.i.i.i.i.i.i = shl i64 %.024.i.i.i.i.i, 32
  %i.yq = ashr exact i64 %sext.i.i.i.i.i.i, 28
  %i.yr = getelementptr inbounds i8, ptr %i.yp, i64 %i.yq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.yr, i64 16, i1 false), !tbaa.struct !303
  %i.ys = load i32, ptr %18, align 8, !tbaa !476  ; 3 uses
  %i.yt = icmp ult i32 %i.ys, 13
  %i.yu = load ptr, ptr %i.xz, align 8
  %i.yv = select i1 %i.yt, ptr %i.xy, ptr %i.yu   ; 3 uses
  %i.yw = zext i32 %i.ys to i64                   ; 7 uses
  %i.yx = and i64 %i.yw, 4294967264               ; 2 uses
  %.not.i.i.i.i.i.i.i248322 = icmp ult i32 %i.ys, 32
  br i1 %.not.i.i.i.i.i.i.i248322, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph324

bb.gd:                                            ; preds = %.lr.ph324
  %i.yy = add nuw nsw i64 %i.yz, 32               ; 2 uses
  %.not.i.i.i.i.i.i.i248 = icmp samesign ugt i64 %i.yy, %i.yw
  br i1 %.not.i.i.i.i.i.i.i248, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph324, !llvm.loop !2228

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.gd, %bb.gc
  %.not.i.i.i.i.i.i251 = icmp eq i64 %i.yx, %i.yw
  br i1 %.not.i.i.i.i.i.i251, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph324:                                        ; preds = %bb.gc, %bb.gd
  %i.yz = phi i64 [ %i.yy, %bb.gd ], [ 32, %bb.gc ] ; 2 uses
  %.013.i.i.i.i.i.i.i323 = phi i64 [ %i.yz, %bb.gd ], [ 0, %bb.gc ]
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.013.i.i.i.i.i.i.i323
  %i.zb = load <4 x i64>, ptr %i.za, align 1, !tbaa !20, !noalias !2279 ; 3 uses
  %72 = bitcast <4 x i64> %i.zb to <32 x i8>
  %i.zc = bitcast <4 x i64> %i.zb to <32 x i8>
  %73 = shufflevector <32 x i8> %i.zc, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %74 = icmp ugt <16 x i8> %73, splat (i8 -128)
  %75 = sext <16 x i1> %74 to <16 x i8>
  %i.zd = icmp ugt <32 x i8> %72, splat (i8 -128)
  %76 = sext <32 x i1> %i.zd to <32 x i8>
  %77 = bitcast <32 x i8> %76 to <8 x i32>
  %78 = bitcast <16 x i8> %75 to <4 x i32>
  %79 = shufflevector <4 x i32> %78, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %80 = shufflevector <8 x i32> %77, <8 x i32> %79, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %i.ze = bitcast <4 x i64> %i.zb to <32 x i8>    ; 2 uses
  %i.zf = icmp eq <32 x i8> %i.ze, splat (i8 -128)
  %i.zg = icmp eq <32 x i8> %i.ze, splat (i8 92)
  %i.zh = or <32 x i1> %i.zg, %i.zf
  %82 = sext <32 x i1> %i.zh to <32 x i8>
  %83 = bitcast <32 x i8> %82 to <4 x i64>
  %84 = or <4 x i64> %81, %83                     ; 2 uses
  %i.zi = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %84, <4 x i64> %84)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit25.i.i.i.i.i.i, label %bb.gd, !llvm.loop !2228

bb.ge:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.zj = add i64 %.127.i.i.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.zj, %i.yw
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2236

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.ge
  %.127.i.i.i.i.i.i.i = phi i64 [ %i.zj, %bb.ge ], [ %i.yx, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.127.i.i.i.i.i.i.i
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !20  ; 2 uses
  %.not17.i.i.i.i.i.i.i = icmp slt i8 %i.zl, 0
  %i.zm = icmp eq i8 %i.zl, 92
  %or.cond.i.i.i.i.i.i.i = or i1 %.not17.i.i.i.i.i.i.i, %i.zm
  br i1 %or.cond.i.i.i.i.i.i.i, label %.loopexit25.i.i.i.i.i.i, label %bb.ge

.loopexit25.i.i.i.i.i.i:                          ; preds = %.lr.ph324, %.lr.ph.i.i.i.i.i.i.i
  %i.zn = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.yv, i64 noundef %i.yw)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %.loopexit25.i.i.i.i.i.i
  %i.zo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 3 uses
  %i.zp = extractvalue { ptr, i32 } %i.zo, 1
  %i.zq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #26
  %i.zr = icmp eq i32 %i.zp, %i.zq
  br i1 %i.zr, label %bb.gg, label %.loopexit18.i.i.i.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.zs = extractvalue { ptr, i32 } %i.zo, 0
  %i.zt = call ptr @__cxa_begin_catch(ptr %i.zs) #26
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !2098 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 144
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !137 ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 152
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !123
  %i.aaa = icmp eq i64 %i.zz, 4
  br i1 %i.aaa, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i:   ; preds = %bb.gg
  %i.aab = load i8, ptr %i.zx, align 1, !tbaa !20
  %or.cond.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aab, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zx, i64 1
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !20
  %or.cond.not.i.i.i.1.i.i.i.i.i.i = icmp eq i8 %i.aad, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zx, i64 2
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !20
  %or.cond.not.i.i.i.2.i.i.i.i.i.i = icmp eq i8 %i.aaf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zx, i64 3
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !20
  %or.cond.not.i.i.i.3.i.i.i.i.i.i = icmp eq i8 %i.aah, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i
  %i.aai = load i8, ptr %i.a, align 1, !tbaa !74, !range !26, !noundef !27
  %i.aaj = trunc nuw i8 %i.aai to i1
  br i1 %i.aaj, label %bb.gn, label %bb.gi

.loopexit.i.i.i.i.i.i:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i, %bb.gg
  invoke void @__cxa_rethrow() #49
          to label %bb.gs unwind label %bb.gh

bb.gh:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gi:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #26
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.yn, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.aal = load ptr, ptr %19, align 8, !tbaa !2101
  %.not.i15.i.i.i.i.i.i = icmp eq ptr %i.aal, null
  br i1 %.not.i15.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.gk, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gi
  %i.aam = landingpad { ptr, i32 }
          cleanup
  %i.aan = load ptr, ptr %19, align 8, !tbaa !2101
  %.not.i16.i.i.i.i.i.i = icmp eq ptr %i.aan, null
  br i1 %.not.i16.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i: ; preds = %bb.gm, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.go

bb.gn:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i, %tailrecurse.i.i.i.i.3.i.i.i.i.i.i
  %i.aao = load ptr, ptr %i.i, align 8, !tbaa !663
  %i.aap = lshr i64 %.024.i.i.i.i.i, 3
  %i.aaq = and i64 %i.aap, 536870911
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aaq ; 2 uses
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !20
  %i.aat = and i64 %.024.i.i.i.i.i, 7
  %i.aau = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aat
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !20
  %i.aaw = and i8 %i.aav, %i.aas
  store i8 %i.aaw, ptr %i.aar, align 1, !tbaa !20
  invoke void @__cxa_end_catch()
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.go:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i, %bb.gh
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aak, %bb.gh ], [ %i.aam, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i.i ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18.i.i.i.i.i unwind label %bb.gr

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i: ; preds = %bb.ge, %.loopexit25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.2.i23.i.i.i.i.i.i = phi i1 [ true, %.loopexit25.i.i.i.i.i.i ], [ false, %.preheader.i.i.i.i.i.i.i ], [ false, %bb.ge ]
  %.0.i.i.i.i.i.i249 = phi i64 [ %i.zn, %.loopexit25.i.i.i.i.i.i ], [ %i.yw, %.preheader.i.i.i.i.i.i.i ], [ %i.yw, %bb.ge ] ; 2 uses
  %i.aax = load ptr, ptr %51, align 8, !tbaa !200
  %i.aay = sdiv i64 %.024.i.i.i.i.i, 64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.aay
  %i.aba = and i64 %.024.i.i.i.i.i, -9223372036854775745
  %i.abb = icmp ugt i64 %i.aba, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.abb, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aaz, i64 %storemerge.idx.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.abc = and i64 %.024.i.i.i.i.i, 63
  %i.abd = shl nuw i64 1, %i.abc                  ; 2 uses
  br i1 %.2.i23.i.i.i.i.i.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i
  %i.abe = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.abf = or i64 %i.abe, %i.abd
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.gq:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i.i
  %i.abg = xor i64 %i.abd, -1
  %i.abh = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.abi = and i64 %i.abh, %i.abg
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.gq, %bb.gp
  %storemerge.i.i.i.i.i.i250 = phi i64 [ %i.abi, %bb.gq ], [ %i.abf, %bb.gp ]
  store i64 %storemerge.i.i.i.i.i.i250, ptr %storemerge.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.abj = load i64, ptr %i.g, align 8, !tbaa !75
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.abj, i64 %.0.i.i.i.i.i.i249)
  store i64 %.sroa.speculated.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !75
  %i.abk = load i64, ptr %i.h, align 8, !tbaa !75
  %i.abl = add i64 %i.abk, %.0.i.i.i.i.i.i249
  store i64 %i.abl, ptr %i.h, align 8, !tbaa !75
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i

.loopexit18.i.i.i.i.i:                            ; preds = %bb.gf, %bb.go
  %.merged.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %bb.go ], [ %i.zo, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body262

bb.gr:                                            ; preds = %bb.go
  %i.abm = landingpad { ptr, i32 }
          catch ptr null
  %i.abn = extractvalue { ptr, i32 } %i.abm, 0
  call void @__clang_call_terminate(ptr %i.abn) #48
  unreachable

bb.gs:                                            ; preds = %.loopexit.i.i.i.i.i.i
  unreachable

_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i: ; preds = %bb.gn, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.abo = add nuw i64 %.024.i.i.i.i.i, 1         ; 2 uses
  %i.abp = icmp ult i64 %i.abo, %i.yk
  br i1 %i.abp, label %bb.gc, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !2286

bb.gt:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.01523.i.i.i.i.i = phi i64 [ %i.yg, %.lr.ph.i.i.i.i.i ], [ %i.aev, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i ] ; 3 uses
  %i.abq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01523.i.i.i.i.i, i1 true)
  %i.abr = trunc nuw nsw i64 %i.abq to i32
  %i.abs = or disjoint i32 %i.yh, %i.abr          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.abt = load ptr, ptr %i.e, align 8, !tbaa !1346
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 216
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !1298
  %i.abw = sext i32 %i.abs to i64                 ; 4 uses
  %i.abx = getelementptr inbounds [16 x i8], ptr %i.abv, i64 %i.abw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.abx, i64 16, i1 false), !tbaa.struct !303
  %i.aby = load i32, ptr %16, align 8, !tbaa !476 ; 3 uses
  %i.abz = icmp ult i32 %i.aby, 13
  %i.aca = load ptr, ptr %i.yb, align 8
  %i.acb = select i1 %i.abz, ptr %i.ya, ptr %i.aca ; 3 uses
  %i.acc = zext i32 %i.aby to i64                 ; 7 uses
  %i.acd = and i64 %i.acc, 4294967264             ; 2 uses
  %.not.i.i48.i.i.i.i325 = icmp ult i32 %i.aby, 32
  br i1 %.not.i.i48.i.i.i.i325, label %.preheader.i.i.i.i.i.i, label %.lr.ph327

bb.gu:                                            ; preds = %.lr.ph327
  %i.ace = add nuw nsw i64 %i.acf, 32             ; 2 uses
  %.not.i.i48.i.i.i.i = icmp samesign ugt i64 %i.ace, %i.acc
  br i1 %.not.i.i48.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph327, !llvm.loop !2228

.preheader.i.i.i.i.i.i:                           ; preds = %bb.gu, %bb.gt
  %.not.i49.i.i.i.i = icmp eq i64 %i.acd, %i.acc
  br i1 %.not.i49.i.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i253

.lr.ph327:                                        ; preds = %bb.gt, %bb.gu
  %i.acf = phi i64 [ %i.ace, %bb.gu ], [ 32, %bb.gt ] ; 2 uses
  %.013.i.i.i.i.i.i326 = phi i64 [ %i.acf, %bb.gu ], [ 0, %bb.gt ]
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 %.013.i.i.i.i.i.i326
  %i.ach = load <4 x i64>, ptr %i.acg, align 1, !tbaa !20, !noalias !2287 ; 3 uses
  %85 = bitcast <4 x i64> %i.ach to <32 x i8>
  %i.aci = bitcast <4 x i64> %i.ach to <32 x i8>
  %86 = shufflevector <32 x i8> %i.aci, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %87 = icmp ugt <16 x i8> %86, splat (i8 -128)
  %88 = sext <16 x i1> %87 to <16 x i8>
  %i.acj = icmp ugt <32 x i8> %85, splat (i8 -128)
  %89 = sext <32 x i1> %i.acj to <32 x i8>
  %90 = bitcast <32 x i8> %89 to <8 x i32>
  %91 = bitcast <16 x i8> %88 to <4 x i32>
  %92 = shufflevector <4 x i32> %91, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %93 = shufflevector <8 x i32> %90, <8 x i32> %92, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %i.ack = bitcast <4 x i64> %i.ach to <32 x i8>  ; 2 uses
  %i.acl = icmp eq <32 x i8> %i.ack, splat (i8 -128)
  %i.acm = icmp eq <32 x i8> %i.ack, splat (i8 92)
  %i.acn = or <32 x i1> %i.acm, %i.acl
  %95 = sext <32 x i1> %i.acn to <32 x i8>
  %96 = bitcast <32 x i8> %95 to <4 x i64>
  %97 = or <4 x i64> %94, %96                     ; 2 uses
  %i.aco = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %97, <4 x i64> %97)
  %.not.i.i.i.i.i.i.i.i252 = icmp eq i32 %i.aco, 0
  br i1 %.not.i.i.i.i.i.i.i.i252, label %.loopexit25.i.i.i.i.i, label %bb.gu, !llvm.loop !2228

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i.i.i253
  %i.acp = add i64 %.127.i.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.acp, %i.acc
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i253, !llvm.loop !2236

.lr.ph.i.i.i.i.i.i253:                            ; preds = %.preheader.i.i.i.i.i.i, %bb.gv
  %.127.i.i.i.i.i.i = phi i64 [ %i.acp, %bb.gv ], [ %i.acd, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acb, i64 %.127.i.i.i.i.i.i
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !20 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp slt i8 %i.acr, 0
  %i.acs = icmp eq i8 %i.acr, 92
  %or.cond.i.i.i.i.i.i = or i1 %.not17.i.i.i.i.i.i, %i.acs
  br i1 %or.cond.i.i.i.i.i.i, label %.loopexit25.i.i.i.i.i, label %bb.gv

.loopexit25.i.i.i.i.i:                            ; preds = %.lr.ph327, %.lr.ph.i.i.i.i.i.i253
  %i.act = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.acb, i64 noundef %i.acc)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i unwind label %bb.gw

bb.gw:                                            ; preds = %.loopexit25.i.i.i.i.i
  %i.acu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 3 uses
  %i.acv = extractvalue { ptr, i32 } %i.acu, 1
  %i.acw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #26
  %i.acx = icmp eq i32 %i.acv, %i.acw
  br i1 %i.acx, label %bb.gx, label %.loopexit.i.i.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.acy = extractvalue { ptr, i32 } %i.acu, 0
  %i.acz = call ptr @__cxa_begin_catch(ptr %i.acy) #26
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !2098 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 144
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !137 ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 152
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !123
  %i.adg = icmp eq i64 %i.adf, 4
  br i1 %i.adg, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i:     ; preds = %bb.gx
  %i.adh = load i8, ptr %i.add, align 1, !tbaa !20
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.adh, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 1
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !20
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.adj, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.adk = getelementptr inbounds nuw i8, ptr %i.add, i64 2
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !20
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.adl, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.adm = getelementptr inbounds nuw i8, ptr %i.add, i64 3
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !20
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.adn, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  %i.ado = load i8, ptr %i.a, align 1, !tbaa !74, !range !26, !noundef !27
  %i.adp = trunc nuw i8 %i.ado to i1
  br i1 %i.adp, label %bb.he, label %bb.gz

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i, %bb.gx
  invoke void @__cxa_rethrow() #49
          to label %bb.hj unwind label %bb.gy

bb.gy:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.gz:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #26
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.abs, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ha unwind label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.adr = load ptr, ptr %17, align 8, !tbaa !2101
  %.not.i15.i.i.i.i.i = icmp eq ptr %i.adr, null
  br i1 %.not.i15.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.he

bb.hc:                                            ; preds = %bb.gz
  %i.ads = landingpad { ptr, i32 }
          cleanup
  %i.adt = load ptr, ptr %17, align 8, !tbaa !2101
  %.not.i16.i.i.i.i.i = icmp eq ptr %i.adt, null
  br i1 %.not.i16.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i: ; preds = %bb.hd, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.hf

bb.he:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.adu = load ptr, ptr %i.i, align 8, !tbaa !663
  %i.adv = zext i32 %i.abs to i64                 ; 2 uses
  %i.adw = lshr i64 %i.adv, 3
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adw ; 2 uses
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !20
  %i.adz = and i64 %i.adv, 7
  %i.aea = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !20
  %i.aec = and i8 %i.aeb, %i.ady
  store i8 %i.aec, ptr %i.adx, align 1, !tbaa !20
  invoke void @__cxa_end_catch()
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit

bb.hf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i, %bb.gy
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.adq, %bb.gy ], [ %i.ads, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i.i.i.i.i ]
  invoke void @__cxa_end_catch()
          to label %.loopexit.i.i.i.i unwind label %bb.hi

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i: ; preds = %bb.gv, %.loopexit25.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.2.i23.i.i.i.i.i = phi i1 [ true, %.loopexit25.i.i.i.i.i ], [ false, %.preheader.i.i.i.i.i.i ], [ false, %bb.gv ]
  %.0.i.i.i.i.i = phi i64 [ %i.act, %.loopexit25.i.i.i.i.i ], [ %i.acc, %.preheader.i.i.i.i.i.i ], [ %i.acc, %bb.gv ] ; 2 uses
  %i.aed = load ptr, ptr %51, align 8, !tbaa !200
  %i.aee = sdiv i64 %i.abw, 64
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.aed, i64 %i.aee
  %i.aeg = and i64 %i.abw, -9223372036854775745
  %i.aeh = icmp ugt i64 %i.aeg, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i.i.i.i = select i1 %i.aeh, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aef, i64 %storemerge.idx.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.aei = and i64 %i.abw, 63
  %i.aej = shl nuw i64 1, %i.aei                  ; 2 uses
  br i1 %.2.i23.i.i.i.i.i, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i
  %i.aek = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.ael = or i64 %i.aek, %i.aej
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i

bb.hh:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i.i.i.i
  %i.aem = xor i64 %i.aej, -1
  %i.aen = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.aeo = and i64 %i.aen, %i.aem
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i:         ; preds = %bb.hh, %bb.hg
  %storemerge.i.i.i.i.i = phi i64 [ %i.aeo, %bb.hh ], [ %i.ael, %bb.hg ]
  store i64 %storemerge.i.i.i.i.i, ptr %storemerge.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.aep = load i64, ptr %i.g, align 8, !tbaa !75
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aep, i64 %.0.i.i.i.i.i)
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.g, align 8, !tbaa !75
  %i.aeq = load i64, ptr %i.h, align 8, !tbaa !75
  %i.aer = add i64 %i.aeq, %.0.i.i.i.i.i
  store i64 %i.aer, ptr %i.h, align 8, !tbaa !75
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.gw, %bb.hf
  %.merged.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.hf ], [ %i.acu, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body262

bb.hi:                                            ; preds = %bb.hf
  %i.aes = landingpad { ptr, i32 }
          catch ptr null
  %i.aet = extractvalue { ptr, i32 } %i.aes, 0
  call void @__clang_call_terminate(ptr %i.aet) #48
  unreachable

bb.hj:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i: ; preds = %bb.he, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.aeu = add i64 %.01523.i.i.i.i.i, -1
  %i.aev = and i64 %i.aeu, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.aev, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i, label %bb.gt, !llvm.loop !2294

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_bEUlT_E_EEvPKmiibSN_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clImEEDaSL_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_.exit.i.i.i.i, %bb.gb, %bb.ga
  %i.aew = add nsw i32 %i.yc, 64                  ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.aew, %i.wk
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ga, !llvm.loop !2295

bb.hk:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aex = ashr i32 %i.wg, 6
  %i.aey = and i32 %i.wg, 63
  %i.aez = zext nneg i32 %i.aey to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.aez
end_hunk_1
begin_hunk_2_@_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_8JsonTypeEEDniRN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISF_SaISF_EEEEvPT_DpOT0_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !102
  store ptr null, ptr %i.c, align 8, !tbaa !129
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !102
  store ptr null, ptr %2, align 8, !tbaa !2189
  store ptr null, ptr %8, align 8, !tbaa !362
  %i.e = load i32, ptr %4, align 4, !tbaa !3
  %i.f = load ptr, ptr %5, align 8, !tbaa !362    ; 3 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !362
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = atomicrmw add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !1273
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !1273
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %8, i32 noundef %i.e, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.k = load ptr, ptr %9, align 8, !tbaa !362    ; 7 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %.noexc.i unwind label %bb.e, !inline_history !377

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !378
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !83
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i.i
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.e, !inline_history !377

bb.e:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.c, %bb.d, %.noexc.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !362    ; 7 uses
  %.not.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.noexc.i10 unwind label %bb.g, !inline_history !377

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !378
  %.not.i.i11 = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !83
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i.i12
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.g, !inline_history !377

bb.g:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %.noexc.i10
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !129 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.an, align 8, !tbaa !133
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !135
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #26, !inline_history !834
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #26, !inline_history !834
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

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
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %i.bc
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_bENKUlT_E_clIiEEDaSL_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #43 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !2921, !nonnull !27, !align !591
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1346
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1298
  %i.e = sext i32 %1 to i64                       ; 4 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !303
  %i.g = load i32, ptr %2, align 8, !tbaa !476    ; 3 uses
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
  br i1 %.not.i, label %.preheader.i, label %.lr.ph, !llvm.loop !2228

.preheader.i:                                     ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %i.n, %i.m
  br i1 %.not, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ 32, %bb.a ]   ; 2 uses
  %.013.i37 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.013.i37
  %i.r = load <4 x i64>, ptr %i.q, align 1, !tbaa !20, !noalias !2923 ; 3 uses
  %4 = bitcast <4 x i64> %i.r to <32 x i8>
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>
  %5 = shufflevector <32 x i8> %i.s, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %6 = icmp ugt <16 x i8> %5, splat (i8 -128)
  %7 = sext <16 x i1> %6 to <16 x i8>
  %i.t = icmp ugt <32 x i8> %4, splat (i8 -128)
  %8 = sext <32 x i1> %i.t to <32 x i8>
  %9 = bitcast <32 x i8> %8 to <8 x i32>
  %10 = bitcast <16 x i8> %7 to <4 x i32>
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x i32> %9, <8 x i32> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %13 = bitcast <8 x i32> %12 to <4 x i64>
  %i.u = bitcast <4 x i64> %i.r to <32 x i8>      ; 2 uses
  %i.v = icmp eq <32 x i8> %i.u, splat (i8 -128)
  %i.w = icmp eq <32 x i8> %i.u, splat (i8 92)
  %i.x = or <32 x i1> %i.w, %i.v
  %14 = sext <32 x i1> %i.x to <32 x i8>
  %15 = bitcast <32 x i8> %14 to <4 x i64>
  %16 = or <4 x i64> %13, %15                     ; 2 uses
  %i.y = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %16, <4 x i64> %16)
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %.loopexit25, label %bb.b, !llvm.loop !2228

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i64 %.127.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond.not.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit, label %.lr.ph.i, !llvm.loop !2236

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.127.i = phi i64 [ %i.z, %bb.c ], [ %i.n, %.preheader.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.127.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20  ; 2 uses
  %.not17.i = icmp slt i8 %i.ab, 0
  %i.ac = icmp eq i8 %i.ab, 92
  %or.cond.i = or i1 %.not17.i, %i.ac
  br i1 %or.cond.i, label %.loopexit25, label %bb.c

.loopexit25:                                      ; preds = %.lr.ph, %.lr.ph.i
  %i.ad = invoke noundef i64 @_ZN8facebook5velox26normalizedSizeForJsonParseEPKcm(ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit unwind label %bb.d

bb.d:                                             ; preds = %.loopexit25
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE ; 3 uses
  %i.af = extractvalue { ptr, i32 } %i.ae, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #26
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.ai = extractvalue { ptr, i32 } %i.ae, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %i.ai) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2098 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !137 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !123
  %i.aq = icmp eq i64 %i.ap, 4
  br i1 %i.aq, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.e
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !20
  %or.cond.not.i.i.i = icmp eq i8 %i.ar, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.at, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.av, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ax, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2930, !nonnull !27
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !74, !range !26, !noundef !27
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2, %bb.e
  invoke void @__cxa_rethrow() #49
          to label %bb.s unwind label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2931, !nonnull !27, !align !591
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #26
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.be, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %3, align 8, !tbaa !2101
  %.not.i15 = icmp eq ptr %i.bf, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %3, align 8, !tbaa !2101
  %.not.i16 = icmp eq ptr %i.bh, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2932, !nonnull !27, !align !591
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !663
  %i.bl = zext i32 %1 to i64                      ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !20
  %i.bp = and i64 %i.bl, 7
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !20
  %i.bs = and i8 %i.br, %i.bo
  store i8 %i.bs, ptr %i.bn, align 1, !tbaa !20
  call void @__cxa_end_catch()
  br label %bb.p

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %i.bg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17 ]
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit: ; preds = %bb.c, %.loopexit25, %.preheader.i
  %.2.i23 = phi i1 [ true, %.loopexit25 ], [ false, %.preheader.i ], [ false, %bb.c ]
  %.0 = phi i64 [ %i.ad, %.loopexit25 ], [ %i.m, %.preheader.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2933, !nonnull !27, !align !591
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !200
  %i.bw = sdiv i64 %i.e, 64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = and i64 %i.e, -9223372036854775745
  %i.bz = icmp ugt i64 %i.by, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bz, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bx, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.ca = and i64 %i.e, 63
  %i.cb = shl nuw i64 1, %i.ca                    ; 2 uses
  br i1 %.2.i23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.cc = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !75
  %i.cd = or i64 %i.cc, %i.cb
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.o:                                             ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit
  %i.ce = xor i64 %i.cb, -1
  %i.cf = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !75
  %i.cg = and i64 %i.cf, %i.ce
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.n, %bb.o
  %storemerge = phi i64 [ %i.cg, %bb.o ], [ %i.cd, %bb.n ]
  store i64 %storemerge, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2934, !nonnull !27, !align !591 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !75
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.cj, i64 %.0)
  store i64 %.sroa.speculated, ptr %i.ci, align 8, !tbaa !75
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2935, !nonnull !27, !align !591 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !75
  %i.cn = add i64 %i.cm, %.0
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !75
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.q:                                             ; preds = %bb.m, %bb.d
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.d ], [ %.pn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #48
  unreachable

bb.s:                                             ; preds = %.loopexit
  unreachable
}

end_hunk_2
