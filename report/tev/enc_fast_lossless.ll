Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb:bb.a

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i: ; preds = %.split66.i, %.critedge.thread.i, %.critedge.i75
  %.259141.i = phi ptr [ %.259.i, %.critedge.i75 ], [ %scevgep.i, %.critedge.thread.i ], [ %.259.i, %.split66.i ] ; 4 uses
  %.1.i = phi ptr [ %.mux.i, %.critedge.i75 ], [ %spec.select.i, %.critedge.thread.i ], [ %i.abs, %.split66.i ] ; 3 uses
  %i.acv = icmp ult ptr %.259141.i, %.1.i
  br i1 %i.acv, label %.lr.ph100.i, label %._crit_edge.i

.lr.ph100.i:                                      ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i
  %i.acw = trunc i32 %.fr125.i to i8
  %i.acx = lshr i32 %.fr125.i, 8
  %i.acy = trunc i32 %i.acx to i8
  %i.acz = lshr i32 %.fr125.i, 16
  %i.ada = trunc i32 %i.acz to i8
  %i.adb = uitofp i8 %i.acw to float
  %i.adc = uitofp i8 %i.acy to float
  %i.add = fmul nnan float %i.adc, 5.870000e-01
  %i.ade = tail call float @llvm.fmuladd.f32(float %i.adb, float 2.990000e-01, float %i.add)
  %i.adf = uitofp i8 %i.ada to float
  %i.adg = tail call float @llvm.fmuladd.f32(float %i.adf, float 1.140000e-01, float %i.ade)
  %i.adh = fadd float %i.adg, f0x3C23D70A         ; 3 uses
  %i.adi = lshr i32 %.fr125.i, 24
  %i.adj = trunc nuw i32 %i.adi to i8
  %i.adk = uitofp i8 %i.adj to float
  %i.adl = fmul float %i.adh, %i.adk              ; 2 uses
  %.pre111.i = load i32, ptr %.259141.i, align 4, !tbaa !94
  %.pre112.i = load i32, ptr %.1.i, align 4, !tbaa !94
  br label %.split84.i

.split84.i:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i, %.lr.ph100.i
  %i.adm = phi i32 [ %i.afj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.pre112.i, %.lr.ph100.i ]
  %i.adn = phi i32 [ %i.afh, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.pre111.i, %.lr.ph100.i ]
  %.299.i = phi ptr [ %i.afi, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.1.i, %.lr.ph100.i ] ; 2 uses
  %.36098.i = phi ptr [ %.lcssa.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.259141.i, %.lr.ph100.i ] ; 2 uses
  store i32 %i.adm, ptr %.36098.i, align 4, !tbaa !94
  store i32 %i.adn, ptr %.299.i, align 4, !tbaa !94
  %.val15.i77 = load ptr, ptr %2, align 8         ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.36098.i, i64 4 ; 4 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !94 ; 3 uses
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %.split84.i
  %i.adr = load i64, ptr %.val15.i77, align 8, !tbaa !68
  %i.ads = icmp eq i64 %i.adr, 4
  br i1 %i.ads, label %.split67.us.i, label %.split67.i

.split67.us.i:                                    ; preds = %.lr.ph87.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i
  %i.adt = phi i32 [ %i.aen, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.adp, %.lr.ph87.i ] ; 5 uses
  %i.adu = phi ptr [ %i.aem, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.ado, %.lr.ph87.i ] ; 2 uses
  %i.adv = trunc i32 %i.adt to i8
  %i.adw = lshr i32 %i.adt, 8
  %i.adx = trunc i32 %i.adw to i8
  %i.ady = lshr i32 %i.adt, 16
  %i.adz = trunc i32 %i.ady to i8
  %i.aea = lshr i32 %i.adt, 24
  %i.aeb = trunc nuw i32 %i.aea to i8
  %i.aec = uitofp i8 %i.adv to float
  %i.aed = uitofp i8 %i.adx to float
  %i.aee = fmul nnan float %i.aed, 5.870000e-01
  %i.aef = tail call float @llvm.fmuladd.f32(float %i.aec, float 2.990000e-01, float %i.aee)
  %i.aeg = uitofp i8 %i.adz to float
  %i.aeh = tail call float @llvm.fmuladd.f32(float %i.aeg, float 1.140000e-01, float %i.aef)
  %i.aei = fadd float %i.aeh, f0x3C23D70A
  %i.aej = uitofp i8 %i.aeb to float
  %i.aek = fmul float %i.aei, %i.aej
  %i.ael = fcmp olt float %i.adl, %i.aek
  br i1 %i.ael, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i: ; preds = %.split67.us.i
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adu, i64 4 ; 3 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !94 ; 2 uses
  %i.aeo = icmp eq i32 %i.aen, 0
  br i1 %i.aeo, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.split67.us.i, !llvm.loop !1009

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i: ; preds = %.split67.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aet, i64 4 ; 3 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !94 ; 2 uses
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.split67.i, !llvm.loop !1009

