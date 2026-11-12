Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.akk, %vector.body ]
  %vec.phi1169 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.akl, %vector.body ]
  %.reass = add i64 %index, %invariant.op         ; 3 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %.reass ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %wide.load = load <4 x float>, ptr %i.ajk, align 4, !tbaa !106, !noalias !660
  %wide.load1170 = load <4 x float>, ptr %i.ajl, align 4, !tbaa !106, !noalias !660
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %.reass ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16
  %wide.load1171 = load <4 x float>, ptr %i.ajm, align 4, !tbaa !106, !noalias !660
  %wide.load1172 = load <4 x float>, ptr %i.ajn, align 4, !tbaa !106, !noalias !660
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %.reass ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  %wide.load1173 = load <4 x float>, ptr %i.ajo, align 4, !tbaa !106, !noalias !660
  %wide.load1174 = load <4 x float>, ptr %i.ajp, align 4, !tbaa !106, !noalias !660
  %i.ajq = fsub <4 x float> %broadcast.splat, %wide.load
  %i.ajr = fsub <4 x float> %broadcast.splat, %wide.load1170
  %i.ajs = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajq)
  %i.ajt = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajr)
  %i.aju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajs, <4 x float> %broadcast.splat1160, <4 x float> zeroinitializer)
  %i.ajv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajt, <4 x float> %broadcast.splat1160, <4 x float> zeroinitializer)
  %i.ajw = fsub <4 x float> %broadcast.splat1162, %wide.load1171
  %i.ajx = fsub <4 x float> %broadcast.splat1162, %wide.load1172
  %i.ajy = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajw)
  %i.ajz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajx)
  %i.aka = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajy, <4 x float> %broadcast.splat1164, <4 x float> %i.aju)
  %i.akb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajz, <4 x float> %broadcast.splat1164, <4 x float> %i.ajv)
  %i.akc = fsub <4 x float> %broadcast.splat1166, %wide.load1173
  %i.akd = fsub <4 x float> %broadcast.splat1166, %wide.load1174
  %i.ake = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.akc)
  %i.akf = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.akd)
  %i.akg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ake, <4 x float> %broadcast.splat1168, <4 x float> %i.aka)
  %i.akh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akf, <4 x float> %broadcast.splat1168, <4 x float> %i.akb)
  %i.aki = fcmp ole <4 x float> %i.akg, splat (float 3.000000e-02)
  %i.akj = fcmp ole <4 x float> %i.akh, splat (float 3.000000e-02)
  %i.akk = or <4 x i1> %vec.phi, %i.aki           ; 2 uses
  %i.akl = or <4 x i1> %vec.phi1169, %i.akj       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.akm = icmp eq i64 %index.next, %n.vec
  br i1 %i.akm, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.akl, %i.akk
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.akn = bitcast <4 x i1> %bin.rdx.fr to i4
  %i.ako = icmp ne i4 %i.akn, 0
  %rdx.select = select i1 %i.ako, i1 true, i1 %.0299423.us.i ; 2 uses
  br i1 %cmp.n, label %._crit_edge421.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph420.us.i, %middle.block
  %.0297418.us.i.ph = phi i64 [ %i.aiz, %.lr.ph420.us.i ], [ %i.aji, %middle.block ]
  %.1300417.us.i.ph = phi i1 [ %.0299423.us.i, %.lr.ph420.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0297418.us.i = phi i64 [ %i.alg, %scalar.ph ], [ %.0297418.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1300417.us.i = phi i1 [ %spec.select381.us.i, %scalar.ph ], [ %.1300417.us.i.ph, %scalar.ph.preheader ]
  %i.akp = add i64 %.0297418.us.i, %i.ajj         ; 3 uses
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.akp
  %i.akr = load float, ptr %i.akq, align 4, !tbaa !106, !noalias !660
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.akp
  %i.akt = load float, ptr %i.aks, align 4, !tbaa !106, !noalias !660
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.akp
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !106, !noalias !660
  %i.akw = fsub float %i.ain, %i.akr
  %i.akx = call noundef float @llvm.fabs.f32(float %i.akw)
  %i.aky = call float @llvm.fmuladd.f32(float %i.akx, float %.sink2.i.i, float 0.000000e+00)
  %i.akz = fsub float %i.aip, %i.akt
  %i.ala = call noundef float @llvm.fabs.f32(float %i.akz)
  %i.alb = call float @llvm.fmuladd.f32(float %i.ala, float %.sink1.i.i, float %i.aky)
  %i.alc = fsub float %i.air, %i.akv
  %i.ald = call noundef float @llvm.fabs.f32(float %i.alc)
  %i.ale = call float @llvm.fmuladd.f32(float %i.ald, float %.sink.i.i, float %i.alb)
  %i.alf = fcmp ole float %i.ale, 3.000000e-02
  %spec.select381.us.i = select i1 %i.alf, i1 true, i1 %.1300417.us.i ; 2 uses
  %i.alg = add nuw nsw i64 %.0297418.us.i, 1      ; 2 uses
  %exitcond537.not.i = icmp eq i64 %i.alg, %.sroa.speculated27.i
  br i1 %exitcond537.not.i, label %._crit_edge421.us.i, label %scalar.ph, !llvm.loop !591

._crit_edge421.us.i:                              ; preds = %scalar.ph, %middle.block
  %spec.select381.us.i.lcssa = phi i1 [ %rdx.select, %middle.block ], [ %spec.select381.us.i, %scalar.ph ] ; 2 uses
  %i.alh = add nuw nsw i64 %.0298424.us.i, 1      ; 2 uses
  %exitcond538.not.i = icmp eq i64 %i.alh, %.sroa.speculated37.i
  br i1 %exitcond538.not.i, label %._crit_edge427.i, label %.lr.ph420.us.i, !llvm.loop !592

._crit_edge427.i:                                 ; preds = %._crit_edge421.us.i
  br i1 %spec.select381.us.i.lcssa, label %bb.cr, label %.loopexit246.i

bb.cr:                                            ; preds = %._crit_edge427.i
  %i.ali = load ptr, ptr %i.wn, align 8, !tbaa !203, !noalias !660 ; 4 uses
  %i.alj = load ptr, ptr %i.wo, align 8, !tbaa !204, !noalias !660
  %i.alk = icmp ult ptr %i.ali, %i.alj
  br i1 %i.alk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN3jxl14QuantizedPatchC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.ali) #24, !noalias !660
  %i.all = getelementptr inbounds nuw i8, ptr %i.ali, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.all, i8 0, i64 24, i1 false), !noalias !660
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ali, i64 184
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.aln = call noundef ptr @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE24__emplace_back_slow_pathIJEEEPS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13) #24, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i: ; preds = %bb.ct, %bb.cs
  %.0.i475.i = phi ptr [ %i.alm, %bb.cs ], [ %i.aln, %bb.ct ] ; 4 uses
  store ptr %.0.i475.i, ptr %i.wn, align 8, !tbaa !203, !noalias !660
  %i.alo = getelementptr inbounds i8, ptr %.0.i475.i, i64 -24 ; 4 uses
  %i.alp = getelementptr inbounds i8, ptr %.0.i475.i, i64 -16 ; 4 uses
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !215, !noalias !660 ; 5 uses
  %i.alr = getelementptr inbounds i8, ptr %.0.i475.i, i64 -8 ; 3 uses
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !219, !noalias !660 ; 2 uses
  %i.alt = icmp ult ptr %i.alq, %i.als
  br i1 %i.alt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i
  store i32 %i.aix, ptr %i.alq, align 4, !tbaa !217, !noalias !660
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alq, i64 4
  store i32 %i.ais, ptr %i.alu, align 4, !tbaa !218, !noalias !660
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i

