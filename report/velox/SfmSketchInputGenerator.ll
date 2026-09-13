Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SfmSketchInputGenerator?download=true
inline.NumInlined: 666
inline.NumDeleted: 337
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook5velox6fuzzer23SfmSketchInputGenerator13generateTypedIlEENS0_7VariantEv:bb.a
  br i1 %i.s, label %_ZN8facebook5velox19HashStringAllocatorC2EPNS0_6memory10MemoryPoolE.exit, label %bb.b

_ZN8facebook5velox19HashStringAllocatorC2EPNS0_6memory10MemoryPoolE.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36816
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 37248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.t, i8 0, i64 432, i1 false)
  store ptr %i.b, ptr %i.u, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 37256
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 37336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.v, i8 0, i64 80, i1 false)
  store i64 262144, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 37344
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.x, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 37352
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 37376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1404
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !39, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox19HashStringAllocatorC2EPNS0_6memory10MemoryPoolE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1412
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !39, !range !91, !noundef !92
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 9 uses
  %.pre.i.i.i.i = load i64, ptr %i.aj, align 32, !tbaa !13 ; 2 uses
  %i.ak = icmp eq i64 %.pre.i.i.i.i, 64
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.ai) #24
  %.pre.i86.i.i.i.i = load i64, ptr %i.aj, align 32, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %.pre.i86.i.i.i.i, %bb.e ] ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.aj, align 32, !tbaa !13
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46
  %i.ap = lshr i32 %i.ao, 28
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %.sroa.064.0.insert.ext = zext nneg i32 %i.aq to i64
  %.sroa.064.0.insert.insert = or disjoint i64 %.sroa.064.0.insert.ext, 4294967296
  store i64 %.sroa.064.0.insert.insert, ptr %i.aa, align 8
  %i.ar = invoke noundef i32 @_ZN8facebook5velox9functions3sfm9SfmSketch10numBucketsEi(i32 noundef %i.aq)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %.sroa.056.0.insert.ext = zext i32 %i.ar to i64
  %.sroa.056.0.insert.insert = or disjoint i64 %.sroa.056.0.insert.ext, 4294967296
  store i64 %.sroa.056.0.insert.insert, ptr %i.as, align 8
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  %.0.i.i.i.i.i = sub i32 63, %i.at               ; 2 uses
  switch i32 %i.at, label %bb.j [
    i32 63, label %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit24
    i32 64, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.aj, align 32, !tbaa !13 ; 2 uses
  %i.av = icmp eq i64 %i.au, 64
  br i1 %i.av, label %bb.i, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i, !prof !51

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.ai) #24
  %.pre.i.i.i.i.i = load i64, ptr %i.aj, align 32, !tbaa !13
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.aw = phi i64 [ %i.au, %bb.h ], [ %.pre.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.aj, align 32, !tbaa !13
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = add i32 %i.az, 1
  br label %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit24

bb.j:                                             ; preds = %bb.g
  %i.bb = sub nsw i32 64, %i.at                   ; 2 uses
  %i.bc = udiv i32 -1, %i.bb
  %i.bd = urem i32 -1, %i.bb
  %i.be = icmp eq i32 %i.bd, %.0.i.i.i.i.i
  %i.bf = zext i1 %i.be to i32
  %spec.select82.i.i.i.i = add nuw i32 %i.bc, %i.bf
  %.pre.i.i.i.i22 = load i64, ptr %i.aj, align 32, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i, %bb.j
  %i.bg = phi i64 [ %i.bj, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i ], [ %.pre.i.i.i.i22, %bb.j ] ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 64
  br i1 %i.bh, label %bb.l, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i, !prof !51

bb.l:                                             ; preds = %bb.k
  call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.ai) #24
  %.pre.i86.i.i.i.i23 = load i64, ptr %i.aj, align 32, !tbaa !13
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bi = phi i64 [ %i.bg, %bb.k ], [ %.pre.i86.i.i.i.i23, %bb.l ] ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 2 uses
  store i64 %i.bj, ptr %i.aj, align 32, !tbaa !13
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !46
  %i.bm = udiv i32 %i.bl, %spec.select82.i.i.i.i  ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.bm, %.0.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.k, label %.thread97.i.i.i.i

.thread97.i.i.i.i:                                ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i
  %i.bn = add i32 %i.bm, 1
  br label %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit24