.split67.i:                                       ; preds = %.lr.ph87.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i
  %i.aes = phi i32 [ %i.aeq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.adp, %.lr.ph87.i ] ; 4 uses
  %i.aet = phi ptr [ %i.aep, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.ado, %.lr.ph87.i ] ; 2 uses
  %i.aeu = trunc i32 %i.aes to i8
  %i.aev = lshr i32 %i.aes, 8
  %i.aew = trunc i32 %i.aev to i8
  %i.aex = lshr i32 %i.aes, 16
  %i.aey = trunc i32 %i.aex to i8
  %i.aez = uitofp i8 %i.aeu to float
  %i.afa = uitofp i8 %i.aew to float
  %i.afb = fmul nnan float %i.afa, 5.870000e-01
  %i.afc = tail call float @llvm.fmuladd.f32(float %i.aez, float 2.990000e-01, float %i.afb)
  %i.afd = uitofp i8 %i.aey to float
  %i.afe = tail call float @llvm.fmuladd.f32(float %i.afd, float 1.140000e-01, float %i.afc)
  %i.aff = fadd float %i.afe, f0x3C23D70A
  %i.afg = fcmp olt float %i.adh, %i.aff
  br i1 %i.afg, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i: ; preds = %.split67.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i, %.split67.us.i, %.split84.i
  %i.afh = phi i32 [ 0, %.split84.i ], [ %i.adt, %.split67.us.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.aes, %.split67.i ]
  %.lcssa.i = phi ptr [ %i.ado, %.split84.i ], [ %i.adu, %.split67.us.i ], [ %i.aem, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.aep, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.aet, %.split67.i ] ; 3 uses
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i
  %.3.i = phi ptr [ %.299.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i ], [ %i.afi, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge ]
  %i.afi = getelementptr inbounds i8, ptr %.3.i, i64 -4 ; 4 uses
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !94 ; 6 uses
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, label %bb.cn

bb.cn:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i
  %i.afl = trunc i32 %i.afj to i8                 ; 2 uses
  %i.afm = lshr i32 %i.afj, 8
  %i.afn = trunc i32 %i.afm to i8                 ; 2 uses
  %i.afo = lshr i32 %i.afj, 16
  %i.afp = trunc i32 %i.afo to i8                 ; 2 uses
  %i.afq = load i64, ptr %.val15.i77, align 8, !tbaa !68
  %i.afr = icmp eq i64 %i.afq, 4
  br i1 %i.afr, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.afs = lshr i32 %i.afj, 24
  %i.aft = trunc nuw i32 %i.afs to i8
  %i.afu = uitofp i8 %i.afl to float
  %i.afv = uitofp i8 %i.afn to float
  %i.afw = fmul nnan float %i.afv, 5.870000e-01
  %i.afx = tail call float @llvm.fmuladd.f32(float %i.afu, float 2.990000e-01, float %i.afw)
  %i.afy = uitofp i8 %i.afp to float
  %i.afz = tail call float @llvm.fmuladd.f32(float %i.afy, float 1.140000e-01, float %i.afx)
  %i.aga = fadd float %i.afz, f0x3C23D70A
  %i.agb = uitofp i8 %i.aft to float
  %i.agc = fmul float %i.aga, %i.agb
  br label %.split69.i

bb.cp:                                            ; preds = %bb.cn
  %i.agd = uitofp i8 %i.afl to float
  %i.age = uitofp i8 %i.afn to float
  %i.agf = fmul nnan float %i.age, 5.870000e-01
  %i.agg = tail call float @llvm.fmuladd.f32(float %i.agd, float 2.990000e-01, float %i.agf)
  %i.agh = uitofp i8 %i.afp to float
  %i.agi = tail call float @llvm.fmuladd.f32(float %i.agh, float 1.140000e-01, float %i.agg)
  %i.agj = fadd float %i.agi, f0x3C23D70A
  br label %.split69.i

.split69.i:                                       ; preds = %bb.cp, %bb.co
  %.013.i36.i = phi float [ %i.adl, %bb.co ], [ %i.adh, %bb.cp ]
  %.0.i37.i = phi float [ %i.agc, %bb.co ], [ %i.agj, %bb.cp ]
  %i.agk = fcmp olt float %.013.i36.i, %.0.i37.i
  br i1 %i.agk, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge: ; preds = %.split69.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i, !llvm.loop !1010

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i: ; preds = %.split69.i
  %i.agl = icmp ult ptr %.lcssa.i, %i.afi
  br i1 %i.agl, label %.split84.i, label %._crit_edge.i, !llvm.loop !1011

._crit_edge.i:                                    ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i
  %.360.lcssa.i = phi ptr [ %.259141.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i ], [ %.lcssa.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ] ; 2 uses
  %i.agm = getelementptr inbounds i8, ptr %.360.lcssa.i, i64 -4 ; 3 uses
  %.not.i76 = icmp eq ptr %.0129, %i.agm
  br i1 %.not.i76, label %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.i
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !94
  store i32 %i.agn, ptr %.0129, align 4, !tbaa !94
  br label %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit

_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit: ; preds = %._crit_edge.i, %bb.cq
  store i32 %.fr125.i, ptr %i.agm, align 4, !tbaa !94
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread: ; preds = %bb.bv, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70, %bb.bt
  %i.ago = getelementptr inbounds nuw i8, ptr %.0129, i64 4 ; 5 uses
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !94 ; 5 uses
  %i.agq = icmp eq i32 %i.agp, 0
  br i1 %i.agq, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread
  %i.agr = icmp eq i32 %.fr125.i, 0               ; 2 uses
  %i.ags = trunc i32 %.fr125.i to i8
  %i.agt = lshr i32 %.fr125.i, 8
  %i.agu = trunc i32 %i.agt to i8
  %i.agv = lshr i32 %.fr125.i, 16
  %i.agw = trunc i32 %i.agv to i8
  %i.agx = uitofp i8 %i.ags to float
  %i.agy = uitofp i8 %i.agu to float
  %i.agz = fmul nnan float %i.agy, 5.870000e-01
  %i.aha = tail call float @llvm.fmuladd.f32(float %i.agx, float 2.990000e-01, float %i.agz)
  %i.ahb = uitofp i8 %i.agw to float
  %i.ahc = tail call float @llvm.fmuladd.f32(float %i.ahb, float 1.140000e-01, float %i.aha)
  %i.ahd = fadd float %i.ahc, f0x3C23D70A         ; 4 uses
  %i.ahe = lshr i32 %.fr125.i, 24
  %i.ahf = trunc nuw i32 %i.ahe to i8
  %i.ahg = uitofp i8 %i.ahf to float
  %i.ahh = fmul float %i.ahd, %i.ahg              ; 2 uses
  br i1 %i.agr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i, label %.lr.ph.split.i84

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i: ; preds = %.lr.ph.i83
  %scevgep.i102 = getelementptr i8, ptr %.0129, i64 8
  %wcslen.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %scevgep.i102)
  %i.ahi = shl i64 %wcslen.i, 2
  %i.ahj = getelementptr i8, ptr %.0129, i64 %i.ahi ; 2 uses
  %scevgep154.i = getelementptr i8, ptr %i.ahj, i64 4
  %scevgep155.i = getelementptr i8, ptr %i.ahj, i64 8
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101

.lr.ph.split.i84:                                 ; preds = %.lr.ph.i83
  %i.ahk = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.ahl = icmp eq i64 %i.ahk, 4
  br i1 %i.ahl, label %.split.us.i, label %.lr.ph.split.split.i

.split.us.i:                                      ; preds = %.lr.ph.split.i84, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i
  %i.ahm = phi i32 [ %i.aig, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %i.agp, %.lr.ph.split.i84 ] ; 4 uses
  %i.ahn = phi ptr [ %i.aif, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %i.ago, %.lr.ph.split.i84 ] ; 3 uses
  %.05369.us77.i = phi ptr [ %i.ahn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %.0129, %.lr.ph.split.i84 ]
  %i.aho = trunc i32 %i.ahm to i8
  %i.ahp = lshr i32 %i.ahm, 8
  %i.ahq = trunc i32 %i.ahp to i8
  %i.ahr = lshr i32 %i.ahm, 16
  %i.ahs = trunc i32 %i.ahr to i8
  %i.aht = lshr i32 %i.ahm, 24
  %i.ahu = trunc nuw i32 %i.aht to i8
  %i.ahv = uitofp i8 %i.aho to float
  %i.ahw = uitofp i8 %i.ahq to float
  %i.ahx = fmul nnan float %i.ahw, 5.870000e-01
  %i.ahy = tail call float @llvm.fmuladd.f32(float %i.ahv, float 2.990000e-01, float %i.ahx)
  %i.ahz = uitofp i8 %i.ahs to float
  %i.aia = tail call float @llvm.fmuladd.f32(float %i.ahz, float 1.140000e-01, float %i.ahy)
  %i.aib = fadd float %i.aia, f0x3C23D70A
  %i.aic = uitofp i8 %i.ahu to float
  %i.aid = fmul float %i.aib, %i.aic
  %i.aie = fcmp olt float %i.aid, %i.ahh
  br i1 %i.aie, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i: ; preds = %.split.us.i
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4 ; 3 uses
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !94 ; 2 uses
  %i.aih = icmp eq i32 %i.aig, 0
  br i1 %i.aih, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, label %.split.us.i, !llvm.loop !1012

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i84
  %i.aii = trunc i32 %i.agp to i8
  %i.aij = lshr i32 %i.agp, 8
  %i.aik = trunc i32 %i.aij to i8
  %i.ail = lshr i32 %i.agp, 16
  %i.aim = trunc i32 %i.ail to i8
  %i.ain = uitofp i8 %i.aii to float
  %i.aio = uitofp i8 %i.aik to float
  %i.aip = fmul nnan float %i.aio, 5.870000e-01
  %i.aiq = tail call float @llvm.fmuladd.f32(float %i.ain, float 2.990000e-01, float %i.aip)
  %i.air = uitofp i8 %i.aim to float
  %i.ais = tail call float @llvm.fmuladd.f32(float %i.air, float 1.140000e-01, float %i.aiq)
  %i.ait = fadd float %i.ais, f0x3C23D70A
  %i.aiu = fcmp olt float %i.ait, %i.ahd
  br i1 %i.aiu, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85