bb.cv:                                            ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i
  %i.alw = load ptr, ptr %i.alo, align 8, !tbaa !220, !noalias !660
  %i.alx = ptrtoint ptr %i.alq to i64
  %i.aly = ptrtoint ptr %i.alw to i64             ; 2 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 2 uses
  %i.ama = ashr exact i64 %i.alz, 3
  %i.amb = add nsw i64 %i.ama, 1                  ; 2 uses
  %i.amc = icmp ugt i64 %i.amb, 2305843009213693951
  br i1 %i.amc, label %bb.cw, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i

bb.cw:                                            ; preds = %bb.cv
  call void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.alo) #22, !noalias !660
  unreachable

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i: ; preds = %bb.cv
  %i.amd = ptrtoint ptr %i.als to i64
  %i.ame = sub i64 %i.amd, %i.aly                 ; 2 uses
  %.not.i.i.i477.i = icmp ult i64 %i.ame, 9223372036854775800
  %i.amf = ashr exact i64 %i.ame, 2
  %.sroa.speculated.i.i.i478.i = call i64 @llvm.umax.i64(i64 %i.amf, i64 %i.amb)
  %.0.i.i.i479.i = select i1 %.not.i.i.i477.i, i64 %.sroa.speculated.i.i.i478.i, i64 2305843009213693951 ; 4 uses
  %i.amg = icmp ne i64 %.0.i.i.i479.i, 0
  call void @llvm.assume(i1 %i.amg)
  %i.amh = icmp ugt i64 %.0.i.i.i479.i, 2305843009213693951
  br i1 %i.amh, label %bb.cx, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i

bb.cx:                                            ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !660
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i
  %i.ami = shl nuw i64 %.0.i.i.i479.i, 3
  %i.amj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ami) #20, !noalias !660 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.alz ; 5 uses
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.0.i.i.i479.i
  store i32 %i.aix, ptr %i.amk, align 4, !tbaa !217, !noalias !660
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amk, i64 4
  store i32 %i.ais, ptr %i.amm, align 4, !tbaa !218, !noalias !660
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amk, i64 8 ; 3 uses
  %i.amo = load ptr, ptr %i.alp, align 8, !tbaa !215, !noalias !660 ; 2 uses
  %i.amp = load ptr, ptr %i.alo, align 8, !tbaa !220, !noalias !660 ; 5 uses
  %.not13.i.i.i.i481.i = icmp eq ptr %i.amo, %i.amp
  br i1 %.not13.i.i.i.i481.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, label %.lr.ph.i.i.i.i482.i

