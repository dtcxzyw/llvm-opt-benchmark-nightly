Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0297418.us.i = phi i64 [ %i.alg, %scalar.ph ], [ %.0297418.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1300417.us.i = phi i1 [ %spec.select381.us.i, %scalar.ph ], [ %.1300417.us.i.ph, %scalar.ph.preheader ]
  %i.akp = add i64 %.0297418.us.i, %i.ajj         ; 3 uses
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.akp
  %i.akr = load float, ptr %i.akq, align 4, !tbaa !107, !noalias !661
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.akp
  %i.akt = load float, ptr %i.aks, align 4, !tbaa !107, !noalias !661
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.akp
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !107, !noalias !661
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
  br i1 %exitcond537.not.i, label %._crit_edge421.us.i, label %scalar.ph, !llvm.loop !592

._crit_edge421.us.i:                              ; preds = %scalar.ph, %middle.block
  %spec.select381.us.i.lcssa = phi i1 [ %rdx.select, %middle.block ], [ %spec.select381.us.i, %scalar.ph ] ; 2 uses
  %i.alh = add nuw nsw i64 %.0298424.us.i, 1      ; 2 uses
  %exitcond538.not.i = icmp eq i64 %i.alh, %.sroa.speculated37.i
  br i1 %exitcond538.not.i, label %._crit_edge427.i, label %.lr.ph420.us.i, !llvm.loop !593

._crit_edge427.i:                                 ; preds = %._crit_edge421.us.i
  br i1 %spec.select381.us.i.lcssa, label %bb.cr, label %.loopexit246.i

bb.cr:                                            ; preds = %._crit_edge427.i
  %i.ali = load ptr, ptr %i.wn, align 8, !tbaa !204, !noalias !661 ; 4 uses
  %i.alj = load ptr, ptr %i.wo, align 8, !tbaa !205, !noalias !661
  %i.alk = icmp ult ptr %i.ali, %i.alj
  br i1 %i.alk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN3jxl14QuantizedPatchC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.ali) #24, !noalias !661
  %i.all = getelementptr inbounds nuw i8, ptr %i.ali, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.all, i8 0, i64 24, i1 false), !noalias !661
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ali, i64 184
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.aln = call noundef ptr @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE24__emplace_back_slow_pathIJEEEPS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13) #24, !noalias !661
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i: ; preds = %bb.ct, %bb.cs
  %.0.i475.i = phi ptr [ %i.alm, %bb.cs ], [ %i.aln, %bb.ct ] ; 4 uses
  store ptr %.0.i475.i, ptr %i.wn, align 8, !tbaa !204, !noalias !661
  %i.alo = getelementptr inbounds i8, ptr %.0.i475.i, i64 -24 ; 4 uses
  %i.alp = getelementptr inbounds i8, ptr %.0.i475.i, i64 -16 ; 4 uses
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !216, !noalias !661 ; 5 uses
  %i.alr = getelementptr inbounds i8, ptr %.0.i475.i, i64 -8 ; 3 uses
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !220, !noalias !661 ; 2 uses
  %i.alt = icmp ult ptr %i.alq, %i.als
  br i1 %i.alt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i
  store i32 %i.aix, ptr %i.alq, align 4, !tbaa !218, !noalias !661
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alq, i64 4
  store i32 %i.ais, ptr %i.alu, align 4, !tbaa !219, !noalias !661
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i

bb.cv:                                            ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i
  %i.alw = load ptr, ptr %i.alo, align 8, !tbaa !221, !noalias !661
  %i.alx = ptrtoint ptr %i.alq to i64
  %i.aly = ptrtoint ptr %i.alw to i64             ; 2 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 2 uses
  %i.ama = ashr exact i64 %i.alz, 3
  %i.amb = add nsw i64 %i.ama, 1                  ; 2 uses
  %i.amc = icmp ugt i64 %i.amb, 2305843009213693951
  br i1 %i.amc, label %bb.cw, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i

bb.cw:                                            ; preds = %bb.cv
  call void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.alo) #22, !noalias !661
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
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !661
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i
  %i.ami = shl nuw i64 %.0.i.i.i479.i, 3
  %i.amj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ami) #20, !noalias !661 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.alz ; 5 uses
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %.0.i.i.i479.i
  store i32 %i.aix, ptr %i.amk, align 4, !tbaa !218, !noalias !661
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amk, i64 4
  store i32 %i.ais, ptr %i.amm, align 4, !tbaa !219, !noalias !661
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amk, i64 8 ; 3 uses
  %i.amo = load ptr, ptr %i.alp, align 8, !tbaa !216, !noalias !661 ; 2 uses
  %i.amp = load ptr, ptr %i.alo, align 8, !tbaa !221, !noalias !661 ; 5 uses
  %.not13.i.i.i.i481.i = icmp eq ptr %i.amo, %i.amp
  br i1 %.not13.i.i.i.i481.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, label %.lr.ph.i.i.i.i482.i