_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit24: ; preds = %bb.g, %.thread97.i.i.i.i, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i
  %.5.i.i.i.i = phi i32 [ 1, %bb.g ], [ %i.ba, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ], [ %i.bn, %.thread97.i.i.i.i ]
  %.sroa.054.0.insert.ext = zext i32 %.5.i.i.i.i to i64
  %.sroa.054.0.insert.insert = or disjoint i64 %.sroa.054.0.insert.ext, 4294967296
  store i64 %.sroa.054.0.insert.insert, ptr %i.ae, align 32
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.n:                                             ; preds = %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit24, %bb.c, %_ZN8facebook5velox19HashStringAllocatorC2EPNS0_6memory10MemoryPoolE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketchC1EPNS0_19HashStringAllocatorESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(2584) %3, ptr noundef nonnull %2, i64 4294967297)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.bs = load i32, ptr %i.br, align 32, !tbaa !47
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketch10initializeEii(ptr noundef nonnull align 8 dereferenceable(2584) %3, i32 noundef %i.bq, i32 noundef %i.bs)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %.pre.i.i.i.i25 = load i64, ptr %i.bu, align 32, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i26, %bb.p
  %i.bv = phi i64 [ %i.by, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i26 ], [ %.pre.i.i.i.i25, %bb.p ] ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 64
  br i1 %i.bw, label %bb.r, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i26, !prof !51

bb.r:                                             ; preds = %bb.q
  call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.bt) #24
  %.pre.i86.i.i.i.i30 = load i64, ptr %i.bu, align 32, !tbaa !13
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i26

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i26: ; preds = %bb.r, %bb.q
  %i.bx = phi i64 [ %i.bv, %bb.q ], [ %.pre.i86.i.i.i.i30, %bb.r ] ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.by, ptr %i.bu, align 32, !tbaa !13
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46 ; 2 uses
  %.not.i.i.i.i27 = icmp ugt i32 %i.ca, -7
  br i1 %.not.i.i.i.i27, label %bb.q, label %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit31

_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit31: ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit87.i.i.i.i26
  %i.cb = udiv i32 %i.ca, 429496729
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.v

bb.s:                                             ; preds = %_ZN8facebook5velox9functions3sfm9SfmSketch3addIlEEvT_.exit
  %i.cd = invoke noundef i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(2584) %3)
          to label %bb.w unwind label %bb.an      ; 4 uses

bb.t:                                             ; preds = %bb.n
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.u:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit31, %_ZN8facebook5velox9functions3sfm9SfmSketch3addIlEEvT_.exit
  %.01372 = phi i32 [ 0, %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit31 ], [ %i.cy, %_ZN8facebook5velox9functions3sfm9SfmSketch3addIlEEvT_.exit ] ; 2 uses
  %i.cg = invoke noundef i64 @_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 32 dereferenceable(1288) %i.bt, i64 noundef 0, i64 noundef 9223372036854775807)
          to label %_ZN8facebook5velox6fuzzer4randIlEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit unwind label %.loopexit

_ZN8facebook5velox6fuzzer4randIlEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit: ; preds = %bb.v
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !106
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %_ZL16XXH_INLINE_XXH64PKvmm.exit.i, label %6, !prof !107

_ZL16XXH_INLINE_XXH64PKvmm.exit.i:                ; preds = %_ZN8facebook5velox6fuzzer4randIlEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit
  %i.cj = mul i64 %i.cg, -4417276706812531889     ; 2 uses
  %i.ck = call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 31)
  %i.cl = mul i64 %i.ck, -7046029288634856825
  %i.cm = xor i64 %i.cl, 2870177450012600269      ; 2 uses
  %i.cn = call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 27)
  %i.co = mul i64 %i.cn, -7046029288634856825
  %i.cp = add i64 %i.co, -8796714831421723037     ; 2 uses
  %i.cq = lshr i64 %i.cp, 33
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = mul i64 %i.cr, -4417276706812531889     ; 2 uses
  %i.ct = lshr i64 %i.cs, 29
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = mul i64 %i.cu, 1609587929392839161      ; 2 uses
  %i.cw = lshr i64 %i.cv, 32
  %i.cx = xor i64 %i.cw, %i.cv
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketch7addHashEm(ptr noundef nonnull align 8 dereferenceable(2584) %3, i64 noundef %i.cx)
          to label %_ZN8facebook5velox9functions3sfm9SfmSketch3addIlEEvT_.exit unwind label %.loopexit

6:                                                ; preds = %_ZN8facebook5velox6fuzzer4randIlEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch3addIlEEvT_E18veloxCheckFailArgs, ptr noundef nonnull @.str.31) #27
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %6
  unreachable

_ZN8facebook5velox9functions3sfm9SfmSketch3addIlEEvT_.exit: ; preds = %_ZL16XXH_INLINE_XXH64PKvmm.exit.i
  %i.cy = add nuw nsw i32 %.01372, 1
  %exitcond.not = icmp eq i32 %.01372, %i.cb
  br i1 %exitcond.not, label %bb.s, label %bb.v, !llvm.loop !135