.lr.ph.i.i.i.i482.i:                              ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i, %.lr.ph.i.i.i.i482.i
  %i.amq = phi ptr [ %i.amr, %.lr.ph.i.i.i.i482.i ], [ %i.amk, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ]
  %.sroa.18.014.i.i.i.i483.i = phi ptr [ %i.ams, %.lr.ph.i.i.i.i482.i ], [ %i.amo, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ]
  %i.amr = getelementptr inbounds i8, ptr %i.amq, i64 -8 ; 3 uses
  %i.ams = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i483.i, i64 -8 ; 3 uses
  %i.amt = load i64, ptr %i.ams, align 4, !tbaa !208, !noalias !660
  store i64 %i.amt, ptr %i.amr, align 4, !tbaa !208, !noalias !660
  %.not.i.i.i.i484.i = icmp eq ptr %i.ams, %i.amp
  br i1 %.not.i.i.i.i484.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, label %.lr.ph.i.i.i.i482.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i: ; preds = %.lr.ph.i.i.i.i482.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i
  %storemerge.i.i486.i = phi ptr [ %i.amk, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ], [ %i.amr, %.lr.ph.i.i.i.i482.i ]
  store ptr %storemerge.i.i486.i, ptr %i.alo, align 8, !tbaa !219, !noalias !660
  store ptr %i.amn, ptr %i.alp, align 8, !tbaa !219, !noalias !660
  %i.amu = load ptr, ptr %i.alr, align 8, !tbaa !219, !noalias !660
  store ptr %i.aml, ptr %i.alr, align 8, !tbaa !219, !noalias !660
  %.not.i5.i.i487.i = icmp eq ptr %i.amp, null
  br i1 %.not.i5.i.i487.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i
  %i.amv = ptrtoint ptr %i.amu to i64
  %i.amw = ptrtoint ptr %i.amp to i64
  %i.amx = sub i64 %i.amv, %i.amw
  call void @_ZdlPvm(ptr noundef nonnull %i.amp, i64 noundef %i.amx) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i: ; preds = %bb.cy, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, %bb.cu
  %.0.i488.i = phi ptr [ %i.alv, %bb.cu ], [ %i.amn, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i ], [ %i.amn, %bb.cy ]
  store ptr %.0.i488.i, ptr %i.alp, align 8, !tbaa !215, !noalias !660
  %i.amy = load ptr, ptr %i.wn, align 8, !tbaa !203, !noalias !660 ; 10 uses
  %i.amz = getelementptr inbounds i8, ptr %i.amy, i64 -184 ; 4 uses
  %i.ana = add nuw nsw i64 %i.aih, 1
  store i64 %i.ana, ptr %i.amz, align 8, !tbaa !222, !noalias !660
  %i.anb = add nuw nsw i64 %i.aij, 1
  %i.anc = getelementptr inbounds i8, ptr %i.amy, i64 -176
  store i64 %i.anb, ptr %i.anc, align 8, !tbaa !223, !noalias !660
  %.not352436.i = icmp ugt i64 %.2323.i, %.2320.i
  %i.and = getelementptr inbounds i8, ptr %i.amy, i64 -96
  %i.ane = getelementptr inbounds i8, ptr %i.amy, i64 -168
  br i1 %.not352436.i, label %.split445.us.thread.i, label %.preheader.lr.ph.preheader.i

.preheader.lr.ph.preheader.i:                     ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i
  %.not353430.i = icmp ugt i64 %.2329.i, %.2326.i
  %i.anf = getelementptr inbounds i8, ptr %i.amy, i64 -72
  %i.ang = getelementptr inbounds i8, ptr %i.amy, i64 -144
  br i1 %.not353430.i, label %.split445.us.thread.i, label %.preheader.i

.split445.us.i:                                   ; preds = %._crit_edge434.2.i
  %i.anh = icmp samesign ult i32 %.sroa.speculated.2.i, 2
  br i1 %i.anh, label %.split445.us.i..split445.us.thread.i_crit_edge, label %bb.dd

.split445.us.i..split445.us.thread.i_crit_edge:   ; preds = %.split445.us.i
  %.pre = load ptr, ptr %i.wn, align 8, !tbaa !203, !noalias !660
  br label %.split445.us.thread.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.preheader.i, %._crit_edge434.i
  %.0295438.i = phi i64 [ %i.apc, %._crit_edge434.i ], [ %.2323.i, %.preheader.lr.ph.preheader.i ] ; 3 uses
  %.1437.i = phi i32 [ %.sroa.speculated.i, %._crit_edge434.i ], [ 0, %.preheader.lr.ph.preheader.i ]
  %i.ani = sub i64 %.0295438.i, %.2323.i
  %i.anj = mul i64 %.0295438.i, %i.m
  br label %bb.db