.lr.ph.i.i.i.i482.i:                              ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i, %.lr.ph.i.i.i.i482.i
  %i.amq = phi ptr [ %i.amr, %.lr.ph.i.i.i.i482.i ], [ %i.amk, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ]
  %.sroa.18.014.i.i.i.i483.i = phi ptr [ %i.ams, %.lr.ph.i.i.i.i482.i ], [ %i.amo, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ]
  %i.amr = getelementptr inbounds i8, ptr %i.amq, i64 -8 ; 3 uses
  %i.ams = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i483.i, i64 -8 ; 3 uses
  %i.amt = load i64, ptr %i.ams, align 4, !tbaa !209, !noalias !661
  store i64 %i.amt, ptr %i.amr, align 4, !tbaa !209, !noalias !661
  %.not.i.i.i.i484.i = icmp eq ptr %i.ams, %i.amp
  br i1 %.not.i.i.i.i484.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, label %.lr.ph.i.i.i.i482.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i: ; preds = %.lr.ph.i.i.i.i482.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i
  %storemerge.i.i486.i = phi ptr [ %i.amk, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ], [ %i.amr, %.lr.ph.i.i.i.i482.i ]
  store ptr %storemerge.i.i486.i, ptr %i.alo, align 8, !tbaa !220, !noalias !661
  store ptr %i.amn, ptr %i.alp, align 8, !tbaa !220, !noalias !661
  %i.amu = load ptr, ptr %i.alr, align 8, !tbaa !220, !noalias !661
  store ptr %i.aml, ptr %i.alr, align 8, !tbaa !220, !noalias !661
  %.not.i5.i.i487.i = icmp eq ptr %i.amp, null
  br i1 %.not.i5.i.i487.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i
  %i.amv = ptrtoint ptr %i.amu to i64
  %i.amw = ptrtoint ptr %i.amp to i64
  %i.amx = sub i64 %i.amv, %i.amw
  call void @_ZdlPvm(ptr noundef nonnull %i.amp, i64 noundef %i.amx) #21, !noalias !661
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i: ; preds = %bb.cy, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, %bb.cu
  %.0.i488.i = phi ptr [ %i.alv, %bb.cu ], [ %i.amn, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i ], [ %i.amn, %bb.cy ]
  store ptr %.0.i488.i, ptr %i.alp, align 8, !tbaa !216, !noalias !661
  %i.amy = load ptr, ptr %i.wn, align 8, !tbaa !204, !noalias !661 ; 10 uses
  %i.amz = getelementptr inbounds i8, ptr %i.amy, i64 -184 ; 4 uses
  %i.ana = add nuw nsw i64 %i.aih, 1
  store i64 %i.ana, ptr %i.amz, align 8, !tbaa !223, !noalias !661
  %i.anb = add nuw nsw i64 %i.aij, 1
  %i.anc = getelementptr inbounds i8, ptr %i.amy, i64 -176
  store i64 %i.anb, ptr %i.anc, align 8, !tbaa !224, !noalias !661
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
  %.pre = load ptr, ptr %i.wn, align 8, !tbaa !204, !noalias !661
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
  %i.anm = load i64, ptr %i.amz, align 8, !tbaa !223, !noalias !661
  %i.ann = mul i64 %i.anm, %i.ank
  %i.ano = sub i64 %.0294432.1.i, %.2329.i
  %i.anp = add i64 %i.ann, %i.ano                 ; 2 uses
  %i.anq = load ptr, ptr %i.a, align 16, !tbaa !184, !noalias !661
  %i.anr = getelementptr [4 x i8], ptr %i.anq, i64 %i.anl
  %i.ans = getelementptr [4 x i8], ptr %i.anr, i64 %.0294432.1.i
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !107, !noalias !661
  %i.anu = fsub float %i.ant, %i.ain              ; 2 uses
  %i.anv = load ptr, ptr %i.and, align 8, !tbaa !225, !noalias !661
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.anp
  store float %i.anu, ptr %i.anw, align 4, !tbaa !107, !noalias !661
  %i.anx = fdiv float %i.anu, %.sink5.i.i
  %47 = call noundef float @llvm.trunc.f32(float %i.anx)
  %i.any = fptosi float %47 to i32                ; 2 uses
  %i.anz = trunc i32 %i.any to i8
  %i.aoa = load ptr, ptr %i.ane, align 8, !tbaa !229, !noalias !661
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.anp
  store i8 %i.anz, ptr %i.aob, align 1, !tbaa !72, !noalias !661
  %i.aoc = call i32 @llvm.abs.i32(i32 %i.any, i1 true)
  %.sroa.speculated.1.i = call i32 @llvm.smax.i32(i32 %.2431.1.i, i32 %i.aoc) ; 3 uses
  %i.aod = add i64 %.0294432.1.i, 1               ; 2 uses
  %.not353.1.i = icmp ugt i64 %i.aod, %.2326.i
  br i1 %.not353.1.i, label %._crit_edge434.1.i, label %bb.cz, !llvm.loop !594

._crit_edge434.1.i:                               ; preds = %bb.cz
  %i.aoe = add i64 %.0295438.1.i, 1               ; 2 uses
  %.not352.1.i = icmp ugt i64 %i.aoe, %.2320.i
  br i1 %.not352.1.i, label %._crit_edge439.1.i, label %.preheader.1.i, !llvm.loop !595

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
  %i.aoj = load i64, ptr %i.amz, align 8, !tbaa !223, !noalias !661
  %i.aok = mul i64 %i.aoj, %i.aoh
  %i.aol = sub i64 %.0294432.2.i, %.2329.i
  %i.aom = add i64 %i.aok, %i.aol                 ; 2 uses
  %i.aon = load ptr, ptr %i.s, align 16, !tbaa !184, !noalias !661
  %i.aoo = getelementptr [4 x i8], ptr %i.aon, i64 %i.aoi
  %i.aop = getelementptr [4 x i8], ptr %i.aoo, i64 %.0294432.2.i
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !107, !noalias !661
  %i.aor = fsub float %i.aoq, %i.air              ; 2 uses
  %i.aos = load ptr, ptr %i.aof, align 8, !tbaa !225, !noalias !661
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.aom
  store float %i.aor, ptr %i.aot, align 4, !tbaa !107, !noalias !661
  %i.aou = fdiv float %i.aor, %.sink3.i.i
  %48 = call noundef float @llvm.trunc.f32(float %i.aou)
  %i.aov = fptosi float %48 to i32                ; 2 uses
  %i.aow = trunc i32 %i.aov to i8
  %i.aox = load ptr, ptr %i.aog, align 8, !tbaa !229, !noalias !661
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aom
  store i8 %i.aow, ptr %i.aoy, align 1, !tbaa !72, !noalias !661
  %i.aoz = call i32 @llvm.abs.i32(i32 %i.aov, i1 true)
  %.sroa.speculated.2.i = call i32 @llvm.smax.i32(i32 %.2431.2.i, i32 %i.aoz) ; 3 uses
  %i.apa = add i64 %.0294432.2.i, 1               ; 2 uses
  %.not353.2.i = icmp ugt i64 %i.apa, %.2326.i
  br i1 %.not353.2.i, label %._crit_edge434.2.i, label %bb.da, !llvm.loop !594

