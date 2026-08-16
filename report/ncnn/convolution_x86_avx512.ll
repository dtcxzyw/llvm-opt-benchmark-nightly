inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.akk = lshr i32 %i.cj, 1
  %i.akl = and i32 %i.akk, 1
  %i.akm = and i32 %i.cj, 1
  %i.akn = add nuw nsw i32 %i.akm, 1
  %i.ako = add nuw nsw i32 %i.akn, %i.akl
  %i.akp = lshr i32 %i.rk, 1
  %i.akq = and i32 %i.akp, 1
  %i.akr = and i32 %i.rk, 1
  %i.aks = add nuw nsw i32 %i.akr, 1
  %i.akt = add nuw nsw i32 %i.aks, %i.akq
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.akj, i32 noundef %i.ako, i32 noundef %i.akt, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kd:                                            ; preds = %bb.kb
  %i.aku = icmp sgt i32 %i.cj, 1
  br i1 %i.aku, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.akv = shl nsw i32 %i.afa, 3
  %i.akw = and i32 %i.cj, 1
  %i.akx = add nuw nsw i32 %i.akw, 1
  %i.aky = lshr i32 %i.rk, 1
  %i.akz = and i32 %i.aky, 1
  %i.ala = and i32 %i.rk, 1
  %i.alb = add nuw nsw i32 %i.ala, 1
  %i.alc = add nuw nsw i32 %i.alb, %i.akz
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.akv, i32 noundef %i.akx, i32 noundef %i.alc, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kf:                                            ; preds = %bb.kd
  %i.ald = shl nsw i32 %i.afa, 2
  %i.ale = lshr i32 %i.rk, 1
  %i.alf = and i32 %i.ale, 1
  %i.alg = and i32 %i.rk, 1
  %i.alh = add nuw nsw i32 %i.alg, 1
  %i.ali = add nuw nsw i32 %i.alh, %i.alf
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.ald, i32 noundef %i.cj, i32 noundef %i.ali, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kg:                                            ; preds = %bb.jw
  %i.alj = icmp sgt i32 %i.rk, 1
  %i.alk = icmp sgt i32 %i.cj, 15                 ; 2 uses
  br i1 %i.alj, label %bb.kh, label %bb.kq

bb.kh:                                            ; preds = %bb.kg
  br i1 %i.alk, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.all = shl nsw i32 %i.afa, 5
  %i.alm = lshr i32 %i.cj, 4
  %i.aln = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %i.alo = shufflevector <4 x i32> %i.aln, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alp = lshr <4 x i32> %i.alo, <i32 0, i32 3, i32 2, i32 1>
  %i.alq = and <4 x i32> %i.alp, splat (i32 1)
  %i.alr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.alq)
  %op.rdx968 = add nuw nsw i32 %i.alr, %i.alm
  %i.als = and i32 %i.rk, 1
  %i.alt = add nuw nsw i32 %i.als, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.all, i32 noundef %op.rdx968, i32 noundef %i.alt, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kj:                                            ; preds = %bb.kh
  %i.alu = icmp sgt i32 %i.cj, 7
  br i1 %i.alu, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.alv = shl nsw i32 %i.afa, 4
  %i.alw = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.cj, i64 0
  %i.alx = shufflevector <4 x i32> %i.alw, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aly = lshr <4 x i32> %i.alx, <i32 0, i32 2, i32 1, i32 0>
  %i.alz = and <4 x i32> %i.aly, splat (i32 1)
  %i.ama = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.alz)
  %i.amb = and i32 %i.rk, 1
  %i.amc = add nuw nsw i32 %i.amb, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.alv, i32 noundef %i.ama, i32 noundef %i.amc, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kl:                                            ; preds = %bb.kj
  %i.amd = icmp sgt i32 %i.cj, 3
  br i1 %i.amd, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ame = shl nsw i32 %i.afa, 3
  %i.amf = lshr i32 %i.cj, 1
  %i.amg = and i32 %i.amf, 1
  %i.amh = and i32 %i.cj, 1
  %i.ami = add nuw nsw i32 %i.amh, 1
  %i.amj = add nuw nsw i32 %i.ami, %i.amg
  %i.amk = and i32 %i.rk, 1
  %i.aml = add nuw nsw i32 %i.amk, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.ame, i32 noundef %i.amj, i32 noundef %i.aml, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kn:                                            ; preds = %bb.kl
  %i.amm = icmp sgt i32 %i.cj, 1
  br i1 %i.amm, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.amn = shl nsw i32 %i.afa, 2
  %i.amo = and i32 %i.cj, 1
  %i.amp = add nuw nsw i32 %i.amo, 1
  %i.amq = and i32 %i.rk, 1
  %i.amr = add nuw nsw i32 %i.amq, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.amn, i32 noundef %i.amp, i32 noundef %i.amr, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kp:                                            ; preds = %bb.kn
  %i.ams = shl nsw i32 %i.afa, 1
  %i.amt = and i32 %i.rk, 1
  %i.amu = add nuw nsw i32 %i.amt, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.ams, i32 noundef %i.cj, i32 noundef %i.amu, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kq:                                            ; preds = %bb.kg
  br i1 %i.alk, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.amv = shl nsw i32 %i.afa, 4
  %i.amw = lshr i32 %i.cj, 4
  %i.amx = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %i.amy = shufflevector <4 x i32> %i.amx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amz = lshr <4 x i32> %i.amy, <i32 0, i32 3, i32 2, i32 1>
  %i.ana = and <4 x i32> %i.amz, splat (i32 1)
  %i.anb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ana)
  %op.rdx969 = add nuw nsw i32 %i.anb, %i.amw
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.amv, i32 noundef %op.rdx969, i32 noundef %i.rk, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.ks:                                            ; preds = %bb.kq
  %i.anc = icmp sgt i32 %i.cj, 7
  br i1 %i.anc, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.and = shl nsw i32 %i.afa, 3
  %i.ane = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.cj, i64 0
  %i.anf = shufflevector <4 x i32> %i.ane, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ang = lshr <4 x i32> %i.anf, <i32 0, i32 2, i32 1, i32 0>
  %i.anh = and <4 x i32> %i.ang, splat (i32 1)
  %i.ani = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.anh)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.and, i32 noundef %i.ani, i32 noundef %i.rk, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.ku:                                            ; preds = %bb.ks
  %i.anj = icmp sgt i32 %i.cj, 3
  br i1 %i.anj, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.ank = shl nsw i32 %i.afa, 2
  %i.anl = lshr i32 %i.cj, 1
  %i.anm = and i32 %i.anl, 1
  %i.ann = and i32 %i.cj, 1
  %i.ano = add nuw nsw i32 %i.ann, 1
  %i.anp = add nuw nsw i32 %i.ano, %i.anm
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.ank, i32 noundef %i.anp, i32 noundef %i.rk, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.kw:                                            ; preds = %bb.ku
  %i.anq = icmp sgt i32 %i.cj, 1
  br i1 %i.anq, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.anr = shl nsw i32 %i.afa, 1
  %i.ans = and i32 %i.cj, 1
  %i.ant = add nuw nsw i32 %i.ans, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.anr, i32 noundef %i.ant, i32 noundef %i.rk, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

bb.ky:                                            ; preds = %bb.kw
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aez, i32 noundef %i.afa, i32 noundef %i.cj, i32 noundef %i.rk, i64 noundef 4, ptr noundef null)
  br label %.preheader1584.i

_ZN4ncnn3MatD2Ev.exit1330.lr.ph.i:                ; preds = %bb.jl, %bb.jk, %bb.ji, %bb.jg, %bb.je
  %i.anu = mul i32 %i.afa, %i.cj                  ; 17 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.anx = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.any = shufflevector <16 x i32> %i.anx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.anz = mul <16 x i32> %i.any, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 17 uses
  %i.aoa = icmp sgt i32 %i.afa, 0                 ; 4 uses
  %i.aob = shl i32 %i.afa, 4
  %i.aoc = sext i32 %i.aob to i64                 ; 17 uses
  %i.aod = insertelement <16 x i32> poison, i32 %i.cj, i64 0
  %i.aoe = shufflevector <16 x i32> %i.aod, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aof = mul <16 x i32> %i.anz, %i.aoe          ; 39 uses
  %i.aog = sext i32 %i.afa to i64                 ; 21 uses
  %i.aoh = shl i32 %i.afa, 3
  %i.aoi = sext i32 %i.aoh to i64                 ; 2 uses
  %i.aoj = shl i32 %i.afa, 2
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = shl i32 %i.afa, 1
  %i.aom = sext i32 %i.aol to i64
  %i.aon = icmp slt i32 %i.afa, 1
  %i.aoo = add i32 %i.cj, -16                     ; 2 uses
  %i.aop = lshr i32 %i.aoo, 2
  %i.aoq = and i32 %i.aop, 1073741820
  %narrow.i = add nuw nsw i32 %i.aoq, 4
  %i.aor = zext nneg i32 %narrow.i to i64
  %i.aos = mul nsw i64 %i.aoc, %i.aor
  %i.aot = shl i32 %i.anu, 4
  %i.aou = and i32 %i.aoo, -16
  %i.aov = add nuw nsw i32 %i.aou, 16             ; 4 uses
  %i.aow = add i32 %i.cj, -8
  %i.aox = zext nneg i32 %i.rk to i64
  %i.aoy = or disjoint i32 %i.aov, 7
  %i.aoz = icmp slt i32 %i.aoy, %i.cj
  %wide.trip.count.i = zext i32 %i.afa to i64     ; 9 uses
  %i.apa = add nsw i64 %wide.trip.count.i, -1     ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.apb = icmp eq i64 %i.apa, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1051 = trunc i32 %i.afa to i1
  %xtraiter1053 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.apc = icmp ult i64 %i.apa, 3
  %unroll_iter1057 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod1054.not = icmp eq i64 %xtraiter1053, 0
  %lcmp.mod1056 = icmp ne i64 %xtraiter1053, 0
  %xtraiter1060 = and i64 %wide.trip.count.i, 7   ; 3 uses
  %i.apd = icmp ult i64 %i.apa, 7
  %unroll_iter1065 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod1062.not = icmp eq i64 %xtraiter1060, 0
  %lcmp.mod1064 = icmp ne i64 %xtraiter1060, 0
  br label %_ZN4ncnn3MatD2Ev.exit1330.i

.preheader1584.loopexit.i:                        ; preds = %._crit_edge1671.split.i
  %i.ape = trunc nuw nsw i64 %indvars.iv.next2204.i to i32
  br label %.preheader1584.i

.preheader1584.i:                                 ; preds = %.preheader1584.loopexit.i, %bb.ky, %bb.kx, %bb.kv, %bb.kt, %bb.kr, %bb.kp, %bb.ko, %bb.km, %bb.kk, %bb.ki, %bb.kf, %bb.ke, %bb.kc, %bb.ka, %bb.jy, %bb.jv, %bb.ju, %bb.js, %bb.jq, %bb.jo
  %.0.lcssa.i = phi i32 [ %i.ape, %.preheader1584.loopexit.i ], [ 0, %bb.jq ], [ 0, %bb.ju ], [ 0, %bb.jv ], [ 0, %bb.js ], [ 0, %bb.jo ], [ 0, %bb.kk ], [ 0, %bb.ko ], [ 0, %bb.kp ], [ 0, %bb.km ], [ 0, %bb.ki ], [ 0, %bb.kt ], [ 0, %bb.kx ], [ 0, %bb.ky ], [ 0, %bb.kv ], [ 0, %bb.kr ], [ 0, %bb.jy ], [ 0, %bb.kc ], [ 0, %bb.kf ], [ 0, %bb.ke ], [ 0, %bb.ka ] ; 5 uses
  %i.apf = or disjoint i32 %.0.lcssa.i, 7
  %i.apg = icmp slt i32 %i.apf, %i.rk
  br i1 %i.apg, label %_ZN4ncnn3MatD2Ev.exit1329.lr.ph.i, label %.preheader1575.i

_ZN4ncnn3MatD2Ev.exit1329.lr.ph.i:                ; preds = %.preheader1584.i
  %i.aph = mul i32 %i.afa, %i.cj                  ; 10 uses
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.apj = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.apk = insertelement <8 x i32> poison, i32 %i.afa, i64 0
  %i.apl = shufflevector <8 x i32> %i.apk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.apm = mul <8 x i32> %i.apl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.apn = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.apo = shufflevector <16 x i32> %i.apn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.app = mul <16 x i32> %i.apo, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 8 uses
  %i.apq = icmp sgt i32 %i.cj, 15
  %i.apr = icmp sgt i32 %i.afa, 0                 ; 4 uses
  %i.aps = shl i32 %i.afa, 4
  %i.apt = sext i32 %i.aps to i64                 ; 9 uses
  %i.apu = shl i32 %i.afa, 3
  %i.apv = sext i32 %i.apu to i64                 ; 9 uses
  %i.apw = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %i.apx = shufflevector <8 x i32> %i.apw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.apy = mul <8 x i32> %i.apm, %i.apx           ; 31 uses
  %i.apz = sext i32 %i.afa to i64                 ; 14 uses
  %i.aqa = shl i32 %i.afa, 2
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = shl i32 %i.afa, 1
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = icmp slt i32 %i.afa, 1
  %i.aqf = add i32 %i.cj, -16                     ; 2 uses
  %i.aqg = lshr i32 %i.aqf, 2
  %i.aqh = and i32 %i.aqg, 1073741820
  %narrow2440.i = add nuw nsw i32 %i.aqh, 4
  %i.aqi = zext nneg i32 %narrow2440.i to i64
  %i.aqj = mul nsw i64 %i.apt, %i.aqi
  %i.aqk = mul i32 %i.aph, %.0.lcssa.i
  %i.aql = shl i32 %i.aph, 3
  %i.aqm = and i32 %i.aqf, -16
  %i.aqn = add nuw nsw i32 %i.aqm, 16             ; 4 uses
  %i.aqo = add i32 %i.cj, -8
  %i.aqp = zext nneg i32 %.0.lcssa.i to i64
  %i.aqq = add i32 %.0.lcssa.i, 7
  %i.aqr = sext i32 %i.rk to i64
  %i.aqs = or disjoint i32 %i.aqn, 7
  %i.aqt = icmp slt i32 %i.aqs, %i.cj
  %wide.trip.count2235.i = zext i32 %i.afa to i64 ; 9 uses
  %invariant.op.i = add nsw i64 %i.aqr, -7
  %i.aqu = add nsw i64 %wide.trip.count2235.i, -1 ; 3 uses
  %xtraiter1068 = and i64 %wide.trip.count2235.i, 1
  %i.aqv = icmp eq i64 %i.aqu, 0
  %unroll_iter1073 = and i64 %wide.trip.count2235.i, 2147483646
  %lcmp.mod1070.not = icmp eq i64 %xtraiter1068, 0
  %lcmp.mod1072 = trunc i32 %i.afa to i1
  %xtraiter1076 = and i64 %wide.trip.count2235.i, 3 ; 3 uses
  %i.aqw = icmp ult i64 %i.aqu, 3
  %unroll_iter1081 = and i64 %wide.trip.count2235.i, 2147483644
  %lcmp.mod1078.not = icmp eq i64 %xtraiter1076, 0
  %lcmp.mod1080 = icmp ne i64 %xtraiter1076, 0
  %xtraiter1084 = and i64 %wide.trip.count2235.i, 7 ; 3 uses
  %i.aqx = icmp ult i64 %i.aqu, 7
  %unroll_iter1089 = and i64 %wide.trip.count2235.i, 2147483640
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1084, 0
  %lcmp.mod1088 = icmp ne i64 %xtraiter1084, 0
  br label %_ZN4ncnn3MatD2Ev.exit1329.i

_ZN4ncnn3MatD2Ev.exit1330.i:                      ; preds = %._crit_edge1671.split.i, %_ZN4ncnn3MatD2Ev.exit1330.lr.ph.i
  %indvars.iv2203.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1330.lr.ph.i ], [ %indvars.iv.next2204.i, %._crit_edge1671.split.i ] ; 3 uses
  %indvars.iv.i227 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1330.lr.ph.i ], [ %indvars.iv.next.i228, %._crit_edge1671.split.i ] ; 2 uses
  %i.aqy = sext i32 %indvars.iv.i227 to i64
  %i.aqz = shl nsw i64 %i.aqy, 2
  %i.ara = load ptr, ptr %i.aey, align 8, !tbaa !18 ; 17 uses
  %i.arb = trunc i64 %indvars.iv2203.i to i32     ; 16 uses
  %i.arc = mul i32 %i.anu, %i.arb
  %i.ard = sext i32 %i.arc to i64
  %i.are = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.ard ; 2 uses
  %i.arf = lshr exact i64 %indvars.iv2203.i, 4
  %i.arg = load ptr, ptr %i.aez, align 8, !tbaa !18, !noalias !97
  %i.arh = load i64, ptr %i.anv, align 8, !tbaa !20, !noalias !97
  %i.ari = mul i64 %i.arh, %i.arf
  %i.arj = load i64, ptr %i.anw, align 8, !tbaa !65, !noalias !97
  %i.ark = mul i64 %i.ari, %i.arj
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.ark ; 4 uses
  br i1 %i.afc, label %.preheader1589.lr.ph.i, label %._crit_edge1613.i

.preheader1589.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1330.i
  br i1 %i.aoa, label %.preheader1589.us.preheader.i, label %._crit_edge1613.thread.i

.preheader1589.us.preheader.i:                    ; preds = %.preheader1589.lr.ph.i
  %i.arm = or disjoint i32 %i.arb, 1
  %i.arn = mul i32 %i.arm, %i.anu
  %i.aro = sext i32 %i.arn to i64
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.aro
  %i.arq = or disjoint i32 %i.arb, 2
  %i.arr = mul i32 %i.arq, %i.anu
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.ars
  %i.aru = or disjoint i32 %i.arb, 3
  %i.arv = mul i32 %i.aru, %i.anu
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.arw
  %i.ary = or disjoint i32 %i.arb, 4
  %i.arz = mul i32 %i.ary, %i.anu
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asa
  %i.asc = or disjoint i32 %i.arb, 5
  %i.asd = mul i32 %i.asc, %i.anu
  %i.ase = sext i32 %i.asd to i64
  %i.asf = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.ase
  %i.asg = or disjoint i32 %i.arb, 6
  %i.ash = mul i32 %i.asg, %i.anu
  %i.asi = sext i32 %i.ash to i64
  %i.asj = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asi
  %i.ask = or disjoint i32 %i.arb, 7
  %i.asl = mul i32 %i.ask, %i.anu
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asm
  %i.aso = or disjoint i32 %i.arb, 8
  %i.asp = mul i32 %i.aso, %i.anu
  %i.asq = sext i32 %i.asp to i64
  %i.asr = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asq
  %i.ass = or disjoint i32 %i.arb, 9
  %i.ast = mul i32 %i.ass, %i.anu
  %i.asu = sext i32 %i.ast to i64
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asu
  %i.asw = or disjoint i32 %i.arb, 10
  %i.asx = mul i32 %i.asw, %i.anu
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.asy
  %i.ata = or disjoint i32 %i.arb, 11
  %i.atb = mul i32 %i.ata, %i.anu
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.atc
  %i.ate = or disjoint i32 %i.arb, 12
  %i.atf = mul i32 %i.ate, %i.anu
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.atg
  %i.ati = or disjoint i32 %i.arb, 13
  %i.atj = mul i32 %i.ati, %i.anu
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.atk
  %i.atm = or disjoint i32 %i.arb, 14
  %i.atn = mul i32 %i.atm, %i.anu
  %i.ato = sext i32 %i.atn to i64
  %i.atp = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.ato
  %i.atq = or disjoint i32 %i.arb, 15
  %i.atr = mul i32 %i.atq, %i.anu
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.ats
  br label %.preheader1589.us.i

.preheader1589.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1589.us.preheader.i
  %.011231612.us.i = phi ptr [ %i.ayc, %._crit_edge.us.i ], [ %i.are, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011271611.us.i = phi ptr [ %i.ayd, %._crit_edge.us.i ], [ %i.arp, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011291610.us.i = phi ptr [ %i.aye, %._crit_edge.us.i ], [ %i.art, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011301609.us.i = phi ptr [ %i.ayf, %._crit_edge.us.i ], [ %i.arx, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011321608.us.i = phi ptr [ %i.ayg, %._crit_edge.us.i ], [ %i.asb, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011331607.us.i = phi ptr [ %i.ayh, %._crit_edge.us.i ], [ %i.asf, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011491606.us.i = phi ptr [ %i.ayi, %._crit_edge.us.i ], [ %i.asj, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011501605.us.i = phi ptr [ %i.ayj, %._crit_edge.us.i ], [ %i.asn, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011561604.us.i = phi ptr [ %i.ayk, %._crit_edge.us.i ], [ %i.asr, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011571603.us.i = phi ptr [ %i.ayl, %._crit_edge.us.i ], [ %i.asv, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011581602.us.i = phi ptr [ %i.aym, %._crit_edge.us.i ], [ %i.asz, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011591601.us.i = phi ptr [ %i.ayn, %._crit_edge.us.i ], [ %i.atd, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011611600.us.i = phi ptr [ %i.ayo, %._crit_edge.us.i ], [ %i.ath, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011621599.us.i = phi ptr [ %i.ayp, %._crit_edge.us.i ], [ %i.atl, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011631598.us.i = phi ptr [ %i.ayq, %._crit_edge.us.i ], [ %i.atp, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011641597.us.i = phi ptr [ %i.ayr, %._crit_edge.us.i ], [ %i.att, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011661596.us.i = phi ptr [ %i.ayb, %._crit_edge.us.i ], [ %i.arl, %.preheader1589.us.preheader.i ]
  %.011771595.us.i = phi i32 [ %i.ays, %._crit_edge.us.i ], [ 0, %.preheader1589.us.preheader.i ]
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kz, %.preheader1589.us.i
  %indvars.iv2173.i = phi i64 [ 0, %.preheader1589.us.i ], [ %indvars.iv.next2174.i, %bb.kz ] ; 17 uses
  %.111671594.us.i = phi ptr [ %.011661596.us.i, %.preheader1589.us.i ], [ %i.ayb, %bb.kz ] ; 17 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %.011231612.us.i, i64 %indvars.iv2173.i
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %.011271611.us.i, i64 %indvars.iv2173.i
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %.011291610.us.i, i64 %indvars.iv2173.i
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %.011301609.us.i, i64 %indvars.iv2173.i
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.011321608.us.i, i64 %indvars.iv2173.i
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %.011331607.us.i, i64 %indvars.iv2173.i
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.011491606.us.i, i64 %indvars.iv2173.i
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.011501605.us.i, i64 %indvars.iv2173.i
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %.011561604.us.i, i64 %indvars.iv2173.i
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %.011571603.us.i, i64 %indvars.iv2173.i
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %.011581602.us.i, i64 %indvars.iv2173.i
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.011591601.us.i, i64 %indvars.iv2173.i
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %.011611600.us.i, i64 %indvars.iv2173.i
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %.011621599.us.i, i64 %indvars.iv2173.i
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %.011631598.us.i, i64 %indvars.iv2173.i
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %.011641597.us.i, i64 %indvars.iv2173.i
  %i.auk = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.atu, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aul = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.atv, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aum = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.atw, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aun = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.atx, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auo = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aty, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aup = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.atz, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auq = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aua, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aur = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aub, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aus = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.auc, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aut = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aud, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auu = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aue, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auv = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.auf, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auw = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aug, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aux = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.auh, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auy = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aui, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.auz = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.auj, <16 x i32> %i.anz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ava = shufflevector <16 x float> %i.auk, <16 x float> %i.aul, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avb = shufflevector <16 x float> %i.auk, <16 x float> %i.aul, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avc = shufflevector <16 x float> %i.aum, <16 x float> %i.aun, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avd = shufflevector <16 x float> %i.aum, <16 x float> %i.aun, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ave = shufflevector <16 x float> %i.auo, <16 x float> %i.aup, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avf = shufflevector <16 x float> %i.auo, <16 x float> %i.aup, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avg = shufflevector <16 x float> %i.auq, <16 x float> %i.aur, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avh = shufflevector <16 x float> %i.auq, <16 x float> %i.aur, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avi = shufflevector <16 x float> %i.aus, <16 x float> %i.aut, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avj = shufflevector <16 x float> %i.aus, <16 x float> %i.aut, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avk = shufflevector <16 x float> %i.auu, <16 x float> %i.auv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avl = shufflevector <16 x float> %i.auu, <16 x float> %i.auv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avm = shufflevector <16 x float> %i.auw, <16 x float> %i.aux, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avn = shufflevector <16 x float> %i.auw, <16 x float> %i.aux, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avo = shufflevector <16 x float> %i.auy, <16 x float> %i.auz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.avp = shufflevector <16 x float> %i.auy, <16 x float> %i.auz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.avq = shufflevector <16 x float> %i.ava, <16 x float> %i.avc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.avr = shufflevector <16 x float> %i.ava, <16 x float> %i.avc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.avs = shufflevector <16 x float> %i.avb, <16 x float> %i.avd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.avt = shufflevector <16 x float> %i.avb, <16 x float> %i.avd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.avu = shufflevector <16 x float> %i.ave, <16 x float> %i.avg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.avv = shufflevector <16 x float> %i.ave, <16 x float> %i.avg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.avw = shufflevector <16 x float> %i.avf, <16 x float> %i.avh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.avx = shufflevector <16 x float> %i.avf, <16 x float> %i.avh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.avy = shufflevector <16 x float> %i.avi, <16 x float> %i.avk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.avz = shufflevector <16 x float> %i.avi, <16 x float> %i.avk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.awa = shufflevector <16 x float> %i.avj, <16 x float> %i.avl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.awb = shufflevector <16 x float> %i.avj, <16 x float> %i.avl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.awc = shufflevector <16 x float> %i.avm, <16 x float> %i.avo, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.awd = shufflevector <16 x float> %i.avm, <16 x float> %i.avo, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.awe = shufflevector <16 x float> %i.avn, <16 x float> %i.avp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.awf = shufflevector <16 x float> %i.avn, <16 x float> %i.avp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.awg = shufflevector <16 x float> %i.avq, <16 x float> %i.avu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.bcs = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bcq, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bcs, ptr %i.bcr, align 64, !tbaa !100
  %i.bct = getelementptr inbounds nuw i8, ptr %.911751655.us.i, i64 384
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.311261658.us.i, i64 %indvars.iv2192.i
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 12 ; 2 uses
  %i.bcw = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bcv, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bcw, ptr %i.bct, align 64, !tbaa !100
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.aog
  %i.bcy = getelementptr inbounds nuw i8, ptr %.911751655.us.i, i64 448
  %i.bcz = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bcx, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bcz, ptr %i.bcy, align 64, !tbaa !100
  %i.bda = getelementptr inbounds nuw i8, ptr %.911751655.us.i, i64 512 ; 3 uses
  %indvars.iv.next2193.i.3 = add nuw nsw i64 %indvars.iv2192.i, 4 ; 2 uses
  %niter1058.next.3 = add i64 %niter1058, 4       ; 2 uses
  %niter1058.ncmp.3 = icmp eq i64 %niter1058.next.3, %unroll_iter1057
  br i1 %niter1058.ncmp.3, label %._crit_edge.us1662.i.unr-lcssa, label %.preheader1586.us.i.new, !llvm.loop !107

._crit_edge.us1662.i.unr-lcssa:                   ; preds = %.preheader1586.us.i.new
  br i1 %lcmp.mod1054.not, label %._crit_edge.us1662.i, label %.epil.preheader1052

.epil.preheader1052:                              ; preds = %._crit_edge.us1662.i.unr-lcssa, %.preheader1586.us.i
  %indvars.iv2192.i.epil.init = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2193.i.3, %._crit_edge.us1662.i.unr-lcssa ]
  %.911751655.us.i.epil.init = phi ptr [ %.811741657.us.i, %.preheader1586.us.i ], [ %i.bda, %._crit_edge.us1662.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1056)
  br label %bb.lb

bb.lb:                                            ; preds = %bb.lb, %.epil.preheader1052
  %indvars.iv2192.i.epil = phi i64 [ %indvars.iv2192.i.epil.init, %.epil.preheader1052 ], [ %indvars.iv.next2193.i.epil, %bb.lb ] ; 2 uses
  %.911751655.us.i.epil = phi ptr [ %.911751655.us.i.epil.init, %.epil.preheader1052 ], [ %i.bdg, %bb.lb ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader1052 ], [ %epil.iter.next, %bb.lb ]
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %.311261658.us.i, i64 %indvars.iv2192.i.epil ; 2 uses
  %i.bdc = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bdb, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bdc, ptr %.911751655.us.i.epil, align 64, !tbaa !100
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bdb, i64 %i.aog
  %i.bde = getelementptr inbounds nuw i8, ptr %.911751655.us.i.epil, i64 64
  %i.bdf = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bdd, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bdf, ptr %i.bde, align 64, !tbaa !100
  %i.bdg = getelementptr inbounds nuw i8, ptr %.911751655.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2193.i.epil = add nuw nsw i64 %indvars.iv2192.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1053
  br i1 %epil.iter.cmp.not, label %._crit_edge.us1662.i, label %bb.lb, !llvm.loop !108

._crit_edge.us1662.i:                             ; preds = %bb.lb, %._crit_edge.us1662.i.unr-lcssa
  %.lcssa1046 = phi ptr [ %i.bda, %._crit_edge.us1662.i.unr-lcssa ], [ %i.bdg, %bb.lb ] ; 2 uses
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.311261658.us.i, i64 %i.aom ; 2 uses
  %i.bdi = add nuw nsw i32 %.311801656.us.i, 2    ; 3 uses
  %i.bdj = or disjoint i32 %i.bdi, 1
  %i.bdk = icmp slt i32 %i.bdj, %i.cj
  br i1 %i.bdk, label %.preheader1586.us.i, label %.preheader1590.i, !llvm.loop !109

.preheader1590.i:                                 ; preds = %._crit_edge.us1662.i, %.preheader1591.i
  %.31180.lcssa.i = phi i32 [ %.21179.lcssa.i, %.preheader1591.i ], [ %i.bdi, %._crit_edge.us1662.i ] ; 2 uses
  %.81174.lcssa.i = phi ptr [ %.51171.lcssa.i, %.preheader1591.i ], [ %.lcssa1046, %._crit_edge.us1662.i ]
  %.31126.lcssa.i = phi ptr [ %.21125.lcssa.i, %.preheader1591.i ], [ %i.bdh, %._crit_edge.us1662.i ] ; 9 uses
  %i.bdl = icmp sge i32 %.31180.lcssa.i, %i.cj
  %brmerge.i = or i1 %i.aon, %i.bdl
  br i1 %brmerge.i, label %._crit_edge1671.split.i, label %.preheader1585.i

.preheader1585.i:                                 ; preds = %.preheader1590.i, %._crit_edge.i
  %.111670.i = phi ptr [ %.lcssa1049, %._crit_edge.i ], [ %.81174.lcssa.i, %.preheader1590.i ] ; 2 uses
  %.411811669.i = phi i32 [ %i.bdp, %._crit_edge.i ], [ %.31180.lcssa.i, %.preheader1590.i ]
  br i1 %i.apd, label %.epil.preheader1059, label %.preheader1585.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1585.i.new
  br i1 %lcmp.mod1062.not, label %._crit_edge.i, label %.epil.preheader1059

.epil.preheader1059:                              ; preds = %._crit_edge.i.unr-lcssa, %.preheader1585.i
  %indvars.iv2197.i.epil.init = phi i64 [ 0, %.preheader1585.i ], [ %indvars.iv.next2198.i.7, %._crit_edge.i.unr-lcssa ]
  %.121668.i.epil.init = phi ptr [ %.111670.i, %.preheader1585.i ], [ %i.beu, %._crit_edge.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1064)
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.epil.preheader1059
  %indvars.iv2197.i.epil = phi i64 [ %indvars.iv2197.i.epil.init, %.epil.preheader1059 ], [ %indvars.iv.next2198.i.epil, %bb.lc ] ; 2 uses
  %.121668.i.epil = phi ptr [ %.121668.i.epil.init, %.epil.preheader1059 ], [ %i.bdo, %bb.lc ] ; 2 uses
  %epil.iter1061 = phi i64 [ 0, %.epil.preheader1059 ], [ %epil.iter1061.next, %bb.lc ]
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i.epil
  %i.bdn = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bdm, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bdn, ptr %.121668.i.epil, align 64, !tbaa !100
  %i.bdo = getelementptr inbounds nuw i8, ptr %.121668.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2198.i.epil = add nuw nsw i64 %indvars.iv2197.i.epil, 1
  %epil.iter1061.next = add i64 %epil.iter1061, 1 ; 2 uses
  %epil.iter1061.cmp.not = icmp eq i64 %epil.iter1061.next, %xtraiter1060
  br i1 %epil.iter1061.cmp.not, label %._crit_edge.i, label %bb.lc, !llvm.loop !110

._crit_edge.i:                                    ; preds = %bb.lc, %._crit_edge.i.unr-lcssa
  %.lcssa1049 = phi ptr [ %i.beu, %._crit_edge.i.unr-lcssa ], [ %i.bdo, %bb.lc ]
  %i.bdp = add nuw nsw i32 %.411811669.i, 1       ; 2 uses
  %exitcond2202.not.i = icmp eq i32 %i.bdp, %i.cj
  br i1 %exitcond2202.not.i, label %._crit_edge1671.split.i, label %.preheader1585.i, !llvm.loop !111

.preheader1585.i.new:                             ; preds = %.preheader1585.i, %.preheader1585.i.new
  %indvars.iv2197.i = phi i64 [ %indvars.iv.next2198.i.7, %.preheader1585.i.new ], [ 0, %.preheader1585.i ] ; 9 uses
  %.121668.i = phi ptr [ %i.beu, %.preheader1585.i.new ], [ %.111670.i, %.preheader1585.i ] ; 9 uses
  %niter1066 = phi i64 [ %niter1066.next.7, %.preheader1585.i.new ], [ 0, %.preheader1585.i ]
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.bdr = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bdq, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bdr, ptr %.121668.i, align 64, !tbaa !100
  %i.bds = getelementptr inbounds nuw i8, ptr %.121668.i, i64 64
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 4
  %i.bdv = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bdu, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bdv, ptr %i.bds, align 64, !tbaa !100
  %i.bdw = getelementptr inbounds nuw i8, ptr %.121668.i, i64 128
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8
  %i.bdz = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bdy, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bdz, ptr %i.bdw, align 64, !tbaa !100
  %i.bea = getelementptr inbounds nuw i8, ptr %.121668.i, i64 192
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 12
  %i.bed = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bec, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bed, ptr %i.bea, align 64, !tbaa !100
  %i.bee = getelementptr inbounds nuw i8, ptr %.121668.i, i64 256
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 16
  %i.beh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.beg, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.beh, ptr %i.bee, align 64, !tbaa !100
  %i.bei = getelementptr inbounds nuw i8, ptr %.121668.i, i64 320
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 20
  %i.bel = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bek, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bel, ptr %i.bei, align 64, !tbaa !100
  %i.bem = getelementptr inbounds nuw i8, ptr %.121668.i, i64 384
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 24
  %i.bep = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.beo, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bep, ptr %i.bem, align 64, !tbaa !100
  %i.beq = getelementptr inbounds nuw i8, ptr %.121668.i, i64 448
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.31126.lcssa.i, i64 %indvars.iv2197.i
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 28
  %i.bet = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bes, <16 x i32> %i.aof, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bet, ptr %i.beq, align 64, !tbaa !100
  %i.beu = getelementptr inbounds nuw i8, ptr %.121668.i, i64 512 ; 3 uses
  %indvars.iv.next2198.i.7 = add nuw nsw i64 %indvars.iv2197.i, 8 ; 2 uses
  %niter1066.next.7 = add i64 %niter1066, 8       ; 2 uses
  %niter1066.ncmp.7 = icmp eq i64 %niter1066.next.7, %unroll_iter1065
  br i1 %niter1066.ncmp.7, label %._crit_edge.i.unr-lcssa, label %.preheader1585.i.new, !llvm.loop !112

._crit_edge1671.split.i:                          ; preds = %._crit_edge.i, %.preheader1590.i, %.preheader1586.lr.ph.i, %.preheader1587.lr.ph.i
  %indvars.iv.next2204.i = add nuw nsw i64 %indvars.iv2203.i, 16 ; 3 uses
  %i.bev = or disjoint i64 %indvars.iv.next2204.i, 15
  %i.bew = icmp samesign ult i64 %i.bev, %i.aox
  %indvars.iv.next.i228 = add i32 %indvars.iv.i227, %i.aot
  br i1 %i.bew, label %_ZN4ncnn3MatD2Ev.exit1330.i, label %.preheader1584.loopexit.i, !llvm.loop !113

.preheader1575.loopexit.i:                        ; preds = %._crit_edge1767.split.i
  %i.bex = trunc nuw nsw i64 %indvars.iv.next2267.i to i32
  br label %.preheader1575.i

.preheader1575.i:                                 ; preds = %.preheader1575.loopexit.i, %.preheader1584.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1584.i ], [ %i.bex, %.preheader1575.loopexit.i ] ; 4 uses
  %i.bey = or disjoint i32 %.1.lcssa.i, 3         ; 2 uses
  %i.bez = icmp slt i32 %i.bey, %i.rk
  br i1 %i.bez, label %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i, label %.preheader1566.i

_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i:                ; preds = %.preheader1575.i
  %i.bfa = insertelement <2 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.bfb = shufflevector <2 x i32> %i.bfa, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bfc = or disjoint <4 x i32> %i.bfb, <i32 0, i32 0, i32 0, i32 3>
  %i.bfd = mul i32 %i.afa, %i.cj                  ; 6 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bff = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bfg = insertelement <4 x i32> poison, i32 %i.afa, i64 0
  %i.bfh = shufflevector <4 x i32> %i.bfg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfi = mul <4 x i32> %i.bfh, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.bfj = insertelement <8 x i32> poison, i32 %i.afa, i64 0
  %i.bfk = shufflevector <8 x i32> %i.bfj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bfl = mul <8 x i32> %i.bfk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bfm = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.bfn = shufflevector <16 x i32> %i.bfm, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bfo = mul <16 x i32> %i.bfn, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bfp = icmp sgt i32 %i.cj, 15
  %i.bfq = icmp sgt i32 %i.afa, 0                 ; 4 uses
  %i.bfr = shl i32 %i.afa, 4
  %i.bfs = sext i32 %i.bfr to i64                 ; 5 uses
  %i.bft = shl i32 %i.afa, 3
  %i.bfu = sext i32 %i.bft to i64                 ; 5 uses
  %i.bfv = shl i32 %i.afa, 2
  %i.bfw = sext i32 %i.bfv to i64                 ; 4 uses
  %i.bfx = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %i.bfy = shufflevector <4 x i32> %i.bfx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfz = mul <4 x i32> %i.bfi, %i.bfy           ; 19 uses
  %i.bga = sext i32 %i.afa to i64                 ; 5 uses
  %i.bgb = shl i32 %i.afa, 1
  %i.bgc = sext i32 %i.bgb to i64
  %i.bgd = icmp slt i32 %i.afa, 1
  %i.bge = add i32 %i.cj, -16                     ; 2 uses
  %i.bgf = lshr i32 %i.bge, 2
  %i.bgg = and i32 %i.bgf, 1073741820
  %narrow2442.i = add nuw nsw i32 %i.bgg, 4
  %i.bgh = zext nneg i32 %narrow2442.i to i64
  %i.bgi = mul nsw i64 %i.bfs, %i.bgh
  %i.bgj = shl i32 %i.bfd, 2
  %i.bgk = add nuw <4 x i32> %i.bfc, <i32 0, i32 1, i32 2, i32 0>
  %i.bgl = insertelement <4 x i32> poison, i32 %i.bfd, i64 0
  %i.bgm = shufflevector <4 x i32> %i.bgl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgn = mul <4 x i32> %i.bgm, %i.bgk
  %i.bgo = and i32 %i.bge, -16
  %i.bgp = add nuw nsw i32 %i.bgo, 16             ; 4 uses
  %i.bgq = add i32 %i.cj, -8
  %i.bgr = zext nneg i32 %.1.lcssa.i to i64
  %i.bgs = sext i32 %i.rk to i64
  %i.bgt = or disjoint i32 %i.bgp, 7
  %i.bgu = icmp slt i32 %i.bgt, %i.cj
  %wide.trip.count2287.i = zext i32 %i.afa to i64 ; 8 uses
  %i.bgv = insertelement <4 x i32> poison, i32 %i.bgj, i64 0
  %i.bgw = shufflevector <4 x i32> %i.bgv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgx = add nsw i64 %wide.trip.count2287.i, -1 ; 2 uses
  %xtraiter1092 = and i64 %wide.trip.count2287.i, 3 ; 3 uses
  %i.bgy = icmp ult i64 %i.bgx, 3
  %unroll_iter1097 = and i64 %wide.trip.count2287.i, 2147483644
  %lcmp.mod1094.not = icmp eq i64 %xtraiter1092, 0
  %lcmp.mod1096 = icmp ne i64 %xtraiter1092, 0
  %xtraiter1100 = and i64 %wide.trip.count2287.i, 7 ; 3 uses
  %i.bgz = icmp ult i64 %i.bgx, 7
  %unroll_iter1105 = and i64 %wide.trip.count2287.i, 2147483640
  %lcmp.mod1102.not = icmp eq i64 %xtraiter1100, 0
  %lcmp.mod1104 = icmp ne i64 %xtraiter1100, 0
  br label %_ZN4ncnn3MatD2Ev.exit1328.i

_ZN4ncnn3MatD2Ev.exit1329.i:                      ; preds = %._crit_edge1767.split.i, %_ZN4ncnn3MatD2Ev.exit1329.lr.ph.i
  %indvars.iv2266.i = phi i64 [ %i.aqp, %_ZN4ncnn3MatD2Ev.exit1329.lr.ph.i ], [ %indvars.iv.next2267.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2264.i = phi i32 [ %i.aqq, %_ZN4ncnn3MatD2Ev.exit1329.lr.ph.i ], [ %indvars.iv.next2265.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2207.i = phi i32 [ %i.aqk, %_ZN4ncnn3MatD2Ev.exit1329.lr.ph.i ], [ %indvars.iv.next2208.i, %._crit_edge1767.split.i ] ; 2 uses
  %i.bha = sext i32 %indvars.iv2207.i to i64
  %i.bhb = shl nsw i64 %i.bha, 2
  %i.bhc = load ptr, ptr %i.aey, align 8, !tbaa !18 ; 9 uses
  %i.bhd = trunc nuw i64 %indvars.iv2266.i to i32 ; 9 uses
  %i.bhe = mul i32 %i.aph, %i.bhd
  %i.bhf = sext i32 %i.bhe to i64
  %i.bhg = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bhf ; 2 uses
  %i.bhh = add i32 %i.bhd, 1
  %i.bhi = mul i32 %i.bhh, %i.aph
  %i.bhj = sext i32 %i.bhi to i64
  %i.bhk = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bhj ; 2 uses
  %i.bhl = add i32 %i.bhd, 2
  %i.bhm = mul i32 %i.bhl, %i.aph
  %i.bhn = sext i32 %i.bhm to i64
  %i.bho = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bhn ; 2 uses
  %i.bhp = add i32 %i.bhd, 3
  %i.bhq = mul i32 %i.bhp, %i.aph
  %i.bhr = sext i32 %i.bhq to i64
  %i.bhs = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bhr ; 2 uses
  %i.bht = add i32 %i.bhd, 4
  %i.bhu = mul i32 %i.bht, %i.aph
  %i.bhv = sext i32 %i.bhu to i64
  %i.bhw = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bhv ; 2 uses
  %i.bhx = add i32 %i.bhd, 5
  %i.bhy = mul i32 %i.bhx, %i.aph
  %i.bhz = sext i32 %i.bhy to i64
  %i.bia = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bhz ; 2 uses
  %i.bib = add i32 %i.bhd, 6
  %i.bic = mul i32 %i.bib, %i.aph
  %i.bid = sext i32 %i.bic to i64
  %i.bie = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.bid ; 2 uses
  %i.bif = mul i32 %indvars.iv2264.i, %i.aph
  %i.big = sext i32 %i.bif to i64
  %i.bih = getelementptr inbounds [4 x i8], ptr %i.bhc, i64 %i.big ; 2 uses
  %i.bii = lshr i32 %i.bhd, 4
  %i.bij = lshr i32 %i.bhd, 3
  %i.bik = and i32 %i.bij, 1
  %i.bil = add nuw nsw i32 %i.bik, %i.bii
  %i.bim = load ptr, ptr %i.aez, align 8, !tbaa !18, !noalias !114
  %i.bin = load i64, ptr %i.api, align 8, !tbaa !20, !noalias !114
  %i.bio = zext nneg i32 %i.bil to i64
  %i.bip = mul i64 %i.bin, %i.bio
  %i.biq = load i64, ptr %i.apj, align 8, !tbaa !65, !noalias !114
  %i.bir = mul i64 %i.bip, %i.biq
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.bir ; 4 uses
  br i1 %i.apq, label %.preheader1580.lr.ph.i, label %.preheader1583.i

.preheader1580.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1329.i
  br i1 %i.apr, label %.preheader1580.us.i, label %.preheader1583.thread.i

.preheader1580.us.i:                              ; preds = %.preheader1580.lr.ph.i, %._crit_edge1676.us.i
  %.012221687.us.i = phi ptr [ %i.bkx, %._crit_edge1676.us.i ], [ %i.bhg, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012261686.us.i = phi ptr [ %i.bky, %._crit_edge1676.us.i ], [ %i.bhk, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012281685.us.i = phi ptr [ %i.bkz, %._crit_edge1676.us.i ], [ %i.bho, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012301684.us.i = phi ptr [ %i.bla, %._crit_edge1676.us.i ], [ %i.bhs, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012331683.us.i = phi ptr [ %i.blb, %._crit_edge1676.us.i ], [ %i.bhw, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012351682.us.i = phi ptr [ %i.blc, %._crit_edge1676.us.i ], [ %i.bia, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012371681.us.i = phi ptr [ %i.bld, %._crit_edge1676.us.i ], [ %i.bie, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012391680.us.i = phi ptr [ %i.ble, %._crit_edge1676.us.i ], [ %i.bih, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012421679.us.i = phi ptr [ %i.bkw, %._crit_edge1676.us.i ], [ %i.bis, %.preheader1580.lr.ph.i ]
  %.012541678.us.i = phi i32 [ %i.blf, %._crit_edge1676.us.i ], [ 0, %.preheader1580.lr.ph.i ]
  br label %bb.ld

bb.ld:                                            ; preds = %bb.ld, %.preheader1580.us.i
  %indvars.iv2232.i = phi i64 [ 0, %.preheader1580.us.i ], [ %indvars.iv.next2233.i, %bb.ld ] ; 9 uses
  %.112431675.us.i = phi ptr [ %.012421679.us.i, %.preheader1580.us.i ], [ %i.bkw, %bb.ld ] ; 9 uses
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %.012221687.us.i, i64 %indvars.iv2232.i
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %.012261686.us.i, i64 %indvars.iv2232.i
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %.012281685.us.i, i64 %indvars.iv2232.i
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.012301684.us.i, i64 %indvars.iv2232.i
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %.012331683.us.i, i64 %indvars.iv2232.i
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %.012351682.us.i, i64 %indvars.iv2232.i
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %.012371681.us.i, i64 %indvars.iv2232.i
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.012391680.us.i, i64 %indvars.iv2232.i
  %i.bjb = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bit, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bjc = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.biu, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bjd = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.biv, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bje = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.biw, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bjf = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bix, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bjg = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.biy, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bjh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.biz, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bji = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bja, <16 x i32> %i.app, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bjj = shufflevector <16 x float> %i.bjb, <16 x float> %i.bjc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bjk = shufflevector <16 x float> %i.bjb, <16 x float> %i.bjc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bjl = shufflevector <16 x float> %i.bjd, <16 x float> %i.bje, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bjm = shufflevector <16 x float> %i.bjd, <16 x float> %i.bje, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bjn = shufflevector <16 x float> %i.bjf, <16 x float> %i.bjg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bjo = shufflevector <16 x float> %i.bjf, <16 x float> %i.bjg, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bjp = shufflevector <16 x float> %i.bjh, <16 x float> %i.bji, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bjq = shufflevector <16 x float> %i.bjh, <16 x float> %i.bji, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bjr = shufflevector <16 x float> %i.bjj, <16 x float> %i.bjl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bjs = shufflevector <16 x float> %i.bjj, <16 x float> %i.bjl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bjt = shufflevector <16 x float> %i.bjk, <16 x float> %i.bjm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bju = shufflevector <16 x float> %i.bjk, <16 x float> %i.bjm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bjv = shufflevector <16 x float> %i.bjn, <16 x float> %i.bjp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bjw = shufflevector <16 x float> %i.bjn, <16 x float> %i.bjp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bjx = shufflevector <16 x float> %i.bjo, <16 x float> %i.bjq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bjy = shufflevector <16 x float> %i.bjo, <16 x float> %i.bjq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bjz = shufflevector <16 x float> %i.bjr, <16 x float> %i.bjv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bka = shufflevector <16 x float> %i.bjs, <16 x float> %i.bjw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bkb = shufflevector <16 x float> %i.bjt, <16 x float> %i.bjx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bkc = shufflevector <16 x float> %i.bju, <16 x float> %i.bjy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bkd = shufflevector <16 x float> %i.bjr, <16 x float> %i.bjv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bke = shufflevector <16 x float> %i.bjs, <16 x float> %i.bjw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bkf = shufflevector <16 x float> %i.bjt, <16 x float> %i.bjx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bkg = shufflevector <16 x float> %i.bju, <16 x float> %i.bjy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bkh = shufflevector <16 x float> %i.bjz, <16 x float> %i.bka, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bki = shufflevector <16 x float> %i.bkb, <16 x float> %i.bkc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bkj = shufflevector <16 x float> %i.bkd, <16 x float> %i.bke, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bkk = shufflevector <16 x float> %i.bkf, <16 x float> %i.bkg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bkl = shufflevector <16 x float> %i.bjz, <16 x float> %i.bka, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bkm = shufflevector <16 x float> %i.bkb, <16 x float> %i.bkc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bkn = shufflevector <16 x float> %i.bkd, <16 x float> %i.bke, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bko = shufflevector <16 x float> %i.bkf, <16 x float> %i.bkg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.bkh, ptr %.112431675.us.i, align 1, !tbaa !100
  %i.bkp = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 64
  store <16 x float> %i.bki, ptr %i.bkp, align 1, !tbaa !100
  %i.bkq = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 128
  store <16 x float> %i.bkj, ptr %i.bkq, align 1, !tbaa !100
  %i.bkr = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 192
  store <16 x float> %i.bkk, ptr %i.bkr, align 1, !tbaa !100
  %i.bks = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 256
  store <16 x float> %i.bkl, ptr %i.bks, align 1, !tbaa !100
  %i.bkt = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 320
  store <16 x float> %i.bkm, ptr %i.bkt, align 1, !tbaa !100
  %i.bku = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 384
  store <16 x float> %i.bkn, ptr %i.bku, align 1, !tbaa !100
  %i.bkv = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 448
  store <16 x float> %i.bko, ptr %i.bkv, align 1, !tbaa !100
  %i.bkw = getelementptr inbounds nuw i8, ptr %.112431675.us.i, i64 512 ; 3 uses
  %indvars.iv.next2233.i = add nuw nsw i64 %indvars.iv2232.i, 1 ; 2 uses
  %exitcond2236.not.i = icmp eq i64 %indvars.iv.next2233.i, %wide.trip.count2235.i
  br i1 %exitcond2236.not.i, label %._crit_edge1676.us.i, label %bb.ld, !llvm.loop !117

._crit_edge1676.us.i:                             ; preds = %bb.ld
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %.012221687.us.i, i64 %i.apt ; 2 uses
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %.012261686.us.i, i64 %i.apt ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %.012281685.us.i, i64 %i.apt ; 2 uses
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %.012301684.us.i, i64 %i.apt ; 2 uses
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %.012331683.us.i, i64 %i.apt ; 2 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %.012351682.us.i, i64 %i.apt ; 2 uses
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %.012371681.us.i, i64 %i.apt ; 2 uses
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %.012391680.us.i, i64 %i.apt ; 2 uses
  %i.blf = add nuw nsw i32 %.012541678.us.i, 16   ; 2 uses
  %i.blg = or disjoint i32 %i.blf, 15
  %i.blh = icmp slt i32 %i.blg, %i.cj
  br i1 %i.blh, label %.preheader1580.us.i, label %.preheader1583.i, !llvm.loop !118

.preheader1583.i:                                 ; preds = %._crit_edge1676.us.i, %_ZN4ncnn3MatD2Ev.exit1329.i
  %.01254.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.aqn, %._crit_edge1676.us.i ] ; 4 uses
  %.01242.lcssa.i = phi ptr [ %i.bis, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkw, %._crit_edge1676.us.i ] ; 3 uses
  %.01239.lcssa.i = phi ptr [ %i.bih, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.ble, %._crit_edge1676.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.bie, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bld, %._crit_edge1676.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.bia, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.blc, %._crit_edge1676.us.i ]
  %.01233.lcssa.i = phi ptr [ %i.bhw, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.blb, %._crit_edge1676.us.i ]
  %.01230.lcssa.i = phi ptr [ %i.bhs, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bla, %._crit_edge1676.us.i ]
  %.01228.lcssa.i = phi ptr [ %i.bho, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkz, %._crit_edge1676.us.i ]
  %.01226.lcssa.i = phi ptr [ %i.bhk, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bky, %._crit_edge1676.us.i ]
  %.01222.lcssa.i = phi ptr [ %i.bhg, %_ZN4ncnn3MatD2Ev.exit1329.i ], [ %i.bkx, %._crit_edge1676.us.i ] ; 3 uses
  %i.bli = or disjoint i32 %.01254.lcssa.i, 7
  %i.blj = icmp slt i32 %i.bli, %i.cj
  br i1 %i.blj, label %.preheader1579.lr.ph.i, label %._crit_edge1722.i

.preheader1583.thread.i:                          ; preds = %.preheader1580.lr.ph.i
  %scevgep2206.i = getelementptr i8, ptr %i.bhc, i64 %i.aqj
  %scevgep2209.i = getelementptr i8, ptr %scevgep2206.i, i64 %i.bhb ; 2 uses
  br i1 %i.aqt, label %.preheader1579.preheader.i, label %._crit_edge1722.i

.preheader1579.lr.ph.i:                           ; preds = %.preheader1583.i
  br i1 %i.apr, label %.preheader1579.us.i, label %.preheader1579.preheader.i

.preheader1579.preheader.i:                       ; preds = %.preheader1579.lr.ph.i, %.preheader1583.thread.i
  %.01254.lcssa24862508.i = phi i32 [ %.01254.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.aqn, %.preheader1583.thread.i ] ; 2 uses
  %.01242.lcssa24872507.i = phi ptr [ %.01242.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.bis, %.preheader1583.thread.i ]
  %.01222.lcssa24952506.i = phi ptr [ %.01222.lcssa.i, %.preheader1579.lr.ph.i ], [ %scevgep2209.i, %.preheader1583.thread.i ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  store <8 x float> %i.bqd, ptr %i.bqc, align 32, !tbaa !100
  %i.bqe = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 128
  %i.bqf = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2253.i
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 8 ; 2 uses
  %i.bqh = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqg, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqh, ptr %i.bqe, align 32, !tbaa !100
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bqg, i64 %i.apz
  %i.bqj = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 160
  %i.bqk = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqi, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqk, ptr %i.bqj, align 32, !tbaa !100
  %i.bql = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 192
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2253.i
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 12 ; 2 uses
  %i.bqo = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqn, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqo, ptr %i.bql, align 32, !tbaa !100
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %i.apz
  %i.bqq = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 224
  %i.bqr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bqp, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqr, ptr %i.bqq, align 32, !tbaa !100
  %i.bqs = getelementptr inbounds nuw i8, ptr %.812501749.us.i, i64 256 ; 3 uses
  %indvars.iv.next2254.i.3 = add nuw nsw i64 %indvars.iv2253.i, 4 ; 2 uses
  %niter1082.next.3 = add i64 %niter1082, 4       ; 2 uses
  %niter1082.ncmp.3 = icmp eq i64 %niter1082.next.3, %unroll_iter1081
  br i1 %niter1082.ncmp.3, label %._crit_edge1750.us.i.unr-lcssa, label %.preheader1577.us.i.new, !llvm.loop !123

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod1078.not, label %._crit_edge1750.us.i, label %.epil.preheader1075

.epil.preheader1075:                              ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2253.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2254.i.3, %._crit_edge1750.us.i.unr-lcssa ]
  %.812501749.us.i.epil.init = phi ptr [ %.712491753.us.i, %.preheader1577.us.i ], [ %i.bqs, %._crit_edge1750.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1080)
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lf, %.epil.preheader1075
  %indvars.iv2253.i.epil = phi i64 [ %indvars.iv2253.i.epil.init, %.epil.preheader1075 ], [ %indvars.iv.next2254.i.epil, %bb.lf ] ; 2 uses
  %.812501749.us.i.epil = phi ptr [ %.812501749.us.i.epil.init, %.epil.preheader1075 ], [ %i.bqy, %bb.lf ] ; 3 uses
  %epil.iter1077 = phi i64 [ 0, %.epil.preheader1075 ], [ %epil.iter1077.next, %bb.lf ]
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %indvars.iv2253.i.epil ; 2 uses
  %i.bqu = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqt, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqu, ptr %.812501749.us.i.epil, align 32, !tbaa !100
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqt, i64 %i.apz
  %i.bqw = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 32
  %i.bqx = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bqv, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bqx, ptr %i.bqw, align 32, !tbaa !100
  %i.bqy = getelementptr inbounds nuw i8, ptr %.812501749.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2254.i.epil = add nuw nsw i64 %indvars.iv2253.i.epil, 1
  %epil.iter1077.next = add i64 %epil.iter1077, 1 ; 2 uses
  %epil.iter1077.cmp.not = icmp eq i64 %epil.iter1077.next, %xtraiter1076
  br i1 %epil.iter1077.cmp.not, label %._crit_edge1750.us.i, label %bb.lf, !llvm.loop !124

._crit_edge1750.us.i:                             ; preds = %bb.lf, %._crit_edge1750.us.i.unr-lcssa
  %.lcssa1034 = phi ptr [ %i.bqs, %._crit_edge1750.us.i.unr-lcssa ], [ %i.bqy, %bb.lf ] ; 2 uses
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.312251754.us.i, i64 %i.aqd ; 2 uses
  %i.bra = add nuw nsw i32 %.312571752.us.i, 2    ; 3 uses
  %i.brb = or disjoint i32 %i.bra, 1
  %i.brc = icmp slt i32 %i.brb, %i.cj
  br i1 %i.brc, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !125

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31257.lcssa.i = phi i32 [ %.21256.lcssa.i, %.preheader1582.i ], [ %i.bra, %._crit_edge1750.us.i ] ; 2 uses
  %.71249.lcssa.i = phi ptr [ %.41246.lcssa.i, %.preheader1582.i ], [ %.lcssa1034, %._crit_edge1750.us.i ]
  %.31225.lcssa.i = phi ptr [ %.21224.lcssa.i, %.preheader1582.i ], [ %i.bqz, %._crit_edge1750.us.i ] ; 9 uses
  %i.brd = icmp sge i32 %.31257.lcssa.i, %i.cj
  %brmerge2000.i = or i1 %i.aqe, %i.brd
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012521766.i = phi ptr [ %.lcssa1037, %._crit_edge1763.i ], [ %.71249.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412581765.i = phi i32 [ %i.brh, %._crit_edge1763.i ], [ %.31257.lcssa.i, %.preheader1581.i ]
  br i1 %i.aqx, label %.epil.preheader1083, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod1086.not, label %._crit_edge1763.i, label %.epil.preheader1083

.epil.preheader1083:                              ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2258.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2259.i.7, %._crit_edge1763.i.unr-lcssa ]
  %.1112531762.i.epil.init = phi ptr [ %.1012521766.i, %.preheader1576.i ], [ %i.bsm, %._crit_edge1763.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1088)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lg, %.epil.preheader1083
  %indvars.iv2258.i.epil = phi i64 [ %indvars.iv2258.i.epil.init, %.epil.preheader1083 ], [ %indvars.iv.next2259.i.epil, %bb.lg ] ; 2 uses
  %.1112531762.i.epil = phi ptr [ %.1112531762.i.epil.init, %.epil.preheader1083 ], [ %i.brg, %bb.lg ] ; 2 uses
  %epil.iter1085 = phi i64 [ 0, %.epil.preheader1083 ], [ %epil.iter1085.next, %bb.lg ]
  %i.bre = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i.epil
  %i.brf = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bre, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brf, ptr %.1112531762.i.epil, align 32, !tbaa !100
  %i.brg = getelementptr inbounds nuw i8, ptr %.1112531762.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2259.i.epil = add nuw nsw i64 %indvars.iv2258.i.epil, 1
  %epil.iter1085.next = add i64 %epil.iter1085, 1 ; 2 uses
  %epil.iter1085.cmp.not = icmp eq i64 %epil.iter1085.next, %xtraiter1084
  br i1 %epil.iter1085.cmp.not, label %._crit_edge1763.i, label %bb.lg, !llvm.loop !126

._crit_edge1763.i:                                ; preds = %bb.lg, %._crit_edge1763.i.unr-lcssa
  %.lcssa1037 = phi ptr [ %i.bsm, %._crit_edge1763.i.unr-lcssa ], [ %i.brg, %bb.lg ]
  %i.brh = add nuw nsw i32 %.412581765.i, 1       ; 2 uses
  %exitcond2263.not.i = icmp eq i32 %i.brh, %i.cj
  br i1 %exitcond2263.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !127

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2258.i = phi i64 [ %indvars.iv.next2259.i.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 9 uses
  %.1112531762.i = phi ptr [ %i.bsm, %.preheader1576.i.new ], [ %.1012521766.i, %.preheader1576.i ] ; 9 uses
  %niter1090 = phi i64 [ %niter1090.next.7, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.brj = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bri, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brj, ptr %.1112531762.i, align 32, !tbaa !100
  %i.brk = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 32
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 4
  %i.brn = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brm, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brn, ptr %i.brk, align 32, !tbaa !100
  %i.bro = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 64
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 8
  %i.brr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.brq, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brr, ptr %i.bro, align 32, !tbaa !100
  %i.brs = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 96
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 12
  %i.brv = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bru, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brv, ptr %i.brs, align 32, !tbaa !100
  %i.brw = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 128
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 16
  %i.brz = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bry, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.brz, ptr %i.brw, align 32, !tbaa !100
  %i.bsa = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 160
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 20
  %i.bsd = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bsc, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bsd, ptr %i.bsa, align 32, !tbaa !100
  %i.bse = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 192
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 24
  %i.bsh = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bsg, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bsh, ptr %i.bse, align 32, !tbaa !100
  %i.bsi = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 224
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %.31225.lcssa.i, i64 %indvars.iv2258.i
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 28
  %i.bsl = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bsk, <8 x i32> %i.apy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.bsl, ptr %i.bsi, align 32, !tbaa !100
  %i.bsm = getelementptr inbounds nuw i8, ptr %.1112531762.i, i64 256 ; 3 uses
  %indvars.iv.next2259.i.7 = add nuw nsw i64 %indvars.iv2258.i, 8 ; 2 uses
  %niter1090.next.7 = add i64 %niter1090, 8       ; 2 uses
  %niter1090.ncmp.7 = icmp eq i64 %niter1090.next.7, %unroll_iter1089
  br i1 %niter1090.ncmp.7, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !128

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2267.i = add nuw nsw i64 %indvars.iv2266.i, 8 ; 3 uses
  %i.bsn = icmp slt i64 %indvars.iv.next2267.i, %invariant.op.i
  %indvars.iv.next2208.i = add i32 %indvars.iv2207.i, %i.aql
  %indvars.iv.next2265.i = add i32 %indvars.iv2264.i, 8
  br i1 %i.bsn, label %_ZN4ncnn3MatD2Ev.exit1329.i, label %.preheader1575.loopexit.i, !llvm.loop !129

.preheader1566.loopexit.i:                        ; preds = %._crit_edge1853.split.i
  %i.bso = trunc nsw i64 %indvars.iv.next2319.i to i32
  br label %.preheader1566.i

.preheader1566.i:                                 ; preds = %.preheader1566.loopexit.i, %.preheader1575.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1575.i ], [ %i.bso, %.preheader1566.loopexit.i ] ; 4 uses
  %i.bsp = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bsq = icmp slt i32 %i.bsp, %i.rk
  br i1 %i.bsq, label %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i, label %.preheader1556.i

_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i:                ; preds = %.preheader1566.i
  %i.bsr = mul i32 %i.afa, %i.cj                  ; 5 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bst = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bsu = insertelement <4 x i32> poison, i32 %i.afa, i64 0
  %i.bsv = shufflevector <4 x i32> %i.bsu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsw = mul <4 x i32> %i.bsv, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  %i.bsx = insertelement <8 x i32> poison, i32 %i.afa, i64 0
  %i.bsy = shufflevector <8 x i32> %i.bsx, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bsz = mul <8 x i32> %i.bsy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.bta = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.btb = shufflevector <16 x i32> %i.bta, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.btc = mul <16 x i32> %i.btb, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.btd = icmp sgt i32 %i.cj, 15
  %i.bte = icmp sgt i32 %i.afa, 0                 ; 4 uses
  %i.btf = shl i32 %i.afa, 4
  %i.btg = sext i32 %i.btf to i64                 ; 3 uses
  %i.bth = shl i32 %i.afa, 3
  %i.bti = sext i32 %i.bth to i64                 ; 3 uses
  %i.btj = shl i32 %i.afa, 2
  %i.btk = sext i32 %i.btj to i64                 ; 2 uses
  %i.btl = sext i32 %i.afa to i64                 ; 11 uses
  %i.btm = shl i32 %i.afa, 1                      ; 2 uses
  %i.btn = sext i32 %i.btm to i64                 ; 3 uses
  %i.bto = icmp slt i32 %i.afa, 1
  %i.btp = add i32 %i.cj, -16                     ; 2 uses
  %i.btq = lshr i32 %i.btp, 2
  %i.btr = and i32 %i.btq, 1073741820
  %narrow2444.i = add nuw nsw i32 %i.btr, 4
  %i.bts = zext nneg i32 %narrow2444.i to i64
  %i.btt = mul nsw i64 %i.btg, %i.bts
  %i.btu = mul i32 %i.bsr, %.2.lcssa.i
  %i.btv = shl i32 %i.bsr, 1                      ; 2 uses
  %i.btw = mul i32 %i.bsp, %i.bsr
  %i.btx = and i32 %i.btp, -16
  %i.bty = add nuw nsw i32 %i.btx, 16             ; 4 uses
  %i.btz = add i32 %i.cj, -8
  %i.bua = sext i32 %.2.lcssa.i to i64
  %i.bub = sext i32 %i.rk to i64
  %i.buc = or disjoint i32 %i.bty, 7
  %i.bud = icmp slt i32 %i.buc, %i.cj
  %wide.trip.count2331.i = zext i32 %i.afa to i64 ; 26 uses
  %i.bue = shl nuw nsw i64 %wide.trip.count2331.i, 3
  %i.buf = shl nuw nsw i64 %wide.trip.count2331.i, 2 ; 5 uses
  %i.bug = shl nuw nsw i64 %wide.trip.count2331.i, 4
  %i.buh = shl nuw nsw i64 %i.btl, 2              ; 3 uses
  %i.bui = add nuw nsw i64 %i.buh, %i.buf         ; 2 uses
  %i.buj = shl nsw i64 %i.btn, 2
  %i.buk = add nsw i64 %wide.trip.count2331.i, -1 ; 3 uses
  %xtraiter1108 = and i64 %wide.trip.count2331.i, 3 ; 3 uses
  %i.bul = icmp ult i64 %i.buk, 3
  %unroll_iter1113 = and i64 %wide.trip.count2331.i, 2147483644
  %lcmp.mod1110.not = icmp eq i64 %xtraiter1108, 0
  %lcmp.mod1112 = icmp ne i64 %xtraiter1108, 0
  %xtraiter1116 = and i64 %wide.trip.count2331.i, 3 ; 3 uses
  %i.bum = icmp ult i64 %i.buk, 3
  %unroll_iter1121 = and i64 %wide.trip.count2331.i, 2147483644
  %lcmp.mod1118.not = icmp eq i64 %xtraiter1116, 0
  %lcmp.mod1120 = icmp ne i64 %xtraiter1116, 0
  %xtraiter1124 = and i64 %wide.trip.count2331.i, 3 ; 3 uses
  %i.bun = icmp ult i64 %i.buk, 3
  %unroll_iter1129 = and i64 %wide.trip.count2331.i, 2147483644
  %lcmp.mod1126.not = icmp eq i64 %xtraiter1124, 0
  %lcmp.mod1128 = icmp ne i64 %xtraiter1124, 0
  %min.iters.check789 = icmp ult i32 %i.afa, 4
  %stride.check777 = icmp slt i32 %i.btm, 0
  %min.iters.check791 = icmp ult i32 %i.afa, 16
  %i.buo = and i64 %wide.trip.count2331.i, 12
  %n.vec793 = and i64 %wide.trip.count2331.i, 2147483632 ; 5 uses
  %i.bup = shl nuw nsw i64 %n.vec793, 4
  %cmp.n804 = icmp eq i64 %n.vec793, %wide.trip.count2331.i
  %min.epilog.iters.check809 = icmp eq i64 %i.buo, 0
  %n.vec811 = and i64 %wide.trip.count2331.i, 2147483644 ; 4 uses
  %i.buq = shl nuw nsw i64 %n.vec811, 4
  %cmp.n822 = icmp eq i64 %n.vec811, %wide.trip.count2331.i
  %xtraiter1131 = and i64 %wide.trip.count2331.i, 1
  %lcmp.mod1132.not = icmp eq i64 %xtraiter1131, 0
  %i.bur = add nsw i64 %wide.trip.count2331.i, -1
  %min.iters.check = icmp ult i32 %i.afa, 4
  %min.iters.check747 = icmp ult i32 %i.afa, 16
  %i.bus = and i64 %wide.trip.count2331.i, 12
  %n.vec = and i64 %wide.trip.count2331.i, 2147483632 ; 5 uses
  %i.but = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2331.i
  %min.epilog.iters.check = icmp eq i64 %i.bus, 0
  %n.vec749 = and i64 %wide.trip.count2331.i, 2147483644 ; 4 uses
  %i.buu = shl nuw nsw i64 %n.vec749, 3
  %cmp.n756 = icmp eq i64 %n.vec749, %wide.trip.count2331.i
  %xtraiter1133 = and i64 %wide.trip.count2331.i, 3 ; 2 uses
  %lcmp.mod1134.not = icmp eq i64 %xtraiter1133, 0
  br label %_ZN4ncnn3MatD2Ev.exit1327.i

_ZN4ncnn3MatD2Ev.exit1328.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i
  %indvars.iv2318.i = phi i64 [ %i.bgr, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %indvars.iv.next2319.i, %._crit_edge1853.split.i ] ; 2 uses
  %i.buv = phi i32 [ %i.bey, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %i.cda, %._crit_edge1853.split.i ]
  %i.buw = phi <4 x i32> [ %i.bgn, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %i.ccz, %._crit_edge1853.split.i ] ; 2 uses
  %i.bux = sext <4 x i32> %i.buw to <4 x i64>
  %i.buy = shl nsw <4 x i64> %i.bux, splat (i64 2) ; 4 uses
  %i.buz = load ptr, ptr %i.aey, align 8, !tbaa !18 ; 5 uses
  %i.bva = trunc i64 %indvars.iv2318.i to i32     ; 6 uses
  %i.bvb = mul i32 %i.bfd, %i.bva
  %i.bvc = sext i32 %i.bvb to i64
  %i.bvd = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bvc ; 2 uses
  %i.bve = add i32 %i.bva, 1
  %i.bvf = mul i32 %i.bve, %i.bfd
  %i.bvg = sext i32 %i.bvf to i64
  %i.bvh = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bvg ; 2 uses
  %i.bvi = add i32 %i.bva, 2
  %i.bvj = mul i32 %i.bvi, %i.bfd
  %i.bvk = sext i32 %i.bvj to i64
  %i.bvl = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bvk ; 2 uses
  %i.bvm = mul i32 %i.buv, %i.bfd
  %i.bvn = sext i32 %i.bvm to i64
  %i.bvo = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bvn ; 2 uses
  %i.bvp = lshr i32 %i.bva, 4
  %i.bvq = lshr i32 %i.bva, 3
  %i.bvr = and i32 %i.bvq, 1
  %i.bvs = add nuw nsw i32 %i.bvr, %i.bvp
  %i.bvt = lshr i32 %i.bva, 2
  %i.bvu = and i32 %i.bvt, 1
  %i.bvv = add nuw nsw i32 %i.bvs, %i.bvu
  %i.bvw = load ptr, ptr %i.aez, align 8, !tbaa !18, !noalias !130
  %i.bvx = load i64, ptr %i.bfe, align 8, !tbaa !20, !noalias !130
  %i.bvy = zext nneg i32 %i.bvv to i64
  %i.bvz = mul i64 %i.bvx, %i.bvy
  %i.bwa = load i64, ptr %i.bff, align 8, !tbaa !65, !noalias !130
  %i.bwb = mul i64 %i.bvz, %i.bwa
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvw, i64 %i.bwb ; 4 uses
  br i1 %i.bfp, label %.preheader1571.lr.ph.i, label %.preheader1574.i

.preheader1571.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1328.i
  br i1 %i.bfq, label %.preheader1571.us.i, label %.preheader1574.thread.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1772.us.i
  %.012601779.us.i = phi i32 [ %i.bxf, %._crit_edge1772.us.i ], [ 0, %.preheader1571.lr.ph.i ]
  %.012651778.us.i = phi ptr [ %i.bxa, %._crit_edge1772.us.i ], [ %i.bwc, %.preheader1571.lr.ph.i ]
  %.012761777.us.i = phi ptr [ %i.bxe, %._crit_edge1772.us.i ], [ %i.bvo, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012791776.us.i = phi ptr [ %i.bxd, %._crit_edge1772.us.i ], [ %i.bvl, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012821775.us.i = phi ptr [ %i.bxc, %._crit_edge1772.us.i ], [ %i.bvh, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012851774.us.i = phi ptr [ %i.bxb, %._crit_edge1772.us.i ], [ %i.bvd, %.preheader1571.lr.ph.i ] ; 2 uses
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lh, %.preheader1571.us.i
  %indvars.iv2284.i = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2285.i, %bb.lh ] ; 5 uses
  %.112661770.us.i = phi ptr [ %.012651778.us.i, %.preheader1571.us.i ], [ %i.bxa, %bb.lh ] ; 5 uses
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %.012851774.us.i, i64 %indvars.iv2284.i
  %i.bwe = getelementptr inbounds nuw [4 x i8], ptr %.012821775.us.i, i64 %indvars.iv2284.i
  %i.bwf = getelementptr inbounds nuw [4 x i8], ptr %.012791776.us.i, i64 %indvars.iv2284.i
  %i.bwg = getelementptr inbounds nuw [4 x i8], ptr %.012761777.us.i, i64 %indvars.iv2284.i
  %i.bwh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bwd, <16 x i32> %i.bfo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwi = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bwe, <16 x i32> %i.bfo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwj = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bwf, <16 x i32> %i.bfo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwk = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bwg, <16 x i32> %i.bfo, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bwl = shufflevector <16 x float> %i.bwh, <16 x float> %i.bwi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bwm = shufflevector <16 x float> %i.bwh, <16 x float> %i.bwi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwn = shufflevector <16 x float> %i.bwj, <16 x float> %i.bwk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bwo = shufflevector <16 x float> %i.bwj, <16 x float> %i.bwk, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bwp = shufflevector <16 x float> %i.bwl, <16 x float> %i.bwn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bwq = shufflevector <16 x float> %i.bwm, <16 x float> %i.bwo, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bwr = shufflevector <16 x float> %i.bwl, <16 x float> %i.bwn, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bws = shufflevector <16 x float> %i.bwm, <16 x float> %i.bwo, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bwt = shufflevector <16 x float> %i.bwp, <16 x float> %i.bwq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bwu = shufflevector <16 x float> %i.bwr, <16 x float> %i.bws, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bwv = shufflevector <16 x float> %i.bwp, <16 x float> %i.bwq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bww = shufflevector <16 x float> %i.bwr, <16 x float> %i.bws, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.bwt, ptr %.112661770.us.i, align 1, !tbaa !100
  %i.bwx = getelementptr inbounds nuw i8, ptr %.112661770.us.i, i64 64
  store <16 x float> %i.bwu, ptr %i.bwx, align 1, !tbaa !100
  %i.bwy = getelementptr inbounds nuw i8, ptr %.112661770.us.i, i64 128
  store <16 x float> %i.bwv, ptr %i.bwy, align 1, !tbaa !100
  %i.bwz = getelementptr inbounds nuw i8, ptr %.112661770.us.i, i64 192
  store <16 x float> %i.bww, ptr %i.bwz, align 1, !tbaa !100
  %i.bxa = getelementptr inbounds nuw i8, ptr %.112661770.us.i, i64 256 ; 3 uses
  %indvars.iv.next2285.i = add nuw nsw i64 %indvars.iv2284.i, 1 ; 2 uses
  %exitcond2288.not.i = icmp eq i64 %indvars.iv.next2285.i, %wide.trip.count2287.i
  br i1 %exitcond2288.not.i, label %._crit_edge1772.us.i, label %bb.lh, !llvm.loop !133

._crit_edge1772.us.i:                             ; preds = %bb.lh
  %i.bxb = getelementptr inbounds nuw [4 x i8], ptr %.012851774.us.i, i64 %i.bfs ; 2 uses
  %i.bxc = getelementptr inbounds nuw [4 x i8], ptr %.012821775.us.i, i64 %i.bfs ; 2 uses
  %i.bxd = getelementptr inbounds nuw [4 x i8], ptr %.012791776.us.i, i64 %i.bfs ; 2 uses
  %i.bxe = getelementptr inbounds nuw [4 x i8], ptr %.012761777.us.i, i64 %i.bfs ; 2 uses
  %i.bxf = add nuw nsw i32 %.012601779.us.i, 16   ; 2 uses
  %i.bxg = or disjoint i32 %i.bxf, 15
  %i.bxh = icmp slt i32 %i.bxg, %i.cj
  br i1 %i.bxh, label %.preheader1571.us.i, label %.preheader1574.i, !llvm.loop !134

.preheader1574.i:                                 ; preds = %._crit_edge1772.us.i, %_ZN4ncnn3MatD2Ev.exit1328.i
  %.01285.lcssa.i = phi ptr [ %i.bvd, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bxb, %._crit_edge1772.us.i ] ; 3 uses
  %.01282.lcssa.i = phi ptr [ %i.bvh, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bxc, %._crit_edge1772.us.i ] ; 3 uses
  %.01279.lcssa.i = phi ptr [ %i.bvl, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bxd, %._crit_edge1772.us.i ] ; 3 uses
  %.01276.lcssa.i = phi ptr [ %i.bvo, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bxe, %._crit_edge1772.us.i ] ; 3 uses
  %.01265.lcssa.i = phi ptr [ %i.bwc, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bxa, %._crit_edge1772.us.i ] ; 3 uses
  %.01260.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1328.i ], [ %i.bgp, %._crit_edge1772.us.i ] ; 4 uses
  %i.bxi = or disjoint i32 %.01260.lcssa.i, 7
  %i.bxj = icmp slt i32 %i.bxi, %i.cj
  br i1 %i.bxj, label %.preheader1570.lr.ph.i, label %.preheader1573.i

.preheader1574.thread.i:                          ; preds = %.preheader1571.lr.ph.i
  %scevgep2271.i = getelementptr i8, ptr %i.buz, i64 %i.bgi ; 4 uses
  %i.bxk = extractelement <4 x i64> %i.buy, i64 0
  %scevgep2274.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.bxk ; 2 uses
  %i.bxl = extractelement <4 x i64> %i.buy, i64 1
  %scevgep2277.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.bxl ; 2 uses
  %i.bxm = extractelement <4 x i64> %i.buy, i64 2
  %scevgep2280.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.bxm ; 2 uses
  %i.bxn = extractelement <4 x i64> %i.buy, i64 3
  %scevgep2283.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.bxn ; 2 uses
  br i1 %i.bgu, label %.preheader1570.preheader.i, label %.preheader1573.i

.preheader1570.lr.ph.i:                           ; preds = %.preheader1574.i
  br i1 %i.bfq, label %.preheader1570.us.i, label %.preheader1570.preheader.i

.preheader1570.preheader.i:                       ; preds = %.preheader1570.lr.ph.i, %.preheader1574.thread.i
  %.01285.lcssa25312548.i = phi ptr [ %.01285.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2274.i, %.preheader1574.thread.i ]
  %.01282.lcssa25322547.i = phi ptr [ %.01282.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2277.i, %.preheader1574.thread.i ]
  %.01279.lcssa25332546.i = phi ptr [ %.01279.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2280.i, %.preheader1574.thread.i ]
  %.01276.lcssa25342545.i = phi ptr [ %.01276.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2283.i, %.preheader1574.thread.i ]
  %.01265.lcssa25352544.i = phi ptr [ %.01265.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.bwc, %.preheader1574.thread.i ]
  %.01260.lcssa25362543.i = phi i32 [ %.01260.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.bgp, %.preheader1574.thread.i ] ; 2 uses
  %i.bxo = sub i32 %i.bgq, %.01260.lcssa25362543.i ; 2 uses
  %i.bxp = lshr i32 %i.bxo, 1
  %i.bxq = and i32 %i.bxp, 2147483644
  %narrow2443.i = add nuw i32 %i.bxq, 4
  %i.bxr = zext i32 %narrow2443.i to i64
  %i.bxs = mul nsw i64 %i.bxr, %i.bfu             ; 4 uses
  %scevgep2289.i = getelementptr i8, ptr %.01285.lcssa25312548.i, i64 %i.bxs
  %scevgep2290.i = getelementptr i8, ptr %.01282.lcssa25322547.i, i64 %i.bxs
  %scevgep2291.i = getelementptr i8, ptr %.01279.lcssa25332546.i, i64 %i.bxs
  %scevgep2292.i = getelementptr i8, ptr %.01276.lcssa25342545.i, i64 %i.bxs
  %i.bxt = add i32 %.01260.lcssa25362543.i, 8
  %i.bxu = and i32 %i.bxo, -8
  %i.bxv = add i32 %i.bxt, %i.bxu
  br label %.preheader1573.i

.preheader1570.us.i:                              ; preds = %.preheader1570.lr.ph.i, %._crit_edge1794.us.i
end_hunk_2
begin_hunk_3_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.cam = getelementptr inbounds nuw i8, ptr %.712721834.us.i, i64 48
  %i.can = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cal, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.can, ptr %i.cam, align 16, !tbaa !100
  %i.cao = getelementptr inbounds nuw i8, ptr %.712721834.us.i, i64 64
  %i.cap = getelementptr inbounds nuw [4 x i8], ptr %.312881838.us.i, i64 %indvars.iv2307.i
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 8 ; 2 uses
  %i.car = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.caq, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.car, ptr %i.cao, align 16, !tbaa !100
  %i.cas = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %i.bga
  %i.cat = getelementptr inbounds nuw i8, ptr %.712721834.us.i, i64 80
  %i.cau = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cas, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cau, ptr %i.cat, align 16, !tbaa !100
  %i.cav = getelementptr inbounds nuw i8, ptr %.712721834.us.i, i64 96
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %.312881838.us.i, i64 %indvars.iv2307.i
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 12 ; 2 uses
  %i.cay = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cax, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cay, ptr %i.cav, align 16, !tbaa !100
  %i.caz = getelementptr inbounds nuw [4 x i8], ptr %i.cax, i64 %i.bga
  %i.cba = getelementptr inbounds nuw i8, ptr %.712721834.us.i, i64 112
  %i.cbb = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.caz, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbb, ptr %i.cba, align 16, !tbaa !100
  %i.cbc = getelementptr inbounds nuw i8, ptr %.712721834.us.i, i64 128 ; 3 uses
  %indvars.iv.next2308.i.3 = add nuw nsw i64 %indvars.iv2307.i, 4 ; 2 uses
  %niter1098.next.3 = add i64 %niter1098, 4       ; 2 uses
  %niter1098.ncmp.3 = icmp eq i64 %niter1098.next.3, %unroll_iter1097
  br i1 %niter1098.ncmp.3, label %._crit_edge1836.us.i.unr-lcssa, label %.preheader1568.us.i.new, !llvm.loop !139

._crit_edge1836.us.i.unr-lcssa:                   ; preds = %.preheader1568.us.i.new
  br i1 %lcmp.mod1094.not, label %._crit_edge1836.us.i, label %.epil.preheader1091

.epil.preheader1091:                              ; preds = %._crit_edge1836.us.i.unr-lcssa, %.preheader1568.us.i
  %indvars.iv2307.i.epil.init = phi i64 [ 0, %.preheader1568.us.i ], [ %indvars.iv.next2308.i.3, %._crit_edge1836.us.i.unr-lcssa ]
  %.712721834.us.i.epil.init = phi ptr [ %.612711839.us.i, %.preheader1568.us.i ], [ %i.cbc, %._crit_edge1836.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1096)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %.epil.preheader1091
  %indvars.iv2307.i.epil = phi i64 [ %indvars.iv2307.i.epil.init, %.epil.preheader1091 ], [ %indvars.iv.next2308.i.epil, %bb.lk ] ; 2 uses
  %.712721834.us.i.epil = phi ptr [ %.712721834.us.i.epil.init, %.epil.preheader1091 ], [ %i.cbi, %bb.lk ] ; 3 uses
  %epil.iter1093 = phi i64 [ 0, %.epil.preheader1091 ], [ %epil.iter1093.next, %bb.lk ]
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %.312881838.us.i, i64 %indvars.iv2307.i.epil ; 2 uses
  %i.cbe = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbd, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbe, ptr %.712721834.us.i.epil, align 16, !tbaa !100
  %i.cbf = getelementptr inbounds nuw [4 x i8], ptr %i.cbd, i64 %i.bga
  %i.cbg = getelementptr inbounds nuw i8, ptr %.712721834.us.i.epil, i64 16
  %i.cbh = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbf, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbh, ptr %i.cbg, align 16, !tbaa !100
  %i.cbi = getelementptr inbounds nuw i8, ptr %.712721834.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2308.i.epil = add nuw nsw i64 %indvars.iv2307.i.epil, 1
  %epil.iter1093.next = add i64 %epil.iter1093, 1 ; 2 uses
  %epil.iter1093.cmp.not = icmp eq i64 %epil.iter1093.next, %xtraiter1092
  br i1 %epil.iter1093.cmp.not, label %._crit_edge1836.us.i, label %bb.lk, !llvm.loop !140

._crit_edge1836.us.i:                             ; preds = %bb.lk, %._crit_edge1836.us.i.unr-lcssa
  %.lcssa1015 = phi ptr [ %i.cbc, %._crit_edge1836.us.i.unr-lcssa ], [ %i.cbi, %bb.lk ] ; 2 uses
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %.312881838.us.i, i64 %i.bgc ; 2 uses
  %i.cbk = add nuw nsw i32 %.312631840.us.i, 2    ; 3 uses
  %i.cbl = or disjoint i32 %i.cbk, 1
  %i.cbm = icmp slt i32 %i.cbl, %i.cj
  br i1 %i.cbm, label %.preheader1568.us.i, label %.preheader1572.i, !llvm.loop !141

.preheader1572.i:                                 ; preds = %._crit_edge1836.us.i, %._crit_edge1824.i
  %.31288.lcssa.i = phi ptr [ %.21287.lcssa.i, %._crit_edge1824.i ], [ %i.cbj, %._crit_edge1836.us.i ] ; 9 uses
  %.61271.lcssa.i = phi ptr [ %.41269.lcssa.i, %._crit_edge1824.i ], [ %.lcssa1015, %._crit_edge1836.us.i ]
  %.31263.lcssa.i = phi i32 [ %.21262.lcssa.i, %._crit_edge1824.i ], [ %i.cbk, %._crit_edge1836.us.i ] ; 2 uses
  %i.cbn = icmp sge i32 %.31263.lcssa.i, %i.cj
  %brmerge2003.i = or i1 %i.bgd, %i.cbn
  br i1 %brmerge2003.i, label %._crit_edge1853.split.i, label %.preheader1567.i

.preheader1567.i:                                 ; preds = %.preheader1572.i, %._crit_edge1849.i
  %.412641852.i = phi i32 [ %i.cbr, %._crit_edge1849.i ], [ %.31263.lcssa.i, %.preheader1572.i ]
  %.912741851.i = phi ptr [ %.lcssa1018, %._crit_edge1849.i ], [ %.61271.lcssa.i, %.preheader1572.i ] ; 2 uses
  br i1 %i.bgz, label %.epil.preheader1099, label %.preheader1567.i.new

._crit_edge1849.i.unr-lcssa:                      ; preds = %.preheader1567.i.new
  br i1 %lcmp.mod1102.not, label %._crit_edge1849.i, label %.epil.preheader1099

.epil.preheader1099:                              ; preds = %._crit_edge1849.i.unr-lcssa, %.preheader1567.i
  %indvars.iv2312.i.epil.init = phi i64 [ 0, %.preheader1567.i ], [ %indvars.iv.next2313.i.7, %._crit_edge1849.i.unr-lcssa ]
  %.1012751847.i.epil.init = phi ptr [ %.912741851.i, %.preheader1567.i ], [ %i.ccw, %._crit_edge1849.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1104)
  br label %bb.ll

bb.ll:                                            ; preds = %bb.ll, %.epil.preheader1099
  %indvars.iv2312.i.epil = phi i64 [ %indvars.iv2312.i.epil.init, %.epil.preheader1099 ], [ %indvars.iv.next2313.i.epil, %bb.ll ] ; 2 uses
  %.1012751847.i.epil = phi ptr [ %.1012751847.i.epil.init, %.epil.preheader1099 ], [ %i.cbq, %bb.ll ] ; 2 uses
  %epil.iter1101 = phi i64 [ 0, %.epil.preheader1099 ], [ %epil.iter1101.next, %bb.ll ]
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i.epil
  %i.cbp = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbo, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbp, ptr %.1012751847.i.epil, align 16, !tbaa !100
  %i.cbq = getelementptr inbounds nuw i8, ptr %.1012751847.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2313.i.epil = add nuw nsw i64 %indvars.iv2312.i.epil, 1
  %epil.iter1101.next = add i64 %epil.iter1101, 1 ; 2 uses
  %epil.iter1101.cmp.not = icmp eq i64 %epil.iter1101.next, %xtraiter1100
  br i1 %epil.iter1101.cmp.not, label %._crit_edge1849.i, label %bb.ll, !llvm.loop !142

._crit_edge1849.i:                                ; preds = %bb.ll, %._crit_edge1849.i.unr-lcssa
  %.lcssa1018 = phi ptr [ %i.ccw, %._crit_edge1849.i.unr-lcssa ], [ %i.cbq, %bb.ll ]
  %i.cbr = add nuw nsw i32 %.412641852.i, 1       ; 2 uses
  %exitcond2317.not.i = icmp eq i32 %i.cbr, %i.cj
  br i1 %exitcond2317.not.i, label %._crit_edge1853.split.i, label %.preheader1567.i, !llvm.loop !143

.preheader1567.i.new:                             ; preds = %.preheader1567.i, %.preheader1567.i.new
  %indvars.iv2312.i = phi i64 [ %indvars.iv.next2313.i.7, %.preheader1567.i.new ], [ 0, %.preheader1567.i ] ; 9 uses
  %.1012751847.i = phi ptr [ %i.ccw, %.preheader1567.i.new ], [ %.912741851.i, %.preheader1567.i ] ; 9 uses
  %niter1106 = phi i64 [ %niter1106.next.7, %.preheader1567.i.new ], [ 0, %.preheader1567.i ]
  %i.cbs = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.cbt = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbs, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbt, ptr %.1012751847.i, align 16, !tbaa !100
  %i.cbu = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 16
  %i.cbv = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbv, i64 4
  %i.cbx = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbw, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.cbx, ptr %i.cbu, align 16, !tbaa !100
  %i.cby = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 32
  %i.cbz = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbz, i64 8
  %i.ccb = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cca, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccb, ptr %i.cby, align 16, !tbaa !100
  %i.ccc = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 48
  %i.ccd = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.cce = getelementptr inbounds nuw i8, ptr %i.ccd, i64 12
  %i.ccf = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cce, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccf, ptr %i.ccc, align 16, !tbaa !100
  %i.ccg = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 64
  %i.cch = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 16
  %i.ccj = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cci, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccj, ptr %i.ccg, align 16, !tbaa !100
  %i.cck = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 80
  %i.ccl = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.ccl, i64 20
  %i.ccn = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccm, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccn, ptr %i.cck, align 16, !tbaa !100
  %i.cco = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 96
  %i.ccp = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 24
  %i.ccr = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccq, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccr, ptr %i.cco, align 16, !tbaa !100
  %i.ccs = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 112
  %i.cct = getelementptr inbounds nuw [4 x i8], ptr %.31288.lcssa.i, i64 %indvars.iv2312.i
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 28
  %i.ccv = call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccu, <4 x i32> %i.bfz, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.ccv, ptr %i.ccs, align 16, !tbaa !100
  %i.ccw = getelementptr inbounds nuw i8, ptr %.1012751847.i, i64 128 ; 3 uses
  %indvars.iv.next2313.i.7 = add nuw nsw i64 %indvars.iv2312.i, 8 ; 2 uses
  %niter1106.next.7 = add i64 %niter1106, 8       ; 2 uses
  %niter1106.ncmp.7 = icmp eq i64 %niter1106.next.7, %unroll_iter1105
  br i1 %niter1106.ncmp.7, label %._crit_edge1849.i.unr-lcssa, label %.preheader1567.i.new, !llvm.loop !144

._crit_edge1853.split.i:                          ; preds = %._crit_edge1849.i, %.preheader1572.i, %.preheader1568.lr.ph.i, %.preheader1569.lr.ph.i
  %indvars.iv.next2319.i = add nuw nsw i64 %indvars.iv2318.i, 4 ; 3 uses
  %i.ccx = or disjoint i64 %indvars.iv.next2319.i, 3 ; 2 uses
  %i.ccy = icmp slt i64 %i.ccx, %i.bgs
  %i.ccz = add <4 x i32> %i.buw, %i.bgw
  %i.cda = trunc nsw i64 %i.ccx to i32
  br i1 %i.ccy, label %_ZN4ncnn3MatD2Ev.exit1328.i, label %.preheader1566.loopexit.i, !llvm.loop !145

.preheader1556.loopexit.i:                        ; preds = %._crit_edge1930.split.i
  %i.cdb = trunc nsw i64 %indvars.iv.next2363.i to i32
  br label %.preheader1556.i

.preheader1556.i:                                 ; preds = %.preheader1556.loopexit.i, %.preheader1566.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1566.i ], [ %i.cdb, %.preheader1556.loopexit.i ] ; 3 uses
  %i.cdc = icmp slt i32 %.3.lcssa.i, %i.rk
  br i1 %i.cdc, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1556.i
  %i.cdd = mul i32 %i.afa, %i.cj                  ; 3 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cdf = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cdg = insertelement <4 x i32> poison, i32 %i.afa, i64 0
  %i.cdh = shufflevector <4 x i32> %i.cdg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cdi = mul <4 x i32> %i.cdh, <i32 0, i32 1, i32 2, i32 3> ; 9 uses
  %i.cdj = insertelement <8 x i32> poison, i32 %i.afa, i64 0
  %i.cdk = shufflevector <8 x i32> %i.cdj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cdl = mul <8 x i32> %i.cdk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.cdm = insertelement <16 x i32> poison, i32 %i.afa, i64 0
  %i.cdn = shufflevector <16 x i32> %i.cdm, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cdo = mul <16 x i32> %i.cdn, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 9 uses
  %i.cdp = icmp sgt i32 %i.cj, 15
  %i.cdq = icmp sgt i32 %i.afa, 0                 ; 4 uses
  %i.cdr = shl i32 %i.afa, 4
  %i.cds = sext i32 %i.cdr to i64                 ; 2 uses
  %i.cdt = shl i32 %i.afa, 3
  %i.cdu = sext i32 %i.cdt to i64                 ; 2 uses
  %i.cdv = shl i32 %i.afa, 2
  %i.cdw = sext i32 %i.cdv to i64
  %i.cdx = sext i32 %i.afa to i64                 ; 8 uses
  %i.cdy = shl i32 %i.afa, 1                      ; 2 uses
  %i.cdz = sext i32 %i.cdy to i64                 ; 2 uses
  %i.cea = icmp slt i32 %i.afa, 1
  %i.ceb = add i32 %i.cj, -16                     ; 2 uses
  %i.cec = lshr i32 %i.ceb, 2
  %i.ced = and i32 %i.cec, 1073741820
  %narrow2446.i = add nuw nsw i32 %i.ced, 4
  %i.cee = zext nneg i32 %narrow2446.i to i64
  %i.cef = mul nsw i64 %i.cds, %i.cee
  %i.ceg = mul i32 %i.cdd, %.3.lcssa.i
  %i.ceh = and i32 %i.ceb, -16
  %i.cei = add nuw nsw i32 %i.ceh, 16             ; 4 uses
  %i.cej = add i32 %i.cj, -8
  %i.cek = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2403.i = sext i32 %i.rk to i64
  %i.cel = or disjoint i32 %i.cei, 7
  %i.cem = icmp slt i32 %i.cel, %i.cj
  %wide.trip.count2372.i = zext i32 %i.afa to i64 ; 25 uses
  %i.cen = shl nuw nsw i64 %wide.trip.count2372.i, 3
  %i.ceo = shl nuw nsw i64 %i.cdx, 2              ; 2 uses
  %i.cep = shl nuw nsw i64 %wide.trip.count2372.i, 2 ; 2 uses
  %i.ceq = shl nsw i64 %i.cdz, 2
  %i.cer = add nsw i64 %wide.trip.count2372.i, -1 ; 3 uses
  %xtraiter1136 = and i64 %wide.trip.count2372.i, 7 ; 3 uses
  %i.ces = icmp ult i64 %i.cer, 7
  %unroll_iter1141 = and i64 %wide.trip.count2372.i, 2147483640
  %lcmp.mod1138.not = icmp eq i64 %xtraiter1136, 0
  %lcmp.mod1140 = icmp ne i64 %xtraiter1136, 0
  %xtraiter1144 = and i64 %wide.trip.count2372.i, 7 ; 3 uses
  %i.cet = icmp ult i64 %i.cer, 7
  %unroll_iter1149 = and i64 %wide.trip.count2372.i, 2147483640
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1144, 0
  %lcmp.mod1148 = icmp ne i64 %xtraiter1144, 0
  %xtraiter1152 = and i64 %wide.trip.count2372.i, 7 ; 3 uses
  %i.ceu = icmp ult i64 %i.cer, 7
  %unroll_iter1157 = and i64 %wide.trip.count2372.i, 2147483640
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1152, 0
  %lcmp.mod1156 = icmp ne i64 %xtraiter1152, 0
  %min.iters.check876 = icmp ult i32 %i.afa, 8
  %stride.check874 = icmp slt i32 %i.cdy, 0
  %min.iters.check878 = icmp ult i32 %i.afa, 32
  %i.cev = and i64 %wide.trip.count2372.i, 24
  %n.vec880 = and i64 %wide.trip.count2372.i, 2147483616 ; 5 uses
  %i.cew = shl nuw nsw i64 %n.vec880, 3
  %cmp.n893 = icmp eq i64 %n.vec880, %wide.trip.count2372.i
  %min.epilog.iters.check898 = icmp eq i64 %i.cev, 0
  %n.vec900 = and i64 %wide.trip.count2372.i, 2147483640 ; 4 uses
  %i.cex = shl nuw nsw i64 %n.vec900, 3
  %cmp.n909 = icmp eq i64 %n.vec900, %wide.trip.count2372.i
  %xtraiter1159 = and i64 %wide.trip.count2372.i, 3 ; 2 uses
  %lcmp.mod1160.not = icmp eq i64 %xtraiter1159, 0
  %min.iters.check828 = icmp ult i32 %i.afa, 8
  %min.iters.check830 = icmp ult i32 %i.afa, 64
  %i.cey = and i64 %wide.trip.count2372.i, 56
  %n.vec832 = and i64 %wide.trip.count2372.i, 2147483584 ; 5 uses
  %i.cez = shl nuw nsw i64 %n.vec832, 2
  %cmp.n842 = icmp eq i64 %n.vec832, %wide.trip.count2372.i
  %min.epilog.iters.check847 = icmp eq i64 %i.cey, 0
  %n.vec849 = and i64 %wide.trip.count2372.i, 2147483640 ; 4 uses
  %i.cfa = shl nuw nsw i64 %n.vec849, 2
  %cmp.n856 = icmp eq i64 %n.vec849, %wide.trip.count2372.i
  %xtraiter1162 = and i64 %wide.trip.count2372.i, 7 ; 2 uses
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1162, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i226

_ZN4ncnn3MatD2Ev.exit1327.i:                      ; preds = %._crit_edge1930.split.i, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i
  %indvars.iv2362.i = phi i64 [ %i.bua, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2363.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2325.i = phi i32 [ %i.btw, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2326.i, %._crit_edge1930.split.i ] ; 2 uses
  %indvars.iv2322.i = phi i32 [ %i.btu, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2323.i, %._crit_edge1930.split.i ] ; 2 uses
  %i.cfb = phi i32 [ %i.bsp, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %i.coy, %._crit_edge1930.split.i ]
  %i.cfc = sext i32 %indvars.iv2322.i to i64
  %i.cfd = shl nsw i64 %i.cfc, 2
  %i.cfe = sext i32 %indvars.iv2325.i to i64
  %i.cff = shl nsw i64 %i.cfe, 2
  %i.cfg = load ptr, ptr %i.aey, align 8, !tbaa !18 ; 3 uses
  %i.cfh = trunc nsw i64 %indvars.iv2362.i to i32 ; 2 uses
  %i.cfi = mul i32 %i.bsr, %i.cfh
  %i.cfj = sext i32 %i.cfi to i64
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.cfg, i64 %i.cfj ; 2 uses
  %i.cfl = mul i32 %i.cfb, %i.bsr
  %i.cfm = sext i32 %i.cfl to i64
  %i.cfn = getelementptr inbounds [4 x i8], ptr %i.cfg, i64 %i.cfm ; 2 uses
  %i.cfo = insertelement <4 x i32> poison, i32 %i.cfh, i64 0
  %i.cfp = shufflevector <4 x i32> %i.cfo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cfq = lshr <4 x i32> %i.cfp, <i32 3, i32 2, i32 1, i32 4>
  %i.cfr = and <4 x i32> %i.cfq, <i32 1, i32 1, i32 1, i32 -1>
  %i.cfs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cfr)
  %i.cft = load ptr, ptr %i.aez, align 8, !tbaa !18, !noalias !146
  %i.cfu = load i64, ptr %i.bss, align 8, !tbaa !20, !noalias !146
  %i.cfv = zext nneg i32 %i.cfs to i64
  %i.cfw = mul i64 %i.cfu, %i.cfv
  %i.cfx = load i64, ptr %i.bst, align 8, !tbaa !65, !noalias !146
  %i.cfy = mul i64 %i.cfw, %i.cfx
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cft, i64 %i.cfy ; 4 uses
  br i1 %i.btd, label %.preheader1561.lr.ph.i, label %.preheader1565.i

.preheader1561.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1327.i
  br i1 %i.bte, label %.preheader1561.us.i, label %.preheader1565.thread.i

.preheader1561.us.i:                              ; preds = %.preheader1561.lr.ph.i, %._crit_edge1858.us.i
  %.011841863.us.i = phi i32 [ %i.chg, %._crit_edge1858.us.i ], [ 0, %.preheader1561.lr.ph.i ]
  %.011891862.us.i = phi ptr [ %.lcssa985, %._crit_edge1858.us.i ], [ %i.cfz, %.preheader1561.lr.ph.i ] ; 2 uses
  %.012001861.us.i = phi ptr [ %i.chf, %._crit_edge1858.us.i ], [ %i.cfn, %.preheader1561.lr.ph.i ] ; 6 uses
  %.012041860.us.i = phi ptr [ %i.che, %._crit_edge1858.us.i ], [ %i.cfk, %.preheader1561.lr.ph.i ] ; 6 uses
  br i1 %i.bul, label %.epil.preheader1107, label %.preheader1561.us.i.new

.preheader1561.us.i.new:                          ; preds = %.preheader1561.us.i, %.preheader1561.us.i.new
  %indvars.iv2328.i = phi i64 [ %indvars.iv.next2329.i.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ] ; 6 uses
  %.111901856.us.i = phi ptr [ %i.cgx, %.preheader1561.us.i.new ], [ %.011891862.us.i, %.preheader1561.us.i ] ; 9 uses
  %niter1114 = phi i64 [ %niter1114.next.3, %.preheader1561.us.i.new ], [ 0, %.preheader1561.us.i ]
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %.012041860.us.i, i64 %indvars.iv2328.i
  %i.cgb = getelementptr inbounds nuw [4 x i8], ptr %.012001861.us.i, i64 %indvars.iv2328.i
  %i.cgc = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cga, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  %i.cgd = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgb, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgc, ptr %.111901856.us.i, align 1, !tbaa !100
  %i.cge = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 64
  store <16 x float> %i.cgd, ptr %i.cge, align 1, !tbaa !100
  %i.cgf = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 128
  %indvars.iv.next2329.i = or disjoint i64 %indvars.iv2328.i, 1 ; 2 uses
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %.012041860.us.i, i64 %indvars.iv.next2329.i
  %i.cgh = getelementptr inbounds nuw [4 x i8], ptr %.012001861.us.i, i64 %indvars.iv.next2329.i
  %i.cgi = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgg, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  %i.cgj = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgh, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgi, ptr %i.cgf, align 1, !tbaa !100
  %i.cgk = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 192
  store <16 x float> %i.cgj, ptr %i.cgk, align 1, !tbaa !100
  %i.cgl = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 256
  %indvars.iv.next2329.i.1 = or disjoint i64 %indvars.iv2328.i, 2 ; 2 uses
  %i.cgm = getelementptr inbounds nuw [4 x i8], ptr %.012041860.us.i, i64 %indvars.iv.next2329.i.1
  %i.cgn = getelementptr inbounds nuw [4 x i8], ptr %.012001861.us.i, i64 %indvars.iv.next2329.i.1
  %i.cgo = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgm, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  %i.cgp = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgn, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgo, ptr %i.cgl, align 1, !tbaa !100
  %i.cgq = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 320
  store <16 x float> %i.cgp, ptr %i.cgq, align 1, !tbaa !100
  %i.cgr = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 384
  %indvars.iv.next2329.i.2 = or disjoint i64 %indvars.iv2328.i, 3 ; 2 uses
  %i.cgs = getelementptr inbounds nuw [4 x i8], ptr %.012041860.us.i, i64 %indvars.iv.next2329.i.2
  %i.cgt = getelementptr inbounds nuw [4 x i8], ptr %.012001861.us.i, i64 %indvars.iv.next2329.i.2
  %i.cgu = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgs, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  %i.cgv = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgt, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cgu, ptr %i.cgr, align 1, !tbaa !100
  %i.cgw = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 448
  store <16 x float> %i.cgv, ptr %i.cgw, align 1, !tbaa !100
  %i.cgx = getelementptr inbounds nuw i8, ptr %.111901856.us.i, i64 512 ; 3 uses
  %indvars.iv.next2329.i.3 = add nuw nsw i64 %indvars.iv2328.i, 4 ; 2 uses
  %niter1114.next.3 = add i64 %niter1114, 4       ; 2 uses
  %niter1114.ncmp.3 = icmp eq i64 %niter1114.next.3, %unroll_iter1113
  br i1 %niter1114.ncmp.3, label %._crit_edge1858.us.i.unr-lcssa, label %.preheader1561.us.i.new, !llvm.loop !149

._crit_edge1858.us.i.unr-lcssa:                   ; preds = %.preheader1561.us.i.new
  br i1 %lcmp.mod1110.not, label %._crit_edge1858.us.i, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %._crit_edge1858.us.i.unr-lcssa, %.preheader1561.us.i
  %indvars.iv2328.i.epil.init = phi i64 [ 0, %.preheader1561.us.i ], [ %indvars.iv.next2329.i.3, %._crit_edge1858.us.i.unr-lcssa ]
  %.111901856.us.i.epil.init = phi ptr [ %.011891862.us.i, %.preheader1561.us.i ], [ %i.cgx, %._crit_edge1858.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1112)
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lm, %.epil.preheader1107
  %indvars.iv2328.i.epil = phi i64 [ %indvars.iv2328.i.epil.init, %.epil.preheader1107 ], [ %indvars.iv.next2329.i.epil, %bb.lm ] ; 3 uses
  %.111901856.us.i.epil = phi ptr [ %.111901856.us.i.epil.init, %.epil.preheader1107 ], [ %i.chd, %bb.lm ] ; 3 uses
  %epil.iter1109 = phi i64 [ 0, %.epil.preheader1107 ], [ %epil.iter1109.next, %bb.lm ]
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %.012041860.us.i, i64 %indvars.iv2328.i.epil
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr %.012001861.us.i, i64 %indvars.iv2328.i.epil
  %i.cha = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgy, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  %i.chb = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgz, <16 x i32> %i.btc, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.cha, ptr %.111901856.us.i.epil, align 1, !tbaa !100
  %i.chc = getelementptr inbounds nuw i8, ptr %.111901856.us.i.epil, i64 64
  store <16 x float> %i.chb, ptr %i.chc, align 1, !tbaa !100
  %i.chd = getelementptr inbounds nuw i8, ptr %.111901856.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2329.i.epil = add nuw nsw i64 %indvars.iv2328.i.epil, 1
  %epil.iter1109.next = add i64 %epil.iter1109, 1 ; 2 uses
  %epil.iter1109.cmp.not = icmp eq i64 %epil.iter1109.next, %xtraiter1108
  br i1 %epil.iter1109.cmp.not, label %._crit_edge1858.us.i, label %bb.lm, !llvm.loop !150

._crit_edge1858.us.i:                             ; preds = %bb.lm, %._crit_edge1858.us.i.unr-lcssa
  %.lcssa985 = phi ptr [ %i.cgx, %._crit_edge1858.us.i.unr-lcssa ], [ %i.chd, %bb.lm ] ; 2 uses
  %i.che = getelementptr inbounds nuw [4 x i8], ptr %.012041860.us.i, i64 %i.btg ; 2 uses
  %i.chf = getelementptr inbounds nuw [4 x i8], ptr %.012001861.us.i, i64 %i.btg ; 2 uses
  %i.chg = add nuw nsw i32 %.011841863.us.i, 16   ; 2 uses
  %i.chh = or disjoint i32 %i.chg, 15
  %i.chi = icmp slt i32 %i.chh, %i.cj
  br i1 %i.chi, label %.preheader1561.us.i, label %.preheader1565.i, !llvm.loop !151

.preheader1565.i:                                 ; preds = %._crit_edge1858.us.i, %_ZN4ncnn3MatD2Ev.exit1327.i
  %.01204.lcssa.i = phi ptr [ %i.cfk, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.che, %._crit_edge1858.us.i ] ; 3 uses
  %.01200.lcssa.i = phi ptr [ %i.cfn, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.chf, %._crit_edge1858.us.i ] ; 3 uses
  %.01189.lcssa.i = phi ptr [ %i.cfz, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %.lcssa985, %._crit_edge1858.us.i ] ; 3 uses
  %.01184.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.bty, %._crit_edge1858.us.i ] ; 4 uses
  %i.chj = or disjoint i32 %.01184.lcssa.i, 7
  %i.chk = icmp slt i32 %i.chj, %i.cj
  br i1 %i.chk, label %.preheader1560.lr.ph.i, label %.preheader1564.i

.preheader1565.thread.i:                          ; preds = %.preheader1561.lr.ph.i
  %scevgep2321.i = getelementptr i8, ptr %i.cfg, i64 %i.btt ; 2 uses
  %scevgep2324.i = getelementptr i8, ptr %scevgep2321.i, i64 %i.cfd ; 2 uses
  %scevgep2327.i = getelementptr i8, ptr %scevgep2321.i, i64 %i.cff ; 2 uses
  br i1 %i.bud, label %.preheader1560.preheader.i, label %.preheader1564.i

.preheader1560.lr.ph.i:                           ; preds = %.preheader1565.i
  br i1 %i.bte, label %.preheader1560.us.i, label %.preheader1560.preheader.i

.preheader1560.preheader.i:                       ; preds = %.preheader1560.lr.ph.i, %.preheader1565.thread.i
  %.01204.lcssa25692580.i = phi ptr [ %.01204.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2324.i, %.preheader1565.thread.i ]
  %.01200.lcssa25702579.i = phi ptr [ %.01200.lcssa.i, %.preheader1560.lr.ph.i ], [ %scevgep2327.i, %.preheader1565.thread.i ]
  %.01189.lcssa25712578.i = phi ptr [ %.01189.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.cfz, %.preheader1565.thread.i ]
  %.01184.lcssa25722577.i = phi i32 [ %.01184.lcssa.i, %.preheader1560.lr.ph.i ], [ %i.bty, %.preheader1565.thread.i ] ; 2 uses
  %i.chl = sub i32 %i.btz, %.01184.lcssa25722577.i ; 2 uses
  %i.chm = lshr i32 %i.chl, 1
  %i.chn = and i32 %i.chm, 2147483644
  %narrow2445.i = add nuw i32 %i.chn, 4
end_hunk_3
begin_hunk_4_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.oa = and i32 %i.p, 1
  %i.ob = add nuw nsw i32 %i.oa, %i.nv
  %i.oc = add nuw nsw i32 %i.ob, %i.nx
  %i.od = add nuw nsw i32 %i.oc, %i.nz
  %i.oe = lshr i32 %i.o, 1
  %i.of = and i32 %i.oe, 1
  %i.og = and i32 %i.o, 1
  %i.oh = add nuw nsw i32 %i.og, 1
  %i.oi = add nuw nsw i32 %i.oh, %i.of
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.od, i32 noundef %i.oi, i64 noundef 64, i32 noundef 64, ptr noundef null)
  br label %.preheader1506.i

bb.cw:                                            ; preds = %bb.cu
  %i.oj = icmp sgt i32 %i.p, 7
  br i1 %i.oj, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ok = lshr i32 %i.p, 1
  %i.ol = and i32 %i.ok, 3
  %i.om = and i32 %i.p, 1
  %i.on = add nuw nsw i32 %i.om, 1
  %i.oo = add nuw nsw i32 %i.on, %i.ol
  %i.op = lshr i32 %i.o, 1
  %i.oq = and i32 %i.op, 1
  %i.or = and i32 %i.o, 1
  %i.os = add nuw nsw i32 %i.or, 1
  %i.ot = add nuw nsw i32 %i.os, %i.oq
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.oo, i32 noundef %i.ot, i64 noundef 32, i32 noundef 32, ptr noundef null)
  br label %.preheader1506.i

bb.cy:                                            ; preds = %bb.cw
  %i.ou = icmp sgt i32 %i.p, 1
  br i1 %i.ou, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ov = lshr i32 %i.p, 1
  %i.ow = sub nsw i32 %i.p, %i.ov
  %i.ox = lshr i32 %i.o, 1
  %i.oy = and i32 %i.ox, 1
  %i.oz = and i32 %i.o, 1
  %i.pa = add nuw nsw i32 %i.oz, 1
  %i.pb = add nuw nsw i32 %i.pa, %i.oy
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.ow, i32 noundef %i.pb, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader1506.i

bb.da:                                            ; preds = %bb.cy
  %i.pc = lshr i32 %i.o, 1
  %i.pd = and i32 %i.pc, 1
  %i.pe = and i32 %i.o, 1
  %i.pf = add nuw nsw i32 %i.pe, 1
  %i.pg = add nuw nsw i32 %i.pf, %i.pd
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.pg, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader1506.i

bb.db:                                            ; preds = %bb.ct
  %i.ph = icmp sgt i32 %i.o, 1
  %i.pi = icmp sgt i32 %i.p, 15                   ; 2 uses
  br i1 %i.ph, label %bb.dc, label %bb.dj

bb.dc:                                            ; preds = %bb.db
  br i1 %i.pi, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.pj = lshr i32 %i.p, 4
  %i.pk = lshr i32 %i.p, 3
  %i.pl = and i32 %i.pk, 1
  %i.pm = lshr i32 %i.p, 1
  %i.pn = and i32 %i.pm, 3
  %i.po = and i32 %i.p, 1
  %i.pp = add nuw nsw i32 %i.po, %i.pj
  %i.pq = add nuw nsw i32 %i.pp, %i.pl
  %i.pr = add nuw nsw i32 %i.pq, %i.pn
  %i.ps = and i32 %i.o, 1
  %i.pt = add nuw nsw i32 %i.ps, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.pr, i32 noundef %i.pt, i64 noundef 32, i32 noundef 32, ptr noundef null)
  br label %.preheader1506.i

bb.de:                                            ; preds = %bb.dc
  %i.pu = icmp sgt i32 %i.p, 7
  br i1 %i.pu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pv = lshr i32 %i.p, 1
  %i.pw = and i32 %i.pv, 3
  %i.px = and i32 %i.p, 1
  %i.py = add nuw nsw i32 %i.px, 1
  %i.pz = add nuw nsw i32 %i.py, %i.pw
  %i.qa = and i32 %i.o, 1
  %i.qb = add nuw nsw i32 %i.qa, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.pz, i32 noundef %i.qb, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %.preheader1506.i

bb.dg:                                            ; preds = %bb.de
  %i.qc = icmp sgt i32 %i.p, 1
  br i1 %i.qc, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qd = lshr i32 %i.p, 1
  %i.qe = sub nsw i32 %i.p, %i.qd
  %i.qf = and i32 %i.o, 1
  %i.qg = add nuw nsw i32 %i.qf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.qe, i32 noundef %i.qg, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader1506.i

bb.di:                                            ; preds = %bb.dg
  %i.qh = and i32 %i.o, 1
  %i.qi = add nuw nsw i32 %i.qh, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.qi, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader1506.i

bb.dj:                                            ; preds = %bb.db
  br i1 %i.pi, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.qj = lshr i32 %i.p, 4
  %i.qk = lshr i32 %i.p, 3
  %i.ql = and i32 %i.qk, 1
  %i.qm = lshr i32 %i.p, 1
  %i.qn = and i32 %i.qm, 3
  %i.qo = and i32 %i.p, 1
  %i.qp = add nuw nsw i32 %i.qo, %i.qj
  %i.qq = add nuw nsw i32 %i.qp, %i.ql
  %i.qr = add nuw nsw i32 %i.qq, %i.qn
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.qr, i32 noundef %i.o, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %.preheader1506.i

bb.dl:                                            ; preds = %bb.dj
  %i.qs = icmp sgt i32 %i.p, 7
  br i1 %i.qs, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.qt = lshr i32 %i.p, 1
  %i.qu = and i32 %i.qt, 3
  %i.qv = and i32 %i.p, 1
  %i.qw = add nuw nsw i32 %i.qv, 1
  %i.qx = add nuw nsw i32 %i.qw, %i.qu
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.qx, i32 noundef %i.o, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader1506.i

bb.dn:                                            ; preds = %bb.dl
  %i.qy = icmp sgt i32 %i.p, 1
  br i1 %i.qy, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.qz = lshr i32 %i.p, 1
  %i.ra = sub nsw i32 %i.p, %i.qz
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.ra, i32 noundef %i.o, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader1506.i

bb.dp:                                            ; preds = %bb.dn
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i32 noundef %i.j, i32 noundef %i.p, i32 noundef %i.o, i64 noundef 1, i32 noundef 1, ptr noundef null)
  br label %.preheader1506.i

_ZN4ncnn3MatD2Ev.exit1286.lr.ph.i:                ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cf
  %i.rb = mul i32 %i.p, %i.j                      ; 23 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.re = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.rf = shufflevector <16 x i32> %i.re, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.rg = mul <16 x i32> %i.rf, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 16 uses
  %i.rh = icmp sgt i32 %i.j, 0                    ; 3 uses
  %i.ri = shl i32 %i.j, 4
  %i.rj = sext i32 %i.ri to i64                   ; 17 uses
  %i.rk = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.rl = shufflevector <8 x i32> %i.rk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.rm = mul <8 x i32> %i.rl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 16 uses
  %i.rn = shl i32 %i.j, 3
  %i.ro = sext i32 %i.rn to i64                   ; 17 uses
  %i.rp = add nsw i32 %i.rb, %i.j
  %i.rq = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.j, i64 1
  %i.rr = insertelement <4 x i32> %i.rq, i32 %i.rb, i64 2
  %i.rs = insertelement <4 x i32> %i.rr, i32 %i.rp, i64 3 ; 3 uses
  %i.rt = shl i32 %i.rb, 1
  %i.ru = insertelement <4 x i32> poison, i32 %i.rt, i64 0
  %i.rv = shufflevector <4 x i32> %i.ru, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rw = add <4 x i32> %i.rv, %i.rs              ; 2 uses
  %i.rx = shufflevector <4 x i32> %i.rs, <4 x i32> %i.rw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ry = shl i32 %i.rb, 2
  %i.rz = insertelement <8 x i32> poison, i32 %i.ry, i64 0
  %i.sa = shufflevector <8 x i32> %i.rz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sb = add <8 x i32> %i.sa, %i.rx
  %i.sc = bitcast <8 x i32> %i.sb to <4 x i64>
  %i.sd = shufflevector <4 x i32> %i.rs, <4 x i32> %i.rw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.se = shufflevector <4 x i64> %i.sc, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sf = bitcast <8 x i64> %i.se to <16 x i32>
  %i.sg = shufflevector <16 x i32> %i.sd, <16 x i32> %i.sf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 6 uses
  %i.sh = shl i32 %i.j, 1
  %i.si = sext i32 %i.sh to i64                   ; 2 uses
  %i.sj = insertelement <16 x i32> poison, i32 %i.rb, i64 0
  %i.sk = shufflevector <16 x i32> %i.sj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.sl = mul <16 x i32> %i.sk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.sm = icmp slt i32 %i.j, 1
  %i.sn = add i32 %i.p, -16                       ; 2 uses
  %i.so = lshr i32 %i.sn, 4
  %narrow.i = add nuw nsw i32 %i.so, 1
  %i.sp = zext nneg i32 %narrow.i to i64
  %i.sq = mul nsw i64 %i.sp, %i.rj
  %i.sr = shl i32 %i.rb, 4                        ; 2 uses
  %i.ss = shl i32 %i.rb, 3
  %i.st = and i32 %i.sn, -16
  %i.su = add nuw nsw i32 %i.st, 16               ; 4 uses
  %i.sv = add i32 %i.p, -8
  %i.sw = zext nneg i32 %i.o to i64
  %i.sx = or disjoint i32 %i.su, 7
  %i.sy = icmp slt i32 %i.sx, %i.p
  %wide.trip.count.i = zext i32 %i.j to i64       ; 7 uses
  %i.sz = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ta = icmp eq i64 %i.sz, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod559 = trunc i32 %i.j to i1
  %xtraiter561 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.tb = icmp ult i64 %i.sz, 3
  %unroll_iter565 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  %lcmp.mod564 = icmp ne i64 %xtraiter561, 0
  br label %_ZN4ncnn3MatD2Ev.exit1286.i

.preheader1506.loopexit.i:                        ; preds = %._crit_edge1619.split.i
  %i.tc = trunc nuw nsw i64 %indvars.iv.next2161.i to i32
  br label %.preheader1506.i

.preheader1506.i:                                 ; preds = %.preheader1506.loopexit.i, %bb.dp, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dh, %bb.df, %bb.dd, %bb.da, %bb.cz, %bb.cx, %bb.cv, %bb.cs, %bb.cr, %bb.cp, %bb.cn
  %.0.lcssa.i = phi i32 [ %i.tc, %.preheader1506.loopexit.i ], [ 0, %bb.cp ], [ 0, %bb.cs ], [ 0, %bb.cr ], [ 0, %bb.cn ], [ 0, %bb.df ], [ 0, %bb.di ], [ 0, %bb.dh ], [ 0, %bb.dd ], [ 0, %bb.dm ], [ 0, %bb.dp ], [ 0, %bb.do ], [ 0, %bb.dk ], [ 0, %bb.cv ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.cx ] ; 5 uses
  %i.td = or disjoint i32 %.0.lcssa.i, 7
  %i.te = icmp slt i32 %i.td, %i.o
  br i1 %i.te, label %_ZN4ncnn3MatD2Ev.exit1285.lr.ph.i, label %.preheader1501.i

_ZN4ncnn3MatD2Ev.exit1285.lr.ph.i:                ; preds = %.preheader1506.i
  %i.tf = mul i32 %i.p, %i.j                      ; 15 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ti = icmp sgt i32 %i.p, 15
  %i.tj = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.tk = shufflevector <16 x i32> %i.tj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.tl = mul <16 x i32> %i.tk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 8 uses
  %i.tm = icmp sgt i32 %i.j, 0                    ; 3 uses
  %i.tn = shl i32 %i.j, 4
  %i.to = sext i32 %i.tn to i64                   ; 9 uses
  %i.tp = sext i32 %i.j to i64                    ; 32 uses
  %i.tq = shl i32 %i.j, 1
  %i.tr = sext i32 %i.tq to i64                   ; 25 uses
  %i.ts = shl i32 %i.j, 3
  %i.tt = sext i32 %i.ts to i64                   ; 9 uses
  %i.tu = add nsw i32 %i.tf, %i.j
  %i.tv = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.j, i64 1
  %i.tw = insertelement <4 x i32> %i.tv, i32 %i.tf, i64 2
  %i.tx = insertelement <4 x i32> %i.tw, i32 %i.tu, i64 3 ; 3 uses
  %i.ty = shl nsw i32 %i.tf, 1
  %i.tz = insertelement <4 x i32> poison, i32 %i.ty, i64 0
  %i.ua = shufflevector <4 x i32> %i.tz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ub = add <4 x i32> %i.ua, %i.tx              ; 2 uses
  %i.uc = shufflevector <4 x i32> %i.tx, <4 x i32> %i.ub, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ud = shl nsw i32 %i.tf, 2
  %i.ue = insertelement <8 x i32> poison, i32 %i.ud, i64 0
  %i.uf = shufflevector <8 x i32> %i.ue, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ug = add <8 x i32> %i.uf, %i.uc
  %i.uh = bitcast <8 x i32> %i.ug to <4 x i64>
  %i.ui = shufflevector <4 x i32> %i.tx, <4 x i32> %i.ub, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uj = shufflevector <4 x i64> %i.uh, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uk = bitcast <8 x i64> %i.uj to <16 x i32>
  %i.ul = shufflevector <16 x i32> %i.ui, <16 x i32> %i.uk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 5 uses
  %i.um = insertelement <8 x i32> poison, i32 %i.tf, i64 0
  %i.un = shufflevector <8 x i32> %i.um, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.uo = mul <8 x i32> %i.un, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.up = icmp slt i32 %i.j, 1
  %i.uq = add i32 %i.p, -16                       ; 2 uses
  %i.ur = lshr i32 %i.uq, 4
  %narrow2365.i = add nuw nsw i32 %i.ur, 1
  %i.us = zext nneg i32 %narrow2365.i to i64
  %i.ut = mul nsw i64 %i.us, %i.to
  %i.uu = mul i32 %i.tf, %.0.lcssa.i
  %i.uv = shl i32 %i.tf, 3
  %i.uw = and i32 %i.uq, -16
  %i.ux = add nuw nsw i32 %i.uw, 16               ; 4 uses
  %i.uy = add i32 %i.p, -8
  %i.uz = zext nneg i32 %.0.lcssa.i to i64
  %i.va = add i32 %.0.lcssa.i, 7
  %i.vb = sext i32 %i.o to i64
  %i.vc = or disjoint i32 %i.ux, 7
  %i.vd = icmp slt i32 %i.vc, %i.p
  %wide.trip.count2192.i = zext i32 %i.j to i64   ; 7 uses
  %invariant.op.i = add nsw i64 %i.vb, -7
  %i.ve = add nsw i64 %wide.trip.count2192.i, -1  ; 2 uses
  %xtraiter568 = and i64 %wide.trip.count2192.i, 3 ; 3 uses
  %i.vf = icmp ult i64 %i.ve, 3
  %unroll_iter573 = and i64 %wide.trip.count2192.i, 2147483644
  %lcmp.mod570.not = icmp eq i64 %xtraiter568, 0
  %lcmp.mod572 = icmp ne i64 %xtraiter568, 0
  %xtraiter576 = and i64 %wide.trip.count2192.i, 3 ; 3 uses
  %i.vg = icmp ult i64 %i.ve, 3
  %unroll_iter581 = and i64 %wide.trip.count2192.i, 2147483644
  %lcmp.mod578.not = icmp eq i64 %xtraiter576, 0
  %lcmp.mod580 = icmp ne i64 %xtraiter576, 0
  br label %_ZN4ncnn3MatD2Ev.exit1285.i

_ZN4ncnn3MatD2Ev.exit1286.i:                      ; preds = %._crit_edge1619.split.i, %_ZN4ncnn3MatD2Ev.exit1286.lr.ph.i
  %indvars.iv2160.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1286.lr.ph.i ], [ %indvars.iv.next2161.i, %._crit_edge1619.split.i ] ; 3 uses
  %indvars.iv2113.i = phi i32 [ %i.ss, %_ZN4ncnn3MatD2Ev.exit1286.lr.ph.i ], [ %indvars.iv.next2114.i, %._crit_edge1619.split.i ] ; 2 uses
  %indvars.iv.i30 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1286.lr.ph.i ], [ %indvars.iv.next.i32, %._crit_edge1619.split.i ] ; 2 uses
  %i.vh = sext i32 %indvars.iv.i30 to i64
  %i.vi = sext i32 %indvars.iv2113.i to i64
  %i.vj = load ptr, ptr %i.av, align 8, !tbaa !18 ; 17 uses
  %i.vk = trunc i64 %indvars.iv2160.i to i32      ; 16 uses
  %i.vl = mul i32 %i.rb, %i.vk
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %i.vj, i64 %i.vm ; 2 uses
  %i.vo = or disjoint i32 %i.vk, 1
  %i.vp = mul i32 %i.vo, %i.rb
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds i8, ptr %i.vj, i64 %i.vq ; 2 uses
  %i.vs = or disjoint i32 %i.vk, 2
  %i.vt = mul i32 %i.vs, %i.rb
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %i.vj, i64 %i.vu ; 2 uses
  %i.vw = or disjoint i32 %i.vk, 3
  %i.vx = mul i32 %i.vw, %i.rb
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vj, i64 %i.vy ; 2 uses
  %i.wa = or disjoint i32 %i.vk, 4
  %i.wb = mul i32 %i.wa, %i.rb
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.vj, i64 %i.wc ; 2 uses
  %i.we = or disjoint i32 %i.vk, 5
  %i.wf = mul i32 %i.we, %i.rb
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds i8, ptr %i.vj, i64 %i.wg ; 2 uses
  %i.wi = or disjoint i32 %i.vk, 6
  %i.wj = mul i32 %i.wi, %i.rb
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds i8, ptr %i.vj, i64 %i.wk ; 2 uses
  %i.wm = or disjoint i32 %i.vk, 7
  %i.wn = mul i32 %i.wm, %i.rb
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds i8, ptr %i.vj, i64 %i.wo ; 2 uses
  %i.wq = or disjoint i32 %i.vk, 8
  %i.wr = mul i32 %i.wq, %i.rb
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds i8, ptr %i.vj, i64 %i.ws ; 2 uses
  %i.wu = or disjoint i32 %i.vk, 9
  %i.wv = mul i32 %i.wu, %i.rb
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds i8, ptr %i.vj, i64 %i.ww ; 2 uses
  %i.wy = or disjoint i32 %i.vk, 10
  %i.wz = mul i32 %i.wy, %i.rb
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds i8, ptr %i.vj, i64 %i.xa ; 2 uses
  %i.xc = or disjoint i32 %i.vk, 11
  %i.xd = mul i32 %i.xc, %i.rb
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds i8, ptr %i.vj, i64 %i.xe ; 2 uses
  %i.xg = or disjoint i32 %i.vk, 12
  %i.xh = mul i32 %i.xg, %i.rb
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds i8, ptr %i.vj, i64 %i.xi ; 2 uses
  %i.xk = or disjoint i32 %i.vk, 13
  %i.xl = mul i32 %i.xk, %i.rb
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr inbounds i8, ptr %i.vj, i64 %i.xm ; 2 uses
  %i.xo = or disjoint i32 %i.vk, 14
  %i.xp = mul i32 %i.xo, %i.rb
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds i8, ptr %i.vj, i64 %i.xq ; 2 uses
  %i.xs = or disjoint i32 %i.vk, 15
  %i.xt = mul i32 %i.xs, %i.rb
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds i8, ptr %i.vj, i64 %i.xu ; 2 uses
  %i.xw = lshr exact i64 %indvars.iv2160.i, 4
  %i.xx = load ptr, ptr %i.km, align 8, !tbaa !18, !noalias !435
  %i.xy = load i64, ptr %i.rc, align 8, !tbaa !20, !noalias !435
  %i.xz = mul i64 %i.xy, %i.xw
  %i.ya = load i64, ptr %i.rd, align 8, !tbaa !65, !noalias !435
  %i.yb = mul i64 %i.xz, %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.yb ; 4 uses
  br i1 %i.ko, label %.lr.ph1530.i, label %.preheader1509.i

.lr.ph1530.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1286.i
  br i1 %i.rh, label %.lr.ph.us.i, label %.preheader1509.thread.i

.lr.ph.us.i:                                      ; preds = %.lr.ph1530.i, %._crit_edge.us.i
  %.010861529.us.i = phi ptr [ %i.adr, %._crit_edge.us.i ], [ %i.vn, %.lr.ph1530.i ] ; 2 uses
  %.010901528.us.i = phi ptr [ %i.ads, %._crit_edge.us.i ], [ %i.vr, %.lr.ph1530.i ] ; 2 uses
  %.010931527.us.i = phi ptr [ %i.adt, %._crit_edge.us.i ], [ %i.vv, %.lr.ph1530.i ] ; 2 uses
  %.011081526.us.i = phi ptr [ %i.adu, %._crit_edge.us.i ], [ %i.vz, %.lr.ph1530.i ] ; 2 uses
  %.011101525.us.i = phi ptr [ %i.adv, %._crit_edge.us.i ], [ %i.wd, %.lr.ph1530.i ] ; 2 uses
  %.011131524.us.i = phi ptr [ %i.adw, %._crit_edge.us.i ], [ %i.wh, %.lr.ph1530.i ] ; 2 uses
  %.011161523.us.i = phi ptr [ %i.adx, %._crit_edge.us.i ], [ %i.wl, %.lr.ph1530.i ] ; 2 uses
  %.011181522.us.i = phi ptr [ %i.ady, %._crit_edge.us.i ], [ %i.wp, %.lr.ph1530.i ] ; 2 uses
  %.011211521.us.i = phi ptr [ %i.adz, %._crit_edge.us.i ], [ %i.wt, %.lr.ph1530.i ] ; 2 uses
  %.011241520.us.i = phi ptr [ %i.aea, %._crit_edge.us.i ], [ %i.wx, %.lr.ph1530.i ] ; 2 uses
  %.011261519.us.i = phi ptr [ %i.aeb, %._crit_edge.us.i ], [ %i.xb, %.lr.ph1530.i ] ; 2 uses
  %.011281518.us.i = phi ptr [ %i.aec, %._crit_edge.us.i ], [ %i.xf, %.lr.ph1530.i ] ; 2 uses
  %.011301517.us.i = phi ptr [ %i.aed, %._crit_edge.us.i ], [ %i.xj, %.lr.ph1530.i ] ; 2 uses
  %.011511516.us.i = phi ptr [ %i.aee, %._crit_edge.us.i ], [ %i.xn, %.lr.ph1530.i ] ; 2 uses
  %.011541515.us.i = phi ptr [ %i.aef, %._crit_edge.us.i ], [ %i.xr, %.lr.ph1530.i ] ; 2 uses
  %.011561514.us.i = phi ptr [ %i.aeg, %._crit_edge.us.i ], [ %i.xv, %.lr.ph1530.i ] ; 2 uses
  %.011591513.us.i = phi ptr [ %i.adq, %._crit_edge.us.i ], [ %i.yc, %.lr.ph1530.i ]
  %.012031512.us.i = phi i32 [ %i.aeh, %._crit_edge.us.i ], [ 0, %.lr.ph1530.i ]
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.lr.ph.us.i
  %indvars.iv2138.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next2139.i, %bb.dq ] ; 17 uses
  %.111601511.us.i = phi ptr [ %.011591513.us.i, %.lr.ph.us.i ], [ %i.adq, %bb.dq ] ; 17 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.010861529.us.i, i64 %indvars.iv2138.i
  %i.ye = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.yd, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yf = trunc <16 x i32> %i.ye to <16 x i8>
  %i.yg = getelementptr inbounds nuw i8, ptr %.010901528.us.i, i64 %indvars.iv2138.i
  %i.yh = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.yg, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yi = trunc <16 x i32> %i.yh to <16 x i8>
  %i.yj = getelementptr inbounds nuw i8, ptr %.010931527.us.i, i64 %indvars.iv2138.i
  %i.yk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.yj, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yl = trunc <16 x i32> %i.yk to <16 x i8>
  %i.ym = getelementptr inbounds nuw i8, ptr %.011081526.us.i, i64 %indvars.iv2138.i
  %i.yn = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ym, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yo = trunc <16 x i32> %i.yn to <16 x i8>
  %i.yp = getelementptr inbounds nuw i8, ptr %.011101525.us.i, i64 %indvars.iv2138.i
  %i.yq = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.yp, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yr = trunc <16 x i32> %i.yq to <16 x i8>
  %i.ys = getelementptr inbounds nuw i8, ptr %.011131524.us.i, i64 %indvars.iv2138.i
  %i.yt = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ys, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yu = trunc <16 x i32> %i.yt to <16 x i8>
  %i.yv = getelementptr inbounds nuw i8, ptr %.011161523.us.i, i64 %indvars.iv2138.i
  %i.yw = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.yv, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.yx = trunc <16 x i32> %i.yw to <16 x i8>
  %i.yy = getelementptr inbounds nuw i8, ptr %.011181522.us.i, i64 %indvars.iv2138.i
  %i.yz = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.yy, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.za = trunc <16 x i32> %i.yz to <16 x i8>
  %i.zb = getelementptr inbounds nuw i8, ptr %.011211521.us.i, i64 %indvars.iv2138.i
  %i.zc = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zb, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zd = trunc <16 x i32> %i.zc to <16 x i8>
  %i.ze = getelementptr inbounds nuw i8, ptr %.011241520.us.i, i64 %indvars.iv2138.i
  %i.zf = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ze, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zg = trunc <16 x i32> %i.zf to <16 x i8>
  %i.zh = getelementptr inbounds nuw i8, ptr %.011261519.us.i, i64 %indvars.iv2138.i
  %i.zi = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zh, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zj = trunc <16 x i32> %i.zi to <16 x i8>
  %i.zk = getelementptr inbounds nuw i8, ptr %.011281518.us.i, i64 %indvars.iv2138.i
  %i.zl = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zk, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zm = trunc <16 x i32> %i.zl to <16 x i8>
  %i.zn = getelementptr inbounds nuw i8, ptr %.011301517.us.i, i64 %indvars.iv2138.i
  %i.zo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zn, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zp = trunc <16 x i32> %i.zo to <16 x i8>
  %i.zq = getelementptr inbounds nuw i8, ptr %.011511516.us.i, i64 %indvars.iv2138.i
  %i.zr = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zq, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zs = trunc <16 x i32> %i.zr to <16 x i8>
  %i.zt = getelementptr inbounds nuw i8, ptr %.011541515.us.i, i64 %indvars.iv2138.i
  %i.zu = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zt, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zv = trunc <16 x i32> %i.zu to <16 x i8>
  %i.zw = getelementptr inbounds nuw i8, ptr %.011561514.us.i, i64 %indvars.iv2138.i
  %i.zx = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.zw, <16 x i32> %i.rg, <16 x i1> splat (i1 true), i32 1)
  %i.zy = trunc <16 x i32> %i.zx to <16 x i8>
  %i.zz = bitcast <16 x i8> %i.yf to <8 x i16>    ; 2 uses
  %i.aaa = bitcast <16 x i8> %i.yi to <8 x i16>   ; 2 uses
  %i.aab = shufflevector <8 x i16> %i.zz, <8 x i16> %i.aaa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aac = shufflevector <8 x i16> %i.zz, <8 x i16> %i.aaa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aad = bitcast <16 x i8> %i.yl to <8 x i16>   ; 2 uses
  %i.aae = bitcast <16 x i8> %i.yo to <8 x i16>   ; 2 uses
  %i.aaf = shufflevector <8 x i16> %i.aad, <8 x i16> %i.aae, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aag = shufflevector <8 x i16> %i.aad, <8 x i16> %i.aae, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aah = bitcast <16 x i8> %i.yr to <8 x i16>   ; 2 uses
  %i.aai = bitcast <16 x i8> %i.yu to <8 x i16>   ; 2 uses
  %i.aaj = shufflevector <8 x i16> %i.aah, <8 x i16> %i.aai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aak = shufflevector <8 x i16> %i.aah, <8 x i16> %i.aai, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aal = bitcast <16 x i8> %i.yx to <8 x i16>   ; 2 uses
  %i.aam = bitcast <16 x i8> %i.za to <8 x i16>   ; 2 uses
  %i.aan = shufflevector <8 x i16> %i.aal, <8 x i16> %i.aam, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aao = shufflevector <8 x i16> %i.aal, <8 x i16> %i.aam, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aap = bitcast <16 x i8> %i.zd to <8 x i16>   ; 2 uses
  %i.aaq = bitcast <16 x i8> %i.zg to <8 x i16>   ; 2 uses
  %i.aar = shufflevector <8 x i16> %i.aap, <8 x i16> %i.aaq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aas = shufflevector <8 x i16> %i.aap, <8 x i16> %i.aaq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aat = bitcast <16 x i8> %i.zj to <8 x i16>   ; 2 uses
  %i.aau = bitcast <16 x i8> %i.zm to <8 x i16>   ; 2 uses
  %i.aav = shufflevector <8 x i16> %i.aat, <8 x i16> %i.aau, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aaw = shufflevector <8 x i16> %i.aat, <8 x i16> %i.aau, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
end_hunk_4
begin_hunk_5_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %.11122.lcssa.i = phi ptr [ %.01121.lcssa.i, %.preheader1509.i ], [ %scevgep2115.i, %.preheader1509.thread.i ], [ %scevgep2142.i, %.lr.ph1586.split.preheader.i ], [ %i.akh, %._crit_edge.us1592.i ]
  %.11087.lcssa.i = phi ptr [ %.01086.lcssa.i, %.preheader1509.i ], [ %scevgep2090.i, %.preheader1509.thread.i ], [ %scevgep2141.i, %.lr.ph1586.split.preheader.i ], [ %i.ajz, %._crit_edge.us1592.i ] ; 2 uses
  %i.aks = or disjoint i32 %.11204.lcssa.i, 1
  %i.akt = icmp slt i32 %i.aks, %i.p
  br i1 %i.akt, label %.lr.ph1604.i, label %.preheader1507.i

.lr.ph1604.i:                                     ; preds = %.preheader1508.i
  br i1 %i.rh, label %.lr.ph.us1608.i, label %._crit_edge1619.split.i

.lr.ph.us1608.i:                                  ; preds = %.lr.ph1604.i, %._crit_edge.us1609.i
  %.210881603.us.i = phi ptr [ %i.als, %._crit_edge.us1609.i ], [ %.11087.lcssa.i, %.lr.ph1604.i ] ; 4 uses
  %.211231602.us.i = phi ptr [ %i.alt, %._crit_edge.us1609.i ], [ %.11122.lcssa.i, %.lr.ph1604.i ] ; 4 uses
  %.411631601.us.i = phi ptr [ %.lcssa554, %._crit_edge.us1609.i ], [ %.21161.lcssa.i, %.lr.ph1604.i ] ; 2 uses
  %.212051600.us.i = phi i32 [ %i.alu, %._crit_edge.us1609.i ], [ %.11204.lcssa.i, %.lr.ph1604.i ]
  br i1 %i.ta, label %.epil.preheader, label %.lr.ph.us1608.i.new

.lr.ph.us1608.i.new:                              ; preds = %.lr.ph.us1608.i, %.lr.ph.us1608.i.new
  %indvars.iv2149.i = phi i64 [ %indvars.iv.next2150.i.1, %.lr.ph.us1608.i.new ], [ 0, %.lr.ph.us1608.i ] ; 4 uses
  %.511641599.us.i = phi ptr [ %i.alj, %.lr.ph.us1608.i.new ], [ %.411631601.us.i, %.lr.ph.us1608.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us1608.i.new ], [ 0, %.lr.ph.us1608.i ]
  %i.aku = getelementptr inbounds nuw i8, ptr %.210881603.us.i, i64 %indvars.iv2149.i
  %i.akv = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aku, <16 x i32> %i.sg, <16 x i1> splat (i1 true), i32 1)
  %i.akw = trunc <16 x i32> %i.akv to <16 x i8>
  %i.akx = getelementptr inbounds nuw i8, ptr %.211231602.us.i, i64 %indvars.iv2149.i
  %i.aky = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.akx, <16 x i32> %i.sg, <16 x i1> splat (i1 true), i32 1)
  %i.akz = trunc <16 x i32> %i.aky to <16 x i8>
  store <16 x i8> %i.akw, ptr %.511641599.us.i, align 1, !tbaa !100
  %i.ala = getelementptr inbounds nuw i8, ptr %.511641599.us.i, i64 16
  store <16 x i8> %i.akz, ptr %i.ala, align 1, !tbaa !100
  %i.alb = getelementptr inbounds nuw i8, ptr %.511641599.us.i, i64 32
  %indvars.iv.next2150.i = or disjoint i64 %indvars.iv2149.i, 1 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.210881603.us.i, i64 %indvars.iv.next2150.i
  %i.ald = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.alc, <16 x i32> %i.sg, <16 x i1> splat (i1 true), i32 1)
  %i.ale = trunc <16 x i32> %i.ald to <16 x i8>
  %i.alf = getelementptr inbounds nuw i8, ptr %.211231602.us.i, i64 %indvars.iv.next2150.i
  %i.alg = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.alf, <16 x i32> %i.sg, <16 x i1> splat (i1 true), i32 1)
  %i.alh = trunc <16 x i32> %i.alg to <16 x i8>
  store <16 x i8> %i.ale, ptr %i.alb, align 1, !tbaa !100
  %i.ali = getelementptr inbounds nuw i8, ptr %.511641599.us.i, i64 48
  store <16 x i8> %i.alh, ptr %i.ali, align 1, !tbaa !100
  %i.alj = getelementptr inbounds nuw i8, ptr %.511641599.us.i, i64 64 ; 3 uses
  %indvars.iv.next2150.i.1 = add nuw nsw i64 %indvars.iv2149.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1609.i.unr-lcssa, label %.lr.ph.us1608.i.new, !llvm.loop !442

._crit_edge.us1609.i.unr-lcssa:                   ; preds = %.lr.ph.us1608.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1609.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1609.i.unr-lcssa, %.lr.ph.us1608.i
  %indvars.iv2149.i.epil.init = phi i64 [ 0, %.lr.ph.us1608.i ], [ %indvars.iv.next2150.i.1, %._crit_edge.us1609.i.unr-lcssa ] ; 2 uses
  %.511641599.us.i.epil.init = phi ptr [ %.411631601.us.i, %.lr.ph.us1608.i ], [ %i.alj, %._crit_edge.us1609.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod559)
  %i.alk = getelementptr inbounds nuw i8, ptr %.210881603.us.i, i64 %indvars.iv2149.i.epil.init
  %i.all = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.alk, <16 x i32> %i.sg, <16 x i1> splat (i1 true), i32 1)
  %i.alm = trunc <16 x i32> %i.all to <16 x i8>
  %i.aln = getelementptr inbounds nuw i8, ptr %.211231602.us.i, i64 %indvars.iv2149.i.epil.init
  %i.alo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aln, <16 x i32> %i.sg, <16 x i1> splat (i1 true), i32 1)
  %i.alp = trunc <16 x i32> %i.alo to <16 x i8>
  store <16 x i8> %i.alm, ptr %.511641599.us.i.epil.init, align 1, !tbaa !100
  %i.alq = getelementptr inbounds nuw i8, ptr %.511641599.us.i.epil.init, i64 16
  store <16 x i8> %i.alp, ptr %i.alq, align 1, !tbaa !100
  %i.alr = getelementptr inbounds nuw i8, ptr %.511641599.us.i.epil.init, i64 32
  br label %._crit_edge.us1609.i

._crit_edge.us1609.i:                             ; preds = %._crit_edge.us1609.i.unr-lcssa, %.epil.preheader
  %.lcssa554 = phi ptr [ %i.alj, %._crit_edge.us1609.i.unr-lcssa ], [ %i.alr, %.epil.preheader ] ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.210881603.us.i, i64 %i.si ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.211231602.us.i, i64 %i.si
  %i.alu = add nuw nsw i32 %.212051600.us.i, 2    ; 3 uses
  %i.alv = or disjoint i32 %i.alu, 1
  %i.alw = icmp slt i32 %i.alv, %i.p
  br i1 %i.alw, label %.lr.ph.us1608.i, label %.preheader1507.i, !llvm.loop !443

.preheader1507.i:                                 ; preds = %._crit_edge.us1609.i, %.preheader1508.i
  %.21205.lcssa.i = phi i32 [ %.11204.lcssa.i, %.preheader1508.i ], [ %i.alu, %._crit_edge.us1609.i ] ; 2 uses
  %.41163.lcssa.i = phi ptr [ %.21161.lcssa.i, %.preheader1508.i ], [ %.lcssa554, %._crit_edge.us1609.i ]
  %.21088.lcssa.i = phi ptr [ %.11087.lcssa.i, %.preheader1508.i ], [ %i.als, %._crit_edge.us1609.i ] ; 5 uses
  %i.alx = icmp sge i32 %.21205.lcssa.i, %i.p
  %brmerge.i = or i1 %i.sm, %i.alx
  br i1 %brmerge.i, label %._crit_edge1619.split.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.preheader1507.i, %._crit_edge.i
  %.611651617.i = phi ptr [ %.lcssa557, %._crit_edge.i ], [ %.41163.lcssa.i, %.preheader1507.i ] ; 2 uses
  %.312061616.i = phi i32 [ %i.amc, %._crit_edge.i ], [ %.21205.lcssa.i, %.preheader1507.i ]
  br i1 %i.tb, label %.epil.preheader560, label %.lr.ph.i31.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i31.new
  br i1 %lcmp.mod562.not, label %._crit_edge.i, label %.epil.preheader560

.epil.preheader560:                               ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i31
  %indvars.iv2154.i.epil.init = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next2155.i.3, %._crit_edge.i.unr-lcssa ]
  %.711661615.i.epil.init = phi ptr [ %.611651617.i, %.lr.ph.i31 ], [ %i.amv, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod564)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.epil.preheader560
  %indvars.iv2154.i.epil = phi i64 [ %indvars.iv2154.i.epil.init, %.epil.preheader560 ], [ %indvars.iv.next2155.i.epil, %bb.ds ] ; 2 uses
  %.711661615.i.epil = phi ptr [ %.711661615.i.epil.init, %.epil.preheader560 ], [ %i.amb, %bb.ds ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader560 ], [ %epil.iter.next, %bb.ds ]
  %i.aly = getelementptr inbounds nuw i8, ptr %.21088.lcssa.i, i64 %indvars.iv2154.i.epil
  %i.alz = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aly, <16 x i32> %i.sl, <16 x i1> splat (i1 true), i32 1)
  %i.ama = trunc <16 x i32> %i.alz to <16 x i8>
  store <16 x i8> %i.ama, ptr %.711661615.i.epil, align 1, !tbaa !100
  %i.amb = getelementptr inbounds nuw i8, ptr %.711661615.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2155.i.epil = add nuw nsw i64 %indvars.iv2154.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter561
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.ds, !llvm.loop !444

._crit_edge.i:                                    ; preds = %bb.ds, %._crit_edge.i.unr-lcssa
  %.lcssa557 = phi ptr [ %i.amv, %._crit_edge.i.unr-lcssa ], [ %i.amb, %bb.ds ]
  %i.amc = add nuw nsw i32 %.312061616.i, 1       ; 2 uses
  %exitcond2159.not.i = icmp eq i32 %i.amc, %i.p
  br i1 %exitcond2159.not.i, label %._crit_edge1619.split.i, label %.lr.ph.i31, !llvm.loop !445

.lr.ph.i31.new:                                   ; preds = %.lr.ph.i31, %.lr.ph.i31.new
  %indvars.iv2154.i = phi i64 [ %indvars.iv.next2155.i.3, %.lr.ph.i31.new ], [ 0, %.lr.ph.i31 ] ; 5 uses
  %.711661615.i = phi ptr [ %i.amv, %.lr.ph.i31.new ], [ %.611651617.i, %.lr.ph.i31 ] ; 5 uses
  %niter566 = phi i64 [ %niter566.next.3, %.lr.ph.i31.new ], [ 0, %.lr.ph.i31 ]
  %i.amd = getelementptr inbounds nuw i8, ptr %.21088.lcssa.i, i64 %indvars.iv2154.i
  %i.ame = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.amd, <16 x i32> %i.sl, <16 x i1> splat (i1 true), i32 1)
  %i.amf = trunc <16 x i32> %i.ame to <16 x i8>
  store <16 x i8> %i.amf, ptr %.711661615.i, align 1, !tbaa !100
  %i.amg = getelementptr inbounds nuw i8, ptr %.711661615.i, i64 16
  %i.amh = getelementptr inbounds nuw i8, ptr %.21088.lcssa.i, i64 %indvars.iv2154.i
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 1
  %i.amj = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ami, <16 x i32> %i.sl, <16 x i1> splat (i1 true), i32 1)
  %i.amk = trunc <16 x i32> %i.amj to <16 x i8>
  store <16 x i8> %i.amk, ptr %i.amg, align 1, !tbaa !100
  %i.aml = getelementptr inbounds nuw i8, ptr %.711661615.i, i64 32
  %i.amm = getelementptr inbounds nuw i8, ptr %.21088.lcssa.i, i64 %indvars.iv2154.i
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 2
  %i.amo = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.amn, <16 x i32> %i.sl, <16 x i1> splat (i1 true), i32 1)
  %i.amp = trunc <16 x i32> %i.amo to <16 x i8>
  store <16 x i8> %i.amp, ptr %i.aml, align 1, !tbaa !100
  %i.amq = getelementptr inbounds nuw i8, ptr %.711661615.i, i64 48
  %i.amr = getelementptr inbounds nuw i8, ptr %.21088.lcssa.i, i64 %indvars.iv2154.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 3
  %i.amt = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.ams, <16 x i32> %i.sl, <16 x i1> splat (i1 true), i32 1)
  %i.amu = trunc <16 x i32> %i.amt to <16 x i8>
  store <16 x i8> %i.amu, ptr %i.amq, align 1, !tbaa !100
  %i.amv = getelementptr inbounds nuw i8, ptr %.711661615.i, i64 64 ; 3 uses
  %indvars.iv.next2155.i.3 = add nuw nsw i64 %indvars.iv2154.i, 4 ; 2 uses
  %niter566.next.3 = add i64 %niter566, 4         ; 2 uses
  %niter566.ncmp.3 = icmp eq i64 %niter566.next.3, %unroll_iter565
  br i1 %niter566.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i31.new, !llvm.loop !446

._crit_edge1619.split.i:                          ; preds = %._crit_edge.i, %.preheader1507.i, %.lr.ph1604.i
  %indvars.iv.next2161.i = add nuw nsw i64 %indvars.iv2160.i, 16 ; 3 uses
  %i.amw = or disjoint i64 %indvars.iv.next2161.i, 15
  %i.amx = icmp samesign ult i64 %i.amw, %i.sw
  %indvars.iv.next.i32 = add i32 %indvars.iv.i30, %i.sr
  %indvars.iv.next2114.i = add i32 %indvars.iv2113.i, %i.sr
  br i1 %i.amx, label %_ZN4ncnn3MatD2Ev.exit1286.i, label %.preheader1506.loopexit.i, !llvm.loop !447

.preheader1501.loopexit.i:                        ; preds = %._crit_edge1715.split.i
  %i.amy = trunc nuw nsw i64 %indvars.iv.next2217.i to i32
  br label %.preheader1501.i

.preheader1501.i:                                 ; preds = %.preheader1501.loopexit.i, %.preheader1506.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1506.i ], [ %i.amy, %.preheader1501.loopexit.i ] ; 4 uses
  %i.amz = or disjoint i32 %.1.lcssa.i, 3         ; 2 uses
  %i.ana = icmp slt i32 %i.amz, %i.o
  br i1 %i.ana, label %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i, label %.preheader1495.i

_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i:                ; preds = %.preheader1501.i
  %i.anb = mul i32 %i.p, %i.j                     ; 10 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ane = icmp sgt i32 %i.p, 15
  %i.anf = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.ang = sext i32 %i.j to i64                   ; 48 uses
  %i.anh = shl i32 %i.j, 1
  %i.ani = sext i32 %i.anh to i64                 ; 41 uses
  %i.anj = shl i32 %i.j, 4
  %i.ank = sext i32 %i.anj to i64                 ; 5 uses
  %i.anl = shl i32 %i.j, 3
  %i.anm = sext i32 %i.anl to i64                 ; 5 uses
  %i.ann = add nsw i32 %i.anb, %i.j
  %i.ano = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.j, i64 1
  %i.anp = insertelement <4 x i32> %i.ano, i32 %i.anb, i64 2
  %i.anq = insertelement <4 x i32> %i.anp, i32 %i.ann, i64 3 ; 2 uses
  %i.anr = shl nsw i32 %i.anb, 1
  %i.ans = insertelement <4 x i32> poison, i32 %i.anr, i64 0
  %i.ant = shufflevector <4 x i32> %i.ans, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anu = add <4 x i32> %i.ant, %i.anq
  %i.anv = shufflevector <4 x i32> %i.anq, <4 x i32> %i.anu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.anw = insertelement <4 x i32> poison, i32 %i.anb, i64 0
  %i.anx = shufflevector <4 x i32> %i.anw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.any = mul <4 x i32> %i.anx, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.anz = icmp slt i32 %i.j, 1
  %i.aoa = add i32 %i.p, -16                      ; 2 uses
  %i.aob = lshr i32 %i.aoa, 4
  %narrow2368.i = add nuw nsw i32 %i.aob, 1
  %i.aoc = zext nneg i32 %narrow2368.i to i64
  %i.aod = mul nsw i64 %i.aoc, %i.ank
  %i.aoe = mul i32 %i.anb, %.1.lcssa.i
  %i.aof = shl i32 %i.anb, 2
  %i.aog = and i32 %i.aoa, -16
  %i.aoh = add nuw nsw i32 %i.aog, 16             ; 4 uses
  %i.aoi = add i32 %i.p, -8
  %i.aoj = zext nneg i32 %.1.lcssa.i to i64
  %i.aok = sext i32 %i.o to i64
  %i.aol = or disjoint i32 %i.aoh, 7
  %i.aom = icmp slt i32 %i.aol, %i.p
  %wide.trip.count2238.i = zext i32 %i.j to i64   ; 7 uses
  %i.aon = add nsw i64 %wide.trip.count2238.i, -1 ; 2 uses
  %xtraiter584 = and i64 %wide.trip.count2238.i, 3 ; 3 uses
  %i.aoo = icmp ult i64 %i.aon, 3
  %unroll_iter589 = and i64 %wide.trip.count2238.i, 2147483644
  %lcmp.mod586.not = icmp eq i64 %xtraiter584, 0
  %lcmp.mod588 = icmp ne i64 %xtraiter584, 0
  %xtraiter592 = and i64 %wide.trip.count2238.i, 3 ; 3 uses
  %i.aop = icmp ult i64 %i.aon, 3
  %unroll_iter597 = and i64 %wide.trip.count2238.i, 2147483644
  %lcmp.mod594.not = icmp eq i64 %xtraiter592, 0
  %lcmp.mod596 = icmp ne i64 %xtraiter592, 0
  br label %_ZN4ncnn3MatD2Ev.exit1284.i

_ZN4ncnn3MatD2Ev.exit1285.i:                      ; preds = %._crit_edge1715.split.i, %_ZN4ncnn3MatD2Ev.exit1285.lr.ph.i
  %indvars.iv2216.i = phi i64 [ %i.uz, %_ZN4ncnn3MatD2Ev.exit1285.lr.ph.i ], [ %indvars.iv.next2217.i, %._crit_edge1715.split.i ] ; 2 uses
  %indvars.iv2214.i = phi i32 [ %i.va, %_ZN4ncnn3MatD2Ev.exit1285.lr.ph.i ], [ %indvars.iv.next2215.i, %._crit_edge1715.split.i ] ; 2 uses
  %indvars.iv2164.i = phi i32 [ %i.uu, %_ZN4ncnn3MatD2Ev.exit1285.lr.ph.i ], [ %indvars.iv.next2165.i, %._crit_edge1715.split.i ] ; 2 uses
  %i.aoq = sext i32 %indvars.iv2164.i to i64
  %i.aor = load ptr, ptr %i.av, align 8, !tbaa !18 ; 9 uses
  %i.aos = trunc nuw i64 %indvars.iv2216.i to i32 ; 9 uses
  %i.aot = mul i32 %i.tf, %i.aos
  %i.aou = sext i32 %i.aot to i64
  %i.aov = getelementptr inbounds i8, ptr %i.aor, i64 %i.aou ; 2 uses
  %i.aow = add i32 %i.aos, 1
  %i.aox = mul i32 %i.aow, %i.tf
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds i8, ptr %i.aor, i64 %i.aoy ; 2 uses
  %i.apa = add i32 %i.aos, 2
  %i.apb = mul i32 %i.apa, %i.tf
  %i.apc = sext i32 %i.apb to i64
  %i.apd = getelementptr inbounds i8, ptr %i.aor, i64 %i.apc ; 2 uses
  %i.ape = add i32 %i.aos, 3
  %i.apf = mul i32 %i.ape, %i.tf
  %i.apg = sext i32 %i.apf to i64
  %i.aph = getelementptr inbounds i8, ptr %i.aor, i64 %i.apg ; 2 uses
  %i.api = add i32 %i.aos, 4
  %i.apj = mul i32 %i.api, %i.tf
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds i8, ptr %i.aor, i64 %i.apk ; 2 uses
  %i.apm = add i32 %i.aos, 5
  %i.apn = mul i32 %i.apm, %i.tf
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr inbounds i8, ptr %i.aor, i64 %i.apo ; 2 uses
  %i.apq = add i32 %i.aos, 6
  %i.apr = mul i32 %i.apq, %i.tf
  %i.aps = sext i32 %i.apr to i64
  %i.apt = getelementptr inbounds i8, ptr %i.aor, i64 %i.aps ; 2 uses
  %i.apu = mul i32 %indvars.iv2214.i, %i.tf
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds i8, ptr %i.aor, i64 %i.apv ; 2 uses
  %i.apx = lshr i32 %i.aos, 4
  %i.apy = lshr i32 %i.aos, 3
  %i.apz = and i32 %i.apy, 1
  %i.aqa = add nuw nsw i32 %i.apz, %i.apx
  %i.aqb = load ptr, ptr %i.km, align 8, !tbaa !18, !noalias !448
  %i.aqc = load i64, ptr %i.tg, align 8, !tbaa !20, !noalias !448
  %i.aqd = zext nneg i32 %i.aqa to i64
  %i.aqe = mul i64 %i.aqc, %i.aqd
  %i.aqf = load i64, ptr %i.th, align 8, !tbaa !65, !noalias !448
  %i.aqg = mul i64 %i.aqe, %i.aqf
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqb, i64 %i.aqg ; 4 uses
  br i1 %i.ti, label %.lr.ph1638.i, label %.preheader1505.i

.lr.ph1638.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1285.i
  br i1 %i.tm, label %.lr.ph1625.us.i, label %.preheader1505.thread.i

.lr.ph1625.us.i:                                  ; preds = %.lr.ph1638.i, %._crit_edge1626.us.i
  %.012231637.us.i = phi i32 [ %i.atk, %._crit_edge1626.us.i ], [ 0, %.lr.ph1638.i ]
  %.012271636.us.i = phi ptr [ %i.atb, %._crit_edge1626.us.i ], [ %i.aqh, %.lr.ph1638.i ]
  %.012361635.us.i = phi ptr [ %i.atj, %._crit_edge1626.us.i ], [ %i.apw, %.lr.ph1638.i ] ; 2 uses
  %.012381634.us.i = phi ptr [ %i.ati, %._crit_edge1626.us.i ], [ %i.apt, %.lr.ph1638.i ] ; 2 uses
  %.012401633.us.i = phi ptr [ %i.ath, %._crit_edge1626.us.i ], [ %i.app, %.lr.ph1638.i ] ; 2 uses
  %.012421632.us.i = phi ptr [ %i.atg, %._crit_edge1626.us.i ], [ %i.apl, %.lr.ph1638.i ] ; 2 uses
  %.012451631.us.i = phi ptr [ %i.atf, %._crit_edge1626.us.i ], [ %i.aph, %.lr.ph1638.i ] ; 2 uses
  %.012471630.us.i = phi ptr [ %i.ate, %._crit_edge1626.us.i ], [ %i.apd, %.lr.ph1638.i ] ; 2 uses
  %.012491629.us.i = phi ptr [ %i.atd, %._crit_edge1626.us.i ], [ %i.aoz, %.lr.ph1638.i ] ; 2 uses
  %.012511628.us.i = phi ptr [ %i.atc, %._crit_edge1626.us.i ], [ %i.aov, %.lr.ph1638.i ] ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.lr.ph1625.us.i
  %indvars.iv2189.i = phi i64 [ 0, %.lr.ph1625.us.i ], [ %indvars.iv.next2190.i, %bb.dt ] ; 9 uses
  %.112281622.us.i = phi ptr [ %.012271636.us.i, %.lr.ph1625.us.i ], [ %i.atb, %bb.dt ] ; 9 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.012511628.us.i, i64 %indvars.iv2189.i
  %i.aqj = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aqi, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.aqk = trunc <16 x i32> %i.aqj to <16 x i8>
  %i.aql = getelementptr inbounds nuw i8, ptr %.012491629.us.i, i64 %indvars.iv2189.i
  %i.aqm = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aql, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.aqn = trunc <16 x i32> %i.aqm to <16 x i8>
  %i.aqo = getelementptr inbounds nuw i8, ptr %.012471630.us.i, i64 %indvars.iv2189.i
  %i.aqp = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aqo, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.aqq = trunc <16 x i32> %i.aqp to <16 x i8>
  %i.aqr = getelementptr inbounds nuw i8, ptr %.012451631.us.i, i64 %indvars.iv2189.i
  %i.aqs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aqr, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.aqt = trunc <16 x i32> %i.aqs to <16 x i8>
  %i.aqu = getelementptr inbounds nuw i8, ptr %.012421632.us.i, i64 %indvars.iv2189.i
  %i.aqv = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aqu, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.aqw = trunc <16 x i32> %i.aqv to <16 x i8>
  %i.aqx = getelementptr inbounds nuw i8, ptr %.012401633.us.i, i64 %indvars.iv2189.i
  %i.aqy = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.aqx, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.aqz = trunc <16 x i32> %i.aqy to <16 x i8>
  %i.ara = getelementptr inbounds nuw i8, ptr %.012381634.us.i, i64 %indvars.iv2189.i
  %i.arb = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ara, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.arc = trunc <16 x i32> %i.arb to <16 x i8>
  %i.ard = getelementptr inbounds nuw i8, ptr %.012361635.us.i, i64 %indvars.iv2189.i
  %i.are = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ard, <16 x i32> %i.tl, <16 x i1> splat (i1 true), i32 1)
  %i.arf = trunc <16 x i32> %i.are to <16 x i8>
  %i.arg = bitcast <16 x i8> %i.aqk to <8 x i16>  ; 2 uses
  %i.arh = bitcast <16 x i8> %i.aqn to <8 x i16>  ; 2 uses
  %i.ari = shufflevector <8 x i16> %i.arg, <8 x i16> %i.arh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arj = shufflevector <8 x i16> %i.arg, <8 x i16> %i.arh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ark = bitcast <16 x i8> %i.aqq to <8 x i16>  ; 2 uses
  %i.arl = bitcast <16 x i8> %i.aqt to <8 x i16>  ; 2 uses
  %i.arm = shufflevector <8 x i16> %i.ark, <8 x i16> %i.arl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arn = shufflevector <8 x i16> %i.ark, <8 x i16> %i.arl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aro = bitcast <16 x i8> %i.aqw to <8 x i16>  ; 2 uses
  %i.arp = bitcast <16 x i8> %i.aqz to <8 x i16>  ; 2 uses
  %i.arq = shufflevector <8 x i16> %i.aro, <8 x i16> %i.arp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arr = shufflevector <8 x i16> %i.aro, <8 x i16> %i.arp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ars = bitcast <16 x i8> %i.arc to <8 x i16>  ; 2 uses
  %i.art = bitcast <16 x i8> %i.arf to <8 x i16>  ; 2 uses
  %i.aru = shufflevector <8 x i16> %i.ars, <8 x i16> %i.art, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arv = shufflevector <8 x i16> %i.ars, <8 x i16> %i.art, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.arw = bitcast <8 x i16> %i.ari to <4 x i32>  ; 2 uses
  %i.arx = bitcast <8 x i16> %i.arm to <4 x i32>  ; 2 uses
  %i.ary = shufflevector <4 x i32> %i.arw, <4 x i32> %i.arx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.arz = shufflevector <4 x i32> %i.arw, <4 x i32> %i.arx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.asa = bitcast <8 x i16> %i.arj to <4 x i32>  ; 2 uses
  %i.asb = bitcast <8 x i16> %i.arn to <4 x i32>  ; 2 uses
  %i.asc = shufflevector <4 x i32> %i.asa, <4 x i32> %i.asb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.asd = shufflevector <4 x i32> %i.asa, <4 x i32> %i.asb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ase = bitcast <8 x i16> %i.arq to <4 x i32>  ; 2 uses
  %i.asf = bitcast <8 x i16> %i.aru to <4 x i32>  ; 2 uses
  %i.asg = shufflevector <4 x i32> %i.ase, <4 x i32> %i.asf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ash = shufflevector <4 x i32> %i.ase, <4 x i32> %i.asf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.asi = bitcast <8 x i16> %i.arr to <4 x i32>  ; 2 uses
  %i.asj = bitcast <8 x i16> %i.arv to <4 x i32>  ; 2 uses
  %i.ask = shufflevector <4 x i32> %i.asi, <4 x i32> %i.asj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.asl = shufflevector <4 x i32> %i.asi, <4 x i32> %i.asj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.asm = shufflevector <4 x i32> %i.ary, <4 x i32> %i.asg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.asn = shufflevector <4 x i32> %i.ary, <4 x i32> %i.asg, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aso = shufflevector <4 x i32> %i.arz, <4 x i32> %i.ash, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.asp = shufflevector <4 x i32> %i.arz, <4 x i32> %i.ash, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.asq = shufflevector <4 x i32> %i.asc, <4 x i32> %i.ask, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.asr = shufflevector <4 x i32> %i.asc, <4 x i32> %i.ask, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ass = shufflevector <4 x i32> %i.asd, <4 x i32> %i.asl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ast = shufflevector <4 x i32> %i.asd, <4 x i32> %i.asl, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.asm, ptr %.112281622.us.i, align 1, !tbaa !100
  %i.asu = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 16
  store <4 x i32> %i.asn, ptr %i.asu, align 1, !tbaa !100
  %i.asv = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 32
  store <4 x i32> %i.aso, ptr %i.asv, align 1, !tbaa !100
  %i.asw = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 48
  store <4 x i32> %i.asp, ptr %i.asw, align 1, !tbaa !100
  %i.asx = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 64
  store <4 x i32> %i.asq, ptr %i.asx, align 1, !tbaa !100
  %i.asy = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 80
  store <4 x i32> %i.asr, ptr %i.asy, align 1, !tbaa !100
  %i.asz = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 96
  store <4 x i32> %i.ass, ptr %i.asz, align 1, !tbaa !100
  %i.ata = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 112
  store <4 x i32> %i.ast, ptr %i.ata, align 1, !tbaa !100
  %i.atb = getelementptr inbounds nuw i8, ptr %.112281622.us.i, i64 128 ; 3 uses
  %indvars.iv.next2190.i = add nuw nsw i64 %indvars.iv2189.i, 1 ; 2 uses
  %exitcond2193.not.i = icmp eq i64 %indvars.iv.next2190.i, %wide.trip.count2192.i
  br i1 %exitcond2193.not.i, label %._crit_edge1626.us.i, label %bb.dt, !llvm.loop !451

._crit_edge1626.us.i:                             ; preds = %bb.dt
  %i.atc = getelementptr inbounds nuw i8, ptr %.012511628.us.i, i64 %i.to ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %.012491629.us.i, i64 %i.to ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.012471630.us.i, i64 %i.to ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %.012451631.us.i, i64 %i.to ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %.012421632.us.i, i64 %i.to ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %.012401633.us.i, i64 %i.to ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %.012381634.us.i, i64 %i.to ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %.012361635.us.i, i64 %i.to ; 2 uses
  %i.atk = add nuw nsw i32 %.012231637.us.i, 16   ; 2 uses
  %i.atl = or disjoint i32 %i.atk, 15
  %i.atm = icmp slt i32 %i.atl, %i.p
  br i1 %i.atm, label %.lr.ph1625.us.i, label %.preheader1505.i, !llvm.loop !452

.preheader1505.i:                                 ; preds = %._crit_edge1626.us.i, %_ZN4ncnn3MatD2Ev.exit1285.i
  %.01251.lcssa.i = phi ptr [ %i.aov, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.atc, %._crit_edge1626.us.i ] ; 3 uses
  %.01249.lcssa.i = phi ptr [ %i.aoz, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.atd, %._crit_edge1626.us.i ]
  %.01247.lcssa.i = phi ptr [ %i.apd, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.ate, %._crit_edge1626.us.i ]
  %.01245.lcssa.i = phi ptr [ %i.aph, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.atf, %._crit_edge1626.us.i ]
  %.01242.lcssa.i = phi ptr [ %i.apl, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.atg, %._crit_edge1626.us.i ]
  %.01240.lcssa.i = phi ptr [ %i.app, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.ath, %._crit_edge1626.us.i ]
  %.01238.lcssa.i = phi ptr [ %i.apt, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.ati, %._crit_edge1626.us.i ]
  %.01236.lcssa.i = phi ptr [ %i.apw, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.atj, %._crit_edge1626.us.i ]
  %.01227.lcssa.i = phi ptr [ %i.aqh, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.atb, %._crit_edge1626.us.i ] ; 3 uses
  %.01223.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1285.i ], [ %i.ux, %._crit_edge1626.us.i ] ; 4 uses
  %i.atn = or disjoint i32 %.01223.lcssa.i, 7
  %i.ato = icmp slt i32 %i.atn, %i.p
  br i1 %i.ato, label %.preheader1502.lr.ph.i, label %.preheader1504.i
end_hunk_5
begin_hunk_6_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.bbu = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bbt, <16 x i32> %i.ul, <16 x i1> splat (i1 true), i32 1)
  %i.bbv = trunc <16 x i32> %i.bbu to <16 x i8>
  store <16 x i8> %i.bbv, ptr %.612331690.us.i, align 1, !tbaa !100
  %i.bbw = getelementptr inbounds nuw i8, ptr %.612331690.us.i, i64 16
  %i.bbx = getelementptr inbounds nuw i8, ptr %.212531696.us.i, i64 %indvars.iv2203.i
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 1
  %i.bbz = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bby, <16 x i32> %i.ul, <16 x i1> splat (i1 true), i32 1)
  %i.bca = trunc <16 x i32> %i.bbz to <16 x i8>
  store <16 x i8> %i.bca, ptr %i.bbw, align 1, !tbaa !100
  %i.bcb = getelementptr inbounds nuw i8, ptr %.612331690.us.i, i64 32
  %i.bcc = getelementptr inbounds nuw i8, ptr %.212531696.us.i, i64 %indvars.iv2203.i
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 2
  %i.bce = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bcd, <16 x i32> %i.ul, <16 x i1> splat (i1 true), i32 1)
  %i.bcf = trunc <16 x i32> %i.bce to <16 x i8>
  store <16 x i8> %i.bcf, ptr %i.bcb, align 1, !tbaa !100
  %i.bcg = getelementptr inbounds nuw i8, ptr %.612331690.us.i, i64 48
  %i.bch = getelementptr inbounds nuw i8, ptr %.212531696.us.i, i64 %indvars.iv2203.i
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 3
  %i.bcj = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bci, <16 x i32> %i.ul, <16 x i1> splat (i1 true), i32 1)
  %i.bck = trunc <16 x i32> %i.bcj to <16 x i8>
  store <16 x i8> %i.bck, ptr %i.bcg, align 1, !tbaa !100
  %i.bcl = getelementptr inbounds nuw i8, ptr %.612331690.us.i, i64 64 ; 3 uses
  %indvars.iv.next2204.i.3 = add nuw nsw i64 %indvars.iv2203.i, 4 ; 2 uses
  %niter574.next.3 = add i64 %niter574, 4         ; 2 uses
  %niter574.ncmp.3 = icmp eq i64 %niter574.next.3, %unroll_iter573
  br i1 %niter574.ncmp.3, label %._crit_edge1694.us.i.unr-lcssa, label %.lr.ph1693.us.i.new, !llvm.loop !455

._crit_edge1694.us.i.unr-lcssa:                   ; preds = %.lr.ph1693.us.i.new
  br i1 %lcmp.mod570.not, label %._crit_edge1694.us.i, label %.epil.preheader567

.epil.preheader567:                               ; preds = %._crit_edge1694.us.i.unr-lcssa, %.lr.ph1693.us.i
  %indvars.iv2203.i.epil.init = phi i64 [ 0, %.lr.ph1693.us.i ], [ %indvars.iv.next2204.i.3, %._crit_edge1694.us.i.unr-lcssa ]
  %.612331690.us.i.epil.init = phi ptr [ %.512321697.us.i, %.lr.ph1693.us.i ], [ %i.bcl, %._crit_edge1694.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod572)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.epil.preheader567
  %indvars.iv2203.i.epil = phi i64 [ %indvars.iv2203.i.epil.init, %.epil.preheader567 ], [ %indvars.iv.next2204.i.epil, %bb.dv ] ; 2 uses
  %.612331690.us.i.epil = phi ptr [ %.612331690.us.i.epil.init, %.epil.preheader567 ], [ %i.bcp, %bb.dv ] ; 2 uses
  %epil.iter569 = phi i64 [ 0, %.epil.preheader567 ], [ %epil.iter569.next, %bb.dv ]
  %i.bcm = getelementptr inbounds nuw i8, ptr %.212531696.us.i, i64 %indvars.iv2203.i.epil
  %i.bcn = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bcm, <16 x i32> %i.ul, <16 x i1> splat (i1 true), i32 1)
  %i.bco = trunc <16 x i32> %i.bcn to <16 x i8>
  store <16 x i8> %i.bco, ptr %.612331690.us.i.epil, align 1, !tbaa !100
  %i.bcp = getelementptr inbounds nuw i8, ptr %.612331690.us.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2204.i.epil = add nuw nsw i64 %indvars.iv2203.i.epil, 1
  %epil.iter569.next = add i64 %epil.iter569, 1   ; 2 uses
  %epil.iter569.cmp.not = icmp eq i64 %epil.iter569.next, %xtraiter568
  br i1 %epil.iter569.cmp.not, label %._crit_edge1694.us.i, label %bb.dv, !llvm.loop !456

._crit_edge1694.us.i:                             ; preds = %bb.dv, %._crit_edge1694.us.i.unr-lcssa
  %.lcssa529 = phi ptr [ %i.bcl, %._crit_edge1694.us.i.unr-lcssa ], [ %i.bcp, %bb.dv ] ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %.212531696.us.i, i64 %i.tr ; 2 uses
  %i.bcr = add nuw nsw i32 %.212251698.us.i, 2    ; 3 uses
  %i.bcs = or disjoint i32 %i.bcr, 1
  %i.bct = icmp slt i32 %i.bcs, %i.p
  br i1 %i.bct, label %.lr.ph1693.us.i, label %.preheader1503.i, !llvm.loop !457

.preheader1503.i:                                 ; preds = %._crit_edge1694.us.i, %.preheader1504.i
  %.21253.lcssa.i = phi ptr [ %.11252.lcssa.i, %.preheader1504.i ], [ %i.bcq, %._crit_edge1694.us.i ] ; 5 uses
  %.51232.lcssa.i = phi ptr [ %.21229.lcssa.i, %.preheader1504.i ], [ %.lcssa529, %._crit_edge1694.us.i ]
  %.21225.lcssa.i = phi i32 [ %.11224.lcssa.i, %.preheader1504.i ], [ %i.bcr, %._crit_edge1694.us.i ] ; 2 uses
  %i.bcu = icmp sge i32 %.21225.lcssa.i, %i.p
  %brmerge1924.i = or i1 %i.up, %i.bcu
  br i1 %brmerge1924.i, label %._crit_edge1715.split.i, label %.lr.ph1709.i

.lr.ph1709.i:                                     ; preds = %.preheader1503.i, %._crit_edge1710.i
  %.312261713.i = phi i32 [ %i.bdc, %._crit_edge1710.i ], [ %.21225.lcssa.i, %.preheader1503.i ]
  %.712341712.i = phi ptr [ %.lcssa532, %._crit_edge1710.i ], [ %.51232.lcssa.i, %.preheader1503.i ] ; 2 uses
  br i1 %i.vg, label %.epil.preheader575, label %.lr.ph1709.i.new

._crit_edge1710.i.unr-lcssa:                      ; preds = %.lr.ph1709.i.new
  br i1 %lcmp.mod578.not, label %._crit_edge1710.i, label %.epil.preheader575

.epil.preheader575:                               ; preds = %._crit_edge1710.i.unr-lcssa, %.lr.ph1709.i
  %indvars.iv2208.i.epil.init = phi i64 [ 0, %.lr.ph1709.i ], [ %indvars.iv.next2209.i.3, %._crit_edge1710.i.unr-lcssa ]
  %.812351706.i.epil.init = phi ptr [ %.712341712.i, %.lr.ph1709.i ], [ %i.beh, %._crit_edge1710.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod580)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %.epil.preheader575
  %indvars.iv2208.i.epil = phi i64 [ %indvars.iv2208.i.epil.init, %.epil.preheader575 ], [ %indvars.iv.next2209.i.epil, %bb.dw ] ; 2 uses
  %.812351706.i.epil = phi ptr [ %.812351706.i.epil.init, %.epil.preheader575 ], [ %i.bdb, %bb.dw ] ; 2 uses
  %epil.iter577 = phi i64 [ 0, %.epil.preheader575 ], [ %epil.iter577.next, %bb.dw ]
  %i.bcv = getelementptr inbounds nuw i8, ptr %.21253.lcssa.i, i64 %indvars.iv2208.i.epil
  %i.bcw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bcv, <8 x i32> %i.uo, <8 x i32> splat (i32 -1), i8 1)
  %i.bcx = shufflevector <8 x i32> %i.bcw, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcy = trunc <16 x i32> %i.bcx to <16 x i8>
  %i.bcz = bitcast <16 x i8> %i.bcy to <2 x i64>
  %i.bda = extractelement <2 x i64> %i.bcz, i64 0
  store i64 %i.bda, ptr %.812351706.i.epil, align 1, !tbaa !100
  %i.bdb = getelementptr inbounds nuw i8, ptr %.812351706.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2209.i.epil = add nuw nsw i64 %indvars.iv2208.i.epil, 1
  %epil.iter577.next = add i64 %epil.iter577, 1   ; 2 uses
  %epil.iter577.cmp.not = icmp eq i64 %epil.iter577.next, %xtraiter576
  br i1 %epil.iter577.cmp.not, label %._crit_edge1710.i, label %bb.dw, !llvm.loop !458

._crit_edge1710.i:                                ; preds = %bb.dw, %._crit_edge1710.i.unr-lcssa
  %.lcssa532 = phi ptr [ %i.beh, %._crit_edge1710.i.unr-lcssa ], [ %i.bdb, %bb.dw ]
  %i.bdc = add nuw nsw i32 %.312261713.i, 1       ; 2 uses
  %exitcond2213.not.i = icmp eq i32 %i.bdc, %i.p
  br i1 %exitcond2213.not.i, label %._crit_edge1715.split.i, label %.lr.ph1709.i, !llvm.loop !459

.lr.ph1709.i.new:                                 ; preds = %.lr.ph1709.i, %.lr.ph1709.i.new
  %indvars.iv2208.i = phi i64 [ %indvars.iv.next2209.i.3, %.lr.ph1709.i.new ], [ 0, %.lr.ph1709.i ] ; 5 uses
  %.812351706.i = phi ptr [ %i.beh, %.lr.ph1709.i.new ], [ %.712341712.i, %.lr.ph1709.i ] ; 5 uses
  %niter582 = phi i64 [ %niter582.next.3, %.lr.ph1709.i.new ], [ 0, %.lr.ph1709.i ]
  %i.bdd = getelementptr inbounds nuw i8, ptr %.21253.lcssa.i, i64 %indvars.iv2208.i
  %i.bde = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bdd, <8 x i32> %i.uo, <8 x i32> splat (i32 -1), i8 1)
  %i.bdf = shufflevector <8 x i32> %i.bde, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdg = trunc <16 x i32> %i.bdf to <16 x i8>
  %i.bdh = bitcast <16 x i8> %i.bdg to <2 x i64>
  %i.bdi = extractelement <2 x i64> %i.bdh, i64 0
  store i64 %i.bdi, ptr %.812351706.i, align 1, !tbaa !100
  %i.bdj = getelementptr inbounds nuw i8, ptr %.812351706.i, i64 8
  %i.bdk = getelementptr inbounds nuw i8, ptr %.21253.lcssa.i, i64 %indvars.iv2208.i
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 1
  %i.bdm = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bdl, <8 x i32> %i.uo, <8 x i32> splat (i32 -1), i8 1)
  %i.bdn = shufflevector <8 x i32> %i.bdm, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdo = trunc <16 x i32> %i.bdn to <16 x i8>
  %i.bdp = bitcast <16 x i8> %i.bdo to <2 x i64>
  %i.bdq = extractelement <2 x i64> %i.bdp, i64 0
  store i64 %i.bdq, ptr %i.bdj, align 1, !tbaa !100
  %i.bdr = getelementptr inbounds nuw i8, ptr %.812351706.i, i64 16
  %i.bds = getelementptr inbounds nuw i8, ptr %.21253.lcssa.i, i64 %indvars.iv2208.i
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 2
  %i.bdu = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bdt, <8 x i32> %i.uo, <8 x i32> splat (i32 -1), i8 1)
  %i.bdv = shufflevector <8 x i32> %i.bdu, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdw = trunc <16 x i32> %i.bdv to <16 x i8>
  %i.bdx = bitcast <16 x i8> %i.bdw to <2 x i64>
  %i.bdy = extractelement <2 x i64> %i.bdx, i64 0
  store i64 %i.bdy, ptr %i.bdr, align 1, !tbaa !100
  %i.bdz = getelementptr inbounds nuw i8, ptr %.812351706.i, i64 24
  %i.bea = getelementptr inbounds nuw i8, ptr %.21253.lcssa.i, i64 %indvars.iv2208.i
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 3
  %i.bec = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.beb, <8 x i32> %i.uo, <8 x i32> splat (i32 -1), i8 1)
  %i.bed = shufflevector <8 x i32> %i.bec, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bee = trunc <16 x i32> %i.bed to <16 x i8>
  %i.bef = bitcast <16 x i8> %i.bee to <2 x i64>
  %i.beg = extractelement <2 x i64> %i.bef, i64 0
  store i64 %i.beg, ptr %i.bdz, align 1, !tbaa !100
  %i.beh = getelementptr inbounds nuw i8, ptr %.812351706.i, i64 32 ; 3 uses
  %indvars.iv.next2209.i.3 = add nuw nsw i64 %indvars.iv2208.i, 4 ; 2 uses
  %niter582.next.3 = add i64 %niter582, 4         ; 2 uses
  %niter582.ncmp.3 = icmp eq i64 %niter582.next.3, %unroll_iter581
  br i1 %niter582.ncmp.3, label %._crit_edge1710.i.unr-lcssa, label %.lr.ph1709.i.new, !llvm.loop !460

._crit_edge1715.split.i:                          ; preds = %._crit_edge1710.i, %.preheader1503.i, %.lr.ph1699.i
  %indvars.iv.next2217.i = add nuw nsw i64 %indvars.iv2216.i, 8 ; 3 uses
  %i.bei = icmp slt i64 %indvars.iv.next2217.i, %invariant.op.i
  %indvars.iv.next2165.i = add i32 %indvars.iv2164.i, %i.uv
  %indvars.iv.next2215.i = add i32 %indvars.iv2214.i, 8
  br i1 %i.bei, label %_ZN4ncnn3MatD2Ev.exit1285.i, label %.preheader1501.loopexit.i, !llvm.loop !461

.preheader1495.loopexit.i:                        ; preds = %._crit_edge1795.split.i
  %i.bej = trunc nsw i64 %indvars.iv.next2261.i to i32
  br label %.preheader1495.i

.preheader1495.i:                                 ; preds = %.preheader1495.loopexit.i, %.preheader1501.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1501.i ], [ %i.bej, %.preheader1495.loopexit.i ] ; 4 uses
  %i.bek = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.bel = icmp slt i32 %i.bek, %i.o
  br i1 %i.bel, label %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i, label %.preheader1490.i

_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i:                ; preds = %.preheader1495.i
  %i.bem = mul i32 %i.p, %i.j                     ; 8 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bep = icmp sgt i32 %i.p, 15
  %i.beq = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.ber = shufflevector <16 x i32> %i.beq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bes = mul <16 x i32> %i.ber, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.bet = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.beu = shl i32 %i.j, 4
  %i.bev = sext i32 %i.beu to i64                 ; 3 uses
  %i.bew = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.bex = shufflevector <8 x i32> %i.bew, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bey = mul <8 x i32> %i.bex, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bez = insertelement <8 x i32> poison, i32 %i.bem, i64 0
  %i.bfa = shufflevector <8 x i32> %i.bez, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bfb = add <8 x i32> %i.bfa, %i.bey
  %i.bfc = shufflevector <8 x i32> %i.bey, <8 x i32> %i.bfb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.bfd = shl i32 %i.j, 3
  %i.bfe = sext i32 %i.bfd to i64                 ; 3 uses
  %i.bff = add nsw i32 %i.bem, %i.j
  %i.bfg = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.bem, i64 1
  %i.bfh = insertelement <4 x i32> %i.bfg, i32 %i.j, i64 2
  %i.bfi = insertelement <4 x i32> %i.bfh, i32 %i.bff, i64 3 ; 5 uses
  %i.bfj = shl i32 %i.j, 1
  %i.bfk = sext i32 %i.bfj to i64                 ; 2 uses
  %i.bfl = icmp slt i32 %i.j, 1
  %i.bfm = add i32 %i.p, -16                      ; 2 uses
  %i.bfn = lshr i32 %i.bfm, 4
  %narrow2371.i = add nuw nsw i32 %i.bfn, 1
  %i.bfo = zext nneg i32 %narrow2371.i to i64
  %i.bfp = mul nsw i64 %i.bfo, %i.bev
  %i.bfq = mul i32 %i.bem, %.2.lcssa.i
  %i.bfr = shl i32 %i.bem, 1                      ; 2 uses
  %i.bfs = mul i32 %i.bek, %i.bem
  %i.bft = and i32 %i.bfm, -16
  %i.bfu = add nuw nsw i32 %i.bft, 16             ; 4 uses
  %i.bfv = add i32 %i.p, -8
  %i.bfw = sext i32 %.2.lcssa.i to i64
  %i.bfx = sext i32 %i.o to i64
  %i.bfy = or disjoint i32 %i.bfu, 7
  %i.bfz = icmp slt i32 %i.bfy, %i.p
  %wide.trip.count2273.i = zext i32 %i.j to i64   ; 18 uses
  %i.bga = shl nuw nsw i64 %wide.trip.count2273.i, 1
  %i.bgb = add nsw i64 %wide.trip.count2273.i, -1 ; 3 uses
  %xtraiter600 = and i64 %wide.trip.count2273.i, 1
  %i.bgc = icmp eq i64 %i.bgb, 0
  %unroll_iter605 = and i64 %wide.trip.count2273.i, 2147483646
  %lcmp.mod602.not = icmp eq i64 %xtraiter600, 0
  %lcmp.mod604 = trunc i32 %i.j to i1
  %xtraiter608 = and i64 %wide.trip.count2273.i, 3 ; 3 uses
  %i.bgd = icmp ult i64 %i.bgb, 3
  %unroll_iter613 = and i64 %wide.trip.count2273.i, 2147483644
  %lcmp.mod610.not = icmp eq i64 %xtraiter608, 0
  %lcmp.mod612 = icmp ne i64 %xtraiter608, 0
  %xtraiter616 = and i64 %wide.trip.count2273.i, 3 ; 3 uses
  %i.bge = icmp ult i64 %i.bgb, 3
  %unroll_iter621 = and i64 %wide.trip.count2273.i, 2147483644
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  %lcmp.mod620 = icmp ne i64 %xtraiter616, 0
  %min.iters.check = icmp ult i32 %i.j, 8
  %min.iters.check386 = icmp ult i32 %i.j, 64
  %i.bgf = and i64 %wide.trip.count2273.i, 56
  %n.vec = and i64 %wide.trip.count2273.i, 2147483584 ; 5 uses
  %i.bgg = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2273.i
  %min.epilog.iters.check = icmp eq i64 %i.bgf, 0
  %n.vec388 = and i64 %wide.trip.count2273.i, 2147483640 ; 4 uses
  %i.bgh = shl nuw nsw i64 %n.vec388, 1
  %cmp.n395 = icmp eq i64 %n.vec388, %wide.trip.count2273.i
  %xtraiter623 = and i64 %wide.trip.count2273.i, 3 ; 2 uses
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  br label %_ZN4ncnn3MatD2Ev.exit1283.i

_ZN4ncnn3MatD2Ev.exit1284.i:                      ; preds = %._crit_edge1795.split.i, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i
  %indvars.iv2260.i = phi i64 [ %i.aoj, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i ], [ %indvars.iv.next2261.i, %._crit_edge1795.split.i ] ; 2 uses
  %indvars.iv2222.i = phi i32 [ %i.aoe, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i ], [ %indvars.iv.next2223.i, %._crit_edge1795.split.i ] ; 2 uses
  %i.bgi = phi i32 [ %i.amz, %_ZN4ncnn3MatD2Ev.exit1284.lr.ph.i ], [ %i.bwv, %._crit_edge1795.split.i ]
  %i.bgj = sext i32 %indvars.iv2222.i to i64
  %i.bgk = load ptr, ptr %i.av, align 8, !tbaa !18 ; 5 uses
  %i.bgl = trunc i64 %indvars.iv2260.i to i32     ; 6 uses
  %i.bgm = mul i32 %i.anb, %i.bgl
  %i.bgn = sext i32 %i.bgm to i64
  %i.bgo = getelementptr inbounds i8, ptr %i.bgk, i64 %i.bgn ; 2 uses
  %i.bgp = add i32 %i.bgl, 1
  %i.bgq = mul i32 %i.bgp, %i.anb
  %i.bgr = sext i32 %i.bgq to i64
  %i.bgs = getelementptr inbounds i8, ptr %i.bgk, i64 %i.bgr ; 2 uses
  %i.bgt = add i32 %i.bgl, 2
  %i.bgu = mul i32 %i.bgt, %i.anb
  %i.bgv = sext i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds i8, ptr %i.bgk, i64 %i.bgv ; 2 uses
  %i.bgx = mul i32 %i.bgi, %i.anb
  %i.bgy = sext i32 %i.bgx to i64
  %i.bgz = getelementptr inbounds i8, ptr %i.bgk, i64 %i.bgy ; 2 uses
  %i.bha = lshr i32 %i.bgl, 4
  %i.bhb = lshr i32 %i.bgl, 3
  %i.bhc = and i32 %i.bhb, 1
  %i.bhd = add nuw nsw i32 %i.bhc, %i.bha
  %i.bhe = lshr i32 %i.bgl, 2
  %i.bhf = and i32 %i.bhe, 1
  %i.bhg = add nuw nsw i32 %i.bhd, %i.bhf
  %i.bhh = load ptr, ptr %i.km, align 8, !tbaa !18, !noalias !462
  %i.bhi = load i64, ptr %i.anc, align 8, !tbaa !20, !noalias !462
  %i.bhj = zext nneg i32 %i.bhg to i64
  %i.bhk = mul i64 %i.bhi, %i.bhj
  %i.bhl = load i64, ptr %i.and, align 8, !tbaa !65, !noalias !462
  %i.bhm = mul i64 %i.bhk, %i.bhl
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhh, i64 %i.bhm ; 4 uses
  br i1 %i.ane, label %.preheader1497.lr.ph.i, label %.preheader1500.i

.preheader1497.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1284.i
  br i1 %i.anf, label %.preheader1497.us.i, label %.preheader1500.thread.i

.preheader1497.us.i:                              ; preds = %.preheader1497.lr.ph.i, %._crit_edge1727.us.i
  %.011791734.us.i = phi i32 [ %i.bpc, %._crit_edge1727.us.i ], [ 0, %.preheader1497.lr.ph.i ]
  %.011831733.us.i = phi ptr [ %i.box, %._crit_edge1727.us.i ], [ %i.bhn, %.preheader1497.lr.ph.i ]
  %.011911732.us.i = phi ptr [ %i.bpb, %._crit_edge1727.us.i ], [ %i.bgz, %.preheader1497.lr.ph.i ] ; 2 uses
  %.011941731.us.i = phi ptr [ %i.bpa, %._crit_edge1727.us.i ], [ %i.bgw, %.preheader1497.lr.ph.i ] ; 2 uses
  %.011971730.us.i = phi ptr [ %i.boz, %._crit_edge1727.us.i ], [ %i.bgs, %.preheader1497.lr.ph.i ] ; 2 uses
  %.012001729.us.i = phi ptr [ %i.boy, %._crit_edge1727.us.i ], [ %i.bgo, %.preheader1497.lr.ph.i ] ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %.preheader1497.us.i
  %indvars.iv2235.i = phi i64 [ 0, %.preheader1497.us.i ], [ %indvars.iv.next2236.i, %bb.dx ] ; 5 uses
  %.111841724.us.i = phi ptr [ %.011831733.us.i, %.preheader1497.us.i ], [ %i.box, %bb.dx ] ; 65 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %.012001729.us.i, i64 %indvars.iv2235.i ; 3 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.011971730.us.i, i64 %indvars.iv2235.i ; 3 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %.011941731.us.i, i64 %indvars.iv2235.i ; 3 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %.011911732.us.i, i64 %indvars.iv2235.i ; 3 uses
  %i.bhs = load i8, ptr %i.bho, align 1, !tbaa !100
  store i8 %i.bhs, ptr %.111841724.us.i, align 1, !tbaa !100
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bho, i64 %i.ang
  %i.bhu = load i8, ptr %i.bht, align 1, !tbaa !100
  %i.bhv = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 1
  store i8 %i.bhu, ptr %i.bhv, align 1, !tbaa !100
  %i.bhw = load i8, ptr %i.bhp, align 1, !tbaa !100
  %i.bhx = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 2
  store i8 %i.bhw, ptr %i.bhx, align 1, !tbaa !100
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.ang
  %i.bhz = load i8, ptr %i.bhy, align 1, !tbaa !100
  %i.bia = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 3
  store i8 %i.bhz, ptr %i.bia, align 1, !tbaa !100
  %i.bib = load i8, ptr %i.bhq, align 1, !tbaa !100
  %i.bic = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 4
  store i8 %i.bib, ptr %i.bic, align 1, !tbaa !100
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.ang
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !100
  %i.bif = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 5
  store i8 %i.bie, ptr %i.bif, align 1, !tbaa !100
  %i.big = load i8, ptr %i.bhr, align 1, !tbaa !100
  %i.bih = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 6
  store i8 %i.big, ptr %i.bih, align 1, !tbaa !100
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhr, i64 %i.ang
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !100
  %i.bik = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 7
  store i8 %i.bij, ptr %i.bik, align 1, !tbaa !100
  %i.bil = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 8
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bho, i64 %i.ani ; 3 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.ani ; 3 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %i.ani ; 3 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bhr, i64 %i.ani ; 3 uses
  %i.biq = load i8, ptr %i.bim, align 1, !tbaa !100
  store i8 %i.biq, ptr %i.bil, align 1, !tbaa !100
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.ang
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !100
  %i.bit = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 9
  store i8 %i.bis, ptr %i.bit, align 1, !tbaa !100
  %i.biu = load i8, ptr %i.bin, align 1, !tbaa !100
  %i.biv = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 10
  store i8 %i.biu, ptr %i.biv, align 1, !tbaa !100
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bin, i64 %i.ang
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !100
  %i.biy = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 11
  store i8 %i.bix, ptr %i.biy, align 1, !tbaa !100
  %i.biz = load i8, ptr %i.bio, align 1, !tbaa !100
  %i.bja = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 12
  store i8 %i.biz, ptr %i.bja, align 1, !tbaa !100
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.ang
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !100
  %i.bjd = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 13
  store i8 %i.bjc, ptr %i.bjd, align 1, !tbaa !100
  %i.bje = load i8, ptr %i.bip, align 1, !tbaa !100
  %i.bjf = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 14
  store i8 %i.bje, ptr %i.bjf, align 1, !tbaa !100
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bip, i64 %i.ang
  %i.bjh = load i8, ptr %i.bjg, align 1, !tbaa !100
  %i.bji = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 15
  store i8 %i.bjh, ptr %i.bji, align 1, !tbaa !100
  %i.bjj = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 16
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.ani ; 3 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bin, i64 %i.ani ; 3 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bio, i64 %i.ani ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bip, i64 %i.ani ; 3 uses
  %i.bjo = load i8, ptr %i.bjk, align 1, !tbaa !100
  store i8 %i.bjo, ptr %i.bjj, align 1, !tbaa !100
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjk, i64 %i.ang
  %i.bjq = load i8, ptr %i.bjp, align 1, !tbaa !100
  %i.bjr = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 17
  store i8 %i.bjq, ptr %i.bjr, align 1, !tbaa !100
  %i.bjs = load i8, ptr %i.bjl, align 1, !tbaa !100
  %i.bjt = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 18
  store i8 %i.bjs, ptr %i.bjt, align 1, !tbaa !100
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjl, i64 %i.ang
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !100
  %i.bjw = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 19
  store i8 %i.bjv, ptr %i.bjw, align 1, !tbaa !100
  %i.bjx = load i8, ptr %i.bjm, align 1, !tbaa !100
  %i.bjy = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 20
  store i8 %i.bjx, ptr %i.bjy, align 1, !tbaa !100
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.ang
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !100
  %i.bkb = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 21
  store i8 %i.bka, ptr %i.bkb, align 1, !tbaa !100
  %i.bkc = load i8, ptr %i.bjn, align 1, !tbaa !100
  %i.bkd = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 22
  store i8 %i.bkc, ptr %i.bkd, align 1, !tbaa !100
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %i.ang
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !100
  %i.bkg = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 23
  store i8 %i.bkf, ptr %i.bkg, align 1, !tbaa !100
  %i.bkh = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 24
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bjk, i64 %i.ani ; 3 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjl, i64 %i.ani ; 3 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.ani ; 3 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %i.ani ; 3 uses
  %i.bkm = load i8, ptr %i.bki, align 1, !tbaa !100
  store i8 %i.bkm, ptr %i.bkh, align 1, !tbaa !100
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.ang
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !100
  %i.bkp = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 25
  store i8 %i.bko, ptr %i.bkp, align 1, !tbaa !100
  %i.bkq = load i8, ptr %i.bkj, align 1, !tbaa !100
  %i.bkr = getelementptr inbounds nuw i8, ptr %.111841724.us.i, i64 26
  store i8 %i.bkq, ptr %i.bkr, align 1, !tbaa !100
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %i.ang
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !100
end_hunk_6
begin_hunk_7_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.btv = getelementptr inbounds nuw i8, ptr %.711901770.us.i, i64 8
  %i.btw = getelementptr inbounds nuw i8, ptr %.212021776.us.i, i64 %indvars.iv2249.i
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 1
  %i.bty = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.btx, <8 x i32> %i.anv, <8 x i32> splat (i32 -1), i8 1)
  %i.btz = shufflevector <8 x i32> %i.bty, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bua = trunc <16 x i32> %i.btz to <16 x i8>
  %i.bub = bitcast <16 x i8> %i.bua to <2 x i64>
  %i.buc = extractelement <2 x i64> %i.bub, i64 0
  store i64 %i.buc, ptr %i.btv, align 1, !tbaa !100
  %i.bud = getelementptr inbounds nuw i8, ptr %.711901770.us.i, i64 16
  %i.bue = getelementptr inbounds nuw i8, ptr %.212021776.us.i, i64 %indvars.iv2249.i
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 2
  %i.bug = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.buf, <8 x i32> %i.anv, <8 x i32> splat (i32 -1), i8 1)
  %i.buh = shufflevector <8 x i32> %i.bug, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bui = trunc <16 x i32> %i.buh to <16 x i8>
  %i.buj = bitcast <16 x i8> %i.bui to <2 x i64>
  %i.buk = extractelement <2 x i64> %i.buj, i64 0
  store i64 %i.buk, ptr %i.bud, align 1, !tbaa !100
  %i.bul = getelementptr inbounds nuw i8, ptr %.711901770.us.i, i64 24
  %i.bum = getelementptr inbounds nuw i8, ptr %.212021776.us.i, i64 %indvars.iv2249.i
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 3
  %i.buo = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.bun, <8 x i32> %i.anv, <8 x i32> splat (i32 -1), i8 1)
  %i.bup = shufflevector <8 x i32> %i.buo, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buq = trunc <16 x i32> %i.bup to <16 x i8>
  %i.bur = bitcast <16 x i8> %i.buq to <2 x i64>
  %i.bus = extractelement <2 x i64> %i.bur, i64 0
  store i64 %i.bus, ptr %i.bul, align 1, !tbaa !100
  %i.but = getelementptr inbounds nuw i8, ptr %.711901770.us.i, i64 32 ; 3 uses
  %indvars.iv.next2250.i.3 = add nuw nsw i64 %indvars.iv2249.i, 4 ; 2 uses
  %niter590.next.3 = add i64 %niter590, 4         ; 2 uses
  %niter590.ncmp.3 = icmp eq i64 %niter590.next.3, %unroll_iter589
  br i1 %niter590.ncmp.3, label %._crit_edge1774.us.i.unr-lcssa, label %.lr.ph1773.us.i.new, !llvm.loop !469

._crit_edge1774.us.i.unr-lcssa:                   ; preds = %.lr.ph1773.us.i.new
  br i1 %lcmp.mod586.not, label %._crit_edge1774.us.i, label %.epil.preheader583

.epil.preheader583:                               ; preds = %._crit_edge1774.us.i.unr-lcssa, %.lr.ph1773.us.i
  %indvars.iv2249.i.epil.init = phi i64 [ 0, %.lr.ph1773.us.i ], [ %indvars.iv.next2250.i.3, %._crit_edge1774.us.i.unr-lcssa ]
  %.711901770.us.i.epil.init = phi ptr [ %.611891777.us.i, %.lr.ph1773.us.i ], [ %i.but, %._crit_edge1774.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod588)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %.epil.preheader583
  %indvars.iv2249.i.epil = phi i64 [ %indvars.iv2249.i.epil.init, %.epil.preheader583 ], [ %indvars.iv.next2250.i.epil, %bb.dz ] ; 2 uses
  %.711901770.us.i.epil = phi ptr [ %.711901770.us.i.epil.init, %.epil.preheader583 ], [ %i.bva, %bb.dz ] ; 2 uses
  %epil.iter585 = phi i64 [ 0, %.epil.preheader583 ], [ %epil.iter585.next, %bb.dz ]
  %i.buu = getelementptr inbounds nuw i8, ptr %.212021776.us.i, i64 %indvars.iv2249.i.epil
  %i.buv = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.buu, <8 x i32> %i.anv, <8 x i32> splat (i32 -1), i8 1)
  %i.buw = shufflevector <8 x i32> %i.buv, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bux = trunc <16 x i32> %i.buw to <16 x i8>
  %i.buy = bitcast <16 x i8> %i.bux to <2 x i64>
  %i.buz = extractelement <2 x i64> %i.buy, i64 0
  store i64 %i.buz, ptr %.711901770.us.i.epil, align 1, !tbaa !100
  %i.bva = getelementptr inbounds nuw i8, ptr %.711901770.us.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2250.i.epil = add nuw nsw i64 %indvars.iv2249.i.epil, 1
  %epil.iter585.next = add i64 %epil.iter585, 1   ; 2 uses
  %epil.iter585.cmp.not = icmp eq i64 %epil.iter585.next, %xtraiter584
  br i1 %epil.iter585.cmp.not, label %._crit_edge1774.us.i, label %bb.dz, !llvm.loop !470

._crit_edge1774.us.i:                             ; preds = %bb.dz, %._crit_edge1774.us.i.unr-lcssa
  %.lcssa513 = phi ptr [ %i.but, %._crit_edge1774.us.i.unr-lcssa ], [ %i.bva, %bb.dz ] ; 2 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %.212021776.us.i, i64 %i.ani ; 2 uses
  %i.bvc = add nuw nsw i32 %.211811778.us.i, 2    ; 3 uses
  %i.bvd = or disjoint i32 %i.bvc, 1
  %i.bve = icmp slt i32 %i.bvd, %i.p
  br i1 %i.bve, label %.lr.ph1773.us.i, label %.preheader1498.i, !llvm.loop !471

.preheader1498.i:                                 ; preds = %._crit_edge1774.us.i, %.preheader1499.i
  %.21202.lcssa.i = phi ptr [ %.11201.lcssa.i, %.preheader1499.i ], [ %i.bvb, %._crit_edge1774.us.i ] ; 5 uses
  %.61189.lcssa.i = phi ptr [ %.31186.lcssa.i, %.preheader1499.i ], [ %.lcssa513, %._crit_edge1774.us.i ]
  %.21181.lcssa.i = phi i32 [ %.11180.lcssa.i, %.preheader1499.i ], [ %i.bvc, %._crit_edge1774.us.i ] ; 2 uses
  %i.bvf = icmp sge i32 %.21181.lcssa.i, %i.p
  %brmerge1927.i = or i1 %i.anz, %i.bvf
  br i1 %brmerge1927.i, label %._crit_edge1795.split.i, label %.lr.ph1789.i

.lr.ph1789.i:                                     ; preds = %.preheader1498.i, %._crit_edge1790.i
  %.311821793.i = phi i32 [ %i.bvn, %._crit_edge1790.i ], [ %.21181.lcssa.i, %.preheader1498.i ]
  %.81792.i = phi ptr [ %.lcssa516, %._crit_edge1790.i ], [ %.61189.lcssa.i, %.preheader1498.i ] ; 2 uses
  br i1 %i.aop, label %.epil.preheader591, label %.lr.ph1789.i.new

._crit_edge1790.i.unr-lcssa:                      ; preds = %.lr.ph1789.i.new
  br i1 %lcmp.mod594.not, label %._crit_edge1790.i, label %.epil.preheader591

.epil.preheader591:                               ; preds = %._crit_edge1790.i.unr-lcssa, %.lr.ph1789.i
  %indvars.iv2254.i.epil.init = phi i64 [ 0, %.lr.ph1789.i ], [ %indvars.iv.next2255.i.3, %._crit_edge1790.i.unr-lcssa ]
  %.91786.i.epil.init = phi ptr [ %.81792.i, %.lr.ph1789.i ], [ %i.bws, %._crit_edge1790.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod596)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.epil.preheader591
  %indvars.iv2254.i.epil = phi i64 [ %indvars.iv2254.i.epil.init, %.epil.preheader591 ], [ %indvars.iv.next2255.i.epil, %bb.ea ] ; 2 uses
  %.91786.i.epil = phi ptr [ %.91786.i.epil.init, %.epil.preheader591 ], [ %i.bvm, %bb.ea ] ; 2 uses
  %epil.iter593 = phi i64 [ 0, %.epil.preheader591 ], [ %epil.iter593.next, %bb.ea ]
  %i.bvg = getelementptr inbounds nuw i8, ptr %.21202.lcssa.i, i64 %indvars.iv2254.i.epil
  %i.bvh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bvg, <4 x i32> %i.any, <4 x i32> splat (i32 -1), i8 1)
  %i.bvi = shufflevector <4 x i32> %i.bvh, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvj = trunc <16 x i32> %i.bvi to <16 x i8>
  %i.bvk = bitcast <16 x i8> %i.bvj to <4 x float>
  %i.bvl = extractelement <4 x float> %i.bvk, i64 0
  store float %i.bvl, ptr %.91786.i.epil, align 1, !tbaa !100
  %i.bvm = getelementptr inbounds nuw i8, ptr %.91786.i.epil, i64 4 ; 2 uses
  %indvars.iv.next2255.i.epil = add nuw nsw i64 %indvars.iv2254.i.epil, 1
  %epil.iter593.next = add i64 %epil.iter593, 1   ; 2 uses
  %epil.iter593.cmp.not = icmp eq i64 %epil.iter593.next, %xtraiter592
  br i1 %epil.iter593.cmp.not, label %._crit_edge1790.i, label %bb.ea, !llvm.loop !472

._crit_edge1790.i:                                ; preds = %bb.ea, %._crit_edge1790.i.unr-lcssa
  %.lcssa516 = phi ptr [ %i.bws, %._crit_edge1790.i.unr-lcssa ], [ %i.bvm, %bb.ea ]
  %i.bvn = add nuw nsw i32 %.311821793.i, 1       ; 2 uses
  %exitcond2259.not.i = icmp eq i32 %i.bvn, %i.p
  br i1 %exitcond2259.not.i, label %._crit_edge1795.split.i, label %.lr.ph1789.i, !llvm.loop !473

.lr.ph1789.i.new:                                 ; preds = %.lr.ph1789.i, %.lr.ph1789.i.new
  %indvars.iv2254.i = phi i64 [ %indvars.iv.next2255.i.3, %.lr.ph1789.i.new ], [ 0, %.lr.ph1789.i ] ; 5 uses
  %.91786.i = phi ptr [ %i.bws, %.lr.ph1789.i.new ], [ %.81792.i, %.lr.ph1789.i ] ; 5 uses
  %niter598 = phi i64 [ %niter598.next.3, %.lr.ph1789.i.new ], [ 0, %.lr.ph1789.i ]
  %i.bvo = getelementptr inbounds nuw i8, ptr %.21202.lcssa.i, i64 %indvars.iv2254.i
  %i.bvp = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bvo, <4 x i32> %i.any, <4 x i32> splat (i32 -1), i8 1)
  %i.bvq = shufflevector <4 x i32> %i.bvp, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvr = trunc <16 x i32> %i.bvq to <16 x i8>
  %i.bvs = bitcast <16 x i8> %i.bvr to <4 x float>
  %i.bvt = extractelement <4 x float> %i.bvs, i64 0
  store float %i.bvt, ptr %.91786.i, align 1, !tbaa !100
  %i.bvu = getelementptr inbounds nuw i8, ptr %.91786.i, i64 4
  %i.bvv = getelementptr inbounds nuw i8, ptr %.21202.lcssa.i, i64 %indvars.iv2254.i
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 1
  %i.bvx = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.bvw, <4 x i32> %i.any, <4 x i32> splat (i32 -1), i8 1)
  %i.bvy = shufflevector <4 x i32> %i.bvx, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvz = trunc <16 x i32> %i.bvy to <16 x i8>
  %i.bwa = bitcast <16 x i8> %i.bvz to <4 x float>
  %i.bwb = extractelement <4 x float> %i.bwa, i64 0
  store float %i.bwb, ptr %i.bvu, align 1, !tbaa !100
  %i.bwc = getelementptr inbounds nuw i8, ptr %.91786.i, i64 8
  %i.bwd = getelementptr inbounds nuw i8, ptr %.21202.lcssa.i, i64 %indvars.iv2254.i
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 2
  %i.bwf = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.bwe, <4 x i32> %i.any, <4 x i32> splat (i32 -1), i8 1)
  %i.bwg = shufflevector <4 x i32> %i.bwf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwh = trunc <16 x i32> %i.bwg to <16 x i8>
  %i.bwi = bitcast <16 x i8> %i.bwh to <4 x float>
  %i.bwj = extractelement <4 x float> %i.bwi, i64 0
  store float %i.bwj, ptr %i.bwc, align 1, !tbaa !100
  %i.bwk = getelementptr inbounds nuw i8, ptr %.91786.i, i64 12
  %i.bwl = getelementptr inbounds nuw i8, ptr %.21202.lcssa.i, i64 %indvars.iv2254.i
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 3
  %i.bwn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.bwm, <4 x i32> %i.any, <4 x i32> splat (i32 -1), i8 1)
  %i.bwo = shufflevector <4 x i32> %i.bwn, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bwp = trunc <16 x i32> %i.bwo to <16 x i8>
  %i.bwq = bitcast <16 x i8> %i.bwp to <4 x float>
  %i.bwr = extractelement <4 x float> %i.bwq, i64 0
  store float %i.bwr, ptr %i.bwk, align 1, !tbaa !100
  %i.bws = getelementptr inbounds nuw i8, ptr %.91786.i, i64 16 ; 3 uses
  %indvars.iv.next2255.i.3 = add nuw nsw i64 %indvars.iv2254.i, 4 ; 2 uses
  %niter598.next.3 = add i64 %niter598, 4         ; 2 uses
  %niter598.ncmp.3 = icmp eq i64 %niter598.next.3, %unroll_iter597
  br i1 %niter598.ncmp.3, label %._crit_edge1790.i.unr-lcssa, label %.lr.ph1789.i.new, !llvm.loop !474

._crit_edge1795.split.i:                          ; preds = %._crit_edge1790.i, %.preheader1498.i, %.lr.ph1779.i
  %indvars.iv.next2261.i = add nuw nsw i64 %indvars.iv2260.i, 4 ; 3 uses
  %i.bwt = or disjoint i64 %indvars.iv.next2261.i, 3 ; 2 uses
  %i.bwu = icmp slt i64 %i.bwt, %i.aok
  %indvars.iv.next2223.i = add i32 %indvars.iv2222.i, %i.aof
  %i.bwv = trunc nsw i64 %i.bwt to i32
  br i1 %i.bwu, label %_ZN4ncnn3MatD2Ev.exit1284.i, label %.preheader1495.loopexit.i, !llvm.loop !475

.preheader1490.loopexit.i:                        ; preds = %._crit_edge1862.split.i
  %i.bww = trunc nsw i64 %indvars.iv.next2297.i to i32
  br label %.preheader1490.i

.preheader1490.i:                                 ; preds = %.preheader1490.loopexit.i, %.preheader1495.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1495.i ], [ %i.bww, %.preheader1490.loopexit.i ] ; 3 uses
  %i.bwx = icmp slt i32 %.3.lcssa.i, %i.o
  br i1 %i.bwx, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1490.i
  %i.bwy = mul i32 %i.p, %i.j                     ; 3 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bxa = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bxb = icmp sgt i32 %i.p, 15
  %i.bxc = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.bxd = shufflevector <16 x i32> %i.bxc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bxe = mul <16 x i32> %i.bxd, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.bxf = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.bxg = shl i32 %i.j, 4
  %i.bxh = sext i32 %i.bxg to i64                 ; 2 uses
  %i.bxi = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.bxj = shufflevector <8 x i32> %i.bxi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bxk = mul <8 x i32> %i.bxj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.bxl = shl i32 %i.j, 3
  %i.bxm = sext i32 %i.bxl to i64                 ; 2 uses
  %i.bxn = sext i32 %i.j to i64                   ; 9 uses
  %i.bxo = shl i32 %i.j, 1                        ; 2 uses
  %i.bxp = sext i32 %i.bxo to i64                 ; 2 uses
  %i.bxq = icmp slt i32 %i.j, 1
  %i.bxr = add i32 %i.p, -16                      ; 2 uses
  %i.bxs = lshr i32 %i.bxr, 4
  %narrow2374.i = add nuw nsw i32 %i.bxs, 1
  %i.bxt = zext nneg i32 %narrow2374.i to i64
  %i.bxu = mul nsw i64 %i.bxt, %i.bxh
  %i.bxv = mul i32 %i.bwy, %.3.lcssa.i
  %i.bxw = and i32 %i.bxr, -16
  %i.bxx = add nuw nsw i32 %i.bxw, 16             ; 4 uses
  %i.bxy = add i32 %i.p, -8
  %i.bxz = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2330.i = sext i32 %i.o to i64
  %i.bya = or disjoint i32 %i.bxx, 7
  %i.byb = icmp slt i32 %i.bya, %i.p
  %wide.trip.count2306.i = zext i32 %i.j to i64   ; 23 uses
  %i.byc = shl nuw nsw i64 %wide.trip.count2306.i, 1
  %xtraiter626 = and i64 %wide.trip.count2306.i, 3 ; 3 uses
  %i.byd = icmp ult i32 %i.j, 4
  %unroll_iter631 = and i64 %wide.trip.count2306.i, 2147483644
  %lcmp.mod628.not = icmp eq i64 %xtraiter626, 0
  %lcmp.mod630 = icmp ne i64 %xtraiter626, 0
  %xtraiter634 = and i64 %wide.trip.count2306.i, 3 ; 3 uses
  %i.bye = icmp ult i32 %i.j, 4
  %unroll_iter639 = and i64 %wide.trip.count2306.i, 2147483644
  %lcmp.mod636.not = icmp eq i64 %xtraiter634, 0
  %lcmp.mod638 = icmp ne i64 %xtraiter634, 0
  %min.iters.check447 = icmp ult i32 %i.j, 8
  %stride.check445 = icmp slt i32 %i.bxo, 0
  %min.iters.check449 = icmp ult i32 %i.j, 64
  %i.byf = and i64 %wide.trip.count2306.i, 56
  %n.vec451 = and i64 %wide.trip.count2306.i, 2147483584 ; 5 uses
  %i.byg = shl nuw nsw i64 %n.vec451, 1
  %cmp.n460 = icmp eq i64 %n.vec451, %wide.trip.count2306.i
  %min.epilog.iters.check465 = icmp eq i64 %i.byf, 0
  %n.vec467 = and i64 %wide.trip.count2306.i, 2147483640 ; 4 uses
  %i.byh = shl nuw nsw i64 %n.vec467, 1
  %cmp.n476 = icmp eq i64 %n.vec467, %wide.trip.count2306.i
  %xtraiter641 = and i64 %wide.trip.count2306.i, 3 ; 2 uses
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  %min.iters.check401 = icmp ult i32 %i.j, 16
  %min.iters.check403 = icmp ult i32 %i.j, 256
  %i.byi = and i64 %wide.trip.count2306.i, 240
  %n.vec405 = and i64 %wide.trip.count2306.i, 2147483392 ; 5 uses
  %cmp.n415 = icmp eq i64 %n.vec405, %wide.trip.count2306.i
  %min.epilog.iters.check420 = icmp eq i64 %i.byi, 0
  %n.vec422 = and i64 %wide.trip.count2306.i, 2147483632 ; 4 uses
  %cmp.n429 = icmp eq i64 %n.vec422, %wide.trip.count2306.i
  %xtraiter644 = and i64 %wide.trip.count2306.i, 7 ; 2 uses
  %lcmp.mod645.not = icmp eq i64 %xtraiter644, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i29

_ZN4ncnn3MatD2Ev.exit1283.i:                      ; preds = %._crit_edge1862.split.i, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i
  %indvars.iv2296.i = phi i64 [ %i.bfw, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %indvars.iv.next2297.i, %._crit_edge1862.split.i ] ; 2 uses
  %indvars.iv2267.i = phi i32 [ %i.bfs, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %indvars.iv.next2268.i, %._crit_edge1862.split.i ] ; 2 uses
  %indvars.iv2264.i = phi i32 [ %i.bfq, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %indvars.iv.next2265.i, %._crit_edge1862.split.i ] ; 2 uses
  %i.byj = phi i32 [ %i.bek, %_ZN4ncnn3MatD2Ev.exit1283.lr.ph.i ], [ %i.cfh, %._crit_edge1862.split.i ]
  %i.byk = sext i32 %indvars.iv2264.i to i64
  %i.byl = sext i32 %indvars.iv2267.i to i64
  %i.bym = load ptr, ptr %i.av, align 8, !tbaa !18 ; 3 uses
  %i.byn = trunc nsw i64 %indvars.iv2296.i to i32 ; 2 uses
  %i.byo = mul i32 %i.bem, %i.byn
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds i8, ptr %i.bym, i64 %i.byp ; 2 uses
  %i.byr = mul i32 %i.byj, %i.bem
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %i.bym, i64 %i.bys ; 2 uses
  %i.byu = insertelement <4 x i32> poison, i32 %i.byn, i64 0
  %i.byv = shufflevector <4 x i32> %i.byu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.byw = lshr <4 x i32> %i.byv, <i32 3, i32 2, i32 1, i32 4>
  %i.byx = and <4 x i32> %i.byw, <i32 1, i32 1, i32 1, i32 -1>
  %i.byy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.byx)
  %i.byz = load ptr, ptr %i.km, align 8, !tbaa !18, !noalias !476
  %i.bza = load i64, ptr %i.ben, align 8, !tbaa !20, !noalias !476
  %i.bzb = zext nneg i32 %i.byy to i64
  %i.bzc = mul i64 %i.bza, %i.bzb
  %i.bzd = load i64, ptr %i.beo, align 8, !tbaa !65, !noalias !476
  %i.bze = mul i64 %i.bzc, %i.bzd
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.byz, i64 %i.bze ; 4 uses
  br i1 %i.bep, label %.lr.ph1808.i, label %.preheader1494.i

.lr.ph1808.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit1283.i
  br i1 %i.bet, label %.lr.ph1801.us.i, label %.preheader1494.thread.i

.lr.ph1801.us.i:                                  ; preds = %.lr.ph1808.i, %._crit_edge1802.us.i
  %.011331807.us.i = phi i32 [ %i.cag, %._crit_edge1802.us.i ], [ 0, %.lr.ph1808.i ]
  %.011371806.us.i = phi ptr [ %.lcssa493, %._crit_edge1802.us.i ], [ %i.bzf, %.lr.ph1808.i ] ; 2 uses
  %.011451805.us.i = phi ptr [ %i.caf, %._crit_edge1802.us.i ], [ %i.byt, %.lr.ph1808.i ] ; 4 uses
  %.011481804.us.i = phi ptr [ %i.cae, %._crit_edge1802.us.i ], [ %i.byq, %.lr.ph1808.i ] ; 4 uses
  br i1 %i.bgc, label %.epil.preheader599, label %.lr.ph1801.us.i.new

.lr.ph1801.us.i.new:                              ; preds = %.lr.ph1801.us.i, %.lr.ph1801.us.i.new
  %indvars.iv2270.i = phi i64 [ %indvars.iv.next2271.i.1, %.lr.ph1801.us.i.new ], [ 0, %.lr.ph1801.us.i ] ; 4 uses
  %.111381798.us.i = phi ptr [ %i.bzv, %.lr.ph1801.us.i.new ], [ %.011371806.us.i, %.lr.ph1801.us.i ] ; 5 uses
  %niter606 = phi i64 [ %niter606.next.1, %.lr.ph1801.us.i.new ], [ 0, %.lr.ph1801.us.i ]
  %i.bzg = getelementptr inbounds nuw i8, ptr %.011481804.us.i, i64 %indvars.iv2270.i
  %i.bzh = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bzg, <16 x i32> %i.bes, <16 x i1> splat (i1 true), i32 1)
  %i.bzi = trunc <16 x i32> %i.bzh to <16 x i8>
  %i.bzj = getelementptr inbounds nuw i8, ptr %.011451805.us.i, i64 %indvars.iv2270.i
  %i.bzk = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bzj, <16 x i32> %i.bes, <16 x i1> splat (i1 true), i32 1)
  %i.bzl = trunc <16 x i32> %i.bzk to <16 x i8>
  store <16 x i8> %i.bzi, ptr %.111381798.us.i, align 1, !tbaa !100
  %i.bzm = getelementptr inbounds nuw i8, ptr %.111381798.us.i, i64 16
  store <16 x i8> %i.bzl, ptr %i.bzm, align 1, !tbaa !100
  %i.bzn = getelementptr inbounds nuw i8, ptr %.111381798.us.i, i64 32
  %indvars.iv.next2271.i = or disjoint i64 %indvars.iv2270.i, 1 ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %.011481804.us.i, i64 %indvars.iv.next2271.i
  %i.bzp = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bzo, <16 x i32> %i.bes, <16 x i1> splat (i1 true), i32 1)
  %i.bzq = trunc <16 x i32> %i.bzp to <16 x i8>
  %i.bzr = getelementptr inbounds nuw i8, ptr %.011451805.us.i, i64 %indvars.iv.next2271.i
  %i.bzs = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.bzr, <16 x i32> %i.bes, <16 x i1> splat (i1 true), i32 1)
  %i.bzt = trunc <16 x i32> %i.bzs to <16 x i8>
  store <16 x i8> %i.bzq, ptr %i.bzn, align 1, !tbaa !100
  %i.bzu = getelementptr inbounds nuw i8, ptr %.111381798.us.i, i64 48
  store <16 x i8> %i.bzt, ptr %i.bzu, align 1, !tbaa !100
  %i.bzv = getelementptr inbounds nuw i8, ptr %.111381798.us.i, i64 64 ; 3 uses
  %indvars.iv.next2271.i.1 = add nuw nsw i64 %indvars.iv2270.i, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge1802.us.i.unr-lcssa, label %.lr.ph1801.us.i.new, !llvm.loop !479

._crit_edge1802.us.i.unr-lcssa:                   ; preds = %.lr.ph1801.us.i.new
  br i1 %lcmp.mod602.not, label %._crit_edge1802.us.i, label %.epil.preheader599

.epil.preheader599:                               ; preds = %._crit_edge1802.us.i.unr-lcssa, %.lr.ph1801.us.i
  %indvars.iv2270.i.epil.init = phi i64 [ 0, %.lr.ph1801.us.i ], [ %indvars.iv.next2271.i.1, %._crit_edge1802.us.i.unr-lcssa ] ; 2 uses
  %.111381798.us.i.epil.init = phi ptr [ %.011371806.us.i, %.lr.ph1801.us.i ], [ %i.bzv, %._crit_edge1802.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod604)
  %i.bzw = getelementptr inbounds nuw i8, ptr %.011481804.us.i, i64 %indvars.iv2270.i.epil.init
  %i.bzx = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bzw, <16 x i32> %i.bes, <16 x i1> splat (i1 true), i32 1)
  %i.bzy = trunc <16 x i32> %i.bzx to <16 x i8>
  %i.bzz = getelementptr inbounds nuw i8, ptr %.011451805.us.i, i64 %indvars.iv2270.i.epil.init
  %i.caa = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bzz, <16 x i32> %i.bes, <16 x i1> splat (i1 true), i32 1)
  %i.cab = trunc <16 x i32> %i.caa to <16 x i8>
  store <16 x i8> %i.bzy, ptr %.111381798.us.i.epil.init, align 1, !tbaa !100
  %i.cac = getelementptr inbounds nuw i8, ptr %.111381798.us.i.epil.init, i64 16
  store <16 x i8> %i.cab, ptr %i.cac, align 1, !tbaa !100
  %i.cad = getelementptr inbounds nuw i8, ptr %.111381798.us.i.epil.init, i64 32
  br label %._crit_edge1802.us.i

._crit_edge1802.us.i:                             ; preds = %._crit_edge1802.us.i.unr-lcssa, %.epil.preheader599
  %.lcssa493 = phi ptr [ %i.bzv, %._crit_edge1802.us.i.unr-lcssa ], [ %i.cad, %.epil.preheader599 ] ; 2 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %.011481804.us.i, i64 %i.bev ; 2 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %.011451805.us.i, i64 %i.bev ; 2 uses
  %i.cag = add nuw nsw i32 %.011331807.us.i, 16   ; 2 uses
  %i.cah = or disjoint i32 %i.cag, 15
  %i.cai = icmp slt i32 %i.cah, %i.p
  br i1 %i.cai, label %.lr.ph1801.us.i, label %.preheader1494.i, !llvm.loop !480

.preheader1494.i:                                 ; preds = %._crit_edge1802.us.i, %_ZN4ncnn3MatD2Ev.exit1283.i
  %.01148.lcssa.i = phi ptr [ %i.byq, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %i.cae, %._crit_edge1802.us.i ] ; 3 uses
  %.01145.lcssa.i = phi ptr [ %i.byt, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %i.caf, %._crit_edge1802.us.i ] ; 3 uses
  %.01137.lcssa.i = phi ptr [ %i.bzf, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %.lcssa493, %._crit_edge1802.us.i ] ; 3 uses
  %.01133.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1283.i ], [ %i.bfu, %._crit_edge1802.us.i ] ; 4 uses
  %i.caj = or disjoint i32 %.01133.lcssa.i, 7
  %i.cak = icmp slt i32 %i.caj, %i.p
  br i1 %i.cak, label %.lr.ph1827.i, label %.preheader1493.i

.preheader1494.thread.i:                          ; preds = %.lr.ph1808.i
  %scevgep2263.i = getelementptr i8, ptr %i.bym, i64 %i.bfp ; 2 uses
  %scevgep2266.i = getelementptr i8, ptr %scevgep2263.i, i64 %i.byk ; 2 uses
  %scevgep2269.i = getelementptr i8, ptr %scevgep2263.i, i64 %i.byl ; 2 uses
  br i1 %i.bfz, label %.lr.ph1827.split.preheader.i, label %.preheader1493.i

.lr.ph1827.i:                                     ; preds = %.preheader1494.i
  br i1 %i.bet, label %.lr.ph1820.us.i, label %.lr.ph1827.split.preheader.i

.lr.ph1827.split.preheader.i:                     ; preds = %.lr.ph1827.i, %.preheader1494.thread.i
  %.01148.lcssa25052516.i = phi ptr [ %.01148.lcssa.i, %.lr.ph1827.i ], [ %scevgep2266.i, %.preheader1494.thread.i ]
  %.01145.lcssa25062515.i = phi ptr [ %.01145.lcssa.i, %.lr.ph1827.i ], [ %scevgep2269.i, %.preheader1494.thread.i ]
  %.01137.lcssa25072514.i = phi ptr [ %.01137.lcssa.i, %.lr.ph1827.i ], [ %i.bzf, %.preheader1494.thread.i ]
  %.01133.lcssa25082513.i = phi i32 [ %.01133.lcssa.i, %.lr.ph1827.i ], [ %i.bfu, %.preheader1494.thread.i ] ; 2 uses
  %i.cal = sub i32 %i.bfv, %.01133.lcssa25082513.i ; 2 uses
  %i.cam = lshr i32 %i.cal, 3
  %narrow2372.i = add nuw nsw i32 %i.cam, 1
  %i.can = zext nneg i32 %narrow2372.i to i64
  %i.cao = mul nsw i64 %i.can, %i.bfe             ; 2 uses
  %scevgep2275.i = getelementptr i8, ptr %.01148.lcssa25052516.i, i64 %i.cao
  %scevgep2276.i = getelementptr i8, ptr %.01145.lcssa25062515.i, i64 %i.cao
  %i.cap = add i32 %.01133.lcssa25082513.i, 8
  %i.caq = and i32 %i.cal, -8
  %i.car = add i32 %i.cap, %i.caq
  br label %.preheader1493.i

.lr.ph1820.us.i:                                  ; preds = %.lr.ph1827.i, %._crit_edge1821.us.i
  %.111341826.us.i = phi i32 [ %i.cbr, %._crit_edge1821.us.i ], [ %.01133.lcssa.i, %.lr.ph1827.i ]
  %.211391825.us.i = phi ptr [ %.lcssa496, %._crit_edge1821.us.i ], [ %.01137.lcssa.i, %.lr.ph1827.i ] ; 2 uses
  %.111461824.us.i = phi ptr [ %i.cbq, %._crit_edge1821.us.i ], [ %.01145.lcssa.i, %.lr.ph1827.i ]
  %.111491823.us.i = phi ptr [ %i.cbp, %._crit_edge1821.us.i ], [ %.01148.lcssa.i, %.lr.ph1827.i ] ; 6 uses
  br i1 %i.bgd, label %.epil.preheader607, label %.lr.ph1820.us.i.new

.lr.ph1820.us.i.new:                              ; preds = %.lr.ph1820.us.i, %.lr.ph1820.us.i.new
  %indvars.iv2277.i = phi i64 [ %indvars.iv.next2278.i.3, %.lr.ph1820.us.i.new ], [ 0, %.lr.ph1820.us.i ] ; 5 uses
  %.311401817.us.i = phi ptr [ %i.cbk, %.lr.ph1820.us.i.new ], [ %.211391825.us.i, %.lr.ph1820.us.i ] ; 5 uses
  %niter614 = phi i64 [ %niter614.next.3, %.lr.ph1820.us.i.new ], [ 0, %.lr.ph1820.us.i ]
  %i.cas = getelementptr inbounds nuw i8, ptr %.111491823.us.i, i64 %indvars.iv2277.i
  %i.cat = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.cas, <16 x i32> %i.bfc, <16 x i1> splat (i1 true), i32 1)
  %i.cau = trunc <16 x i32> %i.cat to <16 x i8>
  store <16 x i8> %i.cau, ptr %.311401817.us.i, align 1, !tbaa !100
  %i.cav = getelementptr inbounds nuw i8, ptr %.311401817.us.i, i64 16
  %i.caw = getelementptr inbounds nuw i8, ptr %.111491823.us.i, i64 %indvars.iv2277.i
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 1
  %i.cay = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.cax, <16 x i32> %i.bfc, <16 x i1> splat (i1 true), i32 1)
  %i.caz = trunc <16 x i32> %i.cay to <16 x i8>
  store <16 x i8> %i.caz, ptr %i.cav, align 1, !tbaa !100
  %i.cba = getelementptr inbounds nuw i8, ptr %.311401817.us.i, i64 32
  %i.cbb = getelementptr inbounds nuw i8, ptr %.111491823.us.i, i64 %indvars.iv2277.i
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cbb, i64 2
  %i.cbd = tail call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull %i.cbc, <16 x i32> %i.bfc, <16 x i1> splat (i1 true), i32 1)
  %i.cbe = trunc <16 x i32> %i.cbd to <16 x i8>
end_hunk_7
begin_hunk_8_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.uv = lshr i32 %i.p, 1
  %i.uw = and i32 %i.uv, 1
  %i.ux = and i32 %i.p, 1
  %i.uy = add nuw nsw i32 %i.ux, 1
  %i.uz = add nuw nsw i32 %i.uy, %i.uw
  %i.va = lshr i32 %i.eg, 1
  %i.vb = and i32 %i.va, 1
  %i.vc = and i32 %i.eg, 1
  %i.vd = add nuw nsw i32 %i.vc, 1
  %i.ve = add nuw nsw i32 %i.vd, %i.vb
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.uu, i32 noundef %i.uz, i32 noundef %i.ve, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.em:                                            ; preds = %bb.ek
  %i.vf = icmp sgt i32 %i.p, 1
  br i1 %i.vf, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.vg = shl nsw i32 %i.pl, 3
  %i.vh = and i32 %i.p, 1
  %i.vi = add nuw nsw i32 %i.vh, 1
  %i.vj = lshr i32 %i.eg, 1
  %i.vk = and i32 %i.vj, 1
  %i.vl = and i32 %i.eg, 1
  %i.vm = add nuw nsw i32 %i.vl, 1
  %i.vn = add nuw nsw i32 %i.vm, %i.vk
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.vg, i32 noundef %i.vi, i32 noundef %i.vn, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.eo:                                            ; preds = %bb.em
  %i.vo = shl nsw i32 %i.pl, 2
  %i.vp = lshr i32 %i.eg, 1
  %i.vq = and i32 %i.vp, 1
  %i.vr = and i32 %i.eg, 1
  %i.vs = add nuw nsw i32 %i.vr, 1
  %i.vt = add nuw nsw i32 %i.vs, %i.vq
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.vo, i32 noundef %i.p, i32 noundef %i.vt, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.ep:                                            ; preds = %bb.ef
  %i.vu = icmp sgt i32 %i.eg, 1
  %i.vv = icmp sgt i32 %i.p, 15                   ; 2 uses
  br i1 %i.vu, label %bb.eq, label %bb.ez

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.vv, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.vw = shl nsw i32 %i.pl, 5
  %i.vx = lshr i32 %i.p, 4
  %i.vy = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.vz = shufflevector <4 x i32> %i.vy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wa = lshr <4 x i32> %i.vz, <i32 0, i32 3, i32 2, i32 1>
  %i.wb = and <4 x i32> %i.wa, splat (i32 1)
  %i.wc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.wb)
  %op.rdx675 = add nuw nsw i32 %i.wc, %i.vx
  %i.wd = and i32 %i.eg, 1
  %i.we = add nuw nsw i32 %i.wd, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.vw, i32 noundef %op.rdx675, i32 noundef %i.we, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.es:                                            ; preds = %bb.eq
  %i.wf = icmp sgt i32 %i.p, 7
  br i1 %i.wf, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.wg = shl nsw i32 %i.pl, 4
  %i.wh = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.p, i64 0
  %i.wi = shufflevector <4 x i32> %i.wh, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wj = lshr <4 x i32> %i.wi, <i32 0, i32 2, i32 1, i32 0>
  %i.wk = and <4 x i32> %i.wj, splat (i32 1)
  %i.wl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.wk)
  %i.wm = and i32 %i.eg, 1
  %i.wn = add nuw nsw i32 %i.wm, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.wg, i32 noundef %i.wl, i32 noundef %i.wn, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.eu:                                            ; preds = %bb.es
  %i.wo = icmp sgt i32 %i.p, 3
  br i1 %i.wo, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.wp = shl nsw i32 %i.pl, 3
  %i.wq = lshr i32 %i.p, 1
  %i.wr = and i32 %i.wq, 1
  %i.ws = and i32 %i.p, 1
  %i.wt = add nuw nsw i32 %i.ws, 1
  %i.wu = add nuw nsw i32 %i.wt, %i.wr
  %i.wv = and i32 %i.eg, 1
  %i.ww = add nuw nsw i32 %i.wv, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.wp, i32 noundef %i.wu, i32 noundef %i.ww, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.ew:                                            ; preds = %bb.eu
  %i.wx = icmp sgt i32 %i.p, 1
  br i1 %i.wx, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.wy = shl nsw i32 %i.pl, 2
  %i.wz = and i32 %i.p, 1
  %i.xa = add nuw nsw i32 %i.wz, 1
  %i.xb = and i32 %i.eg, 1
  %i.xc = add nuw nsw i32 %i.xb, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.wy, i32 noundef %i.xa, i32 noundef %i.xc, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.ey:                                            ; preds = %bb.ew
  %i.xd = shl nsw i32 %i.pl, 1
  %i.xe = and i32 %i.eg, 1
  %i.xf = add nuw nsw i32 %i.xe, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.xd, i32 noundef %i.p, i32 noundef %i.xf, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.ez:                                            ; preds = %bb.ep
  br i1 %i.vv, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.xg = shl nsw i32 %i.pl, 4
  %i.xh = lshr i32 %i.p, 4
  %i.xi = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.xj = shufflevector <4 x i32> %i.xi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xk = lshr <4 x i32> %i.xj, <i32 0, i32 3, i32 2, i32 1>
  %i.xl = and <4 x i32> %i.xk, splat (i32 1)
  %i.xm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.xl)
  %op.rdx676 = add nuw nsw i32 %i.xm, %i.xh
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.xg, i32 noundef %op.rdx676, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.fb:                                            ; preds = %bb.ez
  %i.xn = icmp sgt i32 %i.p, 7
  br i1 %i.xn, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.xo = shl nsw i32 %i.pl, 3
  %i.xp = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.p, i64 0
  %i.xq = shufflevector <4 x i32> %i.xp, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xr = lshr <4 x i32> %i.xq, <i32 0, i32 2, i32 1, i32 0>
  %i.xs = and <4 x i32> %i.xr, splat (i32 1)
  %i.xt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.xs)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.xo, i32 noundef %i.xt, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.fd:                                            ; preds = %bb.fb
  %i.xu = icmp sgt i32 %i.p, 3
  br i1 %i.xu, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.xv = shl nsw i32 %i.pl, 2
  %i.xw = lshr i32 %i.p, 1
  %i.xx = and i32 %i.xw, 1
  %i.xy = and i32 %i.p, 1
  %i.xz = add nuw nsw i32 %i.xy, 1
  %i.ya = add nuw nsw i32 %i.xz, %i.xx
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.xv, i32 noundef %i.ya, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.ff:                                            ; preds = %bb.fd
  %i.yb = icmp sgt i32 %i.p, 1
  br i1 %i.yb, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.yc = shl nsw i32 %i.pl, 1
  %i.yd = and i32 %i.p, 1
  %i.ye = add nuw nsw i32 %i.yd, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.yc, i32 noundef %i.ye, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

bb.fh:                                            ; preds = %bb.ff
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pj, i32 noundef %i.pl, i32 noundef %i.p, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1590.i

_ZN4ncnn3MatD2Ev.exit1306.lr.ph.i:                ; preds = %bb.du, %bb.dt, %bb.dr, %bb.dp, %bb.dn
  %i.yf = mul i32 %i.pl, %i.p                     ; 17 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.yi = insertelement <16 x i32> poison, i32 %i.pl, i64 0
  %i.yj = shufflevector <16 x i32> %i.yi, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.yk = mul <16 x i32> %i.yj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 17 uses
  %i.yl = icmp sgt i32 %i.pl, 0                   ; 4 uses
  %i.ym = shl i32 %i.pl, 4
  %i.yn = sext i32 %i.ym to i64                   ; 17 uses
  %i.yo = insertelement <16 x i32> poison, i32 %i.p, i64 0
  %i.yp = shufflevector <16 x i32> %i.yo, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.yq = mul <16 x i32> %i.yk, %i.yp             ; 21 uses
  %i.yr = sext i32 %i.pl to i64                   ; 13 uses
  %i.ys = shl i32 %i.pl, 3
  %i.yt = sext i32 %i.ys to i64                   ; 2 uses
  %i.yu = shl i32 %i.pl, 2
  %i.yv = sext i32 %i.yu to i64
  %i.yw = shl i32 %i.pl, 1
  %i.yx = sext i32 %i.yw to i64
  %i.yy = icmp slt i32 %i.pl, 1
  %i.yz = add i32 %i.p, -16                       ; 2 uses
  %i.za = lshr i32 %i.yz, 2
  %i.zb = and i32 %i.za, 1073741820
  %narrow.i = add nuw nsw i32 %i.zb, 4
  %i.zc = zext nneg i32 %narrow.i to i64
  %i.zd = mul nsw i64 %i.yn, %i.zc
  %i.ze = shl i32 %i.yf, 4
  %i.zf = and i32 %i.yz, -16
  %i.zg = add nuw nsw i32 %i.zf, 16               ; 4 uses
  %i.zh = add i32 %i.p, -8
  %i.zi = zext nneg i32 %i.eg to i64
  %i.zj = or disjoint i32 %i.zg, 7
  %i.zk = icmp slt i32 %i.zj, %i.p
  %wide.trip.count.i = zext i32 %i.pl to i64      ; 8 uses
  %i.zl = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.zm = icmp eq i64 %i.zl, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod762 = trunc i32 %i.pl to i1
  %xtraiter764 = and i64 %wide.trip.count.i, 1
  %i.zn = icmp eq i64 %i.zl, 0
  %unroll_iter768 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  %lcmp.mod767 = trunc i32 %i.pl to i1
  br label %_ZN4ncnn3MatD2Ev.exit1306.i

.preheader1590.loopexit.i:                        ; preds = %._crit_edge1677.split.i
  %i.zo = trunc nuw nsw i64 %indvars.iv.next2210.i to i32
  br label %.preheader1590.i

.preheader1590.i:                                 ; preds = %.preheader1590.loopexit.i, %bb.fh, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.eo, %bb.en, %bb.el, %bb.ej, %bb.eh, %bb.ee, %bb.ed, %bb.eb, %bb.dz, %bb.dx
  %.0.lcssa.i = phi i32 [ %i.zo, %.preheader1590.loopexit.i ], [ 0, %bb.dz ], [ 0, %bb.ed ], [ 0, %bb.ee ], [ 0, %bb.eb ], [ 0, %bb.dx ], [ 0, %bb.et ], [ 0, %bb.ex ], [ 0, %bb.ey ], [ 0, %bb.ev ], [ 0, %bb.er ], [ 0, %bb.fc ], [ 0, %bb.fg ], [ 0, %bb.fh ], [ 0, %bb.fe ], [ 0, %bb.fa ], [ 0, %bb.eh ], [ 0, %bb.el ], [ 0, %bb.eo ], [ 0, %bb.en ], [ 0, %bb.ej ] ; 5 uses
  %i.zp = or disjoint i32 %.0.lcssa.i, 7
  %i.zq = icmp slt i32 %i.zp, %i.eg
  br i1 %i.zq, label %_ZN4ncnn3MatD2Ev.exit1305.lr.ph.i, label %.preheader1581.i

_ZN4ncnn3MatD2Ev.exit1305.lr.ph.i:                ; preds = %.preheader1590.i
  %i.zr = mul i32 %i.pl, %i.p                     ; 10 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.zu = insertelement <8 x i32> poison, i32 %i.pl, i64 0
  %i.zv = shufflevector <8 x i32> %i.zu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zw = mul <8 x i32> %i.zv, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.zx = insertelement <16 x i32> poison, i32 %i.pl, i64 0
  %i.zy = shufflevector <16 x i32> %i.zx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.zz = mul <16 x i32> %i.zy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 8 uses
  %i.aaa = icmp sgt i32 %i.p, 15
  %i.aab = icmp sgt i32 %i.pl, 0                  ; 4 uses
  %i.aac = shl i32 %i.pl, 4
  %i.aad = sext i32 %i.aac to i64                 ; 9 uses
  %i.aae = shl i32 %i.pl, 3
  %i.aaf = sext i32 %i.aae to i64                 ; 9 uses
  %i.aag = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %i.aah = shufflevector <8 x i32> %i.aag, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aai = mul <8 x i32> %i.zw, %i.aah            ; 15 uses
  %i.aaj = sext i32 %i.pl to i64                  ; 6 uses
  %i.aak = shl i32 %i.pl, 2
  %i.aal = sext i32 %i.aak to i64
  %i.aam = shl i32 %i.pl, 1
  %i.aan = sext i32 %i.aam to i64
  %i.aao = icmp slt i32 %i.pl, 1
  %i.aap = add i32 %i.p, -16                      ; 2 uses
  %i.aaq = lshr i32 %i.aap, 2
  %i.aar = and i32 %i.aaq, 1073741820
  %narrow2446.i = add nuw nsw i32 %i.aar, 4
  %i.aas = zext nneg i32 %narrow2446.i to i64
  %i.aat = mul nsw i64 %i.aad, %i.aas
  %i.aau = mul i32 %i.zr, %.0.lcssa.i
  %i.aav = shl i32 %i.zr, 3
  %i.aaw = and i32 %i.aap, -16
  %i.aax = add nuw nsw i32 %i.aaw, 16             ; 4 uses
  %i.aay = add i32 %i.p, -8
  %i.aaz = zext nneg i32 %.0.lcssa.i to i64
  %i.aba = add i32 %.0.lcssa.i, 7
  %i.abb = sext i32 %i.eg to i64
  %i.abc = or disjoint i32 %i.aax, 7
  %i.abd = icmp slt i32 %i.abc, %i.p
  %wide.trip.count2241.i = zext i32 %i.pl to i64  ; 8 uses
  %invariant.op.i = add nsw i64 %i.abb, -7
  %i.abe = add nsw i64 %wide.trip.count2241.i, -1 ; 2 uses
  %xtraiter771 = and i64 %wide.trip.count2241.i, 1
  %i.abf = icmp eq i64 %i.abe, 0
  %unroll_iter775 = and i64 %wide.trip.count2241.i, 2147483646
  %lcmp.mod772.not = icmp eq i64 %xtraiter771, 0
  %lcmp.mod774 = trunc i32 %i.pl to i1
  %xtraiter778 = and i64 %wide.trip.count2241.i, 3 ; 3 uses
  %i.abg = icmp ult i64 %i.abe, 3
  %unroll_iter782 = and i64 %wide.trip.count2241.i, 2147483644
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  %lcmp.mod781 = icmp ne i64 %xtraiter778, 0
  br label %_ZN4ncnn3MatD2Ev.exit1305.i

_ZN4ncnn3MatD2Ev.exit1306.i:                      ; preds = %._crit_edge1677.split.i, %_ZN4ncnn3MatD2Ev.exit1306.lr.ph.i
  %indvars.iv2209.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1306.lr.ph.i ], [ %indvars.iv.next2210.i, %._crit_edge1677.split.i ] ; 3 uses
  %indvars.iv.i103 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1306.lr.ph.i ], [ %indvars.iv.next.i104, %._crit_edge1677.split.i ] ; 2 uses
  %i.abh = sext i32 %indvars.iv.i103 to i64
  %i.abi = shl nsw i64 %i.abh, 2
  %i.abj = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 17 uses
  %i.abk = trunc i64 %indvars.iv2209.i to i32     ; 16 uses
  %i.abl = mul i32 %i.yf, %i.abk
  %i.abm = sext i32 %i.abl to i64
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.abm ; 2 uses
  %i.abo = lshr exact i64 %indvars.iv2209.i, 4
  %i.abp = load ptr, ptr %i.pj, align 8, !tbaa !18, !noalias !542
  %i.abq = load i64, ptr %i.yg, align 8, !tbaa !20, !noalias !542
  %i.abr = mul i64 %i.abq, %i.abo
  %i.abs = load i64, ptr %i.yh, align 8, !tbaa !65, !noalias !542
  %i.abt = mul i64 %i.abr, %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abt ; 4 uses
  br i1 %i.pn, label %.preheader1595.lr.ph.i, label %._crit_edge1619.i

.preheader1595.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1306.i
  br i1 %i.yl, label %.preheader1595.us.preheader.i, label %._crit_edge1619.thread.i

.preheader1595.us.preheader.i:                    ; preds = %.preheader1595.lr.ph.i
  %i.abv = or disjoint i32 %i.abk, 1
  %i.abw = mul i32 %i.abv, %i.yf
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.abx
  %i.abz = or disjoint i32 %i.abk, 2
  %i.aca = mul i32 %i.abz, %i.yf
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acb
  %i.acd = or disjoint i32 %i.abk, 3
  %i.ace = mul i32 %i.acd, %i.yf
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acf
  %i.ach = or disjoint i32 %i.abk, 4
  %i.aci = mul i32 %i.ach, %i.yf
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acj
  %i.acl = or disjoint i32 %i.abk, 5
  %i.acm = mul i32 %i.acl, %i.yf
  %i.acn = sext i32 %i.acm to i64
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acn
  %i.acp = or disjoint i32 %i.abk, 6
  %i.acq = mul i32 %i.acp, %i.yf
  %i.acr = sext i32 %i.acq to i64
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acr
  %i.act = or disjoint i32 %i.abk, 7
  %i.acu = mul i32 %i.act, %i.yf
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acv
  %i.acx = or disjoint i32 %i.abk, 8
  %i.acy = mul i32 %i.acx, %i.yf
  %i.acz = sext i32 %i.acy to i64
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.acz
  %i.adb = or disjoint i32 %i.abk, 9
  %i.adc = mul i32 %i.adb, %i.yf
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.add
  %i.adf = or disjoint i32 %i.abk, 10
  %i.adg = mul i32 %i.adf, %i.yf
  %i.adh = sext i32 %i.adg to i64
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.adh
  %i.adj = or disjoint i32 %i.abk, 11
  %i.adk = mul i32 %i.adj, %i.yf
  %i.adl = sext i32 %i.adk to i64
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.adl
  %i.adn = or disjoint i32 %i.abk, 12
  %i.ado = mul i32 %i.adn, %i.yf
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.adp
  %i.adr = or disjoint i32 %i.abk, 13
  %i.ads = mul i32 %i.adr, %i.yf
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.adt
  %i.adv = or disjoint i32 %i.abk, 14
  %i.adw = mul i32 %i.adv, %i.yf
  %i.adx = sext i32 %i.adw to i64
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.adx
  %i.adz = or disjoint i32 %i.abk, 15
  %i.aea = mul i32 %i.adz, %i.yf
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.aeb
  br label %.preheader1595.us.i

.preheader1595.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1595.us.preheader.i
  %.010991618.us.i = phi ptr [ %i.amt, %._crit_edge.us.i ], [ %i.abn, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011041617.us.i = phi ptr [ %i.amu, %._crit_edge.us.i ], [ %i.aby, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011061616.us.i = phi ptr [ %i.amv, %._crit_edge.us.i ], [ %i.acc, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011221615.us.i = phi ptr [ %i.amw, %._crit_edge.us.i ], [ %i.acg, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011231614.us.i = phi ptr [ %i.amx, %._crit_edge.us.i ], [ %i.ack, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011291613.us.i = phi ptr [ %i.amy, %._crit_edge.us.i ], [ %i.aco, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011301612.us.i = phi ptr [ %i.amz, %._crit_edge.us.i ], [ %i.acs, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011321611.us.i = phi ptr [ %i.ana, %._crit_edge.us.i ], [ %i.acw, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011331610.us.i = phi ptr [ %i.anb, %._crit_edge.us.i ], [ %i.ada, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011351609.us.i = phi ptr [ %i.anc, %._crit_edge.us.i ], [ %i.ade, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011361608.us.i = phi ptr [ %i.and, %._crit_edge.us.i ], [ %i.adi, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011621607.us.i = phi ptr [ %i.ane, %._crit_edge.us.i ], [ %i.adm, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011671606.us.i = phi ptr [ %i.anf, %._crit_edge.us.i ], [ %i.adq, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011681605.us.i = phi ptr [ %i.ang, %._crit_edge.us.i ], [ %i.adu, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011691604.us.i = phi ptr [ %i.anh, %._crit_edge.us.i ], [ %i.ady, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011701603.us.i = phi ptr [ %i.ani, %._crit_edge.us.i ], [ %i.aec, %.preheader1595.us.preheader.i ] ; 2 uses
  %.011711602.us.i = phi ptr [ %i.ams, %._crit_edge.us.i ], [ %i.abu, %.preheader1595.us.preheader.i ]
  %.011821601.us.i = phi i32 [ %i.anj, %._crit_edge.us.i ], [ 0, %.preheader1595.us.preheader.i ]
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %.preheader1595.us.i
  %indvars.iv2179.i = phi i64 [ 0, %.preheader1595.us.i ], [ %indvars.iv.next2180.i, %bb.fi ] ; 17 uses
  %.111721600.us.i = phi ptr [ %.011711602.us.i, %.preheader1595.us.i ], [ %i.ams, %bb.fi ] ; 17 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.010991618.us.i, i64 %indvars.iv2179.i
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.011041617.us.i, i64 %indvars.iv2179.i
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.011061616.us.i, i64 %indvars.iv2179.i
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %.011221615.us.i, i64 %indvars.iv2179.i
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.011231614.us.i, i64 %indvars.iv2179.i
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %.011291613.us.i, i64 %indvars.iv2179.i
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %.011301612.us.i, i64 %indvars.iv2179.i
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %.011321611.us.i, i64 %indvars.iv2179.i
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %.011331610.us.i, i64 %indvars.iv2179.i
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.011351609.us.i, i64 %indvars.iv2179.i
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %.011361608.us.i, i64 %indvars.iv2179.i
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %.011621607.us.i, i64 %indvars.iv2179.i
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %.011671606.us.i, i64 %indvars.iv2179.i
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.011681605.us.i, i64 %indvars.iv2179.i
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.011691604.us.i, i64 %indvars.iv2179.i
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.011701603.us.i, i64 %indvars.iv2179.i
  %i.aet = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aed, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aeu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aee, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aev = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aef, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aew = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aeg, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aex = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aeh, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aey = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aei, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aez = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aej, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aek, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ael, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aem, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aen, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aeo, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aff = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aep, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aeq, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aer, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aes, <16 x i32> %i.yk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.afj = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afk = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afl = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afm = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afn = shufflevector <16 x float> %i.aex, <16 x float> %i.aey, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afo = shufflevector <16 x float> %i.aex, <16 x float> %i.aey, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afp = shufflevector <16 x float> %i.aez, <16 x float> %i.afa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afq = shufflevector <16 x float> %i.aez, <16 x float> %i.afa, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afr = shufflevector <16 x float> %i.afb, <16 x float> %i.afc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afs = shufflevector <16 x float> %i.afb, <16 x float> %i.afc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aft = shufflevector <16 x float> %i.afd, <16 x float> %i.afe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afu = shufflevector <16 x float> %i.afd, <16 x float> %i.afe, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afv = shufflevector <16 x float> %i.aff, <16 x float> %i.afg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afw = shufflevector <16 x float> %i.aff, <16 x float> %i.afg, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afx = shufflevector <16 x float> %i.afh, <16 x float> %i.afi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.afy = shufflevector <16 x float> %i.afh, <16 x float> %i.afi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.afz = shufflevector <16 x float> %i.afj, <16 x float> %i.afl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aga = shufflevector <16 x float> %i.afj, <16 x float> %i.afl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agb = shufflevector <16 x float> %i.afk, <16 x float> %i.afm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.agc = shufflevector <16 x float> %i.afk, <16 x float> %i.afm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agd = shufflevector <16 x float> %i.afn, <16 x float> %i.afp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.age = shufflevector <16 x float> %i.afn, <16 x float> %i.afp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agf = shufflevector <16 x float> %i.afo, <16 x float> %i.afq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.agg = shufflevector <16 x float> %i.afo, <16 x float> %i.afq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agh = shufflevector <16 x float> %i.afr, <16 x float> %i.aft, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.agi = shufflevector <16 x float> %i.afr, <16 x float> %i.aft, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agj = shufflevector <16 x float> %i.afs, <16 x float> %i.afu, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.agk = shufflevector <16 x float> %i.afs, <16 x float> %i.afu, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agl = shufflevector <16 x float> %i.afv, <16 x float> %i.afx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.agm = shufflevector <16 x float> %i.afv, <16 x float> %i.afx, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agn = shufflevector <16 x float> %i.afw, <16 x float> %i.afy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ago = shufflevector <16 x float> %i.afw, <16 x float> %i.afy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.agp = shufflevector <16 x float> %i.afz, <16 x float> %i.agd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.agq = shufflevector <16 x float> %i.agh, <16 x float> %i.agl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.agr = shufflevector <16 x float> %i.aga, <16 x float> %i.age, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ags = shufflevector <16 x float> %i.agi, <16 x float> %i.agm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.agt = shufflevector <16 x float> %i.agb, <16 x float> %i.agf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.agu = shufflevector <16 x float> %i.agj, <16 x float> %i.agn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  store <4 x i64> %i.atq, ptr %i.ati, align 1, !tbaa !100
  %i.atr = getelementptr inbounds nuw i8, ptr %.911801661.us.i, i64 64
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.311021664.us.i, i64 %indvars.iv2198.i
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 4 ; 2 uses
  %i.atu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.att, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.atv = bitcast <16 x float> %i.atu to <16 x i32>
  %i.atw = lshr <16 x i32> %i.atv, splat (i32 16) ; 2 uses
  %i.atx = shufflevector <16 x i32> %i.atw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aty = shufflevector <16 x i32> %i.atw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atz = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.atx, <8 x i32> %i.aty)
  %i.aua = bitcast <16 x i16> %i.atz to <4 x i64>
  %i.aub = shufflevector <4 x i64> %i.aua, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aub, ptr %i.atr, align 1, !tbaa !100
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %i.yr
  %i.aud = getelementptr inbounds nuw i8, ptr %.911801661.us.i, i64 96
  %i.aue = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.auc, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.auf = bitcast <16 x float> %i.aue to <16 x i32>
  %i.aug = lshr <16 x i32> %i.auf, splat (i32 16) ; 2 uses
  %i.auh = shufflevector <16 x i32> %i.aug, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aui = shufflevector <16 x i32> %i.aug, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.auh, <8 x i32> %i.aui)
  %i.auk = bitcast <16 x i16> %i.auj to <4 x i64>
  %i.aul = shufflevector <4 x i64> %i.auk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aul, ptr %i.aud, align 1, !tbaa !100
  %i.aum = getelementptr inbounds nuw i8, ptr %.911801661.us.i, i64 128 ; 3 uses
  %indvars.iv.next2199.i.1 = add nuw nsw i64 %indvars.iv2198.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1668.i.unr-lcssa, label %.preheader1592.us.i.new, !llvm.loop !551

._crit_edge.us1668.i.unr-lcssa:                   ; preds = %.preheader1592.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1668.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1668.i.unr-lcssa, %.preheader1592.us.i
  %indvars.iv2198.i.epil.init = phi i64 [ 0, %.preheader1592.us.i ], [ %indvars.iv.next2199.i.1, %._crit_edge.us1668.i.unr-lcssa ]
  %.911801661.us.i.epil.init = phi ptr [ %.811791663.us.i, %.preheader1592.us.i ], [ %i.aum, %._crit_edge.us1668.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod762)
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %.311021664.us.i, i64 %indvars.iv2198.i.epil.init ; 2 uses
  %i.auo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aun, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.aup = bitcast <16 x float> %i.auo to <16 x i32>
  %i.auq = lshr <16 x i32> %i.aup, splat (i32 16) ; 2 uses
  %i.aur = shufflevector <16 x i32> %i.auq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aus = shufflevector <16 x i32> %i.auq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aut = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aur, <8 x i32> %i.aus)
  %i.auu = bitcast <16 x i16> %i.aut to <4 x i64>
  %i.auv = shufflevector <4 x i64> %i.auu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.auv, ptr %.911801661.us.i.epil.init, align 1, !tbaa !100
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.aun, i64 %i.yr
  %i.aux = getelementptr inbounds nuw i8, ptr %.911801661.us.i.epil.init, i64 32
  %i.auy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.auw, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.auz = bitcast <16 x float> %i.auy to <16 x i32>
  %i.ava = lshr <16 x i32> %i.auz, splat (i32 16) ; 2 uses
  %i.avb = shufflevector <16 x i32> %i.ava, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.avc = shufflevector <16 x i32> %i.ava, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avd = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.avb, <8 x i32> %i.avc)
  %i.ave = bitcast <16 x i16> %i.avd to <4 x i64>
  %i.avf = shufflevector <4 x i64> %i.ave, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.avf, ptr %i.aux, align 1, !tbaa !100
  %i.avg = getelementptr inbounds nuw i8, ptr %.911801661.us.i.epil.init, i64 64
  br label %._crit_edge.us1668.i

._crit_edge.us1668.i:                             ; preds = %._crit_edge.us1668.i.unr-lcssa, %.epil.preheader
  %.lcssa757 = phi ptr [ %i.aum, %._crit_edge.us1668.i.unr-lcssa ], [ %i.avg, %.epil.preheader ] ; 2 uses
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %.311021664.us.i, i64 %i.yx ; 2 uses
  %i.avi = add nuw nsw i32 %.311851662.us.i, 2    ; 3 uses
  %i.avj = or disjoint i32 %i.avi, 1
  %i.avk = icmp slt i32 %i.avj, %i.p
  br i1 %i.avk, label %.preheader1592.us.i, label %.preheader1596.i, !llvm.loop !552

.preheader1596.i:                                 ; preds = %._crit_edge.us1668.i, %.preheader1597.i
  %.31185.lcssa.i = phi i32 [ %.21184.lcssa.i, %.preheader1597.i ], [ %i.avi, %._crit_edge.us1668.i ] ; 2 uses
  %.81179.lcssa.i = phi ptr [ %.51176.lcssa.i, %.preheader1597.i ], [ %.lcssa757, %._crit_edge.us1668.i ]
  %.31102.lcssa.i = phi ptr [ %.21101.lcssa.i, %.preheader1597.i ], [ %i.avh, %._crit_edge.us1668.i ] ; 3 uses
  %i.avl = icmp sge i32 %.31185.lcssa.i, %i.p
  %brmerge.i = or i1 %i.yy, %i.avl
  br i1 %brmerge.i, label %._crit_edge1677.split.i, label %.preheader1591.i

.preheader1591.i:                                 ; preds = %.preheader1596.i, %._crit_edge.i
  %.111676.i = phi ptr [ %.lcssa760, %._crit_edge.i ], [ %.81179.lcssa.i, %.preheader1596.i ] ; 2 uses
  %.411861675.i = phi i32 [ %i.avw, %._crit_edge.i ], [ %.31185.lcssa.i, %.preheader1596.i ]
  br i1 %i.zn, label %.epil.preheader763, label %.preheader1591.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1591.i.new
  br i1 %lcmp.mod765.not, label %._crit_edge.i, label %.epil.preheader763

.epil.preheader763:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1591.i
  %indvars.iv2203.i.epil.init = phi i64 [ 0, %.preheader1591.i ], [ %indvars.iv.next2204.i.1, %._crit_edge.i.unr-lcssa ]
  %.121674.i.epil.init = phi ptr [ %.111676.i, %.preheader1591.i ], [ %i.awr, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod767)
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %.31102.lcssa.i, i64 %indvars.iv2203.i.epil.init
  %i.avn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.avm, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.avo = bitcast <16 x float> %i.avn to <16 x i32>
  %i.avp = lshr <16 x i32> %i.avo, splat (i32 16) ; 2 uses
  %i.avq = shufflevector <16 x i32> %i.avp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.avr = shufflevector <16 x i32> %i.avp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avs = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.avq, <8 x i32> %i.avr)
  %i.avt = bitcast <16 x i16> %i.avs to <4 x i64>
  %i.avu = shufflevector <4 x i64> %i.avt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.avu, ptr %.121674.i.epil.init, align 1, !tbaa !100
  %i.avv = getelementptr inbounds nuw i8, ptr %.121674.i.epil.init, i64 32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader763
  %.lcssa760 = phi ptr [ %i.awr, %._crit_edge.i.unr-lcssa ], [ %i.avv, %.epil.preheader763 ]
  %i.avw = add nuw nsw i32 %.411861675.i, 1       ; 2 uses
  %exitcond2208.not.i = icmp eq i32 %i.avw, %i.p
  br i1 %exitcond2208.not.i, label %._crit_edge1677.split.i, label %.preheader1591.i, !llvm.loop !553

.preheader1591.i.new:                             ; preds = %.preheader1591.i, %.preheader1591.i.new
  %indvars.iv2203.i = phi i64 [ %indvars.iv.next2204.i.1, %.preheader1591.i.new ], [ 0, %.preheader1591.i ] ; 3 uses
  %.121674.i = phi ptr [ %i.awr, %.preheader1591.i.new ], [ %.111676.i, %.preheader1591.i ] ; 3 uses
  %niter769 = phi i64 [ %niter769.next.1, %.preheader1591.i.new ], [ 0, %.preheader1591.i ]
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.31102.lcssa.i, i64 %indvars.iv2203.i
  %i.avy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.avx, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.avz = bitcast <16 x float> %i.avy to <16 x i32>
  %i.awa = lshr <16 x i32> %i.avz, splat (i32 16) ; 2 uses
  %i.awb = shufflevector <16 x i32> %i.awa, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awc = shufflevector <16 x i32> %i.awa, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awd = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.awb, <8 x i32> %i.awc)
  %i.awe = bitcast <16 x i16> %i.awd to <4 x i64>
  %i.awf = shufflevector <4 x i64> %i.awe, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.awf, ptr %.121674.i, align 1, !tbaa !100
  %i.awg = getelementptr inbounds nuw i8, ptr %.121674.i, i64 32
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.31102.lcssa.i, i64 %indvars.iv2203.i
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 4
  %i.awj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.awi, <16 x i32> %i.yq, <16 x i1> splat (i1 true), i32 4)
  %i.awk = bitcast <16 x float> %i.awj to <16 x i32>
  %i.awl = lshr <16 x i32> %i.awk, splat (i32 16) ; 2 uses
  %i.awm = shufflevector <16 x i32> %i.awl, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awn = shufflevector <16 x i32> %i.awl, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awo = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.awm, <8 x i32> %i.awn)
  %i.awp = bitcast <16 x i16> %i.awo to <4 x i64>
  %i.awq = shufflevector <4 x i64> %i.awp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.awq, ptr %i.awg, align 1, !tbaa !100
  %i.awr = getelementptr inbounds nuw i8, ptr %.121674.i, i64 64 ; 3 uses
  %indvars.iv.next2204.i.1 = add nuw nsw i64 %indvars.iv2203.i, 2 ; 2 uses
  %niter769.next.1 = add i64 %niter769, 2         ; 2 uses
  %niter769.ncmp.1 = icmp eq i64 %niter769.next.1, %unroll_iter768
  br i1 %niter769.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader1591.i.new, !llvm.loop !554

._crit_edge1677.split.i:                          ; preds = %._crit_edge.i, %.preheader1596.i, %.preheader1592.lr.ph.i, %.preheader1593.lr.ph.i
  %indvars.iv.next2210.i = add nuw nsw i64 %indvars.iv2209.i, 16 ; 3 uses
  %i.aws = or disjoint i64 %indvars.iv.next2210.i, 15
  %i.awt = icmp samesign ult i64 %i.aws, %i.zi
  %indvars.iv.next.i104 = add i32 %indvars.iv.i103, %i.ze
  br i1 %i.awt, label %_ZN4ncnn3MatD2Ev.exit1306.i, label %.preheader1590.loopexit.i, !llvm.loop !555

.preheader1581.loopexit.i:                        ; preds = %._crit_edge1773.split.i
  %i.awu = trunc nuw nsw i64 %indvars.iv.next2273.i to i32
  br label %.preheader1581.i

.preheader1581.i:                                 ; preds = %.preheader1581.loopexit.i, %.preheader1590.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1590.i ], [ %i.awu, %.preheader1581.loopexit.i ] ; 4 uses
  %i.awv = or disjoint i32 %.1.lcssa.i, 3         ; 2 uses
  %i.aww = icmp slt i32 %i.awv, %i.eg
  br i1 %i.aww, label %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i, label %.preheader1572.i

_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i:                ; preds = %.preheader1581.i
  %i.awx = insertelement <2 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.awy = shufflevector <2 x i32> %i.awx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.awz = or disjoint <4 x i32> %i.awy, <i32 0, i32 0, i32 0, i32 3>
  %i.axa = mul i32 %i.pl, %i.p                    ; 6 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.axd = insertelement <4 x i32> poison, i32 %i.pl, i64 0
  %i.axe = shufflevector <4 x i32> %i.axd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axf = mul <4 x i32> %i.axe, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.axg = insertelement <8 x i32> poison, i32 %i.pl, i64 0
  %i.axh = shufflevector <8 x i32> %i.axg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.axi = mul <8 x i32> %i.axh, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.axj = insertelement <16 x i32> poison, i32 %i.pl, i64 0
  %i.axk = shufflevector <16 x i32> %i.axj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.axl = mul <16 x i32> %i.axk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.axm = icmp sgt i32 %i.p, 15
  %i.axn = icmp sgt i32 %i.pl, 0                  ; 4 uses
  %i.axo = shl i32 %i.pl, 4
  %i.axp = sext i32 %i.axo to i64                 ; 5 uses
  %i.axq = shl i32 %i.pl, 3
  %i.axr = sext i32 %i.axq to i64                 ; 5 uses
  %i.axs = shl i32 %i.pl, 2
  %i.axt = sext i32 %i.axs to i64                 ; 4 uses
  %i.axu = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.axv = shufflevector <4 x i32> %i.axu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axw = mul <4 x i32> %i.axf, %i.axv           ; 11 uses
  %i.axx = sext i32 %i.pl to i64                  ; 3 uses
  %i.axy = shl i32 %i.pl, 1
  %i.axz = sext i32 %i.axy to i64
  %i.aya = icmp slt i32 %i.pl, 1
  %i.ayb = add i32 %i.p, -16                      ; 2 uses
  %i.ayc = lshr i32 %i.ayb, 2
  %i.ayd = and i32 %i.ayc, 1073741820
  %narrow2448.i = add nuw nsw i32 %i.ayd, 4
  %i.aye = zext nneg i32 %narrow2448.i to i64
  %i.ayf = mul nsw i64 %i.axp, %i.aye
  %i.ayg = shl i32 %i.axa, 2
  %i.ayh = add nuw <4 x i32> %i.awz, <i32 0, i32 1, i32 2, i32 0>
  %i.ayi = insertelement <4 x i32> poison, i32 %i.axa, i64 0
  %i.ayj = shufflevector <4 x i32> %i.ayi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayk = mul <4 x i32> %i.ayj, %i.ayh
  %i.ayl = and i32 %i.ayb, -16
  %i.aym = add nuw nsw i32 %i.ayl, 16             ; 4 uses
  %i.ayn = add i32 %i.p, -8
  %i.ayo = zext nneg i32 %.1.lcssa.i to i64
  %i.ayp = sext i32 %i.eg to i64
  %i.ayq = or disjoint i32 %i.aym, 7
  %i.ayr = icmp slt i32 %i.ayq, %i.p
  %wide.trip.count2293.i = zext i32 %i.pl to i64  ; 8 uses
  %i.ays = insertelement <4 x i32> poison, i32 %i.ayg, i64 0
  %i.ayt = shufflevector <4 x i32> %i.ays, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayu = add nsw i64 %wide.trip.count2293.i, -1 ; 2 uses
  %xtraiter785 = and i64 %wide.trip.count2293.i, 1
  %i.ayv = icmp eq i64 %i.ayu, 0
  %unroll_iter790 = and i64 %wide.trip.count2293.i, 2147483646
  %lcmp.mod787.not = icmp eq i64 %xtraiter785, 0
  %lcmp.mod789 = trunc i32 %i.pl to i1
  %xtraiter793 = and i64 %wide.trip.count2293.i, 3 ; 3 uses
  %i.ayw = icmp ult i64 %i.ayu, 3
  %unroll_iter798 = and i64 %wide.trip.count2293.i, 2147483644
  %lcmp.mod795.not = icmp eq i64 %xtraiter793, 0
  %lcmp.mod797 = icmp ne i64 %xtraiter793, 0
  br label %_ZN4ncnn3MatD2Ev.exit1304.i

_ZN4ncnn3MatD2Ev.exit1305.i:                      ; preds = %._crit_edge1773.split.i, %_ZN4ncnn3MatD2Ev.exit1305.lr.ph.i
  %indvars.iv2272.i = phi i64 [ %i.aaz, %_ZN4ncnn3MatD2Ev.exit1305.lr.ph.i ], [ %indvars.iv.next2273.i, %._crit_edge1773.split.i ] ; 2 uses
  %indvars.iv2270.i = phi i32 [ %i.aba, %_ZN4ncnn3MatD2Ev.exit1305.lr.ph.i ], [ %indvars.iv.next2271.i, %._crit_edge1773.split.i ] ; 2 uses
  %indvars.iv2213.i = phi i32 [ %i.aau, %_ZN4ncnn3MatD2Ev.exit1305.lr.ph.i ], [ %indvars.iv.next2214.i, %._crit_edge1773.split.i ] ; 2 uses
  %i.ayx = sext i32 %indvars.iv2213.i to i64
  %i.ayy = shl nsw i64 %i.ayx, 2
  %i.ayz = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 9 uses
  %i.aza = trunc nuw i64 %indvars.iv2272.i to i32 ; 9 uses
  %i.azb = mul i32 %i.zr, %i.aza
  %i.azc = sext i32 %i.azb to i64
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.azc ; 2 uses
  %i.aze = add i32 %i.aza, 1
  %i.azf = mul i32 %i.aze, %i.zr
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.azg ; 2 uses
  %i.azi = add i32 %i.aza, 2
  %i.azj = mul i32 %i.azi, %i.zr
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.azk ; 2 uses
  %i.azm = add i32 %i.aza, 3
  %i.azn = mul i32 %i.azm, %i.zr
  %i.azo = sext i32 %i.azn to i64
  %i.azp = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.azo ; 2 uses
  %i.azq = add i32 %i.aza, 4
  %i.azr = mul i32 %i.azq, %i.zr
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.azs ; 2 uses
  %i.azu = add i32 %i.aza, 5
  %i.azv = mul i32 %i.azu, %i.zr
  %i.azw = sext i32 %i.azv to i64
  %i.azx = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.azw ; 2 uses
  %i.azy = add i32 %i.aza, 6
  %i.azz = mul i32 %i.azy, %i.zr
  %i.baa = sext i32 %i.azz to i64
  %i.bab = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.baa ; 2 uses
  %i.bac = mul i32 %indvars.iv2270.i, %i.zr
  %i.bad = sext i32 %i.bac to i64
  %i.bae = getelementptr inbounds [4 x i8], ptr %i.ayz, i64 %i.bad ; 2 uses
  %i.baf = lshr i32 %i.aza, 4
  %i.bag = lshr i32 %i.aza, 3
  %i.bah = and i32 %i.bag, 1
  %i.bai = add nuw nsw i32 %i.bah, %i.baf
  %i.baj = load ptr, ptr %i.pj, align 8, !tbaa !18, !noalias !556
  %i.bak = load i64, ptr %i.zs, align 8, !tbaa !20, !noalias !556
  %i.bal = zext nneg i32 %i.bai to i64
  %i.bam = mul i64 %i.bak, %i.bal
  %i.ban = load i64, ptr %i.zt, align 8, !tbaa !65, !noalias !556
  %i.bao = mul i64 %i.bam, %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %i.baj, i64 %i.bao ; 4 uses
  br i1 %i.aaa, label %.preheader1586.lr.ph.i, label %.preheader1589.i

.preheader1586.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1305.i
  br i1 %i.aab, label %.preheader1586.us.i, label %.preheader1589.thread.i

.preheader1586.us.i:                              ; preds = %.preheader1586.lr.ph.i, %._crit_edge1682.us.i
  %.012371693.us.i = phi ptr [ %i.bey, %._crit_edge1682.us.i ], [ %i.azd, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012411692.us.i = phi ptr [ %i.bez, %._crit_edge1682.us.i ], [ %i.azh, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012431691.us.i = phi ptr [ %i.bfa, %._crit_edge1682.us.i ], [ %i.azl, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012451690.us.i = phi ptr [ %i.bfb, %._crit_edge1682.us.i ], [ %i.azp, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012471689.us.i = phi ptr [ %i.bfc, %._crit_edge1682.us.i ], [ %i.azt, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012491688.us.i = phi ptr [ %i.bfd, %._crit_edge1682.us.i ], [ %i.azx, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012521687.us.i = phi ptr [ %i.bfe, %._crit_edge1682.us.i ], [ %i.bab, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012541686.us.i = phi ptr [ %i.bff, %._crit_edge1682.us.i ], [ %i.bae, %.preheader1586.lr.ph.i ] ; 2 uses
  %.012561685.us.i = phi ptr [ %i.bex, %._crit_edge1682.us.i ], [ %i.bap, %.preheader1586.lr.ph.i ]
  %.012681684.us.i = phi i32 [ %i.bfg, %._crit_edge1682.us.i ], [ 0, %.preheader1586.lr.ph.i ]
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fl, %.preheader1586.us.i
  %indvars.iv2238.i = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2239.i, %bb.fl ] ; 9 uses
  %.112571681.us.i = phi ptr [ %.012561685.us.i, %.preheader1586.us.i ], [ %i.bex, %bb.fl ] ; 9 uses
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %.012371693.us.i, i64 %indvars.iv2238.i
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %.012411692.us.i, i64 %indvars.iv2238.i
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %.012431691.us.i, i64 %indvars.iv2238.i
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %.012451690.us.i, i64 %indvars.iv2238.i
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %.012471689.us.i, i64 %indvars.iv2238.i
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.012491688.us.i, i64 %indvars.iv2238.i
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %.012521687.us.i, i64 %indvars.iv2238.i
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %.012541686.us.i, i64 %indvars.iv2238.i
  %i.bay = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.baq, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.baz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bar, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bba = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bas, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bbb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bat, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bbc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bau, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bbd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bav, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bbe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.baw, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bbf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bax, <16 x i32> %i.zz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bbg = shufflevector <16 x float> %i.bay, <16 x float> %i.baz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bbh = shufflevector <16 x float> %i.bay, <16 x float> %i.baz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbi = shufflevector <16 x float> %i.bba, <16 x float> %i.bbb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bbj = shufflevector <16 x float> %i.bba, <16 x float> %i.bbb, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbk = shufflevector <16 x float> %i.bbc, <16 x float> %i.bbd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bbl = shufflevector <16 x float> %i.bbc, <16 x float> %i.bbd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbm = shufflevector <16 x float> %i.bbe, <16 x float> %i.bbf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bbn = shufflevector <16 x float> %i.bbe, <16 x float> %i.bbf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bbo = shufflevector <16 x float> %i.bbg, <16 x float> %i.bbi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bbp = shufflevector <16 x float> %i.bbg, <16 x float> %i.bbi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bbq = shufflevector <16 x float> %i.bbh, <16 x float> %i.bbj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bbr = shufflevector <16 x float> %i.bbh, <16 x float> %i.bbj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bbs = shufflevector <16 x float> %i.bbk, <16 x float> %i.bbm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bbt = shufflevector <16 x float> %i.bbk, <16 x float> %i.bbm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bbu = shufflevector <16 x float> %i.bbl, <16 x float> %i.bbn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bbv = shufflevector <16 x float> %i.bbl, <16 x float> %i.bbn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bbw = shufflevector <16 x float> %i.bbo, <16 x float> %i.bbs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bbx = shufflevector <16 x float> %i.bbp, <16 x float> %i.bbt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bby = shufflevector <16 x float> %i.bbq, <16 x float> %i.bbu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bbz = shufflevector <16 x float> %i.bbr, <16 x float> %i.bbv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bca = shufflevector <16 x float> %i.bbo, <16 x float> %i.bbs, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bcb = shufflevector <16 x float> %i.bbp, <16 x float> %i.bbt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bcc = shufflevector <16 x float> %i.bbq, <16 x float> %i.bbu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bcd = shufflevector <16 x float> %i.bbr, <16 x float> %i.bbv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bce = shufflevector <16 x float> %i.bbw, <16 x float> %i.bbx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bcf = shufflevector <16 x float> %i.bby, <16 x float> %i.bbz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bcg = shufflevector <16 x float> %i.bca, <16 x float> %i.bcb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bch = shufflevector <16 x float> %i.bcc, <16 x float> %i.bcd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bci = shufflevector <16 x float> %i.bbw, <16 x float> %i.bbx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bcj = shufflevector <16 x float> %i.bby, <16 x float> %i.bbz, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bck = shufflevector <16 x float> %i.bca, <16 x float> %i.bcb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bcl = shufflevector <16 x float> %i.bcc, <16 x float> %i.bcd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bcm = bitcast <16 x float> %i.bce to <16 x i32>
  %i.bcn = lshr <16 x i32> %i.bcm, splat (i32 16) ; 2 uses
  %i.bco = shufflevector <16 x i32> %i.bcn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcp = shufflevector <16 x i32> %i.bcn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcq = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bco, <8 x i32> %i.bcp)
  %i.bcr = bitcast <16 x i16> %i.bcq to <4 x i64>
  %i.bcs = shufflevector <4 x i64> %i.bcr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bcs, ptr %.112571681.us.i, align 1, !tbaa !100
  %i.bct = getelementptr inbounds nuw i8, ptr %.112571681.us.i, i64 32
  %i.bcu = bitcast <16 x float> %i.bcf to <16 x i32>
  %i.bcv = lshr <16 x i32> %i.bcu, splat (i32 16) ; 2 uses
  %i.bcw = shufflevector <16 x i32> %i.bcv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcx = shufflevector <16 x i32> %i.bcv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcy = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bcw, <8 x i32> %i.bcx)
  %i.bcz = bitcast <16 x i16> %i.bcy to <4 x i64>
  %i.bda = shufflevector <4 x i64> %i.bcz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bda, ptr %i.bct, align 1, !tbaa !100
  %i.bdb = getelementptr inbounds nuw i8, ptr %.112571681.us.i, i64 64
  %i.bdc = bitcast <16 x float> %i.bcg to <16 x i32>
  %i.bdd = lshr <16 x i32> %i.bdc, splat (i32 16) ; 2 uses
  %i.bde = shufflevector <16 x i32> %i.bdd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdf = shufflevector <16 x i32> %i.bdd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdg = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bde, <8 x i32> %i.bdf)
  %i.bdh = bitcast <16 x i16> %i.bdg to <4 x i64>
  %i.bdi = shufflevector <4 x i64> %i.bdh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdi, ptr %i.bdb, align 1, !tbaa !100
  %i.bdj = getelementptr inbounds nuw i8, ptr %.112571681.us.i, i64 96
  %i.bdk = bitcast <16 x float> %i.bch to <16 x i32>
  %i.bdl = lshr <16 x i32> %i.bdk, splat (i32 16) ; 2 uses
  %i.bdm = shufflevector <16 x i32> %i.bdl, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdn = shufflevector <16 x i32> %i.bdl, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdo = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdm, <8 x i32> %i.bdn)
  %i.bdp = bitcast <16 x i16> %i.bdo to <4 x i64>
  %i.bdq = shufflevector <4 x i64> %i.bdp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdq, ptr %i.bdj, align 1, !tbaa !100
  %i.bdr = getelementptr inbounds nuw i8, ptr %.112571681.us.i, i64 128
  %i.bds = bitcast <16 x float> %i.bci to <16 x i32>
  %i.bdt = lshr <16 x i32> %i.bds, splat (i32 16) ; 2 uses
  %i.bdu = shufflevector <16 x i32> %i.bdt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdv = shufflevector <16 x i32> %i.bdt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdu, <8 x i32> %i.bdv)
  %i.bdx = bitcast <16 x i16> %i.bdw to <4 x i64>
  %i.bdy = shufflevector <4 x i64> %i.bdx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdy, ptr %i.bdr, align 1, !tbaa !100
  %i.bdz = getelementptr inbounds nuw i8, ptr %.112571681.us.i, i64 160
  %i.bea = bitcast <16 x float> %i.bcj to <16 x i32>
  %i.beb = lshr <16 x i32> %i.bea, splat (i32 16) ; 2 uses
  %i.bec = shufflevector <16 x i32> %i.beb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bed = shufflevector <16 x i32> %i.beb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bee = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bec, <8 x i32> %i.bed)
  %i.bef = bitcast <16 x i16> %i.bee to <4 x i64>
  %i.beg = shufflevector <4 x i64> %i.bef, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.beg, ptr %i.bdz, align 1, !tbaa !100
  %i.beh = getelementptr inbounds nuw i8, ptr %.112571681.us.i, i64 192
  %i.bei = bitcast <16 x float> %i.bck to <16 x i32>
  %i.bej = lshr <16 x i32> %i.bei, splat (i32 16) ; 2 uses
  %i.bek = shufflevector <16 x i32> %i.bej, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bel = shufflevector <16 x i32> %i.bej, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bem = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bek, <8 x i32> %i.bel)
  %i.ben = bitcast <16 x i16> %i.bem to <4 x i64>
  %i.beo = shufflevector <4 x i64> %i.ben, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
end_hunk_9
begin_hunk_10_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.blx = shufflevector <8 x i32> %i.blw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bly = shufflevector <8 x i32> %i.blw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.blz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blx, <4 x i32> %i.bly)
  store <8 x i16> %i.blz, ptr %i.blr, align 1, !tbaa !100
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %i.blt, i64 %i.aaj
  %i.bmb = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 48
  %i.bmc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bma, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmd = bitcast <8 x float> %i.bmc to <8 x i32>
  %i.bme = lshr <8 x i32> %i.bmd, splat (i32 16)  ; 2 uses
  %i.bmf = shufflevector <8 x i32> %i.bme, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmg = shufflevector <8 x i32> %i.bme, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmf, <4 x i32> %i.bmg)
  store <8 x i16> %i.bmh, ptr %i.bmb, align 1, !tbaa !100
  %i.bmi = getelementptr inbounds nuw i8, ptr %.812641754.us.i, i64 64 ; 3 uses
  %indvars.iv.next2260.i.1 = add nuw nsw i64 %indvars.iv2259.i, 2 ; 2 uses
  %niter776.next.1 = add i64 %niter776, 2         ; 2 uses
  %niter776.ncmp.1 = icmp eq i64 %niter776.next.1, %unroll_iter775
  br i1 %niter776.ncmp.1, label %._crit_edge1756.us.i.unr-lcssa, label %.preheader1583.us.i.new, !llvm.loop !565

._crit_edge1756.us.i.unr-lcssa:                   ; preds = %.preheader1583.us.i.new
  br i1 %lcmp.mod772.not, label %._crit_edge1756.us.i, label %.epil.preheader770

.epil.preheader770:                               ; preds = %._crit_edge1756.us.i.unr-lcssa, %.preheader1583.us.i
  %indvars.iv2259.i.epil.init = phi i64 [ 0, %.preheader1583.us.i ], [ %indvars.iv.next2260.i.1, %._crit_edge1756.us.i.unr-lcssa ]
  %.812641754.us.i.epil.init = phi ptr [ %.712631759.us.i, %.preheader1583.us.i ], [ %i.bmi, %._crit_edge1756.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod774)
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %indvars.iv2259.i.epil.init ; 2 uses
  %i.bmk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmj, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bml = bitcast <8 x float> %i.bmk to <8 x i32>
  %i.bmm = lshr <8 x i32> %i.bml, splat (i32 16)  ; 2 uses
  %i.bmn = shufflevector <8 x i32> %i.bmm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmo = shufflevector <8 x i32> %i.bmm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmn, <4 x i32> %i.bmo)
  store <8 x i16> %i.bmp, ptr %.812641754.us.i.epil.init, align 1, !tbaa !100
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %i.bmj, i64 %i.aaj
  %i.bmr = getelementptr inbounds nuw i8, ptr %.812641754.us.i.epil.init, i64 16
  %i.bms = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bmq, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmt = bitcast <8 x float> %i.bms to <8 x i32>
  %i.bmu = lshr <8 x i32> %i.bmt, splat (i32 16)  ; 2 uses
  %i.bmv = shufflevector <8 x i32> %i.bmu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmw = shufflevector <8 x i32> %i.bmu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bmx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bmv, <4 x i32> %i.bmw)
  store <8 x i16> %i.bmx, ptr %i.bmr, align 1, !tbaa !100
  %i.bmy = getelementptr inbounds nuw i8, ptr %.812641754.us.i.epil.init, i64 32
  br label %._crit_edge1756.us.i

._crit_edge1756.us.i:                             ; preds = %._crit_edge1756.us.i.unr-lcssa, %.epil.preheader770
  %.lcssa745 = phi ptr [ %i.bmi, %._crit_edge1756.us.i.unr-lcssa ], [ %i.bmy, %.epil.preheader770 ] ; 2 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.312401760.us.i, i64 %i.aan ; 2 uses
  %i.bna = add nuw nsw i32 %.312711758.us.i, 2    ; 3 uses
  %i.bnb = or disjoint i32 %i.bna, 1
  %i.bnc = icmp slt i32 %i.bnb, %i.p
  br i1 %i.bnc, label %.preheader1583.us.i, label %.preheader1587.i, !llvm.loop !566

.preheader1587.i:                                 ; preds = %._crit_edge1756.us.i, %.preheader1588.i
  %.31271.lcssa.i = phi i32 [ %.21270.lcssa.i, %.preheader1588.i ], [ %i.bna, %._crit_edge1756.us.i ] ; 2 uses
  %.71263.lcssa.i = phi ptr [ %.41260.lcssa.i, %.preheader1588.i ], [ %.lcssa745, %._crit_edge1756.us.i ]
  %.31240.lcssa.i = phi ptr [ %.21239.lcssa.i, %.preheader1588.i ], [ %i.bmz, %._crit_edge1756.us.i ] ; 5 uses
  %i.bnd = icmp sge i32 %.31271.lcssa.i, %i.p
  %brmerge2006.i = or i1 %i.aao, %i.bnd
  br i1 %brmerge2006.i, label %._crit_edge1773.split.i, label %.preheader1582.i

.preheader1582.i:                                 ; preds = %.preheader1587.i, %._crit_edge1769.i
  %.1012661772.i = phi ptr [ %.lcssa748, %._crit_edge1769.i ], [ %.71263.lcssa.i, %.preheader1587.i ] ; 2 uses
  %.412721771.i = phi i32 [ %i.bnm, %._crit_edge1769.i ], [ %.31271.lcssa.i, %.preheader1587.i ]
  br i1 %i.abg, label %.epil.preheader777, label %.preheader1582.i.new

._crit_edge1769.i.unr-lcssa:                      ; preds = %.preheader1582.i.new
  br i1 %lcmp.mod779.not, label %._crit_edge1769.i, label %.epil.preheader777

.epil.preheader777:                               ; preds = %._crit_edge1769.i.unr-lcssa, %.preheader1582.i
  %indvars.iv2264.i.epil.init = phi i64 [ 0, %.preheader1582.i ], [ %indvars.iv.next2265.i.3, %._crit_edge1769.i.unr-lcssa ]
  %.1112671767.i.epil.init = phi ptr [ %.1012661772.i, %.preheader1582.i ], [ %i.bov, %._crit_edge1769.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod781)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %.epil.preheader777
  %indvars.iv2264.i.epil = phi i64 [ %indvars.iv2264.i.epil.init, %.epil.preheader777 ], [ %indvars.iv.next2265.i.epil, %bb.fo ] ; 2 uses
  %.1112671767.i.epil = phi ptr [ %.1112671767.i.epil.init, %.epil.preheader777 ], [ %i.bnl, %bb.fo ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader777 ], [ %epil.iter.next, %bb.fo ]
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2264.i.epil
  %i.bnf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bne, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bng = bitcast <8 x float> %i.bnf to <8 x i32>
  %i.bnh = lshr <8 x i32> %i.bng, splat (i32 16)  ; 2 uses
  %i.bni = shufflevector <8 x i32> %i.bnh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bnj = shufflevector <8 x i32> %i.bnh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bni, <4 x i32> %i.bnj)
  store <8 x i16> %i.bnk, ptr %.1112671767.i.epil, align 1, !tbaa !100
  %i.bnl = getelementptr inbounds nuw i8, ptr %.1112671767.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2265.i.epil = add nuw nsw i64 %indvars.iv2264.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter778
  br i1 %epil.iter.cmp.not, label %._crit_edge1769.i, label %bb.fo, !llvm.loop !567

._crit_edge1769.i:                                ; preds = %bb.fo, %._crit_edge1769.i.unr-lcssa
  %.lcssa748 = phi ptr [ %i.bov, %._crit_edge1769.i.unr-lcssa ], [ %i.bnl, %bb.fo ]
  %i.bnm = add nuw nsw i32 %.412721771.i, 1       ; 2 uses
  %exitcond2269.not.i = icmp eq i32 %i.bnm, %i.p
  br i1 %exitcond2269.not.i, label %._crit_edge1773.split.i, label %.preheader1582.i, !llvm.loop !568

.preheader1582.i.new:                             ; preds = %.preheader1582.i, %.preheader1582.i.new
  %indvars.iv2264.i = phi i64 [ %indvars.iv.next2265.i.3, %.preheader1582.i.new ], [ 0, %.preheader1582.i ] ; 5 uses
  %.1112671767.i = phi ptr [ %i.bov, %.preheader1582.i.new ], [ %.1012661772.i, %.preheader1582.i ] ; 5 uses
  %niter783 = phi i64 [ %niter783.next.3, %.preheader1582.i.new ], [ 0, %.preheader1582.i ]
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2264.i
  %i.bno = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.bnn, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bnp = bitcast <8 x float> %i.bno to <8 x i32>
  %i.bnq = lshr <8 x i32> %i.bnp, splat (i32 16)  ; 2 uses
  %i.bnr = shufflevector <8 x i32> %i.bnq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bns = shufflevector <8 x i32> %i.bnq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bnr, <4 x i32> %i.bns)
  store <8 x i16> %i.bnt, ptr %.1112671767.i, align 1, !tbaa !100
  %i.bnu = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 16
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2264.i
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 4
  %i.bnx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bnw, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bny = bitcast <8 x float> %i.bnx to <8 x i32>
  %i.bnz = lshr <8 x i32> %i.bny, splat (i32 16)  ; 2 uses
  %i.boa = shufflevector <8 x i32> %i.bnz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bob = shufflevector <8 x i32> %i.bnz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.boc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.boa, <4 x i32> %i.bob)
  store <8 x i16> %i.boc, ptr %i.bnu, align 1, !tbaa !100
  %i.bod = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 32
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2264.i
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 8
  %i.bog = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.bof, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.boh = bitcast <8 x float> %i.bog to <8 x i32>
  %i.boi = lshr <8 x i32> %i.boh, splat (i32 16)  ; 2 uses
  %i.boj = shufflevector <8 x i32> %i.boi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bok = shufflevector <8 x i32> %i.boi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bol = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.boj, <4 x i32> %i.bok)
  store <8 x i16> %i.bol, ptr %i.bod, align 1, !tbaa !100
  %i.bom = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 48
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %.31240.lcssa.i, i64 %indvars.iv2264.i
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 12
  %i.bop = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.boo, <8 x i32> %i.aai, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.boq = bitcast <8 x float> %i.bop to <8 x i32>
  %i.bor = lshr <8 x i32> %i.boq, splat (i32 16)  ; 2 uses
  %i.bos = shufflevector <8 x i32> %i.bor, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bot = shufflevector <8 x i32> %i.bor, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bou = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bos, <4 x i32> %i.bot)
  store <8 x i16> %i.bou, ptr %i.bom, align 1, !tbaa !100
  %i.bov = getelementptr inbounds nuw i8, ptr %.1112671767.i, i64 64 ; 3 uses
  %indvars.iv.next2265.i.3 = add nuw nsw i64 %indvars.iv2264.i, 4 ; 2 uses
  %niter783.next.3 = add i64 %niter783, 4         ; 2 uses
  %niter783.ncmp.3 = icmp eq i64 %niter783.next.3, %unroll_iter782
  br i1 %niter783.ncmp.3, label %._crit_edge1769.i.unr-lcssa, label %.preheader1582.i.new, !llvm.loop !569

._crit_edge1773.split.i:                          ; preds = %._crit_edge1769.i, %.preheader1587.i, %.preheader1583.lr.ph.i, %.preheader1584.lr.ph.i
  %indvars.iv.next2273.i = add nuw nsw i64 %indvars.iv2272.i, 8 ; 3 uses
  %i.bow = icmp slt i64 %indvars.iv.next2273.i, %invariant.op.i
  %indvars.iv.next2214.i = add i32 %indvars.iv2213.i, %i.aav
  %indvars.iv.next2271.i = add i32 %indvars.iv2270.i, 8
  br i1 %i.bow, label %_ZN4ncnn3MatD2Ev.exit1305.i, label %.preheader1581.loopexit.i, !llvm.loop !570

.preheader1572.loopexit.i:                        ; preds = %._crit_edge1859.split.i
  %i.box = trunc nsw i64 %indvars.iv.next2325.i to i32
  br label %.preheader1572.i

.preheader1572.i:                                 ; preds = %.preheader1572.loopexit.i, %.preheader1581.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1581.i ], [ %i.box, %.preheader1572.loopexit.i ] ; 4 uses
  %i.boy = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.boz = icmp slt i32 %i.boy, %i.eg
  br i1 %i.boz, label %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i, label %.preheader1562.i

_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i:                ; preds = %.preheader1572.i
  %i.bpa = mul i32 %i.pl, %i.p                    ; 5 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bpc = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bpd = insertelement <4 x i32> poison, i32 %i.pl, i64 0
  %i.bpe = shufflevector <4 x i32> %i.bpd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bpf = mul <4 x i32> %i.bpe, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.bpg = insertelement <8 x i32> poison, i32 %i.pl, i64 0
  %i.bph = shufflevector <8 x i32> %i.bpg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bpi = mul <8 x i32> %i.bph, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.bpj = insertelement <16 x i32> poison, i32 %i.pl, i64 0
  %i.bpk = shufflevector <16 x i32> %i.bpj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bpl = mul <16 x i32> %i.bpk, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.bpm = icmp sgt i32 %i.p, 15
  %i.bpn = icmp sgt i32 %i.pl, 0                  ; 4 uses
  %i.bpo = shl i32 %i.pl, 4
  %i.bpp = sext i32 %i.bpo to i64                 ; 3 uses
  %i.bpq = shl i32 %i.pl, 3
  %i.bpr = sext i32 %i.bpq to i64                 ; 3 uses
  %i.bps = shl i32 %i.pl, 2
  %i.bpt = sext i32 %i.bps to i64                 ; 2 uses
  %i.bpu = sext i32 %i.pl to i64                  ; 6 uses
  %i.bpv = shl i32 %i.pl, 1
  %i.bpw = sext i32 %i.bpv to i64                 ; 2 uses
  %i.bpx = icmp slt i32 %i.pl, 1
  %i.bpy = add i32 %i.p, -16                      ; 2 uses
  %i.bpz = lshr i32 %i.bpy, 2
  %i.bqa = and i32 %i.bpz, 1073741820
  %narrow2450.i = add nuw nsw i32 %i.bqa, 4
  %i.bqb = zext nneg i32 %narrow2450.i to i64
  %i.bqc = mul nsw i64 %i.bpp, %i.bqb
  %i.bqd = mul i32 %i.bpa, %.2.lcssa.i
  %i.bqe = shl i32 %i.bpa, 1                      ; 2 uses
  %i.bqf = mul i32 %i.boy, %i.bpa
  %i.bqg = and i32 %i.bpy, -16
  %i.bqh = add nuw nsw i32 %i.bqg, 16             ; 4 uses
  %i.bqi = add i32 %i.p, -8
  %i.bqj = sext i32 %.2.lcssa.i to i64
  %i.bqk = sext i32 %i.eg to i64
  %i.bql = or disjoint i32 %i.bqh, 7
  %i.bqm = icmp slt i32 %i.bql, %i.p
  %wide.trip.count2337.i = zext i32 %i.pl to i64  ; 19 uses
  %i.bqn = add nsw i64 %wide.trip.count2337.i, -1 ; 3 uses
  %xtraiter801 = and i64 %wide.trip.count2337.i, 1
  %i.bqo = icmp eq i64 %i.bqn, 0
  %unroll_iter806 = and i64 %wide.trip.count2337.i, 2147483646
  %lcmp.mod803.not = icmp eq i64 %xtraiter801, 0
  %lcmp.mod805 = trunc i32 %i.pl to i1
  %xtraiter809 = and i64 %wide.trip.count2337.i, 1
  %i.bqp = icmp eq i64 %i.bqn, 0
  %unroll_iter814 = and i64 %wide.trip.count2337.i, 2147483646
  %lcmp.mod811.not = icmp eq i64 %xtraiter809, 0
  %lcmp.mod813 = trunc i32 %i.pl to i1
  %xtraiter817 = and i64 %wide.trip.count2337.i, 1
  %i.bqq = icmp eq i64 %i.bqn, 0
  %unroll_iter822 = and i64 %wide.trip.count2337.i, 2147483646
  %lcmp.mod819.not = icmp eq i64 %xtraiter817, 0
  %lcmp.mod821 = trunc i32 %i.pl to i1
  %min.iters.check522 = icmp ult i32 %i.pl, 4
  %min.iters.check524 = icmp ult i32 %i.pl, 16
  %i.bqr = and i64 %wide.trip.count2337.i, 12
  %n.vec526 = and i64 %wide.trip.count2337.i, 2147483632 ; 5 uses
  %i.bqs = shl nuw nsw i64 %n.vec526, 3
  %cmp.n537 = icmp eq i64 %n.vec526, %wide.trip.count2337.i
  %min.epilog.iters.check542 = icmp eq i64 %i.bqr, 0
  %n.vec544 = and i64 %wide.trip.count2337.i, 2147483644 ; 4 uses
  %i.bqt = shl nuw nsw i64 %n.vec544, 3
  %cmp.n555 = icmp eq i64 %n.vec544, %wide.trip.count2337.i
  %min.iters.check = icmp ult i32 %i.pl, 4
  %min.iters.check510 = icmp ult i32 %i.pl, 16
  %i.bqu = and i64 %wide.trip.count2337.i, 12
  %n.vec = and i64 %wide.trip.count2337.i, 2147483632 ; 5 uses
  %i.bqv = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2337.i
  %min.epilog.iters.check = icmp eq i64 %i.bqu, 0
  %n.vec512 = and i64 %wide.trip.count2337.i, 2147483644 ; 4 uses
  %i.bqw = shl nuw nsw i64 %n.vec512, 2
  %cmp.n519 = icmp eq i64 %n.vec512, %wide.trip.count2337.i
  br label %_ZN4ncnn3MatD2Ev.exit1303.i

_ZN4ncnn3MatD2Ev.exit1304.i:                      ; preds = %._crit_edge1859.split.i, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i
  %indvars.iv2324.i = phi i64 [ %i.ayo, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %indvars.iv.next2325.i, %._crit_edge1859.split.i ] ; 2 uses
  %i.bqx = phi i32 [ %i.awv, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %i.ccn, %._crit_edge1859.split.i ]
  %i.bqy = phi <4 x i32> [ %i.ayk, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %i.ccm, %._crit_edge1859.split.i ] ; 2 uses
  %i.bqz = sext <4 x i32> %i.bqy to <4 x i64>
  %i.bra = shl nsw <4 x i64> %i.bqz, splat (i64 2) ; 4 uses
  %i.brb = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 5 uses
  %i.brc = trunc i64 %indvars.iv2324.i to i32     ; 6 uses
  %i.brd = mul i32 %i.axa, %i.brc
  %i.bre = sext i32 %i.brd to i64
  %i.brf = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bre ; 2 uses
  %i.brg = add i32 %i.brc, 1
  %i.brh = mul i32 %i.brg, %i.axa
  %i.bri = sext i32 %i.brh to i64
  %i.brj = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bri ; 2 uses
  %i.brk = add i32 %i.brc, 2
  %i.brl = mul i32 %i.brk, %i.axa
  %i.brm = sext i32 %i.brl to i64
  %i.brn = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.brm ; 2 uses
  %i.bro = mul i32 %i.bqx, %i.axa
  %i.brp = sext i32 %i.bro to i64
  %i.brq = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.brp ; 2 uses
  %i.brr = lshr i32 %i.brc, 4
  %i.brs = lshr i32 %i.brc, 3
  %i.brt = and i32 %i.brs, 1
  %i.bru = add nuw nsw i32 %i.brt, %i.brr
  %i.brv = lshr i32 %i.brc, 2
  %i.brw = and i32 %i.brv, 1
  %i.brx = add nuw nsw i32 %i.bru, %i.brw
  %i.bry = load ptr, ptr %i.pj, align 8, !tbaa !18, !noalias !571
  %i.brz = load i64, ptr %i.axb, align 8, !tbaa !20, !noalias !571
  %i.bsa = zext nneg i32 %i.brx to i64
  %i.bsb = mul i64 %i.brz, %i.bsa
  %i.bsc = load i64, ptr %i.axc, align 8, !tbaa !65, !noalias !571
  %i.bsd = mul i64 %i.bsb, %i.bsc
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bry, i64 %i.bsd ; 4 uses
  br i1 %i.axm, label %.preheader1577.lr.ph.i, label %.preheader1580.i

.preheader1577.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1304.i
  br i1 %i.axn, label %.preheader1577.us.i, label %.preheader1580.thread.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1778.us.i
  %.011981785.us.i = phi i32 [ %i.buj, %._crit_edge1778.us.i ], [ 0, %.preheader1577.lr.ph.i ]
  %.012031784.us.i = phi ptr [ %i.bue, %._crit_edge1778.us.i ], [ %i.bse, %.preheader1577.lr.ph.i ]
  %.012141783.us.i = phi ptr [ %i.bui, %._crit_edge1778.us.i ], [ %i.brq, %.preheader1577.lr.ph.i ] ; 2 uses
  %.012171782.us.i = phi ptr [ %i.buh, %._crit_edge1778.us.i ], [ %i.brn, %.preheader1577.lr.ph.i ] ; 2 uses
  %.012201781.us.i = phi ptr [ %i.bug, %._crit_edge1778.us.i ], [ %i.brj, %.preheader1577.lr.ph.i ] ; 2 uses
  %.012231780.us.i = phi ptr [ %i.buf, %._crit_edge1778.us.i ], [ %i.brf, %.preheader1577.lr.ph.i ] ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %.preheader1577.us.i
  %indvars.iv2290.i = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2291.i, %bb.fp ] ; 5 uses
  %.112041776.us.i = phi ptr [ %.012031784.us.i, %.preheader1577.us.i ], [ %i.bue, %bb.fp ] ; 5 uses
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %.012231780.us.i, i64 %indvars.iv2290.i
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %.012201781.us.i, i64 %indvars.iv2290.i
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %.012171782.us.i, i64 %indvars.iv2290.i
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %.012141783.us.i, i64 %indvars.iv2290.i
  %i.bsj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsf, <16 x i32> %i.axl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsg, <16 x i32> %i.axl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsh, <16 x i32> %i.axl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bsi, <16 x i32> %i.axl, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bsn = shufflevector <16 x float> %i.bsj, <16 x float> %i.bsk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bso = shufflevector <16 x float> %i.bsj, <16 x float> %i.bsk, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bsp = shufflevector <16 x float> %i.bsl, <16 x float> %i.bsm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bsq = shufflevector <16 x float> %i.bsl, <16 x float> %i.bsm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bsr = shufflevector <16 x float> %i.bsn, <16 x float> %i.bsp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bss = shufflevector <16 x float> %i.bso, <16 x float> %i.bsq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bst = shufflevector <16 x float> %i.bsn, <16 x float> %i.bsp, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bsu = shufflevector <16 x float> %i.bso, <16 x float> %i.bsq, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bsv = shufflevector <16 x float> %i.bsr, <16 x float> %i.bss, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bsw = shufflevector <16 x float> %i.bst, <16 x float> %i.bsu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bsx = shufflevector <16 x float> %i.bsr, <16 x float> %i.bss, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bsy = shufflevector <16 x float> %i.bst, <16 x float> %i.bsu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bsz = bitcast <16 x float> %i.bsv to <16 x i32>
  %i.bta = lshr <16 x i32> %i.bsz, splat (i32 16) ; 2 uses
  %i.btb = shufflevector <16 x i32> %i.bta, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btc = shufflevector <16 x i32> %i.bta, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btd = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btb, <8 x i32> %i.btc)
  %i.bte = bitcast <16 x i16> %i.btd to <4 x i64>
  %i.btf = shufflevector <4 x i64> %i.bte, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.btf, ptr %.112041776.us.i, align 1, !tbaa !100
  %i.btg = getelementptr inbounds nuw i8, ptr %.112041776.us.i, i64 32
  %i.bth = bitcast <16 x float> %i.bsw to <16 x i32>
  %i.bti = lshr <16 x i32> %i.bth, splat (i32 16) ; 2 uses
  %i.btj = shufflevector <16 x i32> %i.bti, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btk = shufflevector <16 x i32> %i.bti, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btl = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btj, <8 x i32> %i.btk)
  %i.btm = bitcast <16 x i16> %i.btl to <4 x i64>
  %i.btn = shufflevector <4 x i64> %i.btm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.btn, ptr %i.btg, align 1, !tbaa !100
  %i.bto = getelementptr inbounds nuw i8, ptr %.112041776.us.i, i64 64
  %i.btp = bitcast <16 x float> %i.bsx to <16 x i32>
  %i.btq = lshr <16 x i32> %i.btp, splat (i32 16) ; 2 uses
  %i.btr = shufflevector <16 x i32> %i.btq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bts = shufflevector <16 x i32> %i.btq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btt = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btr, <8 x i32> %i.bts)
  %i.btu = bitcast <16 x i16> %i.btt to <4 x i64>
  %i.btv = shufflevector <4 x i64> %i.btu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.btv, ptr %i.bto, align 1, !tbaa !100
  %i.btw = getelementptr inbounds nuw i8, ptr %.112041776.us.i, i64 96
  %i.btx = bitcast <16 x float> %i.bsy to <16 x i32>
  %i.bty = lshr <16 x i32> %i.btx, splat (i32 16) ; 2 uses
  %i.btz = shufflevector <16 x i32> %i.bty, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bua = shufflevector <16 x i32> %i.bty, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bub = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.btz, <8 x i32> %i.bua)
  %i.buc = bitcast <16 x i16> %i.bub to <4 x i64>
  %i.bud = shufflevector <4 x i64> %i.buc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bud, ptr %i.btw, align 1, !tbaa !100
  %i.bue = getelementptr inbounds nuw i8, ptr %.112041776.us.i, i64 128 ; 3 uses
  %indvars.iv.next2291.i = add nuw nsw i64 %indvars.iv2290.i, 1 ; 2 uses
  %exitcond2294.not.i = icmp eq i64 %indvars.iv.next2291.i, %wide.trip.count2293.i
  br i1 %exitcond2294.not.i, label %._crit_edge1778.us.i, label %bb.fp, !llvm.loop !574

._crit_edge1778.us.i:                             ; preds = %bb.fp
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %.012231780.us.i, i64 %i.axp ; 2 uses
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %.012201781.us.i, i64 %i.axp ; 2 uses
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %.012171782.us.i, i64 %i.axp ; 2 uses
  %i.bui = getelementptr inbounds nuw [4 x i8], ptr %.012141783.us.i, i64 %i.axp ; 2 uses
  %i.buj = add nuw nsw i32 %.011981785.us.i, 16   ; 2 uses
  %i.buk = or disjoint i32 %i.buj, 15
  %i.bul = icmp slt i32 %i.buk, %i.p
  br i1 %i.bul, label %.preheader1577.us.i, label %.preheader1580.i, !llvm.loop !575

.preheader1580.i:                                 ; preds = %._crit_edge1778.us.i, %_ZN4ncnn3MatD2Ev.exit1304.i
  %.01223.lcssa.i = phi ptr [ %i.brf, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.buf, %._crit_edge1778.us.i ] ; 3 uses
  %.01220.lcssa.i = phi ptr [ %i.brj, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.bug, %._crit_edge1778.us.i ] ; 3 uses
  %.01217.lcssa.i = phi ptr [ %i.brn, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.buh, %._crit_edge1778.us.i ] ; 3 uses
  %.01214.lcssa.i = phi ptr [ %i.brq, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.bui, %._crit_edge1778.us.i ] ; 3 uses
  %.01203.lcssa.i = phi ptr [ %i.bse, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.bue, %._crit_edge1778.us.i ] ; 3 uses
  %.01198.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1304.i ], [ %i.aym, %._crit_edge1778.us.i ] ; 4 uses
  %i.bum = or disjoint i32 %.01198.lcssa.i, 7
  %i.bun = icmp slt i32 %i.bum, %i.p
  br i1 %i.bun, label %.preheader1576.lr.ph.i, label %.preheader1579.i

.preheader1580.thread.i:                          ; preds = %.preheader1577.lr.ph.i
  %scevgep2277.i = getelementptr i8, ptr %i.brb, i64 %i.ayf ; 4 uses
  %i.buo = extractelement <4 x i64> %i.bra, i64 0
  %scevgep2280.i = getelementptr i8, ptr %scevgep2277.i, i64 %i.buo ; 2 uses
  %i.bup = extractelement <4 x i64> %i.bra, i64 1
  %scevgep2283.i = getelementptr i8, ptr %scevgep2277.i, i64 %i.bup ; 2 uses
  %i.buq = extractelement <4 x i64> %i.bra, i64 2
  %scevgep2286.i = getelementptr i8, ptr %scevgep2277.i, i64 %i.buq ; 2 uses
  %i.bur = extractelement <4 x i64> %i.bra, i64 3
  %scevgep2289.i = getelementptr i8, ptr %scevgep2277.i, i64 %i.bur ; 2 uses
  br i1 %i.ayr, label %.preheader1576.preheader.i, label %.preheader1579.i

.preheader1576.lr.ph.i:                           ; preds = %.preheader1580.i
  br i1 %i.axn, label %.preheader1576.us.i, label %.preheader1576.preheader.i

.preheader1576.preheader.i:                       ; preds = %.preheader1576.lr.ph.i, %.preheader1580.thread.i
  %.01223.lcssa25372554.i = phi ptr [ %.01223.lcssa.i, %.preheader1576.lr.ph.i ], [ %scevgep2280.i, %.preheader1580.thread.i ]
  %.01220.lcssa25382553.i = phi ptr [ %.01220.lcssa.i, %.preheader1576.lr.ph.i ], [ %scevgep2283.i, %.preheader1580.thread.i ]
  %.01217.lcssa25392552.i = phi ptr [ %.01217.lcssa.i, %.preheader1576.lr.ph.i ], [ %scevgep2286.i, %.preheader1580.thread.i ]
  %.01214.lcssa25402551.i = phi ptr [ %.01214.lcssa.i, %.preheader1576.lr.ph.i ], [ %scevgep2289.i, %.preheader1580.thread.i ]
  %.01203.lcssa25412550.i = phi ptr [ %.01203.lcssa.i, %.preheader1576.lr.ph.i ], [ %i.bse, %.preheader1580.thread.i ]
  %.01198.lcssa25422549.i = phi i32 [ %.01198.lcssa.i, %.preheader1576.lr.ph.i ], [ %i.aym, %.preheader1580.thread.i ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bzj = bitcast <4 x float> %i.bzi to <4 x i32>
  %i.bzk = lshr <4 x i32> %i.bzj, splat (i32 16)
  %i.bzl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzk, <4 x i32> poison)
  %i.bzm = bitcast <8 x i16> %i.bzl to <2 x i64>
  %i.bzn = extractelement <2 x i64> %i.bzm, i64 0
  store i64 %i.bzn, ptr %i.bzf, align 1, !tbaa !100
  %i.bzo = getelementptr inbounds nuw [4 x i8], ptr %i.bzh, i64 %i.axx
  %i.bzp = getelementptr inbounds nuw i8, ptr %.712101840.us.i, i64 24
  %i.bzq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bzo, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzr = bitcast <4 x float> %i.bzq to <4 x i32>
  %i.bzs = lshr <4 x i32> %i.bzr, splat (i32 16)
  %i.bzt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bzs, <4 x i32> poison)
  %i.bzu = bitcast <8 x i16> %i.bzt to <2 x i64>
  %i.bzv = extractelement <2 x i64> %i.bzu, i64 0
  store i64 %i.bzv, ptr %i.bzp, align 1, !tbaa !100
  %i.bzw = getelementptr inbounds nuw i8, ptr %.712101840.us.i, i64 32 ; 3 uses
  %indvars.iv.next2314.i.1 = add nuw nsw i64 %indvars.iv2313.i, 2 ; 2 uses
  %niter791.next.1 = add i64 %niter791, 2         ; 2 uses
  %niter791.ncmp.1 = icmp eq i64 %niter791.next.1, %unroll_iter790
  br i1 %niter791.ncmp.1, label %._crit_edge1842.us.i.unr-lcssa, label %.preheader1574.us.i.new, !llvm.loop !580

._crit_edge1842.us.i.unr-lcssa:                   ; preds = %.preheader1574.us.i.new
  br i1 %lcmp.mod787.not, label %._crit_edge1842.us.i, label %.epil.preheader784

.epil.preheader784:                               ; preds = %._crit_edge1842.us.i.unr-lcssa, %.preheader1574.us.i
  %indvars.iv2313.i.epil.init = phi i64 [ 0, %.preheader1574.us.i ], [ %indvars.iv.next2314.i.1, %._crit_edge1842.us.i.unr-lcssa ]
  %.712101840.us.i.epil.init = phi ptr [ %.612091845.us.i, %.preheader1574.us.i ], [ %i.bzw, %._crit_edge1842.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod789)
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %.312261844.us.i, i64 %indvars.iv2313.i.epil.init ; 2 uses
  %i.bzy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bzx, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bzz = bitcast <4 x float> %i.bzy to <4 x i32>
  %i.caa = lshr <4 x i32> %i.bzz, splat (i32 16)
  %i.cab = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.caa, <4 x i32> poison)
  %i.cac = bitcast <8 x i16> %i.cab to <2 x i64>
  %i.cad = extractelement <2 x i64> %i.cac, i64 0
  store i64 %i.cad, ptr %.712101840.us.i.epil.init, align 1, !tbaa !100
  %i.cae = getelementptr inbounds nuw [4 x i8], ptr %i.bzx, i64 %i.axx
  %i.caf = getelementptr inbounds nuw i8, ptr %.712101840.us.i.epil.init, i64 8
  %i.cag = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cae, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cah = bitcast <4 x float> %i.cag to <4 x i32>
  %i.cai = lshr <4 x i32> %i.cah, splat (i32 16)
  %i.caj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cai, <4 x i32> poison)
  %i.cak = bitcast <8 x i16> %i.caj to <2 x i64>
  %i.cal = extractelement <2 x i64> %i.cak, i64 0
  store i64 %i.cal, ptr %i.caf, align 1, !tbaa !100
  %i.cam = getelementptr inbounds nuw i8, ptr %.712101840.us.i.epil.init, i64 16
  br label %._crit_edge1842.us.i

._crit_edge1842.us.i:                             ; preds = %._crit_edge1842.us.i.unr-lcssa, %.epil.preheader784
  %.lcssa726 = phi ptr [ %i.bzw, %._crit_edge1842.us.i.unr-lcssa ], [ %i.cam, %.epil.preheader784 ] ; 2 uses
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %.312261844.us.i, i64 %i.axz ; 2 uses
  %i.cao = add nuw nsw i32 %.312011846.us.i, 2    ; 3 uses
  %i.cap = or disjoint i32 %i.cao, 1
  %i.caq = icmp slt i32 %i.cap, %i.p
  br i1 %i.caq, label %.preheader1574.us.i, label %.preheader1578.i, !llvm.loop !581

.preheader1578.i:                                 ; preds = %._crit_edge1842.us.i, %._crit_edge1830.i
  %.31226.lcssa.i = phi ptr [ %.21225.lcssa.i, %._crit_edge1830.i ], [ %i.can, %._crit_edge1842.us.i ] ; 5 uses
  %.61209.lcssa.i = phi ptr [ %.41207.lcssa.i, %._crit_edge1830.i ], [ %.lcssa726, %._crit_edge1842.us.i ]
  %.31201.lcssa.i = phi i32 [ %.21200.lcssa.i, %._crit_edge1830.i ], [ %i.cao, %._crit_edge1842.us.i ] ; 2 uses
  %i.car = icmp sge i32 %.31201.lcssa.i, %i.p
  %brmerge2009.i = or i1 %i.aya, %i.car
  br i1 %brmerge2009.i, label %._crit_edge1859.split.i, label %.preheader1573.i

.preheader1573.i:                                 ; preds = %.preheader1578.i, %._crit_edge1855.i
  %.412021858.i = phi i32 [ %i.cba, %._crit_edge1855.i ], [ %.31201.lcssa.i, %.preheader1578.i ]
  %.912121857.i = phi ptr [ %.lcssa729, %._crit_edge1855.i ], [ %.61209.lcssa.i, %.preheader1578.i ] ; 2 uses
  br i1 %i.ayw, label %.epil.preheader792, label %.preheader1573.i.new

._crit_edge1855.i.unr-lcssa:                      ; preds = %.preheader1573.i.new
  br i1 %lcmp.mod795.not, label %._crit_edge1855.i, label %.epil.preheader792

.epil.preheader792:                               ; preds = %._crit_edge1855.i.unr-lcssa, %.preheader1573.i
  %indvars.iv2318.i.epil.init = phi i64 [ 0, %.preheader1573.i ], [ %indvars.iv.next2319.i.3, %._crit_edge1855.i.unr-lcssa ]
  %.1012131853.i.epil.init = phi ptr [ %.912121857.i, %.preheader1573.i ], [ %i.ccj, %._crit_edge1855.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod797)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fs, %.epil.preheader792
  %indvars.iv2318.i.epil = phi i64 [ %indvars.iv2318.i.epil.init, %.epil.preheader792 ], [ %indvars.iv.next2319.i.epil, %bb.fs ] ; 2 uses
  %.1012131853.i.epil = phi ptr [ %.1012131853.i.epil.init, %.epil.preheader792 ], [ %i.caz, %bb.fs ] ; 2 uses
  %epil.iter794 = phi i64 [ 0, %.epil.preheader792 ], [ %epil.iter794.next, %bb.fs ]
  %i.cas = getelementptr inbounds nuw [4 x i8], ptr %.31226.lcssa.i, i64 %indvars.iv2318.i.epil
  %i.cat = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cas, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cau = bitcast <4 x float> %i.cat to <4 x i32>
  %i.cav = lshr <4 x i32> %i.cau, splat (i32 16)
  %i.caw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cav, <4 x i32> poison)
  %i.cax = bitcast <8 x i16> %i.caw to <2 x i64>
  %i.cay = extractelement <2 x i64> %i.cax, i64 0
  store i64 %i.cay, ptr %.1012131853.i.epil, align 1, !tbaa !100
  %i.caz = getelementptr inbounds nuw i8, ptr %.1012131853.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2319.i.epil = add nuw nsw i64 %indvars.iv2318.i.epil, 1
  %epil.iter794.next = add i64 %epil.iter794, 1   ; 2 uses
  %epil.iter794.cmp.not = icmp eq i64 %epil.iter794.next, %xtraiter793
  br i1 %epil.iter794.cmp.not, label %._crit_edge1855.i, label %bb.fs, !llvm.loop !582

._crit_edge1855.i:                                ; preds = %bb.fs, %._crit_edge1855.i.unr-lcssa
  %.lcssa729 = phi ptr [ %i.ccj, %._crit_edge1855.i.unr-lcssa ], [ %i.caz, %bb.fs ]
  %i.cba = add nuw nsw i32 %.412021858.i, 1       ; 2 uses
  %exitcond2323.not.i = icmp eq i32 %i.cba, %i.p
  br i1 %exitcond2323.not.i, label %._crit_edge1859.split.i, label %.preheader1573.i, !llvm.loop !583

.preheader1573.i.new:                             ; preds = %.preheader1573.i, %.preheader1573.i.new
  %indvars.iv2318.i = phi i64 [ %indvars.iv.next2319.i.3, %.preheader1573.i.new ], [ 0, %.preheader1573.i ] ; 5 uses
  %.1012131853.i = phi ptr [ %i.ccj, %.preheader1573.i.new ], [ %.912121857.i, %.preheader1573.i ] ; 5 uses
  %niter799 = phi i64 [ %niter799.next.3, %.preheader1573.i.new ], [ 0, %.preheader1573.i ]
  %i.cbb = getelementptr inbounds nuw [4 x i8], ptr %.31226.lcssa.i, i64 %indvars.iv2318.i
  %i.cbc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.cbb, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbd = bitcast <4 x float> %i.cbc to <4 x i32>
  %i.cbe = lshr <4 x i32> %i.cbd, splat (i32 16)
  %i.cbf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbe, <4 x i32> poison)
  %i.cbg = bitcast <8 x i16> %i.cbf to <2 x i64>
  %i.cbh = extractelement <2 x i64> %i.cbg, i64 0
  store i64 %i.cbh, ptr %.1012131853.i, align 1, !tbaa !100
  %i.cbi = getelementptr inbounds nuw i8, ptr %.1012131853.i, i64 8
  %i.cbj = getelementptr inbounds nuw [4 x i8], ptr %.31226.lcssa.i, i64 %indvars.iv2318.i
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbj, i64 4
  %i.cbl = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbk, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbm = bitcast <4 x float> %i.cbl to <4 x i32>
  %i.cbn = lshr <4 x i32> %i.cbm, splat (i32 16)
  %i.cbo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbn, <4 x i32> poison)
  %i.cbp = bitcast <8 x i16> %i.cbo to <2 x i64>
  %i.cbq = extractelement <2 x i64> %i.cbp, i64 0
  store i64 %i.cbq, ptr %i.cbi, align 1, !tbaa !100
  %i.cbr = getelementptr inbounds nuw i8, ptr %.1012131853.i, i64 16
  %i.cbs = getelementptr inbounds nuw [4 x i8], ptr %.31226.lcssa.i, i64 %indvars.iv2318.i
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 8
  %i.cbu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.cbt, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cbv = bitcast <4 x float> %i.cbu to <4 x i32>
  %i.cbw = lshr <4 x i32> %i.cbv, splat (i32 16)
  %i.cbx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cbw, <4 x i32> poison)
  %i.cby = bitcast <8 x i16> %i.cbx to <2 x i64>
  %i.cbz = extractelement <2 x i64> %i.cby, i64 0
  store i64 %i.cbz, ptr %i.cbr, align 1, !tbaa !100
  %i.cca = getelementptr inbounds nuw i8, ptr %.1012131853.i, i64 24
  %i.ccb = getelementptr inbounds nuw [4 x i8], ptr %.31226.lcssa.i, i64 %indvars.iv2318.i
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 12
  %i.ccd = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ccc, <4 x i32> %i.axw, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cce = bitcast <4 x float> %i.ccd to <4 x i32>
  %i.ccf = lshr <4 x i32> %i.cce, splat (i32 16)
  %i.ccg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ccf, <4 x i32> poison)
  %i.cch = bitcast <8 x i16> %i.ccg to <2 x i64>
  %i.cci = extractelement <2 x i64> %i.cch, i64 0
  store i64 %i.cci, ptr %i.cca, align 1, !tbaa !100
  %i.ccj = getelementptr inbounds nuw i8, ptr %.1012131853.i, i64 32 ; 3 uses
  %indvars.iv.next2319.i.3 = add nuw nsw i64 %indvars.iv2318.i, 4 ; 2 uses
  %niter799.next.3 = add i64 %niter799, 4         ; 2 uses
  %niter799.ncmp.3 = icmp eq i64 %niter799.next.3, %unroll_iter798
  br i1 %niter799.ncmp.3, label %._crit_edge1855.i.unr-lcssa, label %.preheader1573.i.new, !llvm.loop !584

._crit_edge1859.split.i:                          ; preds = %._crit_edge1855.i, %.preheader1578.i, %.preheader1574.lr.ph.i, %.preheader1575.lr.ph.i
  %indvars.iv.next2325.i = add nuw nsw i64 %indvars.iv2324.i, 4 ; 3 uses
  %i.cck = or disjoint i64 %indvars.iv.next2325.i, 3 ; 2 uses
  %i.ccl = icmp slt i64 %i.cck, %i.ayp
  %i.ccm = add <4 x i32> %i.bqy, %i.ayt
  %i.ccn = trunc nsw i64 %i.cck to i32
  br i1 %i.ccl, label %_ZN4ncnn3MatD2Ev.exit1304.i, label %.preheader1572.loopexit.i, !llvm.loop !585

.preheader1562.loopexit.i:                        ; preds = %._crit_edge1936.split.i
  %i.cco = trunc nsw i64 %indvars.iv.next2369.i to i32
  br label %.preheader1562.i

.preheader1562.i:                                 ; preds = %.preheader1562.loopexit.i, %.preheader1572.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1572.i ], [ %i.cco, %.preheader1562.loopexit.i ] ; 3 uses
  %i.ccp = icmp slt i32 %.3.lcssa.i, %i.eg
  br i1 %i.ccp, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1562.i
  %i.ccq = mul i32 %i.pl, %i.p                    ; 3 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ccs = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cct = insertelement <4 x i32> poison, i32 %i.pl, i64 0
  %i.ccu = shufflevector <4 x i32> %i.cct, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ccv = mul <4 x i32> %i.ccu, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ccw = insertelement <8 x i32> poison, i32 %i.pl, i64 0
  %i.ccx = shufflevector <8 x i32> %i.ccw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ccy = mul <8 x i32> %i.ccx, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.ccz = insertelement <16 x i32> poison, i32 %i.pl, i64 0
  %i.cda = shufflevector <16 x i32> %i.ccz, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cdb = mul <16 x i32> %i.cda, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.cdc = icmp sgt i32 %i.p, 15
  %i.cdd = icmp sgt i32 %i.pl, 0                  ; 4 uses
  %i.cde = shl i32 %i.pl, 4
  %i.cdf = sext i32 %i.cde to i64                 ; 2 uses
  %i.cdg = shl i32 %i.pl, 3
  %i.cdh = sext i32 %i.cdg to i64                 ; 2 uses
  %i.cdi = shl i32 %i.pl, 2
  %i.cdj = sext i32 %i.cdi to i64
  %i.cdk = sext i32 %i.pl to i64                  ; 3 uses
  %i.cdl = shl i32 %i.pl, 1
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = icmp slt i32 %i.pl, 1
  %i.cdo = add i32 %i.p, -16                      ; 2 uses
  %i.cdp = lshr i32 %i.cdo, 2
  %i.cdq = and i32 %i.cdp, 1073741820
  %narrow2452.i = add nuw nsw i32 %i.cdq, 4
  %i.cdr = zext nneg i32 %narrow2452.i to i64
  %i.cds = mul nsw i64 %i.cdf, %i.cdr
  %i.cdt = mul i32 %i.ccq, %.3.lcssa.i
  %i.cdu = and i32 %i.cdo, -16
  %i.cdv = add nuw nsw i32 %i.cdu, 16             ; 4 uses
  %i.cdw = add i32 %i.p, -8
  %i.cdx = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2409.i = sext i32 %i.eg to i64
  %i.cdy = or disjoint i32 %i.cdv, 7
  %i.cdz = icmp slt i32 %i.cdy, %i.p
  %wide.trip.count2378.i = zext i32 %i.pl to i64  ; 19 uses
  %i.cea = add nsw i64 %wide.trip.count2378.i, -1 ; 3 uses
  %xtraiter825 = and i64 %wide.trip.count2378.i, 1
  %i.ceb = icmp eq i64 %i.cea, 0
  %unroll_iter830 = and i64 %wide.trip.count2378.i, 2147483646
  %lcmp.mod827.not = icmp eq i64 %xtraiter825, 0
  %lcmp.mod829 = trunc i32 %i.pl to i1
  %xtraiter833 = and i64 %wide.trip.count2378.i, 3 ; 3 uses
  %i.cec = icmp ult i64 %i.cea, 3
  %unroll_iter838 = and i64 %wide.trip.count2378.i, 2147483644
  %lcmp.mod835.not = icmp eq i64 %xtraiter833, 0
  %lcmp.mod837 = icmp ne i64 %xtraiter833, 0
  %xtraiter841 = and i64 %wide.trip.count2378.i, 3 ; 3 uses
  %i.ced = icmp ult i64 %i.cea, 3
  %unroll_iter846 = and i64 %wide.trip.count2378.i, 2147483644
  %lcmp.mod843.not = icmp eq i64 %xtraiter841, 0
  %lcmp.mod845 = icmp ne i64 %xtraiter841, 0
  %min.iters.check589 = icmp ult i32 %i.pl, 8
  %min.iters.check591 = icmp ult i32 %i.pl, 32
  %i.cee = and i64 %wide.trip.count2378.i, 24
  %n.vec593 = and i64 %wide.trip.count2378.i, 2147483616 ; 5 uses
  %i.cef = shl nuw nsw i64 %n.vec593, 2
  %cmp.n606 = icmp eq i64 %n.vec593, %wide.trip.count2378.i
  %min.epilog.iters.check611 = icmp eq i64 %i.cee, 0
  %n.vec613 = and i64 %wide.trip.count2378.i, 2147483640 ; 4 uses
  %i.ceg = shl nuw nsw i64 %n.vec613, 2
  %cmp.n622 = icmp eq i64 %n.vec613, %wide.trip.count2378.i
  %min.iters.check558 = icmp ult i32 %i.pl, 8
  %min.iters.check560 = icmp ult i32 %i.pl, 64
  %i.ceh = and i64 %wide.trip.count2378.i, 56
  %n.vec562 = and i64 %wide.trip.count2378.i, 2147483584 ; 5 uses
  %i.cei = shl nuw nsw i64 %n.vec562, 1
  %cmp.n572 = icmp eq i64 %n.vec562, %wide.trip.count2378.i
  %min.epilog.iters.check577 = icmp eq i64 %i.ceh, 0
  %n.vec579 = and i64 %wide.trip.count2378.i, 2147483640 ; 4 uses
  %i.cej = shl nuw nsw i64 %n.vec579, 1
  %cmp.n586 = icmp eq i64 %n.vec579, %wide.trip.count2378.i
  br label %_ZN4ncnn3MatD2Ev.exit.i102

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1936.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2368.i = phi i64 [ %i.bqj, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2369.i, %._crit_edge1936.split.i ] ; 2 uses
  %indvars.iv2331.i = phi i32 [ %i.bqf, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2332.i, %._crit_edge1936.split.i ] ; 2 uses
  %indvars.iv2328.i = phi i32 [ %i.bqd, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2329.i, %._crit_edge1936.split.i ] ; 2 uses
  %i.cek = phi i32 [ %i.boy, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %i.cpa, %._crit_edge1936.split.i ]
  %i.cel = sext i32 %indvars.iv2328.i to i64
  %i.cem = shl nsw i64 %i.cel, 2
  %i.cen = sext i32 %indvars.iv2331.i to i64
  %i.ceo = shl nsw i64 %i.cen, 2
  %i.cep = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 3 uses
  %i.ceq = trunc nsw i64 %indvars.iv2368.i to i32 ; 2 uses
  %i.cer = mul i32 %i.bpa, %i.ceq
  %i.ces = sext i32 %i.cer to i64
  %i.cet = getelementptr inbounds [4 x i8], ptr %i.cep, i64 %i.ces ; 2 uses
  %i.ceu = mul i32 %i.cek, %i.bpa
  %i.cev = sext i32 %i.ceu to i64
  %i.cew = getelementptr inbounds [4 x i8], ptr %i.cep, i64 %i.cev ; 2 uses
  %i.cex = insertelement <4 x i32> poison, i32 %i.ceq, i64 0
  %i.cey = shufflevector <4 x i32> %i.cex, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cez = lshr <4 x i32> %i.cey, <i32 3, i32 2, i32 1, i32 4>
  %i.cfa = and <4 x i32> %i.cez, <i32 1, i32 1, i32 1, i32 -1>
  %i.cfb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cfa)
  %i.cfc = load ptr, ptr %i.pj, align 8, !tbaa !18, !noalias !586
  %i.cfd = load i64, ptr %i.bpb, align 8, !tbaa !20, !noalias !586
  %i.cfe = zext nneg i32 %i.cfb to i64
  %i.cff = mul i64 %i.cfd, %i.cfe
  %i.cfg = load i64, ptr %i.bpc, align 8, !tbaa !65, !noalias !586
  %i.cfh = mul i64 %i.cff, %i.cfg
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfc, i64 %i.cfh ; 4 uses
  br i1 %i.bpm, label %.preheader1567.lr.ph.i, label %.preheader1571.i

.preheader1567.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.bpn, label %.preheader1567.us.i, label %.preheader1571.thread.i

.preheader1567.us.i:                              ; preds = %.preheader1567.lr.ph.i, %._crit_edge1864.us.i
  %.011381869.us.i = phi i32 [ %i.cht, %._crit_edge1864.us.i ], [ 0, %.preheader1567.lr.ph.i ]
  %.011431868.us.i = phi ptr [ %.lcssa696, %._crit_edge1864.us.i ], [ %i.cfi, %.preheader1567.lr.ph.i ] ; 2 uses
  %.011541867.us.i = phi ptr [ %i.chs, %._crit_edge1864.us.i ], [ %i.cew, %.preheader1567.lr.ph.i ] ; 4 uses
  %.011581866.us.i = phi ptr [ %i.chr, %._crit_edge1864.us.i ], [ %i.cet, %.preheader1567.lr.ph.i ] ; 4 uses
  br i1 %i.bqo, label %.epil.preheader800, label %.preheader1567.us.i.new

.preheader1567.us.i.new:                          ; preds = %.preheader1567.us.i, %.preheader1567.us.i.new
  %indvars.iv2334.i = phi i64 [ %indvars.iv.next2335.i.1, %.preheader1567.us.i.new ], [ 0, %.preheader1567.us.i ] ; 4 uses
  %.111441862.us.i = phi ptr [ %i.cgw, %.preheader1567.us.i.new ], [ %.011431868.us.i, %.preheader1567.us.i ] ; 5 uses
  %niter807 = phi i64 [ %niter807.next.1, %.preheader1567.us.i.new ], [ 0, %.preheader1567.us.i ]
  %i.cfj = getelementptr inbounds nuw [4 x i8], ptr %.011581866.us.i, i64 %indvars.iv2334.i
  %i.cfk = getelementptr inbounds nuw [4 x i8], ptr %.011541867.us.i, i64 %indvars.iv2334.i
  %i.cfl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfj, <16 x i32> %i.bpl, <16 x i1> splat (i1 true), i32 4)
  %i.cfm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cfk, <16 x i32> %i.bpl, <16 x i1> splat (i1 true), i32 4)
  %i.cfn = bitcast <16 x float> %i.cfl to <16 x i32>
  %i.cfo = lshr <16 x i32> %i.cfn, splat (i32 16) ; 2 uses
  %i.cfp = shufflevector <16 x i32> %i.cfo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfq = shufflevector <16 x i32> %i.cfo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cfp, <8 x i32> %i.cfq)
  %i.cfs = bitcast <16 x i16> %i.cfr to <4 x i64>
  %i.cft = shufflevector <4 x i64> %i.cfs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cft, ptr %.111441862.us.i, align 1, !tbaa !100
  %i.cfu = getelementptr inbounds nuw i8, ptr %.111441862.us.i, i64 32
  %i.cfv = bitcast <16 x float> %i.cfm to <16 x i32>
  %i.cfw = lshr <16 x i32> %i.cfv, splat (i32 16) ; 2 uses
  %i.cfx = shufflevector <16 x i32> %i.cfw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfy = shufflevector <16 x i32> %i.cfw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfz = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cfx, <8 x i32> %i.cfy)
  %i.cga = bitcast <16 x i16> %i.cfz to <4 x i64>
  %i.cgb = shufflevector <4 x i64> %i.cga, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cgb, ptr %i.cfu, align 1, !tbaa !100
  %i.cgc = getelementptr inbounds nuw i8, ptr %.111441862.us.i, i64 64
  %indvars.iv.next2335.i = or disjoint i64 %indvars.iv2334.i, 1 ; 2 uses
  %i.cgd = getelementptr inbounds nuw [4 x i8], ptr %.011581866.us.i, i64 %indvars.iv.next2335.i
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %.011541867.us.i, i64 %indvars.iv.next2335.i
  %i.cgf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cgd, <16 x i32> %i.bpl, <16 x i1> splat (i1 true), i32 4)
  %i.cgg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cge, <16 x i32> %i.bpl, <16 x i1> splat (i1 true), i32 4)
  %i.cgh = bitcast <16 x float> %i.cgf to <16 x i32>
  %i.cgi = lshr <16 x i32> %i.cgh, splat (i32 16) ; 2 uses
  %i.cgj = shufflevector <16 x i32> %i.cgi, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cgk = shufflevector <16 x i32> %i.cgi, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgl = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cgj, <8 x i32> %i.cgk)
  %i.cgm = bitcast <16 x i16> %i.cgl to <4 x i64>
  %i.cgn = shufflevector <4 x i64> %i.cgm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cgn, ptr %i.cgc, align 1, !tbaa !100
  %i.cgo = getelementptr inbounds nuw i8, ptr %.111441862.us.i, i64 96
  %i.cgp = bitcast <16 x float> %i.cgg to <16 x i32>
  %i.cgq = lshr <16 x i32> %i.cgp, splat (i32 16) ; 2 uses
  %i.cgr = shufflevector <16 x i32> %i.cgq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cgs = shufflevector <16 x i32> %i.cgq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cgt = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cgr, <8 x i32> %i.cgs)
  %i.cgu = bitcast <16 x i16> %i.cgt to <4 x i64>
  %i.cgv = shufflevector <4 x i64> %i.cgu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cgv, ptr %i.cgo, align 1, !tbaa !100
  %i.cgw = getelementptr inbounds nuw i8, ptr %.111441862.us.i, i64 128 ; 3 uses
  %indvars.iv.next2335.i.1 = add nuw nsw i64 %indvars.iv2334.i, 2 ; 2 uses
  %niter807.next.1 = add i64 %niter807, 2         ; 2 uses
  %niter807.ncmp.1 = icmp eq i64 %niter807.next.1, %unroll_iter806
  br i1 %niter807.ncmp.1, label %._crit_edge1864.us.i.unr-lcssa, label %.preheader1567.us.i.new, !llvm.loop !589

._crit_edge1864.us.i.unr-lcssa:                   ; preds = %.preheader1567.us.i.new
  br i1 %lcmp.mod803.not, label %._crit_edge1864.us.i, label %.epil.preheader800

.epil.preheader800:                               ; preds = %._crit_edge1864.us.i.unr-lcssa, %.preheader1567.us.i
  %indvars.iv2334.i.epil.init = phi i64 [ 0, %.preheader1567.us.i ], [ %indvars.iv.next2335.i.1, %._crit_edge1864.us.i.unr-lcssa ] ; 2 uses
  %.111441862.us.i.epil.init = phi ptr [ %.011431868.us.i, %.preheader1567.us.i ], [ %i.cgw, %._crit_edge1864.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod805)
  %i.cgx = getelementptr inbounds nuw [4 x i8], ptr %.011581866.us.i, i64 %indvars.iv2334.i.epil.init
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %.011541867.us.i, i64 %indvars.iv2334.i.epil.init
  %i.cgz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgx, <16 x i32> %i.bpl, <16 x i1> splat (i1 true), i32 4)
  %i.cha = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.cgy, <16 x i32> %i.bpl, <16 x i1> splat (i1 true), i32 4)
  %i.chb = bitcast <16 x float> %i.cgz to <16 x i32>
  %i.chc = lshr <16 x i32> %i.chb, splat (i32 16) ; 2 uses
  %i.chd = shufflevector <16 x i32> %i.chc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.che = shufflevector <16 x i32> %i.chc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.chd, <8 x i32> %i.che)
  %i.chg = bitcast <16 x i16> %i.chf to <4 x i64>
  %i.chh = shufflevector <4 x i64> %i.chg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.chh, ptr %.111441862.us.i.epil.init, align 1, !tbaa !100
  %i.chi = getelementptr inbounds nuw i8, ptr %.111441862.us.i.epil.init, i64 32
  %i.chj = bitcast <16 x float> %i.cha to <16 x i32>
  %i.chk = lshr <16 x i32> %i.chj, splat (i32 16) ; 2 uses
  %i.chl = shufflevector <16 x i32> %i.chk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.chm = shufflevector <16 x i32> %i.chk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chn = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.chl, <8 x i32> %i.chm)
  %i.cho = bitcast <16 x i16> %i.chn to <4 x i64>
  %i.chp = shufflevector <4 x i64> %i.cho, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.chp, ptr %i.chi, align 1, !tbaa !100
  %i.chq = getelementptr inbounds nuw i8, ptr %.111441862.us.i.epil.init, i64 64
  br label %._crit_edge1864.us.i

._crit_edge1864.us.i:                             ; preds = %._crit_edge1864.us.i.unr-lcssa, %.epil.preheader800
  %.lcssa696 = phi ptr [ %i.cgw, %._crit_edge1864.us.i.unr-lcssa ], [ %i.chq, %.epil.preheader800 ] ; 2 uses
  %i.chr = getelementptr inbounds nuw [4 x i8], ptr %.011581866.us.i, i64 %i.bpp ; 2 uses
  %i.chs = getelementptr inbounds nuw [4 x i8], ptr %.011541867.us.i, i64 %i.bpp ; 2 uses
  %i.cht = add nuw nsw i32 %.011381869.us.i, 16   ; 2 uses
  %i.chu = or disjoint i32 %i.cht, 15
  %i.chv = icmp slt i32 %i.chu, %i.p
  br i1 %i.chv, label %.preheader1567.us.i, label %.preheader1571.i, !llvm.loop !590

.preheader1571.i:                                 ; preds = %._crit_edge1864.us.i, %_ZN4ncnn3MatD2Ev.exit1303.i
  %.01158.lcssa.i = phi ptr [ %i.cet, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.chr, %._crit_edge1864.us.i ] ; 3 uses
  %.01154.lcssa.i = phi ptr [ %i.cew, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.chs, %._crit_edge1864.us.i ] ; 3 uses
  %.01143.lcssa.i = phi ptr [ %i.cfi, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %.lcssa696, %._crit_edge1864.us.i ] ; 3 uses
  %.01138.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.bqh, %._crit_edge1864.us.i ] ; 4 uses
  %i.chw = or disjoint i32 %.01138.lcssa.i, 7
  %i.chx = icmp slt i32 %i.chw, %i.p
  br i1 %i.chx, label %.preheader1566.lr.ph.i, label %.preheader1570.i

.preheader1571.thread.i:                          ; preds = %.preheader1567.lr.ph.i
  %scevgep2327.i = getelementptr i8, ptr %i.cep, i64 %i.bqc ; 2 uses
  %scevgep2330.i = getelementptr i8, ptr %scevgep2327.i, i64 %i.cem ; 2 uses
  %scevgep2333.i = getelementptr i8, ptr %scevgep2327.i, i64 %i.ceo ; 2 uses
  br i1 %i.bqm, label %.preheader1566.preheader.i, label %.preheader1570.i

.preheader1566.lr.ph.i:                           ; preds = %.preheader1571.i
  br i1 %i.bpn, label %.preheader1566.us.i, label %.preheader1566.preheader.i

.preheader1566.preheader.i:                       ; preds = %.preheader1566.lr.ph.i, %.preheader1571.thread.i
  %.01158.lcssa25752586.i = phi ptr [ %.01158.lcssa.i, %.preheader1566.lr.ph.i ], [ %scevgep2330.i, %.preheader1571.thread.i ]
  %.01154.lcssa25762585.i = phi ptr [ %.01154.lcssa.i, %.preheader1566.lr.ph.i ], [ %scevgep2333.i, %.preheader1571.thread.i ]
end_hunk_11