.preheader.1.i:                                   ; preds = %._crit_edge434.i, %._crit_edge434.1.i
  %.0295438.1.i = phi i64 [ %i.aoe, %._crit_edge434.1.i ], [ %.2323.i, %._crit_edge434.i ] ; 3 uses
  %.1437.1.i = phi i32 [ %.sroa.speculated.1.i, %._crit_edge434.1.i ], [ %.sroa.speculated.i, %._crit_edge434.i ]
  %i.ank = sub i64 %.0295438.1.i, %.2323.i
  %i.anl = mul i64 %.0295438.1.i, %i.m
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.preheader.1.i
  %.0294432.1.i = phi i64 [ %.2329.i, %.preheader.1.i ], [ %i.aod, %bb.cz ] ; 3 uses
  %.2431.1.i = phi i32 [ %.1437.1.i, %.preheader.1.i ], [ %.sroa.speculated.1.i, %bb.cz ]
  %i.anm = load i64, ptr %i.amz, align 8, !tbaa !222, !noalias !660
  %i.ann = mul i64 %i.anm, %i.ank
  %i.ano = sub i64 %.0294432.1.i, %.2329.i
  %i.anp = add i64 %i.ann, %i.ano                 ; 2 uses
  %i.anq = load ptr, ptr %i.a, align 16, !tbaa !183, !noalias !660
  %i.anr = getelementptr [4 x i8], ptr %i.anq, i64 %i.anl
  %i.ans = getelementptr [4 x i8], ptr %i.anr, i64 %.0294432.1.i
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !106, !noalias !660
  %i.anu = fsub float %i.ant, %i.ain              ; 2 uses
  %i.anv = load ptr, ptr %i.and, align 8, !tbaa !224, !noalias !660
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.anp
  store float %i.anu, ptr %i.anw, align 4, !tbaa !106, !noalias !660
  %i.anx = fdiv float %i.anu, %.sink5.i.i
  %i.any = fptosi float %i.anx to i32             ; 2 uses
  %i.anz = trunc i32 %i.any to i8
  %i.aoa = load ptr, ptr %i.ane, align 8, !tbaa !228, !noalias !660
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.anp
  store i8 %i.anz, ptr %i.aob, align 1, !tbaa !71, !noalias !660
  %i.aoc = call i32 @llvm.abs.i32(i32 %i.any, i1 true)
  %.sroa.speculated.1.i = call i32 @llvm.smax.i32(i32 %.2431.1.i, i32 %i.aoc) ; 3 uses
  %i.aod = add i64 %.0294432.1.i, 1               ; 2 uses
  %.not353.1.i = icmp ugt i64 %i.aod, %.2326.i
  br i1 %.not353.1.i, label %._crit_edge434.1.i, label %bb.cz, !llvm.loop !593

._crit_edge434.1.i:                               ; preds = %bb.cz
  %i.aoe = add i64 %.0295438.1.i, 1               ; 2 uses
  %.not352.1.i = icmp ugt i64 %i.aoe, %.2320.i
  br i1 %.not352.1.i, label %._crit_edge439.1.i, label %.preheader.1.i, !llvm.loop !594

._crit_edge439.1.i:                               ; preds = %._crit_edge434.1.i
  %i.aof = getelementptr inbounds i8, ptr %i.amy, i64 -48
  %i.aog = getelementptr inbounds i8, ptr %i.amy, i64 -120
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %._crit_edge434.2.i, %._crit_edge439.1.i
  %.0295438.2.i = phi i64 [ %i.apb, %._crit_edge434.2.i ], [ %.2323.i, %._crit_edge439.1.i ] ; 3 uses
  %.1437.2.i = phi i32 [ %.sroa.speculated.2.i, %._crit_edge434.2.i ], [ %.sroa.speculated.1.i, %._crit_edge439.1.i ]
  %i.aoh = sub i64 %.0295438.2.i, %.2323.i
  %i.aoi = mul i64 %.0295438.2.i, %i.m
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.preheader.2.i
  %.0294432.2.i = phi i64 [ %.2329.i, %.preheader.2.i ], [ %i.apa, %bb.da ] ; 3 uses
  %.2431.2.i = phi i32 [ %.1437.2.i, %.preheader.2.i ], [ %.sroa.speculated.2.i, %bb.da ]
  %i.aoj = load i64, ptr %i.amz, align 8, !tbaa !222, !noalias !660
  %i.aok = mul i64 %i.aoj, %i.aoh
  %i.aol = sub i64 %.0294432.2.i, %.2329.i
  %i.aom = add i64 %i.aok, %i.aol                 ; 2 uses
  %i.aon = load ptr, ptr %i.s, align 16, !tbaa !183, !noalias !660
  %i.aoo = getelementptr [4 x i8], ptr %i.aon, i64 %i.aoi
  %i.aop = getelementptr [4 x i8], ptr %i.aoo, i64 %.0294432.2.i
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !106, !noalias !660
  %i.aor = fsub float %i.aoq, %i.air              ; 2 uses
  %i.aos = load ptr, ptr %i.aof, align 8, !tbaa !224, !noalias !660
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.aom
  store float %i.aor, ptr %i.aot, align 4, !tbaa !106, !noalias !660
  %i.aou = fdiv float %i.aor, %.sink3.i.i
  %i.aov = fptosi float %i.aou to i32             ; 2 uses
  %i.aow = trunc i32 %i.aov to i8
  %i.aox = load ptr, ptr %i.aog, align 8, !tbaa !228, !noalias !660
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aom
  store i8 %i.aow, ptr %i.aoy, align 1, !tbaa !71, !noalias !660
  %i.aoz = call i32 @llvm.abs.i32(i32 %i.aov, i1 true)
  %.sroa.speculated.2.i = call i32 @llvm.smax.i32(i32 %.2431.2.i, i32 %i.aoz) ; 3 uses
  %i.apa = add i64 %.0294432.2.i, 1               ; 2 uses
  %.not353.2.i = icmp ugt i64 %i.apa, %.2326.i
  br i1 %.not353.2.i, label %._crit_edge434.2.i, label %bb.da, !llvm.loop !593