.split.i97:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96
  %i.aiv = trunc i32 %i.ajk to i8
  %i.aiw = lshr i32 %i.ajk, 8
  %i.aix = trunc i32 %i.aiw to i8
  %i.aiy = lshr i32 %i.ajk, 16
  %i.aiz = trunc i32 %i.aiy to i8
  %i.aja = uitofp i8 %i.aiv to float
  %i.ajb = uitofp i8 %i.aix to float
  %i.ajc = fmul nnan float %i.ajb, 5.870000e-01
  %i.ajd = tail call float @llvm.fmuladd.f32(float %i.aja, float 2.990000e-01, float %i.ajc)
  %i.aje = uitofp i8 %i.aiz to float
  %i.ajf = tail call float @llvm.fmuladd.f32(float %i.aje, float 1.140000e-01, float %i.ajd)
  %i.ajg = fadd float %i.ajf, f0x3C23D70A
  %i.ajh = fcmp olt float %i.ajg, %i.ahd
  br i1 %i.ajh, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, !llvm.loop !1012

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96: ; preds = %.lr.ph.split.split.i, %.split.i97
  %i.aji = phi ptr [ %i.ajj, %.split.i97 ], [ %i.ago, %.lr.ph.split.split.i ]
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 4 ; 4 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !94 ; 4 uses
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, label %.split.i97, !llvm.loop !1012

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101: ; preds = %.split.us.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i
  %.053.lcssa.i = phi ptr [ %scevgep154.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i ], [ %.05369.us77.i, %.split.us.i ]
  %.lcssa68.i = phi ptr [ %scevgep155.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us.preheader.i ], [ %i.ahn, %.split.us.i ] ; 2 uses
  %i.ajm = icmp eq ptr %.0129, %.053.lcssa.i
  br i1 %i.ajm, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96, %.split.i97, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101
  %.lcssa68177.i = phi ptr [ %.lcssa68.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101 ], [ %i.aif, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.us78.i ], [ %i.ajj, %.split.i97 ], [ %i.ajj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i96 ] ; 2 uses
  br i1 %i.agr, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i
  %.1.us.i = phi ptr [ %i.ajn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i ], [ %.0132.ph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i ]
  %i.ajn = getelementptr inbounds i8, ptr %.1.us.i, i64 -4 ; 3 uses
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !94
  %i.ajp = icmp eq i32 %i.ajo, 0
  br i1 %i.ajp, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i, label %.critedge.i86, !llvm.loop !1013

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101, %.lr.ph.split.split.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread
  %.lcssa68182.i = phi ptr [ %.lcssa68.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i101 ], [ %i.ago, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit70.thread ], [ %i.ago, %.lr.ph.split.split.i ] ; 8 uses
  %i.ajq = icmp ult ptr %.lcssa68182.i, %.0132.ph
  br i1 %i.ajq, label %.lr.ph94.i, label %.critedge.i86

.lr.ph94.i:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85
  %i.ajr = icmp eq i32 %.fr125.i, 0
  %i.ajs = trunc i32 %.fr125.i to i8
  %i.ajt = lshr i32 %.fr125.i, 8
  %i.aju = trunc i32 %i.ajt to i8
  %i.ajv = lshr i32 %.fr125.i, 16
  %i.ajw = trunc i32 %i.ajv to i8
  %i.ajx = uitofp i8 %i.ajs to float
  %i.ajy = uitofp i8 %i.aju to float
  %i.ajz = fmul nnan float %i.ajy, 5.870000e-01
  %i.aka = tail call float @llvm.fmuladd.f32(float %i.ajx, float 2.990000e-01, float %i.ajz)
  %i.akb = uitofp i8 %i.ajw to float
  %i.akc = tail call float @llvm.fmuladd.f32(float %i.akb, float 1.140000e-01, float %i.aka)
  %i.akd = fadd float %i.akc, f0x3C23D70A         ; 2 uses
  %i.ake = lshr i32 %.fr125.i, 24
  %i.akf = trunc nuw i32 %i.ake to i8
  %i.akg = uitofp i8 %i.akf to float
  %i.akh = fmul float %i.akd, %i.akg
  br i1 %i.ajr, label %.lr.ph94.split.us.i, label %.lr.ph94.split.i

.lr.ph94.split.us.i:                              ; preds = %.lr.ph94.i, %.lr.ph94.split.us.i
  %.093.us.i = phi ptr [ %i.aki, %.lr.ph94.split.us.i ], [ %.0132.ph, %.lr.ph94.i ]
  %i.aki = getelementptr inbounds i8, ptr %.093.us.i, i64 -4 ; 4 uses
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !94
  %i.akk = icmp eq i32 %i.akj, 0
  %i.akl = icmp ult ptr %.lcssa68182.i, %i.aki
  %or.cond.i95 = and i1 %i.akk, %i.akl
  br i1 %or.cond.i95, label %.lr.ph94.split.us.i, label %.critedge.i86, !llvm.loop !1014