._crit_edge434.2.i:                               ; preds = %bb.da
  %i.apb = add i64 %.0295438.2.i, 1               ; 2 uses
  %.not352.2.i = icmp ugt i64 %i.apb, %.2320.i
  br i1 %.not352.2.i, label %.split445.us.i, label %.preheader.2.i, !llvm.loop !595

._crit_edge434.i:                                 ; preds = %bb.db
  %i.apc = add i64 %.0295438.i, 1                 ; 2 uses
  %.not352.i = icmp ugt i64 %i.apc, %.2320.i
  br i1 %.not352.i, label %.preheader.1.i, label %.preheader.i, !llvm.loop !595

bb.db:                                            ; preds = %bb.db, %.preheader.i
  %.0294432.i = phi i64 [ %.2329.i, %.preheader.i ], [ %i.apu, %bb.db ] ; 3 uses
  %.2431.i = phi i32 [ %.1437.i, %.preheader.i ], [ %.sroa.speculated.i, %bb.db ]
  %i.apd = load i64, ptr %i.amz, align 8, !tbaa !223, !noalias !661
  %i.ape = mul i64 %i.apd, %i.ani
  %i.apf = sub i64 %.0294432.i, %.2329.i
  %i.apg = add i64 %i.ape, %i.apf                 ; 2 uses
  %i.aph = load ptr, ptr %i.p, align 8, !tbaa !184, !noalias !661
  %i.api = getelementptr [4 x i8], ptr %i.aph, i64 %i.anj
  %i.apj = getelementptr [4 x i8], ptr %i.api, i64 %.0294432.i
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !107, !noalias !661
  %i.apl = fsub float %i.apk, %i.aip              ; 2 uses
  %i.apm = load ptr, ptr %i.anf, align 8, !tbaa !225, !noalias !661
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %i.apg
  store float %i.apl, ptr %i.apn, align 4, !tbaa !107, !noalias !661
  %i.apo = fdiv float %i.apl, %.sink4.i.i
  %49 = call noundef float @llvm.trunc.f32(float %i.apo)
  %i.app = fptosi float %49 to i32                ; 2 uses
  %i.apq = trunc i32 %i.app to i8
  %i.apr = load ptr, ptr %i.ang, align 8, !tbaa !229, !noalias !661
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.apg
  store i8 %i.apq, ptr %i.aps, align 1, !tbaa !72, !noalias !661
  %i.apt = call i32 @llvm.abs.i32(i32 %i.app, i1 true)
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %.2431.i, i32 %i.apt) ; 3 uses
  %i.apu = add i64 %.0294432.i, 1                 ; 2 uses
  %.not353.i = icmp ugt i64 %i.apu, %.2326.i
  br i1 %.not353.i, label %._crit_edge434.i, label %bb.db, !llvm.loop !594

.split445.us.thread.i:                            ; preds = %.split445.us.i..split445.us.thread.i_crit_edge, %.preheader.lr.ph.preheader.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i
  %i.apv = phi ptr [ %.pre, %.split445.us.i..split445.us.thread.i_crit_edge ], [ %i.amy, %.preheader.lr.ph.preheader.i ], [ %i.amy, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i ] ; 4 uses
  %i.apw = getelementptr inbounds i8, ptr %i.apv, i64 -24
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !221, !noalias !661 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.apx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i, label %bb.dc

bb.dc:                                            ; preds = %.split445.us.thread.i
  %i.apy = getelementptr inbounds i8, ptr %i.apv, i64 -16
  store ptr %i.apx, ptr %i.apy, align 8, !tbaa !216, !noalias !661
  %i.apz = getelementptr inbounds i8, ptr %i.apv, i64 -8
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !220, !noalias !661
  %i.aqb = ptrtoint ptr %i.aqa to i64
  %i.aqc = ptrtoint ptr %i.apx to i64
  %i.aqd = sub i64 %i.aqb, %i.aqc
  call void @_ZdlPvm(ptr noundef nonnull %i.apx, i64 noundef %i.aqd) #21, !noalias !661
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i: ; preds = %bb.dc, %.split445.us.thread.i
  %i.aqe = getelementptr inbounds i8, ptr %i.apv, i64 -184 ; 2 uses
  call void @_ZN3jxl14QuantizedPatchD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(184) %i.aqe) #23, !noalias !661
  store ptr %i.aqe, ptr %i.wn, align 8, !tbaa !204, !noalias !661
  br label %.loopexit246.i