._crit_edge434.2.i:                               ; preds = %bb.da
  %i.apb = add i64 %.0295438.2.i, 1               ; 2 uses
  %.not352.2.i = icmp ugt i64 %i.apb, %.2320.i
  br i1 %.not352.2.i, label %.split445.us.i, label %.preheader.2.i, !llvm.loop !594

._crit_edge434.i:                                 ; preds = %bb.db
  %i.apc = add i64 %.0295438.i, 1                 ; 2 uses
  %.not352.i = icmp ugt i64 %i.apc, %.2320.i
  br i1 %.not352.i, label %.preheader.1.i, label %.preheader.i, !llvm.loop !594

bb.db:                                            ; preds = %bb.db, %.preheader.i
  %.0294432.i = phi i64 [ %.2329.i, %.preheader.i ], [ %i.apu, %bb.db ] ; 3 uses
  %.2431.i = phi i32 [ %.1437.i, %.preheader.i ], [ %.sroa.speculated.i, %bb.db ]
  %i.apd = load i64, ptr %i.amz, align 8, !tbaa !222, !noalias !660
  %i.ape = mul i64 %i.apd, %i.ani
  %i.apf = sub i64 %.0294432.i, %.2329.i
  %i.apg = add i64 %i.ape, %i.apf                 ; 2 uses
  %i.aph = load ptr, ptr %i.p, align 8, !tbaa !183, !noalias !660
  %i.api = getelementptr [4 x i8], ptr %i.aph, i64 %i.anj
  %i.apj = getelementptr [4 x i8], ptr %i.api, i64 %.0294432.i
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !106, !noalias !660
  %i.apl = fsub float %i.apk, %i.aip              ; 2 uses
  %i.apm = load ptr, ptr %i.anf, align 8, !tbaa !224, !noalias !660
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %i.apg
  store float %i.apl, ptr %i.apn, align 4, !tbaa !106, !noalias !660
  %i.apo = fdiv float %i.apl, %.sink4.i.i
  %i.app = fptosi float %i.apo to i32             ; 2 uses
  %i.apq = trunc i32 %i.app to i8
  %i.apr = load ptr, ptr %i.ang, align 8, !tbaa !228, !noalias !660
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.apg
  store i8 %i.apq, ptr %i.aps, align 1, !tbaa !71, !noalias !660
  %i.apt = call i32 @llvm.abs.i32(i32 %i.app, i1 true)
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %.2431.i, i32 %i.apt) ; 3 uses
  %i.apu = add i64 %.0294432.i, 1                 ; 2 uses
  %.not353.i = icmp ugt i64 %i.apu, %.2326.i
  br i1 %.not353.i, label %._crit_edge434.i, label %bb.db, !llvm.loop !593

.split445.us.thread.i:                            ; preds = %.split445.us.i..split445.us.thread.i_crit_edge, %.preheader.lr.ph.preheader.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i
  %47 = phi ptr [ %.pre, %.split445.us.i..split445.us.thread.i_crit_edge ], [ %i.amy, %.preheader.lr.ph.preheader.i ], [ %i.amy, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i ] ; 4 uses
  %i.apv = getelementptr inbounds i8, ptr %47, i64 -24
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !220, !noalias !660 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.apw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i, label %bb.dc

bb.dc:                                            ; preds = %.split445.us.thread.i
  %i.apx = getelementptr inbounds i8, ptr %47, i64 -16
  store ptr %i.apw, ptr %i.apx, align 8, !tbaa !215, !noalias !660
  %i.apy = getelementptr inbounds i8, ptr %47, i64 -8
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !219, !noalias !660
  %i.aqa = ptrtoint ptr %i.apz to i64
  %i.aqb = ptrtoint ptr %i.apw to i64
  %i.aqc = sub i64 %i.aqa, %i.aqb
  call void @_ZdlPvm(ptr noundef nonnull %i.apw, i64 noundef %i.aqc) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i: ; preds = %bb.dc, %.split445.us.thread.i
  %i.aqd = getelementptr inbounds i8, ptr %47, i64 -184 ; 2 uses
  call void @_ZN3jxl14QuantizedPatchD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(184) %i.aqd) #23, !noalias !660
  store ptr %i.aqd, ptr %i.wn, align 8, !tbaa !203, !noalias !660
  br label %.loopexit246.i

bb.dd:                                            ; preds = %.split445.us.i
  br i1 %.not239.not.i, label %.loopexit246.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aqe = add i64 %.sroa.0114.1451.i, %.sroa.5115.1452.i
  %i.aqf = shl i64 %.sroa.0114.1451.i, 23
  %i.aqg = xor i64 %i.aqf, %.sroa.0114.1451.i     ; 2 uses
  %i.aqh = lshr i64 %i.aqg, 18
  %i.aqi = lshr i64 %.sroa.5115.1452.i, 5
  %i.aqj = xor i64 %i.aqi, %i.aqh
  %i.aqk = xor i64 %i.aqj, %.sroa.5115.1452.i
  %i.aql = xor i64 %i.aqk, %i.aqg                 ; 2 uses
  %i.aqm = lshr i64 %i.aqe, 41
  %i.aqn = trunc nuw nsw i64 %i.aqm to i32
  %i.aqo = or disjoint i32 %i.aqn, 1065353216
  %i.aqp = bitcast i32 %i.aqo to float
  %i.aqq = fadd float %i.aqp, -1.000000e+00
  %i.aqr = call noundef float @llvm.fmuladd.f32(float %i.aqq, float 5.000000e-01, float 5.000000e-01)
  %i.aqs = load ptr, ptr %i.wj, align 8, !tbaa !215, !noalias !660 ; 2 uses
  %.not242447.i = icmp eq ptr %i.aht, %i.aqs
  br i1 %.not242447.i, label %.loopexit246.i, label %.lr.ph450.i