.lr.ph94.split.i:                                 ; preds = %.lr.ph94.i, %.lr.ph94.split.i.backedge
  %.093.i = phi ptr [ %i.akm, %.lr.ph94.split.i.backedge ], [ %.0132.ph, %.lr.ph94.i ]
  %i.akm = getelementptr inbounds i8, ptr %.093.i, i64 -4 ; 6 uses
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !94 ; 5 uses
  %i.ako = icmp eq i32 %i.akn, 0
  br i1 %i.ako, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph94.split.i
  %i.akp = trunc i32 %i.akn to i8                 ; 2 uses
  %i.akq = lshr i32 %i.akn, 8
  %i.akr = trunc i32 %i.akq to i8                 ; 2 uses
  %i.aks = lshr i32 %i.akn, 16
  %i.akt = trunc i32 %i.aks to i8                 ; 2 uses
  %i.aku = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.akv = icmp eq i64 %i.aku, 4
  br i1 %i.akv, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.akw = lshr i32 %i.akn, 24
  %i.akx = trunc nuw i32 %i.akw to i8
  %i.aky = uitofp i8 %i.akp to float
  %i.akz = uitofp i8 %i.akr to float
  %i.ala = fmul nnan float %i.akz, 5.870000e-01
  %i.alb = tail call float @llvm.fmuladd.f32(float %i.aky, float 2.990000e-01, float %i.ala)
  %i.alc = uitofp i8 %i.akt to float
  %i.ald = tail call float @llvm.fmuladd.f32(float %i.alc, float 1.140000e-01, float %i.alb)
  %i.ale = fadd float %i.ald, f0x3C23D70A
  %i.alf = uitofp i8 %i.akx to float
  %i.alg = fmul float %i.ale, %i.alf
  br label %.split58.i

bb.ct:                                            ; preds = %bb.cr
  %i.alh = uitofp i8 %i.akp to float
  %i.ali = uitofp i8 %i.akr to float
  %i.alj = fmul nnan float %i.ali, 5.870000e-01
  %i.alk = tail call float @llvm.fmuladd.f32(float %i.alh, float 2.990000e-01, float %i.alj)
  %i.all = uitofp i8 %i.akt to float
  %i.alm = tail call float @llvm.fmuladd.f32(float %i.all, float 1.140000e-01, float %i.alk)
  %i.aln = fadd float %i.alm, f0x3C23D70A
  br label %.split58.i

.split58.i:                                       ; preds = %bb.ct, %bb.cs
  %.013.i20.i92 = phi float [ %i.alg, %bb.cs ], [ %i.aln, %bb.ct ]
  %.0.i21.i93 = phi float [ %i.akh, %bb.cs ], [ %i.akd, %bb.ct ]
  %i.alo = fcmp uge float %.013.i20.i92, %.0.i21.i93
  %i.alp = icmp ult ptr %.lcssa68182.i, %i.akm
  %or.cond124.i = and i1 %i.alp, %i.alo
  br i1 %or.cond124.i, label %.lr.ph94.split.i.backedge, label %.critedge.i86

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94: ; preds = %.lr.ph94.split.i
  %.old.i = icmp ult ptr %.lcssa68182.i, %i.akm
  br i1 %.old.i, label %.lr.ph94.split.i.backedge, label %.critedge.i86

.lr.ph94.split.i.backedge:                        ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94, %.split58.i
  br label %.lr.ph94.split.i, !llvm.loop !1014

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge
  %.1.i98 = phi ptr [ %i.alq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge ], [ %.0132.ph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.preheader.i ]
  %i.alq = getelementptr inbounds i8, ptr %.1.i98, i64 -4 ; 3 uses
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !94 ; 5 uses
  %i.als = icmp eq i32 %i.alr, 0
  br i1 %i.als, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge, label %bb.cu

bb.cu:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i
  %i.alt = trunc i32 %i.alr to i8                 ; 2 uses
  %i.alu = lshr i32 %i.alr, 8
  %i.alv = trunc i32 %i.alu to i8                 ; 2 uses
  %i.alw = lshr i32 %i.alr, 16
  %i.alx = trunc i32 %i.alw to i8                 ; 2 uses
  %i.aly = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.alz = icmp eq i64 %i.aly, 4
  br i1 %i.alz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ama = lshr i32 %i.alr, 24
  %i.amb = trunc nuw i32 %i.ama to i8
  %i.amc = uitofp i8 %i.alt to float
  %i.amd = uitofp i8 %i.alv to float
  %i.ame = fmul nnan float %i.amd, 5.870000e-01
  %i.amf = tail call float @llvm.fmuladd.f32(float %i.amc, float 2.990000e-01, float %i.ame)
  %i.amg = uitofp i8 %i.alx to float
  %i.amh = tail call float @llvm.fmuladd.f32(float %i.amg, float 1.140000e-01, float %i.amf)
  %i.ami = fadd float %i.amh, f0x3C23D70A
  %i.amj = uitofp i8 %i.amb to float
  %i.amk = fmul float %i.ami, %i.amj
  br label %.split60.i

bb.cw:                                            ; preds = %bb.cu
  %i.aml = uitofp i8 %i.alt to float
  %i.amm = uitofp i8 %i.alv to float
  %i.amn = fmul nnan float %i.amm, 5.870000e-01
  %i.amo = tail call float @llvm.fmuladd.f32(float %i.aml, float 2.990000e-01, float %i.amn)
  %i.amp = uitofp i8 %i.alx to float
  %i.amq = tail call float @llvm.fmuladd.f32(float %i.amp, float 1.140000e-01, float %i.amo)
  %i.amr = fadd float %i.amq, f0x3C23D70A
  br label %.split60.i

.split60.i:                                       ; preds = %bb.cw, %bb.cv
  %.013.i24.i99 = phi float [ %i.amk, %bb.cv ], [ %i.amr, %bb.cw ]
  %.0.i25.i100 = phi float [ %i.ahh, %bb.cv ], [ %i.ahd, %bb.cw ]
  %i.ams = fcmp olt float %.013.i24.i99, %.0.i25.i100
  br i1 %i.ams, label %.critedge.i86, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i.backedge: ; preds = %.split60.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.i, !llvm.loop !1013