.loopexit:                                        ; preds = %bb.v, %_ZL16XXH_INLINE_XXH64PKvmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %6
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cz = sext i32 %i.cd to i64                   ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.da, ptr %4, align 8, !tbaa !109
  %i.db = icmp ugt i32 %i.cd, 15
  br i1 %i.db, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dc = icmp slt i32 %i.cd, 0
  br i1 %i.dc, label %.noexc.i, label %.thread7.i.i

.noexc.i:                                         ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc33 unwind label %bb.ao

.noexc33:                                         ; preds = %.noexc.i
  unreachable

.thread7.i.i:                                     ; preds = %bb.x
  %i.dd = add nuw nsw i64 %i.cz, 1
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #25
          to label %.noexc35 unwind label %bb.ao  ; 2 uses

.noexc35:                                         ; preds = %.thread7.i.i
  store ptr %i.de, ptr %4, align 8, !tbaa !111
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !46
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  switch i32 %i.cd, label %bb.aa [
    i32 0, label %bb.ab
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.da, align 8, !tbaa !46
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %.noexc35
  %i.df = phi ptr [ %i.de, %.noexc35 ], [ %i.da, %bb.y ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.df, i8 0, i64 %i.cz, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.dg = phi ptr [ %i.da, %bb.y ], [ %i.df, %bb.aa ], [ %i.da, %bb.z ]
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.cz, ptr %i.dh, align 8, !tbaa !112
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cz
  store i8 0, ptr %i.di, align 1, !tbaa !46
  %i.dj = load ptr, ptr %4, align 8, !tbaa !111
  invoke void @_ZNK8facebook5velox9functions3sfm9SfmSketch9serializeEPc(ptr noundef nonnull align 8 dereferenceable(2584) %3, ptr noundef %i.dj)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.dk, ptr %5, align 8, !tbaa !109
  %i.dl = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !112 ; 8 uses
  %i.dn = icmp ugt i64 %i.dm, 15
  br i1 %i.dn, label %bb.ad, label %._crit_edge.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.do = icmp slt i64 %i.dm, 0
  br i1 %i.do, label %.noexc.i36, label %bb.ae

.noexc.i36:                                       ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc37.a unwind label %bb.ap

.noexc37.a:                                       ; preds = %.noexc.i36
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dp = add nuw i64 %i.dm, 1                    ; 2 uses
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !51

.noexc6.i:                                        ; preds = %bb.ae
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc38.a unwind label %bb.ap

.noexc38.a:                                       ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ae
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #25
          to label %.noexc39.a unwind label %bb.ap ; 2 uses

.noexc39.a:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.dr, ptr %5, align 8, !tbaa !111
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc39.a, %bb.ac
  %i.ds = phi ptr [ %i.dr, %.noexc39.a ], [ %i.dk, %bb.ac ] ; 3 uses
  switch i64 %i.dm, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !46
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !46
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.dl, i64 %i.dm, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.dm, ptr %i.du, align 8, !tbaa !112
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dm
  store i8 0, ptr %i.dv, align 1, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.dw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc40 unwind label %bb.aq  ; 5 uses

.noexc40:                                         ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 3 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !109, !noalias !138
  %i.dy = load ptr, ptr %5, align 8, !tbaa !111, !noalias !138 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dk
  br i1 %i.dz, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ai:                                            ; preds = %.noexc40
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !112, !noalias !138 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nuw nsw i64 %i.ea, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dk, i64 %i.ec, i1 false), !noalias !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc40
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !111, !noalias !138
  %i.ed = load i64, ptr %i.dk, align 8, !tbaa !46, !noalias !138
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !46, !noalias !138
  %.pre.i = load i64, ptr %i.du, align 8, !tbaa !112, !noalias !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ai
  %i.ee = phi i64 [ %i.ea, %bb.ai ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !112, !noalias !138
  store ptr %i.dk, ptr %5, align 8, !tbaa !111, !noalias !138
  store i64 0, ptr %i.du, align 8, !tbaa !112, !noalias !138
  store i8 0, ptr %i.dk, align 8, !tbaa !46, !noalias !138
  store ptr %i.dw, ptr %0, align 8, !tbaa !56, !alias.scope !138
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.eg, align 8, !tbaa !57, !alias.scope !138
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.eh, align 1, !tbaa !58, !alias.scope !138
  %i.ei = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.da
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ek = load i64, ptr %i.da, align 8, !tbaa !46
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !113 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !114
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i45, label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = icmp ugt i64 %i.es, 3072
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !115 ; 2 uses
  br i1 %i.eu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384) %i.ev, ptr noundef nonnull %i.en, i64 noundef %i.es)
          to label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit unwind label %bb.am

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6fuzzer23SfmSketchInputGenerator13generateTypedIdEENS0_7VariantEv:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.v