bb.dd:                                            ; preds = %.split445.us.i
  br i1 %.not239.not.i, label %.loopexit246.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aqf = add i64 %.sroa.0114.1451.i, %.sroa.5115.1452.i
  %i.aqg = shl i64 %.sroa.0114.1451.i, 23
  %i.aqh = xor i64 %i.aqg, %.sroa.0114.1451.i     ; 2 uses
  %i.aqi = lshr i64 %i.aqh, 18
  %i.aqj = lshr i64 %.sroa.5115.1452.i, 5
  %i.aqk = xor i64 %i.aqj, %i.aqi
  %i.aql = xor i64 %i.aqk, %.sroa.5115.1452.i
  %i.aqm = xor i64 %i.aql, %i.aqh                 ; 2 uses
  %i.aqn = lshr i64 %i.aqf, 41
  %i.aqo = trunc nuw nsw i64 %i.aqn to i32
  %i.aqp = or disjoint i32 %i.aqo, 1065353216
  %i.aqq = bitcast i32 %i.aqp to float
  %i.aqr = fadd float %i.aqq, -1.000000e+00
  %i.aqs = call noundef float @llvm.fmuladd.f32(float %i.aqr, float 5.000000e-01, float 5.000000e-01)
  %i.aqt = load ptr, ptr %i.wj, align 8, !tbaa !216, !noalias !661 ; 2 uses
  %.not242447.i = icmp eq ptr %i.aht, %i.aqt
  br i1 %.not242447.i, label %.loopexit246.i, label %.lr.ph450.i

.lr.ph450.i:                                      ; preds = %bb.de
  %i.aqu = load ptr, ptr %i.wp, align 8, !tbaa !102, !noalias !661
  %i.aqv = load i64, ptr %i.wq, align 8, !tbaa !101, !noalias !661
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph450.i
  %.sroa.013.0448.i = phi ptr [ %i.aht, %.lr.ph450.i ], [ %i.arb, %bb.df ] ; 3 uses
  %.sroa.049.0.copyload.i = load i32, ptr %.sroa.013.0448.i, align 4, !tbaa !209, !noalias !661
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0448.i, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !209, !noalias !661
  %i.aqw = zext i32 %.sroa.4.0.copyload.i to i64
  %i.aqx = mul i64 %i.aqv, %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqy, i64 64) ]
  %i.aqz = zext i32 %.sroa.049.0.copyload.i to i64
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %i.aqz
  store float %i.aqs, ptr %i.ara, align 4, !tbaa !107, !noalias !661
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.013.0448.i, i64 8 ; 2 uses
  %.not242.i = icmp eq ptr %i.arb, %i.aqt
  br i1 %.not242.i, label %.loopexit246.i, label %bb.df