.critedge.i86:                                    ; preds = %.split60.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94, %.split58.i, %.lr.ph94.split.us.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85
  %.lcssa68176.i = phi ptr [ %.lcssa68182.i, %.lr.ph94.split.us.i ], [ %.lcssa68182.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94 ], [ %.lcssa68182.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85 ], [ %.lcssa68177.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i ], [ %.lcssa68182.i, %.split58.i ], [ %.lcssa68177.i, %.split60.i ] ; 3 uses
  %.2.i = phi ptr [ %i.aki, %.lr.ph94.split.us.i ], [ %i.akm, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i94 ], [ %.0132.ph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i85 ], [ %i.ajn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit27.us.i ], [ %i.akm, %.split58.i ], [ %i.alq, %.split60.i ] ; 3 uses
  %.not = icmp ult ptr %.lcssa68176.i, %.2.i      ; 2 uses
  br i1 %.not, label %.lr.ph122.i, label %._crit_edge.i90

.lr.ph122.i:                                      ; preds = %.critedge.i86
  %i.amt = icmp eq i32 %.fr125.i, 0               ; 2 uses
  %i.amu = trunc i32 %.fr125.i to i8
  %i.amv = lshr i32 %.fr125.i, 8
  %i.amw = trunc i32 %i.amv to i8
  %i.amx = lshr i32 %.fr125.i, 16
  %i.amy = trunc i32 %i.amx to i8
  %i.amz = uitofp i8 %i.amu to float
  %i.ana = uitofp i8 %i.amw to float
  %i.anb = fmul nnan float %i.ana, 5.870000e-01
  %i.anc = tail call float @llvm.fmuladd.f32(float %i.amz, float 2.990000e-01, float %i.anb)
  %i.and = uitofp i8 %i.amy to float
  %i.ane = tail call float @llvm.fmuladd.f32(float %i.and, float 1.140000e-01, float %i.anc)
  %i.anf = fadd float %i.ane, f0x3C23D70A         ; 3 uses
  %i.ang = lshr i32 %.fr125.i, 24
  %i.anh = trunc nuw i32 %i.ang to i8
  %i.ani = uitofp i8 %i.anh to float
  %i.anj = fmul float %i.anf, %i.ani              ; 2 uses
  %.pre.i87 = load i32, ptr %.2.i, align 4, !tbaa !94
  br label %bb.cx

bb.cx:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, %.lr.ph122.i
  %i.ank = phi i32 [ %.pre.i87, %.lr.ph122.i ], [ %i.aqm, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ]
  %.3121.i = phi ptr [ %.2.i, %.lr.ph122.i ], [ %.us-phi117.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ] ; 3 uses
  %.154120.i = phi ptr [ %.lcssa68176.i, %.lr.ph122.i ], [ %.lcssa.i88, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ] ; 4 uses
  %i.anl = load i32, ptr %.154120.i, align 4, !tbaa !94
  store i32 %i.ank, ptr %.154120.i, align 4, !tbaa !94
  store i32 %i.anl, ptr %.3121.i, align 4, !tbaa !94
  %.val16.i = load ptr, ptr %2, align 8           ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.154120.i, i64 4 ; 4 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !94 ; 3 uses
  %i.ano = icmp eq i32 %i.ann, 0
  br i1 %i.ano, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, label %.lr.ph103.i, !llvm.loop !1015

.lr.ph103.i:                                      ; preds = %bb.cx
  br i1 %i.amt, label %.critedge64.backedge.us.preheader.i, label %.lr.ph103.split.i, !llvm.loop !1015

.critedge64.backedge.us.preheader.i:              ; preds = %.lr.ph103.i
  %scevgep156.i = getelementptr i8, ptr %.154120.i, i64 8 ; 2 uses
  %wcslen157.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %scevgep156.i)
  %i.anp = shl i64 %wcslen157.i, 2
  %scevgep158.i = getelementptr i8, ptr %scevgep156.i, i64 %i.anp
  br label %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i

.lr.ph103.split.i:                                ; preds = %.lr.ph103.i
  %i.anq = load i64, ptr %.val16.i, align 8, !tbaa !68
  %i.anr = icmp eq i64 %i.anq, 4
  br i1 %i.anr, label %.split61.us.i, label %.lr.ph103.split.split.i, !llvm.loop !1015