.lr.ph450.i:                                      ; preds = %bb.de
  %i.aqt = load ptr, ptr %i.wp, align 8, !tbaa !101, !noalias !660
  %i.aqu = load i64, ptr %i.wq, align 8, !tbaa !100, !noalias !660
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph450.i
  %.sroa.013.0448.i = phi ptr [ %i.aht, %.lr.ph450.i ], [ %i.ara, %bb.df ] ; 3 uses
  %.sroa.049.0.copyload.i = load i32, ptr %.sroa.013.0448.i, align 4, !tbaa !208, !noalias !660
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0448.i, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !208, !noalias !660
  %i.aqv = zext i32 %.sroa.4.0.copyload.i to i64
  %i.aqw = mul i64 %i.aqu, %i.aqv
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqx, i64 64) ]
  %i.aqy = zext i32 %.sroa.049.0.copyload.i to i64
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %i.aqy
  store float %i.aqr, ptr %i.aqz, align 4, !tbaa !106, !noalias !660
  %i.ara = getelementptr inbounds nuw i8, ptr %.sroa.013.0448.i, i64 8 ; 2 uses
  %.not242.i = icmp eq ptr %i.ara, %i.aqs
  br i1 %.not242.i, label %.loopexit246.i, label %bb.df

.loopexit246.i:                                   ; preds = %bb.df, %bb.de, %bb.dd, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i, %._crit_edge427.i, %.lr.ph426.i, %bb.cq, %bb.cp, %bb.co, %._crit_edge408.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i, %bb.bc
  %i.arb = phi ptr [ %i.xg, %bb.bc ], [ %i.aht, %bb.co ], [ %i.aht, %bb.cp ], [ %i.aht, %._crit_edge427.i ], [ %i.aht, %._crit_edge408.i ], [ %i.xg, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.aht, %.lr.ph426.i ], [ %i.aht, %bb.cq ], [ %i.aht, %bb.de ], [ %i.aht, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.aht, %bb.dd ], [ %i.aht, %bb.df ] ; 3 uses
  %i.arc = phi ptr [ %i.xh, %bb.bc ], [ %i.ahv, %bb.co ], [ %i.ahv, %bb.cp ], [ %i.ahv, %._crit_edge427.i ], [ %i.ahv, %._crit_edge408.i ], [ %i.yf, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahv, %.lr.ph426.i ], [ %i.ahv, %bb.cq ], [ %i.ahv, %bb.de ], [ %i.ahv, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahv, %bb.dd ], [ %i.ahv, %bb.df ] ; 3 uses
  %i.ard = phi ptr [ %i.xi, %bb.bc ], [ %i.ahw, %bb.co ], [ %i.ahw, %bb.cp ], [ %i.ahw, %._crit_edge427.i ], [ %i.ahw, %._crit_edge408.i ], [ %i.yg, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahw, %.lr.ph426.i ], [ %i.ahw, %bb.cq ], [ %i.ahw, %bb.de ], [ %i.ahw, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahw, %bb.dd ], [ %i.ahw, %bb.df ] ; 2 uses
  %i.are = phi ptr [ %i.xj, %bb.bc ], [ %i.ahx, %bb.co ], [ %i.ahx, %bb.cp ], [ %i.ahx, %._crit_edge427.i ], [ %i.ahx, %._crit_edge408.i ], [ %i.yh, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahx, %.lr.ph426.i ], [ %i.ahx, %bb.cq ], [ %i.ahx, %bb.de ], [ %i.ahx, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahx, %bb.dd ], [ %i.ahx, %bb.df ] ; 2 uses
  %i.arf = phi ptr [ %i.xk, %bb.bc ], [ %i.ahy, %bb.co ], [ %i.ahy, %bb.cp ], [ %i.ahy, %._crit_edge427.i ], [ %i.ahy, %._crit_edge408.i ], [ %i.yi, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahy, %.lr.ph426.i ], [ %i.ahy, %bb.cq ], [ %i.ahy, %bb.de ], [ %i.ahy, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahy, %bb.dd ], [ %i.ahy, %bb.df ] ; 2 uses
  %i.arg = phi ptr [ %i.xl, %bb.bc ], [ %i.ahv, %bb.co ], [ %i.ahv, %bb.cp ], [ %i.ahv, %._crit_edge427.i ], [ %i.ahv, %._crit_edge408.i ], [ %i.yj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahv, %.lr.ph426.i ], [ %i.ahv, %bb.cq ], [ %i.ahv, %bb.de ], [ %i.ahv, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahv, %bb.dd ], [ %i.ahv, %bb.df ] ; 2 uses
  %i.arh = phi ptr [ %i.xm, %bb.bc ], [ %i.ahz, %bb.co ], [ %i.ahz, %bb.cp ], [ %i.ahz, %._crit_edge427.i ], [ %i.ahz, %._crit_edge408.i ], [ %i.yk, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahz, %.lr.ph426.i ], [ %i.ahz, %bb.cq ], [ %i.ahz, %bb.de ], [ %i.ahz, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahz, %bb.dd ], [ %i.ahz, %bb.df ] ; 2 uses
  %i.ari = phi ptr [ %i.xn, %bb.bc ], [ %i.ahv, %bb.co ], [ %i.ahv, %bb.cp ], [ %i.ahv, %._crit_edge427.i ], [ %i.ahv, %._crit_edge408.i ], [ %i.yj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahv, %.lr.ph426.i ], [ %i.ahv, %bb.cq ], [ %i.ahv, %bb.de ], [ %i.ahv, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahv, %bb.dd ], [ %i.ahv, %bb.df ] ; 2 uses
  %i.arj = phi ptr [ %i.xo, %bb.bc ], [ %i.aia, %bb.co ], [ %i.aia, %bb.cp ], [ %i.aia, %._crit_edge427.i ], [ %i.aia, %._crit_edge408.i ], [ %i.xo, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.aia, %.lr.ph426.i ], [ %i.aia, %bb.cq ], [ %i.aht, %bb.de ], [ %i.aia, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.aia, %bb.dd ], [ %i.aht, %bb.df ] ; 2 uses
  %.sroa.0114.5.i = phi i64 [ %.sroa.0114.1451.i, %bb.bc ], [ %.sroa.0114.1451.i, %bb.co ], [ %.sroa.0114.1451.i, %bb.cp ], [ %.sroa.0114.1451.i, %._crit_edge427.i ], [ %.sroa.0114.1451.i, %._crit_edge408.i ], [ %.sroa.0114.1451.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %.sroa.0114.1451.i, %.lr.ph426.i ], [ %.sroa.0114.1451.i, %bb.cq ], [ %.sroa.5115.1452.i, %bb.de ], [ %.sroa.0114.1451.i, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %.sroa.0114.1451.i, %bb.dd ], [ %.sroa.5115.1452.i, %bb.df ] ; 2 uses
  %.sroa.5115.5.i = phi i64 [ %.sroa.5115.1452.i, %bb.bc ], [ %.sroa.5115.1452.i, %bb.co ], [ %.sroa.5115.1452.i, %bb.cp ], [ %.sroa.5115.1452.i, %._crit_edge427.i ], [ %.sroa.5115.1452.i, %._crit_edge408.i ], [ %.sroa.5115.1452.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %.sroa.5115.1452.i, %.lr.ph426.i ], [ %.sroa.5115.1452.i, %bb.cq ], [ %i.aql, %bb.de ], [ %.sroa.5115.1452.i, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %.sroa.5115.1452.i, %bb.dd ], [ %i.aql, %bb.df ] ; 2 uses
  %i.ark = add nuw nsw i64 %.0330453.i, 1         ; 2 uses
  %exitcond542.not.i = icmp eq i64 %i.ark, %i.x
  br i1 %exitcond542.not.i, label %._crit_edge456.i, label %bb.bc, !llvm.loop !595