.loopexit246.i:                                   ; preds = %bb.df, %bb.de, %bb.dd, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i, %._crit_edge427.i, %.lr.ph426.i, %bb.cq, %bb.cp, %bb.co, %._crit_edge408.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i, %bb.bc
  %i.arc = phi ptr [ %i.xg, %bb.bc ], [ %i.aht, %bb.co ], [ %i.aht, %bb.cp ], [ %i.aht, %._crit_edge427.i ], [ %i.aht, %._crit_edge408.i ], [ %i.xg, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.aht, %.lr.ph426.i ], [ %i.aht, %bb.cq ], [ %i.aht, %bb.de ], [ %i.aht, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.aht, %bb.dd ], [ %i.aht, %bb.df ] ; 3 uses
  %i.ard = phi ptr [ %i.xh, %bb.bc ], [ %i.ahv, %bb.co ], [ %i.ahv, %bb.cp ], [ %i.ahv, %._crit_edge427.i ], [ %i.ahv, %._crit_edge408.i ], [ %i.yf, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahv, %.lr.ph426.i ], [ %i.ahv, %bb.cq ], [ %i.ahv, %bb.de ], [ %i.ahv, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahv, %bb.dd ], [ %i.ahv, %bb.df ] ; 3 uses
  %i.are = phi ptr [ %i.xi, %bb.bc ], [ %i.ahw, %bb.co ], [ %i.ahw, %bb.cp ], [ %i.ahw, %._crit_edge427.i ], [ %i.ahw, %._crit_edge408.i ], [ %i.yg, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahw, %.lr.ph426.i ], [ %i.ahw, %bb.cq ], [ %i.ahw, %bb.de ], [ %i.ahw, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahw, %bb.dd ], [ %i.ahw, %bb.df ] ; 2 uses
  %i.arf = phi ptr [ %i.xj, %bb.bc ], [ %i.ahx, %bb.co ], [ %i.ahx, %bb.cp ], [ %i.ahx, %._crit_edge427.i ], [ %i.ahx, %._crit_edge408.i ], [ %i.yh, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahx, %.lr.ph426.i ], [ %i.ahx, %bb.cq ], [ %i.ahx, %bb.de ], [ %i.ahx, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahx, %bb.dd ], [ %i.ahx, %bb.df ] ; 2 uses
  %i.arg = phi ptr [ %i.xk, %bb.bc ], [ %i.ahy, %bb.co ], [ %i.ahy, %bb.cp ], [ %i.ahy, %._crit_edge427.i ], [ %i.ahy, %._crit_edge408.i ], [ %i.yi, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahy, %.lr.ph426.i ], [ %i.ahy, %bb.cq ], [ %i.ahy, %bb.de ], [ %i.ahy, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahy, %bb.dd ], [ %i.ahy, %bb.df ] ; 2 uses
  %i.arh = phi ptr [ %i.xl, %bb.bc ], [ %i.ahv, %bb.co ], [ %i.ahv, %bb.cp ], [ %i.ahv, %._crit_edge427.i ], [ %i.ahv, %._crit_edge408.i ], [ %i.yj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahv, %.lr.ph426.i ], [ %i.ahv, %bb.cq ], [ %i.ahv, %bb.de ], [ %i.ahv, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahv, %bb.dd ], [ %i.ahv, %bb.df ] ; 2 uses
  %i.ari = phi ptr [ %i.xm, %bb.bc ], [ %i.ahz, %bb.co ], [ %i.ahz, %bb.cp ], [ %i.ahz, %._crit_edge427.i ], [ %i.ahz, %._crit_edge408.i ], [ %i.yk, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahz, %.lr.ph426.i ], [ %i.ahz, %bb.cq ], [ %i.ahz, %bb.de ], [ %i.ahz, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahz, %bb.dd ], [ %i.ahz, %bb.df ] ; 2 uses
  %i.arj = phi ptr [ %i.xn, %bb.bc ], [ %i.ahv, %bb.co ], [ %i.ahv, %bb.cp ], [ %i.ahv, %._crit_edge427.i ], [ %i.ahv, %._crit_edge408.i ], [ %i.yj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.ahv, %.lr.ph426.i ], [ %i.ahv, %bb.cq ], [ %i.ahv, %bb.de ], [ %i.ahv, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.ahv, %bb.dd ], [ %i.ahv, %bb.df ] ; 2 uses
  %i.ark = phi ptr [ %i.xo, %bb.bc ], [ %i.aia, %bb.co ], [ %i.aia, %bb.cp ], [ %i.aia, %._crit_edge427.i ], [ %i.aia, %._crit_edge408.i ], [ %i.xo, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %i.aia, %.lr.ph426.i ], [ %i.aia, %bb.cq ], [ %i.aht, %bb.de ], [ %i.aia, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %i.aia, %bb.dd ], [ %i.aht, %bb.df ] ; 2 uses
  %.sroa.0114.5.i = phi i64 [ %.sroa.0114.1451.i, %bb.bc ], [ %.sroa.0114.1451.i, %bb.co ], [ %.sroa.0114.1451.i, %bb.cp ], [ %.sroa.0114.1451.i, %._crit_edge427.i ], [ %.sroa.0114.1451.i, %._crit_edge408.i ], [ %.sroa.0114.1451.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %.sroa.0114.1451.i, %.lr.ph426.i ], [ %.sroa.0114.1451.i, %bb.cq ], [ %.sroa.5115.1452.i, %bb.de ], [ %.sroa.0114.1451.i, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %.sroa.0114.1451.i, %bb.dd ], [ %.sroa.5115.1452.i, %bb.df ] ; 2 uses
  %.sroa.5115.5.i = phi i64 [ %.sroa.5115.1452.i, %bb.bc ], [ %.sroa.5115.1452.i, %bb.co ], [ %.sroa.5115.1452.i, %bb.cp ], [ %.sroa.5115.1452.i, %._crit_edge427.i ], [ %.sroa.5115.1452.i, %._crit_edge408.i ], [ %.sroa.5115.1452.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i ], [ %.sroa.5115.1452.i, %.lr.ph426.i ], [ %.sroa.5115.1452.i, %bb.cq ], [ %i.aqm, %bb.de ], [ %.sroa.5115.1452.i, %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE8pop_backEv.exit.i ], [ %.sroa.5115.1452.i, %bb.dd ], [ %i.aqm, %bb.df ] ; 2 uses
  %i.arl = add nuw nsw i64 %.0330453.i, 1         ; 2 uses
  %exitcond542.not.i = icmp eq i64 %i.arl, %i.x
  br i1 %exitcond542.not.i, label %._crit_edge456.i, label %bb.bc, !llvm.loop !596

bb.dg:                                            ; preds = %._crit_edge462.split.i
  %.val.i = load ptr, ptr %i.co, align 8, !tbaa !678, !noalias !661
  %.not240.i = icmp eq ptr %.val.i, null
  br i1 %.not240.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.arm = call i32 @_ZN3jxl19DumpPlaneNormalizedERKNS_14CompressParamsEPKcRKNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(648) %i.c, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(56) %26) #23, !noalias !661 ; 2 uses
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %.critedge383.i, label %bb.dn

.critedge383.i:                                   ; preds = %bb.dh, %._crit_edge462.split.i
  %i.aro = load ptr, ptr %13, align 8, !tbaa !203, !noalias !661 ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !204, !noalias !661 ; 3 uses
  %i.arr = icmp eq ptr %i.aro, %i.arq
  br i1 %i.arr, label %.sink.split, label %bb.di

bb.di:                                            ; preds = %.critedge383.i
  call void @_ZNSt3__14sortB8nn180100INS_11__wrap_iterIPNS_4pairIN3jxl14QuantizedPatchENS_6vectorINS2_IjjEENS_9allocatorIS6_EEEEEEEEEEvT_SD_(ptr %i.aro, ptr %i.arq) #24, !noalias !661
  %i.ars = load ptr, ptr %i.arp, align 8, !tbaa !204, !noalias !661
  %i.art = load ptr, ptr %13, align 8, !tbaa !203, !noalias !661 ; 3 uses
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = ptrtoint ptr %i.art to i64
  %i.arw = sub i64 %i.aru, %i.arv
  %i.arx = sdiv exact i64 %i.arw, 184
  %i.ary = icmp ugt i64 %i.arx, 1
  br i1 %i.ary, label %.lr.ph466.i, label %._crit_edge467.i