.split61.us.i:                                    ; preds = %.lr.ph103.split.i, %.critedge64.backedge.us110.i
  %i.ans = phi i32 [ %i.aom, %.critedge64.backedge.us110.i ], [ %i.ann, %.lr.ph103.split.i ] ; 4 uses
  %i.ant = phi ptr [ %i.aol, %.critedge64.backedge.us110.i ], [ %i.anm, %.lr.ph103.split.i ] ; 2 uses
  %i.anu = trunc i32 %i.ans to i8
  %i.anv = lshr i32 %i.ans, 8
  %i.anw = trunc i32 %i.anv to i8
  %i.anx = lshr i32 %i.ans, 16
  %i.any = trunc i32 %i.anx to i8
  %i.anz = lshr i32 %i.ans, 24
  %i.aoa = trunc nuw i32 %i.anz to i8
  %i.aob = uitofp i8 %i.anu to float
  %i.aoc = uitofp i8 %i.anw to float
  %i.aod = fmul nnan float %i.aoc, 5.870000e-01
  %i.aoe = tail call float @llvm.fmuladd.f32(float %i.aob, float 2.990000e-01, float %i.aod)
  %i.aof = uitofp i8 %i.any to float
  %i.aog = tail call float @llvm.fmuladd.f32(float %i.aof, float 1.140000e-01, float %i.aoe)
  %i.aoh = fadd float %i.aog, f0x3C23D70A
  %i.aoi = uitofp i8 %i.aoa to float
  %i.aoj = fmul float %i.aoh, %i.aoi
  %i.aok = fcmp olt float %i.aoj, %i.anj
  br i1 %i.aok, label %.critedge64.backedge.us110.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i

.critedge64.backedge.us110.i:                     ; preds = %.split61.us.i
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ant, i64 4 ; 3 uses
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !94 ; 2 uses
  %i.aon = icmp eq i32 %i.aom, 0
  br i1 %i.aon, label %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i, label %.split61.us.i, !llvm.loop !1015

.lr.ph103.split.split.i:                          ; preds = %.lr.ph103.split.i
  br label %.split61.i, !llvm.loop !1015

.split61.i:                                       ; preds = %.critedge64.backedge.i, %.lr.ph103.split.split.i
  %i.aoo = phi i32 [ %i.ann, %.lr.ph103.split.split.i ], [ %i.ape, %.critedge64.backedge.i ] ; 3 uses
  %i.aop = phi ptr [ %i.anm, %.lr.ph103.split.split.i ], [ %i.apd, %.critedge64.backedge.i ] ; 2 uses
  %i.aoq = trunc i32 %i.aoo to i8
  %i.aor = lshr i32 %i.aoo, 8
  %i.aos = trunc i32 %i.aor to i8
  %i.aot = lshr i32 %i.aoo, 16
  %i.aou = trunc i32 %i.aot to i8
  %i.aov = uitofp i8 %i.aoq to float
  %i.aow = uitofp i8 %i.aos to float
  %i.aox = fmul nnan float %i.aow, 5.870000e-01
  %i.aoy = tail call float @llvm.fmuladd.f32(float %i.aov, float 2.990000e-01, float %i.aox)
  %i.aoz = uitofp i8 %i.aou to float
  %i.apa = tail call float @llvm.fmuladd.f32(float %i.aoz, float 1.140000e-01, float %i.aoy)
  %i.apb = fadd float %i.apa, f0x3C23D70A
  %i.apc = fcmp olt float %i.apb, %i.anf
  br i1 %i.apc, label %.critedge64.backedge.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i

.critedge64.backedge.i:                           ; preds = %.split61.i
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aop, i64 4 ; 3 uses
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !94 ; 2 uses
  %i.apf = icmp eq i32 %i.ape, 0
  br i1 %i.apf, label %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i, label %.split61.i, !llvm.loop !1015

.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i: ; preds = %.critedge64.backedge.i, %.critedge64.backedge.us110.i, %.critedge64.backedge.us.preheader.i
  %.us-phi108.i = phi ptr [ %i.aol, %.critedge64.backedge.us110.i ], [ %scevgep158.i, %.critedge64.backedge.us.preheader.i ], [ %i.apd, %.critedge64.backedge.i ]
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, !llvm.loop !1015

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i: ; preds = %.split61.i, %.split61.us.i, %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i, %bb.cx
  %.lcssa.i88 = phi ptr [ %i.anm, %bb.cx ], [ %.us-phi108.i, %.critedge64._ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader_crit_edge.i ], [ %i.ant, %.split61.us.i ], [ %i.aop, %.split61.i ] ; 3 uses
  br i1 %i.amt, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i
  %.4.us.i = phi ptr [ %i.apg, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i ], [ %.3121.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i ]
  %i.apg = getelementptr inbounds i8, ptr %.4.us.i, i64 -4 ; 3 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !94 ; 2 uses
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, !llvm.loop !1016

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge
  %.4.i = phi ptr [ %i.apj, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge ], [ %.3121.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.preheader.i ]
  %i.apj = getelementptr inbounds i8, ptr %.4.i, i64 -4 ; 3 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !94 ; 6 uses
  %i.apl = icmp eq i32 %i.apk, 0
  br i1 %i.apl, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge, label %bb.cy

bb.cy:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i
  %i.apm = trunc i32 %i.apk to i8                 ; 2 uses
  %i.apn = lshr i32 %i.apk, 8
  %i.apo = trunc i32 %i.apn to i8                 ; 2 uses
  %i.app = lshr i32 %i.apk, 16
  %i.apq = trunc i32 %i.app to i8                 ; 2 uses
  %i.apr = load i64, ptr %.val16.i, align 8, !tbaa !68
  %i.aps = icmp eq i64 %i.apr, 4
  br i1 %i.aps, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.apt = lshr i32 %i.apk, 24
  %i.apu = trunc nuw i32 %i.apt to i8
  %i.apv = uitofp i8 %i.apm to float
  %i.apw = uitofp i8 %i.apo to float
  %i.apx = fmul nnan float %i.apw, 5.870000e-01
  %i.apy = tail call float @llvm.fmuladd.f32(float %i.apv, float 2.990000e-01, float %i.apx)
  %i.apz = uitofp i8 %i.apq to float
  %i.aqa = tail call float @llvm.fmuladd.f32(float %i.apz, float 1.140000e-01, float %i.apy)
  %i.aqb = fadd float %i.aqa, f0x3C23D70A
  %i.aqc = uitofp i8 %i.apu to float
  %i.aqd = fmul float %i.aqb, %i.aqc
  br label %.split63.i