bb.dg:                                            ; preds = %._crit_edge462.split.i
  %.val.i = load ptr, ptr %i.co, align 8, !tbaa !676, !noalias !660
  %.not240.i = icmp eq ptr %.val.i, null
  br i1 %.not240.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.arl = call i32 @_ZN3jxl19DumpPlaneNormalizedERKNS_14CompressParamsEPKcRKNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(648) %i.c, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(56) %26) #23, !noalias !660 ; 2 uses
  %i.arm = icmp eq i32 %i.arl, 0
  br i1 %i.arm, label %.critedge383.i, label %bb.dn

.critedge383.i:                                   ; preds = %bb.dh, %._crit_edge462.split.i
  %i.arn = load ptr, ptr %13, align 8, !tbaa !202, !noalias !660 ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !203, !noalias !660 ; 3 uses
  %i.arq = icmp eq ptr %i.arn, %i.arp
  br i1 %i.arq, label %.sink.split, label %bb.di

bb.di:                                            ; preds = %.critedge383.i
  call void @_ZNSt3__14sortB8nn180100INS_11__wrap_iterIPNS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS_9allocatorIS6_EEEEEEEEEEvT_SD_(ptr %i.arn, ptr %i.arp) #24, !noalias !660
  %i.arr = load ptr, ptr %i.aro, align 8, !tbaa !203, !noalias !660
  %i.ars = load ptr, ptr %13, align 8, !tbaa !202, !noalias !660 ; 3 uses
  %i.art = ptrtoint ptr %i.arr to i64
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = sub i64 %i.art, %i.aru
  %i.arw = sdiv exact i64 %i.arv, 184
  %i.arx = icmp ugt i64 %i.arw, 1
  br i1 %i.arx, label %.lr.ph466.i, label %._crit_edge467.i