._crit_edge467.i:                                 ; preds = %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i, %bb.di
  %.0286.lcssa.i = phi i64 [ 0, %bb.di ], [ %.2288.i, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.art, %bb.di ], [ %i.aup, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ]
  %i.arz = getelementptr inbounds nuw [184 x i8], ptr %.lcssa.i, i64 %.0286.lcssa.i ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 160
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arz, i64 168
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !216, !noalias !661
  %i.asd = load ptr, ptr %i.asa, align 8, !tbaa !221, !noalias !661
  %i.ase = ptrtoint ptr %i.asc to i64
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = sub i64 %i.ase, %i.asf
  %i.ash = icmp ugt i64 %i.asg, 8
  %i.asi = zext i1 %i.ash to i64
  %spec.select384.i = add i64 %.0286.lcssa.i, %i.asi
  call void @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %spec.select384.i) #24, !noalias !661
  %i.asj = load ptr, ptr %13, align 8, !tbaa !203, !noalias !661 ; 3 uses
  %i.ask = load ptr, ptr %i.arp, align 8, !tbaa !204, !noalias !661 ; 3 uses
  %.not241470.i = icmp eq ptr %i.asj, %i.ask
  br i1 %.not241470.i, label %._crit_edge475.thread.i, label %.lr.ph474.i

.lr.ph466.i:                                      ; preds = %bb.di, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i
  %i.asl = phi ptr [ %i.aup, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ], [ %i.art, %bb.di ] ; 3 uses
  %.0285464.i = phi i64 [ %i.aun, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ], [ 1, %bb.di ] ; 4 uses
  %.0286463.i = phi i64 [ %.2288.i, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100ERKS8_.exit.i ], [ 0, %bb.di ] ; 3 uses
  %i.asm = getelementptr inbounds nuw [184 x i8], ptr %i.asl, i64 %.0285464.i ; 10 uses
  %i.asn = getelementptr inbounds nuw [184 x i8], ptr %i.asl, i64 %.0286463.i ; 9 uses
  %i.aso = load i64, ptr %i.asm, align 8, !tbaa !223, !noalias !661 ; 2 uses
  %i.asp = load i64, ptr %i.asn, align 8, !tbaa !223, !noalias !661
  %.not.i491.i = icmp eq i64 %i.aso, %i.asp
  br i1 %.not.i491.i, label %bb.dj, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

bb.dj:                                            ; preds = %.lr.ph466.i
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %i.asr = load i64, ptr %i.asq, align 8, !tbaa !224, !noalias !661 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !224, !noalias !661
  %.not11.i.i = icmp eq i64 %i.asr, %i.ast
  br i1 %.not11.i.i, label %.preheader.i492.i, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

.preheader.i492.i:                                ; preds = %bb.dj
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asm, i64 16
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asn, i64 16
  %i.asw = mul i64 %i.asr, %i.aso                 ; 3 uses
  %i.asx = load ptr, ptr %i.asu, align 8, !tbaa !229, !noalias !661
  %i.asy = load ptr, ptr %i.asv, align 8, !tbaa !229, !noalias !661
  %bcmp.i.i = call i32 @bcmp(ptr %i.asx, ptr %i.asy, i64 %i.asw), !noalias !661
  %.not12.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not12.i.i, label %bb.dk, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

bb.dk:                                            ; preds = %.preheader.i492.i
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asm, i64 40
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !229, !noalias !661
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asn, i64 40
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !229, !noalias !661
  %bcmp.1.i.i = call i32 @bcmp(ptr %i.ata, ptr %i.atc, i64 %i.asw), !noalias !661
  %.not12.1.i.i = icmp eq i32 %bcmp.1.i.i, 0
  br i1 %.not12.1.i.i, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i:          ; preds = %bb.dk
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asm, i64 64
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !229, !noalias !661
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asn, i64 64
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !229, !noalias !661
  %bcmp.2.i.i = call i32 @bcmp(ptr %i.ate, ptr %i.atg, i64 %i.asw), !noalias !661
  %.not12.2.i.i = icmp eq i32 %bcmp.2.i.i, 0
  br i1 %.not12.2.i.i, label %bb.dl, label %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.thread.i

bb.dl:                                            ; preds = %_ZNK3jxl14QuantizedPatcheqERKS0_.exit.i
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asn, i64 160
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asn, i64 168
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !216, !noalias !661
  %i.atk = getelementptr inbounds nuw i8, ptr %i.asm, i64 160
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !221, !noalias !661 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.asm, i64 168
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !216, !noalias !661 ; 2 uses
  %i.ato = ptrtoint ptr %i.atn to i64
  %i.atp = ptrtoint ptr %i.atl to i64
  %i.atq = sub i64 %i.ato, %i.atp
  %i.atr = ashr exact i64 %i.atq, 3
end_hunk_0
begin_hunk_1_@_ZNSt3__19allocatorIN3jxl7ANSCodeEE7destroyB8nn180100EPS2_:bb.a
  %.pre1.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !1023
  br label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.d
  %i.ac = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !1024
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1032
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ah) #21
  br label %_ZN3jxl7ANSCodeD2Ev.exit

_ZN3jxl7ANSCodeD2Ev.exit:                         ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(168) %1) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__15arrayIN3jxl14ReferenceFrameELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !105
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN3jxl14ReferenceFrameD2Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 504) #21
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit

_ZN3jxl14ReferenceFrameD2Ev.exit:                 ; preds = %bb.a, %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !105
  %.not.i.i.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.1, label %_ZN3jxl14ReferenceFrameD2Ev.exit.1, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.1

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.1: ; preds = %_ZN3jxl14ReferenceFrameD2Ev.exit
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.d) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 504) #21
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit.1

_ZN3jxl14ReferenceFrameD2Ev.exit.1:               ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.1, %_ZN3jxl14ReferenceFrameD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !105
  %.not.i.i.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.2, label %_ZN3jxl14ReferenceFrameD2Ev.exit.2, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.2

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.2: ; preds = %_ZN3jxl14ReferenceFrameD2Ev.exit.1
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.f) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 504) #21
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit.2

_ZN3jxl14ReferenceFrameD2Ev.exit.2:               ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.2, %_ZN3jxl14ReferenceFrameD2Ev.exit.1
  %i.g = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !105
  %.not.i.i.i.3 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.3, label %_ZN3jxl14ReferenceFrameD2Ev.exit.3, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.3

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.3: ; preds = %_ZN3jxl14ReferenceFrameD2Ev.exit.2
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.g) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 504) #21
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit.3

_ZN3jxl14ReferenceFrameD2Ev.exit.3:               ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.3, %_ZN3jxl14ReferenceFrameD2Ev.exit.2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl15PatchDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.b, ptr %i.c, align 8, !tbaa !235
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #21
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !233  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.j, ptr %i.k, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !234
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #21
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2

_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2: ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78   ; 4 uses
  %.not.i.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i.i3, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.r, ptr %i.s, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.x) #21
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1033 ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1034
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1035
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.af) #21
  br label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 4 uses
  %.not.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i5, label %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !257
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !258
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.an) #21
  br label %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 4 uses
  %.not.i.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i6, label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !255
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !254
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.av) #21
  br label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23 ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i7, label %_ZNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !256
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bd) #21
  br label %_ZNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #21 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #22 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #23 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #24 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #25 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #26 = { nounwind willreturn memory(read) "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = distinct !{!5, !30}