bb.da:                                            ; preds = %bb.cy
  %i.aqe = uitofp i8 %i.apm to float
  %i.aqf = uitofp i8 %i.apo to float
  %i.aqg = fmul nnan float %i.aqf, 5.870000e-01
  %i.aqh = tail call float @llvm.fmuladd.f32(float %i.aqe, float 2.990000e-01, float %i.aqg)
  %i.aqi = uitofp i8 %i.apq to float
  %i.aqj = tail call float @llvm.fmuladd.f32(float %i.aqi, float 1.140000e-01, float %i.aqh)
  %i.aqk = fadd float %i.aqj, f0x3C23D70A
  br label %.split63.i

.split63.i:                                       ; preds = %bb.da, %bb.cz
  %.013.i32.i = phi float [ %i.aqd, %bb.cz ], [ %i.aqk, %bb.da ]
  %.0.i33.i = phi float [ %i.anj, %bb.cz ], [ %i.anf, %bb.da ]
  %i.aql = fcmp olt float %.013.i32.i, %.0.i33.i
  br i1 %i.aql, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i.backedge: ; preds = %.split63.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.i, !llvm.loop !1016

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i: ; preds = %.split63.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i
  %i.aqm = phi i32 [ %i.aph, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i ], [ %i.apk, %.split63.i ]
  %.us-phi117.i = phi ptr [ %i.apg, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.us.i ], [ %i.apj, %.split63.i ] ; 2 uses
  %i.aqn = icmp ult ptr %.lcssa.i88, %.us-phi117.i
  br i1 %i.aqn, label %bb.cx, label %._crit_edge.i90, !llvm.loop !1017

._crit_edge.i90:                                  ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i, %.critedge.i86
  %.154.lcssa.i = phi ptr [ %.lcssa68176.i, %.critedge.i86 ], [ %.lcssa.i88, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.thread.i ] ; 4 uses
  %i.aqo = getelementptr inbounds i8, ptr %.154.lcssa.i, i64 -4 ; 6 uses
  %.not.i91 = icmp eq ptr %.0129, %i.aqo
  br i1 %.not.i91, label %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i90
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !94
  store i32 %i.aqp, ptr %.0129, align 4, !tbaa !94
  br label %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit

_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit: ; preds = %._crit_edge.i90, %bb.db
  store i32 %.fr125.i, ptr %i.aqo, align 4, !tbaa !94
  br i1 %.not, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit
  %i.aqq = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef nonnull %.0129, ptr noundef nonnull %i.aqo, ptr noundef nonnull align 8 dereferenceable(8) %2) #38 ; 2 uses
  %i.aqr = tail call fastcc noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEbT1_SD_T0_(ptr noundef nonnull %.154.lcssa.i, ptr noundef %.0132.ph, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br i1 %i.aqr, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.aqq, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer, !llvm.loop !1018

bb.de:                                            ; preds = %bb.dc
  br i1 %i.aqq, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit, label %bb.df, !llvm.loop !1018

bb.df:                                            ; preds = %bb.de, %_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EENS_4pairIT0_bEESE_SE_T1_.exit
  tail call fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(ptr noundef nonnull %.0129, ptr noundef nonnull %i.aqo, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.tw, i1 noundef zeroext %i.h) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge: ; preds = %bb.df, %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit
  %.0129.ph521.be = phi ptr [ %.360.lcssa.i, %_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPjRZN22default_implementation12_GLOBAL__N_19LLPrepareINS4_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_EET0_SD_SD_T1_.exit ], [ %.154.lcssa.i, %bb.df ]
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520, !llvm.loop !1018

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread: ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit, %bb.dd, %_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SC_RT0_NS_15iterator_traitsISC_E15difference_typeE.exit.i.i.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread26.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i, %bb.b, %bb.ae, %bb.u, %bb.l, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, %bb.h, %bb.g, %bb.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SF_SE_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #21 {
bb.a:
  tail call fastcc void @_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull readonly align 8 dereferenceable(8) %5) #38
  %i.a = load i32, ptr %4, align 4, !tbaa !94     ; 3 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !94     ; 3 uses
  %.val7.i = load ptr, ptr %5, align 8
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %i.b, i64 1 ; 4 uses
  %i.g = trunc <2 x i32> %i.f to <2 x i8>         ; 2 uses
  %i.h = lshr <2 x i32> %i.f, splat (i32 8)
  %i.i = trunc <2 x i32> %i.h to <2 x i8>         ; 2 uses
  %i.j = lshr <2 x i32> %i.f, splat (i32 16)
  %i.k = trunc <2 x i32> %i.j to <2 x i8>         ; 2 uses
  %i.l = load i64, ptr %.val7.i, align 8, !tbaa !68
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