._crit_edge467.i:                                 ; preds = %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i, %bb.di
  %.0286.lcssa.i = phi i64 [ 0, %bb.di ], [ %.2288.i, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ars, %bb.di ], [ %i.auo, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ]
  %i.ary = getelementptr inbounds nuw [184 x i8], ptr %.lcssa.i, i64 %.0286.lcssa.i ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 160
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 168
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !215, !noalias !660
  %i.asc = load ptr, ptr %i.arz, align 8, !tbaa !220, !noalias !660
  %i.asd = ptrtoint ptr %i.asb to i64
  %i.ase = ptrtoint ptr %i.asc to i64
  %i.asf = sub i64 %i.asd, %i.ase
  %i.asg = icmp ugt i64 %i.asf, 8
  %i.ash = zext i1 %i.asg to i64
  %spec.select384.i = add i64 %.0286.lcssa.i, %i.ash
  call void @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %spec.select384.i) #24, !noalias !660
  %i.asi = load ptr, ptr %13, align 8, !tbaa !202, !noalias !660 ; 3 uses
  %i.asj = load ptr, ptr %i.aro, align 8, !tbaa !203, !noalias !660 ; 3 uses
  %.not241470.i = icmp eq ptr %i.asi, %i.asj
  br i1 %.not241470.i, label %._crit_edge475.thread.i, label %.lr.ph474.i

.lr.ph466.i:                                      ; preds = %bb.di, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i
  %i.ask = phi ptr [ %i.auo, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ], [ %i.ars, %bb.di ] ; 3 uses
  %.0285464.i = phi i64 [ %i.aum, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ], [ 1, %bb.di ] ; 4 uses
  %.0286463.i = phi i64 [ %.2288.i, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ], [ 0, %bb.di ] ; 3 uses
  %i.asl = getelementptr inbounds nuw [184 x i8], ptr %i.ask, i64 %.0285464.i ; 10 uses
  %i.asm = getelementptr inbounds nuw [184 x i8], ptr %i.ask, i64 %.0286463.i ; 9 uses
  %i.asn = load i64, ptr %i.asl, align 8, !tbaa !222, !noalias !660 ; 2 uses
  %i.aso = load i64, ptr %i.asm, align 8, !tbaa !222, !noalias !660
  %.not.i491.i = icmp eq i64 %i.asn, %i.aso
  br i1 %.not.i491.i, label %bb.dj, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

bb.dj:                                            ; preds = %.lr.ph466.i
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asl, i64 8
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !223, !noalias !660 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %i.ass = load i64, ptr %i.asr, align 8, !tbaa !223, !noalias !660
  %.not11.i.i = icmp eq i64 %i.asq, %i.ass
  br i1 %.not11.i.i, label %.preheader.i492.i, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

.preheader.i492.i:                                ; preds = %bb.dj
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asl, i64 16
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asm, i64 16
  %i.asv = mul i64 %i.asq, %i.asn                 ; 3 uses
  %i.asw = load ptr, ptr %i.ast, align 8, !tbaa !228, !noalias !660
  %i.asx = load ptr, ptr %i.asu, align 8, !tbaa !228, !noalias !660
  %bcmp.i.i = call i32 @bcmp(ptr %i.asw, ptr %i.asx, i64 %i.asv), !noalias !660
  %.not12.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not12.i.i, label %bb.dk, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

bb.dk:                                            ; preds = %.preheader.i492.i
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asl, i64 40
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !228, !noalias !660
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asm, i64 40
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !228, !noalias !660
  %bcmp.1.i.i = call i32 @bcmp(ptr %i.asz, ptr %i.atb, i64 %i.asv), !noalias !660
  %.not12.1.i.i = icmp eq i32 %bcmp.1.i.i, 0
  br i1 %.not12.1.i.i, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i:          ; preds = %bb.dk
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asl, i64 64
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !228, !noalias !660
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asm, i64 64
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !228, !noalias !660
  %bcmp.2.i.i = call i32 @bcmp(ptr %i.atd, ptr %i.atf, i64 %i.asv), !noalias !660
  %.not12.2.i.i = icmp eq i32 %bcmp.2.i.i, 0
  br i1 %.not12.2.i.i, label %bb.dl, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

bb.dl:                                            ; preds = %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asm, i64 160
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asm, i64 168
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !215, !noalias !660
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asl, i64 160
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !220, !noalias !660 ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.asl, i64 168
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !215, !noalias !660 ; 2 uses
  %i.atn = ptrtoint ptr %i.atm to i64
  %i.ato = ptrtoint ptr %i.atk to i64
  %i.atp = sub i64 %i.atn, %i.ato
  %i.atq = ashr exact i64 %i.atp, 3
  %i.atr = call ptr @_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__insert_with_sizeB8nn180100INS_11__wrap_iterIPS2_EES9_EES9_NS7_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.atg, ptr %i.ati, ptr %i.atk, ptr %i.atm, i64 noundef %i.atq) #24, !noalias !660 ; 0 uses
  br label %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i

_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i:   ; preds = %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i, %bb.dk, %.preheader.i492.i, %bb.dj, %.lr.ph466.i
  %i.ats = getelementptr inbounds nuw i8, ptr %i.asm, i64 160
  %i.att = getelementptr inbounds nuw i8, ptr %i.asm, i64 168
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !215, !noalias !660
  %i.atv = load ptr, ptr %i.ats, align 8, !tbaa !220, !noalias !660
  %i.atw = ptrtoint ptr %i.atu to i64
  %i.atx = ptrtoint ptr %i.atv to i64
  %i.aty = sub i64 %i.atw, %i.atx
  %i.atz = icmp ugt i64 %i.aty, 8
end_hunk_0