!6 = distinct !{!6, !30}
!7 = distinct !{!7, !30}
!8 = distinct !{!8, !30}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTSN3jxl13PatchPositionE", !18, i64 0}
!20 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchPositionELi0ELb0EEE", !19, i64 0}
!21 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !20, i64 0}
!22 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !19, i64 0, !19, i64 8, !21, i64 16}
!23 = !{!22, !19, i64 0}
!24 = !{!22, !19, i64 8}
!25 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !18, i64 0}
!26 = !{!"long", !14, i64 0}
!27 = !{!"_ZTSN3jxl13AlignedMemoryE", !18, i64 0, !25, i64 8, !18, i64 16}
!28 = !{!"_ZTSN3jxl11PaddedBytesE", !25, i64 0, !26, i64 8, !26, i64 16, !27, i64 24}
!29 = !{!28, !25, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 _ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !18, i64 0}
!32 = !{!"p1 _ZTSN3jxl22PatchReferencePositionE", !18, i64 0}
!33 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl22PatchReferencePositionELi0ELb0EEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !33, i64 0}
!35 = !{!"_ZTSNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !32, i64 0, !32, i64 8, !34, i64 16}
!36 = !{!"p1 _ZTSN3jxl13PatchBlendingE", !18, i64 0}
!37 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchBlendingELi0ELb0EEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !37, i64 0}
!39 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !36, i64 0, !36, i64 8, !38, i64 16}
!40 = !{!"p1 _ZTSN3jxl15PatchDictionary13PatchTreeNodeE", !18, i64 0}
!41 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15PatchDictionary13PatchTreeNodeELi0ELb0EEE", !40, i64 0}
!42 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !41, i64 0}
!43 = !{!"_ZTSNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !40, i64 0, !40, i64 8, !42, i64 16}
!44 = !{!"p1 long", !18, i64 0}
!45 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !44, i64 0}
!46 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !44, i64 0, !44, i64 8, !46, i64 16}
!48 = !{!"p1 _ZTSNSt3__14pairImmEE", !18, i64 0}
!49 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !48, i64 0}
!50 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !49, i64 0}
!51 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !48, i64 0, !48, i64 8, !50, i64 16}
!52 = !{!"_ZTSN3jxl15PatchDictionaryE", !25, i64 0, !31, i64 8, !22, i64 16, !35, i64 40, !39, i64 64, !26, i64 88, !43, i64 96, !47, i64 120, !51, i64 144, !51, i64 168}
!53 = !{!52, !26, i64 88}
!54 = !{!"_ZTSN3jxl13PatchPositionE", !26, i64 0, !26, i64 8, !26, i64 16}
!55 = !{!54, !26, i64 16}
!56 = !{!35, !32, i64 0}
!57 = !{!"_ZTSN3jxl22PatchReferencePositionE", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!58 = !{!57, !26, i64 0}
!59 = !{!57, !26, i64 8}
!60 = !{!57, !26, i64 16}
!61 = !{!57, !26, i64 24}
!62 = !{!57, !26, i64 32}
!63 = !{!54, !26, i64 0}
!64 = !{!54, !26, i64 8}
!65 = !{!39, !36, i64 0}
!66 = !{!"_ZTSN3jxl14PatchBlendModeE", !14, i64 0}
!67 = !{!"bool", !14, i64 0}
!68 = !{!"_ZTSN3jxl13PatchBlendingE", !66, i64 0, !15, i64 4, !67, i64 8}
!69 = !{!68, !66, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!14, !14, i64 0}
!73 = !{!"_ZTSN3jxl15HistogramParams14ClusteringTypeE", !14, i64 0}
!74 = !{!"_ZTSN3jxl15HistogramParams16HybridUintMethodE", !14, i64 0}
!75 = !{!"_ZTSN3jxl15HistogramParams10LZ77MethodE", !14, i64 0}
!76 = !{!"_ZTSN3jxl15HistogramParams20ANSHistogramStrategyE", !14, i64 0}
!77 = !{!"_ZTSN3jxl15HistogramParamsE", !73, i64 0, !74, i64 4, !75, i64 8, !76, i64 12, !47, i64 16, !26, i64 40, !67, i64 48, !67, i64 49, !67, i64 50, !67, i64 51, !67, i64 52}
!78 = !{!47, !44, i64 0}
!79 = !{!47, !44, i64 8}
!80 = !{!44, !44, i64 0}
!81 = !{!"_ZTSN3jxl10StatusCodeE", !14, i64 0}
!82 = !{!"p1 omnipotent char", !18, i64 0}
!83 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !82, i64 0}
!84 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !82, i64 0, !82, i64 8, !84, i64 16}
!86 = !{!85, !82, i64 0}
!87 = !{!85, !82, i64 8}
!88 = !{!82, !82, i64 0}
!89 = !{!"p1 _ZTSN3jxl9BitWriterE", !18, i64 0}
!90 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl9BitWriterELi0ELb0EEE", !89, i64 0}
!91 = !{!89, !89, i64 0}
!92 = !{!"p1 _ZTSN3jxl16HybridUintConfigE", !18, i64 0}
!93 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl16HybridUintConfigELi0ELb0EEE", !92, i64 0}
!94 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl16HybridUintConfigENS_9allocatorIS2_EEEE", !93, i64 0}
!95 = !{!"_ZTSNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEEE", !92, i64 0, !92, i64 8, !94, i64 16}
!96 = !{!95, !92, i64 0}
!97 = !{!95, !92, i64 8}
!98 = !{!92, !92, i64 0}
!99 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !26, i64 16, !27, i64 24, !26, i64 48}
!100 = !{!99, !15, i64 4}
!101 = !{!99, !26, i64 16}
!102 = !{!27, !18, i64 16}
!103 = !{!26, !26, i64 0}
!104 = !{!"p1 _ZTSN3jxl11ImageBundleE", !18, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"float", !14, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = !{!"p1 _ZTSN3jxl13CodecMetadataE", !18, i64 0}
!111 = !{!"_ZTSN3jxl15FrameDimensionsE", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !26, i64 128, !26, i64 136}
!112 = !{!"_ZTSN3jxl5PlaneIhEE", !99, i64 0}
!113 = !{!"_ZTSN3jxl15AcStrategyImageE", !112, i64 0, !82, i64 56, !26, i64 64}
!114 = !{!"p1 float", !18, i64 0}
!115 = !{!"p1 _ZTSN3jxl13QuantEncodingE", !18, i64 0}
!116 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13QuantEncodingELi0ELb0EEE", !115, i64 0}
!117 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !116, i64 0}
!118 = !{!"_ZTSNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !115, i64 0, !115, i64 8, !117, i64 16}
!119 = !{!"_ZTSN3jxl15DequantMatricesE", !15, i64 0, !27, i64 8, !114, i64 32, !114, i64 40, !14, i64 48, !14, i64 60, !14, i64 72, !118, i64 720}
!120 = !{!"p1 _ZTSN3jxl15DequantMatricesE", !18, i64 0}
!121 = !{!"_ZTSN3jxl9QuantizerE", !14, i64 0, !14, i64 16, !15, i64 32, !15, i64 36, !106, i64 40, !106, i64 44, !106, i64 48, !14, i64 52, !120, i64 64}
!122 = !{!"_ZTSN3jxl5PlaneIiEE", !99, i64 0}
!123 = !{!"_ZTSN3jxl5PlaneIaEE", !99, i64 0}
!124 = !{!"_ZTSN3jxl16ColorCorrelationE", !14, i64 0, !15, i64 16, !106, i64 20, !106, i64 24, !106, i64 28, !15, i64 32, !15, i64 36}
!125 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !123, i64 0, !123, i64 56, !124, i64 112}
!126 = !{!"_ZTSNSt3__15arrayIfLm8EEE", !14, i64 0}
!127 = !{!"_ZTSN3jxl11NoiseParamsE", !126, i64 0}
!128 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !18, i64 0}
!129 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !128, i64 0}
!130 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !129, i64 0}
!131 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !128, i64 0, !128, i64 8, !130, i64 16}
!132 = !{!"p1 _ZTSN3jxl6Spline5PointE", !18, i64 0}
!133 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !132, i64 0}
!134 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !133, i64 0}
!135 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !132, i64 0, !132, i64 8, !134, i64 16}
!136 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !18, i64 0}
!137 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !136, i64 0}
!138 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !137, i64 0}
!139 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !136, i64 0, !136, i64 8, !138, i64 16}
!140 = !{!"_ZTSN3jxl7SplinesE", !15, i64 0, !131, i64 8, !135, i64 32, !139, i64 56, !47, i64 80, !47, i64 104}
!141 = !{!"_ZTSN3jxl13ImageFeaturesE", !127, i64 0, !52, i64 32, !140, i64 224}
!142 = !{!"p1 int", !18, i64 0}
!143 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !142, i64 0}
!144 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !143, i64 0}
!145 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !142, i64 0, !142, i64 8, !144, i64 16}
!146 = !{!"_ZTSN3jxl6Image3IfEE", !14, i64 0}
end_hunk_1