bb.s:                                             ; preds = %_ZN8facebook5velox9functions3sfm9SfmSketch3addIdEEvT_.exit
  %i.dq = invoke noundef i32 @_ZNK8facebook5velox9functions3sfm9SfmSketch14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(2584) %3)
          to label %bb.y unwind label %bb.ap      ; 4 uses

bb.t:                                             ; preds = %bb.n
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.u:                                             ; preds = %bb.o
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.v:                                             ; preds = %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit31, %_ZN8facebook5velox9functions3sfm9SfmSketch3addIdEEvT_.exit
  %.01373 = phi i32 [ 0, %_ZN8facebook5velox6fuzzer4randIiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit31 ], [ %i.jc, %_ZN8facebook5velox9functions3sfm9SfmSketch3addIdEEvT_.exit ] ; 2 uses
  %.pre.i.i = load i64, ptr %i.bu, align 32, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i, %bb.v
  %i.dt = phi i64 [ %i.ie, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.pre.i.i, %bb.v ] ; 2 uses
  %i.du = icmp eq i64 %i.dt, 64
  br i1 %i.du, label %bb.x, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i, !prof !51

bb.x:                                             ; preds = %bb.w
  %i.dv = load <4 x i64>, ptr %i.cc, align 32, !tbaa !46 ; 4 uses
  %i.dw = load <4 x i64>, ptr %i.cd, align 32, !tbaa !46 ; 2 uses
  %i.dx = add <4 x i64> %i.dw, %i.dv              ; 2 uses
  %i.dy = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dx, <4 x i64> %i.dx, <4 x i64> splat (i64 23))
  %i.dz = add <4 x i64> %i.dy, %i.dv
  store <4 x i64> %i.dz, ptr %i.bt, align 32, !tbaa !46
  %i.ea = load <4 x i64>, ptr %i.ce, align 32, !tbaa !46 ; 3 uses
  %i.eb = shl <4 x i64> %i.ea, splat (i64 17)
  %i.ec = load <4 x i64>, ptr %i.cf, align 32, !tbaa !46
  %i.ed = xor <4 x i64> %i.ec, %i.dv              ; 2 uses
  %i.ee = xor <4 x i64> %i.ea, %i.dw              ; 3 uses
  %i.ef = xor <4 x i64> %i.ed, %i.ea
  store <4 x i64> %i.ef, ptr %i.ce, align 32, !tbaa !46
  %i.eg = xor <4 x i64> %i.ee, %i.dv
  store <4 x i64> %i.eg, ptr %i.cc, align 32, !tbaa !46
  %i.eh = xor <4 x i64> %i.ed, %i.eb
  store <4 x i64> %i.eh, ptr %i.cf, align 32, !tbaa !46
  %i.ei = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ee, <4 x i64> %i.ee, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ei, ptr %i.cd, align 32, !tbaa !46
  %i.ej = load <4 x i64>, ptr %i.cg, align 32, !tbaa !46 ; 4 uses
  %i.ek = load <4 x i64>, ptr %i.ch, align 32, !tbaa !46 ; 2 uses
  %i.el = add <4 x i64> %i.ek, %i.ej              ; 2 uses
  %i.em = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.el, <4 x i64> %i.el, <4 x i64> splat (i64 23))
  %i.en = add <4 x i64> %i.em, %i.ej
  store <4 x i64> %i.en, ptr %i.ci, align 32, !tbaa !46
  %i.eo = load <4 x i64>, ptr %i.cj, align 32, !tbaa !46 ; 3 uses
  %i.ep = shl <4 x i64> %i.eo, splat (i64 17)
  %i.eq = load <4 x i64>, ptr %i.ck, align 32, !tbaa !46
  %i.er = xor <4 x i64> %i.eq, %i.ej              ; 2 uses
  %i.es = xor <4 x i64> %i.eo, %i.ek              ; 3 uses
  %i.et = xor <4 x i64> %i.er, %i.eo
  store <4 x i64> %i.et, ptr %i.cj, align 32, !tbaa !46
  %i.eu = xor <4 x i64> %i.es, %i.ej
  store <4 x i64> %i.eu, ptr %i.cg, align 32, !tbaa !46
  %i.ev = xor <4 x i64> %i.er, %i.ep
  store <4 x i64> %i.ev, ptr %i.ck, align 32, !tbaa !46
  %i.ew = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.es, <4 x i64> %i.es, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ew, ptr %i.ch, align 32, !tbaa !46
  %i.ex = load <4 x i64>, ptr %i.cl, align 32, !tbaa !46 ; 4 uses
  %i.ey = load <4 x i64>, ptr %i.cm, align 32, !tbaa !46 ; 2 uses
  %i.ez = add <4 x i64> %i.ey, %i.ex              ; 2 uses
  %i.fa = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ez, <4 x i64> %i.ez, <4 x i64> splat (i64 23))
  %i.fb = add <4 x i64> %i.fa, %i.ex
  store <4 x i64> %i.fb, ptr %i.cn, align 32, !tbaa !46
  %i.fc = load <4 x i64>, ptr %i.co, align 32, !tbaa !46 ; 3 uses
  %i.fd = shl <4 x i64> %i.fc, splat (i64 17)
  %i.fe = load <4 x i64>, ptr %i.cp, align 32, !tbaa !46
  %i.ff = xor <4 x i64> %i.fe, %i.ex              ; 2 uses
  %i.fg = xor <4 x i64> %i.fc, %i.ey              ; 3 uses
  %i.fh = xor <4 x i64> %i.ff, %i.fc
  store <4 x i64> %i.fh, ptr %i.co, align 32, !tbaa !46
  %i.fi = xor <4 x i64> %i.fg, %i.ex
  store <4 x i64> %i.fi, ptr %i.cl, align 32, !tbaa !46
  %i.fj = xor <4 x i64> %i.ff, %i.fd
  store <4 x i64> %i.fj, ptr %i.cp, align 32, !tbaa !46
  %i.fk = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fg, <4 x i64> %i.fg, <4 x i64> splat (i64 45))
  store <4 x i64> %i.fk, ptr %i.cm, align 32, !tbaa !46
  %i.fl = load <4 x i64>, ptr %i.cq, align 32, !tbaa !46 ; 4 uses
  %i.fm = load <4 x i64>, ptr %i.cr, align 32, !tbaa !46 ; 2 uses
  %i.fn = add <4 x i64> %i.fm, %i.fl              ; 2 uses
  %i.fo = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fn, <4 x i64> %i.fn, <4 x i64> splat (i64 23))
  %i.fp = add <4 x i64> %i.fo, %i.fl
  store <4 x i64> %i.fp, ptr %i.cs, align 32, !tbaa !46
  %i.fq = load <4 x i64>, ptr %i.ct, align 32, !tbaa !46 ; 3 uses
  %i.fr = shl <4 x i64> %i.fq, splat (i64 17)
  %i.fs = load <4 x i64>, ptr %i.cu, align 32, !tbaa !46
  %i.ft = xor <4 x i64> %i.fs, %i.fl              ; 2 uses
  %i.fu = xor <4 x i64> %i.fq, %i.fm              ; 3 uses
  %i.fv = xor <4 x i64> %i.ft, %i.fq
  store <4 x i64> %i.fv, ptr %i.ct, align 32, !tbaa !46
  %i.fw = xor <4 x i64> %i.fu, %i.fl
  store <4 x i64> %i.fw, ptr %i.cq, align 32, !tbaa !46
  %i.fx = xor <4 x i64> %i.ft, %i.fr
  store <4 x i64> %i.fx, ptr %i.cu, align 32, !tbaa !46
  %i.fy = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fu, <4 x i64> %i.fu, <4 x i64> splat (i64 45))
  store <4 x i64> %i.fy, ptr %i.cr, align 32, !tbaa !46
  %i.fz = load <4 x i64>, ptr %i.cv, align 32, !tbaa !46 ; 4 uses
  %i.ga = load <4 x i64>, ptr %i.cw, align 32, !tbaa !46 ; 2 uses
  %i.gb = add <4 x i64> %i.ga, %i.fz              ; 2 uses
  %i.gc = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.gb, <4 x i64> %i.gb, <4 x i64> splat (i64 23))
  %i.gd = add <4 x i64> %i.gc, %i.fz
  store <4 x i64> %i.gd, ptr %i.cx, align 32, !tbaa !46
  %i.ge = load <4 x i64>, ptr %i.cy, align 32, !tbaa !46 ; 3 uses
  %i.gf = shl <4 x i64> %i.ge, splat (i64 17)
  %i.gg = load <4 x i64>, ptr %i.cz, align 32, !tbaa !46
  %i.gh = xor <4 x i64> %i.gg, %i.fz              ; 2 uses
  %i.gi = xor <4 x i64> %i.ge, %i.ga              ; 3 uses
  %i.gj = xor <4 x i64> %i.gh, %i.ge
  store <4 x i64> %i.gj, ptr %i.cy, align 32, !tbaa !46
  %i.gk = xor <4 x i64> %i.gi, %i.fz
  store <4 x i64> %i.gk, ptr %i.cv, align 32, !tbaa !46
  %i.gl = xor <4 x i64> %i.gh, %i.gf
  store <4 x i64> %i.gl, ptr %i.cz, align 32, !tbaa !46
  %i.gm = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.gi, <4 x i64> %i.gi, <4 x i64> splat (i64 45))
  store <4 x i64> %i.gm, ptr %i.cw, align 32, !tbaa !46
  %i.gn = load <4 x i64>, ptr %i.da, align 32, !tbaa !46 ; 4 uses
  %i.go = load <4 x i64>, ptr %i.db, align 32, !tbaa !46 ; 2 uses
  %i.gp = add <4 x i64> %i.go, %i.gn              ; 2 uses
  %i.gq = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.gp, <4 x i64> %i.gp, <4 x i64> splat (i64 23))
  %i.gr = add <4 x i64> %i.gq, %i.gn
  store <4 x i64> %i.gr, ptr %i.dc, align 32, !tbaa !46
  %i.gs = load <4 x i64>, ptr %i.dd, align 32, !tbaa !46 ; 3 uses
  %i.gt = shl <4 x i64> %i.gs, splat (i64 17)
  %i.gu = load <4 x i64>, ptr %i.de, align 32, !tbaa !46
  %i.gv = xor <4 x i64> %i.gu, %i.gn              ; 2 uses
  %i.gw = xor <4 x i64> %i.gs, %i.go              ; 3 uses
  %i.gx = xor <4 x i64> %i.gv, %i.gs
  store <4 x i64> %i.gx, ptr %i.dd, align 32, !tbaa !46
  %i.gy = xor <4 x i64> %i.gw, %i.gn
  store <4 x i64> %i.gy, ptr %i.da, align 32, !tbaa !46
  %i.gz = xor <4 x i64> %i.gv, %i.gt
  store <4 x i64> %i.gz, ptr %i.de, align 32, !tbaa !46
  %i.ha = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.gw, <4 x i64> %i.gw, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ha, ptr %i.db, align 32, !tbaa !46
  %i.hb = load <4 x i64>, ptr %i.df, align 32, !tbaa !46 ; 4 uses
  %i.hc = load <4 x i64>, ptr %i.dg, align 32, !tbaa !46 ; 2 uses
  %i.hd = add <4 x i64> %i.hc, %i.hb              ; 2 uses
  %i.he = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.hd, <4 x i64> %i.hd, <4 x i64> splat (i64 23))
  %i.hf = add <4 x i64> %i.he, %i.hb
  store <4 x i64> %i.hf, ptr %i.dh, align 32, !tbaa !46
  %i.hg = load <4 x i64>, ptr %i.di, align 32, !tbaa !46 ; 3 uses
  %i.hh = shl <4 x i64> %i.hg, splat (i64 17)
  %i.hi = load <4 x i64>, ptr %i.dj, align 32, !tbaa !46
  %i.hj = xor <4 x i64> %i.hi, %i.hb              ; 2 uses
  %i.hk = xor <4 x i64> %i.hg, %i.hc              ; 3 uses
  %i.hl = xor <4 x i64> %i.hj, %i.hg
  store <4 x i64> %i.hl, ptr %i.di, align 32, !tbaa !46
  %i.hm = xor <4 x i64> %i.hk, %i.hb
  store <4 x i64> %i.hm, ptr %i.df, align 32, !tbaa !46
  %i.hn = xor <4 x i64> %i.hj, %i.hh
  store <4 x i64> %i.hn, ptr %i.dj, align 32, !tbaa !46
  %i.ho = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.hk, <4 x i64> %i.hk, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ho, ptr %i.dg, align 32, !tbaa !46
  %i.hp = load <4 x i64>, ptr %i.dk, align 32, !tbaa !46 ; 4 uses
  %i.hq = load <4 x i64>, ptr %i.dl, align 32, !tbaa !46 ; 2 uses
  %i.hr = add <4 x i64> %i.hq, %i.hp              ; 2 uses
  %i.hs = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.hr, <4 x i64> %i.hr, <4 x i64> splat (i64 23))
  %i.ht = add <4 x i64> %i.hs, %i.hp
  store <4 x i64> %i.ht, ptr %i.dm, align 32, !tbaa !46
  %i.hu = load <4 x i64>, ptr %i.dn, align 32, !tbaa !46 ; 3 uses
  %i.hv = shl <4 x i64> %i.hu, splat (i64 17)
  %i.hw = load <4 x i64>, ptr %i.do, align 32, !tbaa !46
  %i.hx = xor <4 x i64> %i.hw, %i.hp              ; 2 uses
  %i.hy = xor <4 x i64> %i.hu, %i.hq              ; 3 uses
  %i.hz = xor <4 x i64> %i.hx, %i.hu
  store <4 x i64> %i.hz, ptr %i.dn, align 32, !tbaa !46
  %i.ia = xor <4 x i64> %i.hy, %i.hp
  store <4 x i64> %i.ia, ptr %i.dk, align 32, !tbaa !46
  %i.ib = xor <4 x i64> %i.hx, %i.hv
  store <4 x i64> %i.ib, ptr %i.do, align 32, !tbaa !46
  %i.ic = call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.hy, <4 x i64> %i.hy, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ic, ptr %i.dl, align 32, !tbaa !46
  store i64 0, ptr %i.bu, align 32, !tbaa !13
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i:     ; preds = %bb.x, %bb.w
  %i.id = phi i64 [ %i.dt, %bb.w ], [ 0, %bb.x ]  ; 2 uses
  %i.ie = add i64 %i.id, 1                        ; 2 uses
  store i64 %i.ie, ptr %i.bu, align 32, !tbaa !13
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !46
  %i.ih = uitofp i32 %i.ig to double
  %i.ii = fmul nnan double %i.ih, f0x3DF0000000000000 ; 2 uses
  %i.ij = fcmp uge double %i.ii, 1.000000e+00
  br i1 %i.ij, label %bb.w, label %_ZN8facebook5velox6fuzzer4randIdEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit

_ZN8facebook5velox6fuzzer4randIdEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit: ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i
  %i.ik = load i32, ptr %i.dp, align 4, !tbaa !106
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %_ZL16XXH_INLINE_XXH64PKvmm.exit.i, label %6, !prof !107

_ZL16XXH_INLINE_XXH64PKvmm.exit.i:                ; preds = %_ZN8facebook5velox6fuzzer4randIdEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit
  %i.im = bitcast double %i.ii to i64
  %i.in = mul i64 %i.im, -4417276706812531889     ; 2 uses
  %i.io = call i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 31)
  %i.ip = mul i64 %i.io, -7046029288634856825
  %i.iq = xor i64 %i.ip, 2870177450012600269      ; 2 uses
  %i.ir = call i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 27)
  %i.is = mul i64 %i.ir, -7046029288634856825
  %i.it = add i64 %i.is, -8796714831421723037     ; 2 uses
  %i.iu = lshr i64 %i.it, 33
  %i.iv = xor i64 %i.iu, %i.it
  %i.iw = mul i64 %i.iv, -4417276706812531889     ; 2 uses
  %i.ix = lshr i64 %i.iw, 29
  %i.iy = xor i64 %i.ix, %i.iw
  %i.iz = mul i64 %i.iy, 1609587929392839161      ; 2 uses
  %i.ja = lshr i64 %i.iz, 32
  %i.jb = xor i64 %i.ja, %i.iz
  invoke void @_ZN8facebook5velox9functions3sfm9SfmSketch7addHashEm(ptr noundef nonnull align 8 dereferenceable(2584) %3, i64 noundef %i.jb)
          to label %_ZN8facebook5velox9functions3sfm9SfmSketch3addIdEEvT_.exit unwind label %.loopexit

