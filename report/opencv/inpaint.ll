Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/inpaint?download=true
inline.NumInlined: 1195
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i, i64 %i.aid
  %i.aqe = load float, ptr %i.aqd, align 4, !tbaa !46
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i, i64 %i.ait
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !46
  %i.aqh = fsub float %i.aqe, %i.aqg
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %bb.je, %bb.jd
  %.sroa.23.0.i = phi float [ %i.apx, %bb.jd ], [ %i.aqh, %bb.jg ], [ %i.aqa, %bb.je ], [ 0.000000e+00, %bb.jf ]
  %.pre1974 = load i64, ptr %i.agr, align 8       ; 7 uses
  br i1 %.not580.i, label %bb.jl, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aqi = mul i64 %.pre1974, %i.aju
  %.sink.idx.i668.2.i = select i1 %i.aik, i64 0, i64 %i.aqi
  %gep979.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i668.2.i
  %i.aqj = load float, ptr %gep979.2.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not581.2.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aqk = mul i64 %.pre1974, %i.ain
  %.sink.idx.i666.2.i = select i1 %i.aik, i64 0, i64 %i.aqk
  %gep977.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i666.2.i
  %i.aql = load float, ptr %gep977.2.i, align 4, !tbaa !46
  %i.aqm = fsub float %i.aqj, %i.aql
  %i.aqn = fmul float %i.aqm, 5.000000e-01
  br label %bb.jn

bb.jk:                                            ; preds = %bb.ji
  %i.aqo = mul i64 %.pre1974, %i.aib
  %.sink.idx.i670.2.i = select i1 %i.aik, i64 0, i64 %i.aqo
  %gep981.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i670.2.i
  %i.aqp = load float, ptr %gep981.2.i, align 4, !tbaa !46
  %i.aqq = fsub float %i.aqj, %i.aqp
  br label %bb.jn

bb.jl:                                            ; preds = %bb.jh
  br i1 %.not581.2.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aqr = mul i64 %.pre1974, %i.aib
  %.sink.idx.i674.2.i = select i1 %i.aik, i64 0, i64 %i.aqr
  %gep985.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i674.2.i
  %i.aqs = load float, ptr %gep985.2.i, align 4, !tbaa !46
  %i.aqt = mul i64 %.pre1974, %i.ain
  %.sink.idx.i676.2.i = select i1 %i.aik, i64 0, i64 %i.aqt
  %gep987.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i676.2.i
  %i.aqu = load float, ptr %gep987.2.i, align 4, !tbaa !46
  %i.aqv = fsub float %i.aqs, %i.aqu
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.jj
  %.sroa.28.0.i = phi float [ %i.aqn, %bb.jj ], [ %i.aqv, %bb.jm ], [ %i.aqq, %bb.jk ], [ 0.000000e+00, %bb.jl ]
  %i.aqw = add nuw nsw i32 %.2540.fr.i, %i.dl
  %i.aqx = add nsw i32 %i.ahv, -2
  %i.aqy = add nsw i32 %i.ahw, -2
  %i.aqz = add nsw i32 %i.ahv, -1
  %i.ara = add nsw i32 %i.ahw, -1
  %i.arb = add nuw nsw i32 %.2536.i, %i.dl
  %i.arc = sub nsw i32 %.2536.i, %i.dl
  %i.ard = sub nsw i32 %.2540.fr.i, %i.dl
  %i.are = sext i32 %i.arc to i64
  %i.arf = zext nneg i32 %i.ara to i64
  %i.arg = zext nneg i32 %i.arb to i64
  %sext.i = zext nneg i32 %i.aqy to i64
  %i.arh = mul i64 %.pre1974, %i.aib
  %.sink.idx.i682.i = select i1 %i.aik, i64 0, i64 %i.arh
  %gep995.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i682.i
  %i.ari = insertelement <2 x float> poison, float %.sroa.13.0.i, i64 1
  %i.arj = insertelement <2 x float> poison, float %.sroa.23.0.i, i64 1
  br label %.lr.ph999.i

.preheader914.loopexit.i:                         ; preds = %._crit_edge1000.i
  %i.ark = extractelement <2 x float> %i.bgx, i64 1 ; 3 uses
  %i.arl = fmul float %i.ark, %i.ark
  %i.arm = call float @llvm.fmuladd.f32(float %.sroa.01047.4.i, float %.sroa.01047.4.i, float %i.arl)
  %sqrt911.i = call float @llvm.sqrt.f32(float %i.arm)
  %i.arn = fadd float %sqrt911.i, f0x1E3CE508
  %i.aro = fadd float %.sroa.01047.4.i, %i.ark
  %i.arp = shufflevector <2 x float> %i.bgx, <2 x float> %i.bgy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.arq = shufflevector <2 x float> %i.bgw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.arr = shufflevector <4 x float> %i.arp, <4 x float> %i.arq, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ars = insertelement <4 x float> %i.arr, float %i.aro, i64 3
  %i.art = insertelement <4 x float> poison, float %.sroa.0.4.i, i64 0
  %i.aru = insertelement <4 x float> %i.art, float %.sroa.6.4.i, i64 1
  %i.arv = insertelement <4 x float> %i.aru, float %.sroa.9.4.i, i64 2
  %i.arw = insertelement <4 x float> %i.arv, float %i.arn, i64 3
  %i.arx = fdiv <4 x float> %i.ars, %i.arw        ; 3 uses
  %shift = shufflevector <4 x float> %i.arx, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %i.arx
  %i.ary = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.arz = fpext float %i.ary to double
  %i.asa = fadd double %i.arz, 5.000000e-01
  %i.asb = insertelement <2 x double> poison, double %i.asa, i64 0
  %i.asc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.asb)
  %i.asd = call i32 @llvm.smax.i32(i32 %i.asc, i32 0)
  %i.ase = call i32 @llvm.umin.i32(i32 %i.asd, i32 255)
  %i.asf = trunc nuw i32 %i.ase to i8
  %i.asg = load i32, ptr %i.agt, align 4, !tbaa !148
  %i.ash = icmp slt i32 %i.asg, 2
  %i.asi = load ptr, ptr %i.agu, align 8, !tbaa !149
  %i.asj = load i64, ptr %i.agv, align 8
  %i.ask = mul i64 %i.asj, %i.ain
  %.sink.idx.i722.i = select i1 %i.ash, i64 0, i64 %i.ask
  %.sink.i723.i = getelementptr inbounds nuw i8, ptr %i.asi, i64 %.sink.idx.i722.i
  %i.asl = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.i, i64 %i.ait
  store i8 %i.asf, ptr %i.asl, align 1, !tbaa !21
  %i.asm = load i32, ptr %i.agt, align 4, !tbaa !148
  %i.asn = icmp slt i32 %i.asm, 2
  %i.aso = load ptr, ptr %i.agu, align 8, !tbaa !149
  %i.asp = load i64, ptr %i.agv, align 8
  %i.asq = mul i64 %i.asp, %i.ain
  %.sink.idx.i722.1.i = select i1 %i.asn, i64 0, i64 %i.asq
  %.sink.i723.1.i = getelementptr inbounds nuw i8, ptr %i.aso, i64 %.sink.idx.i722.1.i
  %i.asr = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.1.i, i64 %i.ait
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 1
  %i.ast = shufflevector <2 x float> %i.bgy, <2 x float> %i.bgw, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.asu = fadd <2 x float> %i.bgz, %i.ast
  %i.asv = fmul <2 x float> %i.ast, %i.ast
  %i.asw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgz, <2 x float> %i.bgz, <2 x float> %i.asv)
  %i.asx = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.asw)
  %i.asy = fadd <2 x float> %i.asx, splat (float f0x1E3CE508)
  %i.asz = fdiv <2 x float> %i.asu, %i.asy
  %i.ata = shufflevector <4 x float> %i.arx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.atb = fadd <2 x float> %i.asz, %i.ata
  %i.atc = fpext <2 x float> %i.atb to <2 x double>
  %i.atd = fadd <2 x double> %i.atc, splat (double 5.000000e-01) ; 2 uses
  %i.ate = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.atd)
  %i.atf = call i32 @llvm.smax.i32(i32 %i.ate, i32 0)
  %i.atg = call i32 @llvm.umin.i32(i32 %i.atf, i32 255)
  %i.ath = trunc nuw i32 %i.atg to i8
  store i8 %i.ath, ptr %i.ass, align 1, !tbaa !21
  %i.ati = shufflevector <2 x double> %i.atd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.atj = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ati)
  %i.atk = call i32 @llvm.smax.i32(i32 %i.atj, i32 0)
  %i.atl = call i32 @llvm.umin.i32(i32 %i.atk, i32 255)
  %i.atm = trunc nuw i32 %i.atl to i8
  %i.atn = load i32, ptr %i.agt, align 4, !tbaa !148
  %i.ato = icmp slt i32 %i.atn, 2
  %i.atp = load ptr, ptr %i.agu, align 8, !tbaa !149
  %i.atq = load i64, ptr %i.agv, align 8
  %i.atr = mul i64 %i.atq, %i.ain
  %.sink.idx.i722.2.i = select i1 %i.ato, i64 0, i64 %i.atr
  %.sink.i723.2.i = getelementptr inbounds nuw i8, ptr %i.atp, i64 %.sink.idx.i722.2.i
  %i.ats = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.2.i, i64 %i.ait
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 2
  store i8 %i.atm, ptr %i.att, align 1, !tbaa !21
  %i.atu = load i32, ptr %i.agk, align 4, !tbaa !148
  %i.atv = icmp slt i32 %i.atu, 2
  %i.atw = load ptr, ptr %i.agl, align 8, !tbaa !149
  %i.atx = load i64, ptr %i.agm, align 8
  %i.aty = mul i64 %i.atx, %i.aib
  %.sink.idx.i724.i = select i1 %i.atv, i64 0, i64 %i.aty
  %.sink.i725.i = getelementptr inbounds nuw i8, ptr %i.atw, i64 %.sink.idx.i724.i
  %i.atz = getelementptr inbounds nuw i8, ptr %.sink.i725.i, i64 %i.aid
  store i8 1, ptr %i.atz, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store float %i.amn, ptr %16, align 4, !tbaa !50
  store i32 %.2540.fr.i, ptr %i.agw, align 4, !tbaa !169
  store i32 %.2536.i, ptr %i.agx, align 4, !tbaa !170
  %i.aua = load i32, ptr %i.agz, align 8, !tbaa !162
  store i32 %i.aua, ptr %i.agy, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.afl, ptr noundef nonnull align 4 dereferenceable(16) %16)
          to label %.noexc358 unwind label %.loopexit

.noexc358:                                        ; preds = %.preheader914.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.aub = load i32, ptr %i.agz, align 8, !tbaa !162
  %i.auc = add nsw i32 %i.aub, 1
  store i32 %i.auc, ptr %i.agz, align 8, !tbaa !162
  br label %bb.kz

.lr.ph999.i:                                      ; preds = %._crit_edge1000.i, %bb.jn
  %.sroa.01047.1.i = phi float [ 0.000000e+00, %bb.jn ], [ %.sroa.01047.4.i, %._crit_edge1000.i ] ; 3 uses
  %.sroa.9.1.i = phi float [ f0x1E3CE508, %bb.jn ], [ %.sroa.9.4.i, %._crit_edge1000.i ] ; 3 uses
  %.sroa.6.1.i = phi float [ f0x1E3CE508, %bb.jn ], [ %.sroa.6.4.i, %._crit_edge1000.i ] ; 3 uses
  %.sroa.0.1.i = phi float [ f0x1E3CE508, %bb.jn ], [ %.sroa.0.4.i, %._crit_edge1000.i ] ; 3 uses
  %.05321007.i = phi i32 [ %i.ard, %bb.jn ], [ %i.auu, %._crit_edge1000.i ] ; 10 uses
  %i.aud = phi <2 x float> [ zeroinitializer, %bb.jn ], [ %i.bgw, %._crit_edge1000.i ] ; 3 uses
  %i.aue = phi <2 x float> [ zeroinitializer, %bb.jn ], [ %i.bgx, %._crit_edge1000.i ] ; 3 uses
  %i.auf = phi <2 x float> [ zeroinitializer, %bb.jn ], [ %i.bgy, %._crit_edge1000.i ] ; 3 uses
  %i.aug = phi <2 x float> [ zeroinitializer, %bb.jn ], [ %i.bgz, %._crit_edge1000.i ] ; 3 uses
  %i.auh = add nsw i32 %.05321007.i, -1           ; 3 uses
  %i.aui = icmp eq i32 %.05321007.i, 1
  %i.auj = zext i1 %i.aui to i32
  %i.auk = add nuw nsw i32 %i.auh, %i.auj         ; 2 uses
  %i.aul = icmp eq i32 %.05321007.i, %i.aqx
  %.neg566.i = sext i1 %i.aul to i32              ; 2 uses
  %i.aum = add i32 %i.auh, %.neg566.i
  %i.aun = icmp sgt i32 %.05321007.i, 0
  %i.auo = zext nneg i32 %.05321007.i to i64      ; 2 uses
  %i.aup = sub nsw i32 %.05321007.i, %.2540.fr.i  ; 2 uses
  %i.auq = mul nsw i32 %i.aup, %i.aup
  %i.aur = sub nsw i32 %.2540.fr.i, %.05321007.i
  %i.aus = sitofp i32 %i.aur to float             ; 8 uses
  %i.aut = fmul nnan float %i.aus, %i.aus
  %i.auu = add i32 %.05321007.i, 1                ; 3 uses
  %i.auv = zext nneg i32 %i.auu to i64
  %i.auw = sext i32 %i.auh to i64                 ; 2 uses
  %i.aux = sext i32 %i.auk to i64                 ; 9 uses
  %i.auy = add nsw i32 %.05321007.i, %.neg566.i
  %i.auz = sext i32 %i.auy to i64                 ; 3 uses
  %i.ava = add nsw i32 %i.auk, -1
  %i.avb = sext i32 %i.ava to i64                 ; 6 uses
  %i.avc = sext i32 %i.aum to i64                 ; 3 uses
  br i1 %i.aun, label %.lr.ph999.split.i, label %._crit_edge1000.i

.lr.ph999.split.i:                                ; preds = %.lr.ph999.i
  %i.avd = icmp slt i32 %.05321007.i, %i.aqz
  %.fr1005.i = freeze i1 %i.avd
  br i1 %.fr1005.i, label %.lr.ph999.split.split.preheader.i, label %._crit_edge1000.i

.lr.ph999.split.split.preheader.i:                ; preds = %.lr.ph999.split.i
  %i.ave = mul i64 %i.amp, %i.auo
  %.sink.idx.i678.i = select i1 %i.ahy, i64 0, i64 %i.ave
  %.sink.i679.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %.sink.idx.i678.i ; 2 uses
  %i.avf = mul i64 %i.amp, %i.auv
  %.sink.idx.i702.i = select i1 %i.ahy, i64 0, i64 %i.avf
  %.sink.i703.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %.sink.idx.i702.i
  %i.avg = mul i64 %i.amp, %i.auw
  %.sink.idx.i704.i = select i1 %i.ahy, i64 0, i64 %i.avg
  %invariant.gep1088.i = getelementptr i8, ptr %i.ahz, i64 %.sink.idx.i704.i
  %i.avh = fmul float %.sroa.8.0.i, %i.aus
  %i.avi = fmul float %.sroa.18.0.i, %i.aus
  %i.avj = fmul float %.sroa.28.0.i, %i.aus
  %i.avk = mul i64 %.pre1974, %i.auo
  %.sink.idx.i680.i = select i1 %i.aik, i64 0, i64 %i.avk
  %.sink.i681.i = getelementptr inbounds nuw i8, ptr %i.ail, i64 %.sink.idx.i680.i
  %i.avl = insertelement <2 x float> poison, float %i.aut, i64 0
  %i.avm = insertelement <2 x float> %i.avl, float %i.avh, i64 1
  %i.avn = insertelement <2 x float> poison, float %i.avi, i64 1
  br label %.lr.ph999.split.split.i

.lr.ph999.split.split.i:                          ; preds = %.loopexit.i353, %.lr.ph999.split.split.preheader.i
  %.sroa.01047.2.i = phi float [ %.sroa.01047.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.01047.3.i, %.loopexit.i353 ] ; 4 uses
  %.sroa.9.2.i = phi float [ %.sroa.9.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.9.3.i, %.loopexit.i353 ] ; 4 uses
  %.sroa.6.2.i = phi float [ %.sroa.6.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.6.3.i, %.loopexit.i353 ] ; 4 uses
  %.sroa.0.2.i = phi float [ %.sroa.0.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.0.3.i, %.loopexit.i353 ] ; 4 uses
  %indvars.iv.i352 = phi i64 [ %i.are, %.lr.ph999.split.split.preheader.i ], [ %indvars.iv.next.i354, %.loopexit.i353 ] ; 13 uses
  %i.avo = phi <2 x float> [ %i.aud, %.lr.ph999.split.split.preheader.i ], [ %i.bgs, %.loopexit.i353 ] ; 4 uses
  %i.avp = phi <2 x float> [ %i.aue, %.lr.ph999.split.split.preheader.i ], [ %i.bgt, %.loopexit.i353 ] ; 4 uses
  %i.avq = phi <2 x float> [ %i.auf, %.lr.ph999.split.split.preheader.i ], [ %i.bgu, %.loopexit.i353 ] ; 4 uses
  %i.avr = phi <2 x float> [ %i.aug, %.lr.ph999.split.split.preheader.i ], [ %i.bgv, %.loopexit.i353 ] ; 5 uses
  %i.avs = add nsw i64 %indvars.iv.i352, -1       ; 4 uses
  %i.avt = icmp eq i64 %indvars.iv.i352, 1
  %i.avu = zext i1 %i.avt to i64
  %i.avv = add nuw nsw i64 %i.avs, %i.avu         ; 21 uses
  %i.avw = icmp eq i64 %indvars.iv.i352, %sext.i
  %.neg568.i = sext i1 %i.avw to i64              ; 2 uses
  %80 = add nsw i64 %i.avs, %.neg568.i
  %i.avx = icmp sgt i64 %indvars.iv.i352, 0
  %i.avy = icmp slt i64 %indvars.iv.i352, %i.arf
  %or.cond1014.i = select i1 %i.avx, i1 %i.avy, i1 false
  br i1 %or.cond1014.i, label %bb.jo, label %.loopexit.i353

bb.jo:                                            ; preds = %.lr.ph999.split.split.i
  %i.avz = getelementptr inbounds nuw i8, ptr %.sink.i679.i, i64 %indvars.iv.i352 ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !21
  %.not569.i = icmp eq i8 %i.awa, 2
  br i1 %.not569.i, label %.loopexit.i353, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.awb = trunc nuw nsw i64 %indvars.iv.i352 to i32 ; 2 uses
  %i.awc = sub nsw i32 %i.awb, %.2536.i           ; 2 uses
  %i.awd = mul nsw i32 %i.awc, %i.awc
  %i.awe = add nuw nsw i32 %i.awd, %i.auq
  %.not570.i = icmp samesign ugt i32 %i.awe, %i.ags
  br i1 %.not570.i, label %.loopexit.i353, label %.preheader.i355

.preheader.i355:                                  ; preds = %bb.jp
  %i.awf = sub nsw i32 %.2536.i, %i.awb
  %i.awg = sitofp i32 %i.awf to float             ; 6 uses
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.sink.i681.i, i64 %indvars.iv.i352
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !46
  %i.awj = load float, ptr %gep995.i, align 4, !tbaa !46
  %i.awk = fsub float %i.awi, %i.awj
  %i.awl = call float @llvm.fabs.f32(float %i.awk)
  %i.awm = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !21
  %.not571.i = icmp eq i8 %i.awn, 2               ; 3 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %.sink.i703.i, i64 %indvars.iv.i352
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !21
  %.not574.i = icmp eq i8 %i.awp, 2               ; 3 uses
  %i.awq = load i32, ptr %i.agt, align 4, !tbaa !148
  %i.awr = icmp slt i32 %i.awq, 2                 ; 22 uses
  %i.aws = load ptr, ptr %i.agu, align 8, !tbaa !149 ; 22 uses
  %i.awt = load i64, ptr %i.agv, align 8          ; 22 uses
  %i.awu = mul i64 %i.awt, %i.auw
  %.sink.idx.i720.i = select i1 %i.awr, i64 0, i64 %i.awu
  %.sink.i721.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i720.i
  %i.awv = getelementptr inbounds [3 x i8], ptr %.sink.i721.i, i64 %i.avs ; 3 uses
  %i.aww = getelementptr inbounds i8, ptr %.sink.i679.i, i64 %i.avs
  %81 = add nsw i64 %indvars.iv.i352, %.neg568.i  ; 3 uses
  %sext1085.i = shl i64 %80, 32
  %82 = ashr exact i64 %sext1085.i, 32            ; 3 uses
  %gep1089.i = getelementptr i8, ptr %invariant.gep1088.i, i64 %indvars.iv.i352
  %i.awx = insertelement <2 x float> poison, float %i.awg, i64 0
  %i.awy = shufflevector <2 x float> %i.awx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.awz = insertelement <2 x float> %i.awy, float %.sroa.01053.0.i, i64 1
  %i.axa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awy, <2 x float> %i.awz, <2 x float> %i.avm) ; 2 uses
  %i.axb = extractelement <2 x float> %i.axa, i64 0
  %i.axc = fpext float %i.awl to double
  %i.axd = fadd double %i.axc, 1.000000e+00
  %i.axe = fpext float %i.axb to double           ; 2 uses
  %sqrt.i = call nnan double @llvm.sqrt.f64(double %i.axe)
  %i.axf = fmul double %sqrt.i, %i.axe
  %i.axg = insertelement <2 x double> poison, double %i.axf, i64 0
  %i.axh = insertelement <2 x double> %i.axg, double %i.axd, i64 1
  %i.axi = fdiv <2 x double> splat (double 1.000000e+00), %i.axh
  %i.axj = fptrunc <2 x double> %i.axi to <2 x float> ; 2 uses
  %shift2139 = shufflevector <2 x float> %i.axj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2140 = fmul <2 x float> %shift2139, %i.axj
  %i.axk = extractelement <2 x float> %foldExtExtBinop2140, i64 0 ; 3 uses
  %i.axl = extractelement <2 x float> %i.axa, i64 1 ; 2 uses
  %i.axm = call float @llvm.fabs.f32(float %i.axl)
  %i.axn = fpext float %i.axm to double
  %i.axo = fcmp ole double %i.axn, 1.000000e-02
  %spec.store.select.i = select i1 %i.axo, float f0x358637BD, float %i.axl
  %i.axp = fmul float %spec.store.select.i, %i.axk
  %i.axq = call float @llvm.fabs.f32(float %i.axp) ; 3 uses
  %i.axr = load i8, ptr %i.aww, align 1, !tbaa !21
  %.not572.i = icmp eq i8 %i.axr, 2               ; 2 uses
  br i1 %.not571.i, label %bb.jt, label %bb.jq

bb.jq:                                            ; preds = %.preheader.i355
  %i.axs = mul i64 %i.awt, %i.aux
  %.sink.idx.i692.i = select i1 %i.awr, i64 0, i64 %i.axs
  %.sink.i693.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i692.i ; 2 uses
  %i.axt = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.i, i64 %81
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !21
  %i.axv = zext i8 %i.axu to i32                  ; 2 uses
  %i.axw = getelementptr [3 x i8], ptr %.sink.i693.i, i64 %i.avv ; 2 uses
  br i1 %.not572.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.axx = getelementptr i8, ptr %i.axw, i64 -3
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !21
  %i.axz = zext i8 %i.axy to i32
  %i.aya = sub nsw i32 %i.axv, %i.axz
  %i.ayb = sitofp i32 %i.aya to float
  %i.ayc = fmul nnan float %i.ayb, 2.000000e+00
  br label %bb.jv

bb.js:                                            ; preds = %bb.jq
  %i.ayd = load i8, ptr %i.axw, align 1, !tbaa !21
  %i.aye = zext i8 %i.ayd to i32
  %i.ayf = sub nsw i32 %i.axv, %i.aye
  %i.ayg = sitofp i32 %i.ayf to float
  br label %bb.jv

bb.jt:                                            ; preds = %.preheader.i355
  br i1 %.not572.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.ayh = mul i64 %i.awt, %i.aux
  %.sink.idx.i698.i = select i1 %i.awr, i64 0, i64 %i.ayh
  %.sink.i699.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i698.i ; 2 uses
  %i.ayi = getelementptr inbounds [3 x i8], ptr %.sink.i699.i, i64 %82
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !21
  %i.ayk = zext i8 %i.ayj to i32
  %i.ayl = getelementptr [3 x i8], ptr %.sink.i699.i, i64 %i.avv
  %i.aym = getelementptr i8, ptr %i.ayl, i64 -3
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !21
  %i.ayo = zext i8 %i.ayn to i32
  %i.ayp = sub nsw i32 %i.ayk, %i.ayo
  %i.ayq = sitofp i32 %i.ayp to float
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js, %bb.jr
  %.not572.2.i = phi i1 [ false, %bb.jr ], [ false, %bb.ju ], [ true, %bb.js ], [ true, %bb.jt ] ; 4 uses
  %.sroa.0871.0.i = phi float [ %i.ayc, %bb.jr ], [ %i.ayq, %bb.ju ], [ %i.ayg, %bb.js ], [ 0.000000e+00, %bb.jt ]
  %i.ayr = load i8, ptr %gep1089.i, align 1, !tbaa !21
  %.not575.i = icmp eq i8 %i.ayr, 2               ; 2 uses
  br i1 %.not574.i, label %bb.jz, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.ays = mul i64 %i.awt, %i.auz
  %.sink.idx.i710.i = select i1 %i.awr, i64 0, i64 %i.ays
  %.sink.i711.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i710.i
  %i.ayt = getelementptr inbounds [3 x i8], ptr %.sink.i711.i, i64 %i.avv
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !21
  %i.ayv = zext i8 %i.ayu to i32                  ; 2 uses
  br i1 %.not575.i, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ayw = mul i64 %i.awt, %i.avb
  %.sink.idx.i708.i = select i1 %i.awr, i64 0, i64 %i.ayw
  %.sink.i709.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i708.i
  %i.ayx = getelementptr inbounds [3 x i8], ptr %.sink.i709.i, i64 %i.avv
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !21
  %i.ayz = zext i8 %i.ayy to i32
  %i.aza = sub nsw i32 %i.ayv, %i.ayz
  %i.azb = sitofp i32 %i.aza to float
  %i.azc = fmul nnan float %i.azb, 2.000000e+00
  br label %bb.kb

bb.jy:                                            ; preds = %bb.jw
  %i.azd = mul i64 %i.awt, %i.aux
  %.sink.idx.i712.i = select i1 %i.awr, i64 0, i64 %i.azd
  %.sink.i713.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i712.i
  %i.aze = getelementptr inbounds [3 x i8], ptr %.sink.i713.i, i64 %i.avv
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !21
  %i.azg = zext i8 %i.azf to i32
  %i.azh = sub nsw i32 %i.ayv, %i.azg
  %i.azi = sitofp i32 %i.azh to float
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jv
  br i1 %.not575.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.azj = mul i64 %i.awt, %i.avc
  %.sink.idx.i716.i = select i1 %i.awr, i64 0, i64 %i.azj
  %.sink.i717.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i716.i
  %i.azk = getelementptr inbounds [3 x i8], ptr %.sink.i717.i, i64 %i.avv
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !21
  %i.azm = zext i8 %i.azl to i32
  %i.azn = mul i64 %i.awt, %i.avb
  %.sink.idx.i718.i = select i1 %i.awr, i64 0, i64 %i.azn
  %.sink.i719.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i718.i
  %i.azo = getelementptr inbounds [3 x i8], ptr %.sink.i719.i, i64 %i.avv
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !21
  %i.azq = zext i8 %i.azp to i32
  %i.azr = sub nsw i32 %i.azm, %i.azq
  %i.azs = sitofp i32 %i.azr to float
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz, %bb.jy, %bb.jx
  %.not575.2.i = phi i1 [ false, %bb.jx ], [ false, %bb.ka ], [ true, %bb.jy ], [ true, %bb.jz ] ; 4 uses
  %.sroa.8872.0.i = phi float [ %i.azc, %bb.jx ], [ %i.azs, %bb.ka ], [ %i.azi, %bb.jy ], [ 0.000000e+00, %bb.jz ]
  %i.azt = load i8, ptr %i.awv, align 1, !tbaa !21
  %i.azu = uitofp i8 %i.azt to float
  %i.azv = fmul float %.sroa.0871.0.i, %i.awg
  %i.azw = fneg float %i.axq                      ; 2 uses
  %i.azx = fmul float %.sroa.8872.0.i, %i.aus
  %i.azy = insertelement <2 x float> poison, float %i.axq, i64 0
  %i.azz = insertelement <2 x float> %i.azy, float %i.azw, i64 1
  %i.baa = insertelement <2 x float> poison, float %i.azu, i64 0
  %i.bab = insertelement <2 x float> %i.baa, float %i.azx, i64 1
  %i.bac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azz, <2 x float> %i.bab, <2 x float> %i.avp)
  %i.bad = fadd float %.sroa.0.2.i, %i.axq
  %i.bae = insertelement <2 x float> poison, float %i.azw, i64 0
  %i.baf = insertelement <2 x float> %i.bae, float %i.awg, i64 1
  %i.bag = insertelement <2 x float> %i.ari, float %i.azv, i64 0
  %i.bah = insertelement <2 x float> %i.avn, float %.sroa.01047.2.i, i64 0
  %i.bai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.baf, <2 x float> %i.bag, <2 x float> %i.bah) ; 2 uses
  %i.baj = extractelement <2 x float> %i.bai, i64 1 ; 2 uses
  %i.bak = call float @llvm.fabs.f32(float %i.baj)
  %i.bal = fpext float %i.bak to double
  %i.bam = fcmp ole double %i.bal, 1.000000e-02
  %spec.store.select.1.i = select i1 %i.bam, float f0x358637BD, float %i.baj
  %i.ban = fmul float %spec.store.select.1.i, %i.axk
  %i.bao = call float @llvm.fabs.f32(float %i.ban) ; 3 uses
  br i1 %.not571.i, label %bb.kf, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bap = mul i64 %i.awt, %i.aux
  %.sink.idx.i692.1.i = select i1 %i.awr, i64 0, i64 %i.bap
  %.sink.i693.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i692.1.i ; 2 uses
  %i.baq = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.1.i, i64 %81
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 1
  %i.bas = load i8, ptr %i.bar, align 1, !tbaa !21
  %i.bat = zext i8 %i.bas to i32                  ; 2 uses
  %i.bau = getelementptr [3 x i8], ptr %.sink.i693.1.i, i64 %i.avv ; 2 uses
  br i1 %.not572.2.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bav = getelementptr i8, ptr %i.bau, i64 -2
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !21
  %i.bax = zext i8 %i.baw to i32
  %i.bay = sub nsw i32 %i.bat, %i.bax
  %i.baz = sitofp i32 %i.bay to float
  %i.bba = fmul nnan float %i.baz, 2.000000e+00
  br label %bb.kh

bb.ke:                                            ; preds = %bb.kc
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bau, i64 1
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !21
  %i.bbd = zext i8 %i.bbc to i32
  %i.bbe = sub nsw i32 %i.bat, %i.bbd
  %i.bbf = sitofp i32 %i.bbe to float
  br label %bb.kh

bb.kf:                                            ; preds = %bb.kb
  br i1 %.not572.2.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bbg = mul i64 %i.awt, %i.aux
  %.sink.idx.i698.1.i = select i1 %i.awr, i64 0, i64 %i.bbg
  %.sink.i699.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i698.1.i ; 2 uses
  %i.bbh = getelementptr inbounds [3 x i8], ptr %.sink.i699.1.i, i64 %82
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 1
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !21
  %i.bbk = zext i8 %i.bbj to i32
  %i.bbl = getelementptr [3 x i8], ptr %.sink.i699.1.i, i64 %i.avv
  %i.bbm = getelementptr i8, ptr %i.bbl, i64 -2
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !21
  %i.bbo = zext i8 %i.bbn to i32
  %i.bbp = sub nsw i32 %i.bbk, %i.bbo
  %i.bbq = sitofp i32 %i.bbp to float
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf, %bb.ke, %bb.kd
  %.sroa.0871.0.1.i = phi float [ %i.bba, %bb.kd ], [ %i.bbq, %bb.kg ], [ %i.bbf, %bb.ke ], [ 0.000000e+00, %bb.kf ]
  br i1 %.not574.i, label %bb.kl, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bbr = mul i64 %i.awt, %i.auz
  %.sink.idx.i710.1.i = select i1 %i.awr, i64 0, i64 %i.bbr
  %.sink.i711.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i710.1.i
  %i.bbs = getelementptr inbounds [3 x i8], ptr %.sink.i711.1.i, i64 %i.avv
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 1
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !21
  %i.bbv = zext i8 %i.bbu to i32                  ; 2 uses
  br i1 %.not575.2.i, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bbw = mul i64 %i.awt, %i.avb
  %.sink.idx.i708.1.i = select i1 %i.awr, i64 0, i64 %i.bbw
  %.sink.i709.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i708.1.i
  %i.bbx = getelementptr inbounds [3 x i8], ptr %.sink.i709.1.i, i64 %i.avv
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 1
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !21
  %i.bca = zext i8 %i.bbz to i32
  %i.bcb = sub nsw i32 %i.bbv, %i.bca
  %i.bcc = sitofp i32 %i.bcb to float
  %i.bcd = fmul nnan float %i.bcc, 2.000000e+00
  br label %bb.kn

bb.kk:                                            ; preds = %bb.ki
  %i.bce = mul i64 %i.awt, %i.aux
  %.sink.idx.i712.1.i = select i1 %i.awr, i64 0, i64 %i.bce
  %.sink.i713.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i712.1.i
  %i.bcf = getelementptr inbounds [3 x i8], ptr %.sink.i713.1.i, i64 %i.avv
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 1
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !21
  %i.bci = zext i8 %i.bch to i32
  %i.bcj = sub nsw i32 %i.bbv, %i.bci
  %i.bck = sitofp i32 %i.bcj to float
  br label %bb.kn

bb.kl:                                            ; preds = %bb.kh
  br i1 %.not575.2.i, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bcl = mul i64 %i.awt, %i.avc
  %.sink.idx.i716.1.i = select i1 %i.awr, i64 0, i64 %i.bcl
  %.sink.i717.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i716.1.i
  %i.bcm = getelementptr inbounds [3 x i8], ptr %.sink.i717.1.i, i64 %i.avv
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 1
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !21
  %i.bcp = zext i8 %i.bco to i32
  %i.bcq = mul i64 %i.awt, %i.avb
  %.sink.idx.i718.1.i = select i1 %i.awr, i64 0, i64 %i.bcq
  %.sink.i719.1.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i718.1.i
  %i.bcr = getelementptr inbounds [3 x i8], ptr %.sink.i719.1.i, i64 %i.avv
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 1
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !21
  %i.bcu = zext i8 %i.bct to i32
  %i.bcv = sub nsw i32 %i.bcp, %i.bcu
  %i.bcw = sitofp i32 %i.bcv to float
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl, %bb.kk, %bb.kj
  %.sroa.8872.0.1.i = phi float [ %i.bcd, %bb.kj ], [ %i.bcw, %bb.km ], [ %i.bck, %bb.kk ], [ 0.000000e+00, %bb.kl ]
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.awv, i64 1
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !21
  %i.bcz = uitofp i8 %i.bcy to float
  %i.bda = fmul float %.sroa.0871.0.1.i, %i.awg
  %i.bdb = fneg float %i.bao                      ; 2 uses
  %i.bdc = fmul float %.sroa.8872.0.1.i, %i.aus
  %i.bdd = insertelement <2 x float> poison, float %i.bao, i64 0
  %i.bde = insertelement <2 x float> %i.bdd, float %i.bdb, i64 1
  %i.bdf = insertelement <2 x float> poison, float %i.bcz, i64 0
  %i.bdg = insertelement <2 x float> %i.bdf, float %i.bdc, i64 1
  %i.bdh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bde, <2 x float> %i.bdg, <2 x float> %i.avq)
  %i.bdi = fadd float %.sroa.6.2.i, %i.bao
  %i.bdj = insertelement <2 x float> poison, float %i.bdb, i64 0
  %i.bdk = insertelement <2 x float> %i.bdj, float %i.awg, i64 1
  %i.bdl = insertelement <2 x float> %i.arj, float %i.bda, i64 0
  %i.bdm = insertelement <2 x float> %i.avr, float %i.avj, i64 1
  %i.bdn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bdk, <2 x float> %i.bdl, <2 x float> %i.bdm) ; 2 uses
  %i.bdo = extractelement <2 x float> %i.bdn, i64 1 ; 2 uses
  %i.bdp = call float @llvm.fabs.f32(float %i.bdo)
  %i.bdq = fpext float %i.bdp to double
  %i.bdr = fcmp ole double %i.bdq, 1.000000e-02
  %spec.store.select.2.i = select i1 %i.bdr, float f0x358637BD, float %i.bdo
  %i.bds = fmul float %spec.store.select.2.i, %i.axk
  %i.bdt = call float @llvm.fabs.f32(float %i.bds) ; 3 uses
  br i1 %.not571.i, label %bb.kr, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bdu = mul i64 %i.awt, %i.aux
  %.sink.idx.i692.2.i = select i1 %i.awr, i64 0, i64 %i.bdu
  %.sink.i693.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i692.2.i ; 2 uses
  %i.bdv = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.2.i, i64 %81
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 2
  %i.bdx = load i8, ptr %i.bdw, align 1, !tbaa !21
  %i.bdy = zext i8 %i.bdx to i32                  ; 2 uses
  %i.bdz = getelementptr [3 x i8], ptr %.sink.i693.2.i, i64 %i.avv ; 2 uses
  br i1 %.not572.2.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bea = getelementptr i8, ptr %i.bdz, i64 -1
  %i.beb = load i8, ptr %i.bea, align 1, !tbaa !21
  %i.bec = zext i8 %i.beb to i32
  %i.bed = sub nsw i32 %i.bdy, %i.bec
  %i.bee = sitofp i32 %i.bed to float
  %i.bef = fmul nnan float %i.bee, 2.000000e+00
  br label %bb.kt

bb.kq:                                            ; preds = %bb.ko
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdz, i64 2
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !21
  %i.bei = zext i8 %i.beh to i32
  %i.bej = sub nsw i32 %i.bdy, %i.bei
  %i.bek = sitofp i32 %i.bej to float
  br label %bb.kt

bb.kr:                                            ; preds = %bb.kn
  br i1 %.not572.2.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.bel = mul i64 %i.awt, %i.aux
  %.sink.idx.i698.2.i = select i1 %i.awr, i64 0, i64 %i.bel
  %.sink.i699.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i698.2.i ; 2 uses
  %i.bem = getelementptr inbounds [3 x i8], ptr %.sink.i699.2.i, i64 %82
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 2
  %i.beo = load i8, ptr %i.ben, align 1, !tbaa !21
  %i.bep = zext i8 %i.beo to i32
  %i.beq = getelementptr [3 x i8], ptr %.sink.i699.2.i, i64 %i.avv
  %i.ber = getelementptr i8, ptr %i.beq, i64 -1
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !21
  %i.bet = zext i8 %i.bes to i32
  %i.beu = sub nsw i32 %i.bep, %i.bet
  %i.bev = sitofp i32 %i.beu to float
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kq, %bb.kp
  %.sroa.0871.0.2.i = phi float [ %i.bef, %bb.kp ], [ %i.bev, %bb.ks ], [ %i.bek, %bb.kq ], [ 0.000000e+00, %bb.kr ]
  br i1 %.not574.i, label %bb.kx, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bew = mul i64 %i.awt, %i.auz
  %.sink.idx.i710.2.i = select i1 %i.awr, i64 0, i64 %i.bew
  %.sink.i711.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i710.2.i
  %i.bex = getelementptr inbounds [3 x i8], ptr %.sink.i711.2.i, i64 %i.avv
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 2
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !21
  %i.bfa = zext i8 %i.bez to i32                  ; 2 uses
  br i1 %.not575.2.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bfb = mul i64 %i.awt, %i.avb
  %.sink.idx.i708.2.i = select i1 %i.awr, i64 0, i64 %i.bfb
  %.sink.i709.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i708.2.i
  %i.bfc = getelementptr inbounds [3 x i8], ptr %.sink.i709.2.i, i64 %i.avv
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 2
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !21
  %i.bff = zext i8 %i.bfe to i32
  %i.bfg = sub nsw i32 %i.bfa, %i.bff
  %i.bfh = sitofp i32 %i.bfg to float
  %i.bfi = fmul nnan float %i.bfh, 2.000000e+00
  br label %.loopexit.loopexit.i

bb.kw:                                            ; preds = %bb.ku
  %i.bfj = mul i64 %i.awt, %i.aux
  %.sink.idx.i712.2.i = select i1 %i.awr, i64 0, i64 %i.bfj
  %.sink.i713.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i712.2.i
  %i.bfk = getelementptr inbounds [3 x i8], ptr %.sink.i713.2.i, i64 %i.avv
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 2
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !21
  %i.bfn = zext i8 %i.bfm to i32
  %i.bfo = sub nsw i32 %i.bfa, %i.bfn
  %i.bfp = sitofp i32 %i.bfo to float
  br label %.loopexit.loopexit.i

bb.kx:                                            ; preds = %bb.kt
  br i1 %.not575.2.i, label %.loopexit.loopexit.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bfq = mul i64 %i.awt, %i.avc
  %.sink.idx.i716.2.i = select i1 %i.awr, i64 0, i64 %i.bfq
  %.sink.i717.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i716.2.i
  %i.bfr = getelementptr inbounds [3 x i8], ptr %.sink.i717.2.i, i64 %i.avv
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 2
  %i.bft = load i8, ptr %i.bfs, align 1, !tbaa !21
  %i.bfu = zext i8 %i.bft to i32
  %i.bfv = mul i64 %i.awt, %i.avb
  %.sink.idx.i718.2.i = select i1 %i.awr, i64 0, i64 %i.bfv
  %.sink.i719.2.i = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.sink.idx.i718.2.i
  %i.bfw = getelementptr inbounds [3 x i8], ptr %.sink.i719.2.i, i64 %i.avv
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 2
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !21
  %i.bfz = zext i8 %i.bfy to i32
  %i.bga = sub nsw i32 %i.bfu, %i.bfz
  %i.bgb = sitofp i32 %i.bga to float
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.ky, %bb.kx, %bb.kw, %bb.kv
  %.sroa.8872.0.2.i = phi float [ %i.bfi, %bb.kv ], [ %i.bgb, %bb.ky ], [ %i.bfp, %bb.kw ], [ 0.000000e+00, %bb.kx ]
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.awv, i64 2
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !21
  %i.bge = uitofp i8 %i.bgd to float
  %i.bgf = fmul float %.sroa.0871.0.2.i, %i.awg
  %i.bgg = fneg float %i.bdt                      ; 2 uses
  %i.bgh = fmul float %.sroa.8872.0.2.i, %i.aus
  %i.bgi = insertelement <2 x float> poison, float %i.bdt, i64 0
  %i.bgj = insertelement <2 x float> %i.bgi, float %i.bgg, i64 1
  %i.bgk = insertelement <2 x float> poison, float %i.bge, i64 0
  %i.bgl = insertelement <2 x float> %i.bgk, float %i.bgh, i64 1
  %i.bgm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgj, <2 x float> %i.bgl, <2 x float> %i.avo)
  %i.bgn = fadd float %.sroa.9.2.i, %i.bdt
  %i.bgo = extractelement <2 x float> %i.avr, i64 1
  %i.bgp = call float @llvm.fmuladd.f32(float %i.bgg, float %i.bgf, float %i.bgo)
  %i.bgq = extractelement <2 x float> %i.bai, i64 0
  %i.bgr = insertelement <2 x float> %i.bdn, float %i.bgp, i64 1
  br label %.loopexit.i353

.loopexit.i353:                                   ; preds = %.loopexit.loopexit.i, %bb.jp, %bb.jo, %.lr.ph999.split.split.i
  %.sroa.01047.3.i = phi float [ %.sroa.01047.2.i, %bb.jo ], [ %.sroa.01047.2.i, %bb.jp ], [ %i.bgq, %.loopexit.loopexit.i ], [ %.sroa.01047.2.i, %.lr.ph999.split.split.i ] ; 2 uses
  %.sroa.9.3.i = phi float [ %.sroa.9.2.i, %bb.jo ], [ %.sroa.9.2.i, %bb.jp ], [ %i.bgn, %.loopexit.loopexit.i ], [ %.sroa.9.2.i, %.lr.ph999.split.split.i ] ; 2 uses
  %.sroa.6.3.i = phi float [ %.sroa.6.2.i, %bb.jo ], [ %.sroa.6.2.i, %bb.jp ], [ %i.bdi, %.loopexit.loopexit.i ], [ %.sroa.6.2.i, %.lr.ph999.split.split.i ] ; 2 uses
  %.sroa.0.3.i = phi float [ %.sroa.0.2.i, %bb.jo ], [ %.sroa.0.2.i, %bb.jp ], [ %i.bad, %.loopexit.loopexit.i ], [ %.sroa.0.2.i, %.lr.ph999.split.split.i ] ; 2 uses
  %i.bgs = phi <2 x float> [ %i.avo, %bb.jo ], [ %i.avo, %bb.jp ], [ %i.bgm, %.loopexit.loopexit.i ], [ %i.avo, %.lr.ph999.split.split.i ] ; 2 uses
  %i.bgt = phi <2 x float> [ %i.avp, %bb.jo ], [ %i.avp, %bb.jp ], [ %i.bac, %.loopexit.loopexit.i ], [ %i.avp, %.lr.ph999.split.split.i ] ; 2 uses
  %i.bgu = phi <2 x float> [ %i.avq, %bb.jo ], [ %i.avq, %bb.jp ], [ %i.bdh, %.loopexit.loopexit.i ], [ %i.avq, %.lr.ph999.split.split.i ] ; 2 uses
  %i.bgv = phi <2 x float> [ %i.avr, %bb.jo ], [ %i.avr, %bb.jp ], [ %i.bgr, %.loopexit.loopexit.i ], [ %i.avr, %.lr.ph999.split.split.i ] ; 2 uses
  %indvars.iv.next.i354 = add nsw i64 %indvars.iv.i352, 1
  %.not567.not.i = icmp slt i64 %indvars.iv.i352, %i.arg
  br i1 %.not567.not.i, label %.lr.ph999.split.split.i, label %._crit_edge1000.i, !llvm.loop !98

._crit_edge1000.i:                                ; preds = %.loopexit.i353, %.lr.ph999.split.i, %.lr.ph999.i
  %.sroa.01047.4.i = phi float [ %.sroa.01047.1.i, %.lr.ph999.split.i ], [ %.sroa.01047.1.i, %.lr.ph999.i ], [ %.sroa.01047.3.i, %.loopexit.i353 ] ; 4 uses
  %.sroa.9.4.i = phi float [ %.sroa.9.1.i, %.lr.ph999.split.i ], [ %.sroa.9.1.i, %.lr.ph999.i ], [ %.sroa.9.3.i, %.loopexit.i353 ] ; 2 uses
  %.sroa.6.4.i = phi float [ %.sroa.6.1.i, %.lr.ph999.split.i ], [ %.sroa.6.1.i, %.lr.ph999.i ], [ %.sroa.6.3.i, %.loopexit.i353 ] ; 2 uses
  %.sroa.0.4.i = phi float [ %.sroa.0.1.i, %.lr.ph999.split.i ], [ %.sroa.0.1.i, %.lr.ph999.i ], [ %.sroa.0.3.i, %.loopexit.i353 ] ; 2 uses
  %i.bgw = phi <2 x float> [ %i.aud, %.lr.ph999.split.i ], [ %i.aud, %.lr.ph999.i ], [ %i.bgs, %.loopexit.i353 ] ; 3 uses
  %i.bgx = phi <2 x float> [ %i.aue, %.lr.ph999.split.i ], [ %i.aue, %.lr.ph999.i ], [ %i.bgt, %.loopexit.i353 ] ; 3 uses
  %i.bgy = phi <2 x float> [ %i.auf, %.lr.ph999.split.i ], [ %i.auf, %.lr.ph999.i ], [ %i.bgu, %.loopexit.i353 ] ; 3 uses
  %i.bgz = phi <2 x float> [ %i.aug, %.lr.ph999.split.i ], [ %i.aug, %.lr.ph999.i ], [ %i.bgv, %.loopexit.i353 ] ; 4 uses
  %.not565.i = icmp sgt i32 %i.auu, %i.aqw
  br i1 %.not565.i, label %.preheader914.loopexit.i, label %.lr.ph999.i, !llvm.loop !99

bb.kz:                                            ; preds = %.noexc358, %bb.gw, %bb.gv, %bb.gu, %bb.gt
  %i.bha = add nuw nsw i32 %.05281011.i, 1        ; 2 uses
  %exitcond1031.not.i = icmp eq i32 %i.bha, 4
  br i1 %exitcond1031.not.i, label %.loopexit916.i, label %bb.gp, !llvm.loop !100

.loopexit918.i:                                   ; preds = %bb.ns
  %i.bhb = load ptr, ptr %i.afl, align 8, !tbaa !47 ; 2 uses
  %i.bhc = load ptr, ptr %i.afo, align 8, !tbaa !47
  %.not909.i = icmp eq ptr %i.bhb, %i.bhc
  br i1 %.not909.i, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.la, !llvm.loop !101

bb.la:                                            ; preds = %.loopexit918.i, %.lr.ph973.i
  %i.bhd = phi ptr [ %i.afp, %.lr.ph973.i ], [ %i.bhb, %.loopexit918.i ] ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 4
  %i.bhf = load i32, ptr %i.bhe, align 4, !tbaa !169 ; 5 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.afl)
          to label %.noexc359 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc359:                                        ; preds = %bb.la
  %i.bhi = load i32, ptr %i.afr, align 4, !tbaa !148
  %i.bhj = icmp slt i32 %i.bhi, 2
  %i.bhk = load ptr, ptr %i.afs, align 8, !tbaa !149
  %i.bhl = load i64, ptr %i.aft, align 8
  %i.bhm = sext i32 %i.bhf to i64
  %i.bhn = mul i64 %i.bhl, %i.bhm
  %.sink.idx.i727.i = select i1 %i.bhj, i64 0, i64 %i.bhn
  %.sink.i728.i = getelementptr inbounds nuw i8, ptr %i.bhk, i64 %.sink.idx.i727.i
  %i.bho = sext i32 %i.bhh to i64
  %i.bhp = getelementptr inbounds i8, ptr %.sink.i728.i, i64 %i.bho
  store i8 0, ptr %i.bhp, align 1, !tbaa !21
  %i.bhq = add nsw i32 %i.bhh, 1
  %i.bhr = add nsw i32 %i.bhf, 1
  %i.bhs = add nsw i32 %i.bhh, -1
  %i.bht = add nsw i32 %i.bhf, -1
  br label %bb.lb

bb.lb:                                            ; preds = %bb.ns, %.noexc359
  %.1529971.i = phi i32 [ 0, %.noexc359 ], [ %i.bwr, %bb.ns ] ; 2 uses
  switch i32 %.1529971.i, label %default.unreachable908.i [
    i32 0, label %bb.lf
    i32 1, label %bb.lc
    i32 2, label %bb.ld
    i32 3, label %bb.le
  ]

bb.lc:                                            ; preds = %bb.lb
  br label %bb.lf

bb.ld:                                            ; preds = %bb.lb
  br label %bb.lf

bb.le:                                            ; preds = %bb.lb
  br label %bb.lf

default.unreachable908.i:                         ; preds = %bb.lb
  unreachable

bb.lf:                                            ; preds = %bb.le, %bb.ld, %bb.lc, %bb.lb
  %.5543.i = phi i32 [ %i.bhf, %bb.le ], [ %i.bhf, %bb.lc ], [ %i.bhr, %bb.ld ], [ %i.bht, %bb.lb ]
  %.5.i = phi i32 [ %i.bhq, %bb.le ], [ %i.bhs, %bb.lc ], [ %i.bhh, %bb.ld ], [ %i.bhh, %bb.lb ] ; 10 uses
  %.5543.fr.i = freeze i32 %.5543.i               ; 10 uses
  %i.bhu = icmp slt i32 %.5543.fr.i, 1
  %i.bhv = icmp slt i32 %.5.i, 1
  %or.cond5.i = select i1 %i.bhu, i1 true, i1 %i.bhv
  br i1 %or.cond5.i, label %bb.ns, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bhw = load i32, ptr %i.afu, align 8, !tbaa !146 ; 3 uses
  %.not.i333 = icmp slt i32 %.5543.fr.i, %i.bhw
  br i1 %.not.i333, label %bb.lh, label %bb.ns

bb.lh:                                            ; preds = %bb.lg
  %i.bhx = load i32, ptr %i.afv, align 4, !tbaa !145 ; 3 uses
  %.not544.i = icmp slt i32 %.5.i, %i.bhx
  br i1 %.not544.i, label %bb.li, label %bb.ns

bb.li:                                            ; preds = %bb.lh
  %i.bhy = load i32, ptr %i.afr, align 4, !tbaa !148
  %i.bhz = icmp slt i32 %i.bhy, 2                 ; 9 uses
  %i.bia = load ptr, ptr %i.afs, align 8, !tbaa !149 ; 9 uses
  %i.bib = load i64, ptr %i.aft, align 8          ; 3 uses
end_hunk_0
begin_hunk_1_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
bb.mk:                                            ; preds = %bb.mj
  %i.bly = fadd double %i.blt, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.ml:                                            ; preds = %bb.mj
  %i.blz = fadd double %i.bjz, %i.bkx
  %i.bma = fneg double %i.blv
  %i.bmb = call double @llvm.fmuladd.f64(double %i.bma, double %i.blv, double 2.000000e+00)
  %i.bmc = call double @sqrt(double noundef %i.bmb) #20
  %i.bmd = fadd double %i.blz, %i.bmc
  %i.bme = fmul double %i.bmd, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mm:                                            ; preds = %bb.mi
  %i.bmf = fadd double %i.bjz, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mn:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i
  br i1 %.not31.i776.i, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bmg = fadd double %i.bkx, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mp:                                            ; preds = %bb.mn
  %i.bmh = fadd double %i.blt, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i: ; preds = %bb.mp, %bb.mo, %bb.mm, %bb.ml, %bb.mk
  %.0.i777.i = phi double [ %i.bly, %bb.mk ], [ %i.bme, %bb.ml ], [ %i.bmf, %bb.mm ], [ %i.bmg, %bb.mo ], [ %i.bmh, %bb.mp ]
  %i.bmi = fptrunc double %.0.i777.i to float     ; 2 uses
  %i.bmj = fcmp ogt float %i.bjt, %i.bks
  %i.bmk = select i1 %i.bmj, float %i.bks, float %i.bjt ; 2 uses
  %i.bml = fcmp ogt float %i.blr, %i.bmi
  %i.bmm = select i1 %i.bml, float %i.bmi, float %i.blr ; 2 uses
  %i.bmn = fcmp ogt float %i.bmk, %i.bmm
  %i.bmo = select i1 %i.bmn, float %i.bmm, float %i.bmk ; 2 uses
  %i.bmp = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i734.i, i64 %i.bie
  store float %i.bmo, ptr %i.bmp, align 4, !tbaa !46
  %i.bmq = sub nsw i32 %.5543.fr.i, %i.dl
  %i.bmr = add nuw nsw i32 %.5543.fr.i, %i.dl
  %i.bms = sub nsw i32 %.5.i, %i.dl
  %i.bmt = add nuw nsw i32 %.5.i, %i.dl
  %i.bmu = load i64, ptr %i.aft, align 8          ; 6 uses
  %i.bmv = mul i64 %i.bmu, %i.bic
  %.sink.idx.i781.i = select i1 %i.bhz, i64 0, i64 %i.bmv
  %.sink.i782.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.sink.idx.i781.i ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sink.i782.i, i64 %i.bku
  %i.bmx = load i8, ptr %i.bmw, align 1, !tbaa !21
  %.not545.i = icmp eq i8 %i.bmx, 2
  %i.bmy = getelementptr inbounds nuw i8, ptr %.sink.i782.i, i64 %i.biu
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !21
  %.not546.i = icmp eq i8 %i.bmz, 2               ; 2 uses
  br i1 %.not545.i, label %bb.mt, label %bb.mq

bb.mq:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i
  %i.bna = load i64, ptr %i.afy, align 8
  %i.bnb = mul i64 %i.bna, %i.bic
  %.sink.idx.i789.i = select i1 %i.bil, i64 0, i64 %i.bnb
  %.sink.i790.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i789.i ; 3 uses
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i, i64 %i.bku
  %i.bnd = load float, ptr %i.bnc, align 4, !tbaa !46 ; 2 uses
  br i1 %.not546.i, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i, i64 %i.biu
  %i.bnf = load float, ptr %i.bne, align 4, !tbaa !46
  %i.bng = fsub float %i.bnd, %i.bnf
  %i.bnh = fmul float %i.bng, 5.000000e-01
  br label %bb.mv

bb.ms:                                            ; preds = %bb.mq
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i, i64 %i.bie
  %i.bnj = load float, ptr %i.bni, align 4, !tbaa !46
  %i.bnk = fsub float %i.bnd, %i.bnj
  br label %bb.mv

bb.mt:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i
  br i1 %.not546.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bnl = load i64, ptr %i.afy, align 8
  %i.bnm = mul i64 %i.bnl, %i.bic
  %.sink.idx.i795.i = select i1 %i.bil, i64 0, i64 %i.bnm
  %.sink.i796.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i795.i ; 2 uses
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i, i64 %i.bie
  %i.bno = load float, ptr %i.bnn, align 4, !tbaa !46
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i, i64 %i.biu
  %i.bnq = load float, ptr %i.bnp, align 4, !tbaa !46
  %i.bnr = fsub float %i.bno, %i.bnq
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt, %bb.ms, %bb.mr
  %.sroa.0865.0.i = phi float [ %i.bnh, %bb.mr ], [ %i.bnr, %bb.mu ], [ %i.bnk, %bb.ms ], [ 0.000000e+00, %bb.mt ]
  %i.bns = mul i64 %i.bmu, %i.bjv
  %.sink.idx.i799.i = select i1 %i.bhz, i64 0, i64 %i.bns
  %.sink.i800.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.sink.idx.i799.i
  %i.bnt = getelementptr inbounds nuw i8, ptr %.sink.i800.i, i64 %i.bie
  %i.bnu = load i8, ptr %i.bnt, align 1, !tbaa !21
  %.not548.i = icmp eq i8 %i.bnu, 2
  %i.bnv = mul i64 %i.bmu, %i.bio
  %.sink.idx.i811.i = select i1 %i.bhz, i64 0, i64 %i.bnv
  %.sink.i812.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.sink.idx.i811.i
  %i.bnw = getelementptr inbounds nuw i8, ptr %.sink.i812.i, i64 %i.bie
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !21
  %.not549.i = icmp eq i8 %i.bnx, 2               ; 2 uses
  %.pre1972 = load i64, ptr %i.afy, align 8       ; 7 uses
  br i1 %.not548.i, label %bb.mz, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bny = mul i64 %.pre1972, %i.bjv
  %.sink.idx.i807.i = select i1 %i.bil, i64 0, i64 %i.bny
  %.sink.i808.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i807.i
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i808.i, i64 %i.bie
  %i.boa = load float, ptr %i.bnz, align 4, !tbaa !46 ; 2 uses
  br i1 %.not549.i, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.bob = mul i64 %.pre1972, %i.bio
  %.sink.idx.i805.i = select i1 %i.bil, i64 0, i64 %i.bob
  %.sink.i806.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i805.i
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i806.i, i64 %i.bie
  %i.bod = load float, ptr %i.boc, align 4, !tbaa !46
  %i.boe = fsub float %i.boa, %i.bod
  %i.bof = fmul float %i.boe, 5.000000e-01
  br label %bb.nb

bb.my:                                            ; preds = %bb.mw
  %i.bog = mul i64 %.pre1972, %i.bic
  %.sink.idx.i809.i = select i1 %i.bil, i64 0, i64 %i.bog
  %.sink.i810.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i809.i
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %.sink.i810.i, i64 %i.bie
  %i.boi = load float, ptr %i.boh, align 4, !tbaa !46
  %i.boj = fsub float %i.boa, %i.boi
  br label %bb.nb

bb.mz:                                            ; preds = %bb.mv
  br i1 %.not549.i, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bok = mul i64 %.pre1972, %i.bic
  %.sink.idx.i813.i = select i1 %i.bil, i64 0, i64 %i.bok
  %.sink.i814.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i813.i
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %.sink.i814.i, i64 %i.bie
  %i.bom = load float, ptr %i.bol, align 4, !tbaa !46
  %i.bon = mul i64 %.pre1972, %i.bio
  %.sink.idx.i815.i = select i1 %i.bil, i64 0, i64 %i.bon
  %.sink.i816.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i815.i
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %.sink.i816.i, i64 %i.bie
  %i.bop = load float, ptr %i.boo, align 4, !tbaa !46
  %i.boq = fsub float %i.bom, %i.bop
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz, %bb.my, %bb.mx
  %.sroa.8866.0.i = phi float [ %i.bof, %bb.mx ], [ %i.boq, %bb.na ], [ %i.boj, %bb.my ], [ 0.000000e+00, %bb.mz ]
  %i.bor = add nsw i32 %i.bhw, -2
  %i.bos = add nsw i32 %i.bhw, -1
  %i.bot = add nsw i32 %i.bhx, -2
  %i.bou = add nsw i32 %i.bhx, -1
  %invariant.gep1086.i = getelementptr [4 x i8], ptr %i.bim, i64 %i.bie
  %i.bov = mul i64 %.pre1972, %i.bic
  %.sink.idx.i821.i = select i1 %i.bil, i64 0, i64 %i.bov
  %gep1087.i = getelementptr i8, ptr %invariant.gep1086.i, i64 %.sink.idx.i821.i
  br label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %._crit_edge.i337, %bb.nb
  %.0959.i = phi float [ f0x1E3CE508, %bb.nb ], [ %.us-phi933.i, %._crit_edge.i337 ] ; 3 uses
  %.0522956.i = phi float [ 0.000000e+00, %bb.nb ], [ %.us-phi.i, %._crit_edge.i337 ] ; 3 uses
  %.1533955.i = phi i32 [ %i.bmq, %bb.nb ], [ %i.bpp, %._crit_edge.i337 ] ; 10 uses
  %i.bow = phi <2 x float> [ zeroinitializer, %bb.nb ], [ %i.bvl, %._crit_edge.i337 ] ; 3 uses
  %i.box = add nsw i32 %.1533955.i, -1            ; 3 uses
  %i.boy = icmp eq i32 %.1533955.i, 1
  %i.boz = zext i1 %i.boy to i32
  %i.bpa = add nuw nsw i32 %i.box, %i.boz         ; 2 uses
  %i.bpb = icmp eq i32 %.1533955.i, %i.bor
  %.neg.i = sext i1 %i.bpb to i32                 ; 2 uses
  %i.bpc = add nsw i32 %i.box, %.neg.i
  %i.bpd = icmp sgt i32 %.1533955.i, 0
  %i.bpe = zext nneg i32 %.1533955.i to i64       ; 2 uses
  %i.bpf = mul i64 %i.bmu, %i.bpe
  %.sink.idx.i817.i = select i1 %i.bhz, i64 0, i64 %i.bpf
  %.sink.i818.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.sink.idx.i817.i ; 2 uses
  %i.bpg = sub nsw i32 %.1533955.i, %.5543.fr.i   ; 2 uses
  %i.bph = mul nsw i32 %i.bpg, %i.bpg
  %i.bpi = sub nsw i32 %.5543.fr.i, %.1533955.i
  %i.bpj = sitofp i32 %i.bpi to float             ; 2 uses
  %i.bpk = insertelement <2 x float> poison, float %i.bpj, i64 0 ; 2 uses
  %i.bpl = insertelement <2 x float> %i.bpk, float %.sroa.8866.0.i, i64 1
  %i.bpm = shufflevector <2 x float> %i.bpk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpn = fmul <2 x float> %i.bpl, %i.bpm
  %i.bpo = sext i32 %i.bpa to i64                 ; 3 uses
  %i.bpp = add i32 %.1533955.i, 1                 ; 3 uses
  %i.bpq = zext nneg i32 %i.bpp to i64
  %i.bpr = mul i64 %i.bmu, %i.bpq
  %.sink.idx.i841.i = select i1 %i.bhz, i64 0, i64 %i.bpr
  %.sink.i842.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.sink.idx.i841.i
  %i.bps = zext nneg i32 %i.box to i64            ; 2 uses
  %i.bpt = mul i64 %i.bmu, %i.bps
  %.sink.idx.i843.i = select i1 %i.bhz, i64 0, i64 %i.bpt
  %.sink.i844.i = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.sink.idx.i843.i
  %i.bpu = add nsw i32 %.1533955.i, %.neg.i
  %i.bpv = sext i32 %i.bpu to i64
  %i.bpw = add nsw i32 %i.bpa, -1
  %i.bpx = sext i32 %i.bpw to i64                 ; 2 uses
  %i.bpy = sext i32 %i.bpc to i64
  br i1 %i.bpd, label %.lr.ph.split.i, label %._crit_edge.i337

.lr.ph.split.i:                                   ; preds = %.lr.ph.i336
  %i.bpz = icmp slt i32 %.1533955.i, %i.bos
  %.fr953.i = freeze i1 %i.bpz
  br i1 %.fr953.i, label %.lr.ph.split.split.i.preheader, label %._crit_edge.i337

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.split.i
  %i.bqa = mul i64 %.pre1972, %i.bpe
  %.sink.idx.i819.i = select i1 %i.bil, i64 0, i64 %i.bqa
  %.sink.i820.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 %.sink.idx.i819.i
  %i.bqb = insertelement <2 x float> poison, float %i.bpj, i64 1
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.split.i.preheader, %bb.nr
  %.1927.i = phi float [ %.2.i, %bb.nr ], [ %.0959.i, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %.1523924.i = phi float [ %.2524.i, %bb.nr ], [ %.0522956.i, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %.1531922.i = phi i32 [ %i.bvk, %bb.nr ], [ %i.bms, %.lr.ph.split.split.i.preheader ] ; 11 uses
  %i.bqc = phi <2 x float> [ %i.bvj, %bb.nr ], [ %i.bow, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %i.bqd = add nsw i32 %.1531922.i, -1            ; 3 uses
  %i.bqe = icmp eq i32 %.1531922.i, 1
  %i.bqf = zext i1 %i.bqe to i32
  %i.bqg = add nuw nsw i32 %i.bqd, %i.bqf         ; 4 uses
  %i.bqh = icmp eq i32 %.1531922.i, %i.bot
  %.neg553.i = sext i1 %i.bqh to i32              ; 2 uses
  %i.bqi = add nsw i32 %i.bqd, %.neg553.i
  %i.bqj = icmp sgt i32 %.1531922.i, 0
  %i.bqk = icmp slt i32 %.1531922.i, %i.bou
  %or.cond1015.i = select i1 %i.bqj, i1 %i.bqk, i1 false
  br i1 %or.cond1015.i, label %bb.nc, label %bb.nr

bb.nc:                                            ; preds = %.lr.ph.split.split.i
  %i.bql = zext nneg i32 %.1531922.i to i64       ; 4 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %.sink.i818.i, i64 %i.bql ; 2 uses
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !21
  %.not554.i = icmp eq i8 %i.bqn, 2
  br i1 %.not554.i, label %bb.nr, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.bqo = sub nsw i32 %.1531922.i, %.5.i         ; 2 uses
  %i.bqp = mul nsw i32 %i.bqo, %i.bqo
  %i.bqq = add nuw nsw i32 %i.bqp, %i.bph
  %.not555.i = icmp samesign ugt i32 %i.bqq, %i.afz
  br i1 %.not555.i, label %bb.nr, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bqr = sub nsw i32 %.5.i, %.1531922.i
  %i.bqs = sitofp i32 %i.bqr to float             ; 2 uses
  %i.bqt = getelementptr inbounds nuw [4 x i8], ptr %.sink.i820.i, i64 %i.bql
  %i.bqu = load float, ptr %i.bqt, align 4, !tbaa !46
  %i.bqv = load float, ptr %gep1087.i, align 4, !tbaa !46
  %i.bqw = fsub float %i.bqu, %i.bqv
  %i.bqx = insertelement <2 x float> poison, float %i.bqs, i64 0
  %i.bqy = shufflevector <2 x float> %i.bqx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bqz = insertelement <2 x float> %i.bqy, float %.sroa.0865.0.i, i64 1
  %i.bra = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bqy, <2 x float> %i.bqz, <2 x float> %i.bpn) ; 3 uses
  %i.brb = extractelement <2 x float> %i.bra, i64 0 ; 2 uses
  %sqrt912.i = call nnan float @llvm.sqrt.f32(float %i.brb)
  %i.brc = fmul float %i.brb, %sqrt912.i
  %i.brd = fdiv float 1.000000e+00, %i.brc
  %i.bre = extractelement <2 x float> %i.bra, i64 1
  %i.brf = insertelement <2 x float> %i.bra, float %i.bqw, i64 0
  %i.brg = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.brf)
  %i.brh = fpext <2 x float> %i.brg to <2 x double> ; 2 uses
  %i.bri = extractelement <2 x double> %i.brh, i64 0
  %i.brj = fadd double %i.bri, 1.000000e+00
  %i.brk = fdiv double 1.000000e+00, %i.brj
  %i.brl = fptrunc double %i.brk to float
  %i.brm = extractelement <2 x double> %i.brh, i64 1
  %i.brn = fcmp ole double %i.brm, 1.000000e-02
  %spec.store.select8.i = select i1 %i.brn, float f0x358637BD, float %i.bre
  %i.bro = fmul float %i.brd, %i.brl
  %i.brp = fmul float %spec.store.select8.i, %i.bro
  %i.brq = call float @llvm.fabs.f32(float %i.brp) ; 3 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bqm, i64 1
  %i.brs = load i8, ptr %i.brr, align 1, !tbaa !21
  %.not556.i = icmp eq i8 %i.brs, 2
  %i.brt = zext nneg i32 %i.bqd to i64            ; 2 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %.sink.i818.i, i64 %i.brt
  %i.brv = load i8, ptr %i.bru, align 1, !tbaa !21
  %.not557.i = icmp eq i8 %i.brv, 2               ; 2 uses
  br i1 %.not556.i, label %bb.ni, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.brw = add nsw i32 %.1531922.i, %.neg553.i
  %i.brx = load i32, ptr %i.aga, align 4, !tbaa !148 ; 3 uses
  %i.bry = icmp slt i32 %i.brx, 2
  %i.brz = load ptr, ptr %i.agb, align 8, !tbaa !149
  %i.bsa = load i64, ptr %i.agc, align 8
  %i.bsb = mul i64 %i.bsa, %i.bpo
  %.sink.idx.i831.i = select i1 %i.bry, i64 0, i64 %i.bsb
  %.sink.i832.i = getelementptr inbounds nuw i8, ptr %i.brz, i64 %.sink.idx.i831.i ; 2 uses
  %i.bsc = zext nneg i32 %i.brw to i64
  %i.bsd = getelementptr inbounds nuw i8, ptr %.sink.i832.i, i64 %i.bsc
  %i.bse = load i8, ptr %i.bsd, align 1, !tbaa !21
  %i.bsf = zext i8 %i.bse to i32                  ; 2 uses
  %i.bsg = sext i32 %i.bqg to i64
  %i.bsh = getelementptr i8, ptr %.sink.i832.i, i64 %i.bsg ; 2 uses
  br i1 %.not557.i, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bsi = getelementptr i8, ptr %i.bsh, i64 -1
  %i.bsj = load i8, ptr %i.bsi, align 1, !tbaa !21
  %i.bsk = zext i8 %i.bsj to i32
  %i.bsl = sub nsw i32 %i.bsf, %i.bsk
  %i.bsm = sitofp i32 %i.bsl to float
  %i.bsn = fmul nnan float %i.bsm, 2.000000e+00
  br label %bb.nk

bb.nh:                                            ; preds = %bb.nf
  %i.bso = load i8, ptr %i.bsh, align 1, !tbaa !21
  %i.bsp = zext i8 %i.bso to i32
  %i.bsq = sub nsw i32 %i.bsf, %i.bsp
  %i.bsr = sitofp i32 %i.bsq to float
  br label %bb.nk

bb.ni:                                            ; preds = %bb.ne
  %.pre1055.i.pre = load i32, ptr %i.aga, align 4, !tbaa !148 ; 3 uses
  br i1 %.not557.i, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bss = icmp slt i32 %.pre1055.i.pre, 2
  %i.bst = load ptr, ptr %i.agb, align 8, !tbaa !149
  %i.bsu = load i64, ptr %i.agc, align 8
  %i.bsv = mul i64 %i.bsu, %i.bpo
  %.sink.idx.i837.i = select i1 %i.bss, i64 0, i64 %i.bsv
  %.sink.i838.i = getelementptr inbounds nuw i8, ptr %i.bst, i64 %.sink.idx.i837.i ; 2 uses
  %i.bsw = sext i32 %i.bqi to i64
  %i.bsx = getelementptr inbounds i8, ptr %.sink.i838.i, i64 %i.bsw
  %i.bsy = load i8, ptr %i.bsx, align 1, !tbaa !21
  %i.bsz = zext i8 %i.bsy to i32
  %i.bta = sext i32 %i.bqg to i64
  %i.btb = getelementptr i8, ptr %.sink.i838.i, i64 %i.bta
  %i.btc = getelementptr i8, ptr %i.btb, i64 -1
  %i.btd = load i8, ptr %i.btc, align 1, !tbaa !21
  %i.bte = zext i8 %i.btd to i32
  %i.btf = sub nsw i32 %i.bsz, %i.bte
  %i.btg = sitofp i32 %i.btf to float
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni, %bb.nh, %bb.ng
  %.pre1055.i = phi i32 [ %i.brx, %bb.ng ], [ %.pre1055.i.pre, %bb.nj ], [ %i.brx, %bb.nh ], [ %.pre1055.i.pre, %bb.ni ] ; 3 uses
  %.sroa.0867.0.i = phi float [ %i.bsn, %bb.ng ], [ %i.btg, %bb.nj ], [ %i.bsr, %bb.nh ], [ 0.000000e+00, %bb.ni ]
  %i.bth = getelementptr inbounds nuw i8, ptr %.sink.i842.i, i64 %i.bql
  %i.bti = load i8, ptr %i.bth, align 1, !tbaa !21
  %.not559.i = icmp eq i8 %i.bti, 2
  %i.btj = getelementptr inbounds nuw i8, ptr %.sink.i844.i, i64 %i.bql
  %i.btk = load i8, ptr %i.btj, align 1, !tbaa !21
  %.not560.i = icmp eq i8 %i.btk, 2               ; 2 uses
  br i1 %.not559.i, label %bb.no, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.btl = icmp slt i32 %.pre1055.i, 2            ; 3 uses
  %i.btm = load ptr, ptr %i.agb, align 8, !tbaa !149 ; 5 uses
  %i.btn = load i64, ptr %i.agc, align 8          ; 5 uses
  %i.bto = mul i64 %i.btn, %i.bpv
  %.sink.idx.i849.i = select i1 %i.btl, i64 0, i64 %i.bto
  %.sink.i850.i = getelementptr inbounds nuw i8, ptr %i.btm, i64 %.sink.idx.i849.i
  %i.btp = sext i32 %i.bqg to i64                 ; 3 uses
  %i.btq = getelementptr inbounds i8, ptr %.sink.i850.i, i64 %i.btp
  %i.btr = load i8, ptr %i.btq, align 1, !tbaa !21
  %i.bts = zext i8 %i.btr to i32                  ; 2 uses
  br i1 %.not560.i, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.btt = mul i64 %i.btn, %i.bpx
  %.sink.idx.i847.i = select i1 %i.btl, i64 0, i64 %i.btt
  %.sink.i848.i = getelementptr inbounds nuw i8, ptr %i.btm, i64 %.sink.idx.i847.i
  %i.btu = getelementptr inbounds i8, ptr %.sink.i848.i, i64 %i.btp
  %i.btv = load i8, ptr %i.btu, align 1, !tbaa !21
  %i.btw = zext i8 %i.btv to i32
  %i.btx = sub nsw i32 %i.bts, %i.btw
  %i.bty = sitofp i32 %i.btx to float
  %i.btz = fmul nnan float %i.bty, 2.000000e+00
  br label %bb.nq

bb.nn:                                            ; preds = %bb.nl
  %i.bua = mul i64 %i.btn, %i.bpo
  %.sink.idx.i851.i = select i1 %i.btl, i64 0, i64 %i.bua
  %.sink.i852.i = getelementptr inbounds nuw i8, ptr %i.btm, i64 %.sink.idx.i851.i
  %i.bub = getelementptr inbounds i8, ptr %.sink.i852.i, i64 %i.btp
  %i.buc = load i8, ptr %i.bub, align 1, !tbaa !21
  %i.bud = zext i8 %i.buc to i32
  %i.bue = sub nsw i32 %i.bts, %i.bud
  %i.buf = sitofp i32 %i.bue to float
  br label %bb.nq

bb.no:                                            ; preds = %bb.nk
  %.pre1056.i = load ptr, ptr %i.agb, align 8, !tbaa !149 ; 4 uses
  %.pre1057.i = load i64, ptr %i.agc, align 8     ; 4 uses
  br i1 %.not560.i, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bug = icmp slt i32 %.pre1055.i, 2            ; 2 uses
  %i.buh = mul i64 %.pre1057.i, %i.bpy
  %.sink.idx.i855.i = select i1 %i.bug, i64 0, i64 %i.buh
end_hunk_1
begin_hunk_2_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.chk = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i668, i64 %i.bzk
  %i.chl = load float, ptr %i.chk, align 4, !tbaa !46
  %i.chm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i668, i64 %i.caa
  %i.chn = load float, ptr %i.chm, align 4, !tbaa !46
  %i.cho = fsub float %i.chl, %i.chn
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.ql, %bb.qk, %bb.qj
  %.sroa.23.0.i555 = phi float [ %i.che, %bb.qj ], [ %i.cho, %bb.qm ], [ %i.chh, %bb.qk ], [ 0.000000e+00, %bb.ql ]
  %.pre1971 = load i64, ptr %i.bxy, align 8       ; 7 uses
  br i1 %.not580.i535, label %bb.qr, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.chp = mul i64 %.pre1971, %i.cbb
  %.sink.idx.i668.2.i556 = select i1 %i.bzr, i64 0, i64 %i.chp
  %gep1001.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i668.2.i556
  %i.chq = load float, ptr %gep1001.2.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not581.2.i545, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.chr = mul i64 %.pre1971, %i.bzu
  %.sink.idx.i666.2.i557 = select i1 %i.bzr, i64 0, i64 %i.chr
  %gep999.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i666.2.i557
  %i.chs = load float, ptr %gep999.2.i, align 4, !tbaa !46
  %i.cht = fsub float %i.chq, %i.chs
  %i.chu = fmul float %i.cht, 5.000000e-01
  br label %bb.qt

bb.qq:                                            ; preds = %bb.qo
  %i.chv = mul i64 %.pre1971, %i.bzi
  %.sink.idx.i670.2.i664 = select i1 %i.bzr, i64 0, i64 %i.chv
  %gep1003.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i670.2.i664
  %i.chw = load float, ptr %gep1003.2.i, align 4, !tbaa !46
  %i.chx = fsub float %i.chq, %i.chw
  br label %bb.qt

bb.qr:                                            ; preds = %bb.qn
  br i1 %.not581.2.i545, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.chy = mul i64 %.pre1971, %i.bzi
  %.sink.idx.i674.2.i665 = select i1 %i.bzr, i64 0, i64 %i.chy
  %gep1007.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i674.2.i665
  %i.chz = load float, ptr %gep1007.2.i, align 4, !tbaa !46
  %i.cia = mul i64 %.pre1971, %i.bzu
  %.sink.idx.i676.2.i666 = select i1 %i.bzr, i64 0, i64 %i.cia
  %gep1009.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i676.2.i666
  %i.cib = load float, ptr %gep1009.2.i, align 4, !tbaa !46
  %i.cic = fsub float %i.chz, %i.cib
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qr, %bb.qq, %bb.qp
  %.sroa.28.0.i558 = phi float [ %i.chu, %bb.qp ], [ %i.cic, %bb.qs ], [ %i.chx, %bb.qq ], [ 0.000000e+00, %bb.qr ]
  %i.cid = add nuw nsw i32 %.2540.fr.i496, %i.dl
  %i.cie = add nsw i32 %i.bzc, -2
  %i.cif = add nsw i32 %i.bzd, -2
  %i.cig = add nsw i32 %i.bzc, -1
  %i.cih = add nsw i32 %i.bzd, -1
  %i.cii = add nuw nsw i32 %.2536.i495, %i.dl
  %i.cij = sub nsw i32 %.2536.i495, %i.dl
  %i.cik = sub nsw i32 %.2540.fr.i496, %i.dl
  %i.cil = sext i32 %i.cij to i64
  %i.cim = zext nneg i32 %i.cih to i64
  %i.cin = zext nneg i32 %i.cii to i64
  %sext.i559 = zext nneg i32 %i.cif to i64
  %i.cio = mul i64 %.pre1971, %i.bzi
  %.sink.idx.i682.i603 = select i1 %i.bzr, i64 0, i64 %i.cio
  %gep1017.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i682.i603
  %i.cip = insertelement <2 x float> poison, float %.sroa.13.0.i549, i64 1
  %i.ciq = insertelement <2 x float> poison, float %.sroa.23.0.i555, i64 1
  br label %.lr.ph1021.i

.preheader914.loopexit.i568:                      ; preds = %._crit_edge1022.i
  %i.cir = extractelement <2 x float> %i.cye, i64 1 ; 3 uses
  %i.cis = fmul float %i.cir, %i.cir
  %i.cit = call float @llvm.fmuladd.f32(float %.sroa.01069.4.i, float %.sroa.01069.4.i, float %i.cis)
  %sqrt911.i569 = call float @llvm.sqrt.f32(float %i.cit)
  %i.ciu = fadd float %sqrt911.i569, f0x1E3CE508
  %i.civ = fadd float %.sroa.01069.4.i, %i.cir
  %i.ciw = shufflevector <2 x float> %i.cye, <2 x float> %i.cyf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cix = shufflevector <2 x float> %i.cyd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ciy = shufflevector <4 x float> %i.ciw, <4 x float> %i.cix, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ciz = insertelement <4 x float> %i.ciy, float %i.civ, i64 3
  %i.cja = insertelement <4 x float> poison, float %.sroa.0.4.i566, i64 0
  %i.cjb = insertelement <4 x float> %i.cja, float %.sroa.6.4.i565, i64 1
  %i.cjc = insertelement <4 x float> %i.cjb, float %.sroa.9.4.i564, i64 2
  %i.cjd = insertelement <4 x float> %i.cjc, float %i.ciu, i64 3
  %i.cje = fdiv <4 x float> %i.ciz, %i.cjd        ; 3 uses
  %shift2142 = shufflevector <4 x float> %i.cje, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2143 = fadd <4 x float> %shift2142, %i.cje
  %i.cjf = extractelement <4 x float> %foldExtExtBinop2143, i64 0
  %i.cjg = fpext float %i.cjf to double
  %i.cjh = fadd double %i.cjg, 5.000000e-01
  %i.cji = insertelement <2 x double> poison, double %i.cjh, i64 0
  %i.cjj = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cji)
  %i.cjk = call i32 @llvm.smax.i32(i32 %i.cjj, i32 0)
  %i.cjl = call i32 @llvm.umin.i32(i32 %i.cjk, i32 255)
  %i.cjm = trunc nuw i32 %i.cjl to i8
  %i.cjn = load i32, ptr %i.bya, align 4, !tbaa !148
  %i.cjo = icmp slt i32 %i.cjn, 2
  %i.cjp = load ptr, ptr %i.byb, align 8, !tbaa !149
  %i.cjq = load i64, ptr %i.byc, align 8
  %i.cjr = mul i64 %i.cjq, %i.bzu
  %.sink.idx.i722.i570 = select i1 %i.cjo, i64 0, i64 %i.cjr
  %.sink.i723.i571 = getelementptr inbounds nuw i8, ptr %i.cjp, i64 %.sink.idx.i722.i570
  %i.cjs = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.i571, i64 %i.caa
  store i8 %i.cjm, ptr %i.cjs, align 1, !tbaa !21
  %i.cjt = load i32, ptr %i.bya, align 4, !tbaa !148
  %i.cju = icmp slt i32 %i.cjt, 2
  %i.cjv = load ptr, ptr %i.byb, align 8, !tbaa !149
  %i.cjw = load i64, ptr %i.byc, align 8
  %i.cjx = mul i64 %i.cjw, %i.bzu
  %.sink.idx.i722.1.i573 = select i1 %i.cju, i64 0, i64 %i.cjx
  %.sink.i723.1.i574 = getelementptr inbounds nuw i8, ptr %i.cjv, i64 %.sink.idx.i722.1.i573
  %i.cjy = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.1.i574, i64 %i.caa
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 1
  %i.cka = shufflevector <2 x float> %i.cyf, <2 x float> %i.cyd, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ckb = fadd <2 x float> %i.cyg, %i.cka
  %i.ckc = fmul <2 x float> %i.cka, %i.cka
  %i.ckd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cyg, <2 x float> %i.cyg, <2 x float> %i.ckc)
  %i.cke = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ckd)
  %i.ckf = fadd <2 x float> %i.cke, splat (float f0x1E3CE508)
  %i.ckg = fdiv <2 x float> %i.ckb, %i.ckf
  %i.ckh = shufflevector <4 x float> %i.cje, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cki = fadd <2 x float> %i.ckg, %i.ckh
  %i.ckj = fpext <2 x float> %i.cki to <2 x double>
  %i.ckk = fadd <2 x double> %i.ckj, splat (double 5.000000e-01) ; 2 uses
  %i.ckl = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ckk)
  %i.ckm = call i32 @llvm.smax.i32(i32 %i.ckl, i32 0)
  %i.ckn = call i32 @llvm.umin.i32(i32 %i.ckm, i32 255)
  %i.cko = trunc nuw i32 %i.ckn to i8
  store i8 %i.cko, ptr %i.cjz, align 1, !tbaa !21
  %i.ckp = shufflevector <2 x double> %i.ckk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckq = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ckp)
  %i.ckr = call i32 @llvm.smax.i32(i32 %i.ckq, i32 0)
  %i.cks = call i32 @llvm.umin.i32(i32 %i.ckr, i32 255)
  %i.ckt = trunc nuw i32 %i.cks to i8
  %i.cku = load i32, ptr %i.bya, align 4, !tbaa !148
  %i.ckv = icmp slt i32 %i.cku, 2
  %i.ckw = load ptr, ptr %i.byb, align 8, !tbaa !149
  %i.ckx = load i64, ptr %i.byc, align 8
  %i.cky = mul i64 %i.ckx, %i.bzu
  %.sink.idx.i722.2.i576 = select i1 %i.ckv, i64 0, i64 %i.cky
  %.sink.i723.2.i577 = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %.sink.idx.i722.2.i576
  %i.ckz = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.2.i577, i64 %i.caa
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 2
  store i8 %i.ckt, ptr %i.cla, align 1, !tbaa !21
  %i.clb = load i32, ptr %i.bxr, align 4, !tbaa !148
  %i.clc = icmp slt i32 %i.clb, 2
  %i.cld = load ptr, ptr %i.bxs, align 8, !tbaa !149
  %i.cle = load i64, ptr %i.bxt, align 8
  %i.clf = mul i64 %i.cle, %i.bzi
  %.sink.idx.i724.i578 = select i1 %i.clc, i64 0, i64 %i.clf
  %.sink.i725.i579 = getelementptr inbounds nuw i8, ptr %i.cld, i64 %.sink.idx.i724.i578
  %i.clg = getelementptr inbounds nuw i8, ptr %.sink.i725.i579, i64 %i.bzk
  store i8 1, ptr %i.clg, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store float %i.cdu, ptr %14, align 4, !tbaa !50
  store i32 %.2540.fr.i496, ptr %i.byd, align 4, !tbaa !169
  store i32 %.2536.i495, ptr %i.bye, align 4, !tbaa !170
  %i.clh = load i32, ptr %i.byg, align 8, !tbaa !162
  store i32 %i.clh, ptr %i.byf, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.bws, ptr noundef nonnull align 4 dereferenceable(16) %14)
          to label %.noexc682 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc682:                                        ; preds = %.preheader914.loopexit.i568
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.cli = load i32, ptr %i.byg, align 8, !tbaa !162
  %i.clj = add nsw i32 %i.cli, 1
  store i32 %i.clj, ptr %i.byg, align 8, !tbaa !162
  br label %bb.sf

.lr.ph1021.i:                                     ; preds = %._crit_edge1022.i, %bb.qt
  %.sroa.01069.1.i = phi float [ 0.000000e+00, %bb.qt ], [ %.sroa.01069.4.i, %._crit_edge1022.i ] ; 3 uses
  %.sroa.9.1.i560 = phi float [ f0x1E3CE508, %bb.qt ], [ %.sroa.9.4.i564, %._crit_edge1022.i ] ; 3 uses
  %.sroa.6.1.i561 = phi float [ f0x1E3CE508, %bb.qt ], [ %.sroa.6.4.i565, %._crit_edge1022.i ] ; 3 uses
  %.sroa.0.1.i562 = phi float [ f0x1E3CE508, %bb.qt ], [ %.sroa.0.4.i566, %._crit_edge1022.i ] ; 3 uses
  %.05321029.i = phi i32 [ %i.cik, %bb.qt ], [ %i.cmb, %._crit_edge1022.i ] ; 10 uses
  %i.clk = phi <2 x float> [ zeroinitializer, %bb.qt ], [ %i.cyd, %._crit_edge1022.i ] ; 3 uses
  %i.cll = phi <2 x float> [ zeroinitializer, %bb.qt ], [ %i.cye, %._crit_edge1022.i ] ; 3 uses
  %i.clm = phi <2 x float> [ zeroinitializer, %bb.qt ], [ %i.cyf, %._crit_edge1022.i ] ; 3 uses
  %i.cln = phi <2 x float> [ zeroinitializer, %bb.qt ], [ %i.cyg, %._crit_edge1022.i ] ; 3 uses
  %i.clo = add nsw i32 %.05321029.i, -1           ; 3 uses
  %i.clp = icmp eq i32 %.05321029.i, 1
  %i.clq = zext i1 %i.clp to i32
  %i.clr = add nuw nsw i32 %i.clo, %i.clq         ; 2 uses
  %i.cls = icmp eq i32 %.05321029.i, %i.cie
  %.neg566.i563 = sext i1 %i.cls to i32           ; 2 uses
  %i.clt = add i32 %i.clo, %.neg566.i563
  %i.clu = icmp sgt i32 %.05321029.i, 0
  %i.clv = zext nneg i32 %.05321029.i to i64      ; 2 uses
  %i.clw = sub nsw i32 %.05321029.i, %.2540.fr.i496 ; 2 uses
  %i.clx = mul nsw i32 %i.clw, %i.clw
  %i.cly = sub nsw i32 %.2540.fr.i496, %.05321029.i
  %i.clz = sitofp i32 %i.cly to float             ; 8 uses
  %i.cma = fmul nnan float %i.clz, %i.clz
  %i.cmb = add i32 %.05321029.i, 1                ; 3 uses
  %i.cmc = zext nneg i32 %i.cmb to i64
  %i.cmd = sext i32 %i.clo to i64                 ; 2 uses
  %i.cme = sext i32 %i.clr to i64                 ; 9 uses
  %i.cmf = add nsw i32 %.05321029.i, %.neg566.i563
  %i.cmg = sext i32 %i.cmf to i64                 ; 3 uses
  %i.cmh = add nsw i32 %i.clr, -1
  %i.cmi = sext i32 %i.cmh to i64                 ; 6 uses
  %i.cmj = sext i32 %i.clt to i64                 ; 3 uses
  br i1 %i.clu, label %.lr.ph1021.split.i, label %._crit_edge1022.i

.lr.ph1021.split.i:                               ; preds = %.lr.ph1021.i
  %i.cmk = icmp slt i32 %.05321029.i, %i.cig
  %.fr1027.i = freeze i1 %i.cmk
  br i1 %.fr1027.i, label %.lr.ph1021.split.split.preheader.i, label %._crit_edge1022.i

.lr.ph1021.split.split.preheader.i:               ; preds = %.lr.ph1021.split.i
  %i.cml = mul i64 %i.cdw, %i.clv
  %.sink.idx.i678.i580 = select i1 %i.bzf, i64 0, i64 %i.cml
  %.sink.i679.i581 = getelementptr inbounds nuw i8, ptr %i.bzg, i64 %.sink.idx.i678.i580 ; 2 uses
  %i.cmm = mul i64 %i.cdw, %i.cmc
  %.sink.idx.i702.i582 = select i1 %i.bzf, i64 0, i64 %i.cmm
  %.sink.i703.i583 = getelementptr inbounds nuw i8, ptr %i.bzg, i64 %.sink.idx.i702.i582
  %i.cmn = mul i64 %i.cdw, %i.cmd
  %.sink.idx.i704.i584 = select i1 %i.bzf, i64 0, i64 %i.cmn
  %invariant.gep.i585 = getelementptr i8, ptr %i.bzg, i64 %.sink.idx.i704.i584
  %i.cmo = fmul float %.sroa.8.0.i546, %i.clz
  %i.cmp = fmul float %.sroa.18.0.i552, %i.clz
  %i.cmq = fmul float %.sroa.28.0.i558, %i.clz
  %i.cmr = mul i64 %.pre1971, %i.clv
  %.sink.idx.i680.i601 = select i1 %i.bzr, i64 0, i64 %i.cmr
  %.sink.i681.i602 = getelementptr inbounds nuw i8, ptr %i.bzs, i64 %.sink.idx.i680.i601
  %i.cms = insertelement <2 x float> poison, float %i.cma, i64 0
  %i.cmt = insertelement <2 x float> %i.cms, float %i.cmo, i64 1
  %i.cmu = insertelement <2 x float> poison, float %i.cmp, i64 1
  br label %.lr.ph1021.split.split.i

.lr.ph1021.split.split.i:                         ; preds = %.loopexit.i591, %.lr.ph1021.split.split.preheader.i
  %.sroa.01069.2.i = phi float [ %.sroa.01069.1.i, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.01069.3.i, %.loopexit.i591 ] ; 4 uses
  %.sroa.9.2.i586 = phi float [ %.sroa.9.1.i560, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.9.3.i592, %.loopexit.i591 ] ; 4 uses
  %.sroa.6.2.i587 = phi float [ %.sroa.6.1.i561, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.6.3.i593, %.loopexit.i591 ] ; 4 uses
  %.sroa.0.2.i588 = phi float [ %.sroa.0.1.i562, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.0.3.i594, %.loopexit.i591 ] ; 4 uses
  %indvars.iv.i589 = phi i64 [ %i.cil, %.lr.ph1021.split.split.preheader.i ], [ %indvars.iv.next.i595, %.loopexit.i591 ] ; 13 uses
  %i.cmv = phi <2 x float> [ %i.clk, %.lr.ph1021.split.split.preheader.i ], [ %i.cxz, %.loopexit.i591 ] ; 4 uses
  %i.cmw = phi <2 x float> [ %i.cll, %.lr.ph1021.split.split.preheader.i ], [ %i.cya, %.loopexit.i591 ] ; 4 uses
  %i.cmx = phi <2 x float> [ %i.clm, %.lr.ph1021.split.split.preheader.i ], [ %i.cyb, %.loopexit.i591 ] ; 4 uses
  %i.cmy = phi <2 x float> [ %i.cln, %.lr.ph1021.split.split.preheader.i ], [ %i.cyc, %.loopexit.i591 ] ; 5 uses
  %i.cmz = add nsw i64 %indvars.iv.i589, -1       ; 4 uses
  %i.cna = icmp eq i64 %indvars.iv.i589, 1
  %i.cnb = zext i1 %i.cna to i64
  %i.cnc = add nuw nsw i64 %i.cmz, %i.cnb         ; 21 uses
  %i.cnd = icmp eq i64 %indvars.iv.i589, %sext.i559
  %.neg568.i590 = sext i1 %i.cnd to i64           ; 2 uses
  %83 = add nsw i64 %i.cmz, %.neg568.i590
  %i.cne = icmp sgt i64 %indvars.iv.i589, 0
  %i.cnf = icmp slt i64 %indvars.iv.i589, %i.cim
  %or.cond1036.i = select i1 %i.cne, i1 %i.cnf, i1 false
  br i1 %or.cond1036.i, label %bb.qu, label %.loopexit.i591

bb.qu:                                            ; preds = %.lr.ph1021.split.split.i
  %i.cng = getelementptr inbounds nuw i8, ptr %.sink.i679.i581, i64 %indvars.iv.i589 ; 2 uses
  %i.cnh = load i8, ptr %i.cng, align 1, !tbaa !21
  %.not569.i597 = icmp eq i8 %i.cnh, 2
  br i1 %.not569.i597, label %.loopexit.i591, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.cni = trunc nuw nsw i64 %indvars.iv.i589 to i32 ; 2 uses
  %i.cnj = sub nsw i32 %i.cni, %.2536.i495        ; 2 uses
  %i.cnk = mul nsw i32 %i.cnj, %i.cnj
  %i.cnl = add nuw nsw i32 %i.cnk, %i.clx
  %.not570.i598 = icmp samesign ugt i32 %i.cnl, %i.bxz
  br i1 %.not570.i598, label %.loopexit.i591, label %.preheader.i599

.preheader.i599:                                  ; preds = %bb.qv
  %i.cnm = sub nsw i32 %.2536.i495, %i.cni
  %i.cnn = sitofp i32 %i.cnm to float             ; 6 uses
  %i.cno = getelementptr inbounds nuw [4 x i8], ptr %.sink.i681.i602, i64 %indvars.iv.i589
  %i.cnp = load float, ptr %i.cno, align 4, !tbaa !46
  %i.cnq = load float, ptr %gep1017.i, align 4, !tbaa !46
  %i.cnr = fsub float %i.cnp, %i.cnq
  %i.cns = call float @llvm.fabs.f32(float %i.cnr)
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cng, i64 1
  %i.cnu = load i8, ptr %i.cnt, align 1, !tbaa !21
  %.not571.i604 = icmp eq i8 %i.cnu, 2            ; 3 uses
  %i.cnv = getelementptr inbounds nuw i8, ptr %.sink.i703.i583, i64 %indvars.iv.i589
  %i.cnw = load i8, ptr %i.cnv, align 1, !tbaa !21
  %.not574.i605 = icmp eq i8 %i.cnw, 2            ; 3 uses
  %i.cnx = load i32, ptr %i.bya, align 4, !tbaa !148
  %i.cny = icmp slt i32 %i.cnx, 2                 ; 22 uses
  %i.cnz = load ptr, ptr %i.byb, align 8, !tbaa !149 ; 22 uses
  %i.coa = load i64, ptr %i.byc, align 8          ; 22 uses
  %i.cob = mul i64 %i.coa, %i.cmd
  %.sink.idx.i720.i606 = select i1 %i.cny, i64 0, i64 %i.cob
  %.sink.i721.i607 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i720.i606
  %i.coc = getelementptr inbounds [3 x i8], ptr %.sink.i721.i607, i64 %i.cmz ; 3 uses
  %i.cod = getelementptr inbounds i8, ptr %.sink.i679.i581, i64 %i.cmz
  %84 = add nsw i64 %indvars.iv.i589, %.neg568.i590 ; 3 uses
  %sext1105.i = shl i64 %83, 32
  %85 = ashr exact i64 %sext1105.i, 32            ; 3 uses
  %gep1106.i = getelementptr i8, ptr %invariant.gep.i585, i64 %indvars.iv.i589
  %i.coe = insertelement <2 x float> poison, float %i.cnn, i64 0
  %i.cof = shufflevector <2 x float> %i.coe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cog = insertelement <2 x float> %i.cof, float %.sroa.01075.0.i, i64 1
  %i.coh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cof, <2 x float> %i.cog, <2 x float> %i.cmt) ; 2 uses
  %i.coi = extractelement <2 x float> %i.coh, i64 0
  %i.coj = fpext float %i.cns to double
  %i.cok = fadd double %i.coj, 1.000000e+00
  %i.col = fpext float %i.coi to double           ; 2 uses
  %sqrt.i600 = call nnan double @llvm.sqrt.f64(double %i.col)
  %i.com = fmul double %sqrt.i600, %i.col
  %i.con = insertelement <2 x double> poison, double %i.com, i64 0
  %i.coo = insertelement <2 x double> %i.con, double %i.cok, i64 1
  %i.cop = fdiv <2 x double> splat (double 1.000000e+00), %i.coo
  %i.coq = fptrunc <2 x double> %i.cop to <2 x float> ; 2 uses
  %shift2145 = shufflevector <2 x float> %i.coq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2146 = fmul <2 x float> %shift2145, %i.coq
  %i.cor = extractelement <2 x float> %foldExtExtBinop2146, i64 0 ; 3 uses
  %i.cos = extractelement <2 x float> %i.coh, i64 1 ; 2 uses
  %i.cot = call float @llvm.fabs.f32(float %i.cos)
  %i.cou = fpext float %i.cot to double
  %i.cov = fcmp ole double %i.cou, 1.000000e-02
  %spec.store.select.i608 = select i1 %i.cov, float f0x358637BD, float %i.cos
  %i.cow = fmul float %spec.store.select.i608, %i.cor
  %i.cox = call float @llvm.fabs.f32(float %i.cow) ; 3 uses
  %i.coy = load i8, ptr %i.cod, align 1, !tbaa !21
  %.not572.i609 = icmp eq i8 %i.coy, 2            ; 2 uses
  br i1 %.not571.i604, label %bb.qz, label %bb.qw

bb.qw:                                            ; preds = %.preheader.i599
  %i.coz = mul i64 %i.coa, %i.cme
  %.sink.idx.i692.i610 = select i1 %i.cny, i64 0, i64 %i.coz
  %.sink.i693.i611 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i692.i610 ; 2 uses
  %i.cpa = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.i611, i64 %84
  %i.cpb = load i8, ptr %i.cpa, align 1, !tbaa !21
  %i.cpc = zext i8 %i.cpb to i32                  ; 2 uses
  %i.cpd = getelementptr [3 x i8], ptr %.sink.i693.i611, i64 %i.cnc ; 2 uses
  br i1 %.not572.i609, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.cpe = getelementptr i8, ptr %i.cpd, i64 -3
  %i.cpf = load i8, ptr %i.cpe, align 1, !tbaa !21
  %i.cpg = zext i8 %i.cpf to i32
  %i.cph = sub nsw i32 %i.cpc, %i.cpg
  %i.cpi = sitofp i32 %i.cph to float
  %i.cpj = fmul nnan float %i.cpi, 2.000000e+00
  br label %bb.rb

bb.qy:                                            ; preds = %bb.qw
  %i.cpk = load i8, ptr %i.cpd, align 1, !tbaa !21
  %i.cpl = zext i8 %i.cpk to i32
  %i.cpm = sub nsw i32 %i.cpc, %i.cpl
  %i.cpn = sitofp i32 %i.cpm to float
  br label %bb.rb

bb.qz:                                            ; preds = %.preheader.i599
  br i1 %.not572.i609, label %bb.rb, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.cpo = mul i64 %i.coa, %i.cme
  %.sink.idx.i698.i662 = select i1 %i.cny, i64 0, i64 %i.cpo
  %.sink.i699.i663 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i698.i662 ; 2 uses
  %i.cpp = getelementptr inbounds [3 x i8], ptr %.sink.i699.i663, i64 %85
  %i.cpq = load i8, ptr %i.cpp, align 1, !tbaa !21
  %i.cpr = zext i8 %i.cpq to i32
  %i.cps = getelementptr [3 x i8], ptr %.sink.i699.i663, i64 %i.cnc
  %i.cpt = getelementptr i8, ptr %i.cps, i64 -3
  %i.cpu = load i8, ptr %i.cpt, align 1, !tbaa !21
  %i.cpv = zext i8 %i.cpu to i32
  %i.cpw = sub nsw i32 %i.cpr, %i.cpv
  %i.cpx = sitofp i32 %i.cpw to float
  br label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz, %bb.qy, %bb.qx
  %.not572.2.i612 = phi i1 [ false, %bb.qx ], [ false, %bb.ra ], [ true, %bb.qy ], [ true, %bb.qz ] ; 4 uses
  %.sroa.0871.0.i613 = phi float [ %i.cpj, %bb.qx ], [ %i.cpx, %bb.ra ], [ %i.cpn, %bb.qy ], [ 0.000000e+00, %bb.qz ]
  %i.cpy = load i8, ptr %gep1106.i, align 1, !tbaa !21
  %.not575.i614 = icmp eq i8 %i.cpy, 2            ; 2 uses
  br i1 %.not574.i605, label %bb.rf, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.cpz = mul i64 %i.coa, %i.cmg
  %.sink.idx.i710.i615 = select i1 %i.cny, i64 0, i64 %i.cpz
  %.sink.i711.i616 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i710.i615
  %i.cqa = getelementptr inbounds [3 x i8], ptr %.sink.i711.i616, i64 %i.cnc
  %i.cqb = load i8, ptr %i.cqa, align 1, !tbaa !21
  %i.cqc = zext i8 %i.cqb to i32                  ; 2 uses
  br i1 %.not575.i614, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.cqd = mul i64 %i.coa, %i.cmi
  %.sink.idx.i708.i617 = select i1 %i.cny, i64 0, i64 %i.cqd
  %.sink.i709.i618 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i708.i617
  %i.cqe = getelementptr inbounds [3 x i8], ptr %.sink.i709.i618, i64 %i.cnc
  %i.cqf = load i8, ptr %i.cqe, align 1, !tbaa !21
  %i.cqg = zext i8 %i.cqf to i32
  %i.cqh = sub nsw i32 %i.cqc, %i.cqg
  %i.cqi = sitofp i32 %i.cqh to float
  %i.cqj = fmul nnan float %i.cqi, 2.000000e+00
  br label %bb.rh

bb.re:                                            ; preds = %bb.rc
  %i.cqk = mul i64 %i.coa, %i.cme
  %.sink.idx.i712.i656 = select i1 %i.cny, i64 0, i64 %i.cqk
  %.sink.i713.i657 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i712.i656
  %i.cql = getelementptr inbounds [3 x i8], ptr %.sink.i713.i657, i64 %i.cnc
  %i.cqm = load i8, ptr %i.cql, align 1, !tbaa !21
  %i.cqn = zext i8 %i.cqm to i32
  %i.cqo = sub nsw i32 %i.cqc, %i.cqn
  %i.cqp = sitofp i32 %i.cqo to float
  br label %bb.rh

bb.rf:                                            ; preds = %bb.rb
  br i1 %.not575.i614, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.cqq = mul i64 %i.coa, %i.cmj
  %.sink.idx.i716.i658 = select i1 %i.cny, i64 0, i64 %i.cqq
  %.sink.i717.i659 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i716.i658
  %i.cqr = getelementptr inbounds [3 x i8], ptr %.sink.i717.i659, i64 %i.cnc
  %i.cqs = load i8, ptr %i.cqr, align 1, !tbaa !21
  %i.cqt = zext i8 %i.cqs to i32
  %i.cqu = mul i64 %i.coa, %i.cmi
  %.sink.idx.i718.i660 = select i1 %i.cny, i64 0, i64 %i.cqu
  %.sink.i719.i661 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i718.i660
  %i.cqv = getelementptr inbounds [3 x i8], ptr %.sink.i719.i661, i64 %i.cnc
  %i.cqw = load i8, ptr %i.cqv, align 1, !tbaa !21
  %i.cqx = zext i8 %i.cqw to i32
  %i.cqy = sub nsw i32 %i.cqt, %i.cqx
  %i.cqz = sitofp i32 %i.cqy to float
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %bb.rf, %bb.re, %bb.rd
  %.not575.2.i619 = phi i1 [ false, %bb.rd ], [ false, %bb.rg ], [ true, %bb.re ], [ true, %bb.rf ] ; 4 uses
  %.sroa.8872.0.i620 = phi float [ %i.cqj, %bb.rd ], [ %i.cqz, %bb.rg ], [ %i.cqp, %bb.re ], [ 0.000000e+00, %bb.rf ]
  %i.cra = load i8, ptr %i.coc, align 1, !tbaa !21
  %i.crb = uitofp i8 %i.cra to float
  %i.crc = fmul float %.sroa.0871.0.i613, %i.cnn
  %i.crd = fneg float %i.cox                      ; 2 uses
  %i.cre = fmul float %.sroa.8872.0.i620, %i.clz
  %i.crf = insertelement <2 x float> poison, float %i.cox, i64 0
  %i.crg = insertelement <2 x float> %i.crf, float %i.crd, i64 1
  %i.crh = insertelement <2 x float> poison, float %i.crb, i64 0
  %i.cri = insertelement <2 x float> %i.crh, float %i.cre, i64 1
  %i.crj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.crg, <2 x float> %i.cri, <2 x float> %i.cmw)
  %i.crk = fadd float %.sroa.0.2.i588, %i.cox
  %i.crl = insertelement <2 x float> poison, float %i.crd, i64 0
  %i.crm = insertelement <2 x float> %i.crl, float %i.cnn, i64 1
  %i.crn = insertelement <2 x float> %i.cip, float %i.crc, i64 0
  %i.cro = insertelement <2 x float> %i.cmu, float %.sroa.01069.2.i, i64 0
  %i.crp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.crm, <2 x float> %i.crn, <2 x float> %i.cro) ; 2 uses
  %i.crq = extractelement <2 x float> %i.crp, i64 1 ; 2 uses
  %i.crr = call float @llvm.fabs.f32(float %i.crq)
  %i.crs = fpext float %i.crr to double
  %i.crt = fcmp ole double %i.crs, 1.000000e-02
  %spec.store.select.1.i621 = select i1 %i.crt, float f0x358637BD, float %i.crq
  %i.cru = fmul float %spec.store.select.1.i621, %i.cor
  %i.crv = call float @llvm.fabs.f32(float %i.cru) ; 3 uses
  br i1 %.not571.i604, label %bb.rl, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.crw = mul i64 %i.coa, %i.cme
  %.sink.idx.i692.1.i622 = select i1 %i.cny, i64 0, i64 %i.crw
  %.sink.i693.1.i623 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i692.1.i622 ; 2 uses
  %i.crx = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.1.i623, i64 %84
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crx, i64 1
  %i.crz = load i8, ptr %i.cry, align 1, !tbaa !21
  %i.csa = zext i8 %i.crz to i32                  ; 2 uses
  %i.csb = getelementptr [3 x i8], ptr %.sink.i693.1.i623, i64 %i.cnc ; 2 uses
  br i1 %.not572.2.i612, label %bb.rk, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.csc = getelementptr i8, ptr %i.csb, i64 -2
  %i.csd = load i8, ptr %i.csc, align 1, !tbaa !21
  %i.cse = zext i8 %i.csd to i32
  %i.csf = sub nsw i32 %i.csa, %i.cse
  %i.csg = sitofp i32 %i.csf to float
  %i.csh = fmul nnan float %i.csg, 2.000000e+00
  br label %bb.rn

bb.rk:                                            ; preds = %bb.ri
  %i.csi = getelementptr inbounds nuw i8, ptr %i.csb, i64 1
  %i.csj = load i8, ptr %i.csi, align 1, !tbaa !21
  %i.csk = zext i8 %i.csj to i32
  %i.csl = sub nsw i32 %i.csa, %i.csk
  %i.csm = sitofp i32 %i.csl to float
  br label %bb.rn

bb.rl:                                            ; preds = %bb.rh
  br i1 %.not572.2.i612, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.csn = mul i64 %i.coa, %i.cme
  %.sink.idx.i698.1.i654 = select i1 %i.cny, i64 0, i64 %i.csn
  %.sink.i699.1.i655 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i698.1.i654 ; 2 uses
  %i.cso = getelementptr inbounds [3 x i8], ptr %.sink.i699.1.i655, i64 %85
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cso, i64 1
  %i.csq = load i8, ptr %i.csp, align 1, !tbaa !21
  %i.csr = zext i8 %i.csq to i32
  %i.css = getelementptr [3 x i8], ptr %.sink.i699.1.i655, i64 %i.cnc
  %i.cst = getelementptr i8, ptr %i.css, i64 -2
  %i.csu = load i8, ptr %i.cst, align 1, !tbaa !21
  %i.csv = zext i8 %i.csu to i32
  %i.csw = sub nsw i32 %i.csr, %i.csv
  %i.csx = sitofp i32 %i.csw to float
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl, %bb.rk, %bb.rj
  %.sroa.0871.0.1.i624 = phi float [ %i.csh, %bb.rj ], [ %i.csx, %bb.rm ], [ %i.csm, %bb.rk ], [ 0.000000e+00, %bb.rl ]
  br i1 %.not574.i605, label %bb.rr, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.csy = mul i64 %i.coa, %i.cmg
  %.sink.idx.i710.1.i625 = select i1 %i.cny, i64 0, i64 %i.csy
  %.sink.i711.1.i626 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i710.1.i625
  %i.csz = getelementptr inbounds [3 x i8], ptr %.sink.i711.1.i626, i64 %i.cnc
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csz, i64 1
  %i.ctb = load i8, ptr %i.cta, align 1, !tbaa !21
  %i.ctc = zext i8 %i.ctb to i32                  ; 2 uses
  br i1 %.not575.2.i619, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.ctd = mul i64 %i.coa, %i.cmi
  %.sink.idx.i708.1.i627 = select i1 %i.cny, i64 0, i64 %i.ctd
  %.sink.i709.1.i628 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i708.1.i627
  %i.cte = getelementptr inbounds [3 x i8], ptr %.sink.i709.1.i628, i64 %i.cnc
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cte, i64 1
  %i.ctg = load i8, ptr %i.ctf, align 1, !tbaa !21
  %i.cth = zext i8 %i.ctg to i32
  %i.cti = sub nsw i32 %i.ctc, %i.cth
  %i.ctj = sitofp i32 %i.cti to float
  %i.ctk = fmul nnan float %i.ctj, 2.000000e+00
  br label %bb.rt

bb.rq:                                            ; preds = %bb.ro
  %i.ctl = mul i64 %i.coa, %i.cme
  %.sink.idx.i712.1.i648 = select i1 %i.cny, i64 0, i64 %i.ctl
  %.sink.i713.1.i649 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i712.1.i648
  %i.ctm = getelementptr inbounds [3 x i8], ptr %.sink.i713.1.i649, i64 %i.cnc
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctm, i64 1
  %i.cto = load i8, ptr %i.ctn, align 1, !tbaa !21
  %i.ctp = zext i8 %i.cto to i32
  %i.ctq = sub nsw i32 %i.ctc, %i.ctp
  %i.ctr = sitofp i32 %i.ctq to float
  br label %bb.rt

bb.rr:                                            ; preds = %bb.rn
  br i1 %.not575.2.i619, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.cts = mul i64 %i.coa, %i.cmj
  %.sink.idx.i716.1.i650 = select i1 %i.cny, i64 0, i64 %i.cts
  %.sink.i717.1.i651 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i716.1.i650
  %i.ctt = getelementptr inbounds [3 x i8], ptr %.sink.i717.1.i651, i64 %i.cnc
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctt, i64 1
  %i.ctv = load i8, ptr %i.ctu, align 1, !tbaa !21
  %i.ctw = zext i8 %i.ctv to i32
  %i.ctx = mul i64 %i.coa, %i.cmi
  %.sink.idx.i718.1.i652 = select i1 %i.cny, i64 0, i64 %i.ctx
  %.sink.i719.1.i653 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i718.1.i652
  %i.cty = getelementptr inbounds [3 x i8], ptr %.sink.i719.1.i653, i64 %i.cnc
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.cty, i64 1
  %i.cua = load i8, ptr %i.ctz, align 1, !tbaa !21
  %i.cub = zext i8 %i.cua to i32
  %i.cuc = sub nsw i32 %i.ctw, %i.cub
  %i.cud = sitofp i32 %i.cuc to float
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr, %bb.rq, %bb.rp
  %.sroa.8872.0.1.i629 = phi float [ %i.ctk, %bb.rp ], [ %i.cud, %bb.rs ], [ %i.ctr, %bb.rq ], [ 0.000000e+00, %bb.rr ]
  %i.cue = getelementptr inbounds nuw i8, ptr %i.coc, i64 1
  %i.cuf = load i8, ptr %i.cue, align 1, !tbaa !21
  %i.cug = uitofp i8 %i.cuf to float
  %i.cuh = fmul float %.sroa.0871.0.1.i624, %i.cnn
  %i.cui = fneg float %i.crv                      ; 2 uses
  %i.cuj = fmul float %.sroa.8872.0.1.i629, %i.clz
  %i.cuk = insertelement <2 x float> poison, float %i.crv, i64 0
  %i.cul = insertelement <2 x float> %i.cuk, float %i.cui, i64 1
  %i.cum = insertelement <2 x float> poison, float %i.cug, i64 0
  %i.cun = insertelement <2 x float> %i.cum, float %i.cuj, i64 1
  %i.cuo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cul, <2 x float> %i.cun, <2 x float> %i.cmx)
  %i.cup = fadd float %.sroa.6.2.i587, %i.crv
  %i.cuq = insertelement <2 x float> poison, float %i.cui, i64 0
  %i.cur = insertelement <2 x float> %i.cuq, float %i.cnn, i64 1
  %i.cus = insertelement <2 x float> %i.ciq, float %i.cuh, i64 0
  %i.cut = insertelement <2 x float> %i.cmy, float %i.cmq, i64 1
  %i.cuu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cur, <2 x float> %i.cus, <2 x float> %i.cut) ; 2 uses
  %i.cuv = extractelement <2 x float> %i.cuu, i64 1 ; 2 uses
  %i.cuw = call float @llvm.fabs.f32(float %i.cuv)
  %i.cux = fpext float %i.cuw to double
  %i.cuy = fcmp ole double %i.cux, 1.000000e-02
  %spec.store.select.2.i630 = select i1 %i.cuy, float f0x358637BD, float %i.cuv
  %i.cuz = fmul float %spec.store.select.2.i630, %i.cor
  %i.cva = call float @llvm.fabs.f32(float %i.cuz) ; 3 uses
  br i1 %.not571.i604, label %bb.rx, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.cvb = mul i64 %i.coa, %i.cme
  %.sink.idx.i692.2.i631 = select i1 %i.cny, i64 0, i64 %i.cvb
  %.sink.i693.2.i632 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i692.2.i631 ; 2 uses
  %i.cvc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.2.i632, i64 %84
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cvc, i64 2
  %i.cve = load i8, ptr %i.cvd, align 1, !tbaa !21
  %i.cvf = zext i8 %i.cve to i32                  ; 2 uses
  %i.cvg = getelementptr [3 x i8], ptr %.sink.i693.2.i632, i64 %i.cnc ; 2 uses
  br i1 %.not572.2.i612, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.cvh = getelementptr i8, ptr %i.cvg, i64 -1
  %i.cvi = load i8, ptr %i.cvh, align 1, !tbaa !21
  %i.cvj = zext i8 %i.cvi to i32
  %i.cvk = sub nsw i32 %i.cvf, %i.cvj
  %i.cvl = sitofp i32 %i.cvk to float
  %i.cvm = fmul nnan float %i.cvl, 2.000000e+00
  br label %bb.rz

bb.rw:                                            ; preds = %bb.ru
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvg, i64 2
  %i.cvo = load i8, ptr %i.cvn, align 1, !tbaa !21
  %i.cvp = zext i8 %i.cvo to i32
  %i.cvq = sub nsw i32 %i.cvf, %i.cvp
  %i.cvr = sitofp i32 %i.cvq to float
  br label %bb.rz

bb.rx:                                            ; preds = %bb.rt
  br i1 %.not572.2.i612, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.cvs = mul i64 %i.coa, %i.cme
  %.sink.idx.i698.2.i646 = select i1 %i.cny, i64 0, i64 %i.cvs
  %.sink.i699.2.i647 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i698.2.i646 ; 2 uses
  %i.cvt = getelementptr inbounds [3 x i8], ptr %.sink.i699.2.i647, i64 %85
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 2
  %i.cvv = load i8, ptr %i.cvu, align 1, !tbaa !21
  %i.cvw = zext i8 %i.cvv to i32
  %i.cvx = getelementptr [3 x i8], ptr %.sink.i699.2.i647, i64 %i.cnc
  %i.cvy = getelementptr i8, ptr %i.cvx, i64 -1
  %i.cvz = load i8, ptr %i.cvy, align 1, !tbaa !21
  %i.cwa = zext i8 %i.cvz to i32
  %i.cwb = sub nsw i32 %i.cvw, %i.cwa
  %i.cwc = sitofp i32 %i.cwb to float
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rx, %bb.rw, %bb.rv
  %.sroa.0871.0.2.i633 = phi float [ %i.cvm, %bb.rv ], [ %i.cwc, %bb.ry ], [ %i.cvr, %bb.rw ], [ 0.000000e+00, %bb.rx ]
  br i1 %.not574.i605, label %bb.sd, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.cwd = mul i64 %i.coa, %i.cmg
  %.sink.idx.i710.2.i634 = select i1 %i.cny, i64 0, i64 %i.cwd
  %.sink.i711.2.i635 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i710.2.i634
  %i.cwe = getelementptr inbounds [3 x i8], ptr %.sink.i711.2.i635, i64 %i.cnc
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwe, i64 2
  %i.cwg = load i8, ptr %i.cwf, align 1, !tbaa !21
  %i.cwh = zext i8 %i.cwg to i32                  ; 2 uses
  br i1 %.not575.2.i619, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.cwi = mul i64 %i.coa, %i.cmi
  %.sink.idx.i708.2.i636 = select i1 %i.cny, i64 0, i64 %i.cwi
  %.sink.i709.2.i637 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i708.2.i636
  %i.cwj = getelementptr inbounds [3 x i8], ptr %.sink.i709.2.i637, i64 %i.cnc
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwj, i64 2
  %i.cwl = load i8, ptr %i.cwk, align 1, !tbaa !21
  %i.cwm = zext i8 %i.cwl to i32
  %i.cwn = sub nsw i32 %i.cwh, %i.cwm
  %i.cwo = sitofp i32 %i.cwn to float
  %i.cwp = fmul nnan float %i.cwo, 2.000000e+00
  br label %.loopexit.loopexit.i638

bb.sc:                                            ; preds = %bb.sa
  %i.cwq = mul i64 %i.coa, %i.cme
  %.sink.idx.i712.2.i640 = select i1 %i.cny, i64 0, i64 %i.cwq
  %.sink.i713.2.i641 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i712.2.i640
  %i.cwr = getelementptr inbounds [3 x i8], ptr %.sink.i713.2.i641, i64 %i.cnc
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cwr, i64 2
  %i.cwt = load i8, ptr %i.cws, align 1, !tbaa !21
  %i.cwu = zext i8 %i.cwt to i32
  %i.cwv = sub nsw i32 %i.cwh, %i.cwu
  %i.cww = sitofp i32 %i.cwv to float
  br label %.loopexit.loopexit.i638

bb.sd:                                            ; preds = %bb.rz
  br i1 %.not575.2.i619, label %.loopexit.loopexit.i638, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cwx = mul i64 %i.coa, %i.cmj
  %.sink.idx.i716.2.i642 = select i1 %i.cny, i64 0, i64 %i.cwx
  %.sink.i717.2.i643 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i716.2.i642
  %i.cwy = getelementptr inbounds [3 x i8], ptr %.sink.i717.2.i643, i64 %i.cnc
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 2
  %i.cxa = load i8, ptr %i.cwz, align 1, !tbaa !21
  %i.cxb = zext i8 %i.cxa to i32
  %i.cxc = mul i64 %i.coa, %i.cmi
  %.sink.idx.i718.2.i644 = select i1 %i.cny, i64 0, i64 %i.cxc
  %.sink.i719.2.i645 = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %.sink.idx.i718.2.i644
  %i.cxd = getelementptr inbounds [3 x i8], ptr %.sink.i719.2.i645, i64 %i.cnc
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cxd, i64 2
  %i.cxf = load i8, ptr %i.cxe, align 1, !tbaa !21
  %i.cxg = zext i8 %i.cxf to i32
  %i.cxh = sub nsw i32 %i.cxb, %i.cxg
  %i.cxi = sitofp i32 %i.cxh to float
  br label %.loopexit.loopexit.i638

.loopexit.loopexit.i638:                          ; preds = %bb.se, %bb.sd, %bb.sc, %bb.sb
  %.sroa.8872.0.2.i639 = phi float [ %i.cwp, %bb.sb ], [ %i.cxi, %bb.se ], [ %i.cww, %bb.sc ], [ 0.000000e+00, %bb.sd ]
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.coc, i64 2
  %i.cxk = load i8, ptr %i.cxj, align 1, !tbaa !21
  %i.cxl = uitofp i8 %i.cxk to float
  %i.cxm = fmul float %.sroa.0871.0.2.i633, %i.cnn
  %i.cxn = fneg float %i.cva                      ; 2 uses
  %i.cxo = fmul float %.sroa.8872.0.2.i639, %i.clz
  %i.cxp = insertelement <2 x float> poison, float %i.cva, i64 0
  %i.cxq = insertelement <2 x float> %i.cxp, float %i.cxn, i64 1
  %i.cxr = insertelement <2 x float> poison, float %i.cxl, i64 0
  %i.cxs = insertelement <2 x float> %i.cxr, float %i.cxo, i64 1
  %i.cxt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cxq, <2 x float> %i.cxs, <2 x float> %i.cmv)
  %i.cxu = fadd float %.sroa.9.2.i586, %i.cva
  %i.cxv = extractelement <2 x float> %i.cmy, i64 1
  %i.cxw = call float @llvm.fmuladd.f32(float %i.cxn, float %i.cxm, float %i.cxv)
  %i.cxx = extractelement <2 x float> %i.crp, i64 0
  %i.cxy = insertelement <2 x float> %i.cuu, float %i.cxw, i64 1
  br label %.loopexit.i591

.loopexit.i591:                                   ; preds = %.loopexit.loopexit.i638, %bb.qv, %bb.qu, %.lr.ph1021.split.split.i
  %.sroa.01069.3.i = phi float [ %.sroa.01069.2.i, %bb.qu ], [ %.sroa.01069.2.i, %bb.qv ], [ %i.cxx, %.loopexit.loopexit.i638 ], [ %.sroa.01069.2.i, %.lr.ph1021.split.split.i ] ; 2 uses
  %.sroa.9.3.i592 = phi float [ %.sroa.9.2.i586, %bb.qu ], [ %.sroa.9.2.i586, %bb.qv ], [ %i.cxu, %.loopexit.loopexit.i638 ], [ %.sroa.9.2.i586, %.lr.ph1021.split.split.i ] ; 2 uses
  %.sroa.6.3.i593 = phi float [ %.sroa.6.2.i587, %bb.qu ], [ %.sroa.6.2.i587, %bb.qv ], [ %i.cup, %.loopexit.loopexit.i638 ], [ %.sroa.6.2.i587, %.lr.ph1021.split.split.i ] ; 2 uses
  %.sroa.0.3.i594 = phi float [ %.sroa.0.2.i588, %bb.qu ], [ %.sroa.0.2.i588, %bb.qv ], [ %i.crk, %.loopexit.loopexit.i638 ], [ %.sroa.0.2.i588, %.lr.ph1021.split.split.i ] ; 2 uses
  %i.cxz = phi <2 x float> [ %i.cmv, %bb.qu ], [ %i.cmv, %bb.qv ], [ %i.cxt, %.loopexit.loopexit.i638 ], [ %i.cmv, %.lr.ph1021.split.split.i ] ; 2 uses
  %i.cya = phi <2 x float> [ %i.cmw, %bb.qu ], [ %i.cmw, %bb.qv ], [ %i.crj, %.loopexit.loopexit.i638 ], [ %i.cmw, %.lr.ph1021.split.split.i ] ; 2 uses
  %i.cyb = phi <2 x float> [ %i.cmx, %bb.qu ], [ %i.cmx, %bb.qv ], [ %i.cuo, %.loopexit.loopexit.i638 ], [ %i.cmx, %.lr.ph1021.split.split.i ] ; 2 uses
  %i.cyc = phi <2 x float> [ %i.cmy, %bb.qu ], [ %i.cmy, %bb.qv ], [ %i.cxy, %.loopexit.loopexit.i638 ], [ %i.cmy, %.lr.ph1021.split.split.i ] ; 2 uses
  %indvars.iv.next.i595 = add nsw i64 %indvars.iv.i589, 1
  %.not567.not.i596 = icmp slt i64 %indvars.iv.i589, %i.cin
  br i1 %.not567.not.i596, label %.lr.ph1021.split.split.i, label %._crit_edge1022.i, !llvm.loop !106

._crit_edge1022.i:                                ; preds = %.loopexit.i591, %.lr.ph1021.split.i, %.lr.ph1021.i
  %.sroa.01069.4.i = phi float [ %.sroa.01069.1.i, %.lr.ph1021.split.i ], [ %.sroa.01069.1.i, %.lr.ph1021.i ], [ %.sroa.01069.3.i, %.loopexit.i591 ] ; 4 uses
  %.sroa.9.4.i564 = phi float [ %.sroa.9.1.i560, %.lr.ph1021.split.i ], [ %.sroa.9.1.i560, %.lr.ph1021.i ], [ %.sroa.9.3.i592, %.loopexit.i591 ] ; 2 uses
  %.sroa.6.4.i565 = phi float [ %.sroa.6.1.i561, %.lr.ph1021.split.i ], [ %.sroa.6.1.i561, %.lr.ph1021.i ], [ %.sroa.6.3.i593, %.loopexit.i591 ] ; 2 uses
  %.sroa.0.4.i566 = phi float [ %.sroa.0.1.i562, %.lr.ph1021.split.i ], [ %.sroa.0.1.i562, %.lr.ph1021.i ], [ %.sroa.0.3.i594, %.loopexit.i591 ] ; 2 uses
  %i.cyd = phi <2 x float> [ %i.clk, %.lr.ph1021.split.i ], [ %i.clk, %.lr.ph1021.i ], [ %i.cxz, %.loopexit.i591 ] ; 3 uses
  %i.cye = phi <2 x float> [ %i.cll, %.lr.ph1021.split.i ], [ %i.cll, %.lr.ph1021.i ], [ %i.cya, %.loopexit.i591 ] ; 3 uses
  %i.cyf = phi <2 x float> [ %i.clm, %.lr.ph1021.split.i ], [ %i.clm, %.lr.ph1021.i ], [ %i.cyb, %.loopexit.i591 ] ; 3 uses
  %i.cyg = phi <2 x float> [ %i.cln, %.lr.ph1021.split.i ], [ %i.cln, %.lr.ph1021.i ], [ %i.cyc, %.loopexit.i591 ] ; 4 uses
  %.not565.i567 = icmp sgt i32 %i.cmb, %i.cid
  br i1 %.not565.i567, label %.preheader914.loopexit.i568, label %.lr.ph1021.i, !llvm.loop !107

bb.sf:                                            ; preds = %.noexc682, %bb.oc, %bb.ob, %bb.oa, %bb.nz
  %i.cyh = add nuw nsw i32 %.05281033.i, 1        ; 2 uses
  %exitcond1053.not.i = icmp eq i32 %i.cyh, 4
  br i1 %exitcond1053.not.i, label %.loopexit916.i499, label %bb.nv, !llvm.loop !108

.loopexit918.i370:                                ; preds = %bb.uy
  %i.cyi = load ptr, ptr %i.bws, align 8, !tbaa !47 ; 2 uses
  %i.cyj = load ptr, ptr %i.bwv, align 8, !tbaa !47
  %.not909.i371 = icmp eq ptr %i.cyi, %i.cyj
  br i1 %.not909.i371, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.sg, !llvm.loop !109

bb.sg:                                            ; preds = %.loopexit918.i370, %.lr.ph993.i
  %i.cyk = phi ptr [ %i.bww, %.lr.ph993.i ], [ %i.cyi, %.loopexit918.i370 ] ; 2 uses
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 4
  %i.cym = load i32, ptr %i.cyl, align 4, !tbaa !169 ; 5 uses
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cyk, i64 8
  %i.cyo = load i32, ptr %i.cyn, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bws)
          to label %.noexc683 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc683:                                        ; preds = %bb.sg
  %i.cyp = load i32, ptr %i.bwy, align 4, !tbaa !148
  %i.cyq = icmp slt i32 %i.cyp, 2
  %i.cyr = load ptr, ptr %i.bwz, align 8, !tbaa !149
  %i.cys = load i64, ptr %i.bxa, align 8
  %i.cyt = sext i32 %i.cym to i64
  %i.cyu = mul i64 %i.cys, %i.cyt
  %.sink.idx.i727.i362 = select i1 %i.cyq, i64 0, i64 %i.cyu
  %.sink.i728.i363 = getelementptr inbounds nuw i8, ptr %i.cyr, i64 %.sink.idx.i727.i362
  %i.cyv = sext i32 %i.cyo to i64
  %i.cyw = getelementptr inbounds i8, ptr %.sink.i728.i363, i64 %i.cyv
  store i8 0, ptr %i.cyw, align 1, !tbaa !21
  %i.cyx = add nsw i32 %i.cyo, 1
  %i.cyy = add nsw i32 %i.cym, 1
  %i.cyz = add nsw i32 %i.cyo, -1
  %i.cza = add nsw i32 %i.cym, -1
  br label %bb.sh

bb.sh:                                            ; preds = %bb.uy, %.noexc683
  %.1529991.i = phi i32 [ 0, %.noexc683 ], [ %i.dna, %bb.uy ] ; 2 uses
  switch i32 %.1529991.i, label %default.unreachable908.i490 [
    i32 0, label %bb.sl
    i32 1, label %bb.si
    i32 2, label %bb.sj
    i32 3, label %bb.sk
  ]

bb.si:                                            ; preds = %bb.sh
  br label %bb.sl

bb.sj:                                            ; preds = %bb.sh
  br label %bb.sl

bb.sk:                                            ; preds = %bb.sh
  br label %bb.sl

default.unreachable908.i490:                      ; preds = %bb.sh
  unreachable

bb.sl:                                            ; preds = %bb.sk, %bb.sj, %bb.si, %bb.sh
  %.5543.i364 = phi i32 [ %i.cym, %bb.sk ], [ %i.cym, %bb.si ], [ %i.cyy, %bb.sj ], [ %i.cza, %bb.sh ]
  %.5.i365 = phi i32 [ %i.cyx, %bb.sk ], [ %i.cyz, %bb.si ], [ %i.cyo, %bb.sj ], [ %i.cyo, %bb.sh ] ; 10 uses
  %.5543.fr.i366 = freeze i32 %.5543.i364         ; 10 uses
  %i.czb = icmp slt i32 %.5543.fr.i366, 1
  %i.czc = icmp slt i32 %.5.i365, 1
  %or.cond5.i367 = select i1 %i.czb, i1 true, i1 %i.czc
  br i1 %or.cond5.i367, label %bb.uy, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.czd = load i32, ptr %i.bxb, align 8, !tbaa !146 ; 3 uses
  %.not.i368 = icmp slt i32 %.5543.fr.i366, %i.czd
  br i1 %.not.i368, label %bb.sn, label %bb.uy

bb.sn:                                            ; preds = %bb.sm
  %i.cze = load i32, ptr %i.bxc, align 4, !tbaa !145 ; 3 uses
  %.not544.i373 = icmp slt i32 %.5.i365, %i.cze
  br i1 %.not544.i373, label %bb.so, label %bb.uy

bb.so:                                            ; preds = %bb.sn
  %i.czf = load i32, ptr %i.bwy, align 4, !tbaa !148
  %i.czg = icmp slt i32 %i.czf, 2                 ; 10 uses
  %i.czh = load ptr, ptr %i.bwz, align 8, !tbaa !149 ; 9 uses
  %i.czi = load i64, ptr %i.bxa, align 8          ; 3 uses
end_hunk_2
begin_hunk_3_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  br i1 %i.dde, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.ddf = fadd double %i.dda, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400

bb.tr:                                            ; preds = %bb.tp
  %i.ddg = fadd double %i.dbg, %i.dce
  %i.ddh = fneg double %i.ddc
  %i.ddi = call double @llvm.fmuladd.f64(double %i.ddh, double %i.ddc, double 2.000000e+00)
  %i.ddj = call double @sqrt(double noundef %i.ddi) #20
  %i.ddk = fadd double %i.ddg, %i.ddj
  %i.ddl = fmul double %i.ddk, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400

bb.ts:                                            ; preds = %bb.to
  %i.ddm = fadd double %i.dbg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400

bb.tt:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i396
  br i1 %.not31.i776.i397, label %bb.tv, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.ddn = fadd double %i.dce, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400

bb.tv:                                            ; preds = %bb.tt
  %i.ddo = fadd double %i.dda, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400: ; preds = %bb.tv, %bb.tu, %bb.ts, %bb.tr, %bb.tq
  %.0.i777.i401 = phi double [ %i.ddf, %bb.tq ], [ %i.ddl, %bb.tr ], [ %i.ddm, %bb.ts ], [ %i.ddn, %bb.tu ], [ %i.ddo, %bb.tv ]
  %i.ddp = fptrunc double %.0.i777.i401 to float  ; 2 uses
  %i.ddq = fcmp ogt float %i.dba, %i.dbz
  %i.ddr = select i1 %i.ddq, float %i.dbz, float %i.dba ; 2 uses
  %i.dds = fcmp ogt float %i.dcy, %i.ddp
  %i.ddt = select i1 %i.dds, float %i.ddp, float %i.dcy ; 2 uses
  %i.ddu = fcmp ogt float %i.ddr, %i.ddt
  %i.ddv = select i1 %i.ddu, float %i.ddt, float %i.ddr ; 2 uses
  %i.ddw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i734.i379, i64 %i.czl
  store float %i.ddv, ptr %i.ddw, align 4, !tbaa !46
  %invariant.gep971.i = getelementptr i8, ptr %i.czh, i64 %i.czl ; 2 uses
  %invariant.gep975.i = getelementptr [4 x i8], ptr %i.czt, i64 %i.czl ; 6 uses
  %i.ddx = sub nsw i32 %.5543.fr.i366, %i.dl
  %i.ddy = add nuw nsw i32 %.5543.fr.i366, %i.dl
  %i.ddz = add nsw i32 %i.czd, -2
  %i.dea = sub nsw i32 %.5.i365, %i.dl
  %i.deb = add nuw nsw i32 %.5.i365, %i.dl
  %i.dec = add nsw i32 %i.cze, -2
  %i.ded = add nsw i32 %i.czd, -1
  %i.dee = add nsw i32 %i.cze, -1
  %i.def = load i32, ptr %i.bxh, align 4, !tbaa !148
  %i.deg = icmp slt i32 %i.def, 2                 ; 9 uses
  %i.deh = load ptr, ptr %i.bxi, align 8, !tbaa !149 ; 9 uses
  %invariant.gep989.i = getelementptr [2 x i8], ptr %i.deh, i64 %i.dab
  %i.dei = load i64, ptr %i.bxa, align 8          ; 6 uses
  %i.dej = mul i64 %i.dei, %i.czj
  %.sink.idx.i781.i402 = select i1 %i.czg, i64 0, i64 %i.dej
  %.sink.i782.i403 = getelementptr inbounds nuw i8, ptr %i.czh, i64 %.sink.idx.i781.i402 ; 2 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %.sink.i782.i403, i64 %i.dcb
  %i.del = load i8, ptr %i.dek, align 1, !tbaa !21
  %.not545.i404 = icmp eq i8 %i.del, 2
  %i.dem = getelementptr inbounds nuw i8, ptr %.sink.i782.i403, i64 %i.dab
  %i.den = load i8, ptr %i.dem, align 1, !tbaa !21
  %.not546.i405 = icmp eq i8 %i.den, 2            ; 2 uses
  br i1 %.not545.i404, label %bb.tz, label %bb.tw

bb.tw:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400
  %i.deo = load i64, ptr %i.bxf, align 8
  %i.dep = mul i64 %i.deo, %i.czj
  %.sink.idx.i789.i406 = select i1 %i.czs, i64 0, i64 %i.dep
  %.sink.i790.i407 = getelementptr inbounds nuw i8, ptr %i.czt, i64 %.sink.idx.i789.i406 ; 3 uses
  %i.deq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i407, i64 %i.dcb
  %i.der = load float, ptr %i.deq, align 4, !tbaa !46 ; 2 uses
  br i1 %.not546.i405, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.des = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i407, i64 %i.dab
  %i.det = load float, ptr %i.des, align 4, !tbaa !46
  %i.deu = fsub float %i.der, %i.det
  %i.dev = fmul float %i.deu, 5.000000e-01
  br label %bb.ub

bb.ty:                                            ; preds = %bb.tw
  %i.dew = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i407, i64 %i.czl
  %i.dex = load float, ptr %i.dew, align 4, !tbaa !46
  %i.dey = fsub float %i.der, %i.dex
  br label %bb.ub

bb.tz:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i400
  br i1 %.not546.i405, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.dez = load i64, ptr %i.bxf, align 8
  %i.dfa = mul i64 %i.dez, %i.czj
  %.sink.idx.i795.i486 = select i1 %i.czs, i64 0, i64 %i.dfa
  %.sink.i796.i487 = getelementptr inbounds nuw i8, ptr %i.czt, i64 %.sink.idx.i795.i486 ; 2 uses
  %i.dfb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i487, i64 %i.czl
  %i.dfc = load float, ptr %i.dfb, align 4, !tbaa !46
  %i.dfd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i487, i64 %i.dab
  %i.dfe = load float, ptr %i.dfd, align 4, !tbaa !46
  %i.dff = fsub float %i.dfc, %i.dfe
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.tz, %bb.ty, %bb.tx
  %.sroa.0865.0.i408 = phi float [ %i.dev, %bb.tx ], [ %i.dff, %bb.ua ], [ %i.dey, %bb.ty ], [ 0.000000e+00, %bb.tz ]
  %i.dfg = mul i64 %i.dei, %i.dbc
  %.sink.idx.i799.i409 = select i1 %i.czg, i64 0, i64 %i.dfg
  %gep972.i = getelementptr i8, ptr %invariant.gep971.i, i64 %.sink.idx.i799.i409
  %i.dfh = load i8, ptr %gep972.i, align 1, !tbaa !21
  %.not548.i410 = icmp eq i8 %i.dfh, 2
  %i.dfi = mul i64 %i.dei, %i.czv
  %.sink.idx.i811.i411 = select i1 %i.czg, i64 0, i64 %i.dfi
  %gep984.i = getelementptr i8, ptr %invariant.gep971.i, i64 %.sink.idx.i811.i411
  %i.dfj = load i8, ptr %gep984.i, align 1, !tbaa !21
  %.not549.i412 = icmp eq i8 %i.dfj, 2            ; 2 uses
  %.pre1969 = load i64, ptr %i.bxf, align 8       ; 7 uses
  br i1 %.not548.i410, label %bb.uf, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.dfk = mul i64 %.pre1969, %i.dbc
  %.sink.idx.i807.i413 = select i1 %i.czs, i64 0, i64 %i.dfk
  %gep980.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i807.i413
  %i.dfl = load float, ptr %gep980.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not549.i412, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.dfm = mul i64 %.pre1969, %i.czv
  %.sink.idx.i805.i414 = select i1 %i.czs, i64 0, i64 %i.dfm
  %gep978.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i805.i414
  %i.dfn = load float, ptr %gep978.i, align 4, !tbaa !46
  %i.dfo = fsub float %i.dfl, %i.dfn
  %i.dfp = fmul float %i.dfo, 5.000000e-01
  br label %bb.uh

bb.ue:                                            ; preds = %bb.uc
  %i.dfq = mul i64 %.pre1969, %i.czj
  %.sink.idx.i809.i483 = select i1 %i.czs, i64 0, i64 %i.dfq
  %gep982.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i809.i483
  %i.dfr = load float, ptr %gep982.i, align 4, !tbaa !46
  %i.dfs = fsub float %i.dfl, %i.dfr
  br label %bb.uh

bb.uf:                                            ; preds = %bb.ub
  br i1 %.not549.i412, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.dft = mul i64 %.pre1969, %i.czj
  %.sink.idx.i813.i484 = select i1 %i.czs, i64 0, i64 %i.dft
  %gep986.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i813.i484
  %i.dfu = load float, ptr %gep986.i, align 4, !tbaa !46
  %i.dfv = mul i64 %.pre1969, %i.czv
  %.sink.idx.i815.i485 = select i1 %i.czs, i64 0, i64 %i.dfv
  %gep988.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i815.i485
  %i.dfw = load float, ptr %gep988.i, align 4, !tbaa !46
  %i.dfx = fsub float %i.dfu, %i.dfw
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %bb.uf, %bb.ue, %bb.ud
  %.sroa.8866.0.i415 = phi float [ %i.dfp, %bb.ud ], [ %i.dfx, %bb.ug ], [ %i.dfs, %bb.ue ], [ 0.000000e+00, %bb.uf ]
  %i.dfy = mul i64 %.pre1969, %i.czj
  %.sink.idx.i821.i458 = select i1 %i.czs, i64 0, i64 %i.dfy
  %gep.i459 = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i821.i458
  br label %.lr.ph.i416

.lr.ph.i416:                                      ; preds = %._crit_edge.i429, %bb.uh
  %.0959.i417 = phi float [ %.us-phi933.i433, %._crit_edge.i429 ], [ f0x1E3CE508, %bb.uh ] ; 3 uses
  %.0522956.i420 = phi float [ %.us-phi.i430, %._crit_edge.i429 ], [ 0.000000e+00, %bb.uh ] ; 3 uses
  %.1533955.i421 = phi i32 [ %i.dgs, %._crit_edge.i429 ], [ %i.ddx, %bb.uh ] ; 10 uses
  %i.dfz = phi <2 x float> [ %i.dmb, %._crit_edge.i429 ], [ zeroinitializer, %bb.uh ] ; 3 uses
  %i.dga = add nsw i32 %.1533955.i421, -1         ; 3 uses
  %i.dgb = icmp eq i32 %.1533955.i421, 1
  %i.dgc = zext i1 %i.dgb to i32
  %i.dgd = add nuw nsw i32 %i.dga, %i.dgc         ; 2 uses
  %i.dge = icmp eq i32 %.1533955.i421, %i.ddz
  %.neg.i422 = sext i1 %i.dge to i32              ; 2 uses
  %i.dgf = add nsw i32 %i.dga, %.neg.i422
  %i.dgg = icmp sgt i32 %.1533955.i421, 0
  %i.dgh = zext nneg i32 %.1533955.i421 to i64    ; 2 uses
  %i.dgi = mul i64 %i.dei, %i.dgh
  %.sink.idx.i817.i423 = select i1 %i.czg, i64 0, i64 %i.dgi
  %.sink.i818.i424 = getelementptr inbounds nuw i8, ptr %i.czh, i64 %.sink.idx.i817.i423 ; 2 uses
  %i.dgj = sub nsw i32 %.1533955.i421, %.5543.fr.i366 ; 2 uses
  %i.dgk = mul nsw i32 %i.dgj, %i.dgj
  %i.dgl = sub nsw i32 %.5543.fr.i366, %.1533955.i421
  %i.dgm = sitofp i32 %i.dgl to float             ; 2 uses
  %i.dgn = insertelement <2 x float> poison, float %i.dgm, i64 0 ; 2 uses
  %i.dgo = insertelement <2 x float> %i.dgn, float %.sroa.8866.0.i415, i64 1
  %i.dgp = shufflevector <2 x float> %i.dgn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dgq = fmul <2 x float> %i.dgo, %i.dgp
  %i.dgr = sext i32 %i.dgd to i64                 ; 3 uses
  %i.dgs = add i32 %.1533955.i421, 1              ; 3 uses
  %i.dgt = zext nneg i32 %i.dgs to i64
  %i.dgu = mul i64 %i.dei, %i.dgt
  %.sink.idx.i841.i425 = select i1 %i.czg, i64 0, i64 %i.dgu
  %.sink.i842.i426 = getelementptr inbounds nuw i8, ptr %i.czh, i64 %.sink.idx.i841.i425
  %i.dgv = zext nneg i32 %i.dga to i64            ; 2 uses
  %i.dgw = mul i64 %i.dei, %i.dgv
  %.sink.idx.i843.i427 = select i1 %i.czg, i64 0, i64 %i.dgw
  %.sink.i844.i428 = getelementptr inbounds nuw i8, ptr %i.czh, i64 %.sink.idx.i843.i427
  %i.dgx = add nsw i32 %.1533955.i421, %.neg.i422
  %i.dgy = sext i32 %i.dgx to i64
  %i.dgz = add nsw i32 %i.dgd, -1
  %i.dha = sext i32 %i.dgz to i64                 ; 2 uses
  %i.dhb = sext i32 %i.dgf to i64
  br i1 %i.dgg, label %.lr.ph.split.i439, label %._crit_edge.i429

.lr.ph.split.i439:                                ; preds = %.lr.ph.i416
  %i.dhc = icmp slt i32 %.1533955.i421, %i.ded
  %.fr953.i440 = freeze i1 %i.dhc
  br i1 %.fr953.i440, label %.lr.ph.split.split.i441.preheader, label %._crit_edge.i429

.lr.ph.split.split.i441.preheader:                ; preds = %.lr.ph.split.i439
  %i.dhd = mul i64 %.pre1969, %i.dgh
  %.sink.idx.i819.i456 = select i1 %i.czs, i64 0, i64 %i.dhd
  %.sink.i820.i457 = getelementptr inbounds nuw i8, ptr %i.czt, i64 %.sink.idx.i819.i456
  %i.dhe = insertelement <2 x float> poison, float %i.dgm, i64 1
  br label %.lr.ph.split.split.i441

.lr.ph.split.split.i441:                          ; preds = %.lr.ph.split.split.i441.preheader, %bb.ux
  %.1927.i442 = phi float [ %.2.i451, %bb.ux ], [ %.0959.i417, %.lr.ph.split.split.i441.preheader ] ; 4 uses
  %.1523924.i445 = phi float [ %.2524.i448, %bb.ux ], [ %.0522956.i420, %.lr.ph.split.split.i441.preheader ] ; 4 uses
  %.1531922.i446 = phi i32 [ %i.dma, %bb.ux ], [ %i.dea, %.lr.ph.split.split.i441.preheader ] ; 11 uses
  %i.dhf = phi <2 x float> [ %i.dlz, %bb.ux ], [ %i.dfz, %.lr.ph.split.split.i441.preheader ] ; 4 uses
  %i.dhg = add nsw i32 %.1531922.i446, -1         ; 3 uses
  %i.dhh = icmp eq i32 %.1531922.i446, 1
  %i.dhi = zext i1 %i.dhh to i32
  %i.dhj = add nuw nsw i32 %i.dhg, %i.dhi         ; 4 uses
  %i.dhk = icmp eq i32 %.1531922.i446, %i.dec
  %.neg553.i447 = sext i1 %i.dhk to i32           ; 2 uses
  %i.dhl = add nsw i32 %i.dhg, %.neg553.i447
  %i.dhm = icmp sgt i32 %.1531922.i446, 0
  %i.dhn = icmp slt i32 %.1531922.i446, %i.dee
  %or.cond1037.i = select i1 %i.dhm, i1 %i.dhn, i1 false
  br i1 %or.cond1037.i, label %bb.ui, label %bb.ux

bb.ui:                                            ; preds = %.lr.ph.split.split.i441
  %i.dho = zext nneg i32 %.1531922.i446 to i64    ; 4 uses
  %i.dhp = getelementptr inbounds nuw i8, ptr %.sink.i818.i424, i64 %i.dho ; 2 uses
  %i.dhq = load i8, ptr %i.dhp, align 1, !tbaa !21
  %.not554.i453 = icmp eq i8 %i.dhq, 2
  br i1 %.not554.i453, label %bb.ux, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.dhr = sub nsw i32 %.1531922.i446, %.5.i365   ; 2 uses
  %i.dhs = mul nsw i32 %i.dhr, %i.dhr
  %i.dht = add nuw nsw i32 %i.dhs, %i.dgk
  %.not555.i454 = icmp samesign ugt i32 %i.dht, %i.bxg
  br i1 %.not555.i454, label %bb.ux, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.dhu = sub nsw i32 %.5.i365, %.1531922.i446
  %i.dhv = sitofp i32 %i.dhu to float             ; 2 uses
  %i.dhw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i820.i457, i64 %i.dho
  %i.dhx = load float, ptr %i.dhw, align 4, !tbaa !46
  %i.dhy = load float, ptr %gep.i459, align 4, !tbaa !46
  %i.dhz = fsub float %i.dhx, %i.dhy
  %i.dia = insertelement <2 x float> poison, float %i.dhv, i64 0
  %i.dib = shufflevector <2 x float> %i.dia, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dic = insertelement <2 x float> %i.dib, float %.sroa.0865.0.i408, i64 1
  %i.did = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dib, <2 x float> %i.dic, <2 x float> %i.dgq) ; 3 uses
  %i.die = extractelement <2 x float> %i.did, i64 0 ; 2 uses
  %sqrt912.i455 = call nnan float @llvm.sqrt.f32(float %i.die)
  %i.dif = fmul float %i.die, %sqrt912.i455
  %i.dig = fdiv float 1.000000e+00, %i.dif
  %i.dih = extractelement <2 x float> %i.did, i64 1
  %i.dii = insertelement <2 x float> %i.did, float %i.dhz, i64 0
  %i.dij = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dii)
  %i.dik = fpext <2 x float> %i.dij to <2 x double> ; 2 uses
  %i.dil = extractelement <2 x double> %i.dik, i64 0
  %i.dim = fadd double %i.dil, 1.000000e+00
  %i.din = fdiv double 1.000000e+00, %i.dim
  %i.dio = fptrunc double %i.din to float
  %i.dip = extractelement <2 x double> %i.dik, i64 1
  %i.diq = fcmp ole double %i.dip, 1.000000e-02
  %spec.store.select8.i460 = select i1 %i.diq, float f0x358637BD, float %i.dih
  %i.dir = fmul float %i.dig, %i.dio
  %i.dis = fmul float %spec.store.select8.i460, %i.dir
  %i.dit = call float @llvm.fabs.f32(float %i.dis) ; 3 uses
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dhp, i64 1
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !21
  %.not556.i461 = icmp eq i8 %i.div, 2
  %i.diw = zext nneg i32 %i.dhg to i64            ; 2 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %.sink.i818.i424, i64 %i.diw
  %i.diy = load i8, ptr %i.dix, align 1, !tbaa !21
  %.not557.i462 = icmp eq i8 %i.diy, 2            ; 2 uses
  br i1 %.not556.i461, label %bb.uo, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.diz = add nsw i32 %.1531922.i446, %.neg553.i447
  %i.dja = load i64, ptr %i.bxj, align 8          ; 3 uses
  %i.djb = mul i64 %i.dja, %i.dgr
  %i.djc = zext nneg i32 %i.diz to i64
  %i.djd = sext i32 %i.dhj to i64
  %.sink.idx.i831.i479 = select i1 %i.deg, i64 0, i64 %i.djb
  %.sink.i832.i480 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i831.i479 ; 2 uses
  %i.dje = getelementptr inbounds nuw [2 x i8], ptr %.sink.i832.i480, i64 %i.djc
  %i.djf = load i16, ptr %i.dje, align 2, !tbaa !172
  %i.djg = zext i16 %i.djf to i32                 ; 2 uses
  %i.djh = getelementptr [2 x i8], ptr %.sink.i832.i480, i64 %i.djd ; 2 uses
  br i1 %.not557.i462, label %bb.un, label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.dji = getelementptr i8, ptr %i.djh, i64 -2
  %i.djj = load i16, ptr %i.dji, align 2, !tbaa !172
  %i.djk = zext i16 %i.djj to i32
  %i.djl = sub nsw i32 %i.djg, %i.djk
  %i.djm = sitofp i32 %i.djl to float
  %i.djn = fmul nnan float %i.djm, 2.000000e+00
  br label %bb.uq

bb.un:                                            ; preds = %bb.ul
  %i.djo = load i16, ptr %i.djh, align 2, !tbaa !172
  %i.djp = zext i16 %i.djo to i32
  %i.djq = sub nsw i32 %i.djg, %i.djp
  %i.djr = sitofp i32 %i.djq to float
  br label %bb.uq

bb.uo:                                            ; preds = %bb.uk
  %.pre1077.i.pre = load i64, ptr %i.bxj, align 8 ; 3 uses
  br i1 %.not557.i462, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.djs = mul i64 %.pre1077.i.pre, %i.dgr
  %.sink.idx.i837.i481 = select i1 %i.deg, i64 0, i64 %i.djs
  %.sink.i838.i482 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i837.i481 ; 2 uses
  %i.djt = sext i32 %i.dhl to i64
  %i.dju = getelementptr inbounds [2 x i8], ptr %.sink.i838.i482, i64 %i.djt
  %i.djv = load i16, ptr %i.dju, align 2, !tbaa !172
  %i.djw = zext i16 %i.djv to i32
  %i.djx = sext i32 %i.dhj to i64
  %i.djy = getelementptr [2 x i8], ptr %.sink.i838.i482, i64 %i.djx
  %i.djz = getelementptr i8, ptr %i.djy, i64 -2
  %i.dka = load i16, ptr %i.djz, align 2, !tbaa !172
  %i.dkb = zext i16 %i.dka to i32
  %i.dkc = sub nsw i32 %i.djw, %i.dkb
  %i.dkd = sitofp i32 %i.dkc to float
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.uo, %bb.un, %bb.um
  %.pre1077.i = phi i64 [ %i.dja, %bb.um ], [ %.pre1077.i.pre, %bb.up ], [ %i.dja, %bb.un ], [ %.pre1077.i.pre, %bb.uo ] ; 6 uses
  %.sroa.0867.0.i463 = phi float [ %i.djn, %bb.um ], [ %i.dkd, %bb.up ], [ %i.djr, %bb.un ], [ 0.000000e+00, %bb.uo ]
  %i.dke = getelementptr inbounds nuw i8, ptr %.sink.i842.i426, i64 %i.dho
  %i.dkf = load i8, ptr %i.dke, align 1, !tbaa !21
  %.not559.i464 = icmp eq i8 %i.dkf, 2
  %i.dkg = getelementptr inbounds nuw i8, ptr %.sink.i844.i428, i64 %i.dho
  %i.dkh = load i8, ptr %i.dkg, align 1, !tbaa !21
  %.not560.i465 = icmp eq i8 %i.dkh, 2            ; 2 uses
  br i1 %.not559.i464, label %bb.uu, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.dki = mul i64 %.pre1077.i, %i.dgy
  %i.dkj = sext i32 %i.dhj to i64                 ; 3 uses
  %.sink.idx.i849.i471 = select i1 %i.deg, i64 0, i64 %i.dki
  %.sink.i850.i472 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i849.i471
  %i.dkk = getelementptr inbounds [2 x i8], ptr %.sink.i850.i472, i64 %i.dkj
  %i.dkl = load i16, ptr %i.dkk, align 2, !tbaa !172
  %i.dkm = zext i16 %i.dkl to i32                 ; 2 uses
  br i1 %.not560.i465, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.dkn = mul i64 %.pre1077.i, %i.dha
  %.sink.idx.i847.i466 = select i1 %i.deg, i64 0, i64 %i.dkn
  %.sink.i848.i467 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i847.i466
  %i.dko = getelementptr inbounds [2 x i8], ptr %.sink.i848.i467, i64 %i.dkj
  %i.dkp = load i16, ptr %i.dko, align 2, !tbaa !172
  %i.dkq = zext i16 %i.dkp to i32
  %i.dkr = sub nsw i32 %i.dkm, %i.dkq
  %i.dks = sitofp i32 %i.dkr to float
  %i.dkt = fmul nnan float %i.dks, 2.000000e+00
  br label %bb.uw

bb.ut:                                            ; preds = %bb.ur
  %i.dku = mul i64 %.pre1077.i, %i.dgr
  %.sink.idx.i851.i473 = select i1 %i.deg, i64 0, i64 %i.dku
  %.sink.i852.i474 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i851.i473
  %i.dkv = getelementptr inbounds [2 x i8], ptr %.sink.i852.i474, i64 %i.dkj
  %i.dkw = load i16, ptr %i.dkv, align 2, !tbaa !172
  %i.dkx = zext i16 %i.dkw to i32
  %i.dky = sub nsw i32 %i.dkm, %i.dkx
  %i.dkz = sitofp i32 %i.dky to float
  br label %bb.uw

bb.uu:                                            ; preds = %bb.uq
  br i1 %.not560.i465, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.dla = mul i64 %.pre1077.i, %i.dhb
  %.sink.idx.i855.i475 = select i1 %i.deg, i64 0, i64 %i.dla
  %.sink.i856.i476 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i855.i475
  %i.dlb = sext i32 %i.dhj to i64                 ; 2 uses
  %i.dlc = getelementptr inbounds [2 x i8], ptr %.sink.i856.i476, i64 %i.dlb
  %i.dld = load i16, ptr %i.dlc, align 2, !tbaa !172
  %i.dle = zext i16 %i.dld to i32
  %i.dlf = mul i64 %.pre1077.i, %i.dha
  %.sink.idx.i857.i477 = select i1 %i.deg, i64 0, i64 %i.dlf
  %.sink.i858.i478 = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.sink.idx.i857.i477
  %i.dlg = getelementptr inbounds [2 x i8], ptr %.sink.i858.i478, i64 %i.dlb
  %i.dlh = load i16, ptr %i.dlg, align 2, !tbaa !172
  %i.dli = zext i16 %i.dlh to i32
  %i.dlj = sub nsw i32 %i.dle, %i.dli
end_hunk_3
begin_hunk_4_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.dxt = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i1075, i64 %i.dpt
  %i.dxu = load float, ptr %i.dxt, align 4, !tbaa !46
  %i.dxv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i1075, i64 %i.dqj
  %i.dxw = load float, ptr %i.dxv, align 4, !tbaa !46
  %i.dxx = fsub float %i.dxu, %i.dxw
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr, %bb.xq, %bb.xp
  %.sroa.23.0.i911 = phi float [ %i.dxn, %bb.xp ], [ %i.dxx, %bb.xs ], [ %i.dxq, %bb.xq ], [ 0.000000e+00, %bb.xr ]
  %.pre1968 = load i64, ptr %i.doh, align 8       ; 7 uses
  br i1 %.not580.i884, label %bb.xx, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.dxy = mul i64 %.pre1968, %i.drk
  %.sink.idx.i668.2.i912 = select i1 %i.dqa, i64 0, i64 %i.dxy
  %gep1001.2.i913 = getelementptr i8, ptr %invariant.gep996.i886, i64 %.sink.idx.i668.2.i912
  %i.dxz = load float, ptr %gep1001.2.i913, align 4, !tbaa !46 ; 2 uses
  br i1 %.not581.2.i899, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.dya = mul i64 %.pre1968, %i.dqd
  %.sink.idx.i666.2.i914 = select i1 %i.dqa, i64 0, i64 %i.dya
  %gep999.2.i915 = getelementptr i8, ptr %invariant.gep996.i886, i64 %.sink.idx.i666.2.i914
  %i.dyb = load float, ptr %gep999.2.i915, align 4, !tbaa !46
  %i.dyc = fsub float %i.dxz, %i.dyb
  %i.dyd = fmul float %i.dyc, 5.000000e-01
  br label %bb.xz

bb.xw:                                            ; preds = %bb.xu
  %i.dye = mul i64 %.pre1968, %i.dpr
  %.sink.idx.i670.2.i1068 = select i1 %i.dqa, i64 0, i64 %i.dye
  %gep1003.2.i1069 = getelementptr i8, ptr %invariant.gep996.i886, i64 %.sink.idx.i670.2.i1068
  %i.dyf = load float, ptr %gep1003.2.i1069, align 4, !tbaa !46
  %i.dyg = fsub float %i.dxz, %i.dyf
  br label %bb.xz

bb.xx:                                            ; preds = %bb.xt
  br i1 %.not581.2.i899, label %bb.xz, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.dyh = mul i64 %.pre1968, %i.dpr
  %.sink.idx.i674.2.i1070 = select i1 %i.dqa, i64 0, i64 %i.dyh
  %gep1007.2.i1071 = getelementptr i8, ptr %invariant.gep996.i886, i64 %.sink.idx.i674.2.i1070
  %i.dyi = load float, ptr %gep1007.2.i1071, align 4, !tbaa !46
  %i.dyj = mul i64 %.pre1968, %i.dqd
  %.sink.idx.i676.2.i1072 = select i1 %i.dqa, i64 0, i64 %i.dyj
  %gep1009.2.i1073 = getelementptr i8, ptr %invariant.gep996.i886, i64 %.sink.idx.i676.2.i1072
  %i.dyk = load float, ptr %gep1009.2.i1073, align 4, !tbaa !46
  %i.dyl = fsub float %i.dyi, %i.dyk
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xx, %bb.xw, %bb.xv
  %.sroa.28.0.i916 = phi float [ %i.dyd, %bb.xv ], [ %i.dyl, %bb.xy ], [ %i.dyg, %bb.xw ], [ 0.000000e+00, %bb.xx ]
  %i.dym = add nuw nsw i32 %.2540.fr.i844, %i.dl
  %i.dyn = add nsw i32 %i.dpl, -2
  %i.dyo = add nsw i32 %i.dpm, -2
  %i.dyp = add nsw i32 %i.dpl, -1
  %i.dyq = add nsw i32 %i.dpm, -1
  %i.dyr = add nuw nsw i32 %.2536.i843, %i.dl
  %i.dys = sub nsw i32 %.2536.i843, %i.dl
  %i.dyt = sub nsw i32 %.2540.fr.i844, %i.dl
  %i.dyu = sext i32 %i.dys to i64
  %i.dyv = zext nneg i32 %i.dyq to i64
  %i.dyw = zext nneg i32 %i.dyr to i64
  %sext.i917 = zext nneg i32 %i.dyo to i64
  %i.dyx = mul i64 %.pre1968, %i.dpr
  %.sink.idx.i682.i1005 = select i1 %i.dqa, i64 0, i64 %i.dyx
  %gep1017.i1006 = getelementptr i8, ptr %invariant.gep996.i886, i64 %.sink.idx.i682.i1005
  %i.dyy = insertelement <2 x float> poison, float %.sroa.13.0.i903, i64 1
  %i.dyz = insertelement <2 x float> poison, float %.sroa.23.0.i911, i64 1
  br label %.lr.ph1021.i918

.preheader914.loopexit.i947:                      ; preds = %._crit_edge1022.i933
  %i.dza = extractelement <2 x float> %i.eon, i64 1 ; 3 uses
  %i.dzb = fmul float %i.dza, %i.dza
  %i.dzc = call float @llvm.fmuladd.f32(float %.sroa.01069.4.i934, float %.sroa.01069.4.i934, float %i.dzb)
  %sqrt911.i948 = call float @llvm.sqrt.f32(float %i.dzc)
  %i.dzd = fadd float %sqrt911.i948, f0x1E3CE508
  %i.dze = fadd float %.sroa.01069.4.i934, %i.dza
  %i.dzf = shufflevector <2 x float> %i.eon, <2 x float> %i.eoo, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dzg = shufflevector <2 x float> %i.eom, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dzh = shufflevector <4 x float> %i.dzf, <4 x float> %i.dzg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dzi = insertelement <4 x float> %i.dzh, float %i.dze, i64 3
  %i.dzj = insertelement <4 x float> poison, float %.sroa.0.4.i945, i64 0
  %i.dzk = insertelement <4 x float> %i.dzj, float %.sroa.6.4.i944, i64 1
  %i.dzl = insertelement <4 x float> %i.dzk, float %.sroa.9.4.i943, i64 2
  %i.dzm = insertelement <4 x float> %i.dzl, float %i.dzd, i64 3
  %i.dzn = fdiv <4 x float> %i.dzi, %i.dzm        ; 3 uses
  %shift2148 = shufflevector <4 x float> %i.dzn, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2149 = fadd <4 x float> %shift2148, %i.dzn
  %i.dzo = extractelement <4 x float> %foldExtExtBinop2149, i64 0
  %i.dzp = fpext float %i.dzo to double
  %i.dzq = fadd double %i.dzp, 5.000000e-01
  %i.dzr = insertelement <2 x double> poison, double %i.dzq, i64 0
  %i.dzs = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dzr)
  %i.dzt = call i32 @llvm.smax.i32(i32 %i.dzs, i32 0)
  %i.dzu = call i32 @llvm.umin.i32(i32 %i.dzt, i32 255)
  %i.dzv = trunc nuw i32 %i.dzu to i8
  %i.dzw = load i32, ptr %i.doj, align 4, !tbaa !148
  %i.dzx = icmp slt i32 %i.dzw, 2
  %i.dzy = load ptr, ptr %i.dok, align 8, !tbaa !149
  %i.dzz = load i64, ptr %i.dol, align 8
  %i.eaa = mul i64 %i.dzz, %i.dqd
  %.sink.idx.i722.i949 = select i1 %i.dzx, i64 0, i64 %i.eaa
  %.sink.i723.i950 = getelementptr inbounds nuw i8, ptr %i.dzy, i64 %.sink.idx.i722.i949
  %i.eab = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.i950, i64 %i.dqj
  store i8 %i.dzv, ptr %i.eab, align 1, !tbaa !21
  %i.eac = load i32, ptr %i.doj, align 4, !tbaa !148
  %i.ead = icmp slt i32 %i.eac, 2
  %i.eae = load ptr, ptr %i.dok, align 8, !tbaa !149
  %i.eaf = load i64, ptr %i.dol, align 8
  %i.eag = mul i64 %i.eaf, %i.dqd
  %.sink.idx.i722.1.i952 = select i1 %i.ead, i64 0, i64 %i.eag
  %.sink.i723.1.i953 = getelementptr inbounds nuw i8, ptr %i.eae, i64 %.sink.idx.i722.1.i952
  %i.eah = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.1.i953, i64 %i.dqj
  %i.eai = getelementptr inbounds nuw i8, ptr %i.eah, i64 1
  %i.eaj = shufflevector <2 x float> %i.eoo, <2 x float> %i.eom, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.eak = fadd <2 x float> %i.eop, %i.eaj
  %i.eal = fmul <2 x float> %i.eaj, %i.eaj
  %i.eam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eop, <2 x float> %i.eop, <2 x float> %i.eal)
  %i.ean = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.eam)
  %i.eao = fadd <2 x float> %i.ean, splat (float f0x1E3CE508)
  %i.eap = fdiv <2 x float> %i.eak, %i.eao
  %i.eaq = shufflevector <4 x float> %i.dzn, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ear = fadd <2 x float> %i.eap, %i.eaq
  %i.eas = fpext <2 x float> %i.ear to <2 x double>
  %i.eat = fadd <2 x double> %i.eas, splat (double 5.000000e-01) ; 2 uses
  %i.eau = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.eat)
  %i.eav = call i32 @llvm.smax.i32(i32 %i.eau, i32 0)
  %i.eaw = call i32 @llvm.umin.i32(i32 %i.eav, i32 255)
  %i.eax = trunc nuw i32 %i.eaw to i8
  store i8 %i.eax, ptr %i.eai, align 1, !tbaa !21
  %i.eay = shufflevector <2 x double> %i.eat, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eaz = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.eay)
  %i.eba = call i32 @llvm.smax.i32(i32 %i.eaz, i32 0)
  %i.ebb = call i32 @llvm.umin.i32(i32 %i.eba, i32 255)
  %i.ebc = trunc nuw i32 %i.ebb to i8
  %i.ebd = load i32, ptr %i.doj, align 4, !tbaa !148
  %i.ebe = icmp slt i32 %i.ebd, 2
  %i.ebf = load ptr, ptr %i.dok, align 8, !tbaa !149
  %i.ebg = load i64, ptr %i.dol, align 8
  %i.ebh = mul i64 %i.ebg, %i.dqd
  %.sink.idx.i722.2.i955 = select i1 %i.ebe, i64 0, i64 %i.ebh
  %.sink.i723.2.i956 = getelementptr inbounds nuw i8, ptr %i.ebf, i64 %.sink.idx.i722.2.i955
  %i.ebi = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.2.i956, i64 %i.dqj
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.ebi, i64 2
  store i8 %i.ebc, ptr %i.ebj, align 1, !tbaa !21
  %i.ebk = load i32, ptr %i.doa, align 4, !tbaa !148
  %i.ebl = icmp slt i32 %i.ebk, 2
  %i.ebm = load ptr, ptr %i.dob, align 8, !tbaa !149
  %i.ebn = load i64, ptr %i.doc, align 8
  %i.ebo = mul i64 %i.ebn, %i.dpr
  %.sink.idx.i724.i957 = select i1 %i.ebl, i64 0, i64 %i.ebo
  %.sink.i725.i958 = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %.sink.idx.i724.i957
  %i.ebp = getelementptr inbounds nuw i8, ptr %.sink.i725.i958, i64 %i.dpt
  store i8 1, ptr %i.ebp, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store float %i.dud, ptr %12, align 4, !tbaa !50
  store i32 %.2540.fr.i844, ptr %i.dom, align 4, !tbaa !169
  store i32 %.2536.i843, ptr %i.don, align 4, !tbaa !170
  %i.ebq = load i32, ptr %i.dop, align 8, !tbaa !162
  store i32 %i.ebq, ptr %i.doo, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.dnb, ptr noundef nonnull align 4 dereferenceable(16) %12)
          to label %.noexc1096 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1096:                                       ; preds = %.preheader914.loopexit.i947
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ebr = load i32, ptr %i.dop, align 8, !tbaa !162
  %i.ebs = add nsw i32 %i.ebr, 1
  store i32 %i.ebs, ptr %i.dop, align 8, !tbaa !162
  br label %bb.zl

.lr.ph1021.i918:                                  ; preds = %._crit_edge1022.i933, %bb.xz
  %.sroa.01069.1.i919 = phi float [ 0.000000e+00, %bb.xz ], [ %.sroa.01069.4.i934, %._crit_edge1022.i933 ] ; 3 uses
  %.sroa.9.1.i928 = phi float [ f0x1E3CE508, %bb.xz ], [ %.sroa.9.4.i943, %._crit_edge1022.i933 ] ; 3 uses
  %.sroa.6.1.i929 = phi float [ f0x1E3CE508, %bb.xz ], [ %.sroa.6.4.i944, %._crit_edge1022.i933 ] ; 3 uses
  %.sroa.0.1.i930 = phi float [ f0x1E3CE508, %bb.xz ], [ %.sroa.0.4.i945, %._crit_edge1022.i933 ] ; 3 uses
  %.05321029.i931 = phi i32 [ %i.dyt, %bb.xz ], [ %i.eck, %._crit_edge1022.i933 ] ; 10 uses
  %i.ebt = phi <2 x float> [ zeroinitializer, %bb.xz ], [ %i.eom, %._crit_edge1022.i933 ] ; 3 uses
  %i.ebu = phi <2 x float> [ zeroinitializer, %bb.xz ], [ %i.eon, %._crit_edge1022.i933 ] ; 3 uses
  %i.ebv = phi <2 x float> [ zeroinitializer, %bb.xz ], [ %i.eoo, %._crit_edge1022.i933 ] ; 3 uses
  %i.ebw = phi <2 x float> [ zeroinitializer, %bb.xz ], [ %i.eop, %._crit_edge1022.i933 ] ; 3 uses
  %i.ebx = add nsw i32 %.05321029.i931, -1        ; 3 uses
  %i.eby = icmp eq i32 %.05321029.i931, 1
  %i.ebz = zext i1 %i.eby to i32
  %i.eca = add nuw nsw i32 %i.ebx, %i.ebz         ; 2 uses
  %i.ecb = icmp eq i32 %.05321029.i931, %i.dyn
  %.neg566.i932 = sext i1 %i.ecb to i32           ; 2 uses
  %i.ecc = add i32 %i.ebx, %.neg566.i932
  %i.ecd = icmp sgt i32 %.05321029.i931, 0
  %i.ece = zext nneg i32 %.05321029.i931 to i64   ; 2 uses
  %i.ecf = sub nsw i32 %.05321029.i931, %.2540.fr.i844 ; 2 uses
  %i.ecg = mul nsw i32 %i.ecf, %i.ecf
  %i.ech = sub nsw i32 %.2540.fr.i844, %.05321029.i931
  %i.eci = sitofp i32 %i.ech to float             ; 8 uses
  %i.ecj = fmul nnan float %i.eci, %i.eci
  %i.eck = add i32 %.05321029.i931, 1             ; 3 uses
  %i.ecl = zext nneg i32 %i.eck to i64
  %i.ecm = sext i32 %i.ebx to i64                 ; 2 uses
  %i.ecn = sext i32 %i.eca to i64                 ; 9 uses
  %i.eco = add nsw i32 %.05321029.i931, %.neg566.i932
  %i.ecp = sext i32 %i.eco to i64                 ; 3 uses
  %i.ecq = add nsw i32 %i.eca, -1
  %i.ecr = sext i32 %i.ecq to i64                 ; 6 uses
  %i.ecs = sext i32 %i.ecc to i64                 ; 3 uses
  br i1 %i.ecd, label %.lr.ph1021.split.i959, label %._crit_edge1022.i933

.lr.ph1021.split.i959:                            ; preds = %.lr.ph1021.i918
  %i.ect = icmp slt i32 %.05321029.i931, %i.dyp
  %.fr1027.i960 = freeze i1 %i.ect
  br i1 %.fr1027.i960, label %.lr.ph1021.split.split.preheader.i961, label %._crit_edge1022.i933

.lr.ph1021.split.split.preheader.i961:            ; preds = %.lr.ph1021.split.i959
  %i.ecu = mul i64 %i.duf, %i.ece
  %.sink.idx.i678.i962 = select i1 %i.dpo, i64 0, i64 %i.ecu
  %.sink.i679.i963 = getelementptr inbounds nuw i8, ptr %i.dpp, i64 %.sink.idx.i678.i962 ; 2 uses
  %i.ecv = mul i64 %i.duf, %i.ecl
  %.sink.idx.i702.i964 = select i1 %i.dpo, i64 0, i64 %i.ecv
  %.sink.i703.i965 = getelementptr inbounds nuw i8, ptr %i.dpp, i64 %.sink.idx.i702.i964
  %i.ecw = mul i64 %i.duf, %i.ecm
  %.sink.idx.i704.i966 = select i1 %i.dpo, i64 0, i64 %i.ecw
  %invariant.gep.i967 = getelementptr i8, ptr %i.dpp, i64 %.sink.idx.i704.i966
  %i.ecx = fmul float %.sroa.8.0.i900, %i.eci
  %i.ecy = fmul float %.sroa.18.0.i908, %i.eci
  %i.ecz = fmul float %.sroa.28.0.i916, %i.eci
  %i.eda = mul i64 %.pre1968, %i.ece
  %.sink.idx.i680.i1003 = select i1 %i.dqa, i64 0, i64 %i.eda
  %.sink.i681.i1004 = getelementptr inbounds nuw i8, ptr %i.dqb, i64 %.sink.idx.i680.i1003
  %i.edb = insertelement <2 x float> poison, float %i.ecj, i64 0
  %i.edc = insertelement <2 x float> %i.edb, float %i.ecx, i64 1
  %i.edd = insertelement <2 x float> poison, float %i.ecy, i64 1
  br label %.lr.ph1021.split.split.i968

.lr.ph1021.split.split.i968:                      ; preds = %.loopexit.i984, %.lr.ph1021.split.split.preheader.i961
  %.sroa.01069.2.i969 = phi float [ %.sroa.01069.1.i919, %.lr.ph1021.split.split.preheader.i961 ], [ %.sroa.01069.3.i985, %.loopexit.i984 ] ; 4 uses
  %.sroa.9.2.i978 = phi float [ %.sroa.9.1.i928, %.lr.ph1021.split.split.preheader.i961 ], [ %.sroa.9.3.i994, %.loopexit.i984 ] ; 4 uses
  %.sroa.6.2.i979 = phi float [ %.sroa.6.1.i929, %.lr.ph1021.split.split.preheader.i961 ], [ %.sroa.6.3.i995, %.loopexit.i984 ] ; 4 uses
  %.sroa.0.2.i980 = phi float [ %.sroa.0.1.i930, %.lr.ph1021.split.split.preheader.i961 ], [ %.sroa.0.3.i996, %.loopexit.i984 ] ; 4 uses
  %indvars.iv.i981 = phi i64 [ %i.dyu, %.lr.ph1021.split.split.preheader.i961 ], [ %indvars.iv.next.i997, %.loopexit.i984 ] ; 13 uses
  %i.ede = phi <2 x float> [ %i.ebt, %.lr.ph1021.split.split.preheader.i961 ], [ %i.eoi, %.loopexit.i984 ] ; 4 uses
  %i.edf = phi <2 x float> [ %i.ebu, %.lr.ph1021.split.split.preheader.i961 ], [ %i.eoj, %.loopexit.i984 ] ; 4 uses
  %i.edg = phi <2 x float> [ %i.ebv, %.lr.ph1021.split.split.preheader.i961 ], [ %i.eok, %.loopexit.i984 ] ; 4 uses
  %i.edh = phi <2 x float> [ %i.ebw, %.lr.ph1021.split.split.preheader.i961 ], [ %i.eol, %.loopexit.i984 ] ; 5 uses
  %i.edi = add nsw i64 %indvars.iv.i981, -1       ; 4 uses
  %i.edj = icmp eq i64 %indvars.iv.i981, 1
  %i.edk = zext i1 %i.edj to i64
  %i.edl = add nuw nsw i64 %i.edi, %i.edk         ; 21 uses
  %i.edm = icmp eq i64 %indvars.iv.i981, %sext.i917
  %.neg568.i982 = sext i1 %i.edm to i64           ; 2 uses
  %86 = add nsw i64 %i.edi, %.neg568.i982
  %i.edn = icmp sgt i64 %indvars.iv.i981, 0
  %i.edo = icmp slt i64 %indvars.iv.i981, %i.dyv
  %or.cond1036.i983 = select i1 %i.edn, i1 %i.edo, i1 false
  br i1 %or.cond1036.i983, label %bb.ya, label %.loopexit.i984

bb.ya:                                            ; preds = %.lr.ph1021.split.split.i968
  %i.edp = getelementptr inbounds nuw i8, ptr %.sink.i679.i963, i64 %indvars.iv.i981 ; 2 uses
  %i.edq = load i8, ptr %i.edp, align 1, !tbaa !21
  %.not569.i999 = icmp eq i8 %i.edq, 2
  br i1 %.not569.i999, label %.loopexit.i984, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.edr = trunc nuw nsw i64 %indvars.iv.i981 to i32 ; 2 uses
  %i.eds = sub nsw i32 %i.edr, %.2536.i843        ; 2 uses
  %i.edt = mul nsw i32 %i.eds, %i.eds
  %i.edu = add nuw nsw i32 %i.edt, %i.ecg
  %.not570.i1000 = icmp samesign ugt i32 %i.edu, %i.doi
  br i1 %.not570.i1000, label %.loopexit.i984, label %.preheader.i1001

.preheader.i1001:                                 ; preds = %bb.yb
  %i.edv = sub nsw i32 %.2536.i843, %i.edr
  %i.edw = sitofp i32 %i.edv to float             ; 6 uses
  %i.edx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i681.i1004, i64 %indvars.iv.i981
  %i.edy = load float, ptr %i.edx, align 4, !tbaa !46
  %i.edz = load float, ptr %gep1017.i1006, align 4, !tbaa !46
  %i.eea = fsub float %i.edy, %i.edz
  %i.eeb = call float @llvm.fabs.f32(float %i.eea)
  %i.eec = getelementptr inbounds nuw i8, ptr %i.edp, i64 1
  %i.eed = load i8, ptr %i.eec, align 1, !tbaa !21
  %.not571.i1007 = icmp eq i8 %i.eed, 2           ; 3 uses
  %i.eee = getelementptr inbounds nuw i8, ptr %.sink.i703.i965, i64 %indvars.iv.i981
  %i.eef = load i8, ptr %i.eee, align 1, !tbaa !21
  %.not574.i1008 = icmp eq i8 %i.eef, 2           ; 3 uses
  %i.eeg = load i32, ptr %i.doj, align 4, !tbaa !148
  %i.eeh = icmp slt i32 %i.eeg, 2                 ; 22 uses
  %i.eei = load ptr, ptr %i.dok, align 8, !tbaa !149 ; 22 uses
  %i.eej = load i64, ptr %i.dol, align 8          ; 22 uses
  %i.eek = mul i64 %i.eej, %i.ecm
  %.sink.idx.i720.i1009 = select i1 %i.eeh, i64 0, i64 %i.eek
  %.sink.i721.i1010 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i720.i1009
  %i.eel = getelementptr inbounds [3 x i8], ptr %.sink.i721.i1010, i64 %i.edi ; 3 uses
  %i.eem = getelementptr inbounds i8, ptr %.sink.i679.i963, i64 %i.edi
  %87 = add nsw i64 %indvars.iv.i981, %.neg568.i982 ; 3 uses
  %sext1105.i1011 = shl i64 %86, 32
  %88 = ashr exact i64 %sext1105.i1011, 32        ; 3 uses
  %gep1106.i1011 = getelementptr i8, ptr %invariant.gep.i967, i64 %indvars.iv.i981
  %i.een = insertelement <2 x float> poison, float %i.edw, i64 0
  %i.eeo = shufflevector <2 x float> %i.een, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eep = insertelement <2 x float> %i.eeo, float %.sroa.01075.0.i893, i64 1
  %i.eeq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eeo, <2 x float> %i.eep, <2 x float> %i.edc) ; 2 uses
  %i.eer = extractelement <2 x float> %i.eeq, i64 0
  %i.ees = fpext float %i.eeb to double
  %i.eet = fadd double %i.ees, 1.000000e+00
  %i.eeu = fpext float %i.eer to double           ; 2 uses
  %sqrt.i1002 = call nnan double @llvm.sqrt.f64(double %i.eeu)
  %i.eev = fmul double %sqrt.i1002, %i.eeu
  %i.eew = insertelement <2 x double> poison, double %i.eev, i64 0
  %i.eex = insertelement <2 x double> %i.eew, double %i.eet, i64 1
  %i.eey = fdiv <2 x double> splat (double 1.000000e+00), %i.eex
  %i.eez = fptrunc <2 x double> %i.eey to <2 x float> ; 2 uses
  %shift2151 = shufflevector <2 x float> %i.eez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2152 = fmul <2 x float> %shift2151, %i.eez
  %i.efa = extractelement <2 x float> %foldExtExtBinop2152, i64 0 ; 3 uses
  %i.efb = extractelement <2 x float> %i.eeq, i64 1 ; 2 uses
  %i.efc = call float @llvm.fabs.f32(float %i.efb)
  %i.efd = fpext float %i.efc to double
  %i.efe = fcmp ole double %i.efd, 1.000000e-02
  %spec.store.select.i1012 = select i1 %i.efe, float f0x358637BD, float %i.efb
  %i.eff = fmul float %spec.store.select.i1012, %i.efa
  %i.efg = call float @llvm.fabs.f32(float %i.eff) ; 3 uses
  %i.efh = load i8, ptr %i.eem, align 1, !tbaa !21
  %.not572.i1013 = icmp eq i8 %i.efh, 2           ; 2 uses
  br i1 %.not571.i1007, label %bb.yf, label %bb.yc

bb.yc:                                            ; preds = %.preheader.i1001
  %i.efi = mul i64 %i.eej, %i.ecn
  %.sink.idx.i692.i1014 = select i1 %i.eeh, i64 0, i64 %i.efi
  %.sink.i693.i1015 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i692.i1014 ; 2 uses
  %i.efj = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.i1015, i64 %87
  %i.efk = load i8, ptr %i.efj, align 1, !tbaa !21
  %i.efl = zext i8 %i.efk to i32                  ; 2 uses
  %i.efm = getelementptr [3 x i8], ptr %.sink.i693.i1015, i64 %i.edl ; 2 uses
  br i1 %.not572.i1013, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.efn = getelementptr i8, ptr %i.efm, i64 -3
  %i.efo = load i8, ptr %i.efn, align 1, !tbaa !21
  %i.efp = zext i8 %i.efo to i32
  %i.efq = sub nsw i32 %i.efl, %i.efp
  %i.efr = sitofp i32 %i.efq to float
  %i.efs = fmul nnan float %i.efr, 2.000000e+00
  br label %bb.yh

bb.ye:                                            ; preds = %bb.yc
  %i.eft = load i8, ptr %i.efm, align 1, !tbaa !21
  %i.efu = zext i8 %i.eft to i32
  %i.efv = sub nsw i32 %i.efl, %i.efu
  %i.efw = sitofp i32 %i.efv to float
  br label %bb.yh

bb.yf:                                            ; preds = %.preheader.i1001
  br i1 %.not572.i1013, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.efx = mul i64 %i.eej, %i.ecn
  %.sink.idx.i698.i1066 = select i1 %i.eeh, i64 0, i64 %i.efx
  %.sink.i699.i1067 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i698.i1066 ; 2 uses
  %i.efy = getelementptr inbounds [3 x i8], ptr %.sink.i699.i1067, i64 %88
  %i.efz = load i8, ptr %i.efy, align 1, !tbaa !21
  %i.ega = zext i8 %i.efz to i32
  %i.egb = getelementptr [3 x i8], ptr %.sink.i699.i1067, i64 %i.edl
  %i.egc = getelementptr i8, ptr %i.egb, i64 -3
  %i.egd = load i8, ptr %i.egc, align 1, !tbaa !21
  %i.ege = zext i8 %i.egd to i32
  %i.egf = sub nsw i32 %i.ega, %i.ege
  %i.egg = sitofp i32 %i.egf to float
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yf, %bb.ye, %bb.yd
  %.not572.2.i1016 = phi i1 [ false, %bb.yd ], [ false, %bb.yg ], [ true, %bb.ye ], [ true, %bb.yf ] ; 4 uses
  %.sroa.0871.0.i1017 = phi float [ %i.efs, %bb.yd ], [ %i.egg, %bb.yg ], [ %i.efw, %bb.ye ], [ 0.000000e+00, %bb.yf ]
  %i.egh = load i8, ptr %gep1106.i1011, align 1, !tbaa !21
  %.not575.i1018 = icmp eq i8 %i.egh, 2           ; 2 uses
  br i1 %.not574.i1008, label %bb.yl, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.egi = mul i64 %i.eej, %i.ecp
  %.sink.idx.i710.i1019 = select i1 %i.eeh, i64 0, i64 %i.egi
  %.sink.i711.i1020 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i710.i1019
  %i.egj = getelementptr inbounds [3 x i8], ptr %.sink.i711.i1020, i64 %i.edl
  %i.egk = load i8, ptr %i.egj, align 1, !tbaa !21
  %i.egl = zext i8 %i.egk to i32                  ; 2 uses
  br i1 %.not575.i1018, label %bb.yk, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.egm = mul i64 %i.eej, %i.ecr
  %.sink.idx.i708.i1021 = select i1 %i.eeh, i64 0, i64 %i.egm
  %.sink.i709.i1022 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i708.i1021
  %i.egn = getelementptr inbounds [3 x i8], ptr %.sink.i709.i1022, i64 %i.edl
  %i.ego = load i8, ptr %i.egn, align 1, !tbaa !21
  %i.egp = zext i8 %i.ego to i32
  %i.egq = sub nsw i32 %i.egl, %i.egp
  %i.egr = sitofp i32 %i.egq to float
  %i.egs = fmul nnan float %i.egr, 2.000000e+00
  br label %bb.yn

bb.yk:                                            ; preds = %bb.yi
  %i.egt = mul i64 %i.eej, %i.ecn
  %.sink.idx.i712.i1060 = select i1 %i.eeh, i64 0, i64 %i.egt
  %.sink.i713.i1061 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i712.i1060
  %i.egu = getelementptr inbounds [3 x i8], ptr %.sink.i713.i1061, i64 %i.edl
  %i.egv = load i8, ptr %i.egu, align 1, !tbaa !21
  %i.egw = zext i8 %i.egv to i32
  %i.egx = sub nsw i32 %i.egl, %i.egw
  %i.egy = sitofp i32 %i.egx to float
  br label %bb.yn

bb.yl:                                            ; preds = %bb.yh
  br i1 %.not575.i1018, label %bb.yn, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.egz = mul i64 %i.eej, %i.ecs
  %.sink.idx.i716.i1062 = select i1 %i.eeh, i64 0, i64 %i.egz
  %.sink.i717.i1063 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i716.i1062
  %i.eha = getelementptr inbounds [3 x i8], ptr %.sink.i717.i1063, i64 %i.edl
  %i.ehb = load i8, ptr %i.eha, align 1, !tbaa !21
  %i.ehc = zext i8 %i.ehb to i32
  %i.ehd = mul i64 %i.eej, %i.ecr
  %.sink.idx.i718.i1064 = select i1 %i.eeh, i64 0, i64 %i.ehd
  %.sink.i719.i1065 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i718.i1064
  %i.ehe = getelementptr inbounds [3 x i8], ptr %.sink.i719.i1065, i64 %i.edl
  %i.ehf = load i8, ptr %i.ehe, align 1, !tbaa !21
  %i.ehg = zext i8 %i.ehf to i32
  %i.ehh = sub nsw i32 %i.ehc, %i.ehg
  %i.ehi = sitofp i32 %i.ehh to float
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yl, %bb.yk, %bb.yj
  %.not575.2.i1023 = phi i1 [ false, %bb.yj ], [ false, %bb.ym ], [ true, %bb.yk ], [ true, %bb.yl ] ; 4 uses
  %.sroa.8872.0.i1024 = phi float [ %i.egs, %bb.yj ], [ %i.ehi, %bb.ym ], [ %i.egy, %bb.yk ], [ 0.000000e+00, %bb.yl ]
  %i.ehj = load i8, ptr %i.eel, align 1, !tbaa !21
  %i.ehk = uitofp i8 %i.ehj to float
  %i.ehl = fmul float %.sroa.0871.0.i1017, %i.edw
  %i.ehm = fneg float %i.efg                      ; 2 uses
  %i.ehn = fmul float %.sroa.8872.0.i1024, %i.eci
  %i.eho = insertelement <2 x float> poison, float %i.efg, i64 0
  %i.ehp = insertelement <2 x float> %i.eho, float %i.ehm, i64 1
  %i.ehq = insertelement <2 x float> poison, float %i.ehk, i64 0
  %i.ehr = insertelement <2 x float> %i.ehq, float %i.ehn, i64 1
  %i.ehs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ehp, <2 x float> %i.ehr, <2 x float> %i.edf)
  %i.eht = fadd float %.sroa.0.2.i980, %i.efg
  %i.ehu = insertelement <2 x float> poison, float %i.ehm, i64 0
  %i.ehv = insertelement <2 x float> %i.ehu, float %i.edw, i64 1
  %i.ehw = insertelement <2 x float> %i.dyy, float %i.ehl, i64 0
  %i.ehx = insertelement <2 x float> %i.edd, float %.sroa.01069.2.i969, i64 0
  %i.ehy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ehv, <2 x float> %i.ehw, <2 x float> %i.ehx) ; 2 uses
  %i.ehz = extractelement <2 x float> %i.ehy, i64 1 ; 2 uses
  %i.eia = call float @llvm.fabs.f32(float %i.ehz)
  %i.eib = fpext float %i.eia to double
  %i.eic = fcmp ole double %i.eib, 1.000000e-02
  %spec.store.select.1.i1025 = select i1 %i.eic, float f0x358637BD, float %i.ehz
  %i.eid = fmul float %spec.store.select.1.i1025, %i.efa
  %i.eie = call float @llvm.fabs.f32(float %i.eid) ; 3 uses
  br i1 %.not571.i1007, label %bb.yr, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.eif = mul i64 %i.eej, %i.ecn
  %.sink.idx.i692.1.i1026 = select i1 %i.eeh, i64 0, i64 %i.eif
  %.sink.i693.1.i1027 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i692.1.i1026 ; 2 uses
  %i.eig = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.1.i1027, i64 %87
  %i.eih = getelementptr inbounds nuw i8, ptr %i.eig, i64 1
  %i.eii = load i8, ptr %i.eih, align 1, !tbaa !21
  %i.eij = zext i8 %i.eii to i32                  ; 2 uses
  %i.eik = getelementptr [3 x i8], ptr %.sink.i693.1.i1027, i64 %i.edl ; 2 uses
  br i1 %.not572.2.i1016, label %bb.yq, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.eil = getelementptr i8, ptr %i.eik, i64 -2
  %i.eim = load i8, ptr %i.eil, align 1, !tbaa !21
  %i.ein = zext i8 %i.eim to i32
  %i.eio = sub nsw i32 %i.eij, %i.ein
  %i.eip = sitofp i32 %i.eio to float
  %i.eiq = fmul nnan float %i.eip, 2.000000e+00
  br label %bb.yt

bb.yq:                                            ; preds = %bb.yo
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eik, i64 1
  %i.eis = load i8, ptr %i.eir, align 1, !tbaa !21
  %i.eit = zext i8 %i.eis to i32
  %i.eiu = sub nsw i32 %i.eij, %i.eit
  %i.eiv = sitofp i32 %i.eiu to float
  br label %bb.yt

bb.yr:                                            ; preds = %bb.yn
  br i1 %.not572.2.i1016, label %bb.yt, label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %i.eiw = mul i64 %i.eej, %i.ecn
  %.sink.idx.i698.1.i1058 = select i1 %i.eeh, i64 0, i64 %i.eiw
  %.sink.i699.1.i1059 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i698.1.i1058 ; 2 uses
  %i.eix = getelementptr inbounds [3 x i8], ptr %.sink.i699.1.i1059, i64 %88
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.eix, i64 1
  %i.eiz = load i8, ptr %i.eiy, align 1, !tbaa !21
  %i.eja = zext i8 %i.eiz to i32
  %i.ejb = getelementptr [3 x i8], ptr %.sink.i699.1.i1059, i64 %i.edl
  %i.ejc = getelementptr i8, ptr %i.ejb, i64 -2
  %i.ejd = load i8, ptr %i.ejc, align 1, !tbaa !21
  %i.eje = zext i8 %i.ejd to i32
  %i.ejf = sub nsw i32 %i.eja, %i.eje
  %i.ejg = sitofp i32 %i.ejf to float
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.yr, %bb.yq, %bb.yp
  %.sroa.0871.0.1.i1028 = phi float [ %i.eiq, %bb.yp ], [ %i.ejg, %bb.ys ], [ %i.eiv, %bb.yq ], [ 0.000000e+00, %bb.yr ]
  br i1 %.not574.i1008, label %bb.yx, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.ejh = mul i64 %i.eej, %i.ecp
  %.sink.idx.i710.1.i1029 = select i1 %i.eeh, i64 0, i64 %i.ejh
  %.sink.i711.1.i1030 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i710.1.i1029
  %i.eji = getelementptr inbounds [3 x i8], ptr %.sink.i711.1.i1030, i64 %i.edl
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.eji, i64 1
  %i.ejk = load i8, ptr %i.ejj, align 1, !tbaa !21
  %i.ejl = zext i8 %i.ejk to i32                  ; 2 uses
  br i1 %.not575.2.i1023, label %bb.yw, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.ejm = mul i64 %i.eej, %i.ecr
  %.sink.idx.i708.1.i1031 = select i1 %i.eeh, i64 0, i64 %i.ejm
  %.sink.i709.1.i1032 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i708.1.i1031
  %i.ejn = getelementptr inbounds [3 x i8], ptr %.sink.i709.1.i1032, i64 %i.edl
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.ejn, i64 1
  %i.ejp = load i8, ptr %i.ejo, align 1, !tbaa !21
  %i.ejq = zext i8 %i.ejp to i32
  %i.ejr = sub nsw i32 %i.ejl, %i.ejq
  %i.ejs = sitofp i32 %i.ejr to float
  %i.ejt = fmul nnan float %i.ejs, 2.000000e+00
  br label %bb.yz

bb.yw:                                            ; preds = %bb.yu
  %i.eju = mul i64 %i.eej, %i.ecn
  %.sink.idx.i712.1.i1052 = select i1 %i.eeh, i64 0, i64 %i.eju
  %.sink.i713.1.i1053 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i712.1.i1052
  %i.ejv = getelementptr inbounds [3 x i8], ptr %.sink.i713.1.i1053, i64 %i.edl
  %i.ejw = getelementptr inbounds nuw i8, ptr %i.ejv, i64 1
  %i.ejx = load i8, ptr %i.ejw, align 1, !tbaa !21
  %i.ejy = zext i8 %i.ejx to i32
  %i.ejz = sub nsw i32 %i.ejl, %i.ejy
  %i.eka = sitofp i32 %i.ejz to float
  br label %bb.yz

bb.yx:                                            ; preds = %bb.yt
  br i1 %.not575.2.i1023, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.ekb = mul i64 %i.eej, %i.ecs
  %.sink.idx.i716.1.i1054 = select i1 %i.eeh, i64 0, i64 %i.ekb
  %.sink.i717.1.i1055 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i716.1.i1054
  %i.ekc = getelementptr inbounds [3 x i8], ptr %.sink.i717.1.i1055, i64 %i.edl
  %i.ekd = getelementptr inbounds nuw i8, ptr %i.ekc, i64 1
  %i.eke = load i8, ptr %i.ekd, align 1, !tbaa !21
  %i.ekf = zext i8 %i.eke to i32
  %i.ekg = mul i64 %i.eej, %i.ecr
  %.sink.idx.i718.1.i1056 = select i1 %i.eeh, i64 0, i64 %i.ekg
  %.sink.i719.1.i1057 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i718.1.i1056
  %i.ekh = getelementptr inbounds [3 x i8], ptr %.sink.i719.1.i1057, i64 %i.edl
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ekh, i64 1
  %i.ekj = load i8, ptr %i.eki, align 1, !tbaa !21
  %i.ekk = zext i8 %i.ekj to i32
  %i.ekl = sub nsw i32 %i.ekf, %i.ekk
  %i.ekm = sitofp i32 %i.ekl to float
  br label %bb.yz

bb.yz:                                            ; preds = %bb.yy, %bb.yx, %bb.yw, %bb.yv
  %.sroa.8872.0.1.i1033 = phi float [ %i.ejt, %bb.yv ], [ %i.ekm, %bb.yy ], [ %i.eka, %bb.yw ], [ 0.000000e+00, %bb.yx ]
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.eel, i64 1
  %i.eko = load i8, ptr %i.ekn, align 1, !tbaa !21
  %i.ekp = uitofp i8 %i.eko to float
  %i.ekq = fmul float %.sroa.0871.0.1.i1028, %i.edw
  %i.ekr = fneg float %i.eie                      ; 2 uses
  %i.eks = fmul float %.sroa.8872.0.1.i1033, %i.eci
  %i.ekt = insertelement <2 x float> poison, float %i.eie, i64 0
  %i.eku = insertelement <2 x float> %i.ekt, float %i.ekr, i64 1
  %i.ekv = insertelement <2 x float> poison, float %i.ekp, i64 0
  %i.ekw = insertelement <2 x float> %i.ekv, float %i.eks, i64 1
  %i.ekx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eku, <2 x float> %i.ekw, <2 x float> %i.edg)
  %i.eky = fadd float %.sroa.6.2.i979, %i.eie
  %i.ekz = insertelement <2 x float> poison, float %i.ekr, i64 0
  %i.ela = insertelement <2 x float> %i.ekz, float %i.edw, i64 1
  %i.elb = insertelement <2 x float> %i.dyz, float %i.ekq, i64 0
  %i.elc = insertelement <2 x float> %i.edh, float %i.ecz, i64 1
  %i.eld = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ela, <2 x float> %i.elb, <2 x float> %i.elc) ; 2 uses
  %i.ele = extractelement <2 x float> %i.eld, i64 1 ; 2 uses
  %i.elf = call float @llvm.fabs.f32(float %i.ele)
  %i.elg = fpext float %i.elf to double
  %i.elh = fcmp ole double %i.elg, 1.000000e-02
  %spec.store.select.2.i1034 = select i1 %i.elh, float f0x358637BD, float %i.ele
  %i.eli = fmul float %spec.store.select.2.i1034, %i.efa
  %i.elj = call float @llvm.fabs.f32(float %i.eli) ; 3 uses
  br i1 %.not571.i1007, label %bb.zd, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.elk = mul i64 %i.eej, %i.ecn
  %.sink.idx.i692.2.i1035 = select i1 %i.eeh, i64 0, i64 %i.elk
  %.sink.i693.2.i1036 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i692.2.i1035 ; 2 uses
  %i.ell = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.2.i1036, i64 %87
  %i.elm = getelementptr inbounds nuw i8, ptr %i.ell, i64 2
  %i.eln = load i8, ptr %i.elm, align 1, !tbaa !21
  %i.elo = zext i8 %i.eln to i32                  ; 2 uses
  %i.elp = getelementptr [3 x i8], ptr %.sink.i693.2.i1036, i64 %i.edl ; 2 uses
  br i1 %.not572.2.i1016, label %bb.zc, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.elq = getelementptr i8, ptr %i.elp, i64 -1
  %i.elr = load i8, ptr %i.elq, align 1, !tbaa !21
  %i.els = zext i8 %i.elr to i32
  %i.elt = sub nsw i32 %i.elo, %i.els
  %i.elu = sitofp i32 %i.elt to float
  %i.elv = fmul nnan float %i.elu, 2.000000e+00
  br label %bb.zf

bb.zc:                                            ; preds = %bb.za
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elp, i64 2
  %i.elx = load i8, ptr %i.elw, align 1, !tbaa !21
  %i.ely = zext i8 %i.elx to i32
  %i.elz = sub nsw i32 %i.elo, %i.ely
  %i.ema = sitofp i32 %i.elz to float
  br label %bb.zf

bb.zd:                                            ; preds = %bb.yz
  br i1 %.not572.2.i1016, label %bb.zf, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.emb = mul i64 %i.eej, %i.ecn
  %.sink.idx.i698.2.i1050 = select i1 %i.eeh, i64 0, i64 %i.emb
  %.sink.i699.2.i1051 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i698.2.i1050 ; 2 uses
  %i.emc = getelementptr inbounds [3 x i8], ptr %.sink.i699.2.i1051, i64 %88
  %i.emd = getelementptr inbounds nuw i8, ptr %i.emc, i64 2
  %i.eme = load i8, ptr %i.emd, align 1, !tbaa !21
  %i.emf = zext i8 %i.eme to i32
  %i.emg = getelementptr [3 x i8], ptr %.sink.i699.2.i1051, i64 %i.edl
  %i.emh = getelementptr i8, ptr %i.emg, i64 -1
  %i.emi = load i8, ptr %i.emh, align 1, !tbaa !21
  %i.emj = zext i8 %i.emi to i32
  %i.emk = sub nsw i32 %i.emf, %i.emj
  %i.eml = sitofp i32 %i.emk to float
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %bb.zd, %bb.zc, %bb.zb
  %.sroa.0871.0.2.i1037 = phi float [ %i.elv, %bb.zb ], [ %i.eml, %bb.ze ], [ %i.ema, %bb.zc ], [ 0.000000e+00, %bb.zd ]
  br i1 %.not574.i1008, label %bb.zj, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.emm = mul i64 %i.eej, %i.ecp
  %.sink.idx.i710.2.i1038 = select i1 %i.eeh, i64 0, i64 %i.emm
  %.sink.i711.2.i1039 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i710.2.i1038
  %i.emn = getelementptr inbounds [3 x i8], ptr %.sink.i711.2.i1039, i64 %i.edl
  %i.emo = getelementptr inbounds nuw i8, ptr %i.emn, i64 2
  %i.emp = load i8, ptr %i.emo, align 1, !tbaa !21
  %i.emq = zext i8 %i.emp to i32                  ; 2 uses
  br i1 %.not575.2.i1023, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %bb.zg
  %i.emr = mul i64 %i.eej, %i.ecr
  %.sink.idx.i708.2.i1040 = select i1 %i.eeh, i64 0, i64 %i.emr
  %.sink.i709.2.i1041 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i708.2.i1040
  %i.ems = getelementptr inbounds [3 x i8], ptr %.sink.i709.2.i1041, i64 %i.edl
  %i.emt = getelementptr inbounds nuw i8, ptr %i.ems, i64 2
  %i.emu = load i8, ptr %i.emt, align 1, !tbaa !21
  %i.emv = zext i8 %i.emu to i32
  %i.emw = sub nsw i32 %i.emq, %i.emv
  %i.emx = sitofp i32 %i.emw to float
  %i.emy = fmul nnan float %i.emx, 2.000000e+00
  br label %.loopexit.loopexit.i1042

bb.zi:                                            ; preds = %bb.zg
  %i.emz = mul i64 %i.eej, %i.ecn
  %.sink.idx.i712.2.i1044 = select i1 %i.eeh, i64 0, i64 %i.emz
  %.sink.i713.2.i1045 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i712.2.i1044
  %i.ena = getelementptr inbounds [3 x i8], ptr %.sink.i713.2.i1045, i64 %i.edl
  %i.enb = getelementptr inbounds nuw i8, ptr %i.ena, i64 2
  %i.enc = load i8, ptr %i.enb, align 1, !tbaa !21
  %i.end = zext i8 %i.enc to i32
  %i.ene = sub nsw i32 %i.emq, %i.end
  %i.enf = sitofp i32 %i.ene to float
  br label %.loopexit.loopexit.i1042

bb.zj:                                            ; preds = %bb.zf
  br i1 %.not575.2.i1023, label %.loopexit.loopexit.i1042, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.eng = mul i64 %i.eej, %i.ecs
  %.sink.idx.i716.2.i1046 = select i1 %i.eeh, i64 0, i64 %i.eng
  %.sink.i717.2.i1047 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i716.2.i1046
  %i.enh = getelementptr inbounds [3 x i8], ptr %.sink.i717.2.i1047, i64 %i.edl
  %i.eni = getelementptr inbounds nuw i8, ptr %i.enh, i64 2
  %i.enj = load i8, ptr %i.eni, align 1, !tbaa !21
  %i.enk = zext i8 %i.enj to i32
  %i.enl = mul i64 %i.eej, %i.ecr
  %.sink.idx.i718.2.i1048 = select i1 %i.eeh, i64 0, i64 %i.enl
  %.sink.i719.2.i1049 = getelementptr inbounds nuw i8, ptr %i.eei, i64 %.sink.idx.i718.2.i1048
  %i.enm = getelementptr inbounds [3 x i8], ptr %.sink.i719.2.i1049, i64 %i.edl
  %i.enn = getelementptr inbounds nuw i8, ptr %i.enm, i64 2
  %i.eno = load i8, ptr %i.enn, align 1, !tbaa !21
  %i.enp = zext i8 %i.eno to i32
  %i.enq = sub nsw i32 %i.enk, %i.enp
  %i.enr = sitofp i32 %i.enq to float
  br label %.loopexit.loopexit.i1042

.loopexit.loopexit.i1042:                         ; preds = %bb.zk, %bb.zj, %bb.zi, %bb.zh
  %.sroa.8872.0.2.i1043 = phi float [ %i.emy, %bb.zh ], [ %i.enr, %bb.zk ], [ %i.enf, %bb.zi ], [ 0.000000e+00, %bb.zj ]
  %i.ens = getelementptr inbounds nuw i8, ptr %i.eel, i64 2
  %i.ent = load i8, ptr %i.ens, align 1, !tbaa !21
  %i.enu = uitofp i8 %i.ent to float
  %i.env = fmul float %.sroa.0871.0.2.i1037, %i.edw
  %i.enw = fneg float %i.elj                      ; 2 uses
  %i.enx = fmul float %.sroa.8872.0.2.i1043, %i.eci
  %i.eny = insertelement <2 x float> poison, float %i.elj, i64 0
  %i.enz = insertelement <2 x float> %i.eny, float %i.enw, i64 1
  %i.eoa = insertelement <2 x float> poison, float %i.enu, i64 0
  %i.eob = insertelement <2 x float> %i.eoa, float %i.enx, i64 1
  %i.eoc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.enz, <2 x float> %i.eob, <2 x float> %i.ede)
  %i.eod = fadd float %.sroa.9.2.i978, %i.elj
  %i.eoe = extractelement <2 x float> %i.edh, i64 1
  %i.eof = call float @llvm.fmuladd.f32(float %i.enw, float %i.env, float %i.eoe)
  %i.eog = extractelement <2 x float> %i.ehy, i64 0
  %i.eoh = insertelement <2 x float> %i.eld, float %i.eof, i64 1
  br label %.loopexit.i984

.loopexit.i984:                                   ; preds = %.loopexit.loopexit.i1042, %bb.yb, %bb.ya, %.lr.ph1021.split.split.i968
  %.sroa.01069.3.i985 = phi float [ %.sroa.01069.2.i969, %bb.ya ], [ %.sroa.01069.2.i969, %bb.yb ], [ %i.eog, %.loopexit.loopexit.i1042 ], [ %.sroa.01069.2.i969, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %.sroa.9.3.i994 = phi float [ %.sroa.9.2.i978, %bb.ya ], [ %.sroa.9.2.i978, %bb.yb ], [ %i.eod, %.loopexit.loopexit.i1042 ], [ %.sroa.9.2.i978, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %.sroa.6.3.i995 = phi float [ %.sroa.6.2.i979, %bb.ya ], [ %.sroa.6.2.i979, %bb.yb ], [ %i.eky, %.loopexit.loopexit.i1042 ], [ %.sroa.6.2.i979, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %.sroa.0.3.i996 = phi float [ %.sroa.0.2.i980, %bb.ya ], [ %.sroa.0.2.i980, %bb.yb ], [ %i.eht, %.loopexit.loopexit.i1042 ], [ %.sroa.0.2.i980, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %i.eoi = phi <2 x float> [ %i.ede, %bb.ya ], [ %i.ede, %bb.yb ], [ %i.eoc, %.loopexit.loopexit.i1042 ], [ %i.ede, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %i.eoj = phi <2 x float> [ %i.edf, %bb.ya ], [ %i.edf, %bb.yb ], [ %i.ehs, %.loopexit.loopexit.i1042 ], [ %i.edf, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %i.eok = phi <2 x float> [ %i.edg, %bb.ya ], [ %i.edg, %bb.yb ], [ %i.ekx, %.loopexit.loopexit.i1042 ], [ %i.edg, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %i.eol = phi <2 x float> [ %i.edh, %bb.ya ], [ %i.edh, %bb.yb ], [ %i.eoh, %.loopexit.loopexit.i1042 ], [ %i.edh, %.lr.ph1021.split.split.i968 ] ; 2 uses
  %indvars.iv.next.i997 = add nsw i64 %indvars.iv.i981, 1
  %.not567.not.i998 = icmp slt i64 %indvars.iv.i981, %i.dyw
  br i1 %.not567.not.i998, label %.lr.ph1021.split.split.i968, label %._crit_edge1022.i933, !llvm.loop !114

._crit_edge1022.i933:                             ; preds = %.loopexit.i984, %.lr.ph1021.split.i959, %.lr.ph1021.i918
  %.sroa.01069.4.i934 = phi float [ %.sroa.01069.1.i919, %.lr.ph1021.split.i959 ], [ %.sroa.01069.1.i919, %.lr.ph1021.i918 ], [ %.sroa.01069.3.i985, %.loopexit.i984 ] ; 4 uses
  %.sroa.9.4.i943 = phi float [ %.sroa.9.1.i928, %.lr.ph1021.split.i959 ], [ %.sroa.9.1.i928, %.lr.ph1021.i918 ], [ %.sroa.9.3.i994, %.loopexit.i984 ] ; 2 uses
  %.sroa.6.4.i944 = phi float [ %.sroa.6.1.i929, %.lr.ph1021.split.i959 ], [ %.sroa.6.1.i929, %.lr.ph1021.i918 ], [ %.sroa.6.3.i995, %.loopexit.i984 ] ; 2 uses
  %.sroa.0.4.i945 = phi float [ %.sroa.0.1.i930, %.lr.ph1021.split.i959 ], [ %.sroa.0.1.i930, %.lr.ph1021.i918 ], [ %.sroa.0.3.i996, %.loopexit.i984 ] ; 2 uses
  %i.eom = phi <2 x float> [ %i.ebt, %.lr.ph1021.split.i959 ], [ %i.ebt, %.lr.ph1021.i918 ], [ %i.eoi, %.loopexit.i984 ] ; 3 uses
  %i.eon = phi <2 x float> [ %i.ebu, %.lr.ph1021.split.i959 ], [ %i.ebu, %.lr.ph1021.i918 ], [ %i.eoj, %.loopexit.i984 ] ; 3 uses
  %i.eoo = phi <2 x float> [ %i.ebv, %.lr.ph1021.split.i959 ], [ %i.ebv, %.lr.ph1021.i918 ], [ %i.eok, %.loopexit.i984 ] ; 3 uses
  %i.eop = phi <2 x float> [ %i.ebw, %.lr.ph1021.split.i959 ], [ %i.ebw, %.lr.ph1021.i918 ], [ %i.eol, %.loopexit.i984 ] ; 4 uses
  %.not565.i946 = icmp sgt i32 %i.eck, %i.dym
  br i1 %.not565.i946, label %.preheader914.loopexit.i947, label %.lr.ph1021.i918, !llvm.loop !115

bb.zl:                                            ; preds = %.noexc1096, %bb.vi, %bb.vh, %bb.vg, %bb.vf
  %i.eoq = add nuw nsw i32 %.05281033.i841, 1     ; 2 uses
  %exitcond1053.not.i847 = icmp eq i32 %i.eoq, 4
  br i1 %exitcond1053.not.i847, label %.loopexit916.i848, label %bb.vb, !llvm.loop !116

.loopexit918.i697:                                ; preds = %bb.ace
  %i.eor = load ptr, ptr %i.dnb, align 8, !tbaa !47 ; 2 uses
  %i.eos = load ptr, ptr %i.dne, align 8, !tbaa !47
  %.not909.i698 = icmp eq ptr %i.eor, %i.eos
  br i1 %.not909.i698, label %_ZL18icvTeleaInpaintFMMIhEvRN2cv3MatES2_S2_iP20CvPriorityQueueFloat.exit, label %bb.zm, !llvm.loop !117

bb.zm:                                            ; preds = %.loopexit918.i697, %.lr.ph993.i687
  %i.eot = phi ptr [ %i.dnf, %.lr.ph993.i687 ], [ %i.eor, %.loopexit918.i697 ] ; 2 uses
  %i.eou = getelementptr inbounds nuw i8, ptr %i.eot, i64 4
  %i.eov = load i32, ptr %i.eou, align 4, !tbaa !169 ; 5 uses
  %i.eow = getelementptr inbounds nuw i8, ptr %i.eot, i64 8
  %i.eox = load i32, ptr %i.eow, align 4, !tbaa !170 ; 5 uses
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE3popEv(ptr noundef nonnull align 8 dereferenceable(36) %i.dnb)
          to label %.noexc1097 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1097:                                       ; preds = %bb.zm
  %i.eoy = load i32, ptr %i.dnh, align 4, !tbaa !148
  %i.eoz = icmp slt i32 %i.eoy, 2
  %i.epa = load ptr, ptr %i.dni, align 8, !tbaa !149
  %i.epb = load i64, ptr %i.dnj, align 8
  %i.epc = sext i32 %i.eov to i64
  %i.epd = mul i64 %i.epb, %i.epc
  %.sink.idx.i727.i688 = select i1 %i.eoz, i64 0, i64 %i.epd
  %.sink.i728.i689 = getelementptr inbounds nuw i8, ptr %i.epa, i64 %.sink.idx.i727.i688
  %i.epe = sext i32 %i.eox to i64
  %i.epf = getelementptr inbounds i8, ptr %.sink.i728.i689, i64 %i.epe
  store i8 0, ptr %i.epf, align 1, !tbaa !21
  %i.epg = add nsw i32 %i.eox, 1
  %i.eph = add nsw i32 %i.eov, 1
  %i.epi = add nsw i32 %i.eox, -1
  %i.epj = add nsw i32 %i.eov, -1
  br label %bb.zn

bb.zn:                                            ; preds = %bb.ace, %.noexc1097
  %.1529991.i690 = phi i32 [ 0, %.noexc1097 ], [ %i.fcl, %bb.ace ] ; 2 uses
  switch i32 %.1529991.i690, label %default.unreachable908.i835 [
    i32 0, label %bb.zr
    i32 1, label %bb.zo
    i32 2, label %bb.zp
    i32 3, label %bb.zq
  ]

bb.zo:                                            ; preds = %bb.zn
  br label %bb.zr

bb.zp:                                            ; preds = %bb.zn
  br label %bb.zr

bb.zq:                                            ; preds = %bb.zn
  br label %bb.zr

default.unreachable908.i835:                      ; preds = %bb.zn
  unreachable

bb.zr:                                            ; preds = %bb.zq, %bb.zp, %bb.zo, %bb.zn
  %.5543.i691 = phi i32 [ %i.eov, %bb.zq ], [ %i.eov, %bb.zo ], [ %i.eph, %bb.zp ], [ %i.epj, %bb.zn ]
  %.5.i692 = phi i32 [ %i.epg, %bb.zq ], [ %i.epi, %bb.zo ], [ %i.eox, %bb.zp ], [ %i.eox, %bb.zn ] ; 10 uses
  %.5543.fr.i693 = freeze i32 %.5543.i691         ; 10 uses
  %i.epk = icmp slt i32 %.5543.fr.i693, 1
  %i.epl = icmp slt i32 %.5.i692, 1
  %or.cond5.i694 = select i1 %i.epk, i1 true, i1 %i.epl
  br i1 %or.cond5.i694, label %bb.ace, label %bb.zs

bb.zs:                                            ; preds = %bb.zr
  %i.epm = load i32, ptr %i.dnk, align 8, !tbaa !146 ; 3 uses
  %.not.i695 = icmp slt i32 %.5543.fr.i693, %i.epm
  br i1 %.not.i695, label %bb.zt, label %bb.ace

bb.zt:                                            ; preds = %bb.zs
  %i.epn = load i32, ptr %i.dnl, align 4, !tbaa !145 ; 3 uses
  %.not544.i700 = icmp slt i32 %.5.i692, %i.epn
  br i1 %.not544.i700, label %bb.zu, label %bb.ace

bb.zu:                                            ; preds = %bb.zt
  %i.epo = load i32, ptr %i.dnh, align 4, !tbaa !148
  %i.epp = icmp slt i32 %i.epo, 2                 ; 10 uses
  %i.epq = load ptr, ptr %i.dni, align 8, !tbaa !149 ; 9 uses
  %i.epr = load i64, ptr %i.dnj, align 8          ; 3 uses
end_hunk_4
begin_hunk_5_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  br i1 %i.etn, label %bb.aax, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.eto = fadd double %i.etj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727

bb.aax:                                           ; preds = %bb.aav
  %i.etp = fadd double %i.erp, %i.esn
  %i.etq = fneg double %i.etl
  %i.etr = call double @llvm.fmuladd.f64(double %i.etq, double %i.etl, double 2.000000e+00)
  %i.ets = call double @sqrt(double noundef %i.etr) #20
  %i.ett = fadd double %i.etp, %i.ets
  %i.etu = fmul double %i.ett, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727

bb.aay:                                           ; preds = %bb.aau
  %i.etv = fadd double %i.erp, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727

bb.aaz:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i723
  br i1 %.not31.i776.i724, label %bb.abb, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %i.etw = fadd double %i.esn, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727

bb.abb:                                           ; preds = %bb.aaz
  %i.etx = fadd double %i.etj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727: ; preds = %bb.abb, %bb.aba, %bb.aay, %bb.aax, %bb.aaw
  %.0.i777.i728 = phi double [ %i.eto, %bb.aaw ], [ %i.etu, %bb.aax ], [ %i.etv, %bb.aay ], [ %i.etw, %bb.aba ], [ %i.etx, %bb.abb ]
  %i.ety = fptrunc double %.0.i777.i728 to float  ; 2 uses
  %i.etz = fcmp ogt float %i.erj, %i.esi
  %i.eua = select i1 %i.etz, float %i.esi, float %i.erj ; 2 uses
  %i.eub = fcmp ogt float %i.eth, %i.ety
  %i.euc = select i1 %i.eub, float %i.ety, float %i.eth ; 2 uses
  %i.eud = fcmp ogt float %i.eua, %i.euc
  %i.eue = select i1 %i.eud, float %i.euc, float %i.eua ; 2 uses
  %i.euf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i734.i706, i64 %i.epu
  store float %i.eue, ptr %i.euf, align 4, !tbaa !46
  %invariant.gep971.i729 = getelementptr i8, ptr %i.epq, i64 %i.epu ; 2 uses
  %invariant.gep975.i730 = getelementptr [4 x i8], ptr %i.eqc, i64 %i.epu ; 6 uses
  %i.eug = sub nsw i32 %.5543.fr.i693, %i.dl
  %i.euh = add nuw nsw i32 %.5543.fr.i693, %i.dl
  %i.eui = add nsw i32 %i.epm, -2
  %i.euj = sub nsw i32 %.5.i692, %i.dl
  %i.euk = add nuw nsw i32 %.5.i692, %i.dl
  %i.eul = add nsw i32 %i.epn, -2
  %i.eum = add nsw i32 %i.epm, -1
  %i.eun = add nsw i32 %i.epn, -1
  %i.euo = load i32, ptr %i.dnq, align 4, !tbaa !148
  %i.eup = icmp slt i32 %i.euo, 2                 ; 9 uses
  %i.euq = load ptr, ptr %i.dnr, align 8, !tbaa !149 ; 9 uses
  %invariant.gep989.i731 = getelementptr [4 x i8], ptr %i.euq, i64 %i.eqk
  %i.eur = load i64, ptr %i.dnj, align 8          ; 6 uses
  %i.eus = mul i64 %i.eur, %i.eps
  %.sink.idx.i781.i732 = select i1 %i.epp, i64 0, i64 %i.eus
  %.sink.i782.i733 = getelementptr inbounds nuw i8, ptr %i.epq, i64 %.sink.idx.i781.i732 ; 2 uses
  %i.eut = getelementptr inbounds nuw i8, ptr %.sink.i782.i733, i64 %i.esk
  %i.euu = load i8, ptr %i.eut, align 1, !tbaa !21
  %.not545.i734 = icmp eq i8 %i.euu, 2
  %i.euv = getelementptr inbounds nuw i8, ptr %.sink.i782.i733, i64 %i.eqk
  %i.euw = load i8, ptr %i.euv, align 1, !tbaa !21
  %.not546.i735 = icmp eq i8 %i.euw, 2            ; 2 uses
  br i1 %.not545.i734, label %bb.abf, label %bb.abc

bb.abc:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727
  %i.eux = load i64, ptr %i.dno, align 8
  %i.euy = mul i64 %i.eux, %i.eps
  %.sink.idx.i789.i736 = select i1 %i.eqb, i64 0, i64 %i.euy
  %.sink.i790.i737 = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %.sink.idx.i789.i736 ; 3 uses
  %i.euz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i737, i64 %i.esk
  %i.eva = load float, ptr %i.euz, align 4, !tbaa !46 ; 2 uses
  br i1 %.not546.i735, label %bb.abe, label %bb.abd

bb.abd:                                           ; preds = %bb.abc
  %i.evb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i737, i64 %i.eqk
  %i.evc = load float, ptr %i.evb, align 4, !tbaa !46
  %i.evd = fsub float %i.eva, %i.evc
  %i.eve = fmul float %i.evd, 5.000000e-01
  br label %bb.abh

bb.abe:                                           ; preds = %bb.abc
  %i.evf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i737, i64 %i.epu
  %i.evg = load float, ptr %i.evf, align 4, !tbaa !46
  %i.evh = fsub float %i.eva, %i.evg
  br label %bb.abh

bb.abf:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i727
  br i1 %.not546.i735, label %bb.abh, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.evi = load i64, ptr %i.dno, align 8
  %i.evj = mul i64 %i.evi, %i.eps
  %.sink.idx.i795.i831 = select i1 %i.eqb, i64 0, i64 %i.evj
  %.sink.i796.i832 = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %.sink.idx.i795.i831 ; 2 uses
  %i.evk = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i832, i64 %i.epu
  %i.evl = load float, ptr %i.evk, align 4, !tbaa !46
  %i.evm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i832, i64 %i.eqk
  %i.evn = load float, ptr %i.evm, align 4, !tbaa !46
  %i.evo = fsub float %i.evl, %i.evn
  br label %bb.abh

bb.abh:                                           ; preds = %bb.abg, %bb.abf, %bb.abe, %bb.abd
  %.sroa.0865.0.i738 = phi float [ %i.eve, %bb.abd ], [ %i.evo, %bb.abg ], [ %i.evh, %bb.abe ], [ 0.000000e+00, %bb.abf ]
  %i.evp = mul i64 %i.eur, %i.erl
  %.sink.idx.i799.i739 = select i1 %i.epp, i64 0, i64 %i.evp
  %gep972.i740 = getelementptr i8, ptr %invariant.gep971.i729, i64 %.sink.idx.i799.i739
  %i.evq = load i8, ptr %gep972.i740, align 1, !tbaa !21
  %.not548.i741 = icmp eq i8 %i.evq, 2
  %i.evr = mul i64 %i.eur, %i.eqe
  %.sink.idx.i811.i742 = select i1 %i.epp, i64 0, i64 %i.evr
  %gep984.i743 = getelementptr i8, ptr %invariant.gep971.i729, i64 %.sink.idx.i811.i742
  %i.evs = load i8, ptr %gep984.i743, align 1, !tbaa !21
  %.not549.i744 = icmp eq i8 %i.evs, 2            ; 2 uses
  %.pre1966 = load i64, ptr %i.dno, align 8       ; 7 uses
  br i1 %.not548.i741, label %bb.abl, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.evt = mul i64 %.pre1966, %i.erl
  %.sink.idx.i807.i745 = select i1 %i.eqb, i64 0, i64 %i.evt
  %gep980.i746 = getelementptr i8, ptr %invariant.gep975.i730, i64 %.sink.idx.i807.i745
  %i.evu = load float, ptr %gep980.i746, align 4, !tbaa !46 ; 2 uses
  br i1 %.not549.i744, label %bb.abk, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.evv = mul i64 %.pre1966, %i.eqe
  %.sink.idx.i805.i747 = select i1 %i.eqb, i64 0, i64 %i.evv
  %gep978.i748 = getelementptr i8, ptr %invariant.gep975.i730, i64 %.sink.idx.i805.i747
  %i.evw = load float, ptr %gep978.i748, align 4, !tbaa !46
  %i.evx = fsub float %i.evu, %i.evw
  %i.evy = fmul float %i.evx, 5.000000e-01
  br label %bb.abn

bb.abk:                                           ; preds = %bb.abi
  %i.evz = mul i64 %.pre1966, %i.eps
  %.sink.idx.i809.i825 = select i1 %i.eqb, i64 0, i64 %i.evz
  %gep982.i826 = getelementptr i8, ptr %invariant.gep975.i730, i64 %.sink.idx.i809.i825
  %i.ewa = load float, ptr %gep982.i826, align 4, !tbaa !46
  %i.ewb = fsub float %i.evu, %i.ewa
  br label %bb.abn

bb.abl:                                           ; preds = %bb.abh
  br i1 %.not549.i744, label %bb.abn, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.ewc = mul i64 %.pre1966, %i.eps
  %.sink.idx.i813.i827 = select i1 %i.eqb, i64 0, i64 %i.ewc
  %gep986.i828 = getelementptr i8, ptr %invariant.gep975.i730, i64 %.sink.idx.i813.i827
  %i.ewd = load float, ptr %gep986.i828, align 4, !tbaa !46
  %i.ewe = mul i64 %.pre1966, %i.eqe
  %.sink.idx.i815.i829 = select i1 %i.eqb, i64 0, i64 %i.ewe
  %gep988.i830 = getelementptr i8, ptr %invariant.gep975.i730, i64 %.sink.idx.i815.i829
  %i.ewf = load float, ptr %gep988.i830, align 4, !tbaa !46
  %i.ewg = fsub float %i.ewd, %i.ewf
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %bb.abl, %bb.abk, %bb.abj
  %.sroa.8866.0.i749 = phi float [ %i.evy, %bb.abj ], [ %i.ewg, %bb.abm ], [ %i.ewb, %bb.abk ], [ 0.000000e+00, %bb.abl ]
  %i.ewh = mul i64 %.pre1966, %i.eps
  %.sink.idx.i821.i795 = select i1 %i.eqb, i64 0, i64 %i.ewh
  %gep.i796 = getelementptr i8, ptr %invariant.gep975.i730, i64 %.sink.idx.i821.i795
  br label %.lr.ph.i750

.lr.ph.i750:                                      ; preds = %._crit_edge.i763, %bb.abn
  %.0959.i751 = phi float [ %.us-phi933.i767, %._crit_edge.i763 ], [ f0x1E3CE508, %bb.abn ] ; 3 uses
  %.0522956.i754 = phi float [ %.us-phi.i764, %._crit_edge.i763 ], [ 0.000000e+00, %bb.abn ] ; 3 uses
  %.1533955.i755 = phi i32 [ %i.exb, %._crit_edge.i763 ], [ %i.eug, %bb.abn ] ; 10 uses
  %i.ewi = phi <2 x float> [ %i.fbt, %._crit_edge.i763 ], [ zeroinitializer, %bb.abn ] ; 3 uses
  %i.ewj = add nsw i32 %.1533955.i755, -1         ; 3 uses
  %i.ewk = icmp eq i32 %.1533955.i755, 1
  %i.ewl = zext i1 %i.ewk to i32
  %i.ewm = add nuw nsw i32 %i.ewj, %i.ewl         ; 2 uses
  %i.ewn = icmp eq i32 %.1533955.i755, %i.eui
  %.neg.i756 = sext i1 %i.ewn to i32              ; 2 uses
  %i.ewo = add nsw i32 %i.ewj, %.neg.i756
  %i.ewp = icmp sgt i32 %.1533955.i755, 0
  %i.ewq = zext nneg i32 %.1533955.i755 to i64    ; 2 uses
  %i.ewr = mul i64 %i.eur, %i.ewq
  %.sink.idx.i817.i757 = select i1 %i.epp, i64 0, i64 %i.ewr
  %.sink.i818.i758 = getelementptr inbounds nuw i8, ptr %i.epq, i64 %.sink.idx.i817.i757 ; 2 uses
  %i.ews = sub nsw i32 %.1533955.i755, %.5543.fr.i693 ; 2 uses
  %i.ewt = mul nsw i32 %i.ews, %i.ews
  %i.ewu = sub nsw i32 %.5543.fr.i693, %.1533955.i755
  %i.ewv = sitofp i32 %i.ewu to float             ; 2 uses
  %i.eww = insertelement <2 x float> poison, float %i.ewv, i64 0 ; 2 uses
  %i.ewx = insertelement <2 x float> %i.eww, float %.sroa.8866.0.i749, i64 1
  %i.ewy = shufflevector <2 x float> %i.eww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ewz = fmul <2 x float> %i.ewx, %i.ewy
  %i.exa = sext i32 %i.ewm to i64                 ; 3 uses
  %i.exb = add i32 %.1533955.i755, 1              ; 3 uses
  %i.exc = zext nneg i32 %i.exb to i64
  %i.exd = mul i64 %i.eur, %i.exc
  %.sink.idx.i841.i759 = select i1 %i.epp, i64 0, i64 %i.exd
  %.sink.i842.i760 = getelementptr inbounds nuw i8, ptr %i.epq, i64 %.sink.idx.i841.i759
  %i.exe = zext nneg i32 %i.ewj to i64            ; 2 uses
  %i.exf = mul i64 %i.eur, %i.exe
  %.sink.idx.i843.i761 = select i1 %i.epp, i64 0, i64 %i.exf
  %.sink.i844.i762 = getelementptr inbounds nuw i8, ptr %i.epq, i64 %.sink.idx.i843.i761
  %i.exg = add nsw i32 %.1533955.i755, %.neg.i756
  %i.exh = sext i32 %i.exg to i64
  %i.exi = add nsw i32 %i.ewm, -1
  %i.exj = sext i32 %i.exi to i64                 ; 2 uses
  %i.exk = sext i32 %i.ewo to i64
  br i1 %i.ewp, label %.lr.ph.split.i775, label %._crit_edge.i763

.lr.ph.split.i775:                                ; preds = %.lr.ph.i750
  %i.exl = icmp slt i32 %.1533955.i755, %i.eum
  %.fr953.i776 = freeze i1 %i.exl
  br i1 %.fr953.i776, label %.lr.ph.split.split.i777.preheader, label %._crit_edge.i763

.lr.ph.split.split.i777.preheader:                ; preds = %.lr.ph.split.i775
  %i.exm = mul i64 %.pre1966, %i.ewq
  %.sink.idx.i819.i793 = select i1 %i.eqb, i64 0, i64 %i.exm
  %.sink.i820.i794 = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %.sink.idx.i819.i793
  %i.exn = insertelement <2 x float> poison, float %i.ewv, i64 1
  br label %.lr.ph.split.split.i777

.lr.ph.split.split.i777:                          ; preds = %.lr.ph.split.split.i777.preheader, %bb.acd
  %.1927.i778 = phi float [ %.2.i788, %bb.acd ], [ %.0959.i751, %.lr.ph.split.split.i777.preheader ] ; 4 uses
  %.1523924.i781 = phi float [ %.2524.i785, %bb.acd ], [ %.0522956.i754, %.lr.ph.split.split.i777.preheader ] ; 4 uses
  %.1531922.i782 = phi i32 [ %i.fbs, %bb.acd ], [ %i.euj, %.lr.ph.split.split.i777.preheader ] ; 11 uses
  %i.exo = phi <2 x float> [ %i.fbr, %bb.acd ], [ %i.ewi, %.lr.ph.split.split.i777.preheader ] ; 4 uses
  %i.exp = add nsw i32 %.1531922.i782, -1         ; 3 uses
  %i.exq = icmp eq i32 %.1531922.i782, 1
  %i.exr = zext i1 %i.exq to i32
  %i.exs = add nuw nsw i32 %i.exp, %i.exr         ; 4 uses
  %i.ext = icmp eq i32 %.1531922.i782, %i.eul
  %.neg553.i783 = sext i1 %i.ext to i32           ; 2 uses
  %i.exu = add nsw i32 %i.exp, %.neg553.i783
  %i.exv = icmp sgt i32 %.1531922.i782, 0
  %i.exw = icmp slt i32 %.1531922.i782, %i.eun
  %or.cond1037.i784 = select i1 %i.exv, i1 %i.exw, i1 false
  br i1 %or.cond1037.i784, label %bb.abo, label %bb.acd

bb.abo:                                           ; preds = %.lr.ph.split.split.i777
  %i.exx = zext nneg i32 %.1531922.i782 to i64    ; 4 uses
  %i.exy = getelementptr inbounds nuw i8, ptr %.sink.i818.i758, i64 %i.exx ; 2 uses
  %i.exz = load i8, ptr %i.exy, align 1, !tbaa !21
  %.not554.i790 = icmp eq i8 %i.exz, 2
  br i1 %.not554.i790, label %bb.acd, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.eya = sub nsw i32 %.1531922.i782, %.5.i692   ; 2 uses
  %i.eyb = mul nsw i32 %i.eya, %i.eya
  %i.eyc = add nuw nsw i32 %i.eyb, %i.ewt
  %.not555.i791 = icmp samesign ugt i32 %i.eyc, %i.dnp
  br i1 %.not555.i791, label %bb.acd, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.eyd = sub nsw i32 %.5.i692, %.1531922.i782
  %i.eye = sitofp i32 %i.eyd to float             ; 2 uses
  %i.eyf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i820.i794, i64 %i.exx
  %i.eyg = load float, ptr %i.eyf, align 4, !tbaa !46
  %i.eyh = load float, ptr %gep.i796, align 4, !tbaa !46
  %i.eyi = fsub float %i.eyg, %i.eyh
  %i.eyj = insertelement <2 x float> poison, float %i.eye, i64 0
  %i.eyk = shufflevector <2 x float> %i.eyj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eyl = insertelement <2 x float> %i.eyk, float %.sroa.0865.0.i738, i64 1
  %i.eym = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eyk, <2 x float> %i.eyl, <2 x float> %i.ewz) ; 3 uses
  %i.eyn = extractelement <2 x float> %i.eym, i64 0 ; 2 uses
  %sqrt912.i792 = call nnan float @llvm.sqrt.f32(float %i.eyn)
  %i.eyo = fmul float %i.eyn, %sqrt912.i792
  %i.eyp = fdiv float 1.000000e+00, %i.eyo
  %i.eyq = extractelement <2 x float> %i.eym, i64 1
  %i.eyr = insertelement <2 x float> %i.eym, float %i.eyi, i64 0
  %i.eys = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eyr)
  %i.eyt = fpext <2 x float> %i.eys to <2 x double> ; 2 uses
  %i.eyu = extractelement <2 x double> %i.eyt, i64 0
  %i.eyv = fadd double %i.eyu, 1.000000e+00
  %i.eyw = fdiv double 1.000000e+00, %i.eyv
  %i.eyx = fptrunc double %i.eyw to float
  %i.eyy = extractelement <2 x double> %i.eyt, i64 1
  %i.eyz = fcmp ole double %i.eyy, 1.000000e-02
  %spec.store.select8.i797 = select i1 %i.eyz, float f0x358637BD, float %i.eyq
  %i.eza = fmul float %i.eyp, %i.eyx
  %i.ezb = fmul float %spec.store.select8.i797, %i.eza
  %i.ezc = call float @llvm.fabs.f32(float %i.ezb) ; 3 uses
  %i.ezd = getelementptr inbounds nuw i8, ptr %i.exy, i64 1
  %i.eze = load i8, ptr %i.ezd, align 1, !tbaa !21
  %.not556.i798 = icmp eq i8 %i.eze, 2
  %i.ezf = zext nneg i32 %i.exp to i64            ; 2 uses
  %i.ezg = getelementptr inbounds nuw i8, ptr %.sink.i818.i758, i64 %i.ezf
  %i.ezh = load i8, ptr %i.ezg, align 1, !tbaa !21
  %.not557.i799 = icmp eq i8 %i.ezh, 2            ; 2 uses
  br i1 %.not556.i798, label %bb.abu, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.ezi = add nsw i32 %.1531922.i782, %.neg553.i783
  %i.ezj = load i64, ptr %i.dns, align 8          ; 3 uses
  %i.ezk = mul i64 %i.ezj, %i.exa
  %i.ezl = zext nneg i32 %i.ezi to i64
  %i.ezm = sext i32 %i.exs to i64
  %.sink.idx.i831.i821 = select i1 %i.eup, i64 0, i64 %i.ezk
  %.sink.i832.i822 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i831.i821 ; 2 uses
  %i.ezn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i832.i822, i64 %i.ezl
  %i.ezo = load float, ptr %i.ezn, align 4, !tbaa !46 ; 2 uses
  %i.ezp = getelementptr [4 x i8], ptr %.sink.i832.i822, i64 %i.ezm ; 2 uses
  br i1 %.not557.i799, label %bb.abt, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  %i.ezq = getelementptr i8, ptr %i.ezp, i64 -4
  %i.ezr = load float, ptr %i.ezq, align 4, !tbaa !46
  %i.ezs = fsub float %i.ezo, %i.ezr
  %i.ezt = fmul float %i.ezs, 2.000000e+00
  br label %bb.abw

bb.abt:                                           ; preds = %bb.abr
  %i.ezu = load float, ptr %i.ezp, align 4, !tbaa !46
  %i.ezv = fsub float %i.ezo, %i.ezu
  br label %bb.abw

bb.abu:                                           ; preds = %bb.abq
  %.pre1077.i805.pre = load i64, ptr %i.dns, align 8 ; 3 uses
  br i1 %.not557.i799, label %bb.abw, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.ezw = mul i64 %.pre1077.i805.pre, %i.exa
  %.sink.idx.i837.i823 = select i1 %i.eup, i64 0, i64 %i.ezw
  %.sink.i838.i824 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i837.i823 ; 2 uses
  %i.ezx = sext i32 %i.exu to i64
  %i.ezy = getelementptr inbounds [4 x i8], ptr %.sink.i838.i824, i64 %i.ezx
  %i.ezz = load float, ptr %i.ezy, align 4, !tbaa !46
  %i.faa = sext i32 %i.exs to i64
  %i.fab = getelementptr [4 x i8], ptr %.sink.i838.i824, i64 %i.faa
  %i.fac = getelementptr i8, ptr %i.fab, i64 -4
  %i.fad = load float, ptr %i.fac, align 4, !tbaa !46
  %i.fae = fsub float %i.ezz, %i.fad
  br label %bb.abw

bb.abw:                                           ; preds = %bb.abv, %bb.abu, %bb.abt, %bb.abs
  %.pre1077.i805 = phi i64 [ %i.ezj, %bb.abs ], [ %.pre1077.i805.pre, %bb.abv ], [ %i.ezj, %bb.abt ], [ %.pre1077.i805.pre, %bb.abu ] ; 6 uses
  %.sroa.0867.0.i802 = phi float [ %i.ezt, %bb.abs ], [ %i.fae, %bb.abv ], [ %i.ezv, %bb.abt ], [ 0.000000e+00, %bb.abu ]
  %i.faf = getelementptr inbounds nuw i8, ptr %.sink.i842.i760, i64 %i.exx
  %i.fag = load i8, ptr %i.faf, align 1, !tbaa !21
  %.not559.i803 = icmp eq i8 %i.fag, 2
  %i.fah = getelementptr inbounds nuw i8, ptr %.sink.i844.i762, i64 %i.exx
  %i.fai = load i8, ptr %i.fah, align 1, !tbaa !21
  %.not560.i804 = icmp eq i8 %i.fai, 2            ; 2 uses
  br i1 %.not559.i803, label %bb.aca, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.faj = mul i64 %.pre1077.i805, %i.exh
  %i.fak = sext i32 %i.exs to i64                 ; 3 uses
  %.sink.idx.i849.i813 = select i1 %i.eup, i64 0, i64 %i.faj
  %.sink.i850.i814 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i849.i813
  %i.fal = getelementptr inbounds [4 x i8], ptr %.sink.i850.i814, i64 %i.fak
  %i.fam = load float, ptr %i.fal, align 4, !tbaa !46 ; 2 uses
  br i1 %.not560.i804, label %bb.abz, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  %i.fan = mul i64 %.pre1077.i805, %i.exj
  %.sink.idx.i847.i808 = select i1 %i.eup, i64 0, i64 %i.fan
  %.sink.i848.i809 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i847.i808
  %i.fao = getelementptr inbounds [4 x i8], ptr %.sink.i848.i809, i64 %i.fak
  %i.fap = load float, ptr %i.fao, align 4, !tbaa !46
  %i.faq = fsub float %i.fam, %i.fap
  %i.far = fmul float %i.faq, 2.000000e+00
  br label %bb.acc

bb.abz:                                           ; preds = %bb.abx
  %i.fas = mul i64 %.pre1077.i805, %i.exa
  %.sink.idx.i851.i815 = select i1 %i.eup, i64 0, i64 %i.fas
  %.sink.i852.i816 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i851.i815
  %i.fat = getelementptr inbounds [4 x i8], ptr %.sink.i852.i816, i64 %i.fak
  %i.fau = load float, ptr %i.fat, align 4, !tbaa !46
  %i.fav = fsub float %i.fam, %i.fau
  br label %bb.acc

bb.aca:                                           ; preds = %bb.abw
  br i1 %.not560.i804, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.faw = mul i64 %.pre1077.i805, %i.exk
  %.sink.idx.i855.i817 = select i1 %i.eup, i64 0, i64 %i.faw
  %.sink.i856.i818 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i855.i817
  %i.fax = sext i32 %i.exs to i64                 ; 2 uses
  %i.fay = getelementptr inbounds [4 x i8], ptr %.sink.i856.i818, i64 %i.fax
  %i.faz = load float, ptr %i.fay, align 4, !tbaa !46
  %i.fba = mul i64 %.pre1077.i805, %i.exj
  %.sink.idx.i857.i819 = select i1 %i.eup, i64 0, i64 %i.fba
  %.sink.i858.i820 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i857.i819
  %i.fbb = getelementptr inbounds [4 x i8], ptr %.sink.i858.i820, i64 %i.fax
  %i.fbc = load float, ptr %i.fbb, align 4, !tbaa !46
  %i.fbd = fsub float %i.faz, %i.fbc
  br label %bb.acc

bb.acc:                                           ; preds = %bb.acb, %bb.aca, %bb.abz, %bb.aby
  %.sroa.8868.0.i810 = phi float [ %i.far, %bb.aby ], [ %i.fbd, %bb.acb ], [ %i.fav, %bb.abz ], [ 0.000000e+00, %bb.aca ]
  %i.fbe = mul i64 %.pre1077.i805, %i.exe
  %.sink.idx.i859.i811 = select i1 %i.eup, i64 0, i64 %i.fbe
  %.sink.i860.i812 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i859.i811
  %i.fbf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i860.i812, i64 %i.ezf
  %i.fbg = load float, ptr %i.fbf, align 4, !tbaa !46
  %i.fbh = call float @llvm.fmuladd.f32(float %i.ezc, float %i.fbg, float %.1523924.i781)
  %i.fbi = insertelement <2 x float> poison, float %.sroa.0867.0.i802, i64 0
  %i.fbj = insertelement <2 x float> %i.fbi, float %.sroa.8868.0.i810, i64 1
  %i.fbk = insertelement <2 x float> %i.exn, float %i.eye, i64 0
  %i.fbl = fmul <2 x float> %i.fbj, %i.fbk
  %i.fbm = fneg float %i.ezc
end_hunk_5
begin_hunk_6_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.fis = call double @sqrt(double noundef %i.fir) #20
  %i.fit = fadd double %i.fip, %i.fis
  %i.fiu = fmul double %i.fit, 5.000000e-01
  %.pr.pre.i1150 = load i8, ptr %i.fij, align 1, !tbaa !21
  %i.fiv = icmp eq i8 %.pr.pre.i1150, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.ado:                                           ; preds = %bb.adk
  %i.fiw = fadd double %i.fga, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.adp:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit482.i
  br i1 %.not31.i492.i, label %bb.adr, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  %i.fix = fadd double %i.fif, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.adr:                                           ; preds = %bb.adp
  %i.fiy = fadd double %i.fih, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i: ; preds = %bb.adr, %bb.adq, %bb.ado, %bb.adn, %bb.adm
  %.not31.i504.i = phi i1 [ true, %bb.adr ], [ true, %bb.ado ], [ false, %bb.adq ], [ %i.fiv, %bb.adn ], [ false, %bb.adm ] ; 2 uses
  %.0.i493.i = phi double [ %i.fiy, %bb.adr ], [ %i.fiw, %bb.ado ], [ %i.fix, %bb.adq ], [ %i.fiu, %bb.adn ], [ %i.fio, %bb.adm ]
  %i.fiz = fptrunc double %.0.i493.i to float     ; 2 uses
  %i.fja = fcmp ogt float %i.fhg, %i.fie
  %i.fjb = select i1 %i.fja, double %i.fif, double %i.fhh ; 2 uses
  %i.fjc = load i8, ptr %i.fhl, align 1, !tbaa !21
  %.not.i501.i = icmp eq i8 %i.fjc, 2
  br i1 %.not.i501.i, label %bb.adx, label %bb.ads

bb.ads:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i
  br i1 %.not31.i504.i, label %bb.adw, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  %i.fjd = fsub double %i.fhh, %i.fif             ; 3 uses
  %i.fje = call double @llvm.fabs.f64(double %i.fjd)
  %i.fjf = fcmp ult double %i.fje, 1.000000e+00
  br i1 %i.fjf, label %bb.adv, label %bb.adu

bb.adu:                                           ; preds = %bb.adt
  %i.fjg = fadd double %i.fjb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.adv:                                           ; preds = %bb.adt
  %i.fjh = fadd double %i.fhh, %i.fif
  %i.fji = fneg double %i.fjd
  %i.fjj = call double @llvm.fmuladd.f64(double %i.fji, double %i.fjd, double 2.000000e+00)
  %i.fjk = call double @sqrt(double noundef %i.fjj) #20
  %i.fjl = fadd double %i.fjh, %i.fjk
  %i.fjm = fmul double %i.fjl, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.adw:                                           ; preds = %bb.ads
  %i.fjn = fadd double %i.fhh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.adx:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i
  br i1 %.not31.i504.i, label %bb.adz, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %i.fjo = fadd double %i.fif, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.adz:                                           ; preds = %bb.adx
  %i.fjp = fadd double %i.fjb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i: ; preds = %bb.adz, %bb.ady, %bb.adw, %bb.adv, %bb.adu
  %.0.i505.i = phi double [ %i.fjg, %bb.adu ], [ %i.fjm, %bb.adv ], [ %i.fjn, %bb.adw ], [ %i.fjo, %bb.ady ], [ %i.fjp, %bb.adz ]
  %i.fjq = fptrunc double %.0.i505.i to float     ; 2 uses
  %i.fjr = fcmp ogt float %i.fhb, %i.fia
  %i.fjs = select i1 %i.fjr, float %i.fia, float %i.fhb ; 2 uses
  %i.fjt = fcmp ogt float %i.fiz, %i.fjq
  %i.fju = select i1 %i.fjt, float %i.fjq, float %i.fiz ; 2 uses
  %i.fjv = fcmp ogt float %i.fjs, %i.fju
  %i.fjw = select i1 %i.fjv, float %i.fju, float %i.fjs ; 2 uses
  %i.fjx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1123, i64 %i.ffm
  store float %i.fjw, ptr %i.fjx, align 4, !tbaa !46
  %i.fjy = add nuw nsw i32 %.2404.fr.i, %i.dl
  %i.fjz = sub nsw i32 %.2404.fr.i, %i.dl
  %i.fka = load i32, ptr %i.fu, align 8, !tbaa !146 ; 2 uses
  %i.fkb = add nsw i32 %i.fka, -2
  %i.fkc = add nsw i32 %i.fka, -1
  %i.fkd = add nuw nsw i32 %.2401.i, %i.dl
  %i.fke = sub nsw i32 %.2401.i, %i.dl
  %i.fkf = load i32, ptr %i.eo, align 4, !tbaa !145 ; 2 uses
  %i.fkg = add nsw i32 %i.fkf, -2
  %i.fkh = add nsw i32 %i.fkf, -1
  %i.fki = sext i32 %i.fke to i64
  %i.fkj = sext i32 %i.fkh to i64
  %i.fkk = zext nneg i32 %i.fkd to i64
  %sext.i1130 = sext i32 %i.fkg to i64
  %i.fkl = load i64, ptr %i.fdv, align 8          ; 3 uses
  br label %.lr.ph756.i

.preheader712.loopexit.i:                         ; preds = %._crit_edge757.i
  %i.fkm = fpext float %.sroa.0789.4.i to double
  %i.fkn = fpext float %.sroa.0.4.i1136 to double
  %i.fko = fdiv double %i.fkm, %i.fkn
  %i.fkp = fpext float %.sroa.6791.4.i to double
  %i.fkq = fpext float %.sroa.6.4.i1135 to double
  %i.fkr = fdiv double %i.fkp, %i.fkq
  %i.fks = fpext float %.sroa.9793.4.i to double
  %i.fkt = fpext float %.sroa.9.4.i1134 to double
  %i.fku = fdiv double %i.fks, %i.fkt
  %i.fkv = insertelement <2 x double> poison, double %i.fko, i64 0
  %i.fkw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fkv)
  %i.fkx = call i32 @llvm.smax.i32(i32 %i.fkw, i32 0)
  %i.fky = call i32 @llvm.umin.i32(i32 %i.fkx, i32 255)
  %i.fkz = trunc nuw i32 %i.fky to i8
  %i.fla = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.flb = icmp slt i32 %i.fla, 2
  %i.flc = load ptr, ptr %i.fed, align 8, !tbaa !149
  %i.fld = load i64, ptr %i.fee, align 8
  %i.fle = mul i64 %i.fld, %i.ffw
  %.sink.idx.i557.i = select i1 %i.flb, i64 0, i64 %i.fle
  %.sink.i558.i = getelementptr inbounds nuw i8, ptr %i.flc, i64 %.sink.idx.i557.i
  %i.flf = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i, i64 %i.fgc
  store i8 %i.fkz, ptr %i.flf, align 1, !tbaa !21
  %i.flg = insertelement <2 x double> poison, double %i.fkr, i64 0
  %i.flh = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.flg)
  %i.fli = call i32 @llvm.smax.i32(i32 %i.flh, i32 0)
  %i.flj = call i32 @llvm.umin.i32(i32 %i.fli, i32 255)
  %i.flk = trunc nuw i32 %i.flj to i8
  %i.fll = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.flm = icmp slt i32 %i.fll, 2
  %i.fln = load ptr, ptr %i.fed, align 8, !tbaa !149
  %i.flo = load i64, ptr %i.fee, align 8
  %i.flp = mul i64 %i.flo, %i.ffw
  %.sink.idx.i557.1.i = select i1 %i.flm, i64 0, i64 %i.flp
  %.sink.i558.1.i = getelementptr inbounds nuw i8, ptr %i.fln, i64 %.sink.idx.i557.1.i
  %i.flq = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i, i64 %i.fgc
  %i.flr = getelementptr inbounds nuw i8, ptr %i.flq, i64 1
  store i8 %i.flk, ptr %i.flr, align 1, !tbaa !21
  %i.fls = insertelement <2 x double> poison, double %i.fku, i64 0
  %i.flt = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fls)
  %i.flu = call i32 @llvm.smax.i32(i32 %i.flt, i32 0)
  %i.flv = call i32 @llvm.umin.i32(i32 %i.flu, i32 255)
  %i.flw = trunc nuw i32 %i.flv to i8
  %i.flx = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.fly = icmp slt i32 %i.flx, 2
  %i.flz = load ptr, ptr %i.fed, align 8, !tbaa !149
  %i.fma = load i64, ptr %i.fee, align 8
  %i.fmb = mul i64 %i.fma, %i.ffw
  %.sink.idx.i557.2.i = select i1 %i.fly, i64 0, i64 %i.fmb
  %.sink.i558.2.i = getelementptr inbounds nuw i8, ptr %i.flz, i64 %.sink.idx.i557.2.i
  %i.fmc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i, i64 %i.fgc
  %i.fmd = getelementptr inbounds nuw i8, ptr %i.fmc, i64 2
  store i8 %i.flw, ptr %i.fmd, align 1, !tbaa !21
  %i.fme = load i32, ptr %i.fdt, align 4, !tbaa !148
  %i.fmf = icmp slt i32 %i.fme, 2
  %i.fmg = load ptr, ptr %i.fdu, align 8, !tbaa !149
  %i.fmh = load i64, ptr %i.fdv, align 8
  %i.fmi = mul i64 %i.fmh, %i.ffk
  %.sink.idx.i559.i = select i1 %i.fmf, i64 0, i64 %i.fmi
  %.sink.i560.i = getelementptr inbounds nuw i8, ptr %i.fmg, i64 %.sink.idx.i559.i
  %i.fmj = getelementptr inbounds nuw i8, ptr %.sink.i560.i, i64 %i.ffm
  store i8 1, ptr %i.fmj, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store float %i.fjw, ptr %10, align 4, !tbaa !50
  store i32 %.2404.fr.i, ptr %i.fef, align 4, !tbaa !169
  store i32 %.2401.i, ptr %i.feg, align 4, !tbaa !170
  %i.fmk = load i32, ptr %i.fei, align 8, !tbaa !162
  store i32 %i.fmk, ptr %i.feh, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.md, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %.noexc1153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1153:                                       ; preds = %.preheader712.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.fml = load i32, ptr %i.fei, align 8, !tbaa !162
  %i.fmm = add nsw i32 %i.fml, 1
  store i32 %i.fmm, ptr %i.fei, align 8, !tbaa !162
  br label %bb.afr

.lr.ph756.i:                                      ; preds = %._crit_edge757.i, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i
  %.sroa.0789.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.0789.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.6791.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.6791.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.9793.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.9793.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.9.1.i1131 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.9.4.i1134, %._crit_edge757.i ] ; 3 uses
  %.sroa.6.1.i1132 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.6.4.i1135, %._crit_edge757.i ] ; 3 uses
  %.sroa.0.1.i1133 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.0.4.i1136, %._crit_edge757.i ] ; 3 uses
  %.0397764.i = phi i32 [ %i.fjz, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %i.fmz, %._crit_edge757.i ] ; 9 uses
  %i.fmn = add nsw i32 %.0397764.i, -1            ; 3 uses
  %i.fmo = icmp eq i32 %.0397764.i, 1
  %i.fmp = zext i1 %i.fmo to i32
  %i.fmq = add nuw nsw i32 %i.fmn, %i.fmp         ; 2 uses
  %i.fmr = icmp eq i32 %.0397764.i, %i.fkb
  %.neg423.i = sext i1 %i.fmr to i32              ; 2 uses
  %i.fms = add i32 %i.fmn, %.neg423.i
  %i.fmt = icmp sgt i32 %.0397764.i, 0
  %i.fmu = zext nneg i32 %.0397764.i to i64
  %i.fmv = sub nsw i32 %.0397764.i, %.2404.fr.i   ; 3 uses
  %i.fmw = mul nsw i32 %i.fmv, %i.fmv
  %i.fmx = sitofp i32 %i.fmv to float             ; 5 uses
  %i.fmy = fmul nnan float %i.fmx, %i.fmx
  %i.fmz = add i32 %.0397764.i, 1                 ; 3 uses
  %i.fna = zext nneg i32 %i.fmz to i64
  %i.fnb = sext i32 %i.fmn to i64                 ; 2 uses
  %i.fnc = add nsw i32 %.0397764.i, %.neg423.i
  %i.fnd = sext i32 %i.fnc to i64                 ; 3 uses
  %i.fne = sext i32 %i.fms to i64                 ; 6 uses
  %i.fnf = add nsw i32 %i.fmq, -1
  %i.fng = sext i32 %i.fnf to i64                 ; 6 uses
  %i.fnh = sext i32 %i.fmq to i64                 ; 6 uses
  br i1 %i.fmt, label %.lr.ph756.split.i, label %._crit_edge757.i

.lr.ph756.split.i:                                ; preds = %.lr.ph756.i
  %i.fni = icmp slt i32 %.0397764.i, %i.fkc
  %.fr762.i = freeze i1 %i.fni
  br i1 %.fr762.i, label %.lr.ph756.split.split.i.preheader, label %._crit_edge757.i

.lr.ph756.split.split.i.preheader:                ; preds = %.lr.ph756.split.i
  %i.fnj = mul i64 %i.fkl, %i.fmu
  %.sink.idx.i509.i = select i1 %i.ffh, i64 0, i64 %i.fnj
  %.sink.i510.i = getelementptr inbounds nuw i8, ptr %i.ffi, i64 %.sink.idx.i509.i ; 2 uses
  %i.fnk = mul i64 %i.fkl, %i.fna
  %.sink.idx.i511.i = select i1 %i.ffh, i64 0, i64 %i.fnk
  %.sink.i512.i = getelementptr inbounds nuw i8, ptr %i.ffi, i64 %.sink.idx.i511.i
  %i.fnl = mul i64 %i.fkl, %i.fnb
  %.sink.idx.i513.i = select i1 %i.ffh, i64 0, i64 %i.fnl
  %invariant.gep1899 = getelementptr i8, ptr %i.ffi, i64 %.sink.idx.i513.i
  br label %.lr.ph756.split.split.i

.lr.ph756.split.split.i:                          ; preds = %.lr.ph756.split.split.i.preheader, %.loopexit.i1141
  %.sroa.0789.2.i = phi float [ %.sroa.0789.3.i, %.loopexit.i1141 ], [ %.sroa.0789.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.6791.2.i = phi float [ %.sroa.6791.3.i, %.loopexit.i1141 ], [ %.sroa.6791.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.9793.2.i = phi float [ %.sroa.9793.3.i, %.loopexit.i1141 ], [ %.sroa.9793.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.9.2.i1137 = phi float [ %.sroa.9.3.i1142, %.loopexit.i1141 ], [ %.sroa.9.1.i1131, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.6.2.i1138 = phi float [ %.sroa.6.3.i1143, %.loopexit.i1141 ], [ %.sroa.6.1.i1132, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.0.2.i1139 = phi float [ %.sroa.0.3.i1144, %.loopexit.i1141 ], [ %.sroa.0.1.i1133, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %indvars.iv.i1140 = phi i64 [ %indvars.iv.next.i1145, %.loopexit.i1141 ], [ %i.fki, %.lr.ph756.split.split.i.preheader ] ; 12 uses
  %i.fnm = add nsw i64 %indvars.iv.i1140, -1      ; 3 uses
  %i.fnn = icmp eq i64 %indvars.iv.i1140, 1
  %i.fno = zext i1 %i.fnn to i64
  %i.fnp = add nuw nsw i64 %i.fnm, %i.fno         ; 21 uses
  %i.fnq = icmp eq i64 %indvars.iv.i1140, %sext.i1130
  %i.fnr = icmp sgt i64 %indvars.iv.i1140, 0
  %i.fns = icmp slt i64 %indvars.iv.i1140, %i.fkj
  %or.cond770.i = select i1 %i.fnr, i1 %i.fns, i1 false
  br i1 %or.cond770.i, label %bb.aea, label %.loopexit.i1141

bb.aea:                                           ; preds = %.lr.ph756.split.split.i
  %i.fnt = getelementptr inbounds nuw i8, ptr %.sink.i510.i, i64 %indvars.iv.i1140 ; 2 uses
  %i.fnu = load i8, ptr %i.fnt, align 1, !tbaa !21
  %.not426.i = icmp eq i8 %i.fnu, 2
  br i1 %.not426.i, label %.loopexit.i1141, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  %i.fnv = trunc nuw nsw i64 %indvars.iv.i1140 to i32
  %i.fnw = sub nsw i32 %i.fnv, %.2401.i           ; 3 uses
  %i.fnx = mul nsw i32 %i.fnw, %i.fnw
  %i.fny = add nuw nsw i32 %i.fnx, %i.fmw
  %.not427.i = icmp samesign ugt i32 %i.fny, %i.feb
  br i1 %.not427.i, label %.loopexit.i1141, label %.preheader.i1146

.preheader.i1146:                                 ; preds = %bb.aeb
  %i.fnz = sitofp i32 %i.fnw to float             ; 5 uses
  %i.foa = call noundef float @llvm.fmuladd.f32(float %i.fnz, float %i.fnz, float %i.fmy) ; 5 uses
  %i.fob = call nnan float @llvm.fmuladd.f32(float %i.foa, float %i.foa, float 1.000000e+00)
  %i.foc = fdiv nnan float 1.000000e+00, %i.fob   ; 3 uses
  %i.fod = getelementptr inbounds nuw i8, ptr %.sink.i512.i, i64 %indvars.iv.i1140 ; 3 uses
  %i.foe = getelementptr inbounds nuw i8, ptr %i.fnt, i64 1 ; 3 uses
  %i.fof = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.fog = icmp slt i32 %i.fof, 2                 ; 22 uses
  %i.foh = load ptr, ptr %i.fed, align 8, !tbaa !149 ; 22 uses
  %i.foi = load i64, ptr %i.fee, align 8          ; 22 uses
  %i.foj = mul i64 %i.foi, %i.fnb
  %.sink.idx.i555.i = select i1 %i.fog, i64 0, i64 %i.foj
  %.sink.i556.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i555.i
  %i.fok = getelementptr inbounds [3 x i8], ptr %.sink.i556.i, i64 %i.fnm ; 3 uses
  %gep1900 = getelementptr i8, ptr %invariant.gep1899, i64 %indvars.iv.i1140 ; 3 uses
  %i.fol = getelementptr inbounds i8, ptr %.sink.i510.i, i64 %i.fnm ; 3 uses
  %89 = sext i1 %i.fnq to i64
  %i.fom = add nsw i64 %indvars.iv.i1140, %89     ; 3 uses
  %i.fon = load i8, ptr %i.fod, align 1, !tbaa !21 ; 2 uses
  %.not428.i = icmp eq i8 %i.fon, 2
  %i.foo = load i8, ptr %gep1900, align 1, !tbaa !21 ; 2 uses
  %.not429.i = icmp eq i8 %i.foo, 2               ; 2 uses
  br i1 %.not428.i, label %bb.aef, label %bb.aec

bb.aec:                                           ; preds = %.preheader.i1146
  %i.fop = mul i64 %i.foi, %i.fnd
  %.sink.idx.i523.i = select i1 %i.fog, i64 0, i64 %i.fop
  %.sink.i524.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i523.i
  %i.foq = getelementptr inbounds [3 x i8], ptr %.sink.i524.i, i64 %i.fnp
  %i.for = load i8, ptr %i.foq, align 1, !tbaa !21
  %i.fos = zext i8 %i.for to i32
  %i.fot = mul i64 %i.foi, %i.fne
  %.sink.idx.i525.i = select i1 %i.fog, i64 0, i64 %i.fot
  %.sink.i526.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i525.i
  %i.fou = getelementptr inbounds [3 x i8], ptr %.sink.i526.i, i64 %i.fnp
  %i.fov = load i8, ptr %i.fou, align 1, !tbaa !21
  %i.fow = zext i8 %i.fov to i32                  ; 2 uses
  %i.fox = sub nsw i32 %i.fos, %i.fow
  %i.foy = call i32 @llvm.abs.i32(i32 %i.fox, i1 true) ; 2 uses
  br i1 %.not429.i, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.foz = mul i64 %i.foi, %i.fng
  %.sink.idx.i521.i = select i1 %i.fog, i64 0, i64 %i.foz
  %.sink.i522.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i521.i
  %i.fpa = getelementptr inbounds [3 x i8], ptr %.sink.i522.i, i64 %i.fnp
  %i.fpb = load i8, ptr %i.fpa, align 1, !tbaa !21
  %i.fpc = zext i8 %i.fpb to i32
  %i.fpd = sub nsw i32 %i.fow, %i.fpc
  %i.fpe = call i32 @llvm.abs.i32(i32 %i.fpd, i1 true)
  %i.fpf = add nuw nsw i32 %i.fpe, %i.foy
  %i.fpg = uitofp nneg i32 %i.fpf to float
  br label %bb.aeh

bb.aee:                                           ; preds = %bb.aec
  %i.fph = uitofp nneg i32 %i.foy to float
  %i.fpi = fmul nnan float %i.fph, 2.000000e+00
  br label %bb.aeh

bb.aef:                                           ; preds = %.preheader.i1146
  br i1 %.not429.i, label %bb.aeh, label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef
  %i.fpj = mul i64 %i.foi, %i.fne
  %.sink.idx.i529.i = select i1 %i.fog, i64 0, i64 %i.fpj
  %.sink.i530.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i529.i
  %i.fpk = getelementptr inbounds [3 x i8], ptr %.sink.i530.i, i64 %i.fnp
  %i.fpl = load i8, ptr %i.fpk, align 1, !tbaa !21
  %i.fpm = zext i8 %i.fpl to i32
  %i.fpn = mul i64 %i.foi, %i.fng
  %.sink.idx.i531.i = select i1 %i.fog, i64 0, i64 %i.fpn
  %.sink.i532.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i531.i
  %i.fpo = getelementptr inbounds [3 x i8], ptr %.sink.i532.i, i64 %i.fnp
  %i.fpp = load i8, ptr %i.fpo, align 1, !tbaa !21
  %i.fpq = zext i8 %i.fpp to i32
  %i.fpr = sub nsw i32 %i.fpm, %i.fpq
  %i.fps = call i32 @llvm.abs.i32(i32 %i.fpr, i1 true)
  %i.fpt = uitofp nneg i32 %i.fps to float
  %i.fpu = fmul nnan float %i.fpt, 2.000000e+00
  br label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg, %bb.aef, %bb.aee, %bb.aed
  %.sroa.0671.0.i = phi float [ %i.fpg, %bb.aed ], [ %i.fpu, %bb.aeg ], [ %i.fpi, %bb.aee ], [ 0.000000e+00, %bb.aef ] ; 3 uses
  %i.fpv = load i8, ptr %i.foe, align 1, !tbaa !21
  %.not431.i = icmp eq i8 %i.fpv, 2
  %i.fpw = load i8, ptr %i.fol, align 1, !tbaa !21
  %.not432.i = icmp eq i8 %i.fpw, 2               ; 2 uses
  br i1 %.not431.i, label %bb.ael, label %bb.aei

bb.aei:                                           ; preds = %bb.aeh
  %i.fpx = mul i64 %i.foi, %i.fnh
  %.sink.idx.i545.i = select i1 %i.fog, i64 0, i64 %i.fpx
  %.sink.i546.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i545.i ; 2 uses
  %i.fpy = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i, i64 %i.fom
  %i.fpz = load i8, ptr %i.fpy, align 1, !tbaa !21
  %i.fqa = zext i8 %i.fpz to i32
  %i.fqb = getelementptr [3 x i8], ptr %.sink.i546.i, i64 %i.fnp ; 2 uses
  %i.fqc = load i8, ptr %i.fqb, align 1, !tbaa !21
  %i.fqd = zext i8 %i.fqc to i32                  ; 2 uses
  %i.fqe = sub nsw i32 %i.fqa, %i.fqd
  %i.fqf = call i32 @llvm.abs.i32(i32 %i.fqe, i1 true) ; 2 uses
  br i1 %.not432.i, label %bb.aek, label %bb.aej

bb.aej:                                           ; preds = %bb.aei
  %i.fqg = getelementptr i8, ptr %i.fqb, i64 -3
  %i.fqh = load i8, ptr %i.fqg, align 1, !tbaa !21
  %i.fqi = zext i8 %i.fqh to i32
  %i.fqj = sub nsw i32 %i.fqd, %i.fqi
  %i.fqk = call i32 @llvm.abs.i32(i32 %i.fqj, i1 true)
  %i.fql = add nuw nsw i32 %i.fqk, %i.fqf
  %i.fqm = uitofp nneg i32 %i.fql to float
  br label %bb.aen

bb.aek:                                           ; preds = %bb.aei
  %i.fqn = uitofp nneg i32 %i.fqf to float
  %i.fqo = fmul nnan float %i.fqn, 2.000000e+00
  br label %bb.aen

bb.ael:                                           ; preds = %bb.aeh
  br i1 %.not432.i, label %bb.aen, label %bb.aem

bb.aem:                                           ; preds = %bb.ael
  %i.fqp = mul i64 %i.foi, %i.fnh
  %.sink.idx.i551.i = select i1 %i.fog, i64 0, i64 %i.fqp
  %.sink.i552.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i551.i
  %i.fqq = getelementptr [3 x i8], ptr %.sink.i552.i, i64 %i.fnp ; 2 uses
  %i.fqr = load i8, ptr %i.fqq, align 1, !tbaa !21
  %i.fqs = zext i8 %i.fqr to i32
  %i.fqt = getelementptr i8, ptr %i.fqq, i64 -3
  %i.fqu = load i8, ptr %i.fqt, align 1, !tbaa !21
  %i.fqv = zext i8 %i.fqu to i32
  %i.fqw = sub nsw i32 %i.fqs, %i.fqv
  %i.fqx = call i32 @llvm.abs.i32(i32 %i.fqw, i1 true)
  %i.fqy = uitofp nneg i32 %i.fqx to float
  %i.fqz = fmul nnan float %i.fqy, 2.000000e+00
  br label %bb.aen

bb.aen:                                           ; preds = %bb.aem, %bb.ael, %bb.aek, %bb.aej
  %.sroa.12672.0.i = phi float [ %i.fqm, %bb.aej ], [ %i.fqz, %bb.aem ], [ %i.fqo, %bb.aek ], [ 0.000000e+00, %bb.ael ] ; 3 uses
  %i.fra = fneg float %.sroa.0671.0.i
  %i.frb = fmul float %.sroa.12672.0.i, %i.fmx
  %i.frc = call noundef float @llvm.fmuladd.f32(float %i.fnz, float %i.fra, float %i.frb) ; 2 uses
  %i.frd = call float @llvm.fabs.f32(float %i.frc)
  %i.fre = fpext float %i.frd to double
  %i.frf = fcmp ugt double %i.fre, 1.000000e-02
  br i1 %i.frf, label %bb.aeo, label %bb.aep

bb.aeo:                                           ; preds = %bb.aen
  %i.frg = fmul float %.sroa.12672.0.i, %.sroa.12672.0.i
  %i.frh = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i, float %.sroa.0671.0.i, float %i.frg)
  %i.fri = fmul float %i.foa, %i.frh
  %i.frj = call noundef float @sqrtf(float noundef %i.fri) #20
  %i.frk = fdiv float %i.frc, %i.frj
  %i.frl = call float @llvm.fabs.f32(float %i.frk)
  %.pre798.i = load i8, ptr %i.fod, align 1, !tbaa !21
  %.pre1963.a = load i8, ptr %gep1900, align 1, !tbaa !21
  br label %bb.aep

bb.aep:                                           ; preds = %bb.aeo, %bb.aen
  %i.frm = phi i8 [ %.pre1963.a, %bb.aeo ], [ %i.foo, %bb.aen ] ; 2 uses
  %i.frn = phi i8 [ %.pre798.i, %bb.aeo ], [ %i.fon, %bb.aen ] ; 2 uses
  %.0390.i = phi float [ %i.frl, %bb.aeo ], [ f0x358637BD, %bb.aen ]
  %i.fro = fmul float %i.foc, %.0390.i            ; 2 uses
  %i.frp = load i8, ptr %i.fok, align 1, !tbaa !21
  %i.frq = uitofp i8 %i.frp to float
  %i.frr = call float @llvm.fmuladd.f32(float %i.fro, float %i.frq, float %.sroa.0789.2.i)
  %i.frs = fadd float %.sroa.0.2.i1139, %i.fro
  %.not428.1.i = icmp eq i8 %i.frn, 2
  %.not429.1.i = icmp eq i8 %i.frm, 2             ; 2 uses
  br i1 %.not428.1.i, label %bb.aet, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.frt = mul i64 %i.foi, %i.fnd
  %.sink.idx.i523.1.i = select i1 %i.fog, i64 0, i64 %i.frt
  %.sink.i524.1.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i523.1.i
  %i.fru = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i, i64 %i.fnp
  %i.frv = getelementptr inbounds nuw i8, ptr %i.fru, i64 1
  %i.frw = load i8, ptr %i.frv, align 1, !tbaa !21
  %i.frx = zext i8 %i.frw to i32
  %i.fry = mul i64 %i.foi, %i.fne
  %.sink.idx.i525.1.i = select i1 %i.fog, i64 0, i64 %i.fry
  %.sink.i526.1.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i525.1.i
  %i.frz = getelementptr inbounds [3 x i8], ptr %.sink.i526.1.i, i64 %i.fnp
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.frz, i64 1
  %i.fsb = load i8, ptr %i.fsa, align 1, !tbaa !21
  %i.fsc = zext i8 %i.fsb to i32                  ; 2 uses
  %i.fsd = sub nsw i32 %i.frx, %i.fsc
  %i.fse = call i32 @llvm.abs.i32(i32 %i.fsd, i1 true) ; 2 uses
  br i1 %.not429.1.i, label %bb.aes, label %bb.aer

bb.aer:                                           ; preds = %bb.aeq
  %i.fsf = mul i64 %i.foi, %i.fng
  %.sink.idx.i521.1.i = select i1 %i.fog, i64 0, i64 %i.fsf
  %.sink.i522.1.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i521.1.i
  %i.fsg = getelementptr inbounds [3 x i8], ptr %.sink.i522.1.i, i64 %i.fnp
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fsg, i64 1
  %i.fsi = load i8, ptr %i.fsh, align 1, !tbaa !21
  %i.fsj = zext i8 %i.fsi to i32
  %i.fsk = sub nsw i32 %i.fsc, %i.fsj
  %i.fsl = call i32 @llvm.abs.i32(i32 %i.fsk, i1 true)
  %i.fsm = add nuw nsw i32 %i.fsl, %i.fse
  %i.fsn = uitofp nneg i32 %i.fsm to float
  br label %bb.aev

bb.aes:                                           ; preds = %bb.aeq
  %i.fso = uitofp nneg i32 %i.fse to float
  %i.fsp = fmul nnan float %i.fso, 2.000000e+00
  br label %bb.aev

bb.aet:                                           ; preds = %bb.aep
  br i1 %.not429.1.i, label %bb.aev, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.fsq = mul i64 %i.foi, %i.fne
  %.sink.idx.i529.1.i = select i1 %i.fog, i64 0, i64 %i.fsq
  %.sink.i530.1.i = getelementptr inbounds nuw i8, ptr %i.foh, i64 %.sink.idx.i529.1.i
  %i.fsr = getelementptr inbounds [3 x i8], ptr %.sink.i530.1.i, i64 %i.fnp
  %i.fss = getelementptr inbounds nuw i8, ptr %i.fsr, i64 1
end_hunk_6
begin_hunk_7_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.gbm = zext nneg i32 %i.gbl to i64            ; 2 uses
  %i.gbn = mul i64 %i.gae, %i.gbm
  %.sink.idx.i.i578.i = select i1 %i.gac, i64 0, i64 %i.gbn
  %.sink.i.i579.i = getelementptr inbounds nuw i8, ptr %i.gad, i64 %.sink.idx.i.i578.i
  %i.gbo = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i579.i, i64 %i.fzv
  %i.gbp = load float, ptr %i.gbo, align 4, !tbaa !46 ; 3 uses
  %i.gbq = fpext float %i.gbp to double           ; 8 uses
  %i.gbr = fcmp ogt float %i.gbp, %i.gan
  %i.gbs = select i1 %i.gbr, double %i.gao, double %i.gbq ; 2 uses
  %i.gbt = mul i64 %i.fzs, %i.gbm
  %.sink.idx.i35.i582.i = select i1 %i.fzq, i64 0, i64 %i.gbt
  %.sink.i36.i583.i = getelementptr inbounds nuw i8, ptr %i.fzr, i64 %.sink.idx.i35.i582.i
  %i.gbu = getelementptr inbounds nuw i8, ptr %.sink.i36.i583.i, i64 %i.fzv ; 2 uses
  %i.gbv = load i8, ptr %i.gbu, align 1, !tbaa !21
  %.not.i584.i = icmp eq i8 %i.gbv, 2
  br i1 %.not.i584.i, label %bb.agp, label %bb.agk

bb.agk:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i
  br i1 %.not31.i587.i, label %bb.ago, label %bb.agl

bb.agl:                                           ; preds = %bb.agk
  %i.gbw = fsub double %i.gbq, %i.gao             ; 3 uses
  %i.gbx = call double @llvm.fabs.f64(double %i.gbw)
  %i.gby = fcmp ult double %i.gbx, 1.000000e+00
  br i1 %i.gby, label %bb.agn, label %bb.agm

bb.agm:                                           ; preds = %bb.agl
  %i.gbz = fadd double %i.gbs, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agn:                                           ; preds = %bb.agl
  %i.gca = fadd double %i.gao, %i.gbq
  %i.gcb = fneg double %i.gbw
  %i.gcc = call double @llvm.fmuladd.f64(double %i.gcb, double %i.gbw, double 2.000000e+00)
  %i.gcd = call double @sqrt(double noundef %i.gcc) #20
  %i.gce = fadd double %i.gca, %i.gcd
  %i.gcf = fmul double %i.gce, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.ago:                                           ; preds = %bb.agk
  %i.gcg = fadd double %i.gbq, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agp:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i
  br i1 %.not31.i587.i, label %bb.agr, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.gch = fadd double %i.gao, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agr:                                           ; preds = %bb.agp
  %i.gci = fadd double %i.gbs, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i: ; preds = %bb.agr, %bb.agq, %bb.ago, %bb.agn, %bb.agm
  %.0.i588.i = phi double [ %i.gbz, %bb.agm ], [ %i.gcf, %bb.agn ], [ %i.gcg, %bb.ago ], [ %i.gch, %bb.agq ], [ %i.gci, %bb.agr ]
  %i.gcj = fptrunc double %.0.i588.i to float     ; 2 uses
  %i.gck = add nuw nsw i32 %.5.i1102, 1
  %i.gcl = zext nneg i32 %i.gck to i64            ; 2 uses
  %i.gcm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.gcl
  %i.gcn = load float, ptr %i.gcm, align 4, !tbaa !46 ; 3 uses
  %i.gco = fpext float %i.gcn to double           ; 8 uses
  %i.gcp = fcmp ogt float %i.gai, %i.gcn
  %i.gcq = select i1 %i.gcp, double %i.gco, double %i.gaj ; 2 uses
  %i.gcr = load i8, ptr %i.gas, align 1, !tbaa !21
  %.not.i596.i = icmp eq i8 %i.gcr, 2
  %i.gcs = getelementptr inbounds nuw i8, ptr %.sink.i565.i, i64 %i.gcl ; 2 uses
  %i.gct = load i8, ptr %i.gcs, align 1, !tbaa !21
  %.not31.i599.i = icmp eq i8 %i.gct, 2           ; 2 uses
  br i1 %.not.i596.i, label %bb.agx, label %bb.ags

bb.ags:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i
  br i1 %.not31.i599.i, label %bb.agw, label %bb.agt

bb.agt:                                           ; preds = %bb.ags
  %i.gcu = fsub double %i.gaj, %i.gco             ; 3 uses
  %i.gcv = call double @llvm.fabs.f64(double %i.gcu)
  %i.gcw = fcmp ult double %i.gcv, 1.000000e+00
  br i1 %i.gcw, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.gcx = fadd double %i.gcq, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.agv:                                           ; preds = %bb.agt
  %i.gcy = fadd double %i.gaj, %i.gco
  %i.gcz = fneg double %i.gcu
  %i.gda = call double @llvm.fmuladd.f64(double %i.gcz, double %i.gcu, double 2.000000e+00)
  %i.gdb = call double @sqrt(double noundef %i.gda) #20
  %i.gdc = fadd double %i.gcy, %i.gdb
  %i.gdd = fmul double %i.gdc, 5.000000e-01
  %.pr708.pre.i = load i8, ptr %i.gcs, align 1, !tbaa !21
  %i.gde = icmp eq i8 %.pr708.pre.i, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.agw:                                           ; preds = %bb.ags
  %i.gdf = fadd double %i.gaj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.agx:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i
  br i1 %.not31.i599.i, label %bb.agz, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  %i.gdg = fadd double %i.gco, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.agz:                                           ; preds = %bb.agx
  %i.gdh = fadd double %i.gcq, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i: ; preds = %bb.agz, %bb.agy, %bb.agw, %bb.agv, %bb.agu
  %.not31.i611.i = phi i1 [ true, %bb.agz ], [ true, %bb.agw ], [ false, %bb.agy ], [ %i.gde, %bb.agv ], [ false, %bb.agu ] ; 2 uses
  %.0.i600.i = phi double [ %i.gdh, %bb.agz ], [ %i.gdf, %bb.agw ], [ %i.gdg, %bb.agy ], [ %i.gdd, %bb.agv ], [ %i.gcx, %bb.agu ]
  %i.gdi = fptrunc double %.0.i600.i to float     ; 2 uses
  %i.gdj = fcmp ogt float %i.gbp, %i.gcn
  %i.gdk = select i1 %i.gdj, double %i.gco, double %i.gbq ; 2 uses
  %i.gdl = load i8, ptr %i.gbu, align 1, !tbaa !21
  %.not.i608.i = icmp eq i8 %i.gdl, 2
  br i1 %.not.i608.i, label %bb.ahf, label %bb.aha

bb.aha:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i
  br i1 %.not31.i611.i, label %bb.ahe, label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha
  %i.gdm = fsub double %i.gbq, %i.gco             ; 3 uses
  %i.gdn = call double @llvm.fabs.f64(double %i.gdm)
  %i.gdo = fcmp ult double %i.gdn, 1.000000e+00
  br i1 %i.gdo, label %bb.ahd, label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb
  %i.gdp = fadd double %i.gdk, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahd:                                           ; preds = %bb.ahb
  %i.gdq = fadd double %i.gbq, %i.gco
  %i.gdr = fneg double %i.gdm
  %i.gds = call double @llvm.fmuladd.f64(double %i.gdr, double %i.gdm, double 2.000000e+00)
  %i.gdt = call double @sqrt(double noundef %i.gds) #20
  %i.gdu = fadd double %i.gdq, %i.gdt
  %i.gdv = fmul double %i.gdu, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahe:                                           ; preds = %bb.aha
  %i.gdw = fadd double %i.gbq, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahf:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i
  br i1 %.not31.i611.i, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.gdx = fadd double %i.gco, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahh:                                           ; preds = %bb.ahf
  %i.gdy = fadd double %i.gdk, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i: ; preds = %bb.ahh, %bb.ahg, %bb.ahe, %bb.ahd, %bb.ahc
  %.0.i612.i = phi double [ %i.gdp, %bb.ahc ], [ %i.gdv, %bb.ahd ], [ %i.gdw, %bb.ahe ], [ %i.gdx, %bb.ahg ], [ %i.gdy, %bb.ahh ]
  %i.gdz = fptrunc double %.0.i612.i to float     ; 2 uses
  %i.gea = fcmp ogt float %i.gbk, %i.gcj
  %i.geb = select i1 %i.gea, float %i.gcj, float %i.gbk ; 2 uses
  %i.gec = fcmp ogt float %i.gdi, %i.gdz
  %i.ged = select i1 %i.gec, float %i.gdz, float %i.gdi ; 2 uses
  %i.gee = fcmp ogt float %i.geb, %i.ged
  %i.gef = select i1 %i.gee, float %i.ged, float %i.geb ; 2 uses
  %i.geg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.fzv
  store float %i.gef, ptr %i.geg, align 4, !tbaa !46
  %i.geh = add nuw nsw i32 %.5407.fr.i, %i.dl
  %i.gei = add nsw i32 %i.fzn, -2
  %i.gej = sub nsw i32 %.5.i1102, %i.dl
  %i.gek = add nuw nsw i32 %.5.i1102, %i.dl
  %i.gel = add nsw i32 %i.fzo, -2
  %i.gem = add nsw i32 %i.fzn, -1
  %i.gen = add nsw i32 %i.fzo, -1
  %i.geo = sub nsw i32 %.5407.fr.i, %i.dl
  %i.gep = load i64, ptr %i.fdc, align 8          ; 3 uses
  br label %.lr.ph.i1107

.lr.ph.i1107:                                     ; preds = %._crit_edge.i1109, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i
  %.0386740.i = phi float [ %.us-phi724.i, %._crit_edge.i1109 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 3 uses
  %.0387739.i = phi float [ %.us-phi.i1110, %._crit_edge.i1109 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 3 uses
  %.1398738.i = phi i32 [ %i.gfd, %._crit_edge.i1109 ], [ %i.geo, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 10 uses
  %i.geq = add nsw i32 %.1398738.i, -1            ; 3 uses
  %i.ger = icmp eq i32 %.1398738.i, 1
  %i.ges = zext i1 %i.ger to i32
  %i.get = add nuw nsw i32 %i.geq, %i.ges         ; 2 uses
  %i.geu = icmp eq i32 %.1398738.i, %i.gei
  %.neg.i1108 = sext i1 %i.geu to i32             ; 2 uses
  %i.gev = add i32 %i.geq, %.neg.i1108
  %i.gew = icmp sgt i32 %.1398738.i, 0
  %i.gex = zext nneg i32 %.1398738.i to i64
  %i.gey = sub nsw i32 %.1398738.i, %.5407.fr.i   ; 2 uses
  %i.gez = mul nsw i32 %i.gey, %i.gey
  %i.gfa = sub nsw i32 %.5407.fr.i, %.1398738.i
  %i.gfb = sitofp i32 %i.gfa to float             ; 3 uses
  %i.gfc = fmul nnan float %i.gfb, %i.gfb
  %i.gfd = add i32 %.1398738.i, 1                 ; 3 uses
  %i.gfe = zext nneg i32 %i.gfd to i64
  %i.gff = zext nneg i32 %i.geq to i64            ; 2 uses
  %i.gfg = add nsw i32 %.1398738.i, %.neg.i1108
  %i.gfh = sext i32 %i.gfg to i64
  %i.gfi = sext i32 %i.gev to i64                 ; 2 uses
  %i.gfj = add nsw i32 %i.get, -1
  %i.gfk = sext i32 %i.gfj to i64                 ; 2 uses
  %i.gfl = sext i32 %i.get to i64                 ; 2 uses
  br i1 %i.gew, label %.lr.ph.split.i1112, label %._crit_edge.i1109

.lr.ph.split.i1112:                               ; preds = %.lr.ph.i1107
  %i.gfm = icmp slt i32 %.1398738.i, %i.gem
  %.fr736.i = freeze i1 %i.gfm
  br i1 %.fr736.i, label %.lr.ph.split.split.i1113.preheader, label %._crit_edge.i1109

.lr.ph.split.split.i1113.preheader:               ; preds = %.lr.ph.split.i1112
  %i.gfn = mul i64 %i.gep, %i.gex
  %.sink.idx.i616.i = select i1 %i.fzq, i64 0, i64 %i.gfn
  %.sink.i617.i = getelementptr inbounds nuw i8, ptr %i.fzr, i64 %.sink.idx.i616.i ; 2 uses
  %i.gfo = mul i64 %i.gep, %i.gfe
  %.sink.idx.i618.i = select i1 %i.fzq, i64 0, i64 %i.gfo
  %.sink.i619.i = getelementptr inbounds nuw i8, ptr %i.fzr, i64 %.sink.idx.i618.i
  %i.gfp = mul i64 %i.gep, %i.gff
  %.sink.idx.i634.i = select i1 %i.fzq, i64 0, i64 %i.gfp
  %.sink.i635.i = getelementptr inbounds nuw i8, ptr %i.fzr, i64 %.sink.idx.i634.i
  br label %.lr.ph.split.split.i1113

.lr.ph.split.split.i1113:                         ; preds = %.lr.ph.split.split.i1113.preheader, %bb.ahz
  %.1722.i = phi float [ %.2.i1114, %bb.ahz ], [ %.0386740.i, %.lr.ph.split.split.i1113.preheader ] ; 4 uses
  %.1388721.i = phi float [ %.2389.i, %bb.ahz ], [ %.0387739.i, %.lr.ph.split.split.i1113.preheader ] ; 4 uses
  %.1396719.i = phi i32 [ %i.gkt, %bb.ahz ], [ %i.gej, %.lr.ph.split.split.i1113.preheader ] ; 11 uses
  %i.gfq = add nsw i32 %.1396719.i, -1            ; 2 uses
  %i.gfr = icmp eq i32 %.1396719.i, 1
  %i.gfs = zext i1 %i.gfr to i32
  %i.gft = add nuw nsw i32 %i.gfq, %i.gfs         ; 4 uses
  %i.gfu = icmp eq i32 %.1396719.i, %i.gel
  %.neg411.i = sext i1 %i.gfu to i32
  %i.gfv = icmp sgt i32 %.1396719.i, 0
  %i.gfw = icmp slt i32 %.1396719.i, %i.gen
  %or.cond771.i = select i1 %i.gfv, i1 %i.gfw, i1 false
  br i1 %or.cond771.i, label %bb.ahi, label %bb.ahz

bb.ahi:                                           ; preds = %.lr.ph.split.split.i1113
  %i.gfx = zext nneg i32 %.1396719.i to i64       ; 3 uses
  %i.gfy = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.gfx ; 2 uses
  %i.gfz = load i8, ptr %i.gfy, align 1, !tbaa !21
  %.not412.i = icmp eq i8 %i.gfz, 2
  br i1 %.not412.i, label %bb.ahz, label %bb.ahj

bb.ahj:                                           ; preds = %bb.ahi
  %i.gga = sub nsw i32 %.1396719.i, %.5.i1102     ; 2 uses
  %i.ggb = mul nsw i32 %i.gga, %i.gga
  %i.ggc = add nuw nsw i32 %i.ggb, %i.gez
  %.not413.i = icmp samesign ugt i32 %i.ggc, %i.fdi
  br i1 %.not413.i, label %bb.ahz, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.ggd = sub nsw i32 %.5.i1102, %.1396719.i
  %i.gge = sitofp i32 %i.ggd to float             ; 3 uses
  %i.ggf = call noundef float @llvm.fmuladd.f32(float %i.gge, float %i.gge, float %i.gfc) ; 3 uses
  %i.ggg = call nnan float @llvm.fmuladd.f32(float %i.ggf, float %i.ggf, float 1.000000e+00)
  %i.ggh = fdiv nnan float 1.000000e+00, %i.ggg
  %i.ggi = getelementptr inbounds nuw i8, ptr %.sink.i619.i, i64 %i.gfx
  %i.ggj = load i8, ptr %i.ggi, align 1, !tbaa !21
  %.not414.i = icmp eq i8 %i.ggj, 2
  %i.ggk = getelementptr inbounds nuw i8, ptr %.sink.i635.i, i64 %i.gfx
  %i.ggl = load i8, ptr %i.ggk, align 1, !tbaa !21
  %.not415.i = icmp eq i8 %i.ggl, 2               ; 2 uses
  br i1 %.not414.i, label %bb.aho, label %bb.ahl

bb.ahl:                                           ; preds = %bb.ahk
  %i.ggm = load i32, ptr %i.fdj, align 4, !tbaa !148
  %i.ggn = icmp slt i32 %i.ggm, 2                 ; 3 uses
  %i.ggo = load ptr, ptr %i.fdk, align 8, !tbaa !149 ; 3 uses
  %i.ggp = load i64, ptr %i.fdl, align 8          ; 3 uses
  %i.ggq = mul i64 %i.ggp, %i.gfh
  %.sink.idx.i630.i = select i1 %i.ggn, i64 0, i64 %i.ggq
  %.sink.i631.i = getelementptr inbounds nuw i8, ptr %i.ggo, i64 %.sink.idx.i630.i
  %i.ggr = sext i32 %i.gft to i64                 ; 3 uses
  %i.ggs = getelementptr inbounds i8, ptr %.sink.i631.i, i64 %i.ggr
  %i.ggt = load i8, ptr %i.ggs, align 1, !tbaa !21
  %i.ggu = zext i8 %i.ggt to i32
  %i.ggv = mul i64 %i.ggp, %i.gfi
  %.sink.idx.i632.i = select i1 %i.ggn, i64 0, i64 %i.ggv
  %.sink.i633.i = getelementptr inbounds nuw i8, ptr %i.ggo, i64 %.sink.idx.i632.i
  %i.ggw = getelementptr inbounds i8, ptr %.sink.i633.i, i64 %i.ggr
  %i.ggx = load i8, ptr %i.ggw, align 1, !tbaa !21
  %i.ggy = zext i8 %i.ggx to i32                  ; 2 uses
  %i.ggz = sub nsw i32 %i.ggu, %i.ggy
  %i.gha = call i32 @llvm.abs.i32(i32 %i.ggz, i1 true) ; 2 uses
  br i1 %.not415.i, label %bb.ahn, label %bb.ahm

bb.ahm:                                           ; preds = %bb.ahl
  %i.ghb = mul i64 %i.ggp, %i.gfk
  %.sink.idx.i628.i = select i1 %i.ggn, i64 0, i64 %i.ghb
  %.sink.i629.i = getelementptr inbounds nuw i8, ptr %i.ggo, i64 %.sink.idx.i628.i
  %i.ghc = getelementptr inbounds i8, ptr %.sink.i629.i, i64 %i.ggr
  %i.ghd = load i8, ptr %i.ghc, align 1, !tbaa !21
  %i.ghe = zext i8 %i.ghd to i32
  %i.ghf = sub nsw i32 %i.ggy, %i.ghe
  %i.ghg = call i32 @llvm.abs.i32(i32 %i.ghf, i1 true)
  %i.ghh = add nuw nsw i32 %i.ghg, %i.gha
  %i.ghi = uitofp nneg i32 %i.ghh to float
  br label %bb.ahq

bb.ahn:                                           ; preds = %bb.ahl
  %i.ghj = uitofp nneg i32 %i.gha to float
  %i.ghk = fmul nnan float %i.ghj, 2.000000e+00
  br label %bb.ahq

bb.aho:                                           ; preds = %bb.ahk
  br i1 %.not415.i, label %bb.ahq, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  %i.ghl = load i32, ptr %i.fdj, align 4, !tbaa !148
  %i.ghm = icmp slt i32 %i.ghl, 2                 ; 2 uses
  %i.ghn = load ptr, ptr %i.fdk, align 8, !tbaa !149 ; 2 uses
  %i.gho = load i64, ptr %i.fdl, align 8          ; 2 uses
  %i.ghp = mul i64 %i.gho, %i.gfi
  %.sink.idx.i636.i = select i1 %i.ghm, i64 0, i64 %i.ghp
  %.sink.i637.i = getelementptr inbounds nuw i8, ptr %i.ghn, i64 %.sink.idx.i636.i
  %i.ghq = sext i32 %i.gft to i64                 ; 2 uses
  %i.ghr = getelementptr inbounds i8, ptr %.sink.i637.i, i64 %i.ghq
  %i.ghs = load i8, ptr %i.ghr, align 1, !tbaa !21
  %i.ght = zext i8 %i.ghs to i32
  %i.ghu = mul i64 %i.gho, %i.gfk
  %.sink.idx.i638.i = select i1 %i.ghm, i64 0, i64 %i.ghu
  %.sink.i639.i = getelementptr inbounds nuw i8, ptr %i.ghn, i64 %.sink.idx.i638.i
  %i.ghv = getelementptr inbounds i8, ptr %.sink.i639.i, i64 %i.ghq
  %i.ghw = load i8, ptr %i.ghv, align 1, !tbaa !21
  %i.ghx = zext i8 %i.ghw to i32
  %i.ghy = sub nsw i32 %i.ght, %i.ghx
  %i.ghz = call i32 @llvm.abs.i32(i32 %i.ghy, i1 true)
  %i.gia = uitofp nneg i32 %i.ghz to float
  %i.gib = fmul nnan float %i.gia, 2.000000e+00
  br label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp, %bb.aho, %bb.ahn, %bb.ahm
  %.sroa.0668.0.i = phi float [ %i.ghi, %bb.ahm ], [ %i.gib, %bb.ahp ], [ %i.ghk, %bb.ahn ], [ 0.000000e+00, %bb.aho ] ; 3 uses
  %i.gic = getelementptr inbounds nuw i8, ptr %i.gfy, i64 1
  %i.gid = load i8, ptr %i.gic, align 1, !tbaa !21
  %.not417.i = icmp eq i8 %i.gid, 2
  %i.gie = zext nneg i32 %i.gfq to i64            ; 2 uses
  %i.gif = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.gie
  %i.gig = load i8, ptr %i.gif, align 1, !tbaa !21
  %.not418.i = icmp eq i8 %i.gig, 2               ; 2 uses
  br i1 %.not417.i, label %bb.ahu, label %bb.ahr

bb.ahr:                                           ; preds = %bb.ahq
  %i.gih = add nsw i32 %.1396719.i, %.neg411.i
  %i.gii = load i32, ptr %i.fdj, align 4, !tbaa !148
  %i.gij = icmp slt i32 %i.gii, 2
  %i.gik = load ptr, ptr %i.fdk, align 8, !tbaa !149
  %i.gil = load i64, ptr %i.fdl, align 8
  %i.gim = mul i64 %i.gil, %i.gfl
  %.sink.idx.i652.i = select i1 %i.gij, i64 0, i64 %i.gim
  %.sink.i653.i = getelementptr inbounds nuw i8, ptr %i.gik, i64 %.sink.idx.i652.i ; 2 uses
  %i.gin = zext nneg i32 %i.gih to i64
  %i.gio = getelementptr inbounds nuw i8, ptr %.sink.i653.i, i64 %i.gin
  %i.gip = load i8, ptr %i.gio, align 1, !tbaa !21
  %i.giq = zext i8 %i.gip to i32
  %i.gir = sext i32 %i.gft to i64
  %i.gis = getelementptr i8, ptr %.sink.i653.i, i64 %i.gir ; 2 uses
  %i.git = load i8, ptr %i.gis, align 1, !tbaa !21
  %i.giu = zext i8 %i.git to i32                  ; 2 uses
  %i.giv = sub nsw i32 %i.giq, %i.giu
  %i.giw = call i32 @llvm.abs.i32(i32 %i.giv, i1 true) ; 2 uses
  br i1 %.not418.i, label %bb.aht, label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr
  %i.gix = getelementptr i8, ptr %i.gis, i64 -1
  %i.giy = load i8, ptr %i.gix, align 1, !tbaa !21
  %i.giz = zext i8 %i.giy to i32
  %i.gja = sub nsw i32 %i.giu, %i.giz
  %i.gjb = call i32 @llvm.abs.i32(i32 %i.gja, i1 true)
  %i.gjc = add nuw nsw i32 %i.gjb, %i.giw
  %i.gjd = uitofp nneg i32 %i.gjc to float
  br label %bb.ahw

bb.aht:                                           ; preds = %bb.ahr
  %i.gje = uitofp nneg i32 %i.giw to float
  %i.gjf = fmul nnan float %i.gje, 2.000000e+00
  br label %bb.ahw

bb.ahu:                                           ; preds = %bb.ahq
  br i1 %.not418.i, label %bb.ahw, label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu
  %i.gjg = load i32, ptr %i.fdj, align 4, !tbaa !148
  %i.gjh = icmp slt i32 %i.gjg, 2
  %i.gji = load ptr, ptr %i.fdk, align 8, !tbaa !149
  %i.gjj = load i64, ptr %i.fdl, align 8
  %i.gjk = mul i64 %i.gjj, %i.gfl
  %.sink.idx.i658.i = select i1 %i.gjh, i64 0, i64 %i.gjk
  %.sink.i659.i = getelementptr inbounds nuw i8, ptr %i.gji, i64 %.sink.idx.i658.i
  %i.gjl = sext i32 %i.gft to i64
  %i.gjm = getelementptr i8, ptr %.sink.i659.i, i64 %i.gjl ; 2 uses
  %i.gjn = load i8, ptr %i.gjm, align 1, !tbaa !21
  %i.gjo = zext i8 %i.gjn to i32
  %i.gjp = getelementptr i8, ptr %i.gjm, i64 -1
  %i.gjq = load i8, ptr %i.gjp, align 1, !tbaa !21
  %i.gjr = zext i8 %i.gjq to i32
  %i.gjs = sub nsw i32 %i.gjo, %i.gjr
end_hunk_7
begin_hunk_8_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.grp = call double @sqrt(double noundef %i.gro) #20
  %i.grq = fadd double %i.grm, %i.grp
  %i.grr = fmul double %i.grq, 5.000000e-01
  %.pr.pre.i1428 = load i8, ptr %i.grg, align 1, !tbaa !21
  %i.grs = icmp eq i8 %.pr.pre.i1428, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296

bb.aje:                                           ; preds = %bb.aja
  %i.grt = fadd double %i.gox, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296

bb.ajf:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit482.i1292
  br i1 %.not31.i492.i1295, label %bb.ajh, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  %i.gru = fadd double %i.grc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296

bb.ajh:                                           ; preds = %bb.ajf
  %i.grv = fadd double %i.gre, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296: ; preds = %bb.ajh, %bb.ajg, %bb.aje, %bb.ajd, %bb.ajc
  %.not31.i504.i1297 = phi i1 [ true, %bb.ajh ], [ true, %bb.aje ], [ false, %bb.ajg ], [ %i.grs, %bb.ajd ], [ false, %bb.ajc ] ; 2 uses
  %.0.i493.i1298 = phi double [ %i.grv, %bb.ajh ], [ %i.grt, %bb.aje ], [ %i.gru, %bb.ajg ], [ %i.grr, %bb.ajd ], [ %i.grl, %bb.ajc ]
  %i.grw = fptrunc double %.0.i493.i1298 to float ; 2 uses
  %i.grx = fcmp ogt float %i.gqd, %i.grb
  %i.gry = select i1 %i.grx, double %i.grc, double %i.gqe ; 2 uses
  %i.grz = load i8, ptr %i.gqi, align 1, !tbaa !21
  %.not.i501.i1299 = icmp eq i8 %i.grz, 2
  br i1 %.not.i501.i1299, label %bb.ajn, label %bb.aji

bb.aji:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296
  br i1 %.not31.i504.i1297, label %bb.ajm, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji
  %i.gsa = fsub double %i.gqe, %i.grc             ; 3 uses
  %i.gsb = call double @llvm.fabs.f64(double %i.gsa)
  %i.gsc = fcmp ult double %i.gsb, 1.000000e+00
  br i1 %i.gsc, label %bb.ajl, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.gsd = fadd double %i.gry, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300

bb.ajl:                                           ; preds = %bb.ajj
  %i.gse = fadd double %i.gqe, %i.grc
  %i.gsf = fneg double %i.gsa
  %i.gsg = call double @llvm.fmuladd.f64(double %i.gsf, double %i.gsa, double 2.000000e+00)
  %i.gsh = call double @sqrt(double noundef %i.gsg) #20
  %i.gsi = fadd double %i.gse, %i.gsh
  %i.gsj = fmul double %i.gsi, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300

bb.ajm:                                           ; preds = %bb.aji
  %i.gsk = fadd double %i.gqe, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300

bb.ajn:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1296
  br i1 %.not31.i504.i1297, label %bb.ajp, label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn
  %i.gsl = fadd double %i.grc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300

bb.ajp:                                           ; preds = %bb.ajn
  %i.gsm = fadd double %i.gry, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300: ; preds = %bb.ajp, %bb.ajo, %bb.ajm, %bb.ajl, %bb.ajk
  %.0.i505.i1301 = phi double [ %i.gsd, %bb.ajk ], [ %i.gsj, %bb.ajl ], [ %i.gsk, %bb.ajm ], [ %i.gsl, %bb.ajo ], [ %i.gsm, %bb.ajp ]
  %i.gsn = fptrunc double %.0.i505.i1301 to float ; 2 uses
  %i.gso = fcmp ogt float %i.gpy, %i.gqx
  %i.gsp = select i1 %i.gso, float %i.gqx, float %i.gpy ; 2 uses
  %i.gsq = fcmp ogt float %i.grw, %i.gsn
  %i.gsr = select i1 %i.gsq, float %i.gsn, float %i.grw ; 2 uses
  %i.gss = fcmp ogt float %i.gsp, %i.gsr
  %i.gst = select i1 %i.gss, float %i.gsr, float %i.gsp ; 2 uses
  %i.gsu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1279, i64 %i.goj
  store float %i.gst, ptr %i.gsu, align 4, !tbaa !46
  %i.gsv = add nuw nsw i32 %.2404.fr.i1267, %i.dl
  %i.gsw = sub nsw i32 %.2404.fr.i1267, %i.dl
  %i.gsx = load i32, ptr %i.fu, align 8, !tbaa !146 ; 2 uses
  %i.gsy = add nsw i32 %i.gsx, -2
  %i.gsz = add nsw i32 %i.gsx, -1
  %i.gta = add nuw nsw i32 %.2401.i1266, %i.dl
  %i.gtb = sub nsw i32 %.2401.i1266, %i.dl
  %i.gtc = load i32, ptr %i.eo, align 4, !tbaa !145 ; 2 uses
  %i.gtd = add nsw i32 %i.gtc, -2
  %i.gte = add nsw i32 %i.gtc, -1
  %i.gtf = sext i32 %i.gtb to i64
  %i.gtg = sext i32 %i.gte to i64
  %i.gth = zext nneg i32 %i.gta to i64
  %sext.i1302 = sext i32 %i.gtd to i64
  %i.gti = load i64, ptr %i.gms, align 8          ; 3 uses
  br label %.lr.ph756.i1303

.preheader712.loopexit.i1320:                     ; preds = %._crit_edge757.i1312
  %i.gtj = fpext float %.sroa.0789.4.i1313 to double
  %i.gtk = fpext float %.sroa.0.4.i1318 to double
  %i.gtl = fdiv double %i.gtj, %i.gtk
  %i.gtm = fpext float %.sroa.6791.4.i1314 to double
  %i.gtn = fpext float %.sroa.6.4.i1317 to double
  %i.gto = fdiv double %i.gtm, %i.gtn
  %i.gtp = fpext float %.sroa.9793.4.i1315 to double
  %i.gtq = fpext float %.sroa.9.4.i1316 to double
  %i.gtr = fdiv double %i.gtp, %i.gtq
  %i.gts = insertelement <2 x double> poison, double %i.gtl, i64 0
  %i.gtt = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gts)
  %i.gtu = call i32 @llvm.smax.i32(i32 %i.gtt, i32 0)
  %i.gtv = call i32 @llvm.umin.i32(i32 %i.gtu, i32 255)
  %i.gtw = trunc nuw i32 %i.gtv to i8
  %i.gtx = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.gty = icmp slt i32 %i.gtx, 2
  %i.gtz = load ptr, ptr %i.gna, align 8, !tbaa !149
  %i.gua = load i64, ptr %i.gnb, align 8
  %i.gub = mul i64 %i.gua, %i.got
  %.sink.idx.i557.i1321 = select i1 %i.gty, i64 0, i64 %i.gub
  %.sink.i558.i1322 = getelementptr inbounds nuw i8, ptr %i.gtz, i64 %.sink.idx.i557.i1321
  %i.guc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i1322, i64 %i.goz
  store i8 %i.gtw, ptr %i.guc, align 1, !tbaa !21
  %i.gud = insertelement <2 x double> poison, double %i.gto, i64 0
  %i.gue = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gud)
  %i.guf = call i32 @llvm.smax.i32(i32 %i.gue, i32 0)
  %i.gug = call i32 @llvm.umin.i32(i32 %i.guf, i32 255)
  %i.guh = trunc nuw i32 %i.gug to i8
  %i.gui = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.guj = icmp slt i32 %i.gui, 2
  %i.guk = load ptr, ptr %i.gna, align 8, !tbaa !149
  %i.gul = load i64, ptr %i.gnb, align 8
  %i.gum = mul i64 %i.gul, %i.got
  %.sink.idx.i557.1.i1323 = select i1 %i.guj, i64 0, i64 %i.gum
  %.sink.i558.1.i1324 = getelementptr inbounds nuw i8, ptr %i.guk, i64 %.sink.idx.i557.1.i1323
  %i.gun = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i1324, i64 %i.goz
  %i.guo = getelementptr inbounds nuw i8, ptr %i.gun, i64 1
  store i8 %i.guh, ptr %i.guo, align 1, !tbaa !21
  %i.gup = insertelement <2 x double> poison, double %i.gtr, i64 0
  %i.guq = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gup)
  %i.gur = call i32 @llvm.smax.i32(i32 %i.guq, i32 0)
  %i.gus = call i32 @llvm.umin.i32(i32 %i.gur, i32 255)
  %i.gut = trunc nuw i32 %i.gus to i8
  %i.guu = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.guv = icmp slt i32 %i.guu, 2
  %i.guw = load ptr, ptr %i.gna, align 8, !tbaa !149
  %i.gux = load i64, ptr %i.gnb, align 8
  %i.guy = mul i64 %i.gux, %i.got
  %.sink.idx.i557.2.i1325 = select i1 %i.guv, i64 0, i64 %i.guy
  %.sink.i558.2.i1326 = getelementptr inbounds nuw i8, ptr %i.guw, i64 %.sink.idx.i557.2.i1325
  %i.guz = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i1326, i64 %i.goz
  %i.gva = getelementptr inbounds nuw i8, ptr %i.guz, i64 2
  store i8 %i.gut, ptr %i.gva, align 1, !tbaa !21
  %i.gvb = load i32, ptr %i.gmq, align 4, !tbaa !148
  %i.gvc = icmp slt i32 %i.gvb, 2
  %i.gvd = load ptr, ptr %i.gmr, align 8, !tbaa !149
  %i.gve = load i64, ptr %i.gms, align 8
  %i.gvf = mul i64 %i.gve, %i.goh
  %.sink.idx.i559.i1327 = select i1 %i.gvc, i64 0, i64 %i.gvf
  %.sink.i560.i1328 = getelementptr inbounds nuw i8, ptr %i.gvd, i64 %.sink.idx.i559.i1327
  %i.gvg = getelementptr inbounds nuw i8, ptr %.sink.i560.i1328, i64 %i.goj
  store i8 1, ptr %i.gvg, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store float %i.gst, ptr %8, align 4, !tbaa !50
  store i32 %.2404.fr.i1267, ptr %i.gnc, align 4, !tbaa !169
  store i32 %.2401.i1266, ptr %i.gnd, align 4, !tbaa !170
  %i.gvh = load i32, ptr %i.gnf, align 8, !tbaa !162
  store i32 %i.gvh, ptr %i.gne, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.md, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %.noexc1432 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1432:                                       ; preds = %.preheader712.loopexit.i1320
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.gvi = load i32, ptr %i.gnf, align 8, !tbaa !162
  %i.gvj = add nsw i32 %i.gvi, 1
  store i32 %i.gvj, ptr %i.gnf, align 8, !tbaa !162
  br label %bb.alh

.lr.ph756.i1303:                                  ; preds = %._crit_edge757.i1312, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300
  %.sroa.0789.1.i1304 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %.sroa.0789.4.i1313, %._crit_edge757.i1312 ] ; 3 uses
  %.sroa.6791.1.i1305 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %.sroa.6791.4.i1314, %._crit_edge757.i1312 ] ; 3 uses
  %.sroa.9793.1.i1306 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %.sroa.9793.4.i1315, %._crit_edge757.i1312 ] ; 3 uses
  %.sroa.9.1.i1307 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %.sroa.9.4.i1316, %._crit_edge757.i1312 ] ; 3 uses
  %.sroa.6.1.i1308 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %.sroa.6.4.i1317, %._crit_edge757.i1312 ] ; 3 uses
  %.sroa.0.1.i1309 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %.sroa.0.4.i1318, %._crit_edge757.i1312 ] ; 3 uses
  %.0397764.i1310 = phi i32 [ %i.gsw, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1300 ], [ %i.gvw, %._crit_edge757.i1312 ] ; 9 uses
  %i.gvk = add nsw i32 %.0397764.i1310, -1        ; 3 uses
  %i.gvl = icmp eq i32 %.0397764.i1310, 1
  %i.gvm = zext i1 %i.gvl to i32
  %i.gvn = add nuw nsw i32 %i.gvk, %i.gvm         ; 2 uses
  %i.gvo = icmp eq i32 %.0397764.i1310, %i.gsy
  %.neg423.i1311 = sext i1 %i.gvo to i32          ; 2 uses
  %i.gvp = add i32 %i.gvk, %.neg423.i1311
  %i.gvq = icmp sgt i32 %.0397764.i1310, 0
  %i.gvr = zext nneg i32 %.0397764.i1310 to i64
  %i.gvs = sub nsw i32 %.0397764.i1310, %.2404.fr.i1267 ; 3 uses
  %i.gvt = mul nsw i32 %i.gvs, %i.gvs
  %i.gvu = sitofp i32 %i.gvs to float             ; 5 uses
  %i.gvv = fmul nnan float %i.gvu, %i.gvu
  %i.gvw = add i32 %.0397764.i1310, 1             ; 3 uses
  %i.gvx = zext nneg i32 %i.gvw to i64
  %i.gvy = sext i32 %i.gvk to i64                 ; 2 uses
  %i.gvz = add nsw i32 %.0397764.i1310, %.neg423.i1311
  %i.gwa = sext i32 %i.gvz to i64                 ; 3 uses
  %i.gwb = sext i32 %i.gvp to i64                 ; 6 uses
  %i.gwc = add nsw i32 %i.gvn, -1
  %i.gwd = sext i32 %i.gwc to i64                 ; 6 uses
  %i.gwe = sext i32 %i.gvn to i64                 ; 6 uses
  br i1 %i.gvq, label %.lr.ph756.split.i1329, label %._crit_edge757.i1312

.lr.ph756.split.i1329:                            ; preds = %.lr.ph756.i1303
  %i.gwf = icmp slt i32 %.0397764.i1310, %i.gsz
  %.fr762.i1330 = freeze i1 %i.gwf
  br i1 %.fr762.i1330, label %.lr.ph756.split.split.i1331.preheader, label %._crit_edge757.i1312

.lr.ph756.split.split.i1331.preheader:            ; preds = %.lr.ph756.split.i1329
  %i.gwg = mul i64 %i.gti, %i.gvr
  %.sink.idx.i509.i1350 = select i1 %i.goe, i64 0, i64 %i.gwg
  %.sink.i510.i1351 = getelementptr inbounds nuw i8, ptr %i.gof, i64 %.sink.idx.i509.i1350 ; 2 uses
  %i.gwh = mul i64 %i.gti, %i.gvx
  %.sink.idx.i511.i1355 = select i1 %i.goe, i64 0, i64 %i.gwh
  %.sink.i512.i1356 = getelementptr inbounds nuw i8, ptr %i.gof, i64 %.sink.idx.i511.i1355
  %i.gwi = mul i64 %i.gti, %i.gvy
  %.sink.idx.i513.i1360 = select i1 %i.goe, i64 0, i64 %i.gwi
  %invariant.gep1897 = getelementptr i8, ptr %i.gof, i64 %.sink.idx.i513.i1360
  br label %.lr.ph756.split.split.i1331

.lr.ph756.split.split.i1331:                      ; preds = %.lr.ph756.split.split.i1331.preheader, %.loopexit.i1341
  %.sroa.0789.2.i1332 = phi float [ %.sroa.0789.3.i1342, %.loopexit.i1341 ], [ %.sroa.0789.1.i1304, %.lr.ph756.split.split.i1331.preheader ] ; 4 uses
  %.sroa.6791.2.i1333 = phi float [ %.sroa.6791.3.i1343, %.loopexit.i1341 ], [ %.sroa.6791.1.i1305, %.lr.ph756.split.split.i1331.preheader ] ; 4 uses
  %.sroa.9793.2.i1334 = phi float [ %.sroa.9793.3.i1344, %.loopexit.i1341 ], [ %.sroa.9793.1.i1306, %.lr.ph756.split.split.i1331.preheader ] ; 4 uses
  %.sroa.9.2.i1335 = phi float [ %.sroa.9.3.i1345, %.loopexit.i1341 ], [ %.sroa.9.1.i1307, %.lr.ph756.split.split.i1331.preheader ] ; 4 uses
  %.sroa.6.2.i1336 = phi float [ %.sroa.6.3.i1346, %.loopexit.i1341 ], [ %.sroa.6.1.i1308, %.lr.ph756.split.split.i1331.preheader ] ; 4 uses
  %.sroa.0.2.i1337 = phi float [ %.sroa.0.3.i1347, %.loopexit.i1341 ], [ %.sroa.0.1.i1309, %.lr.ph756.split.split.i1331.preheader ] ; 4 uses
  %indvars.iv.i1338 = phi i64 [ %indvars.iv.next.i1348, %.loopexit.i1341 ], [ %i.gtf, %.lr.ph756.split.split.i1331.preheader ] ; 12 uses
  %i.gwj = add nsw i64 %indvars.iv.i1338, -1      ; 3 uses
  %i.gwk = icmp eq i64 %indvars.iv.i1338, 1
  %i.gwl = zext i1 %i.gwk to i64
  %i.gwm = add nuw nsw i64 %i.gwj, %i.gwl         ; 21 uses
  %i.gwn = icmp eq i64 %indvars.iv.i1338, %sext.i1302
  %i.gwo = icmp sgt i64 %indvars.iv.i1338, 0
  %i.gwp = icmp slt i64 %indvars.iv.i1338, %i.gtg
  %or.cond770.i1340 = select i1 %i.gwo, i1 %i.gwp, i1 false
  br i1 %or.cond770.i1340, label %bb.ajq, label %.loopexit.i1341

bb.ajq:                                           ; preds = %.lr.ph756.split.split.i1331
  %i.gwq = getelementptr inbounds nuw i8, ptr %.sink.i510.i1351, i64 %indvars.iv.i1338 ; 2 uses
  %i.gwr = load i8, ptr %i.gwq, align 1, !tbaa !21
  %.not426.i1352 = icmp eq i8 %i.gwr, 2
  br i1 %.not426.i1352, label %.loopexit.i1341, label %bb.ajr

bb.ajr:                                           ; preds = %bb.ajq
  %i.gws = trunc nuw nsw i64 %indvars.iv.i1338 to i32
  %i.gwt = sub nsw i32 %i.gws, %.2401.i1266       ; 3 uses
  %i.gwu = mul nsw i32 %i.gwt, %i.gwt
  %i.gwv = add nuw nsw i32 %i.gwu, %i.gvt
  %.not427.i1353 = icmp samesign ugt i32 %i.gwv, %i.gmy
  br i1 %.not427.i1353, label %.loopexit.i1341, label %.preheader.i1354

.preheader.i1354:                                 ; preds = %bb.ajr
  %i.gww = sitofp i32 %i.gwt to float             ; 5 uses
  %i.gwx = call noundef float @llvm.fmuladd.f32(float %i.gww, float %i.gww, float %i.gvv) ; 5 uses
  %i.gwy = call nnan float @llvm.fmuladd.f32(float %i.gwx, float %i.gwx, float 1.000000e+00)
  %i.gwz = fdiv nnan float 1.000000e+00, %i.gwy   ; 3 uses
  %i.gxa = getelementptr inbounds nuw i8, ptr %.sink.i512.i1356, i64 %indvars.iv.i1338 ; 3 uses
  %i.gxb = getelementptr inbounds nuw i8, ptr %i.gwq, i64 1 ; 3 uses
  %i.gxc = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.gxd = icmp slt i32 %i.gxc, 2                 ; 22 uses
  %i.gxe = load ptr, ptr %i.gna, align 8, !tbaa !149 ; 22 uses
  %i.gxf = load i64, ptr %i.gnb, align 8          ; 22 uses
  %i.gxg = mul i64 %i.gxf, %i.gvy
  %.sink.idx.i555.i1358 = select i1 %i.gxd, i64 0, i64 %i.gxg
  %.sink.i556.i1359 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i555.i1358
  %i.gxh = getelementptr inbounds [3 x i8], ptr %.sink.i556.i1359, i64 %i.gwj ; 3 uses
  %gep1898 = getelementptr i8, ptr %invariant.gep1897, i64 %indvars.iv.i1338 ; 3 uses
  %i.gxi = getelementptr inbounds i8, ptr %.sink.i510.i1351, i64 %i.gwj ; 3 uses
  %90 = sext i1 %i.gwn to i64
  %i.gxj = add nsw i64 %indvars.iv.i1338, %90     ; 3 uses
  %i.gxk = load i8, ptr %i.gxa, align 1, !tbaa !21 ; 2 uses
  %.not428.i1362 = icmp eq i8 %i.gxk, 2
  %i.gxl = load i8, ptr %gep1898, align 1, !tbaa !21 ; 2 uses
  %.not429.i1363 = icmp eq i8 %i.gxl, 2           ; 2 uses
  br i1 %.not428.i1362, label %bb.ajv, label %bb.ajs

bb.ajs:                                           ; preds = %.preheader.i1354
  %i.gxm = mul i64 %i.gxf, %i.gwa
  %.sink.idx.i523.i1364 = select i1 %i.gxd, i64 0, i64 %i.gxm
  %.sink.i524.i1365 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i523.i1364
  %i.gxn = getelementptr inbounds [3 x i8], ptr %.sink.i524.i1365, i64 %i.gwm
  %i.gxo = load i8, ptr %i.gxn, align 1, !tbaa !21
  %i.gxp = zext i8 %i.gxo to i32
  %i.gxq = mul i64 %i.gxf, %i.gwb
  %.sink.idx.i525.i1366 = select i1 %i.gxd, i64 0, i64 %i.gxq
  %.sink.i526.i1367 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i525.i1366
  %i.gxr = getelementptr inbounds [3 x i8], ptr %.sink.i526.i1367, i64 %i.gwm
  %i.gxs = load i8, ptr %i.gxr, align 1, !tbaa !21
  %i.gxt = zext i8 %i.gxs to i32                  ; 2 uses
  %i.gxu = sub nsw i32 %i.gxp, %i.gxt
  %i.gxv = call i32 @llvm.abs.i32(i32 %i.gxu, i1 true) ; 2 uses
  br i1 %.not429.i1363, label %bb.aju, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.gxw = mul i64 %i.gxf, %i.gwd
  %.sink.idx.i521.i1368 = select i1 %i.gxd, i64 0, i64 %i.gxw
  %.sink.i522.i1369 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i521.i1368
  %i.gxx = getelementptr inbounds [3 x i8], ptr %.sink.i522.i1369, i64 %i.gwm
  %i.gxy = load i8, ptr %i.gxx, align 1, !tbaa !21
  %i.gxz = zext i8 %i.gxy to i32
  %i.gya = sub nsw i32 %i.gxt, %i.gxz
  %i.gyb = call i32 @llvm.abs.i32(i32 %i.gya, i1 true)
  %i.gyc = add nuw nsw i32 %i.gyb, %i.gxv
  %i.gyd = uitofp nneg i32 %i.gyc to float
  br label %bb.ajx

bb.aju:                                           ; preds = %bb.ajs
  %i.gye = uitofp nneg i32 %i.gxv to float
  %i.gyf = fmul nnan float %i.gye, 2.000000e+00
  br label %bb.ajx

bb.ajv:                                           ; preds = %.preheader.i1354
  br i1 %.not429.i1363, label %bb.ajx, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  %i.gyg = mul i64 %i.gxf, %i.gwb
  %.sink.idx.i529.i1424 = select i1 %i.gxd, i64 0, i64 %i.gyg
  %.sink.i530.i1425 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i529.i1424
  %i.gyh = getelementptr inbounds [3 x i8], ptr %.sink.i530.i1425, i64 %i.gwm
  %i.gyi = load i8, ptr %i.gyh, align 1, !tbaa !21
  %i.gyj = zext i8 %i.gyi to i32
  %i.gyk = mul i64 %i.gxf, %i.gwd
  %.sink.idx.i531.i1426 = select i1 %i.gxd, i64 0, i64 %i.gyk
  %.sink.i532.i1427 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i531.i1426
  %i.gyl = getelementptr inbounds [3 x i8], ptr %.sink.i532.i1427, i64 %i.gwm
  %i.gym = load i8, ptr %i.gyl, align 1, !tbaa !21
  %i.gyn = zext i8 %i.gym to i32
  %i.gyo = sub nsw i32 %i.gyj, %i.gyn
  %i.gyp = call i32 @llvm.abs.i32(i32 %i.gyo, i1 true)
  %i.gyq = uitofp nneg i32 %i.gyp to float
  %i.gyr = fmul nnan float %i.gyq, 2.000000e+00
  br label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw, %bb.ajv, %bb.aju, %bb.ajt
  %.sroa.0671.0.i1370 = phi float [ %i.gyd, %bb.ajt ], [ %i.gyr, %bb.ajw ], [ %i.gyf, %bb.aju ], [ 0.000000e+00, %bb.ajv ] ; 3 uses
  %i.gys = load i8, ptr %i.gxb, align 1, !tbaa !21
  %.not431.i1371 = icmp eq i8 %i.gys, 2
  %i.gyt = load i8, ptr %i.gxi, align 1, !tbaa !21
  %.not432.i1372 = icmp eq i8 %i.gyt, 2           ; 2 uses
  br i1 %.not431.i1371, label %bb.akb, label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx
  %i.gyu = mul i64 %i.gxf, %i.gwe
  %.sink.idx.i545.i1373 = select i1 %i.gxd, i64 0, i64 %i.gyu
  %.sink.i546.i1374 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i545.i1373 ; 2 uses
  %i.gyv = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i1374, i64 %i.gxj
  %i.gyw = load i8, ptr %i.gyv, align 1, !tbaa !21
  %i.gyx = zext i8 %i.gyw to i32
  %i.gyy = getelementptr [3 x i8], ptr %.sink.i546.i1374, i64 %i.gwm ; 2 uses
  %i.gyz = load i8, ptr %i.gyy, align 1, !tbaa !21
  %i.gza = zext i8 %i.gyz to i32                  ; 2 uses
  %i.gzb = sub nsw i32 %i.gyx, %i.gza
  %i.gzc = call i32 @llvm.abs.i32(i32 %i.gzb, i1 true) ; 2 uses
  br i1 %.not432.i1372, label %bb.aka, label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy
  %i.gzd = getelementptr i8, ptr %i.gyy, i64 -3
  %i.gze = load i8, ptr %i.gzd, align 1, !tbaa !21
  %i.gzf = zext i8 %i.gze to i32
  %i.gzg = sub nsw i32 %i.gza, %i.gzf
  %i.gzh = call i32 @llvm.abs.i32(i32 %i.gzg, i1 true)
  %i.gzi = add nuw nsw i32 %i.gzh, %i.gzc
  %i.gzj = uitofp nneg i32 %i.gzi to float
  br label %bb.akd

bb.aka:                                           ; preds = %bb.ajy
  %i.gzk = uitofp nneg i32 %i.gzc to float
  %i.gzl = fmul nnan float %i.gzk, 2.000000e+00
  br label %bb.akd

bb.akb:                                           ; preds = %bb.ajx
  br i1 %.not432.i1372, label %bb.akd, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  %i.gzm = mul i64 %i.gxf, %i.gwe
  %.sink.idx.i551.i1422 = select i1 %i.gxd, i64 0, i64 %i.gzm
  %.sink.i552.i1423 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i551.i1422
  %i.gzn = getelementptr [3 x i8], ptr %.sink.i552.i1423, i64 %i.gwm ; 2 uses
  %i.gzo = load i8, ptr %i.gzn, align 1, !tbaa !21
  %i.gzp = zext i8 %i.gzo to i32
  %i.gzq = getelementptr i8, ptr %i.gzn, i64 -3
  %i.gzr = load i8, ptr %i.gzq, align 1, !tbaa !21
  %i.gzs = zext i8 %i.gzr to i32
  %i.gzt = sub nsw i32 %i.gzp, %i.gzs
  %i.gzu = call i32 @llvm.abs.i32(i32 %i.gzt, i1 true)
  %i.gzv = uitofp nneg i32 %i.gzu to float
  %i.gzw = fmul nnan float %i.gzv, 2.000000e+00
  br label %bb.akd

bb.akd:                                           ; preds = %bb.akc, %bb.akb, %bb.aka, %bb.ajz
  %.sroa.12672.0.i1375 = phi float [ %i.gzj, %bb.ajz ], [ %i.gzw, %bb.akc ], [ %i.gzl, %bb.aka ], [ 0.000000e+00, %bb.akb ] ; 3 uses
  %i.gzx = fneg float %.sroa.0671.0.i1370
  %i.gzy = fmul float %.sroa.12672.0.i1375, %i.gvu
  %i.gzz = call noundef float @llvm.fmuladd.f32(float %i.gww, float %i.gzx, float %i.gzy) ; 2 uses
  %i.haa = call float @llvm.fabs.f32(float %i.gzz)
  %i.hab = fpext float %i.haa to double
  %i.hac = fcmp ugt double %i.hab, 1.000000e-02
  br i1 %i.hac, label %bb.ake, label %bb.akf

bb.ake:                                           ; preds = %bb.akd
  %i.had = fmul float %.sroa.12672.0.i1375, %.sroa.12672.0.i1375
  %i.hae = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i1370, float %.sroa.0671.0.i1370, float %i.had)
  %i.haf = fmul float %i.gwx, %i.hae
  %i.hag = call noundef float @sqrtf(float noundef %i.haf) #20
  %i.hah = fdiv float %i.gzz, %i.hag
  %i.hai = call float @llvm.fabs.f32(float %i.hah)
  %.pre798.i1421 = load i8, ptr %i.gxa, align 1, !tbaa !21
  %.pre1961.a = load i8, ptr %gep1898, align 1, !tbaa !21
  br label %bb.akf

bb.akf:                                           ; preds = %bb.ake, %bb.akd
  %i.haj = phi i8 [ %.pre1961.a, %bb.ake ], [ %i.gxl, %bb.akd ] ; 2 uses
  %i.hak = phi i8 [ %.pre798.i1421, %bb.ake ], [ %i.gxk, %bb.akd ] ; 2 uses
  %.0390.i1376 = phi float [ %i.hai, %bb.ake ], [ f0x358637BD, %bb.akd ]
  %i.hal = fmul float %i.gwz, %.0390.i1376        ; 2 uses
  %i.ham = load i8, ptr %i.gxh, align 1, !tbaa !21
  %i.han = uitofp i8 %i.ham to float
  %i.hao = call float @llvm.fmuladd.f32(float %i.hal, float %i.han, float %.sroa.0789.2.i1332)
  %i.hap = fadd float %.sroa.0.2.i1337, %i.hal
  %.not428.1.i1377 = icmp eq i8 %i.hak, 2
  %.not429.1.i1378 = icmp eq i8 %i.haj, 2         ; 2 uses
  br i1 %.not428.1.i1377, label %bb.akj, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.haq = mul i64 %i.gxf, %i.gwa
  %.sink.idx.i523.1.i1379 = select i1 %i.gxd, i64 0, i64 %i.haq
  %.sink.i524.1.i1380 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i523.1.i1379
  %i.har = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i1380, i64 %i.gwm
  %i.has = getelementptr inbounds nuw i8, ptr %i.har, i64 1
  %i.hat = load i8, ptr %i.has, align 1, !tbaa !21
  %i.hau = zext i8 %i.hat to i32
  %i.hav = mul i64 %i.gxf, %i.gwb
  %.sink.idx.i525.1.i1381 = select i1 %i.gxd, i64 0, i64 %i.hav
  %.sink.i526.1.i1382 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i525.1.i1381
  %i.haw = getelementptr inbounds [3 x i8], ptr %.sink.i526.1.i1382, i64 %i.gwm
  %i.hax = getelementptr inbounds nuw i8, ptr %i.haw, i64 1
  %i.hay = load i8, ptr %i.hax, align 1, !tbaa !21
  %i.haz = zext i8 %i.hay to i32                  ; 2 uses
  %i.hba = sub nsw i32 %i.hau, %i.haz
  %i.hbb = call i32 @llvm.abs.i32(i32 %i.hba, i1 true) ; 2 uses
  br i1 %.not429.1.i1378, label %bb.aki, label %bb.akh

bb.akh:                                           ; preds = %bb.akg
  %i.hbc = mul i64 %i.gxf, %i.gwd
  %.sink.idx.i521.1.i1383 = select i1 %i.gxd, i64 0, i64 %i.hbc
  %.sink.i522.1.i1384 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i521.1.i1383
  %i.hbd = getelementptr inbounds [3 x i8], ptr %.sink.i522.1.i1384, i64 %i.gwm
  %i.hbe = getelementptr inbounds nuw i8, ptr %i.hbd, i64 1
  %i.hbf = load i8, ptr %i.hbe, align 1, !tbaa !21
  %i.hbg = zext i8 %i.hbf to i32
  %i.hbh = sub nsw i32 %i.haz, %i.hbg
  %i.hbi = call i32 @llvm.abs.i32(i32 %i.hbh, i1 true)
  %i.hbj = add nuw nsw i32 %i.hbi, %i.hbb
  %i.hbk = uitofp nneg i32 %i.hbj to float
  br label %bb.akl

bb.aki:                                           ; preds = %bb.akg
  %i.hbl = uitofp nneg i32 %i.hbb to float
  %i.hbm = fmul nnan float %i.hbl, 2.000000e+00
  br label %bb.akl

bb.akj:                                           ; preds = %bb.akf
  br i1 %.not429.1.i1378, label %bb.akl, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %i.hbn = mul i64 %i.gxf, %i.gwb
  %.sink.idx.i529.1.i1417 = select i1 %i.gxd, i64 0, i64 %i.hbn
  %.sink.i530.1.i1418 = getelementptr inbounds nuw i8, ptr %i.gxe, i64 %.sink.idx.i529.1.i1417
  %i.hbo = getelementptr inbounds [3 x i8], ptr %.sink.i530.1.i1418, i64 %i.gwm
  %i.hbp = getelementptr inbounds nuw i8, ptr %i.hbo, i64 1
end_hunk_8
begin_hunk_9_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.hkj = zext nneg i32 %i.hki to i64            ; 2 uses
  %i.hkk = mul i64 %i.hjb, %i.hkj
  %.sink.idx.i.i578.i1185 = select i1 %i.hiz, i64 0, i64 %i.hkk
  %.sink.i.i579.i1186 = getelementptr inbounds nuw i8, ptr %i.hja, i64 %.sink.idx.i.i578.i1185
  %i.hkl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i579.i1186, i64 %i.his
  %i.hkm = load float, ptr %i.hkl, align 4, !tbaa !46 ; 3 uses
  %i.hkn = fpext float %i.hkm to double           ; 8 uses
  %i.hko = fcmp ogt float %i.hkm, %i.hjk
  %i.hkp = select i1 %i.hko, double %i.hjl, double %i.hkn ; 2 uses
  %i.hkq = mul i64 %i.hip, %i.hkj
  %.sink.idx.i35.i582.i1187 = select i1 %i.hin, i64 0, i64 %i.hkq
  %.sink.i36.i583.i1188 = getelementptr inbounds nuw i8, ptr %i.hio, i64 %.sink.idx.i35.i582.i1187
  %i.hkr = getelementptr inbounds nuw i8, ptr %.sink.i36.i583.i1188, i64 %i.his ; 2 uses
  %i.hks = load i8, ptr %i.hkr, align 1, !tbaa !21
  %.not.i584.i1189 = icmp eq i8 %i.hks, 2
  br i1 %.not.i584.i1189, label %bb.amf, label %bb.ama

bb.ama:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1182
  br i1 %.not31.i587.i1183, label %bb.ame, label %bb.amb

bb.amb:                                           ; preds = %bb.ama
  %i.hkt = fsub double %i.hkn, %i.hjl             ; 3 uses
  %i.hku = call double @llvm.fabs.f64(double %i.hkt)
  %i.hkv = fcmp ult double %i.hku, 1.000000e+00
  br i1 %i.hkv, label %bb.amd, label %bb.amc

bb.amc:                                           ; preds = %bb.amb
  %i.hkw = fadd double %i.hkp, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190

bb.amd:                                           ; preds = %bb.amb
  %i.hkx = fadd double %i.hjl, %i.hkn
  %i.hky = fneg double %i.hkt
  %i.hkz = call double @llvm.fmuladd.f64(double %i.hky, double %i.hkt, double 2.000000e+00)
  %i.hla = call double @sqrt(double noundef %i.hkz) #20
  %i.hlb = fadd double %i.hkx, %i.hla
  %i.hlc = fmul double %i.hlb, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190

bb.ame:                                           ; preds = %bb.ama
  %i.hld = fadd double %i.hkn, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190

bb.amf:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1182
  br i1 %.not31.i587.i1183, label %bb.amh, label %bb.amg

bb.amg:                                           ; preds = %bb.amf
  %i.hle = fadd double %i.hjl, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190

bb.amh:                                           ; preds = %bb.amf
  %i.hlf = fadd double %i.hkp, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190: ; preds = %bb.amh, %bb.amg, %bb.ame, %bb.amd, %bb.amc
  %.0.i588.i1191 = phi double [ %i.hkw, %bb.amc ], [ %i.hlc, %bb.amd ], [ %i.hld, %bb.ame ], [ %i.hle, %bb.amg ], [ %i.hlf, %bb.amh ]
  %i.hlg = fptrunc double %.0.i588.i1191 to float ; 2 uses
  %i.hlh = add nuw nsw i32 %.5.i1163, 1
  %i.hli = zext nneg i32 %i.hlh to i64            ; 2 uses
  %i.hlj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1177, i64 %i.hli
  %i.hlk = load float, ptr %i.hlj, align 4, !tbaa !46 ; 3 uses
  %i.hll = fpext float %i.hlk to double           ; 8 uses
  %i.hlm = fcmp ogt float %i.hjf, %i.hlk
  %i.hln = select i1 %i.hlm, double %i.hll, double %i.hjg ; 2 uses
  %i.hlo = load i8, ptr %i.hjp, align 1, !tbaa !21
  %.not.i596.i1192 = icmp eq i8 %i.hlo, 2
  %i.hlp = getelementptr inbounds nuw i8, ptr %.sink.i565.i1173, i64 %i.hli ; 2 uses
  %i.hlq = load i8, ptr %i.hlp, align 1, !tbaa !21
  %.not31.i599.i1193 = icmp eq i8 %i.hlq, 2       ; 2 uses
  br i1 %.not.i596.i1192, label %bb.amn, label %bb.ami

bb.ami:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190
  br i1 %.not31.i599.i1193, label %bb.amm, label %bb.amj

bb.amj:                                           ; preds = %bb.ami
  %i.hlr = fsub double %i.hjg, %i.hll             ; 3 uses
  %i.hls = call double @llvm.fabs.f64(double %i.hlr)
  %i.hlt = fcmp ult double %i.hls, 1.000000e+00
  br i1 %i.hlt, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  %i.hlu = fadd double %i.hln, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194

bb.aml:                                           ; preds = %bb.amj
  %i.hlv = fadd double %i.hjg, %i.hll
  %i.hlw = fneg double %i.hlr
  %i.hlx = call double @llvm.fmuladd.f64(double %i.hlw, double %i.hlr, double 2.000000e+00)
  %i.hly = call double @sqrt(double noundef %i.hlx) #20
  %i.hlz = fadd double %i.hlv, %i.hly
  %i.hma = fmul double %i.hlz, 5.000000e-01
  %.pr708.pre.i1256 = load i8, ptr %i.hlp, align 1, !tbaa !21
  %i.hmb = icmp eq i8 %.pr708.pre.i1256, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194

bb.amm:                                           ; preds = %bb.ami
  %i.hmc = fadd double %i.hjg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194

bb.amn:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1190
  br i1 %.not31.i599.i1193, label %bb.amp, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  %i.hmd = fadd double %i.hll, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194

bb.amp:                                           ; preds = %bb.amn
  %i.hme = fadd double %i.hln, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194: ; preds = %bb.amp, %bb.amo, %bb.amm, %bb.aml, %bb.amk
  %.not31.i611.i1195 = phi i1 [ true, %bb.amp ], [ true, %bb.amm ], [ false, %bb.amo ], [ %i.hmb, %bb.aml ], [ false, %bb.amk ] ; 2 uses
  %.0.i600.i1196 = phi double [ %i.hme, %bb.amp ], [ %i.hmc, %bb.amm ], [ %i.hmd, %bb.amo ], [ %i.hma, %bb.aml ], [ %i.hlu, %bb.amk ]
  %i.hmf = fptrunc double %.0.i600.i1196 to float ; 2 uses
  %i.hmg = fcmp ogt float %i.hkm, %i.hlk
  %i.hmh = select i1 %i.hmg, double %i.hll, double %i.hkn ; 2 uses
  %i.hmi = load i8, ptr %i.hkr, align 1, !tbaa !21
  %.not.i608.i1197 = icmp eq i8 %i.hmi, 2
  br i1 %.not.i608.i1197, label %bb.amv, label %bb.amq

bb.amq:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194
  br i1 %.not31.i611.i1195, label %bb.amu, label %bb.amr

bb.amr:                                           ; preds = %bb.amq
  %i.hmj = fsub double %i.hkn, %i.hll             ; 3 uses
  %i.hmk = call double @llvm.fabs.f64(double %i.hmj)
  %i.hml = fcmp ult double %i.hmk, 1.000000e+00
  br i1 %i.hml, label %bb.amt, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  %i.hmm = fadd double %i.hmh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198

bb.amt:                                           ; preds = %bb.amr
  %i.hmn = fadd double %i.hkn, %i.hll
  %i.hmo = fneg double %i.hmj
  %i.hmp = call double @llvm.fmuladd.f64(double %i.hmo, double %i.hmj, double 2.000000e+00)
  %i.hmq = call double @sqrt(double noundef %i.hmp) #20
  %i.hmr = fadd double %i.hmn, %i.hmq
  %i.hms = fmul double %i.hmr, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198

bb.amu:                                           ; preds = %bb.amq
  %i.hmt = fadd double %i.hkn, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198

bb.amv:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1194
  br i1 %.not31.i611.i1195, label %bb.amx, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  %i.hmu = fadd double %i.hll, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198

bb.amx:                                           ; preds = %bb.amv
  %i.hmv = fadd double %i.hmh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198: ; preds = %bb.amx, %bb.amw, %bb.amu, %bb.amt, %bb.ams
  %.0.i612.i1199 = phi double [ %i.hmm, %bb.ams ], [ %i.hms, %bb.amt ], [ %i.hmt, %bb.amu ], [ %i.hmu, %bb.amw ], [ %i.hmv, %bb.amx ]
  %i.hmw = fptrunc double %.0.i612.i1199 to float ; 2 uses
  %i.hmx = fcmp ogt float %i.hkh, %i.hlg
  %i.hmy = select i1 %i.hmx, float %i.hlg, float %i.hkh ; 2 uses
  %i.hmz = fcmp ogt float %i.hmf, %i.hmw
  %i.hna = select i1 %i.hmz, float %i.hmw, float %i.hmf ; 2 uses
  %i.hnb = fcmp ogt float %i.hmy, %i.hna
  %i.hnc = select i1 %i.hnb, float %i.hna, float %i.hmy ; 2 uses
  %i.hnd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1177, i64 %i.his
  store float %i.hnc, ptr %i.hnd, align 4, !tbaa !46
  %i.hne = add nuw nsw i32 %.5407.fr.i1164, %i.dl
  %i.hnf = add nsw i32 %i.hik, -2
  %i.hng = sub nsw i32 %.5.i1163, %i.dl
  %i.hnh = add nuw nsw i32 %.5.i1163, %i.dl
  %i.hni = add nsw i32 %i.hil, -2
  %i.hnj = add nsw i32 %i.hik, -1
  %i.hnk = add nsw i32 %i.hil, -1
  %i.hnl = sub nsw i32 %.5407.fr.i1164, %i.dl
  %i.hnm = load i64, ptr %i.glz, align 8          ; 3 uses
  br label %.lr.ph.i1200

.lr.ph.i1200:                                     ; preds = %._crit_edge.i1205, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198
  %.0386740.i1201 = phi float [ %.us-phi724.i1207, %._crit_edge.i1205 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198 ] ; 3 uses
  %.0387739.i1202 = phi float [ %.us-phi.i1206, %._crit_edge.i1205 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198 ] ; 3 uses
  %.1398738.i1203 = phi i32 [ %i.hoa, %._crit_edge.i1205 ], [ %i.hnl, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1198 ] ; 10 uses
  %i.hnn = add nsw i32 %.1398738.i1203, -1        ; 3 uses
  %i.hno = icmp eq i32 %.1398738.i1203, 1
  %i.hnp = zext i1 %i.hno to i32
  %i.hnq = add nuw nsw i32 %i.hnn, %i.hnp         ; 2 uses
  %i.hnr = icmp eq i32 %.1398738.i1203, %i.hnf
  %.neg.i1204 = sext i1 %i.hnr to i32             ; 2 uses
  %i.hns = add i32 %i.hnn, %.neg.i1204
  %i.hnt = icmp sgt i32 %.1398738.i1203, 0
  %i.hnu = zext nneg i32 %.1398738.i1203 to i64
  %i.hnv = sub nsw i32 %.1398738.i1203, %.5407.fr.i1164 ; 2 uses
  %i.hnw = mul nsw i32 %i.hnv, %i.hnv
  %i.hnx = sub nsw i32 %.5407.fr.i1164, %.1398738.i1203
  %i.hny = sitofp i32 %i.hnx to float             ; 3 uses
  %i.hnz = fmul nnan float %i.hny, %i.hny
  %i.hoa = add i32 %.1398738.i1203, 1             ; 3 uses
  %i.hob = zext nneg i32 %i.hoa to i64
  %i.hoc = zext nneg i32 %i.hnn to i64            ; 2 uses
  %i.hod = add nsw i32 %.1398738.i1203, %.neg.i1204
  %i.hoe = sext i32 %i.hod to i64
  %i.hof = sext i32 %i.hns to i64                 ; 2 uses
  %i.hog = add nsw i32 %i.hnq, -1
  %i.hoh = sext i32 %i.hog to i64                 ; 2 uses
  %i.hoi = sext i32 %i.hnq to i64                 ; 2 uses
  br i1 %i.hnt, label %.lr.ph.split.i1214, label %._crit_edge.i1205

.lr.ph.split.i1214:                               ; preds = %.lr.ph.i1200
  %i.hoj = icmp slt i32 %.1398738.i1203, %i.hnj
  %.fr736.i1215 = freeze i1 %i.hoj
  br i1 %.fr736.i1215, label %.lr.ph.split.split.i1216.preheader, label %._crit_edge.i1205

.lr.ph.split.split.i1216.preheader:               ; preds = %.lr.ph.split.i1214
  %i.hok = mul i64 %i.hnm, %i.hnu
  %.sink.idx.i616.i1225 = select i1 %i.hin, i64 0, i64 %i.hok
  %.sink.i617.i1226 = getelementptr inbounds nuw i8, ptr %i.hio, i64 %.sink.idx.i616.i1225 ; 2 uses
  %i.hol = mul i64 %i.hnm, %i.hob
  %.sink.idx.i618.i1229 = select i1 %i.hin, i64 0, i64 %i.hol
  %.sink.i619.i1230 = getelementptr inbounds nuw i8, ptr %i.hio, i64 %.sink.idx.i618.i1229
  %i.hom = mul i64 %i.hnm, %i.hoc
  %.sink.idx.i634.i1232 = select i1 %i.hin, i64 0, i64 %i.hom
  %.sink.i635.i1233 = getelementptr inbounds nuw i8, ptr %i.hio, i64 %.sink.idx.i634.i1232
  br label %.lr.ph.split.split.i1216

.lr.ph.split.split.i1216:                         ; preds = %.lr.ph.split.split.i1216.preheader, %bb.anp
  %.1722.i1217 = phi float [ %.2.i1223, %bb.anp ], [ %.0386740.i1201, %.lr.ph.split.split.i1216.preheader ] ; 4 uses
  %.1388721.i1218 = phi float [ %.2389.i1222, %bb.anp ], [ %.0387739.i1202, %.lr.ph.split.split.i1216.preheader ] ; 4 uses
  %.1396719.i1219 = phi i32 [ %i.htq, %bb.anp ], [ %i.hng, %.lr.ph.split.split.i1216.preheader ] ; 11 uses
  %i.hon = add nsw i32 %.1396719.i1219, -1        ; 2 uses
  %i.hoo = icmp eq i32 %.1396719.i1219, 1
  %i.hop = zext i1 %i.hoo to i32
  %i.hoq = add nuw nsw i32 %i.hon, %i.hop         ; 4 uses
  %i.hor = icmp eq i32 %.1396719.i1219, %i.hni
  %.neg411.i1220 = sext i1 %i.hor to i32
  %i.hos = icmp sgt i32 %.1396719.i1219, 0
  %i.hot = icmp slt i32 %.1396719.i1219, %i.hnk
  %or.cond771.i1221 = select i1 %i.hos, i1 %i.hot, i1 false
  br i1 %or.cond771.i1221, label %bb.amy, label %bb.anp

bb.amy:                                           ; preds = %.lr.ph.split.split.i1216
  %i.hou = zext nneg i32 %.1396719.i1219 to i64   ; 3 uses
  %i.hov = getelementptr inbounds nuw i8, ptr %.sink.i617.i1226, i64 %i.hou ; 2 uses
  %i.how = load i8, ptr %i.hov, align 1, !tbaa !21
  %.not412.i1227 = icmp eq i8 %i.how, 2
  br i1 %.not412.i1227, label %bb.anp, label %bb.amz

bb.amz:                                           ; preds = %bb.amy
  %i.hox = sub nsw i32 %.1396719.i1219, %.5.i1163 ; 2 uses
  %i.hoy = mul nsw i32 %i.hox, %i.hox
  %i.hoz = add nuw nsw i32 %i.hoy, %i.hnw
  %.not413.i1228 = icmp samesign ugt i32 %i.hoz, %i.gmf
  br i1 %.not413.i1228, label %bb.anp, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.hpa = sub nsw i32 %.5.i1163, %.1396719.i1219
  %i.hpb = sitofp i32 %i.hpa to float             ; 3 uses
  %i.hpc = call noundef float @llvm.fmuladd.f32(float %i.hpb, float %i.hpb, float %i.hnz) ; 3 uses
  %i.hpd = call nnan float @llvm.fmuladd.f32(float %i.hpc, float %i.hpc, float 1.000000e+00)
  %i.hpe = fdiv nnan float 1.000000e+00, %i.hpd
  %i.hpf = getelementptr inbounds nuw i8, ptr %.sink.i619.i1230, i64 %i.hou
  %i.hpg = load i8, ptr %i.hpf, align 1, !tbaa !21
  %.not414.i1231 = icmp eq i8 %i.hpg, 2
  %i.hph = getelementptr inbounds nuw i8, ptr %.sink.i635.i1233, i64 %i.hou
  %i.hpi = load i8, ptr %i.hph, align 1, !tbaa !21
  %.not415.i1234 = icmp eq i8 %i.hpi, 2           ; 2 uses
  br i1 %.not414.i1231, label %bb.ane, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.hpj = load i32, ptr %i.gmg, align 4, !tbaa !148
  %i.hpk = icmp slt i32 %i.hpj, 2                 ; 3 uses
  %i.hpl = load ptr, ptr %i.gmh, align 8, !tbaa !149 ; 3 uses
  %i.hpm = load i64, ptr %i.gmi, align 8          ; 3 uses
  %i.hpn = mul i64 %i.hpm, %i.hoe
  %.sink.idx.i630.i1235 = select i1 %i.hpk, i64 0, i64 %i.hpn
  %.sink.i631.i1236 = getelementptr inbounds nuw i8, ptr %i.hpl, i64 %.sink.idx.i630.i1235
  %i.hpo = sext i32 %i.hoq to i64                 ; 3 uses
  %i.hpp = getelementptr inbounds [2 x i8], ptr %.sink.i631.i1236, i64 %i.hpo
  %i.hpq = load i16, ptr %i.hpp, align 2, !tbaa !172
  %i.hpr = zext i16 %i.hpq to i32
  %i.hps = mul i64 %i.hpm, %i.hof
  %.sink.idx.i632.i1237 = select i1 %i.hpk, i64 0, i64 %i.hps
  %.sink.i633.i1238 = getelementptr inbounds nuw i8, ptr %i.hpl, i64 %.sink.idx.i632.i1237
  %i.hpt = getelementptr inbounds [2 x i8], ptr %.sink.i633.i1238, i64 %i.hpo
  %i.hpu = load i16, ptr %i.hpt, align 2, !tbaa !172
  %i.hpv = zext i16 %i.hpu to i32                 ; 2 uses
  %i.hpw = sub nsw i32 %i.hpr, %i.hpv
  %i.hpx = call i32 @llvm.abs.i32(i32 %i.hpw, i1 true) ; 2 uses
  br i1 %.not415.i1234, label %bb.and, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.hpy = mul i64 %i.hpm, %i.hoh
  %.sink.idx.i628.i1239 = select i1 %i.hpk, i64 0, i64 %i.hpy
  %.sink.i629.i1240 = getelementptr inbounds nuw i8, ptr %i.hpl, i64 %.sink.idx.i628.i1239
  %i.hpz = getelementptr inbounds [2 x i8], ptr %.sink.i629.i1240, i64 %i.hpo
  %i.hqa = load i16, ptr %i.hpz, align 2, !tbaa !172
  %i.hqb = zext i16 %i.hqa to i32
  %i.hqc = sub nsw i32 %i.hpv, %i.hqb
  %i.hqd = call i32 @llvm.abs.i32(i32 %i.hqc, i1 true)
  %i.hqe = add nuw nsw i32 %i.hqd, %i.hpx
  %i.hqf = uitofp nneg i32 %i.hqe to float
  br label %bb.ang

bb.and:                                           ; preds = %bb.anb
  %i.hqg = uitofp nneg i32 %i.hpx to float
  %i.hqh = fmul nnan float %i.hqg, 2.000000e+00
  br label %bb.ang

bb.ane:                                           ; preds = %bb.ana
  br i1 %.not415.i1234, label %bb.ang, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  %i.hqi = load i32, ptr %i.gmg, align 4, !tbaa !148
  %i.hqj = icmp slt i32 %i.hqi, 2                 ; 2 uses
  %i.hqk = load ptr, ptr %i.gmh, align 8, !tbaa !149 ; 2 uses
  %i.hql = load i64, ptr %i.gmi, align 8          ; 2 uses
  %i.hqm = mul i64 %i.hql, %i.hof
  %.sink.idx.i636.i1252 = select i1 %i.hqj, i64 0, i64 %i.hqm
  %.sink.i637.i1253 = getelementptr inbounds nuw i8, ptr %i.hqk, i64 %.sink.idx.i636.i1252
  %i.hqn = sext i32 %i.hoq to i64                 ; 2 uses
  %i.hqo = getelementptr inbounds [2 x i8], ptr %.sink.i637.i1253, i64 %i.hqn
  %i.hqp = load i16, ptr %i.hqo, align 2, !tbaa !172
  %i.hqq = zext i16 %i.hqp to i32
  %i.hqr = mul i64 %i.hql, %i.hoh
  %.sink.idx.i638.i1254 = select i1 %i.hqj, i64 0, i64 %i.hqr
  %.sink.i639.i1255 = getelementptr inbounds nuw i8, ptr %i.hqk, i64 %.sink.idx.i638.i1254
  %i.hqs = getelementptr inbounds [2 x i8], ptr %.sink.i639.i1255, i64 %i.hqn
  %i.hqt = load i16, ptr %i.hqs, align 2, !tbaa !172
  %i.hqu = zext i16 %i.hqt to i32
  %i.hqv = sub nsw i32 %i.hqq, %i.hqu
  %i.hqw = call i32 @llvm.abs.i32(i32 %i.hqv, i1 true)
  %i.hqx = uitofp nneg i32 %i.hqw to float
  %i.hqy = fmul nnan float %i.hqx, 2.000000e+00
  br label %bb.ang

bb.ang:                                           ; preds = %bb.anf, %bb.ane, %bb.and, %bb.anc
  %.sroa.0668.0.i1241 = phi float [ %i.hqf, %bb.anc ], [ %i.hqy, %bb.anf ], [ %i.hqh, %bb.and ], [ 0.000000e+00, %bb.ane ] ; 3 uses
  %i.hqz = getelementptr inbounds nuw i8, ptr %i.hov, i64 1
  %i.hra = load i8, ptr %i.hqz, align 1, !tbaa !21
  %.not417.i1242 = icmp eq i8 %i.hra, 2
  %i.hrb = zext nneg i32 %i.hon to i64            ; 2 uses
  %i.hrc = getelementptr inbounds nuw i8, ptr %.sink.i617.i1226, i64 %i.hrb
  %i.hrd = load i8, ptr %i.hrc, align 1, !tbaa !21
  %.not418.i1243 = icmp eq i8 %i.hrd, 2           ; 2 uses
  br i1 %.not417.i1242, label %bb.ank, label %bb.anh

bb.anh:                                           ; preds = %bb.ang
  %i.hre = add nsw i32 %.1396719.i1219, %.neg411.i1220
  %i.hrf = load i32, ptr %i.gmg, align 4, !tbaa !148
  %i.hrg = icmp slt i32 %i.hrf, 2
  %i.hrh = load ptr, ptr %i.gmh, align 8, !tbaa !149
  %i.hri = load i64, ptr %i.gmi, align 8
  %i.hrj = mul i64 %i.hri, %i.hoi
  %.sink.idx.i652.i1244 = select i1 %i.hrg, i64 0, i64 %i.hrj
  %.sink.i653.i1245 = getelementptr inbounds nuw i8, ptr %i.hrh, i64 %.sink.idx.i652.i1244 ; 2 uses
  %i.hrk = zext nneg i32 %i.hre to i64
  %i.hrl = getelementptr inbounds nuw [2 x i8], ptr %.sink.i653.i1245, i64 %i.hrk
  %i.hrm = load i16, ptr %i.hrl, align 2, !tbaa !172
  %i.hrn = zext i16 %i.hrm to i32
  %i.hro = sext i32 %i.hoq to i64
  %i.hrp = getelementptr [2 x i8], ptr %.sink.i653.i1245, i64 %i.hro ; 2 uses
  %i.hrq = load i16, ptr %i.hrp, align 2, !tbaa !172
  %i.hrr = zext i16 %i.hrq to i32                 ; 2 uses
  %i.hrs = sub nsw i32 %i.hrn, %i.hrr
  %i.hrt = call i32 @llvm.abs.i32(i32 %i.hrs, i1 true) ; 2 uses
  br i1 %.not418.i1243, label %bb.anj, label %bb.ani

bb.ani:                                           ; preds = %bb.anh
  %i.hru = getelementptr i8, ptr %i.hrp, i64 -2
  %i.hrv = load i16, ptr %i.hru, align 2, !tbaa !172
  %i.hrw = zext i16 %i.hrv to i32
  %i.hrx = sub nsw i32 %i.hrr, %i.hrw
  %i.hry = call i32 @llvm.abs.i32(i32 %i.hrx, i1 true)
  %i.hrz = add nuw nsw i32 %i.hry, %i.hrt
  %i.hsa = uitofp nneg i32 %i.hrz to float
  br label %bb.anm

bb.anj:                                           ; preds = %bb.anh
  %i.hsb = uitofp nneg i32 %i.hrt to float
  %i.hsc = fmul nnan float %i.hsb, 2.000000e+00
  br label %bb.anm

bb.ank:                                           ; preds = %bb.ang
  br i1 %.not418.i1243, label %bb.anm, label %bb.anl

bb.anl:                                           ; preds = %bb.ank
  %i.hsd = load i32, ptr %i.gmg, align 4, !tbaa !148
  %i.hse = icmp slt i32 %i.hsd, 2
  %i.hsf = load ptr, ptr %i.gmh, align 8, !tbaa !149
  %i.hsg = load i64, ptr %i.gmi, align 8
  %i.hsh = mul i64 %i.hsg, %i.hoi
  %.sink.idx.i658.i1250 = select i1 %i.hse, i64 0, i64 %i.hsh
  %.sink.i659.i1251 = getelementptr inbounds nuw i8, ptr %i.hsf, i64 %.sink.idx.i658.i1250
  %i.hsi = sext i32 %i.hoq to i64
  %i.hsj = getelementptr [2 x i8], ptr %.sink.i659.i1251, i64 %i.hsi ; 2 uses
  %i.hsk = load i16, ptr %i.hsj, align 2, !tbaa !172
  %i.hsl = zext i16 %i.hsk to i32
  %i.hsm = getelementptr i8, ptr %i.hsj, i64 -2
  %i.hsn = load i16, ptr %i.hsm, align 2, !tbaa !172
  %i.hso = zext i16 %i.hsn to i32
  %i.hsp = sub nsw i32 %i.hsl, %i.hso
end_hunk_9
begin_hunk_10_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.iaj = call double @sqrt(double noundef %i.iai) #20
  %i.iak = fadd double %i.iag, %i.iaj
  %i.ial = fmul double %i.iak, 5.000000e-01
  %.pr.pre.i1707 = load i8, ptr %i.iaa, align 1, !tbaa !21
  %i.iam = icmp eq i8 %.pr.pre.i1707, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575

bb.aou:                                           ; preds = %bb.aoq
  %i.ian = fadd double %i.hxr, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575

bb.aov:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit482.i1571
  br i1 %.not31.i492.i1574, label %bb.aox, label %bb.aow

bb.aow:                                           ; preds = %bb.aov
  %i.iao = fadd double %i.hzw, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575

bb.aox:                                           ; preds = %bb.aov
  %i.iap = fadd double %i.hzy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575: ; preds = %bb.aox, %bb.aow, %bb.aou, %bb.aot, %bb.aos
  %.not31.i504.i1576 = phi i1 [ true, %bb.aox ], [ true, %bb.aou ], [ false, %bb.aow ], [ %i.iam, %bb.aot ], [ false, %bb.aos ] ; 2 uses
  %.0.i493.i1577 = phi double [ %i.iap, %bb.aox ], [ %i.ian, %bb.aou ], [ %i.iao, %bb.aow ], [ %i.ial, %bb.aot ], [ %i.iaf, %bb.aos ]
  %i.iaq = fptrunc double %.0.i493.i1577 to float ; 2 uses
  %i.iar = fcmp ogt float %i.hyx, %i.hzv
  %i.ias = select i1 %i.iar, double %i.hzw, double %i.hyy ; 2 uses
  %i.iat = load i8, ptr %i.hzc, align 1, !tbaa !21
  %.not.i501.i1578 = icmp eq i8 %i.iat, 2
  br i1 %.not.i501.i1578, label %bb.apd, label %bb.aoy

bb.aoy:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575
  br i1 %.not31.i504.i1576, label %bb.apc, label %bb.aoz

bb.aoz:                                           ; preds = %bb.aoy
  %i.iau = fsub double %i.hyy, %i.hzw             ; 3 uses
  %i.iav = call double @llvm.fabs.f64(double %i.iau)
  %i.iaw = fcmp ult double %i.iav, 1.000000e+00
  br i1 %i.iaw, label %bb.apb, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  %i.iax = fadd double %i.ias, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579

bb.apb:                                           ; preds = %bb.aoz
  %i.iay = fadd double %i.hyy, %i.hzw
  %i.iaz = fneg double %i.iau
  %i.iba = call double @llvm.fmuladd.f64(double %i.iaz, double %i.iau, double 2.000000e+00)
  %i.ibb = call double @sqrt(double noundef %i.iba) #20
  %i.ibc = fadd double %i.iay, %i.ibb
  %i.ibd = fmul double %i.ibc, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579

bb.apc:                                           ; preds = %bb.aoy
  %i.ibe = fadd double %i.hyy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579

bb.apd:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1575
  br i1 %.not31.i504.i1576, label %bb.apf, label %bb.ape

bb.ape:                                           ; preds = %bb.apd
  %i.ibf = fadd double %i.hzw, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579

bb.apf:                                           ; preds = %bb.apd
  %i.ibg = fadd double %i.ias, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579: ; preds = %bb.apf, %bb.ape, %bb.apc, %bb.apb, %bb.apa
  %.0.i505.i1580 = phi double [ %i.iax, %bb.apa ], [ %i.ibd, %bb.apb ], [ %i.ibe, %bb.apc ], [ %i.ibf, %bb.ape ], [ %i.ibg, %bb.apf ]
  %i.ibh = fptrunc double %.0.i505.i1580 to float ; 2 uses
  %i.ibi = fcmp ogt float %i.hys, %i.hzr
  %i.ibj = select i1 %i.ibi, float %i.hzr, float %i.hys ; 2 uses
  %i.ibk = fcmp ogt float %i.iaq, %i.ibh
  %i.ibl = select i1 %i.ibk, float %i.ibh, float %i.iaq ; 2 uses
  %i.ibm = fcmp ogt float %i.ibj, %i.ibl
  %i.ibn = select i1 %i.ibm, float %i.ibl, float %i.ibj ; 2 uses
  %i.ibo = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1558, i64 %i.hxd
  store float %i.ibn, ptr %i.ibo, align 4, !tbaa !46
  %i.ibp = add nuw nsw i32 %.2404.fr.i1546, %i.dl
  %i.ibq = sub nsw i32 %.2404.fr.i1546, %i.dl
  %i.ibr = load i32, ptr %i.fu, align 8, !tbaa !146 ; 2 uses
  %i.ibs = add nsw i32 %i.ibr, -2
  %i.ibt = add nsw i32 %i.ibr, -1
  %i.ibu = add nuw nsw i32 %.2401.i1545, %i.dl
  %i.ibv = sub nsw i32 %.2401.i1545, %i.dl
  %i.ibw = load i32, ptr %i.eo, align 4, !tbaa !145 ; 2 uses
  %i.ibx = add nsw i32 %i.ibw, -2
  %i.iby = add nsw i32 %i.ibw, -1
  %i.ibz = sext i32 %i.ibv to i64
  %i.ica = sext i32 %i.iby to i64
  %i.icb = zext nneg i32 %i.ibu to i64
  %sext.i1581 = sext i32 %i.ibx to i64
  %i.icc = load i64, ptr %i.hvm, align 8          ; 3 uses
  br label %.lr.ph756.i1582

.preheader712.loopexit.i1599:                     ; preds = %._crit_edge757.i1591
  %i.icd = fpext float %.sroa.0789.4.i1592 to double
  %i.ice = fpext float %.sroa.0.4.i1597 to double
  %i.icf = fdiv double %i.icd, %i.ice
  %i.icg = fpext float %.sroa.6791.4.i1593 to double
  %i.ich = fpext float %.sroa.6.4.i1596 to double
  %i.ici = fdiv double %i.icg, %i.ich
  %i.icj = fpext float %.sroa.9793.4.i1594 to double
  %i.ick = fpext float %.sroa.9.4.i1595 to double
  %i.icl = fdiv double %i.icj, %i.ick
  %i.icm = insertelement <2 x double> poison, double %i.icf, i64 0
  %i.icn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.icm)
  %i.ico = call i32 @llvm.smax.i32(i32 %i.icn, i32 0)
  %i.icp = call i32 @llvm.umin.i32(i32 %i.ico, i32 255)
  %i.icq = trunc nuw i32 %i.icp to i8
  %i.icr = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.ics = icmp slt i32 %i.icr, 2
  %i.ict = load ptr, ptr %i.hvu, align 8, !tbaa !149
  %i.icu = load i64, ptr %i.hvv, align 8
  %i.icv = mul i64 %i.icu, %i.hxn
  %.sink.idx.i557.i1600 = select i1 %i.ics, i64 0, i64 %i.icv
  %.sink.i558.i1601 = getelementptr inbounds nuw i8, ptr %i.ict, i64 %.sink.idx.i557.i1600
  %i.icw = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i1601, i64 %i.hxt
  store i8 %i.icq, ptr %i.icw, align 1, !tbaa !21
  %i.icx = insertelement <2 x double> poison, double %i.ici, i64 0
  %i.icy = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.icx)
  %i.icz = call i32 @llvm.smax.i32(i32 %i.icy, i32 0)
  %i.ida = call i32 @llvm.umin.i32(i32 %i.icz, i32 255)
  %i.idb = trunc nuw i32 %i.ida to i8
  %i.idc = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.idd = icmp slt i32 %i.idc, 2
  %i.ide = load ptr, ptr %i.hvu, align 8, !tbaa !149
  %i.idf = load i64, ptr %i.hvv, align 8
  %i.idg = mul i64 %i.idf, %i.hxn
  %.sink.idx.i557.1.i1602 = select i1 %i.idd, i64 0, i64 %i.idg
  %.sink.i558.1.i1603 = getelementptr inbounds nuw i8, ptr %i.ide, i64 %.sink.idx.i557.1.i1602
  %i.idh = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i1603, i64 %i.hxt
  %i.idi = getelementptr inbounds nuw i8, ptr %i.idh, i64 1
  store i8 %i.idb, ptr %i.idi, align 1, !tbaa !21
  %i.idj = insertelement <2 x double> poison, double %i.icl, i64 0
  %i.idk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.idj)
  %i.idl = call i32 @llvm.smax.i32(i32 %i.idk, i32 0)
  %i.idm = call i32 @llvm.umin.i32(i32 %i.idl, i32 255)
  %i.idn = trunc nuw i32 %i.idm to i8
  %i.ido = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.idp = icmp slt i32 %i.ido, 2
  %i.idq = load ptr, ptr %i.hvu, align 8, !tbaa !149
  %i.idr = load i64, ptr %i.hvv, align 8
  %i.ids = mul i64 %i.idr, %i.hxn
  %.sink.idx.i557.2.i1604 = select i1 %i.idp, i64 0, i64 %i.ids
  %.sink.i558.2.i1605 = getelementptr inbounds nuw i8, ptr %i.idq, i64 %.sink.idx.i557.2.i1604
  %i.idt = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i1605, i64 %i.hxt
  %i.idu = getelementptr inbounds nuw i8, ptr %i.idt, i64 2
  store i8 %i.idn, ptr %i.idu, align 1, !tbaa !21
  %i.idv = load i32, ptr %i.hvk, align 4, !tbaa !148
  %i.idw = icmp slt i32 %i.idv, 2
  %i.idx = load ptr, ptr %i.hvl, align 8, !tbaa !149
  %i.idy = load i64, ptr %i.hvm, align 8
  %i.idz = mul i64 %i.idy, %i.hxb
  %.sink.idx.i559.i1606 = select i1 %i.idw, i64 0, i64 %i.idz
  %.sink.i560.i1607 = getelementptr inbounds nuw i8, ptr %i.idx, i64 %.sink.idx.i559.i1606
  %i.iea = getelementptr inbounds nuw i8, ptr %.sink.i560.i1607, i64 %i.hxd
  store i8 1, ptr %i.iea, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store float %i.ibn, ptr %6, align 4, !tbaa !50
  store i32 %.2404.fr.i1546, ptr %i.hvw, align 4, !tbaa !169
  store i32 %.2401.i1545, ptr %i.hvx, align 4, !tbaa !170
  %i.ieb = load i32, ptr %i.hvz, align 8, !tbaa !162
  store i32 %i.ieb, ptr %i.hvy, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.md, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %.noexc1711.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1711.a:                                     ; preds = %.preheader712.loopexit.i1599
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.iec = load i32, ptr %i.hvz, align 8, !tbaa !162
  %i.ied = add nsw i32 %i.iec, 1
  store i32 %i.ied, ptr %i.hvz, align 8, !tbaa !162
  br label %bb.aqx

.lr.ph756.i1582:                                  ; preds = %._crit_edge757.i1591, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579
  %.sroa.0789.1.i1583 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %.sroa.0789.4.i1592, %._crit_edge757.i1591 ] ; 3 uses
  %.sroa.6791.1.i1584 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %.sroa.6791.4.i1593, %._crit_edge757.i1591 ] ; 3 uses
  %.sroa.9793.1.i1585 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %.sroa.9793.4.i1594, %._crit_edge757.i1591 ] ; 3 uses
  %.sroa.9.1.i1586 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %.sroa.9.4.i1595, %._crit_edge757.i1591 ] ; 3 uses
  %.sroa.6.1.i1587 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %.sroa.6.4.i1596, %._crit_edge757.i1591 ] ; 3 uses
  %.sroa.0.1.i1588 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %.sroa.0.4.i1597, %._crit_edge757.i1591 ] ; 3 uses
  %.0397764.i1589 = phi i32 [ %i.ibq, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1579 ], [ %i.ieq, %._crit_edge757.i1591 ] ; 9 uses
  %i.iee = add nsw i32 %.0397764.i1589, -1        ; 3 uses
  %i.ief = icmp eq i32 %.0397764.i1589, 1
  %i.ieg = zext i1 %i.ief to i32
  %i.ieh = add nuw nsw i32 %i.iee, %i.ieg         ; 2 uses
  %i.iei = icmp eq i32 %.0397764.i1589, %i.ibs
  %.neg423.i1590 = sext i1 %i.iei to i32          ; 2 uses
  %i.iej = add i32 %i.iee, %.neg423.i1590
  %i.iek = icmp sgt i32 %.0397764.i1589, 0
  %i.iel = zext nneg i32 %.0397764.i1589 to i64
  %i.iem = sub nsw i32 %.0397764.i1589, %.2404.fr.i1546 ; 3 uses
  %i.ien = mul nsw i32 %i.iem, %i.iem
  %i.ieo = sitofp i32 %i.iem to float             ; 5 uses
  %i.iep = fmul nnan float %i.ieo, %i.ieo
  %i.ieq = add i32 %.0397764.i1589, 1             ; 3 uses
  %i.ier = zext nneg i32 %i.ieq to i64
  %i.ies = sext i32 %i.iee to i64                 ; 2 uses
  %i.iet = add nsw i32 %.0397764.i1589, %.neg423.i1590
  %i.ieu = sext i32 %i.iet to i64                 ; 3 uses
  %i.iev = sext i32 %i.iej to i64                 ; 6 uses
  %i.iew = add nsw i32 %i.ieh, -1
  %i.iex = sext i32 %i.iew to i64                 ; 6 uses
  %i.iey = sext i32 %i.ieh to i64                 ; 6 uses
  br i1 %i.iek, label %.lr.ph756.split.i1608, label %._crit_edge757.i1591

.lr.ph756.split.i1608:                            ; preds = %.lr.ph756.i1582
  %i.iez = icmp slt i32 %.0397764.i1589, %i.ibt
  %.fr762.i1609 = freeze i1 %i.iez
  br i1 %.fr762.i1609, label %.lr.ph756.split.split.i1610.preheader, label %._crit_edge757.i1591

.lr.ph756.split.split.i1610.preheader:            ; preds = %.lr.ph756.split.i1608
  %i.ifa = mul i64 %i.icc, %i.iel
  %.sink.idx.i509.i1629 = select i1 %i.hwy, i64 0, i64 %i.ifa
  %.sink.i510.i1630 = getelementptr inbounds nuw i8, ptr %i.hwz, i64 %.sink.idx.i509.i1629 ; 2 uses
  %i.ifb = mul i64 %i.icc, %i.ier
  %.sink.idx.i511.i1634 = select i1 %i.hwy, i64 0, i64 %i.ifb
  %.sink.i512.i1635 = getelementptr inbounds nuw i8, ptr %i.hwz, i64 %.sink.idx.i511.i1634
  %i.ifc = mul i64 %i.icc, %i.ies
  %.sink.idx.i513.i1639 = select i1 %i.hwy, i64 0, i64 %i.ifc
  %invariant.gep = getelementptr i8, ptr %i.hwz, i64 %.sink.idx.i513.i1639
  br label %.lr.ph756.split.split.i1610

.lr.ph756.split.split.i1610:                      ; preds = %.lr.ph756.split.split.i1610.preheader, %.loopexit.i1620
  %.sroa.0789.2.i1611 = phi float [ %.sroa.0789.3.i1621, %.loopexit.i1620 ], [ %.sroa.0789.1.i1583, %.lr.ph756.split.split.i1610.preheader ] ; 4 uses
  %.sroa.6791.2.i1612 = phi float [ %.sroa.6791.3.i1622, %.loopexit.i1620 ], [ %.sroa.6791.1.i1584, %.lr.ph756.split.split.i1610.preheader ] ; 4 uses
  %.sroa.9793.2.i1613 = phi float [ %.sroa.9793.3.i1623, %.loopexit.i1620 ], [ %.sroa.9793.1.i1585, %.lr.ph756.split.split.i1610.preheader ] ; 4 uses
  %.sroa.9.2.i1614 = phi float [ %.sroa.9.3.i1624, %.loopexit.i1620 ], [ %.sroa.9.1.i1586, %.lr.ph756.split.split.i1610.preheader ] ; 4 uses
  %.sroa.6.2.i1615 = phi float [ %.sroa.6.3.i1625, %.loopexit.i1620 ], [ %.sroa.6.1.i1587, %.lr.ph756.split.split.i1610.preheader ] ; 4 uses
  %.sroa.0.2.i1616 = phi float [ %.sroa.0.3.i1626, %.loopexit.i1620 ], [ %.sroa.0.1.i1588, %.lr.ph756.split.split.i1610.preheader ] ; 4 uses
  %indvars.iv.i1617 = phi i64 [ %indvars.iv.next.i1627, %.loopexit.i1620 ], [ %i.ibz, %.lr.ph756.split.split.i1610.preheader ] ; 12 uses
  %i.ifd = add nsw i64 %indvars.iv.i1617, -1      ; 3 uses
  %i.ife = icmp eq i64 %indvars.iv.i1617, 1
  %i.iff = zext i1 %i.ife to i64
  %i.ifg = add nuw nsw i64 %i.ifd, %i.iff         ; 21 uses
  %i.ifh = icmp eq i64 %indvars.iv.i1617, %sext.i1581
  %i.ifi = icmp sgt i64 %indvars.iv.i1617, 0
  %i.ifj = icmp slt i64 %indvars.iv.i1617, %i.ica
  %or.cond770.i1619 = select i1 %i.ifi, i1 %i.ifj, i1 false
  br i1 %or.cond770.i1619, label %bb.apg, label %.loopexit.i1620

bb.apg:                                           ; preds = %.lr.ph756.split.split.i1610
  %i.ifk = getelementptr inbounds nuw i8, ptr %.sink.i510.i1630, i64 %indvars.iv.i1617 ; 2 uses
  %i.ifl = load i8, ptr %i.ifk, align 1, !tbaa !21
  %.not426.i1631 = icmp eq i8 %i.ifl, 2
  br i1 %.not426.i1631, label %.loopexit.i1620, label %bb.aph

bb.aph:                                           ; preds = %bb.apg
  %i.ifm = trunc nuw nsw i64 %indvars.iv.i1617 to i32
  %i.ifn = sub nsw i32 %i.ifm, %.2401.i1545       ; 3 uses
  %i.ifo = mul nsw i32 %i.ifn, %i.ifn
  %i.ifp = add nuw nsw i32 %i.ifo, %i.ien
  %.not427.i1632 = icmp samesign ugt i32 %i.ifp, %i.hvs
  br i1 %.not427.i1632, label %.loopexit.i1620, label %.preheader.i1633

.preheader.i1633:                                 ; preds = %bb.aph
  %i.ifq = sitofp i32 %i.ifn to float             ; 5 uses
  %i.ifr = call noundef float @llvm.fmuladd.f32(float %i.ifq, float %i.ifq, float %i.iep) ; 5 uses
  %i.ifs = call nnan float @llvm.fmuladd.f32(float %i.ifr, float %i.ifr, float 1.000000e+00)
  %i.ift = fdiv nnan float 1.000000e+00, %i.ifs   ; 3 uses
  %i.ifu = getelementptr inbounds nuw i8, ptr %.sink.i512.i1635, i64 %indvars.iv.i1617 ; 3 uses
  %i.ifv = getelementptr inbounds nuw i8, ptr %i.ifk, i64 1 ; 3 uses
  %i.ifw = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.ifx = icmp slt i32 %i.ifw, 2                 ; 22 uses
  %i.ify = load ptr, ptr %i.hvu, align 8, !tbaa !149 ; 22 uses
  %i.ifz = load i64, ptr %i.hvv, align 8          ; 22 uses
  %i.iga = mul i64 %i.ifz, %i.ies
  %.sink.idx.i555.i1637 = select i1 %i.ifx, i64 0, i64 %i.iga
  %.sink.i556.i1638 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i555.i1637
  %i.igb = getelementptr inbounds [3 x i8], ptr %.sink.i556.i1638, i64 %i.ifd ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i1617 ; 3 uses
  %i.igc = getelementptr inbounds i8, ptr %.sink.i510.i1630, i64 %i.ifd ; 3 uses
  %91 = sext i1 %i.ifh to i64
  %i.igd = add nsw i64 %indvars.iv.i1617, %91     ; 3 uses
  %i.ige = load i8, ptr %i.ifu, align 1, !tbaa !21 ; 2 uses
  %.not428.i1641 = icmp eq i8 %i.ige, 2
  %i.igf = load i8, ptr %gep, align 1, !tbaa !21  ; 2 uses
  %.not429.i1642 = icmp eq i8 %i.igf, 2           ; 2 uses
  br i1 %.not428.i1641, label %bb.apl, label %bb.api

bb.api:                                           ; preds = %.preheader.i1633
  %i.igg = mul i64 %i.ifz, %i.ieu
  %.sink.idx.i523.i1643 = select i1 %i.ifx, i64 0, i64 %i.igg
  %.sink.i524.i1644 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i523.i1643
  %i.igh = getelementptr inbounds [3 x i8], ptr %.sink.i524.i1644, i64 %i.ifg
  %i.igi = load i8, ptr %i.igh, align 1, !tbaa !21
  %i.igj = zext i8 %i.igi to i32
  %i.igk = mul i64 %i.ifz, %i.iev
  %.sink.idx.i525.i1645 = select i1 %i.ifx, i64 0, i64 %i.igk
  %.sink.i526.i1646 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i525.i1645
  %i.igl = getelementptr inbounds [3 x i8], ptr %.sink.i526.i1646, i64 %i.ifg
  %i.igm = load i8, ptr %i.igl, align 1, !tbaa !21
  %i.ign = zext i8 %i.igm to i32                  ; 2 uses
  %i.igo = sub nsw i32 %i.igj, %i.ign
  %i.igp = call i32 @llvm.abs.i32(i32 %i.igo, i1 true) ; 2 uses
  br i1 %.not429.i1642, label %bb.apk, label %bb.apj

bb.apj:                                           ; preds = %bb.api
  %i.igq = mul i64 %i.ifz, %i.iex
  %.sink.idx.i521.i1647 = select i1 %i.ifx, i64 0, i64 %i.igq
  %.sink.i522.i1648 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i521.i1647
  %i.igr = getelementptr inbounds [3 x i8], ptr %.sink.i522.i1648, i64 %i.ifg
  %i.igs = load i8, ptr %i.igr, align 1, !tbaa !21
  %i.igt = zext i8 %i.igs to i32
  %i.igu = sub nsw i32 %i.ign, %i.igt
  %i.igv = call i32 @llvm.abs.i32(i32 %i.igu, i1 true)
  %i.igw = add nuw nsw i32 %i.igv, %i.igp
  %i.igx = uitofp nneg i32 %i.igw to float
  br label %bb.apn

bb.apk:                                           ; preds = %bb.api
  %i.igy = uitofp nneg i32 %i.igp to float
  %i.igz = fmul nnan float %i.igy, 2.000000e+00
  br label %bb.apn

bb.apl:                                           ; preds = %.preheader.i1633
  br i1 %.not429.i1642, label %bb.apn, label %bb.apm

bb.apm:                                           ; preds = %bb.apl
  %i.iha = mul i64 %i.ifz, %i.iev
  %.sink.idx.i529.i1703 = select i1 %i.ifx, i64 0, i64 %i.iha
  %.sink.i530.i1704 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i529.i1703
  %i.ihb = getelementptr inbounds [3 x i8], ptr %.sink.i530.i1704, i64 %i.ifg
  %i.ihc = load i8, ptr %i.ihb, align 1, !tbaa !21
  %i.ihd = zext i8 %i.ihc to i32
  %i.ihe = mul i64 %i.ifz, %i.iex
  %.sink.idx.i531.i1705 = select i1 %i.ifx, i64 0, i64 %i.ihe
  %.sink.i532.i1706 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i531.i1705
  %i.ihf = getelementptr inbounds [3 x i8], ptr %.sink.i532.i1706, i64 %i.ifg
  %i.ihg = load i8, ptr %i.ihf, align 1, !tbaa !21
  %i.ihh = zext i8 %i.ihg to i32
  %i.ihi = sub nsw i32 %i.ihd, %i.ihh
  %i.ihj = call i32 @llvm.abs.i32(i32 %i.ihi, i1 true)
  %i.ihk = uitofp nneg i32 %i.ihj to float
  %i.ihl = fmul nnan float %i.ihk, 2.000000e+00
  br label %bb.apn

bb.apn:                                           ; preds = %bb.apm, %bb.apl, %bb.apk, %bb.apj
  %.sroa.0671.0.i1649 = phi float [ %i.igx, %bb.apj ], [ %i.ihl, %bb.apm ], [ %i.igz, %bb.apk ], [ 0.000000e+00, %bb.apl ] ; 3 uses
  %i.ihm = load i8, ptr %i.ifv, align 1, !tbaa !21
  %.not431.i1650 = icmp eq i8 %i.ihm, 2
  %i.ihn = load i8, ptr %i.igc, align 1, !tbaa !21
  %.not432.i1651 = icmp eq i8 %i.ihn, 2           ; 2 uses
  br i1 %.not431.i1650, label %bb.apr, label %bb.apo

bb.apo:                                           ; preds = %bb.apn
  %i.iho = mul i64 %i.ifz, %i.iey
  %.sink.idx.i545.i1652 = select i1 %i.ifx, i64 0, i64 %i.iho
  %.sink.i546.i1653 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i545.i1652 ; 2 uses
  %i.ihp = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i1653, i64 %i.igd
  %i.ihq = load i8, ptr %i.ihp, align 1, !tbaa !21
  %i.ihr = zext i8 %i.ihq to i32
  %i.ihs = getelementptr [3 x i8], ptr %.sink.i546.i1653, i64 %i.ifg ; 2 uses
  %i.iht = load i8, ptr %i.ihs, align 1, !tbaa !21
  %i.ihu = zext i8 %i.iht to i32                  ; 2 uses
  %i.ihv = sub nsw i32 %i.ihr, %i.ihu
  %i.ihw = call i32 @llvm.abs.i32(i32 %i.ihv, i1 true) ; 2 uses
  br i1 %.not432.i1651, label %bb.apq, label %bb.app

bb.app:                                           ; preds = %bb.apo
  %i.ihx = getelementptr i8, ptr %i.ihs, i64 -3
  %i.ihy = load i8, ptr %i.ihx, align 1, !tbaa !21
  %i.ihz = zext i8 %i.ihy to i32
  %i.iia = sub nsw i32 %i.ihu, %i.ihz
  %i.iib = call i32 @llvm.abs.i32(i32 %i.iia, i1 true)
  %i.iic = add nuw nsw i32 %i.iib, %i.ihw
  %i.iid = uitofp nneg i32 %i.iic to float
  br label %bb.apt

bb.apq:                                           ; preds = %bb.apo
  %i.iie = uitofp nneg i32 %i.ihw to float
  %i.iif = fmul nnan float %i.iie, 2.000000e+00
  br label %bb.apt

bb.apr:                                           ; preds = %bb.apn
  br i1 %.not432.i1651, label %bb.apt, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.iig = mul i64 %i.ifz, %i.iey
  %.sink.idx.i551.i1701 = select i1 %i.ifx, i64 0, i64 %i.iig
  %.sink.i552.i1702 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i551.i1701
  %i.iih = getelementptr [3 x i8], ptr %.sink.i552.i1702, i64 %i.ifg ; 2 uses
  %i.iii = load i8, ptr %i.iih, align 1, !tbaa !21
  %i.iij = zext i8 %i.iii to i32
  %i.iik = getelementptr i8, ptr %i.iih, i64 -3
  %i.iil = load i8, ptr %i.iik, align 1, !tbaa !21
  %i.iim = zext i8 %i.iil to i32
  %i.iin = sub nsw i32 %i.iij, %i.iim
  %i.iio = call i32 @llvm.abs.i32(i32 %i.iin, i1 true)
  %i.iip = uitofp nneg i32 %i.iio to float
  %i.iiq = fmul nnan float %i.iip, 2.000000e+00
  br label %bb.apt

bb.apt:                                           ; preds = %bb.aps, %bb.apr, %bb.apq, %bb.app
  %.sroa.12672.0.i1654 = phi float [ %i.iid, %bb.app ], [ %i.iiq, %bb.aps ], [ %i.iif, %bb.apq ], [ 0.000000e+00, %bb.apr ] ; 3 uses
  %i.iir = fneg float %.sroa.0671.0.i1649
  %i.iis = fmul float %.sroa.12672.0.i1654, %i.ieo
  %i.iit = call noundef float @llvm.fmuladd.f32(float %i.ifq, float %i.iir, float %i.iis) ; 2 uses
  %i.iiu = call float @llvm.fabs.f32(float %i.iit)
  %i.iiv = fpext float %i.iiu to double
  %i.iiw = fcmp ugt double %i.iiv, 1.000000e-02
  br i1 %i.iiw, label %bb.apu, label %bb.apv

bb.apu:                                           ; preds = %bb.apt
  %i.iix = fmul float %.sroa.12672.0.i1654, %.sroa.12672.0.i1654
  %i.iiy = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i1649, float %.sroa.0671.0.i1649, float %i.iix)
  %i.iiz = fmul float %i.ifr, %i.iiy
  %i.ija = call noundef float @sqrtf(float noundef %i.iiz) #20
  %i.ijb = fdiv float %i.iit, %i.ija
  %i.ijc = call float @llvm.fabs.f32(float %i.ijb)
  %.pre798.i1700 = load i8, ptr %i.ifu, align 1, !tbaa !21
  %.pre1959.a = load i8, ptr %gep, align 1, !tbaa !21
  br label %bb.apv

bb.apv:                                           ; preds = %bb.apu, %bb.apt
  %i.ijd = phi i8 [ %.pre1959.a, %bb.apu ], [ %i.igf, %bb.apt ] ; 2 uses
  %i.ije = phi i8 [ %.pre798.i1700, %bb.apu ], [ %i.ige, %bb.apt ] ; 2 uses
  %.0390.i1655 = phi float [ %i.ijc, %bb.apu ], [ f0x358637BD, %bb.apt ]
  %i.ijf = fmul float %i.ift, %.0390.i1655        ; 2 uses
  %i.ijg = load i8, ptr %i.igb, align 1, !tbaa !21
  %i.ijh = uitofp i8 %i.ijg to float
  %i.iji = call float @llvm.fmuladd.f32(float %i.ijf, float %i.ijh, float %.sroa.0789.2.i1611)
  %i.ijj = fadd float %.sroa.0.2.i1616, %i.ijf
  %.not428.1.i1656 = icmp eq i8 %i.ije, 2
  %.not429.1.i1657 = icmp eq i8 %i.ijd, 2         ; 2 uses
  br i1 %.not428.1.i1656, label %bb.apz, label %bb.apw

bb.apw:                                           ; preds = %bb.apv
  %i.ijk = mul i64 %i.ifz, %i.ieu
  %.sink.idx.i523.1.i1658 = select i1 %i.ifx, i64 0, i64 %i.ijk
  %.sink.i524.1.i1659 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i523.1.i1658
  %i.ijl = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i1659, i64 %i.ifg
  %i.ijm = getelementptr inbounds nuw i8, ptr %i.ijl, i64 1
  %i.ijn = load i8, ptr %i.ijm, align 1, !tbaa !21
  %i.ijo = zext i8 %i.ijn to i32
  %i.ijp = mul i64 %i.ifz, %i.iev
  %.sink.idx.i525.1.i1660 = select i1 %i.ifx, i64 0, i64 %i.ijp
  %.sink.i526.1.i1661 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i525.1.i1660
  %i.ijq = getelementptr inbounds [3 x i8], ptr %.sink.i526.1.i1661, i64 %i.ifg
  %i.ijr = getelementptr inbounds nuw i8, ptr %i.ijq, i64 1
  %i.ijs = load i8, ptr %i.ijr, align 1, !tbaa !21
  %i.ijt = zext i8 %i.ijs to i32                  ; 2 uses
  %i.iju = sub nsw i32 %i.ijo, %i.ijt
  %i.ijv = call i32 @llvm.abs.i32(i32 %i.iju, i1 true) ; 2 uses
  br i1 %.not429.1.i1657, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  %i.ijw = mul i64 %i.ifz, %i.iex
  %.sink.idx.i521.1.i1662 = select i1 %i.ifx, i64 0, i64 %i.ijw
  %.sink.i522.1.i1663 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i521.1.i1662
  %i.ijx = getelementptr inbounds [3 x i8], ptr %.sink.i522.1.i1663, i64 %i.ifg
  %i.ijy = getelementptr inbounds nuw i8, ptr %i.ijx, i64 1
  %i.ijz = load i8, ptr %i.ijy, align 1, !tbaa !21
  %i.ika = zext i8 %i.ijz to i32
  %i.ikb = sub nsw i32 %i.ijt, %i.ika
  %i.ikc = call i32 @llvm.abs.i32(i32 %i.ikb, i1 true)
  %i.ikd = add nuw nsw i32 %i.ikc, %i.ijv
  %i.ike = uitofp nneg i32 %i.ikd to float
  br label %bb.aqb

bb.apy:                                           ; preds = %bb.apw
  %i.ikf = uitofp nneg i32 %i.ijv to float
  %i.ikg = fmul nnan float %i.ikf, 2.000000e+00
  br label %bb.aqb

bb.apz:                                           ; preds = %bb.apv
  br i1 %.not429.1.i1657, label %bb.aqb, label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz
  %i.ikh = mul i64 %i.ifz, %i.iev
  %.sink.idx.i529.1.i1696 = select i1 %i.ifx, i64 0, i64 %i.ikh
  %.sink.i530.1.i1697 = getelementptr inbounds nuw i8, ptr %i.ify, i64 %.sink.idx.i529.1.i1696
  %i.iki = getelementptr inbounds [3 x i8], ptr %.sink.i530.1.i1697, i64 %i.ifg
  %i.ikj = getelementptr inbounds nuw i8, ptr %i.iki, i64 1
end_hunk_10
begin_hunk_11_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.itd = zext nneg i32 %i.itc to i64            ; 2 uses
  %i.ite = mul i64 %i.irv, %i.itd
  %.sink.idx.i.i578.i1464 = select i1 %i.irt, i64 0, i64 %i.ite
  %.sink.i.i579.i1465 = getelementptr inbounds nuw i8, ptr %i.iru, i64 %.sink.idx.i.i578.i1464
  %i.itf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i579.i1465, i64 %i.irm
  %i.itg = load float, ptr %i.itf, align 4, !tbaa !46 ; 3 uses
  %i.ith = fpext float %i.itg to double           ; 8 uses
  %i.iti = fcmp ogt float %i.itg, %i.ise
  %i.itj = select i1 %i.iti, double %i.isf, double %i.ith ; 2 uses
  %i.itk = mul i64 %i.irj, %i.itd
  %.sink.idx.i35.i582.i1466 = select i1 %i.irh, i64 0, i64 %i.itk
  %.sink.i36.i583.i1467 = getelementptr inbounds nuw i8, ptr %i.iri, i64 %.sink.idx.i35.i582.i1466
  %i.itl = getelementptr inbounds nuw i8, ptr %.sink.i36.i583.i1467, i64 %i.irm ; 2 uses
  %i.itm = load i8, ptr %i.itl, align 1, !tbaa !21
  %.not.i584.i1468 = icmp eq i8 %i.itm, 2
  br i1 %.not.i584.i1468, label %bb.arv, label %bb.arq

bb.arq:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1461
  br i1 %.not31.i587.i1462, label %bb.aru, label %bb.arr

bb.arr:                                           ; preds = %bb.arq
  %i.itn = fsub double %i.ith, %i.isf             ; 3 uses
  %i.ito = call double @llvm.fabs.f64(double %i.itn)
  %i.itp = fcmp ult double %i.ito, 1.000000e+00
  br i1 %i.itp, label %bb.art, label %bb.ars

bb.ars:                                           ; preds = %bb.arr
  %i.itq = fadd double %i.itj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469

bb.art:                                           ; preds = %bb.arr
  %i.itr = fadd double %i.isf, %i.ith
  %i.its = fneg double %i.itn
  %i.itt = call double @llvm.fmuladd.f64(double %i.its, double %i.itn, double 2.000000e+00)
  %i.itu = call double @sqrt(double noundef %i.itt) #20
  %i.itv = fadd double %i.itr, %i.itu
  %i.itw = fmul double %i.itv, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469

bb.aru:                                           ; preds = %bb.arq
  %i.itx = fadd double %i.ith, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469

bb.arv:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1461
  br i1 %.not31.i587.i1462, label %bb.arx, label %bb.arw

bb.arw:                                           ; preds = %bb.arv
  %i.ity = fadd double %i.isf, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469

bb.arx:                                           ; preds = %bb.arv
  %i.itz = fadd double %i.itj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469: ; preds = %bb.arx, %bb.arw, %bb.aru, %bb.art, %bb.ars
  %.0.i588.i1470 = phi double [ %i.itq, %bb.ars ], [ %i.itw, %bb.art ], [ %i.itx, %bb.aru ], [ %i.ity, %bb.arw ], [ %i.itz, %bb.arx ]
  %i.iua = fptrunc double %.0.i588.i1470 to float ; 2 uses
  %i.iub = add nuw nsw i32 %.5.i1442, 1
  %i.iuc = zext nneg i32 %i.iub to i64            ; 2 uses
  %i.iud = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1456, i64 %i.iuc
  %i.iue = load float, ptr %i.iud, align 4, !tbaa !46 ; 3 uses
  %i.iuf = fpext float %i.iue to double           ; 8 uses
  %i.iug = fcmp ogt float %i.irz, %i.iue
  %i.iuh = select i1 %i.iug, double %i.iuf, double %i.isa ; 2 uses
  %i.iui = load i8, ptr %i.isj, align 1, !tbaa !21
  %.not.i596.i1471 = icmp eq i8 %i.iui, 2
  %i.iuj = getelementptr inbounds nuw i8, ptr %.sink.i565.i1452, i64 %i.iuc ; 2 uses
  %i.iuk = load i8, ptr %i.iuj, align 1, !tbaa !21
  %.not31.i599.i1472 = icmp eq i8 %i.iuk, 2       ; 2 uses
  br i1 %.not.i596.i1471, label %bb.asd, label %bb.ary

bb.ary:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469
  br i1 %.not31.i599.i1472, label %bb.asc, label %bb.arz

bb.arz:                                           ; preds = %bb.ary
  %i.iul = fsub double %i.isa, %i.iuf             ; 3 uses
  %i.ium = call double @llvm.fabs.f64(double %i.iul)
  %i.iun = fcmp ult double %i.ium, 1.000000e+00
  br i1 %i.iun, label %bb.asb, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  %i.iuo = fadd double %i.iuh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473

bb.asb:                                           ; preds = %bb.arz
  %i.iup = fadd double %i.isa, %i.iuf
  %i.iuq = fneg double %i.iul
  %i.iur = call double @llvm.fmuladd.f64(double %i.iuq, double %i.iul, double 2.000000e+00)
  %i.ius = call double @sqrt(double noundef %i.iur) #20
  %i.iut = fadd double %i.iup, %i.ius
  %i.iuu = fmul double %i.iut, 5.000000e-01
  %.pr708.pre.i1535 = load i8, ptr %i.iuj, align 1, !tbaa !21
  %i.iuv = icmp eq i8 %.pr708.pre.i1535, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473

bb.asc:                                           ; preds = %bb.ary
  %i.iuw = fadd double %i.isa, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473

bb.asd:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1469
  br i1 %.not31.i599.i1472, label %bb.asf, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  %i.iux = fadd double %i.iuf, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473

bb.asf:                                           ; preds = %bb.asd
  %i.iuy = fadd double %i.iuh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473: ; preds = %bb.asf, %bb.ase, %bb.asc, %bb.asb, %bb.asa
  %.not31.i611.i1474 = phi i1 [ true, %bb.asf ], [ true, %bb.asc ], [ false, %bb.ase ], [ %i.iuv, %bb.asb ], [ false, %bb.asa ] ; 2 uses
  %.0.i600.i1475 = phi double [ %i.iuy, %bb.asf ], [ %i.iuw, %bb.asc ], [ %i.iux, %bb.ase ], [ %i.iuu, %bb.asb ], [ %i.iuo, %bb.asa ]
  %i.iuz = fptrunc double %.0.i600.i1475 to float ; 2 uses
  %i.iva = fcmp ogt float %i.itg, %i.iue
  %i.ivb = select i1 %i.iva, double %i.iuf, double %i.ith ; 2 uses
  %i.ivc = load i8, ptr %i.itl, align 1, !tbaa !21
  %.not.i608.i1476 = icmp eq i8 %i.ivc, 2
  br i1 %.not.i608.i1476, label %bb.asl, label %bb.asg

bb.asg:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473
  br i1 %.not31.i611.i1474, label %bb.ask, label %bb.ash

bb.ash:                                           ; preds = %bb.asg
  %i.ivd = fsub double %i.ith, %i.iuf             ; 3 uses
  %i.ive = call double @llvm.fabs.f64(double %i.ivd)
  %i.ivf = fcmp ult double %i.ive, 1.000000e+00
  br i1 %i.ivf, label %bb.asj, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  %i.ivg = fadd double %i.ivb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477

bb.asj:                                           ; preds = %bb.ash
  %i.ivh = fadd double %i.ith, %i.iuf
  %i.ivi = fneg double %i.ivd
  %i.ivj = call double @llvm.fmuladd.f64(double %i.ivi, double %i.ivd, double 2.000000e+00)
  %i.ivk = call double @sqrt(double noundef %i.ivj) #20
  %i.ivl = fadd double %i.ivh, %i.ivk
  %i.ivm = fmul double %i.ivl, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477

bb.ask:                                           ; preds = %bb.asg
  %i.ivn = fadd double %i.ith, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477

bb.asl:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1473
  br i1 %.not31.i611.i1474, label %bb.asn, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.ivo = fadd double %i.iuf, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477

bb.asn:                                           ; preds = %bb.asl
  %i.ivp = fadd double %i.ivb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477: ; preds = %bb.asn, %bb.asm, %bb.ask, %bb.asj, %bb.asi
  %.0.i612.i1478 = phi double [ %i.ivg, %bb.asi ], [ %i.ivm, %bb.asj ], [ %i.ivn, %bb.ask ], [ %i.ivo, %bb.asm ], [ %i.ivp, %bb.asn ]
  %i.ivq = fptrunc double %.0.i612.i1478 to float ; 2 uses
  %i.ivr = fcmp ogt float %i.itb, %i.iua
  %i.ivs = select i1 %i.ivr, float %i.iua, float %i.itb ; 2 uses
  %i.ivt = fcmp ogt float %i.iuz, %i.ivq
  %i.ivu = select i1 %i.ivt, float %i.ivq, float %i.iuz ; 2 uses
  %i.ivv = fcmp ogt float %i.ivs, %i.ivu
  %i.ivw = select i1 %i.ivv, float %i.ivu, float %i.ivs ; 2 uses
  %i.ivx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1456, i64 %i.irm
  store float %i.ivw, ptr %i.ivx, align 4, !tbaa !46
  %i.ivy = add nuw nsw i32 %.5407.fr.i1443, %i.dl
  %i.ivz = add nsw i32 %i.ire, -2
  %i.iwa = sub nsw i32 %.5.i1442, %i.dl
  %i.iwb = add nuw nsw i32 %.5.i1442, %i.dl
  %i.iwc = add nsw i32 %i.irf, -2
  %i.iwd = add nsw i32 %i.ire, -1
  %i.iwe = add nsw i32 %i.irf, -1
  %i.iwf = sub nsw i32 %.5407.fr.i1443, %i.dl
  %i.iwg = load i64, ptr %i.hut, align 8          ; 3 uses
  br label %.lr.ph.i1479

.lr.ph.i1479:                                     ; preds = %._crit_edge.i1484, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477
  %.0386740.i1480 = phi float [ %.us-phi724.i1486, %._crit_edge.i1484 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477 ] ; 3 uses
  %.0387739.i1481 = phi float [ %.us-phi.i1485, %._crit_edge.i1484 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477 ] ; 3 uses
  %.1398738.i1482 = phi i32 [ %i.iwu, %._crit_edge.i1484 ], [ %i.iwf, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1477 ] ; 10 uses
  %i.iwh = add nsw i32 %.1398738.i1482, -1        ; 3 uses
  %i.iwi = icmp eq i32 %.1398738.i1482, 1
  %i.iwj = zext i1 %i.iwi to i32
  %i.iwk = add nuw nsw i32 %i.iwh, %i.iwj         ; 2 uses
  %i.iwl = icmp eq i32 %.1398738.i1482, %i.ivz
  %.neg.i1483 = sext i1 %i.iwl to i32             ; 2 uses
  %i.iwm = add i32 %i.iwh, %.neg.i1483
  %i.iwn = icmp sgt i32 %.1398738.i1482, 0
  %i.iwo = zext nneg i32 %.1398738.i1482 to i64
  %i.iwp = sub nsw i32 %.1398738.i1482, %.5407.fr.i1443 ; 2 uses
  %i.iwq = mul nsw i32 %i.iwp, %i.iwp
  %i.iwr = sub nsw i32 %.5407.fr.i1443, %.1398738.i1482
  %i.iws = sitofp i32 %i.iwr to float             ; 3 uses
  %i.iwt = fmul nnan float %i.iws, %i.iws
  %i.iwu = add i32 %.1398738.i1482, 1             ; 3 uses
  %i.iwv = zext nneg i32 %i.iwu to i64
  %i.iww = zext nneg i32 %i.iwh to i64            ; 2 uses
  %i.iwx = add nsw i32 %.1398738.i1482, %.neg.i1483
  %i.iwy = sext i32 %i.iwx to i64
  %i.iwz = sext i32 %i.iwm to i64                 ; 2 uses
  %i.ixa = add nsw i32 %i.iwk, -1
  %i.ixb = sext i32 %i.ixa to i64                 ; 2 uses
  %i.ixc = sext i32 %i.iwk to i64                 ; 2 uses
  br i1 %i.iwn, label %.lr.ph.split.i1493, label %._crit_edge.i1484

.lr.ph.split.i1493:                               ; preds = %.lr.ph.i1479
  %i.ixd = icmp slt i32 %.1398738.i1482, %i.iwd
  %.fr736.i1494 = freeze i1 %i.ixd
  br i1 %.fr736.i1494, label %.lr.ph.split.split.i1495.preheader, label %._crit_edge.i1484

.lr.ph.split.split.i1495.preheader:               ; preds = %.lr.ph.split.i1493
  %i.ixe = mul i64 %i.iwg, %i.iwo
  %.sink.idx.i616.i1504 = select i1 %i.irh, i64 0, i64 %i.ixe
  %.sink.i617.i1505 = getelementptr inbounds nuw i8, ptr %i.iri, i64 %.sink.idx.i616.i1504 ; 2 uses
  %i.ixf = mul i64 %i.iwg, %i.iwv
  %.sink.idx.i618.i1508 = select i1 %i.irh, i64 0, i64 %i.ixf
  %.sink.i619.i1509 = getelementptr inbounds nuw i8, ptr %i.iri, i64 %.sink.idx.i618.i1508
  %i.ixg = mul i64 %i.iwg, %i.iww
  %.sink.idx.i634.i1511 = select i1 %i.irh, i64 0, i64 %i.ixg
  %.sink.i635.i1512 = getelementptr inbounds nuw i8, ptr %i.iri, i64 %.sink.idx.i634.i1511
  br label %.lr.ph.split.split.i1495

.lr.ph.split.split.i1495:                         ; preds = %.lr.ph.split.split.i1495.preheader, %bb.atf
  %.1722.i1496 = phi float [ %.2.i1502, %bb.atf ], [ %.0386740.i1480, %.lr.ph.split.split.i1495.preheader ] ; 4 uses
  %.1388721.i1497 = phi float [ %.2389.i1501, %bb.atf ], [ %.0387739.i1481, %.lr.ph.split.split.i1495.preheader ] ; 4 uses
  %.1396719.i1498 = phi i32 [ %i.jbt, %bb.atf ], [ %i.iwa, %.lr.ph.split.split.i1495.preheader ] ; 11 uses
  %i.ixh = add nsw i32 %.1396719.i1498, -1        ; 2 uses
  %i.ixi = icmp eq i32 %.1396719.i1498, 1
  %i.ixj = zext i1 %i.ixi to i32
  %i.ixk = add nuw nsw i32 %i.ixh, %i.ixj         ; 4 uses
  %i.ixl = icmp eq i32 %.1396719.i1498, %i.iwc
  %.neg411.i1499 = sext i1 %i.ixl to i32
  %i.ixm = icmp sgt i32 %.1396719.i1498, 0
  %i.ixn = icmp slt i32 %.1396719.i1498, %i.iwe
  %or.cond771.i1500 = select i1 %i.ixm, i1 %i.ixn, i1 false
  br i1 %or.cond771.i1500, label %bb.aso, label %bb.atf

bb.aso:                                           ; preds = %.lr.ph.split.split.i1495
  %i.ixo = zext nneg i32 %.1396719.i1498 to i64   ; 3 uses
  %i.ixp = getelementptr inbounds nuw i8, ptr %.sink.i617.i1505, i64 %i.ixo ; 2 uses
  %i.ixq = load i8, ptr %i.ixp, align 1, !tbaa !21
  %.not412.i1506 = icmp eq i8 %i.ixq, 2
  br i1 %.not412.i1506, label %bb.atf, label %bb.asp

bb.asp:                                           ; preds = %bb.aso
  %i.ixr = sub nsw i32 %.1396719.i1498, %.5.i1442 ; 2 uses
  %i.ixs = mul nsw i32 %i.ixr, %i.ixr
  %i.ixt = add nuw nsw i32 %i.ixs, %i.iwq
  %.not413.i1507 = icmp samesign ugt i32 %i.ixt, %i.huz
  br i1 %.not413.i1507, label %bb.atf, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.ixu = sub nsw i32 %.5.i1442, %.1396719.i1498
  %i.ixv = sitofp i32 %i.ixu to float             ; 3 uses
  %i.ixw = call noundef float @llvm.fmuladd.f32(float %i.ixv, float %i.ixv, float %i.iwt) ; 3 uses
  %i.ixx = call nnan float @llvm.fmuladd.f32(float %i.ixw, float %i.ixw, float 1.000000e+00)
  %i.ixy = fdiv nnan float 1.000000e+00, %i.ixx
  %i.ixz = getelementptr inbounds nuw i8, ptr %.sink.i619.i1509, i64 %i.ixo
  %i.iya = load i8, ptr %i.ixz, align 1, !tbaa !21
  %.not414.i1510 = icmp eq i8 %i.iya, 2
  %i.iyb = getelementptr inbounds nuw i8, ptr %.sink.i635.i1512, i64 %i.ixo
  %i.iyc = load i8, ptr %i.iyb, align 1, !tbaa !21
  %.not415.i1513 = icmp eq i8 %i.iyc, 2           ; 2 uses
  br i1 %.not414.i1510, label %bb.asu, label %bb.asr

bb.asr:                                           ; preds = %bb.asq
  %i.iyd = load i32, ptr %i.hva, align 4, !tbaa !148
  %i.iye = icmp slt i32 %i.iyd, 2                 ; 3 uses
  %i.iyf = load ptr, ptr %i.hvb, align 8, !tbaa !149 ; 3 uses
  %i.iyg = load i64, ptr %i.hvc, align 8          ; 3 uses
  %i.iyh = mul i64 %i.iyg, %i.iwy
  %.sink.idx.i630.i1514 = select i1 %i.iye, i64 0, i64 %i.iyh
  %.sink.i631.i1515 = getelementptr inbounds nuw i8, ptr %i.iyf, i64 %.sink.idx.i630.i1514
  %i.iyi = sext i32 %i.ixk to i64                 ; 3 uses
  %i.iyj = getelementptr inbounds [4 x i8], ptr %.sink.i631.i1515, i64 %i.iyi
  %i.iyk = load float, ptr %i.iyj, align 4, !tbaa !46
  %i.iyl = mul i64 %i.iyg, %i.iwz
  %.sink.idx.i632.i1516 = select i1 %i.iye, i64 0, i64 %i.iyl
  %.sink.i633.i1517 = getelementptr inbounds nuw i8, ptr %i.iyf, i64 %.sink.idx.i632.i1516
  %i.iym = getelementptr inbounds [4 x i8], ptr %.sink.i633.i1517, i64 %i.iyi
  %i.iyn = load float, ptr %i.iym, align 4, !tbaa !46 ; 2 uses
  %i.iyo = fsub float %i.iyk, %i.iyn
  %i.iyp = call noundef float @llvm.fabs.f32(float %i.iyo) ; 2 uses
  br i1 %.not415.i1513, label %bb.ast, label %bb.ass

bb.ass:                                           ; preds = %bb.asr
  %i.iyq = mul i64 %i.iyg, %i.ixb
  %.sink.idx.i628.i1518 = select i1 %i.iye, i64 0, i64 %i.iyq
  %.sink.i629.i1519 = getelementptr inbounds nuw i8, ptr %i.iyf, i64 %.sink.idx.i628.i1518
  %i.iyr = getelementptr inbounds [4 x i8], ptr %.sink.i629.i1519, i64 %i.iyi
  %i.iys = load float, ptr %i.iyr, align 4, !tbaa !46
  %i.iyt = fsub float %i.iyn, %i.iys
  %i.iyu = call noundef float @llvm.fabs.f32(float %i.iyt)
  %i.iyv = fadd float %i.iyp, %i.iyu
  br label %bb.asw

bb.ast:                                           ; preds = %bb.asr
  %i.iyw = fmul float %i.iyp, 2.000000e+00
  br label %bb.asw

bb.asu:                                           ; preds = %bb.asq
  br i1 %.not415.i1513, label %bb.asw, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  %i.iyx = load i32, ptr %i.hva, align 4, !tbaa !148
  %i.iyy = icmp slt i32 %i.iyx, 2                 ; 2 uses
  %i.iyz = load ptr, ptr %i.hvb, align 8, !tbaa !149 ; 2 uses
  %i.iza = load i64, ptr %i.hvc, align 8          ; 2 uses
  %i.izb = mul i64 %i.iza, %i.iwz
  %.sink.idx.i636.i1531 = select i1 %i.iyy, i64 0, i64 %i.izb
  %.sink.i637.i1532 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 %.sink.idx.i636.i1531
  %i.izc = sext i32 %i.ixk to i64                 ; 2 uses
  %i.izd = getelementptr inbounds [4 x i8], ptr %.sink.i637.i1532, i64 %i.izc
  %i.ize = load float, ptr %i.izd, align 4, !tbaa !46
  %i.izf = mul i64 %i.iza, %i.ixb
  %.sink.idx.i638.i1533 = select i1 %i.iyy, i64 0, i64 %i.izf
  %.sink.i639.i1534 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 %.sink.idx.i638.i1533
  %i.izg = getelementptr inbounds [4 x i8], ptr %.sink.i639.i1534, i64 %i.izc
  %i.izh = load float, ptr %i.izg, align 4, !tbaa !46
  %i.izi = fsub float %i.ize, %i.izh
  %i.izj = call noundef float @llvm.fabs.f32(float %i.izi)
  %i.izk = fmul float %i.izj, 2.000000e+00
  br label %bb.asw

bb.asw:                                           ; preds = %bb.asv, %bb.asu, %bb.ast, %bb.ass
  %.sroa.0668.0.i1520 = phi float [ %i.iyv, %bb.ass ], [ %i.izk, %bb.asv ], [ %i.iyw, %bb.ast ], [ 0.000000e+00, %bb.asu ] ; 3 uses
  %i.izl = getelementptr inbounds nuw i8, ptr %i.ixp, i64 1
  %i.izm = load i8, ptr %i.izl, align 1, !tbaa !21
  %.not417.i1521 = icmp eq i8 %i.izm, 2
  %i.izn = zext nneg i32 %i.ixh to i64            ; 2 uses
  %i.izo = getelementptr inbounds nuw i8, ptr %.sink.i617.i1505, i64 %i.izn
  %i.izp = load i8, ptr %i.izo, align 1, !tbaa !21
  %.not418.i1522 = icmp eq i8 %i.izp, 2           ; 2 uses
  br i1 %.not417.i1521, label %bb.ata, label %bb.asx

bb.asx:                                           ; preds = %bb.asw
  %i.izq = add nsw i32 %.1396719.i1498, %.neg411.i1499
  %i.izr = load i32, ptr %i.hva, align 4, !tbaa !148
  %i.izs = icmp slt i32 %i.izr, 2
  %i.izt = load ptr, ptr %i.hvb, align 8, !tbaa !149
  %i.izu = load i64, ptr %i.hvc, align 8
  %i.izv = mul i64 %i.izu, %i.ixc
  %.sink.idx.i652.i1523 = select i1 %i.izs, i64 0, i64 %i.izv
  %.sink.i653.i1524 = getelementptr inbounds nuw i8, ptr %i.izt, i64 %.sink.idx.i652.i1523 ; 2 uses
  %i.izw = zext nneg i32 %i.izq to i64
  %i.izx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i653.i1524, i64 %i.izw
  %i.izy = load float, ptr %i.izx, align 4, !tbaa !46
  %i.izz = sext i32 %i.ixk to i64
  %i.jaa = getelementptr [4 x i8], ptr %.sink.i653.i1524, i64 %i.izz ; 2 uses
  %i.jab = load float, ptr %i.jaa, align 4, !tbaa !46 ; 2 uses
  %i.jac = fsub float %i.izy, %i.jab
  %i.jad = call noundef float @llvm.fabs.f32(float %i.jac) ; 2 uses
  br i1 %.not418.i1522, label %bb.asz, label %bb.asy

bb.asy:                                           ; preds = %bb.asx
  %i.jae = getelementptr i8, ptr %i.jaa, i64 -4
  %i.jaf = load float, ptr %i.jae, align 4, !tbaa !46
  %i.jag = fsub float %i.jab, %i.jaf
  %i.jah = call noundef float @llvm.fabs.f32(float %i.jag)
  %i.jai = fadd float %i.jad, %i.jah
  br label %bb.atc

bb.asz:                                           ; preds = %bb.asx
  %i.jaj = fmul float %i.jad, 2.000000e+00
  br label %bb.atc

bb.ata:                                           ; preds = %bb.asw
  br i1 %.not418.i1522, label %bb.atc, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  %i.jak = load i32, ptr %i.hva, align 4, !tbaa !148
  %i.jal = icmp slt i32 %i.jak, 2
  %i.jam = load ptr, ptr %i.hvb, align 8, !tbaa !149
  %i.jan = load i64, ptr %i.hvc, align 8
  %i.jao = mul i64 %i.jan, %i.ixc
  %.sink.idx.i658.i1529 = select i1 %i.jal, i64 0, i64 %i.jao
  %.sink.i659.i1530 = getelementptr inbounds nuw i8, ptr %i.jam, i64 %.sink.idx.i658.i1529
  %i.jap = sext i32 %i.ixk to i64
  %i.jaq = getelementptr [4 x i8], ptr %.sink.i659.i1530, i64 %i.jap ; 2 uses
  %i.jar = load float, ptr %i.jaq, align 4, !tbaa !46
  %i.jas = getelementptr i8, ptr %i.jaq, i64 -4
  %i.jat = load float, ptr %i.jas, align 4, !tbaa !46
  %i.jau = fsub float %i.jar, %i.jat
  %i.jav = call noundef float @llvm.fabs.f32(float %i.jau)
  %i.jaw = fmul float %i.jav, 2.000000e+00
  br label %bb.atc

bb.atc:                                           ; preds = %bb.atb, %bb.ata, %bb.asz, %bb.asy
  %.sroa.12.0.i1525 = phi float [ %i.jai, %bb.asy ], [ %i.jaw, %bb.atb ], [ %i.jaj, %bb.asz ], [ 0.000000e+00, %bb.ata ] ; 3 uses
  %i.jax = fneg float %.sroa.0668.0.i1520
  %i.jay = fmul float %.sroa.12.0.i1525, %i.iws
  %i.jaz = call noundef float @llvm.fmuladd.f32(float %i.ixv, float %i.jax, float %i.jay) ; 2 uses
  %i.jba = call float @llvm.fabs.f32(float %i.jaz)
  %i.jbb = fpext float %i.jba to double
  %i.jbc = fcmp ugt double %i.jbb, 1.000000e-02
  br i1 %i.jbc, label %bb.atd, label %bb.ate

bb.atd:                                           ; preds = %bb.atc
end_hunk_11