6:                                                ; preds = %_ZN8facebook5velox6fuzzer4randIdEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch3addIdEEvT_E18veloxCheckFailArgs, ptr noundef nonnull @.str.31) #27
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %6
  unreachable

_ZN8facebook5velox9functions3sfm9SfmSketch3addIdEEvT_.exit: ; preds = %_ZL16XXH_INLINE_XXH64PKvmm.exit.i
  %i.jc = add nuw nsw i32 %.01373, 1
  %exitcond.not = icmp eq i32 %.01373, %i.cb
  br i1 %exitcond.not, label %bb.s, label %bb.v, !llvm.loop !139

.loopexit:                                        ; preds = %_ZL16XXH_INLINE_XXH64PKvmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %6
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.jd = sext i32 %i.dq to i64                   ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.je, ptr %4, align 8, !tbaa !109
  %i.jf = icmp ugt i32 %i.dq, 15
  br i1 %i.jf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jg = icmp slt i32 %i.dq, 0
  br i1 %i.jg, label %.noexc.i, label %.thread7.i.i

.noexc.i:                                         ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc33 unwind label %bb.aq

.noexc33:                                         ; preds = %.noexc.i
  unreachable

.thread7.i.i:                                     ; preds = %bb.z
  %i.jh = add nuw nsw i64 %i.jd, 1
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #25
          to label %.noexc35 unwind label %bb.aq  ; 2 uses

.noexc35:                                         ; preds = %.thread7.i.i
  store ptr %i.ji, ptr %4, align 8, !tbaa !111
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !46
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  switch i32 %i.dq, label %bb.ac [
    i32 0, label %bb.ad
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.je, align 8, !tbaa !46
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %.noexc35
  %i.jj = phi ptr [ %i.ji, %.noexc35 ], [ %i.je, %bb.aa ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jj, i8 0, i64 %i.jd, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.jk = phi ptr [ %i.je, %bb.aa ], [ %i.jj, %bb.ac ], [ %i.je, %bb.ab ]
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.jd, ptr %i.jl, align 8, !tbaa !112
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jd
  store i8 0, ptr %i.jm, align 1, !tbaa !46
  %i.jn = load ptr, ptr %4, align 8, !tbaa !111
  invoke void @_ZNK8facebook5velox9functions3sfm9SfmSketch9serializeEPc(ptr noundef nonnull align 8 dereferenceable(2584) %3, ptr noundef %i.jn)
          to label %bb.ae unwind label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.jo, ptr %5, align 8, !tbaa !109
  %i.jp = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.jq = load i64, ptr %i.jl, align 8, !tbaa !112 ; 8 uses
  %i.jr = icmp ugt i64 %i.jq, 15
  br i1 %i.jr, label %bb.af, label %._crit_edge.i.i

bb.af:                                            ; preds = %bb.ae
  %i.js = icmp slt i64 %i.jq, 0
  br i1 %i.js, label %.noexc.i36, label %bb.ag

.noexc.i36:                                       ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc37.a unwind label %bb.ar

.noexc37.a:                                       ; preds = %.noexc.i36
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.jt = add nuw i64 %i.jq, 1                    ; 2 uses
  %i.ju = icmp slt i64 %i.jt, 0
  br i1 %i.ju, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !51

.noexc6.i:                                        ; preds = %bb.ag
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc38.a unwind label %bb.ar

.noexc38.a:                                       ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ag
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #25
          to label %.noexc39.a unwind label %bb.ar ; 2 uses

.noexc39.a:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.jv, ptr %5, align 8, !tbaa !111
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc39.a, %bb.ae
  %i.jw = phi ptr [ %i.jv, %.noexc39.a ], [ %i.jo, %bb.ae ] ; 3 uses
  switch i64 %i.jq, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.jx = load i8, ptr %i.jp, align 1, !tbaa !46
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !46
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jw, ptr align 1 %i.jp, i64 %i.jq, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.jq, ptr %i.jy, align 8, !tbaa !112
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jq
  store i8 0, ptr %i.jz, align 1, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ka = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc40 unwind label %bb.as  ; 5 uses

.noexc40:                                         ; preds = %bb.aj
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 3 uses
  store ptr %i.kb, ptr %i.ka, align 8, !tbaa !109, !noalias !142
  %i.kc = load ptr, ptr %5, align 8, !tbaa !111, !noalias !142 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jo
  br i1 %i.kd, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ak:                                            ; preds = %.noexc40
  %i.ke = load i64, ptr %i.jy, align 8, !tbaa !112, !noalias !142 ; 3 uses
  %i.kf = icmp ult i64 %i.ke, 16
  call void @llvm.assume(i1 %i.kf)
  %i.kg = add nuw nsw i64 %i.ke, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kb, ptr noundef nonnull align 8 dereferenceable(1) %i.jo, i64 %i.kg, i1 false), !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc40
  store ptr %i.kc, ptr %i.ka, align 8, !tbaa !111, !noalias !142
  %i.kh = load i64, ptr %i.jo, align 8, !tbaa !46, !noalias !142
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !46, !noalias !142
  %.pre.i = load i64, ptr %i.jy, align 8, !tbaa !112, !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ak
  %i.ki = phi i64 [ %i.ke, %bb.ak ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !112, !noalias !142
  store ptr %i.jo, ptr %5, align 8, !tbaa !111, !noalias !142
  store i64 0, ptr %i.jy, align 8, !tbaa !112, !noalias !142
  store i8 0, ptr %i.jo, align 8, !tbaa !46, !noalias !142
  store ptr %i.ka, ptr %0, align 8, !tbaa !56, !alias.scope !142
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.kk, align 8, !tbaa !57, !alias.scope !142
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.kl, align 1, !tbaa !58, !alias.scope !142
  %i.km = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.je
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ko = load i64, ptr %i.je, align 8, !tbaa !46
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !113 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !114
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i45, label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ky = icmp ugt i64 %i.kw, 3072
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !115 ; 2 uses
  br i1 %i.ky, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN8facebook5velox19HashStringAllocator10freeToPoolEPvm(ptr noundef nonnull align 8 dereferenceable(37384) %i.kz, ptr noundef nonnull %i.kr, i64 noundef %i.kw)
          to label %_ZN8facebook5velox9functions3sfm9SfmSketchD2Ev.exit unwind label %bb.ao

end_hunk_1
