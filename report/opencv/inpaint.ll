Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/inpaint?download=true
inline.NumInlined: 1195
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

bb.ji:                                            ; preds = %bb.jg
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i651.2.i, i64 %i.aih
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !46
  %i.aqe = fsub float %i.apx, %i.aqd
  br label %bb.jl

bb.jj:                                            ; preds = %bb.jf
  br i1 %.not578.2.i, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aqf = load i64, ptr %i.agv, align 8
  %i.aqg = mul i64 %i.aqf, %i.aif
  %.sink.idx.i656.2.i = select i1 %i.aio, i64 0, i64 %i.aqg
  %.sink.i657.2.i = getelementptr inbounds nuw i8, ptr %i.aip, i64 %.sink.idx.i656.2.i ; 2 uses
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i, i64 %i.aih
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !46
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i, i64 %i.aix
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !46
  %i.aql = fsub float %i.aqi, %i.aqk
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %bb.ji, %bb.jh
  %.sroa.23.0.i = phi float [ %i.aqb, %bb.jh ], [ %i.aql, %bb.jk ], [ %i.aqe, %bb.ji ], [ 0.000000e+00, %bb.jj ]
  %.pre1981 = load i64, ptr %i.agv, align 8       ; 7 uses
  br i1 %.not580.i, label %bb.jp, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aqm = mul i64 %.pre1981, %i.ajy
  %.sink.idx.i668.2.i = select i1 %i.aio, i64 0, i64 %i.aqm
  %gep979.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i668.2.i
  %i.aqn = load float, ptr %gep979.2.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not581.2.i, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aqo = mul i64 %.pre1981, %i.air
  %.sink.idx.i666.2.i = select i1 %i.aio, i64 0, i64 %i.aqo
  %gep977.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i666.2.i
  %i.aqp = load float, ptr %gep977.2.i, align 4, !tbaa !46
  %i.aqq = fsub float %i.aqn, %i.aqp
  %i.aqr = fmul float %i.aqq, 5.000000e-01
  br label %bb.jr

bb.jo:                                            ; preds = %bb.jm
  %i.aqs = mul i64 %.pre1981, %i.aif
  %.sink.idx.i670.2.i = select i1 %i.aio, i64 0, i64 %i.aqs
  %gep981.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i670.2.i
  %i.aqt = load float, ptr %gep981.2.i, align 4, !tbaa !46
  %i.aqu = fsub float %i.aqn, %i.aqt
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jl
  br i1 %.not581.2.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aqv = mul i64 %.pre1981, %i.aif
  %.sink.idx.i674.2.i = select i1 %i.aio, i64 0, i64 %i.aqv
  %gep985.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i674.2.i
  %i.aqw = load float, ptr %gep985.2.i, align 4, !tbaa !46
  %i.aqx = mul i64 %.pre1981, %i.air
  %.sink.idx.i676.2.i = select i1 %i.aio, i64 0, i64 %i.aqx
  %gep987.2.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i676.2.i
  %i.aqy = load float, ptr %gep987.2.i, align 4, !tbaa !46
  %i.aqz = fsub float %i.aqw, %i.aqy
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jn
  %.sroa.28.0.i = phi float [ %i.aqr, %bb.jn ], [ %i.aqz, %bb.jq ], [ %i.aqu, %bb.jo ], [ 0.000000e+00, %bb.jp ]
  %i.ara = add nuw nsw i32 %.2540.fr.i, %i.dp
  %i.arb = add nsw i32 %i.ahz, -2
  %i.arc = add nsw i32 %i.aia, -2
  %i.ard = add nsw i32 %i.ahz, -1
  %i.are = add nsw i32 %i.aia, -1
  %i.arf = add nuw nsw i32 %.2536.i, %i.dp
  %i.arg = sub nsw i32 %.2536.i, %i.dp
  %i.arh = sub nsw i32 %.2540.fr.i, %i.dp
  %i.ari = sext i32 %i.arg to i64
  %i.arj = zext nneg i32 %i.are to i64
  %i.ark = zext nneg i32 %i.arf to i64
  %sext.i = zext nneg i32 %i.arc to i64
  %i.arl = mul i64 %.pre1981, %i.aif
  %.sink.idx.i682.i = select i1 %i.aio, i64 0, i64 %i.arl
  %gep995.i = getelementptr i8, ptr %invariant.gep974.i, i64 %.sink.idx.i682.i
  %i.arm = insertelement <2 x float> poison, float %.sroa.13.0.i, i64 1
  %i.arn = insertelement <2 x float> poison, float %.sroa.23.0.i, i64 1
  br label %.lr.ph999.i

.preheader914.loopexit.i:                         ; preds = %._crit_edge1000.i
  %i.aro = extractelement <2 x float> %i.bhg, i64 1 ; 3 uses
  %i.arp = fmul float %i.aro, %i.aro
  %i.arq = call float @llvm.fmuladd.f32(float %.sroa.01047.4.i, float %.sroa.01047.4.i, float %i.arp)
  %sqrt911.i = call float @llvm.sqrt.f32(float %i.arq)
  %i.arr = fadd float %sqrt911.i, f0x1E3CE508
  %i.ars = fadd float %.sroa.01047.4.i, %i.aro
  %i.art = shufflevector <2 x float> %i.bhg, <2 x float> %i.bhh, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aru = shufflevector <2 x float> %i.bhf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.arv = shufflevector <4 x float> %i.art, <4 x float> %i.aru, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.arw = insertelement <4 x float> %i.arv, float %i.ars, i64 3
  %i.arx = insertelement <4 x float> poison, float %.sroa.0.4.i, i64 0
  %i.ary = insertelement <4 x float> %i.arx, float %.sroa.6.4.i, i64 1
  %i.arz = insertelement <4 x float> %i.ary, float %.sroa.9.4.i, i64 2
  %i.asa = insertelement <4 x float> %i.arz, float %i.arr, i64 3
  %i.asb = fdiv <4 x float> %i.arw, %i.asa        ; 3 uses
  %shift = shufflevector <4 x float> %i.asb, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %i.asb
  %i.asc = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.asd = fpext float %i.asc to double
  %i.ase = fadd double %i.asd, 5.000000e-01
  %i.asf = insertelement <2 x double> poison, double %i.ase, i64 0
  %i.asg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.asf)
  %i.ash = call i32 @llvm.smax.i32(i32 %i.asg, i32 0)
  %i.asi = call i32 @llvm.umin.i32(i32 %i.ash, i32 255)
  %i.asj = trunc nuw i32 %i.asi to i8
  %i.ask = load i32, ptr %i.agx, align 4, !tbaa !148
  %i.asl = icmp slt i32 %i.ask, 2
  %i.asm = load ptr, ptr %i.agy, align 8, !tbaa !149
  %i.asn = load i64, ptr %i.agz, align 8
  %i.aso = mul i64 %i.asn, %i.air
  %.sink.idx.i722.i = select i1 %i.asl, i64 0, i64 %i.aso
  %.sink.i723.i = getelementptr inbounds nuw i8, ptr %i.asm, i64 %.sink.idx.i722.i
  %i.asp = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.i, i64 %i.aix
  store i8 %i.asj, ptr %i.asp, align 1, !tbaa !21
  %i.asq = load i32, ptr %i.agx, align 4, !tbaa !148
  %i.asr = icmp slt i32 %i.asq, 2
  %i.ass = load ptr, ptr %i.agy, align 8, !tbaa !149
  %i.ast = load i64, ptr %i.agz, align 8
  %i.asu = mul i64 %i.ast, %i.air
  %.sink.idx.i722.1.i = select i1 %i.asr, i64 0, i64 %i.asu
  %.sink.i723.1.i = getelementptr inbounds nuw i8, ptr %i.ass, i64 %.sink.idx.i722.1.i
  %i.asv = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.1.i, i64 %i.aix
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 1
  %i.asx = shufflevector <2 x float> %i.bhh, <2 x float> %i.bhf, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.asy = fadd <2 x float> %i.bhi, %i.asx
  %i.asz = fmul <2 x float> %i.asx, %i.asx
  %i.ata = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhi, <2 x float> %i.bhi, <2 x float> %i.asz)
  %i.atb = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ata)
  %i.atc = fadd <2 x float> %i.atb, splat (float f0x1E3CE508)
  %i.atd = fdiv <2 x float> %i.asy, %i.atc
  %i.ate = shufflevector <4 x float> %i.asb, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.atf = fadd <2 x float> %i.atd, %i.ate
  %i.atg = fpext <2 x float> %i.atf to <2 x double>
  %i.ath = fadd <2 x double> %i.atg, splat (double 5.000000e-01) ; 2 uses
  %i.ati = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ath)
  %i.atj = call i32 @llvm.smax.i32(i32 %i.ati, i32 0)
  %i.atk = call i32 @llvm.umin.i32(i32 %i.atj, i32 255)
  %i.atl = trunc nuw i32 %i.atk to i8
  store i8 %i.atl, ptr %i.asw, align 1, !tbaa !21
  %i.atm = shufflevector <2 x double> %i.ath, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.atn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.atm)
  %i.ato = call i32 @llvm.smax.i32(i32 %i.atn, i32 0)
  %i.atp = call i32 @llvm.umin.i32(i32 %i.ato, i32 255)
  %i.atq = trunc nuw i32 %i.atp to i8
  %i.atr = load i32, ptr %i.agx, align 4, !tbaa !148
  %i.ats = icmp slt i32 %i.atr, 2
  %i.att = load ptr, ptr %i.agy, align 8, !tbaa !149
  %i.atu = load i64, ptr %i.agz, align 8
  %i.atv = mul i64 %i.atu, %i.air
  %.sink.idx.i722.2.i = select i1 %i.ats, i64 0, i64 %i.atv
  %.sink.i723.2.i = getelementptr inbounds nuw i8, ptr %i.att, i64 %.sink.idx.i722.2.i
  %i.atw = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.2.i, i64 %i.aix
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 2
  store i8 %i.atq, ptr %i.atx, align 1, !tbaa !21
  %i.aty = load i32, ptr %i.ago, align 4, !tbaa !148
  %i.atz = icmp slt i32 %i.aty, 2
  %i.aua = load ptr, ptr %i.agp, align 8, !tbaa !149
  %i.aub = load i64, ptr %i.agq, align 8
  %i.auc = mul i64 %i.aub, %i.aif
  %.sink.idx.i724.i = select i1 %i.atz, i64 0, i64 %i.auc
  %.sink.i725.i = getelementptr inbounds nuw i8, ptr %i.aua, i64 %.sink.idx.i724.i
  %i.aud = getelementptr inbounds nuw i8, ptr %.sink.i725.i, i64 %i.aih
  store i8 1, ptr %i.aud, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store float %i.amr, ptr %16, align 4, !tbaa !50
  store i32 %.2540.fr.i, ptr %i.aha, align 4, !tbaa !169
  store i32 %.2536.i, ptr %i.ahb, align 4, !tbaa !170
  %i.aue = load i32, ptr %i.ahd, align 8, !tbaa !162
  store i32 %i.aue, ptr %i.ahc, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.afp, ptr noundef nonnull align 4 dereferenceable(16) %16)
          to label %.noexc365 unwind label %.loopexit

.noexc365:                                        ; preds = %.preheader914.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.auf = load i32, ptr %i.ahd, align 8, !tbaa !162
  %i.aug = add nsw i32 %i.auf, 1
  store i32 %i.aug, ptr %i.ahd, align 8, !tbaa !162
  br label %bb.ld

.lr.ph999.i:                                      ; preds = %._crit_edge1000.i, %bb.jr
  %.sroa.01047.1.i = phi float [ 0.000000e+00, %bb.jr ], [ %.sroa.01047.4.i, %._crit_edge1000.i ] ; 3 uses
  %.sroa.9.1.i = phi float [ f0x1E3CE508, %bb.jr ], [ %.sroa.9.4.i, %._crit_edge1000.i ] ; 3 uses
  %.sroa.6.1.i = phi float [ f0x1E3CE508, %bb.jr ], [ %.sroa.6.4.i, %._crit_edge1000.i ] ; 3 uses
  %.sroa.0.1.i = phi float [ f0x1E3CE508, %bb.jr ], [ %.sroa.0.4.i, %._crit_edge1000.i ] ; 3 uses
  %.05321007.i = phi i32 [ %i.arh, %bb.jr ], [ %i.auy, %._crit_edge1000.i ] ; 10 uses
  %i.auh = phi <2 x float> [ zeroinitializer, %bb.jr ], [ %i.bhf, %._crit_edge1000.i ] ; 3 uses
  %i.aui = phi <2 x float> [ zeroinitializer, %bb.jr ], [ %i.bhg, %._crit_edge1000.i ] ; 3 uses
  %i.auj = phi <2 x float> [ zeroinitializer, %bb.jr ], [ %i.bhh, %._crit_edge1000.i ] ; 3 uses
  %i.auk = phi <2 x float> [ zeroinitializer, %bb.jr ], [ %i.bhi, %._crit_edge1000.i ] ; 3 uses
  %i.aul = add nsw i32 %.05321007.i, -1           ; 3 uses
  %i.aum = icmp eq i32 %.05321007.i, 1
  %i.aun = zext i1 %i.aum to i32
  %i.auo = add nuw nsw i32 %i.aul, %i.aun         ; 2 uses
  %i.aup = icmp eq i32 %.05321007.i, %i.arb
  %.neg566.i = sext i1 %i.aup to i32              ; 2 uses
  %i.auq = add i32 %i.aul, %.neg566.i
  %i.aur = icmp sgt i32 %.05321007.i, 0
  %i.aus = zext nneg i32 %.05321007.i to i64      ; 2 uses
  %i.aut = sub nsw i32 %.05321007.i, %.2540.fr.i  ; 2 uses
  %i.auu = mul nsw i32 %i.aut, %i.aut
  %i.auv = sub nsw i32 %.2540.fr.i, %.05321007.i
  %i.auw = sitofp i32 %i.auv to float             ; 8 uses
  %i.aux = fmul nnan float %i.auw, %i.auw
  %i.auy = add i32 %.05321007.i, 1                ; 3 uses
  %i.auz = zext nneg i32 %i.auy to i64
  %i.ava = sext i32 %i.aul to i64                 ; 2 uses
  %i.avb = sext i32 %i.auo to i64                 ; 9 uses
  %i.avc = add i32 %.05321007.i, %.neg566.i
  %i.avd = sext i32 %i.avc to i64                 ; 3 uses
  %i.ave = add nsw i32 %i.auo, -1
  %i.avf = sext i32 %i.ave to i64                 ; 6 uses
  %i.avg = sext i32 %i.auq to i64                 ; 3 uses
  br i1 %i.aur, label %.lr.ph999.split.i, label %._crit_edge1000.i

.lr.ph999.split.i:                                ; preds = %.lr.ph999.i
  %i.avh = icmp slt i32 %.05321007.i, %i.ard
  %.fr1005.i = freeze i1 %i.avh
  br i1 %.fr1005.i, label %.lr.ph999.split.split.preheader.i, label %._crit_edge1000.i

.lr.ph999.split.split.preheader.i:                ; preds = %.lr.ph999.split.i
  %i.avi = mul i64 %i.amt, %i.aus
  %.sink.idx.i678.i = select i1 %i.aic, i64 0, i64 %i.avi
  %.sink.i679.i = getelementptr inbounds nuw i8, ptr %i.aid, i64 %.sink.idx.i678.i ; 2 uses
  %i.avj = mul i64 %i.amt, %i.auz
  %.sink.idx.i702.i = select i1 %i.aic, i64 0, i64 %i.avj
  %.sink.i703.i = getelementptr inbounds nuw i8, ptr %i.aid, i64 %.sink.idx.i702.i
  %i.avk = mul i64 %i.amt, %i.ava
  %.sink.idx.i704.i = select i1 %i.aic, i64 0, i64 %i.avk
  %invariant.gep1088.i = getelementptr i8, ptr %i.aid, i64 %.sink.idx.i704.i
  %i.avl = fmul float %.sroa.8.0.i, %i.auw
  %i.avm = fmul float %.sroa.18.0.i, %i.auw
  %i.avn = fmul float %.sroa.28.0.i, %i.auw
  %i.avo = mul i64 %.pre1981, %i.aus
  %.sink.idx.i680.i = select i1 %i.aio, i64 0, i64 %i.avo
  %.sink.i681.i = getelementptr inbounds nuw i8, ptr %i.aip, i64 %.sink.idx.i680.i
  %i.avp = insertelement <2 x float> poison, float %i.aux, i64 0
  %i.avq = insertelement <2 x float> %i.avp, float %i.avl, i64 1
  %i.avr = insertelement <2 x float> poison, float %i.avm, i64 1
  br label %.lr.ph999.split.split.i

.lr.ph999.split.split.i:                          ; preds = %.loopexit.i360, %.lr.ph999.split.split.preheader.i
  %.sroa.01047.2.i = phi float [ %.sroa.01047.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.01047.3.i, %.loopexit.i360 ] ; 4 uses
  %.sroa.9.2.i = phi float [ %.sroa.9.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.9.3.i, %.loopexit.i360 ] ; 4 uses
  %.sroa.6.2.i = phi float [ %.sroa.6.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.6.3.i, %.loopexit.i360 ] ; 4 uses
  %.sroa.0.2.i = phi float [ %.sroa.0.1.i, %.lr.ph999.split.split.preheader.i ], [ %.sroa.0.3.i, %.loopexit.i360 ] ; 4 uses
  %indvars.iv.i359 = phi i64 [ %i.ari, %.lr.ph999.split.split.preheader.i ], [ %indvars.iv.next.i361, %.loopexit.i360 ] ; 12 uses
  %i.avs = phi <2 x float> [ %i.auh, %.lr.ph999.split.split.preheader.i ], [ %i.bhb, %.loopexit.i360 ] ; 4 uses
  %i.avt = phi <2 x float> [ %i.aui, %.lr.ph999.split.split.preheader.i ], [ %i.bhc, %.loopexit.i360 ] ; 4 uses
  %i.avu = phi <2 x float> [ %i.auj, %.lr.ph999.split.split.preheader.i ], [ %i.bhd, %.loopexit.i360 ] ; 4 uses
  %i.avv = phi <2 x float> [ %i.auk, %.lr.ph999.split.split.preheader.i ], [ %i.bhe, %.loopexit.i360 ] ; 5 uses
  %i.avw = add nsw i64 %indvars.iv.i359, -1       ; 4 uses
  %i.avx = icmp eq i64 %indvars.iv.i359, 1
  %i.avy = zext i1 %i.avx to i64
  %i.avz = add nuw nsw i64 %i.avw, %i.avy         ; 21 uses
  %i.awa = icmp eq i64 %indvars.iv.i359, %sext.i
  %.neg568.i = sext i1 %i.awa to i32              ; 2 uses
  %i.awb = trunc nsw i64 %i.avw to i32
  %i.awc = add i32 %i.awb, %.neg568.i
  %i.awd = icmp sgt i64 %indvars.iv.i359, 0
  %i.awe = icmp slt i64 %indvars.iv.i359, %i.arj
  %or.cond1014.i = select i1 %i.awd, i1 %i.awe, i1 false
  br i1 %or.cond1014.i, label %bb.js, label %.loopexit.i360

bb.js:                                            ; preds = %.lr.ph999.split.split.i
  %i.awf = getelementptr inbounds nuw i8, ptr %.sink.i679.i, i64 %indvars.iv.i359 ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !21
  %.not569.i = icmp eq i8 %i.awg, 2
  br i1 %.not569.i, label %.loopexit.i360, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.awh = trunc nuw nsw i64 %indvars.iv.i359 to i32 ; 3 uses
  %i.awi = sub nsw i32 %i.awh, %.2536.i           ; 2 uses
  %i.awj = mul nsw i32 %i.awi, %i.awi
  %i.awk = add nuw nsw i32 %i.awj, %i.auu
  %.not570.i = icmp samesign ugt i32 %i.awk, %i.agw
  br i1 %.not570.i, label %.loopexit.i360, label %.preheader.i362

.preheader.i362:                                  ; preds = %bb.jt
  %i.awl = sub nsw i32 %.2536.i, %i.awh
  %i.awm = sitofp i32 %i.awl to float             ; 6 uses
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i681.i, i64 %indvars.iv.i359
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !46
  %i.awp = load float, ptr %gep995.i, align 4, !tbaa !46
  %i.awq = fsub float %i.awo, %i.awp
  %i.awr = call float @llvm.fabs.f32(float %i.awq)
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awf, i64 1
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !21
  %.not571.i = icmp eq i8 %i.awt, 2               ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.sink.i703.i, i64 %indvars.iv.i359
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !21
  %.not574.i = icmp eq i8 %i.awv, 2               ; 3 uses
  %i.aww = load i32, ptr %i.agx, align 4, !tbaa !148
  %i.awx = icmp slt i32 %i.aww, 2                 ; 22 uses
  %i.awy = load ptr, ptr %i.agy, align 8, !tbaa !149 ; 22 uses
  %i.awz = load i64, ptr %i.agz, align 8          ; 22 uses
  %i.axa = mul i64 %i.awz, %i.ava
  %.sink.idx.i720.i = select i1 %i.awx, i64 0, i64 %i.axa
  %.sink.i721.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i720.i
  %i.axb = getelementptr inbounds [3 x i8], ptr %.sink.i721.i, i64 %i.avw ; 3 uses
  %i.axc = getelementptr inbounds i8, ptr %.sink.i679.i, i64 %i.avw
  %i.axd = add nsw i32 %.neg568.i, %i.awh
  %i.axe = zext nneg i32 %i.axd to i64            ; 3 uses
  %i.axf = sext i32 %i.awc to i64                 ; 3 uses
  %gep1089.i = getelementptr i8, ptr %invariant.gep1088.i, i64 %indvars.iv.i359
  %i.axg = insertelement <2 x float> poison, float %i.awm, i64 0
  %i.axh = shufflevector <2 x float> %i.axg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axi = insertelement <2 x float> %i.axh, float %.sroa.01053.0.i, i64 1
  %i.axj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.axh, <2 x float> %i.axi, <2 x float> %i.avq) ; 2 uses
  %i.axk = extractelement <2 x float> %i.axj, i64 0
  %i.axl = fpext float %i.awr to double
  %i.axm = fpext float %i.axk to double           ; 2 uses
  %sqrt.i = call nnan double @llvm.sqrt.f64(double %i.axm)
  %i.axn = fadd double %i.axl, 1.000000e+00
  %i.axo = fmul double %sqrt.i, %i.axm
  %i.axp = insertelement <2 x double> poison, double %i.axo, i64 0
  %i.axq = insertelement <2 x double> %i.axp, double %i.axn, i64 1
  %i.axr = fdiv <2 x double> splat (double 1.000000e+00), %i.axq
  %i.axs = fptrunc <2 x double> %i.axr to <2 x float> ; 2 uses
  %shift2145 = shufflevector <2 x float> %i.axs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2146 = fmul <2 x float> %shift2145, %i.axs
  %i.axt = extractelement <2 x float> %foldExtExtBinop2146, i64 0 ; 3 uses
  %i.axu = extractelement <2 x float> %i.axj, i64 1 ; 2 uses
  %i.axv = call float @llvm.fabs.f32(float %i.axu)
  %i.axw = fpext float %i.axv to double
  %i.axx = fcmp ole double %i.axw, 1.000000e-02
  %spec.store.select.i = select i1 %i.axx, float f0x358637BD, float %i.axu
  %i.axy = fmul float %spec.store.select.i, %i.axt
  %i.axz = call float @llvm.fabs.f32(float %i.axy) ; 3 uses
  %i.aya = load i8, ptr %i.axc, align 1, !tbaa !21
  %.not572.i = icmp eq i8 %i.aya, 2               ; 2 uses
  br i1 %.not571.i, label %bb.jx, label %bb.ju

bb.ju:                                            ; preds = %.preheader.i362
  %i.ayb = mul i64 %i.awz, %i.avb
  %.sink.idx.i692.i = select i1 %i.awx, i64 0, i64 %i.ayb
  %.sink.i693.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i692.i ; 2 uses
  %i.ayc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.i, i64 %i.axe
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !21
  %i.aye = zext i8 %i.ayd to i32                  ; 2 uses
  %i.ayf = getelementptr [3 x i8], ptr %.sink.i693.i, i64 %i.avz ; 2 uses
  br i1 %.not572.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.ayg = getelementptr i8, ptr %i.ayf, i64 -3
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !21
  %i.ayi = zext i8 %i.ayh to i32
  %i.ayj = sub nsw i32 %i.aye, %i.ayi
  %i.ayk = sitofp i32 %i.ayj to float
  %i.ayl = fmul nnan float %i.ayk, 2.000000e+00
  br label %bb.jz

bb.jw:                                            ; preds = %bb.ju
  %i.aym = load i8, ptr %i.ayf, align 1, !tbaa !21
  %i.ayn = zext i8 %i.aym to i32
  %i.ayo = sub nsw i32 %i.aye, %i.ayn
  %i.ayp = sitofp i32 %i.ayo to float
  br label %bb.jz

bb.jx:                                            ; preds = %.preheader.i362
  br i1 %.not572.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ayq = mul i64 %i.awz, %i.avb
  %.sink.idx.i698.i = select i1 %i.awx, i64 0, i64 %i.ayq
  %.sink.i699.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i698.i ; 2 uses
  %i.ayr = getelementptr inbounds [3 x i8], ptr %.sink.i699.i, i64 %i.axf
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !21
  %i.ayt = zext i8 %i.ays to i32
  %i.ayu = getelementptr [3 x i8], ptr %.sink.i699.i, i64 %i.avz
  %i.ayv = getelementptr i8, ptr %i.ayu, i64 -3
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !21
  %i.ayx = zext i8 %i.ayw to i32
  %i.ayy = sub nsw i32 %i.ayt, %i.ayx
  %i.ayz = sitofp i32 %i.ayy to float
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx, %bb.jw, %bb.jv
  %.not572.2.i = phi i1 [ false, %bb.jv ], [ false, %bb.jy ], [ true, %bb.jw ], [ true, %bb.jx ] ; 4 uses
  %.sroa.0871.0.i = phi float [ %i.ayl, %bb.jv ], [ %i.ayz, %bb.jy ], [ %i.ayp, %bb.jw ], [ 0.000000e+00, %bb.jx ]
  %i.aza = load i8, ptr %gep1089.i, align 1, !tbaa !21
  %.not575.i = icmp eq i8 %i.aza, 2               ; 2 uses
  br i1 %.not574.i, label %bb.kd, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.azb = mul i64 %i.awz, %i.avd
  %.sink.idx.i710.i = select i1 %i.awx, i64 0, i64 %i.azb
  %.sink.i711.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i710.i
  %i.azc = getelementptr inbounds [3 x i8], ptr %.sink.i711.i, i64 %i.avz
  %i.azd = load i8, ptr %i.azc, align 1, !tbaa !21
  %i.aze = zext i8 %i.azd to i32                  ; 2 uses
  br i1 %.not575.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.azf = mul i64 %i.awz, %i.avf
  %.sink.idx.i708.i = select i1 %i.awx, i64 0, i64 %i.azf
  %.sink.i709.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i708.i
  %i.azg = getelementptr inbounds [3 x i8], ptr %.sink.i709.i, i64 %i.avz
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !21
  %i.azi = zext i8 %i.azh to i32
  %i.azj = sub nsw i32 %i.aze, %i.azi
  %i.azk = sitofp i32 %i.azj to float
  %i.azl = fmul nnan float %i.azk, 2.000000e+00
  br label %bb.kf

bb.kc:                                            ; preds = %bb.ka
  %i.azm = mul i64 %i.awz, %i.avb
  %.sink.idx.i712.i = select i1 %i.awx, i64 0, i64 %i.azm
  %.sink.i713.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i712.i
  %i.azn = getelementptr inbounds [3 x i8], ptr %.sink.i713.i, i64 %i.avz
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !21
  %i.azp = zext i8 %i.azo to i32
  %i.azq = sub nsw i32 %i.aze, %i.azp
  %i.azr = sitofp i32 %i.azq to float
  br label %bb.kf

bb.kd:                                            ; preds = %bb.jz
  br i1 %.not575.i, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.azs = mul i64 %i.awz, %i.avg
  %.sink.idx.i716.i = select i1 %i.awx, i64 0, i64 %i.azs
  %.sink.i717.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i716.i
  %i.azt = getelementptr inbounds [3 x i8], ptr %.sink.i717.i, i64 %i.avz
  %i.azu = load i8, ptr %i.azt, align 1, !tbaa !21
  %i.azv = zext i8 %i.azu to i32
  %i.azw = mul i64 %i.awz, %i.avf
  %.sink.idx.i718.i = select i1 %i.awx, i64 0, i64 %i.azw
  %.sink.i719.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.sink.idx.i718.i
  %i.azx = getelementptr inbounds [3 x i8], ptr %.sink.i719.i, i64 %i.avz
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !21
  %i.azz = zext i8 %i.azy to i32
  %i.baa = sub nsw i32 %i.azv, %i.azz
  %i.bab = sitofp i32 %i.baa to float
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.kc, %bb.kb
  %.not575.2.i = phi i1 [ false, %bb.kb ], [ false, %bb.ke ], [ true, %bb.kc ], [ true, %bb.kd ] ; 4 uses
  %.sroa.8872.0.i = phi float [ %i.azl, %bb.kb ], [ %i.bab, %bb.ke ], [ %i.azr, %bb.kc ], [ 0.000000e+00, %bb.kd ]
  %i.bac = load i8, ptr %i.axb, align 1, !tbaa !21
  %i.bad = uitofp i8 %i.bac to float
  %i.bae = fmul float %.sroa.0871.0.i, %i.awm
  %i.baf = fneg float %i.axz                      ; 2 uses
  %i.bag = fmul float %.sroa.8872.0.i, %i.auw
  %i.bah = insertelement <2 x float> poison, float %i.axz, i64 0
  %i.bai = insertelement <2 x float> %i.bah, float %i.baf, i64 1
  %i.baj = insertelement <2 x float> poison, float %i.bad, i64 0
  %i.bak = insertelement <2 x float> %i.baj, float %i.bag, i64 1
  %i.bal = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bai, <2 x float> %i.bak, <2 x float> %i.avt)
  %i.bam = fadd float %.sroa.0.2.i, %i.axz
  %i.ban = insertelement <2 x float> poison, float %i.baf, i64 0
  %i.bao = insertelement <2 x float> %i.ban, float %i.awm, i64 1
  %i.bap = insertelement <2 x float> %i.arm, float %i.bae, i64 0
  %i.baq = insertelement <2 x float> %i.avr, float %.sroa.01047.2.i, i64 0
  %i.bar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bao, <2 x float> %i.bap, <2 x float> %i.baq) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
bb.mk:                                            ; preds = %bb.mj
  %i.bly = fadd double %i.blg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i

bb.ml:                                            ; preds = %bb.mj
  %i.blz = fadd double %i.bli, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i: ; preds = %bb.ml, %bb.mk, %bb.mi, %bb.mh, %bb.mg
  %.not31.i776.i = phi i1 [ true, %bb.ml ], [ true, %bb.mi ], [ false, %bb.mk ], [ %i.blw, %bb.mh ], [ false, %bb.mg ] ; 2 uses
  %.0.i765.i = phi double [ %i.blz, %bb.ml ], [ %i.blx, %bb.mi ], [ %i.bly, %bb.mk ], [ %i.blv, %bb.mh ], [ %i.blp, %bb.mg ]
  %i.bma = fptrunc double %.0.i765.i to float     ; 2 uses
  %i.bmb = fcmp ogt float %i.bkh, %i.blf
  %i.bmc = select i1 %i.bmb, double %i.blg, double %i.bki ; 2 uses
  %i.bmd = load i8, ptr %i.bkm, align 1, !tbaa !21
  %.not.i773.i = icmp eq i8 %i.bmd, 2
  br i1 %.not.i773.i, label %bb.mr, label %bb.mm

bb.mm:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i
  br i1 %.not31.i776.i, label %bb.mq, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bme = fsub double %i.bki, %i.blg             ; 3 uses
  %i.bmf = call double @llvm.fabs.f64(double %i.bme)
  %i.bmg = fcmp ult double %i.bmf, 1.000000e+00
  br i1 %i.bmg, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bmh = fadd double %i.bmc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mp:                                            ; preds = %bb.mn
  %i.bmi = fadd double %i.bki, %i.blg
  %i.bmj = fneg double %i.bme
  %i.bmk = call double @llvm.fmuladd.f64(double %i.bmj, double %i.bme, double 2.000000e+00)
  %i.bml = call double @sqrt(double noundef %i.bmk) #20
  %i.bmm = fadd double %i.bmi, %i.bml
  %i.bmn = fmul double %i.bmm, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mq:                                            ; preds = %bb.mm
  %i.bmo = fadd double %i.bki, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mr:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i
  br i1 %.not31.i776.i, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bmp = fadd double %i.blg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

bb.mt:                                            ; preds = %bb.mr
  %i.bmq = fadd double %i.bmc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i: ; preds = %bb.mt, %bb.ms, %bb.mq, %bb.mp, %bb.mo
  %.0.i777.i = phi double [ %i.bmh, %bb.mo ], [ %i.bmn, %bb.mp ], [ %i.bmo, %bb.mq ], [ %i.bmp, %bb.ms ], [ %i.bmq, %bb.mt ]
  %i.bmr = fptrunc double %.0.i777.i to float     ; 2 uses
  %i.bms = fcmp ogt float %i.bkc, %i.blb
  %i.bmt = select i1 %i.bms, float %i.blb, float %i.bkc ; 2 uses
  %i.bmu = fcmp ogt float %i.bma, %i.bmr
  %i.bmv = select i1 %i.bmu, float %i.bmr, float %i.bma ; 2 uses
  %i.bmw = fcmp ogt float %i.bmt, %i.bmv
  %i.bmx = select i1 %i.bmw, float %i.bmv, float %i.bmt ; 2 uses
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i734.i, i64 %i.bin
  store float %i.bmx, ptr %i.bmy, align 4, !tbaa !46
  %i.bmz = sub nsw i32 %.5543.fr.i, %i.dp
  %i.bna = add nuw nsw i32 %.5543.fr.i, %i.dp
  %i.bnb = sub nsw i32 %.5.i, %i.dp
  %i.bnc = add nuw nsw i32 %.5.i, %i.dp
  %i.bnd = load i64, ptr %i.afx, align 8          ; 6 uses
  %i.bne = mul i64 %i.bnd, %i.bil
  %.sink.idx.i781.i = select i1 %i.bii, i64 0, i64 %i.bne
  %.sink.i782.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sink.idx.i781.i ; 2 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %.sink.i782.i, i64 %i.bld
  %i.bng = load i8, ptr %i.bnf, align 1, !tbaa !21
  %.not545.i = icmp eq i8 %i.bng, 2
  %i.bnh = getelementptr inbounds nuw i8, ptr %.sink.i782.i, i64 %i.bjd
  %i.bni = load i8, ptr %i.bnh, align 1, !tbaa !21
  %.not546.i = icmp eq i8 %i.bni, 2               ; 2 uses
  br i1 %.not545.i, label %bb.mx, label %bb.mu

bb.mu:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i
  %i.bnj = load i64, ptr %i.agc, align 8
  %i.bnk = mul i64 %i.bnj, %i.bil
  %.sink.idx.i789.i = select i1 %i.biu, i64 0, i64 %i.bnk
  %.sink.i790.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i789.i ; 3 uses
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i, i64 %i.bld
  %i.bnm = load float, ptr %i.bnl, align 4, !tbaa !46 ; 2 uses
  br i1 %.not546.i, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i, i64 %i.bjd
  %i.bno = load float, ptr %i.bnn, align 4, !tbaa !46
  %i.bnp = fsub float %i.bnm, %i.bno
  %i.bnq = fmul float %i.bnp, 5.000000e-01
  br label %bb.mz

bb.mw:                                            ; preds = %bb.mu
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i, i64 %i.bin
  %i.bns = load float, ptr %i.bnr, align 4, !tbaa !46
  %i.bnt = fsub float %i.bnm, %i.bns
  br label %bb.mz

bb.mx:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i
  br i1 %.not546.i, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.bnu = load i64, ptr %i.agc, align 8
  %i.bnv = mul i64 %i.bnu, %i.bil
  %.sink.idx.i795.i = select i1 %i.biu, i64 0, i64 %i.bnv
  %.sink.i796.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i795.i ; 2 uses
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i, i64 %i.bin
  %i.bnx = load float, ptr %i.bnw, align 4, !tbaa !46
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i, i64 %i.bjd
  %i.bnz = load float, ptr %i.bny, align 4, !tbaa !46
  %i.boa = fsub float %i.bnx, %i.bnz
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx, %bb.mw, %bb.mv
  %.sroa.0865.0.i = phi float [ %i.bnq, %bb.mv ], [ %i.boa, %bb.my ], [ %i.bnt, %bb.mw ], [ 0.000000e+00, %bb.mx ]
  %i.bob = mul i64 %i.bnd, %i.bke
  %.sink.idx.i799.i = select i1 %i.bii, i64 0, i64 %i.bob
  %.sink.i800.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sink.idx.i799.i
  %i.boc = getelementptr inbounds nuw i8, ptr %.sink.i800.i, i64 %i.bin
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !21
  %.not548.i = icmp eq i8 %i.bod, 2
  %i.boe = mul i64 %i.bnd, %i.bix
  %.sink.idx.i811.i = select i1 %i.bii, i64 0, i64 %i.boe
  %.sink.i812.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sink.idx.i811.i
  %i.bof = getelementptr inbounds nuw i8, ptr %.sink.i812.i, i64 %i.bin
  %i.bog = load i8, ptr %i.bof, align 1, !tbaa !21
  %.not549.i = icmp eq i8 %i.bog, 2               ; 2 uses
  %.pre1979 = load i64, ptr %i.agc, align 8       ; 7 uses
  br i1 %.not548.i, label %bb.nd, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.boh = mul i64 %.pre1979, %i.bke
  %.sink.idx.i807.i = select i1 %i.biu, i64 0, i64 %i.boh
  %.sink.i808.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i807.i
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %.sink.i808.i, i64 %i.bin
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !46 ; 2 uses
  br i1 %.not549.i, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bok = mul i64 %.pre1979, %i.bix
  %.sink.idx.i805.i = select i1 %i.biu, i64 0, i64 %i.bok
  %.sink.i806.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i805.i
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %.sink.i806.i, i64 %i.bin
  %i.bom = load float, ptr %i.bol, align 4, !tbaa !46
  %i.bon = fsub float %i.boj, %i.bom
  %i.boo = fmul float %i.bon, 5.000000e-01
  br label %bb.nf

bb.nc:                                            ; preds = %bb.na
  %i.bop = mul i64 %.pre1979, %i.bil
  %.sink.idx.i809.i = select i1 %i.biu, i64 0, i64 %i.bop
  %.sink.i810.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i809.i
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i810.i, i64 %i.bin
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !46
  %i.bos = fsub float %i.boj, %i.bor
  br label %bb.nf

bb.nd:                                            ; preds = %bb.mz
  br i1 %.not549.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bot = mul i64 %.pre1979, %i.bil
  %.sink.idx.i813.i = select i1 %i.biu, i64 0, i64 %i.bot
  %.sink.i814.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i813.i
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %.sink.i814.i, i64 %i.bin
  %i.bov = load float, ptr %i.bou, align 4, !tbaa !46
  %i.bow = mul i64 %.pre1979, %i.bix
  %.sink.idx.i815.i = select i1 %i.biu, i64 0, i64 %i.bow
  %.sink.i816.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i815.i
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %.sink.i816.i, i64 %i.bin
  %i.boy = load float, ptr %i.box, align 4, !tbaa !46
  %i.boz = fsub float %i.bov, %i.boy
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd, %bb.nc, %bb.nb
  %.sroa.8866.0.i = phi float [ %i.boo, %bb.nb ], [ %i.boz, %bb.ne ], [ %i.bos, %bb.nc ], [ 0.000000e+00, %bb.nd ]
  %i.bpa = add nsw i32 %i.bif, -2
  %i.bpb = add nsw i32 %i.bif, -1
  %i.bpc = add nsw i32 %i.big, -2
  %i.bpd = add nsw i32 %i.big, -1
  %invariant.gep1086.i = getelementptr [4 x i8], ptr %i.biv, i64 %i.bin
  %i.bpe = mul i64 %.pre1979, %i.bil
  %.sink.idx.i821.i = select i1 %i.biu, i64 0, i64 %i.bpe
  %gep1087.i = getelementptr i8, ptr %invariant.gep1086.i, i64 %.sink.idx.i821.i
  br label %.lr.ph.i343

.lr.ph.i343:                                      ; preds = %._crit_edge.i344, %bb.nf
  %.0959.i = phi float [ f0x1E3CE508, %bb.nf ], [ %.us-phi933.i, %._crit_edge.i344 ] ; 3 uses
  %.0522956.i = phi float [ 0.000000e+00, %bb.nf ], [ %.us-phi.i, %._crit_edge.i344 ] ; 3 uses
  %.1533955.i = phi i32 [ %i.bmz, %bb.nf ], [ %i.bpy, %._crit_edge.i344 ] ; 10 uses
  %i.bpf = phi <2 x float> [ zeroinitializer, %bb.nf ], [ %i.bvu, %._crit_edge.i344 ] ; 3 uses
  %i.bpg = add nsw i32 %.1533955.i, -1            ; 3 uses
  %i.bph = icmp eq i32 %.1533955.i, 1
  %i.bpi = zext i1 %i.bph to i32
  %i.bpj = add nuw nsw i32 %i.bpg, %i.bpi         ; 2 uses
  %i.bpk = icmp eq i32 %.1533955.i, %i.bpa
  %.neg.i = sext i1 %i.bpk to i32                 ; 2 uses
  %i.bpl = add nsw i32 %i.bpg, %.neg.i
  %i.bpm = icmp sgt i32 %.1533955.i, 0
  %i.bpn = zext nneg i32 %.1533955.i to i64       ; 2 uses
  %i.bpo = mul i64 %i.bnd, %i.bpn
  %.sink.idx.i817.i = select i1 %i.bii, i64 0, i64 %i.bpo
  %.sink.i818.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sink.idx.i817.i ; 2 uses
  %i.bpp = sub nsw i32 %.1533955.i, %.5543.fr.i   ; 2 uses
  %i.bpq = mul nsw i32 %i.bpp, %i.bpp
  %i.bpr = sub nsw i32 %.5543.fr.i, %.1533955.i
  %i.bps = sitofp i32 %i.bpr to float             ; 2 uses
  %i.bpt = insertelement <2 x float> poison, float %i.bps, i64 0 ; 2 uses
  %i.bpu = insertelement <2 x float> %i.bpt, float %.sroa.8866.0.i, i64 1
  %i.bpv = shufflevector <2 x float> %i.bpt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpw = fmul <2 x float> %i.bpu, %i.bpv
  %i.bpx = sext i32 %i.bpj to i64                 ; 3 uses
  %i.bpy = add i32 %.1533955.i, 1                 ; 3 uses
  %i.bpz = zext nneg i32 %i.bpy to i64
  %i.bqa = mul i64 %i.bnd, %i.bpz
  %.sink.idx.i841.i = select i1 %i.bii, i64 0, i64 %i.bqa
  %.sink.i842.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sink.idx.i841.i
  %i.bqb = zext nneg i32 %i.bpg to i64            ; 2 uses
  %i.bqc = mul i64 %i.bnd, %i.bqb
  %.sink.idx.i843.i = select i1 %i.bii, i64 0, i64 %i.bqc
  %.sink.i844.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.sink.idx.i843.i
  %i.bqd = add i32 %.1533955.i, %.neg.i
  %i.bqe = sext i32 %i.bqd to i64
  %i.bqf = add nsw i32 %i.bpj, -1
  %i.bqg = sext i32 %i.bqf to i64                 ; 2 uses
  %i.bqh = sext i32 %i.bpl to i64
  br i1 %i.bpm, label %.lr.ph.split.i, label %._crit_edge.i344

.lr.ph.split.i:                                   ; preds = %.lr.ph.i343
  %i.bqi = icmp slt i32 %.1533955.i, %i.bpb
  %.fr953.i = freeze i1 %i.bqi
  br i1 %.fr953.i, label %.lr.ph.split.split.i.preheader, label %._crit_edge.i344

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.split.i
  %i.bqj = mul i64 %.pre1979, %i.bpn
  %.sink.idx.i819.i = select i1 %i.biu, i64 0, i64 %i.bqj
  %.sink.i820.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 %.sink.idx.i819.i
  %i.bqk = insertelement <2 x float> poison, float %i.bps, i64 1
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.split.i.preheader, %bb.nv
  %.1927.i = phi float [ %.2.i, %bb.nv ], [ %.0959.i, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %.1523924.i = phi float [ %.2524.i, %bb.nv ], [ %.0522956.i, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %.1531922.i = phi i32 [ %i.bvt, %bb.nv ], [ %i.bnb, %.lr.ph.split.split.i.preheader ] ; 11 uses
  %i.bql = phi <2 x float> [ %i.bvs, %bb.nv ], [ %i.bpf, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %i.bqm = add nsw i32 %.1531922.i, -1            ; 3 uses
  %i.bqn = icmp eq i32 %.1531922.i, 1
  %i.bqo = zext i1 %i.bqn to i32
  %i.bqp = add nuw nsw i32 %i.bqm, %i.bqo         ; 4 uses
  %i.bqq = icmp eq i32 %.1531922.i, %i.bpc
  %.neg553.i = sext i1 %i.bqq to i32              ; 2 uses
  %i.bqr = add nsw i32 %i.bqm, %.neg553.i
  %i.bqs = icmp sgt i32 %.1531922.i, 0
  %i.bqt = icmp slt i32 %.1531922.i, %i.bpd
  %or.cond1015.i = select i1 %i.bqs, i1 %i.bqt, i1 false
  br i1 %or.cond1015.i, label %bb.ng, label %bb.nv

bb.ng:                                            ; preds = %.lr.ph.split.split.i
  %i.bqu = zext nneg i32 %.1531922.i to i64       ; 4 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %.sink.i818.i, i64 %i.bqu ; 2 uses
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !21
  %.not554.i = icmp eq i8 %i.bqw, 2
  br i1 %.not554.i, label %bb.nv, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bqx = sub nsw i32 %.1531922.i, %.5.i         ; 2 uses
  %i.bqy = mul nsw i32 %i.bqx, %i.bqx
  %i.bqz = add nuw nsw i32 %i.bqy, %i.bpq
  %.not555.i = icmp samesign ugt i32 %i.bqz, %i.agd
  br i1 %.not555.i, label %bb.nv, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.bra = sub nsw i32 %.5.i, %.1531922.i
  %i.brb = sitofp i32 %i.bra to float             ; 2 uses
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i820.i, i64 %i.bqu
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !46
  %i.bre = load float, ptr %gep1087.i, align 4, !tbaa !46
  %i.brf = fsub float %i.brd, %i.bre
  %i.brg = insertelement <2 x float> poison, float %i.brb, i64 0
  %i.brh = shufflevector <2 x float> %i.brg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bri = insertelement <2 x float> %i.brh, float %.sroa.0865.0.i, i64 1
  %i.brj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brh, <2 x float> %i.bri, <2 x float> %i.bpw) ; 3 uses
  %i.brk = extractelement <2 x float> %i.brj, i64 0 ; 2 uses
  %sqrt912.i = call nnan float @llvm.sqrt.f32(float %i.brk)
  %i.brl = fmul float %i.brk, %sqrt912.i
  %i.brm = fdiv float 1.000000e+00, %i.brl
  %i.brn = extractelement <2 x float> %i.brj, i64 1
  %i.bro = insertelement <2 x float> %i.brj, float %i.brf, i64 0
  %i.brp = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bro)
  %i.brq = fpext <2 x float> %i.brp to <2 x double> ; 2 uses
  %i.brr = extractelement <2 x double> %i.brq, i64 0
  %i.brs = fadd double %i.brr, 1.000000e+00
  %i.brt = fdiv double 1.000000e+00, %i.brs
  %i.bru = fptrunc double %i.brt to float
  %i.brv = extractelement <2 x double> %i.brq, i64 1
  %i.brw = fcmp ole double %i.brv, 1.000000e-02
  %spec.store.select8.i = select i1 %i.brw, float f0x358637BD, float %i.brn
  %i.brx = fmul float %i.brm, %i.bru
  %i.bry = fmul float %spec.store.select8.i, %i.brx
  %i.brz = call float @llvm.fabs.f32(float %i.bry) ; 3 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bqv, i64 1
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !21
  %.not556.i = icmp eq i8 %i.bsb, 2
  %i.bsc = zext nneg i32 %i.bqm to i64            ; 2 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %.sink.i818.i, i64 %i.bsc
  %i.bse = load i8, ptr %i.bsd, align 1, !tbaa !21
  %.not557.i = icmp eq i8 %i.bse, 2               ; 2 uses
  br i1 %.not556.i, label %bb.nm, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bsf = add nsw i32 %.1531922.i, %.neg553.i
  %i.bsg = load i32, ptr %i.age, align 4, !tbaa !148 ; 3 uses
  %i.bsh = icmp slt i32 %i.bsg, 2
  %i.bsi = load ptr, ptr %i.agf, align 8, !tbaa !149
  %i.bsj = load i64, ptr %i.agg, align 8
  %i.bsk = mul i64 %i.bsj, %i.bpx
  %.sink.idx.i831.i = select i1 %i.bsh, i64 0, i64 %i.bsk
  %.sink.i832.i = getelementptr inbounds nuw i8, ptr %i.bsi, i64 %.sink.idx.i831.i ; 2 uses
  %i.bsl = zext nneg i32 %i.bsf to i64
  %i.bsm = getelementptr inbounds nuw i8, ptr %.sink.i832.i, i64 %i.bsl
  %i.bsn = load i8, ptr %i.bsm, align 1, !tbaa !21
  %i.bso = zext i8 %i.bsn to i32                  ; 2 uses
  %i.bsp = sext i32 %i.bqp to i64
  %i.bsq = getelementptr i8, ptr %.sink.i832.i, i64 %i.bsp ; 2 uses
  br i1 %.not557.i, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.bsr = getelementptr i8, ptr %i.bsq, i64 -1
  %i.bss = load i8, ptr %i.bsr, align 1, !tbaa !21
  %i.bst = zext i8 %i.bss to i32
  %i.bsu = sub nsw i32 %i.bso, %i.bst
  %i.bsv = sitofp i32 %i.bsu to float
  %i.bsw = fmul nnan float %i.bsv, 2.000000e+00
  br label %bb.no

bb.nl:                                            ; preds = %bb.nj
  %i.bsx = load i8, ptr %i.bsq, align 1, !tbaa !21
  %i.bsy = zext i8 %i.bsx to i32
  %i.bsz = sub nsw i32 %i.bso, %i.bsy
  %i.bta = sitofp i32 %i.bsz to float
  br label %bb.no

bb.nm:                                            ; preds = %bb.ni
  %.pre1055.i.pre = load i32, ptr %i.age, align 4, !tbaa !148 ; 3 uses
  br i1 %.not557.i, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.btb = icmp slt i32 %.pre1055.i.pre, 2
  %i.btc = load ptr, ptr %i.agf, align 8, !tbaa !149
  %i.btd = load i64, ptr %i.agg, align 8
  %i.bte = mul i64 %i.btd, %i.bpx
  %.sink.idx.i837.i = select i1 %i.btb, i64 0, i64 %i.bte
  %.sink.i838.i = getelementptr inbounds nuw i8, ptr %i.btc, i64 %.sink.idx.i837.i ; 2 uses
  %i.btf = sext i32 %i.bqr to i64
  %i.btg = getelementptr inbounds i8, ptr %.sink.i838.i, i64 %i.btf
  %i.bth = load i8, ptr %i.btg, align 1, !tbaa !21
  %i.bti = zext i8 %i.bth to i32
  %i.btj = sext i32 %i.bqp to i64
  %i.btk = getelementptr i8, ptr %.sink.i838.i, i64 %i.btj
  %i.btl = getelementptr i8, ptr %i.btk, i64 -1
  %i.btm = load i8, ptr %i.btl, align 1, !tbaa !21
  %i.btn = zext i8 %i.btm to i32
  %i.bto = sub nsw i32 %i.bti, %i.btn
  %i.btp = sitofp i32 %i.bto to float
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.nm, %bb.nl, %bb.nk
  %.pre1055.i = phi i32 [ %i.bsg, %bb.nk ], [ %.pre1055.i.pre, %bb.nn ], [ %i.bsg, %bb.nl ], [ %.pre1055.i.pre, %bb.nm ] ; 3 uses
  %.sroa.0867.0.i = phi float [ %i.bsw, %bb.nk ], [ %i.btp, %bb.nn ], [ %i.bta, %bb.nl ], [ 0.000000e+00, %bb.nm ]
  %i.btq = getelementptr inbounds nuw i8, ptr %.sink.i842.i, i64 %i.bqu
  %i.btr = load i8, ptr %i.btq, align 1, !tbaa !21
  %.not559.i = icmp eq i8 %i.btr, 2
  %i.bts = getelementptr inbounds nuw i8, ptr %.sink.i844.i, i64 %i.bqu
  %i.btt = load i8, ptr %i.bts, align 1, !tbaa !21
  %.not560.i = icmp eq i8 %i.btt, 2               ; 2 uses
  br i1 %.not559.i, label %bb.ns, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.btu = icmp slt i32 %.pre1055.i, 2            ; 3 uses
  %i.btv = load ptr, ptr %i.agf, align 8, !tbaa !149 ; 5 uses
  %i.btw = load i64, ptr %i.agg, align 8          ; 5 uses
  %i.btx = mul i64 %i.btw, %i.bqe
  %.sink.idx.i849.i = select i1 %i.btu, i64 0, i64 %i.btx
  %.sink.i850.i = getelementptr inbounds nuw i8, ptr %i.btv, i64 %.sink.idx.i849.i
  %i.bty = sext i32 %i.bqp to i64                 ; 3 uses
  %i.btz = getelementptr inbounds i8, ptr %.sink.i850.i, i64 %i.bty
  %i.bua = load i8, ptr %i.btz, align 1, !tbaa !21
  %i.bub = zext i8 %i.bua to i32                  ; 2 uses
  br i1 %.not560.i, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.buc = mul i64 %i.btw, %i.bqg
  %.sink.idx.i847.i = select i1 %i.btu, i64 0, i64 %i.buc
  %.sink.i848.i = getelementptr inbounds nuw i8, ptr %i.btv, i64 %.sink.idx.i847.i
  %i.bud = getelementptr inbounds i8, ptr %.sink.i848.i, i64 %i.bty
end_hunk_1
begin_hunk_2_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

bb.qo:                                            ; preds = %bb.qm
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %.sink.i651.2.i561, i64 %i.bzt
  %i.chp = load float, ptr %i.cho, align 4, !tbaa !46
  %i.chq = fsub float %i.chj, %i.chp
  br label %bb.qr

bb.qp:                                            ; preds = %bb.ql
  br i1 %.not578.2.i548, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.chr = load i64, ptr %i.byh, align 8
  %i.chs = mul i64 %i.chr, %i.bzr
  %.sink.idx.i656.2.i674 = select i1 %i.caa, i64 0, i64 %i.chs
  %.sink.i657.2.i675 = getelementptr inbounds nuw i8, ptr %i.cab, i64 %.sink.idx.i656.2.i674 ; 2 uses
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i675, i64 %i.bzt
  %i.chu = load float, ptr %i.cht, align 4, !tbaa !46
  %i.chv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i675, i64 %i.caj
  %i.chw = load float, ptr %i.chv, align 4, !tbaa !46
  %i.chx = fsub float %i.chu, %i.chw
  br label %bb.qr

bb.qr:                                            ; preds = %bb.qq, %bb.qp, %bb.qo, %bb.qn
  %.sroa.23.0.i562 = phi float [ %i.chn, %bb.qn ], [ %i.chx, %bb.qq ], [ %i.chq, %bb.qo ], [ 0.000000e+00, %bb.qp ]
  %.pre1978 = load i64, ptr %i.byh, align 8       ; 7 uses
  br i1 %.not580.i542, label %bb.qv, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.chy = mul i64 %.pre1978, %i.cbk
  %.sink.idx.i668.2.i563 = select i1 %i.caa, i64 0, i64 %i.chy
  %gep1001.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i668.2.i563
  %i.chz = load float, ptr %gep1001.2.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not581.2.i552, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.cia = mul i64 %.pre1978, %i.cad
  %.sink.idx.i666.2.i564 = select i1 %i.caa, i64 0, i64 %i.cia
  %gep999.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i666.2.i564
  %i.cib = load float, ptr %gep999.2.i, align 4, !tbaa !46
  %i.cic = fsub float %i.chz, %i.cib
  %i.cid = fmul float %i.cic, 5.000000e-01
  br label %bb.qx

bb.qu:                                            ; preds = %bb.qs
  %i.cie = mul i64 %.pre1978, %i.bzr
  %.sink.idx.i670.2.i671 = select i1 %i.caa, i64 0, i64 %i.cie
  %gep1003.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i670.2.i671
  %i.cif = load float, ptr %gep1003.2.i, align 4, !tbaa !46
  %i.cig = fsub float %i.chz, %i.cif
  br label %bb.qx

bb.qv:                                            ; preds = %bb.qr
  br i1 %.not581.2.i552, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.cih = mul i64 %.pre1978, %i.bzr
  %.sink.idx.i674.2.i672 = select i1 %i.caa, i64 0, i64 %i.cih
  %gep1007.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i674.2.i672
  %i.cii = load float, ptr %gep1007.2.i, align 4, !tbaa !46
  %i.cij = mul i64 %.pre1978, %i.cad
  %.sink.idx.i676.2.i673 = select i1 %i.caa, i64 0, i64 %i.cij
  %gep1009.2.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i676.2.i673
  %i.cik = load float, ptr %gep1009.2.i, align 4, !tbaa !46
  %i.cil = fsub float %i.cii, %i.cik
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv, %bb.qu, %bb.qt
  %.sroa.28.0.i565 = phi float [ %i.cid, %bb.qt ], [ %i.cil, %bb.qw ], [ %i.cig, %bb.qu ], [ 0.000000e+00, %bb.qv ]
  %i.cim = add nuw nsw i32 %.2540.fr.i503, %i.dp
  %i.cin = add nsw i32 %i.bzl, -2
  %i.cio = add nsw i32 %i.bzm, -2
  %i.cip = add nsw i32 %i.bzl, -1
  %i.ciq = add nsw i32 %i.bzm, -1
  %i.cir = add nuw nsw i32 %.2536.i502, %i.dp
  %i.cis = sub nsw i32 %.2536.i502, %i.dp
  %i.cit = sub nsw i32 %.2540.fr.i503, %i.dp
  %i.ciu = sext i32 %i.cis to i64
  %i.civ = zext nneg i32 %i.ciq to i64
  %i.ciw = zext nneg i32 %i.cir to i64
  %sext.i566 = zext nneg i32 %i.cio to i64
  %i.cix = mul i64 %.pre1978, %i.bzr
  %.sink.idx.i682.i610 = select i1 %i.caa, i64 0, i64 %i.cix
  %gep1017.i = getelementptr i8, ptr %invariant.gep996.i, i64 %.sink.idx.i682.i610
  %i.ciy = insertelement <2 x float> poison, float %.sroa.13.0.i556, i64 1
  %i.ciz = insertelement <2 x float> poison, float %.sroa.23.0.i562, i64 1
  br label %.lr.ph1021.i

.preheader914.loopexit.i575:                      ; preds = %._crit_edge1022.i
  %i.cja = extractelement <2 x float> %i.cys, i64 1 ; 3 uses
  %i.cjb = fmul float %i.cja, %i.cja
  %i.cjc = call float @llvm.fmuladd.f32(float %.sroa.01069.4.i, float %.sroa.01069.4.i, float %i.cjb)
  %sqrt911.i576 = call float @llvm.sqrt.f32(float %i.cjc)
  %i.cjd = fadd float %sqrt911.i576, f0x1E3CE508
  %i.cje = fadd float %.sroa.01069.4.i, %i.cja
  %i.cjf = shufflevector <2 x float> %i.cys, <2 x float> %i.cyt, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cjg = shufflevector <2 x float> %i.cyr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cjh = shufflevector <4 x float> %i.cjf, <4 x float> %i.cjg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cji = insertelement <4 x float> %i.cjh, float %i.cje, i64 3
  %i.cjj = insertelement <4 x float> poison, float %.sroa.0.4.i573, i64 0
  %i.cjk = insertelement <4 x float> %i.cjj, float %.sroa.6.4.i572, i64 1
  %i.cjl = insertelement <4 x float> %i.cjk, float %.sroa.9.4.i571, i64 2
  %i.cjm = insertelement <4 x float> %i.cjl, float %i.cjd, i64 3
  %i.cjn = fdiv <4 x float> %i.cji, %i.cjm        ; 3 uses
  %shift2148 = shufflevector <4 x float> %i.cjn, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2149 = fadd <4 x float> %shift2148, %i.cjn
  %i.cjo = extractelement <4 x float> %foldExtExtBinop2149, i64 0
  %i.cjp = fpext float %i.cjo to double
  %i.cjq = fadd double %i.cjp, 5.000000e-01
  %i.cjr = insertelement <2 x double> poison, double %i.cjq, i64 0
  %i.cjs = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cjr)
  %i.cjt = call i32 @llvm.smax.i32(i32 %i.cjs, i32 0)
  %i.cju = call i32 @llvm.umin.i32(i32 %i.cjt, i32 255)
  %i.cjv = trunc nuw i32 %i.cju to i8
  %i.cjw = load i32, ptr %i.byj, align 4, !tbaa !148
  %i.cjx = icmp slt i32 %i.cjw, 2
  %i.cjy = load ptr, ptr %i.byk, align 8, !tbaa !149
  %i.cjz = load i64, ptr %i.byl, align 8
  %i.cka = mul i64 %i.cjz, %i.cad
  %.sink.idx.i722.i577 = select i1 %i.cjx, i64 0, i64 %i.cka
  %.sink.i723.i578 = getelementptr inbounds nuw i8, ptr %i.cjy, i64 %.sink.idx.i722.i577
  %i.ckb = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.i578, i64 %i.caj
  store i8 %i.cjv, ptr %i.ckb, align 1, !tbaa !21
  %i.ckc = load i32, ptr %i.byj, align 4, !tbaa !148
  %i.ckd = icmp slt i32 %i.ckc, 2
  %i.cke = load ptr, ptr %i.byk, align 8, !tbaa !149
  %i.ckf = load i64, ptr %i.byl, align 8
  %i.ckg = mul i64 %i.ckf, %i.cad
  %.sink.idx.i722.1.i580 = select i1 %i.ckd, i64 0, i64 %i.ckg
  %.sink.i723.1.i581 = getelementptr inbounds nuw i8, ptr %i.cke, i64 %.sink.idx.i722.1.i580
  %i.ckh = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.1.i581, i64 %i.caj
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 1
  %i.ckj = shufflevector <2 x float> %i.cyt, <2 x float> %i.cyr, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ckk = fadd <2 x float> %i.cyu, %i.ckj
  %i.ckl = fmul <2 x float> %i.ckj, %i.ckj
  %i.ckm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cyu, <2 x float> %i.cyu, <2 x float> %i.ckl)
  %i.ckn = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ckm)
  %i.cko = fadd <2 x float> %i.ckn, splat (float f0x1E3CE508)
  %i.ckp = fdiv <2 x float> %i.ckk, %i.cko
  %i.ckq = shufflevector <4 x float> %i.cjn, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ckr = fadd <2 x float> %i.ckp, %i.ckq
  %i.cks = fpext <2 x float> %i.ckr to <2 x double>
  %i.ckt = fadd <2 x double> %i.cks, splat (double 5.000000e-01) ; 2 uses
  %i.cku = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ckt)
  %i.ckv = call i32 @llvm.smax.i32(i32 %i.cku, i32 0)
  %i.ckw = call i32 @llvm.umin.i32(i32 %i.ckv, i32 255)
  %i.ckx = trunc nuw i32 %i.ckw to i8
  store i8 %i.ckx, ptr %i.cki, align 1, !tbaa !21
  %i.cky = shufflevector <2 x double> %i.ckt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckz = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cky)
  %i.cla = call i32 @llvm.smax.i32(i32 %i.ckz, i32 0)
  %i.clb = call i32 @llvm.umin.i32(i32 %i.cla, i32 255)
  %i.clc = trunc nuw i32 %i.clb to i8
  %i.cld = load i32, ptr %i.byj, align 4, !tbaa !148
  %i.cle = icmp slt i32 %i.cld, 2
  %i.clf = load ptr, ptr %i.byk, align 8, !tbaa !149
  %i.clg = load i64, ptr %i.byl, align 8
  %i.clh = mul i64 %i.clg, %i.cad
  %.sink.idx.i722.2.i583 = select i1 %i.cle, i64 0, i64 %i.clh
  %.sink.i723.2.i584 = getelementptr inbounds nuw i8, ptr %i.clf, i64 %.sink.idx.i722.2.i583
  %i.cli = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.2.i584, i64 %i.caj
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 2
  store i8 %i.clc, ptr %i.clj, align 1, !tbaa !21
  %i.clk = load i32, ptr %i.bya, align 4, !tbaa !148
  %i.cll = icmp slt i32 %i.clk, 2
  %i.clm = load ptr, ptr %i.byb, align 8, !tbaa !149
  %i.cln = load i64, ptr %i.byc, align 8
  %i.clo = mul i64 %i.cln, %i.bzr
  %.sink.idx.i724.i585 = select i1 %i.cll, i64 0, i64 %i.clo
  %.sink.i725.i586 = getelementptr inbounds nuw i8, ptr %i.clm, i64 %.sink.idx.i724.i585
  %i.clp = getelementptr inbounds nuw i8, ptr %.sink.i725.i586, i64 %i.bzt
  store i8 1, ptr %i.clp, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store float %i.ced, ptr %14, align 4, !tbaa !50
  store i32 %.2540.fr.i503, ptr %i.bym, align 4, !tbaa !169
  store i32 %.2536.i502, ptr %i.byn, align 4, !tbaa !170
  %i.clq = load i32, ptr %i.byp, align 8, !tbaa !162
  store i32 %i.clq, ptr %i.byo, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.bxb, ptr noundef nonnull align 4 dereferenceable(16) %14)
          to label %.noexc689 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc689:                                        ; preds = %.preheader914.loopexit.i575
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.clr = load i32, ptr %i.byp, align 8, !tbaa !162
  %i.cls = add nsw i32 %i.clr, 1
  store i32 %i.cls, ptr %i.byp, align 8, !tbaa !162
  br label %bb.sj

.lr.ph1021.i:                                     ; preds = %._crit_edge1022.i, %bb.qx
  %.sroa.01069.1.i = phi float [ 0.000000e+00, %bb.qx ], [ %.sroa.01069.4.i, %._crit_edge1022.i ] ; 3 uses
  %.sroa.9.1.i567 = phi float [ f0x1E3CE508, %bb.qx ], [ %.sroa.9.4.i571, %._crit_edge1022.i ] ; 3 uses
  %.sroa.6.1.i568 = phi float [ f0x1E3CE508, %bb.qx ], [ %.sroa.6.4.i572, %._crit_edge1022.i ] ; 3 uses
  %.sroa.0.1.i569 = phi float [ f0x1E3CE508, %bb.qx ], [ %.sroa.0.4.i573, %._crit_edge1022.i ] ; 3 uses
  %.05321029.i = phi i32 [ %i.cit, %bb.qx ], [ %i.cmk, %._crit_edge1022.i ] ; 10 uses
  %i.clt = phi <2 x float> [ zeroinitializer, %bb.qx ], [ %i.cyr, %._crit_edge1022.i ] ; 3 uses
  %i.clu = phi <2 x float> [ zeroinitializer, %bb.qx ], [ %i.cys, %._crit_edge1022.i ] ; 3 uses
  %i.clv = phi <2 x float> [ zeroinitializer, %bb.qx ], [ %i.cyt, %._crit_edge1022.i ] ; 3 uses
  %i.clw = phi <2 x float> [ zeroinitializer, %bb.qx ], [ %i.cyu, %._crit_edge1022.i ] ; 3 uses
  %i.clx = add nsw i32 %.05321029.i, -1           ; 3 uses
  %i.cly = icmp eq i32 %.05321029.i, 1
  %i.clz = zext i1 %i.cly to i32
  %i.cma = add nuw nsw i32 %i.clx, %i.clz         ; 2 uses
  %i.cmb = icmp eq i32 %.05321029.i, %i.cin
  %.neg566.i570 = sext i1 %i.cmb to i32           ; 2 uses
  %i.cmc = add i32 %i.clx, %.neg566.i570
  %i.cmd = icmp sgt i32 %.05321029.i, 0
  %i.cme = zext nneg i32 %.05321029.i to i64      ; 2 uses
  %i.cmf = sub nsw i32 %.05321029.i, %.2540.fr.i503 ; 2 uses
  %i.cmg = mul nsw i32 %i.cmf, %i.cmf
  %i.cmh = sub nsw i32 %.2540.fr.i503, %.05321029.i
  %i.cmi = sitofp i32 %i.cmh to float             ; 8 uses
  %i.cmj = fmul nnan float %i.cmi, %i.cmi
  %i.cmk = add i32 %.05321029.i, 1                ; 3 uses
  %i.cml = zext nneg i32 %i.cmk to i64
  %i.cmm = sext i32 %i.clx to i64                 ; 2 uses
  %i.cmn = sext i32 %i.cma to i64                 ; 9 uses
  %i.cmo = add i32 %.05321029.i, %.neg566.i570
  %i.cmp = sext i32 %i.cmo to i64                 ; 3 uses
  %i.cmq = add nsw i32 %i.cma, -1
  %i.cmr = sext i32 %i.cmq to i64                 ; 6 uses
  %i.cms = sext i32 %i.cmc to i64                 ; 3 uses
  br i1 %i.cmd, label %.lr.ph1021.split.i, label %._crit_edge1022.i

.lr.ph1021.split.i:                               ; preds = %.lr.ph1021.i
  %i.cmt = icmp slt i32 %.05321029.i, %i.cip
  %.fr1027.i = freeze i1 %i.cmt
  br i1 %.fr1027.i, label %.lr.ph1021.split.split.preheader.i, label %._crit_edge1022.i

.lr.ph1021.split.split.preheader.i:               ; preds = %.lr.ph1021.split.i
  %i.cmu = mul i64 %i.cef, %i.cme
  %.sink.idx.i678.i587 = select i1 %i.bzo, i64 0, i64 %i.cmu
  %.sink.i679.i588 = getelementptr inbounds nuw i8, ptr %i.bzp, i64 %.sink.idx.i678.i587 ; 2 uses
  %i.cmv = mul i64 %i.cef, %i.cml
  %.sink.idx.i702.i589 = select i1 %i.bzo, i64 0, i64 %i.cmv
  %.sink.i703.i590 = getelementptr inbounds nuw i8, ptr %i.bzp, i64 %.sink.idx.i702.i589
  %i.cmw = mul i64 %i.cef, %i.cmm
  %.sink.idx.i704.i591 = select i1 %i.bzo, i64 0, i64 %i.cmw
  %invariant.gep.i592 = getelementptr i8, ptr %i.bzp, i64 %.sink.idx.i704.i591
  %i.cmx = fmul float %.sroa.8.0.i553, %i.cmi
  %i.cmy = fmul float %.sroa.18.0.i559, %i.cmi
  %i.cmz = fmul float %.sroa.28.0.i565, %i.cmi
  %i.cna = mul i64 %.pre1978, %i.cme
  %.sink.idx.i680.i608 = select i1 %i.caa, i64 0, i64 %i.cna
  %.sink.i681.i609 = getelementptr inbounds nuw i8, ptr %i.cab, i64 %.sink.idx.i680.i608
  %i.cnb = insertelement <2 x float> poison, float %i.cmj, i64 0
  %i.cnc = insertelement <2 x float> %i.cnb, float %i.cmx, i64 1
  %i.cnd = insertelement <2 x float> poison, float %i.cmy, i64 1
  br label %.lr.ph1021.split.split.i

.lr.ph1021.split.split.i:                         ; preds = %.loopexit.i598, %.lr.ph1021.split.split.preheader.i
  %.sroa.01069.2.i = phi float [ %.sroa.01069.1.i, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.01069.3.i, %.loopexit.i598 ] ; 4 uses
  %.sroa.9.2.i593 = phi float [ %.sroa.9.1.i567, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.9.3.i599, %.loopexit.i598 ] ; 4 uses
  %.sroa.6.2.i594 = phi float [ %.sroa.6.1.i568, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.6.3.i600, %.loopexit.i598 ] ; 4 uses
  %.sroa.0.2.i595 = phi float [ %.sroa.0.1.i569, %.lr.ph1021.split.split.preheader.i ], [ %.sroa.0.3.i601, %.loopexit.i598 ] ; 4 uses
  %indvars.iv.i596 = phi i64 [ %i.ciu, %.lr.ph1021.split.split.preheader.i ], [ %indvars.iv.next.i602, %.loopexit.i598 ] ; 12 uses
  %i.cne = phi <2 x float> [ %i.clt, %.lr.ph1021.split.split.preheader.i ], [ %i.cyn, %.loopexit.i598 ] ; 4 uses
  %i.cnf = phi <2 x float> [ %i.clu, %.lr.ph1021.split.split.preheader.i ], [ %i.cyo, %.loopexit.i598 ] ; 4 uses
  %i.cng = phi <2 x float> [ %i.clv, %.lr.ph1021.split.split.preheader.i ], [ %i.cyp, %.loopexit.i598 ] ; 4 uses
  %i.cnh = phi <2 x float> [ %i.clw, %.lr.ph1021.split.split.preheader.i ], [ %i.cyq, %.loopexit.i598 ] ; 5 uses
  %i.cni = add nsw i64 %indvars.iv.i596, -1       ; 4 uses
  %i.cnj = icmp eq i64 %indvars.iv.i596, 1
  %i.cnk = zext i1 %i.cnj to i64
  %i.cnl = add nuw nsw i64 %i.cni, %i.cnk         ; 21 uses
  %i.cnm = icmp eq i64 %indvars.iv.i596, %sext.i566
  %.neg568.i597 = sext i1 %i.cnm to i32           ; 2 uses
  %i.cnn = trunc nsw i64 %i.cni to i32
  %i.cno = add i32 %i.cnn, %.neg568.i597
  %i.cnp = icmp sgt i64 %indvars.iv.i596, 0
  %i.cnq = icmp slt i64 %indvars.iv.i596, %i.civ
  %or.cond1036.i = select i1 %i.cnp, i1 %i.cnq, i1 false
  br i1 %or.cond1036.i, label %bb.qy, label %.loopexit.i598

bb.qy:                                            ; preds = %.lr.ph1021.split.split.i
  %i.cnr = getelementptr inbounds nuw i8, ptr %.sink.i679.i588, i64 %indvars.iv.i596 ; 2 uses
  %i.cns = load i8, ptr %i.cnr, align 1, !tbaa !21
  %.not569.i604 = icmp eq i8 %i.cns, 2
  br i1 %.not569.i604, label %.loopexit.i598, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.cnt = trunc nuw nsw i64 %indvars.iv.i596 to i32 ; 3 uses
  %i.cnu = sub nsw i32 %i.cnt, %.2536.i502        ; 2 uses
  %i.cnv = mul nsw i32 %i.cnu, %i.cnu
  %i.cnw = add nuw nsw i32 %i.cnv, %i.cmg
  %.not570.i605 = icmp samesign ugt i32 %i.cnw, %i.byi
  br i1 %.not570.i605, label %.loopexit.i598, label %.preheader.i606

.preheader.i606:                                  ; preds = %bb.qz
  %i.cnx = sub nsw i32 %.2536.i502, %i.cnt
  %i.cny = sitofp i32 %i.cnx to float             ; 6 uses
  %i.cnz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i681.i609, i64 %indvars.iv.i596
  %i.coa = load float, ptr %i.cnz, align 4, !tbaa !46
  %i.cob = load float, ptr %gep1017.i, align 4, !tbaa !46
  %i.coc = fsub float %i.coa, %i.cob
  %i.cod = call float @llvm.fabs.f32(float %i.coc)
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cnr, i64 1
  %i.cof = load i8, ptr %i.coe, align 1, !tbaa !21
  %.not571.i611 = icmp eq i8 %i.cof, 2            ; 3 uses
  %i.cog = getelementptr inbounds nuw i8, ptr %.sink.i703.i590, i64 %indvars.iv.i596
  %i.coh = load i8, ptr %i.cog, align 1, !tbaa !21
  %.not574.i612 = icmp eq i8 %i.coh, 2            ; 3 uses
  %i.coi = load i32, ptr %i.byj, align 4, !tbaa !148
  %i.coj = icmp slt i32 %i.coi, 2                 ; 22 uses
  %i.cok = load ptr, ptr %i.byk, align 8, !tbaa !149 ; 22 uses
  %i.col = load i64, ptr %i.byl, align 8          ; 22 uses
  %i.com = mul i64 %i.col, %i.cmm
  %.sink.idx.i720.i613 = select i1 %i.coj, i64 0, i64 %i.com
  %.sink.i721.i614 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i720.i613
  %i.con = getelementptr inbounds [3 x i8], ptr %.sink.i721.i614, i64 %i.cni ; 3 uses
  %i.coo = getelementptr inbounds i8, ptr %.sink.i679.i588, i64 %i.cni
  %i.cop = add nsw i32 %.neg568.i597, %i.cnt
  %i.coq = zext nneg i32 %i.cop to i64            ; 3 uses
  %i.cor = sext i32 %i.cno to i64                 ; 3 uses
  %gep1106.i = getelementptr i8, ptr %invariant.gep.i592, i64 %indvars.iv.i596
  %i.cos = insertelement <2 x float> poison, float %i.cny, i64 0
  %i.cot = shufflevector <2 x float> %i.cos, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cou = insertelement <2 x float> %i.cot, float %.sroa.01075.0.i, i64 1
  %i.cov = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cot, <2 x float> %i.cou, <2 x float> %i.cnc) ; 2 uses
  %i.cow = extractelement <2 x float> %i.cov, i64 0
  %i.cox = fpext float %i.cod to double
  %i.coy = fpext float %i.cow to double           ; 2 uses
  %sqrt.i607 = call nnan double @llvm.sqrt.f64(double %i.coy)
  %i.coz = fadd double %i.cox, 1.000000e+00
  %i.cpa = fmul double %sqrt.i607, %i.coy
  %i.cpb = insertelement <2 x double> poison, double %i.cpa, i64 0
  %i.cpc = insertelement <2 x double> %i.cpb, double %i.coz, i64 1
  %i.cpd = fdiv <2 x double> splat (double 1.000000e+00), %i.cpc
  %i.cpe = fptrunc <2 x double> %i.cpd to <2 x float> ; 2 uses
  %shift2151 = shufflevector <2 x float> %i.cpe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2152 = fmul <2 x float> %shift2151, %i.cpe
  %i.cpf = extractelement <2 x float> %foldExtExtBinop2152, i64 0 ; 3 uses
  %i.cpg = extractelement <2 x float> %i.cov, i64 1 ; 2 uses
  %i.cph = call float @llvm.fabs.f32(float %i.cpg)
  %i.cpi = fpext float %i.cph to double
  %i.cpj = fcmp ole double %i.cpi, 1.000000e-02
  %spec.store.select.i615 = select i1 %i.cpj, float f0x358637BD, float %i.cpg
  %i.cpk = fmul float %spec.store.select.i615, %i.cpf
  %i.cpl = call float @llvm.fabs.f32(float %i.cpk) ; 3 uses
  %i.cpm = load i8, ptr %i.coo, align 1, !tbaa !21
  %.not572.i616 = icmp eq i8 %i.cpm, 2            ; 2 uses
  br i1 %.not571.i611, label %bb.rd, label %bb.ra

bb.ra:                                            ; preds = %.preheader.i606
  %i.cpn = mul i64 %i.col, %i.cmn
  %.sink.idx.i692.i617 = select i1 %i.coj, i64 0, i64 %i.cpn
  %.sink.i693.i618 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i692.i617 ; 2 uses
  %i.cpo = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.i618, i64 %i.coq
  %i.cpp = load i8, ptr %i.cpo, align 1, !tbaa !21
  %i.cpq = zext i8 %i.cpp to i32                  ; 2 uses
  %i.cpr = getelementptr [3 x i8], ptr %.sink.i693.i618, i64 %i.cnl ; 2 uses
  br i1 %.not572.i616, label %bb.rc, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.cps = getelementptr i8, ptr %i.cpr, i64 -3
  %i.cpt = load i8, ptr %i.cps, align 1, !tbaa !21
  %i.cpu = zext i8 %i.cpt to i32
  %i.cpv = sub nsw i32 %i.cpq, %i.cpu
  %i.cpw = sitofp i32 %i.cpv to float
  %i.cpx = fmul nnan float %i.cpw, 2.000000e+00
  br label %bb.rf

bb.rc:                                            ; preds = %bb.ra
  %i.cpy = load i8, ptr %i.cpr, align 1, !tbaa !21
  %i.cpz = zext i8 %i.cpy to i32
  %i.cqa = sub nsw i32 %i.cpq, %i.cpz
  %i.cqb = sitofp i32 %i.cqa to float
  br label %bb.rf

bb.rd:                                            ; preds = %.preheader.i606
  br i1 %.not572.i616, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.cqc = mul i64 %i.col, %i.cmn
  %.sink.idx.i698.i669 = select i1 %i.coj, i64 0, i64 %i.cqc
  %.sink.i699.i670 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i698.i669 ; 2 uses
  %i.cqd = getelementptr inbounds [3 x i8], ptr %.sink.i699.i670, i64 %i.cor
  %i.cqe = load i8, ptr %i.cqd, align 1, !tbaa !21
  %i.cqf = zext i8 %i.cqe to i32
  %i.cqg = getelementptr [3 x i8], ptr %.sink.i699.i670, i64 %i.cnl
  %i.cqh = getelementptr i8, ptr %i.cqg, i64 -3
  %i.cqi = load i8, ptr %i.cqh, align 1, !tbaa !21
  %i.cqj = zext i8 %i.cqi to i32
  %i.cqk = sub nsw i32 %i.cqf, %i.cqj
  %i.cql = sitofp i32 %i.cqk to float
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd, %bb.rc, %bb.rb
  %.not572.2.i619 = phi i1 [ false, %bb.rb ], [ false, %bb.re ], [ true, %bb.rc ], [ true, %bb.rd ] ; 4 uses
  %.sroa.0871.0.i620 = phi float [ %i.cpx, %bb.rb ], [ %i.cql, %bb.re ], [ %i.cqb, %bb.rc ], [ 0.000000e+00, %bb.rd ]
  %i.cqm = load i8, ptr %gep1106.i, align 1, !tbaa !21
  %.not575.i621 = icmp eq i8 %i.cqm, 2            ; 2 uses
  br i1 %.not574.i612, label %bb.rj, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.cqn = mul i64 %i.col, %i.cmp
  %.sink.idx.i710.i622 = select i1 %i.coj, i64 0, i64 %i.cqn
  %.sink.i711.i623 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i710.i622
  %i.cqo = getelementptr inbounds [3 x i8], ptr %.sink.i711.i623, i64 %i.cnl
  %i.cqp = load i8, ptr %i.cqo, align 1, !tbaa !21
  %i.cqq = zext i8 %i.cqp to i32                  ; 2 uses
  br i1 %.not575.i621, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.cqr = mul i64 %i.col, %i.cmr
  %.sink.idx.i708.i624 = select i1 %i.coj, i64 0, i64 %i.cqr
  %.sink.i709.i625 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i708.i624
  %i.cqs = getelementptr inbounds [3 x i8], ptr %.sink.i709.i625, i64 %i.cnl
  %i.cqt = load i8, ptr %i.cqs, align 1, !tbaa !21
  %i.cqu = zext i8 %i.cqt to i32
  %i.cqv = sub nsw i32 %i.cqq, %i.cqu
  %i.cqw = sitofp i32 %i.cqv to float
  %i.cqx = fmul nnan float %i.cqw, 2.000000e+00
  br label %bb.rl

bb.ri:                                            ; preds = %bb.rg
  %i.cqy = mul i64 %i.col, %i.cmn
  %.sink.idx.i712.i663 = select i1 %i.coj, i64 0, i64 %i.cqy
  %.sink.i713.i664 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i712.i663
  %i.cqz = getelementptr inbounds [3 x i8], ptr %.sink.i713.i664, i64 %i.cnl
  %i.cra = load i8, ptr %i.cqz, align 1, !tbaa !21
  %i.crb = zext i8 %i.cra to i32
  %i.crc = sub nsw i32 %i.cqq, %i.crb
  %i.crd = sitofp i32 %i.crc to float
  br label %bb.rl

bb.rj:                                            ; preds = %bb.rf
  br i1 %.not575.i621, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.cre = mul i64 %i.col, %i.cms
  %.sink.idx.i716.i665 = select i1 %i.coj, i64 0, i64 %i.cre
  %.sink.i717.i666 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i716.i665
  %i.crf = getelementptr inbounds [3 x i8], ptr %.sink.i717.i666, i64 %i.cnl
  %i.crg = load i8, ptr %i.crf, align 1, !tbaa !21
  %i.crh = zext i8 %i.crg to i32
  %i.cri = mul i64 %i.col, %i.cmr
  %.sink.idx.i718.i667 = select i1 %i.coj, i64 0, i64 %i.cri
  %.sink.i719.i668 = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.sink.idx.i718.i667
  %i.crj = getelementptr inbounds [3 x i8], ptr %.sink.i719.i668, i64 %i.cnl
  %i.crk = load i8, ptr %i.crj, align 1, !tbaa !21
  %i.crl = zext i8 %i.crk to i32
  %i.crm = sub nsw i32 %i.crh, %i.crl
  %i.crn = sitofp i32 %i.crm to float
  br label %bb.rl

bb.rl:                                            ; preds = %bb.rk, %bb.rj, %bb.ri, %bb.rh
  %.not575.2.i626 = phi i1 [ false, %bb.rh ], [ false, %bb.rk ], [ true, %bb.ri ], [ true, %bb.rj ] ; 4 uses
  %.sroa.8872.0.i627 = phi float [ %i.cqx, %bb.rh ], [ %i.crn, %bb.rk ], [ %i.crd, %bb.ri ], [ 0.000000e+00, %bb.rj ]
  %i.cro = load i8, ptr %i.con, align 1, !tbaa !21
  %i.crp = uitofp i8 %i.cro to float
  %i.crq = fmul float %.sroa.0871.0.i620, %i.cny
  %i.crr = fneg float %i.cpl                      ; 2 uses
  %i.crs = fmul float %.sroa.8872.0.i627, %i.cmi
  %i.crt = insertelement <2 x float> poison, float %i.cpl, i64 0
  %i.cru = insertelement <2 x float> %i.crt, float %i.crr, i64 1
  %i.crv = insertelement <2 x float> poison, float %i.crp, i64 0
  %i.crw = insertelement <2 x float> %i.crv, float %i.crs, i64 1
  %i.crx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cru, <2 x float> %i.crw, <2 x float> %i.cnf)
  %i.cry = fadd float %.sroa.0.2.i595, %i.cpl
  %i.crz = insertelement <2 x float> poison, float %i.crr, i64 0
  %i.csa = insertelement <2 x float> %i.crz, float %i.cny, i64 1
  %i.csb = insertelement <2 x float> %i.ciy, float %i.crq, i64 0
  %i.csc = insertelement <2 x float> %i.cnd, float %.sroa.01069.2.i, i64 0
  %i.csd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csa, <2 x float> %i.csb, <2 x float> %i.csc) ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  br i1 %.not31.i764.i402, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.ddk = fadd double %i.dcs, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i403

bb.tr:                                            ; preds = %bb.tp
  %i.ddl = fadd double %i.dcu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i403

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i403: ; preds = %bb.tr, %bb.tq, %bb.to, %bb.tn, %bb.tm
  %.not31.i776.i404 = phi i1 [ true, %bb.tr ], [ true, %bb.to ], [ false, %bb.tq ], [ %i.ddi, %bb.tn ], [ false, %bb.tm ] ; 2 uses
  %.0.i765.i405 = phi double [ %i.ddl, %bb.tr ], [ %i.ddj, %bb.to ], [ %i.ddk, %bb.tq ], [ %i.ddh, %bb.tn ], [ %i.ddb, %bb.tm ]
  %i.ddm = fptrunc double %.0.i765.i405 to float  ; 2 uses
  %i.ddn = fcmp ogt float %i.dbt, %i.dcr
  %i.ddo = select i1 %i.ddn, double %i.dcs, double %i.dbu ; 2 uses
  %i.ddp = load i8, ptr %i.dby, align 1, !tbaa !21
  %.not.i773.i406 = icmp eq i8 %i.ddp, 2
  br i1 %.not.i773.i406, label %bb.tx, label %bb.ts

bb.ts:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i403
  br i1 %.not31.i776.i404, label %bb.tw, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.ddq = fsub double %i.dbu, %i.dcs             ; 3 uses
  %i.ddr = call double @llvm.fabs.f64(double %i.ddq)
  %i.dds = fcmp ult double %i.ddr, 1.000000e+00
  br i1 %i.dds, label %bb.tv, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  %i.ddt = fadd double %i.ddo, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407

bb.tv:                                            ; preds = %bb.tt
  %i.ddu = fadd double %i.dbu, %i.dcs
  %i.ddv = fneg double %i.ddq
  %i.ddw = call double @llvm.fmuladd.f64(double %i.ddv, double %i.ddq, double 2.000000e+00)
  %i.ddx = call double @sqrt(double noundef %i.ddw) #20
  %i.ddy = fadd double %i.ddu, %i.ddx
  %i.ddz = fmul double %i.ddy, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407

bb.tw:                                            ; preds = %bb.ts
  %i.dea = fadd double %i.dbu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407

bb.tx:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i403
  br i1 %.not31.i776.i404, label %bb.tz, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.deb = fadd double %i.dcs, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407

bb.tz:                                            ; preds = %bb.tx
  %i.dec = fadd double %i.ddo, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407: ; preds = %bb.tz, %bb.ty, %bb.tw, %bb.tv, %bb.tu
  %.0.i777.i408 = phi double [ %i.ddt, %bb.tu ], [ %i.ddz, %bb.tv ], [ %i.dea, %bb.tw ], [ %i.deb, %bb.ty ], [ %i.dec, %bb.tz ]
  %i.ded = fptrunc double %.0.i777.i408 to float  ; 2 uses
  %i.dee = fcmp ogt float %i.dbo, %i.dcn
  %i.def = select i1 %i.dee, float %i.dcn, float %i.dbo ; 2 uses
  %i.deg = fcmp ogt float %i.ddm, %i.ded
  %i.deh = select i1 %i.deg, float %i.ded, float %i.ddm ; 2 uses
  %i.dei = fcmp ogt float %i.def, %i.deh
  %i.dej = select i1 %i.dei, float %i.deh, float %i.def ; 2 uses
  %i.dek = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i734.i386, i64 %i.czz
  store float %i.dej, ptr %i.dek, align 4, !tbaa !46
  %invariant.gep971.i = getelementptr i8, ptr %i.czv, i64 %i.czz ; 2 uses
  %invariant.gep975.i = getelementptr [4 x i8], ptr %i.dah, i64 %i.czz ; 6 uses
  %i.del = sub nsw i32 %.5543.fr.i373, %i.dp
  %i.dem = add nuw nsw i32 %.5543.fr.i373, %i.dp
  %i.den = add nsw i32 %i.czr, -2
  %i.deo = sub nsw i32 %.5.i372, %i.dp
  %i.dep = add nuw nsw i32 %.5.i372, %i.dp
  %i.deq = add nsw i32 %i.czs, -2
  %i.der = add nsw i32 %i.czr, -1
  %i.des = add nsw i32 %i.czs, -1
  %i.det = load i32, ptr %i.bxq, align 4, !tbaa !148
  %i.deu = icmp slt i32 %i.det, 2                 ; 9 uses
  %i.dev = load ptr, ptr %i.bxr, align 8, !tbaa !149 ; 9 uses
  %invariant.gep989.i = getelementptr [2 x i8], ptr %i.dev, i64 %i.dap
  %i.dew = load i64, ptr %i.bxj, align 8          ; 6 uses
  %i.dex = mul i64 %i.dew, %i.czx
  %.sink.idx.i781.i409 = select i1 %i.czu, i64 0, i64 %i.dex
  %.sink.i782.i410 = getelementptr inbounds nuw i8, ptr %i.czv, i64 %.sink.idx.i781.i409 ; 2 uses
  %i.dey = getelementptr inbounds nuw i8, ptr %.sink.i782.i410, i64 %i.dcp
  %i.dez = load i8, ptr %i.dey, align 1, !tbaa !21
  %.not545.i411 = icmp eq i8 %i.dez, 2
  %i.dfa = getelementptr inbounds nuw i8, ptr %.sink.i782.i410, i64 %i.dap
  %i.dfb = load i8, ptr %i.dfa, align 1, !tbaa !21
  %.not546.i412 = icmp eq i8 %i.dfb, 2            ; 2 uses
  br i1 %.not545.i411, label %bb.ud, label %bb.ua

bb.ua:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407
  %i.dfc = load i64, ptr %i.bxo, align 8
  %i.dfd = mul i64 %i.dfc, %i.czx
  %.sink.idx.i789.i413 = select i1 %i.dag, i64 0, i64 %i.dfd
  %.sink.i790.i414 = getelementptr inbounds nuw i8, ptr %i.dah, i64 %.sink.idx.i789.i413 ; 3 uses
  %i.dfe = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i414, i64 %i.dcp
  %i.dff = load float, ptr %i.dfe, align 4, !tbaa !46 ; 2 uses
  br i1 %.not546.i412, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.dfg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i414, i64 %i.dap
  %i.dfh = load float, ptr %i.dfg, align 4, !tbaa !46
  %i.dfi = fsub float %i.dff, %i.dfh
  %i.dfj = fmul float %i.dfi, 5.000000e-01
  br label %bb.uf

bb.uc:                                            ; preds = %bb.ua
  %i.dfk = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i414, i64 %i.czz
  %i.dfl = load float, ptr %i.dfk, align 4, !tbaa !46
  %i.dfm = fsub float %i.dff, %i.dfl
  br label %bb.uf

bb.ud:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i407
  br i1 %.not546.i412, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.dfn = load i64, ptr %i.bxo, align 8
  %i.dfo = mul i64 %i.dfn, %i.czx
  %.sink.idx.i795.i493 = select i1 %i.dag, i64 0, i64 %i.dfo
  %.sink.i796.i494 = getelementptr inbounds nuw i8, ptr %i.dah, i64 %.sink.idx.i795.i493 ; 2 uses
  %i.dfp = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i494, i64 %i.czz
  %i.dfq = load float, ptr %i.dfp, align 4, !tbaa !46
  %i.dfr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i494, i64 %i.dap
  %i.dfs = load float, ptr %i.dfr, align 4, !tbaa !46
  %i.dft = fsub float %i.dfq, %i.dfs
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.ud, %bb.uc, %bb.ub
  %.sroa.0865.0.i415 = phi float [ %i.dfj, %bb.ub ], [ %i.dft, %bb.ue ], [ %i.dfm, %bb.uc ], [ 0.000000e+00, %bb.ud ]
  %i.dfu = mul i64 %i.dew, %i.dbq
  %.sink.idx.i799.i416 = select i1 %i.czu, i64 0, i64 %i.dfu
  %gep972.i = getelementptr i8, ptr %invariant.gep971.i, i64 %.sink.idx.i799.i416
  %i.dfv = load i8, ptr %gep972.i, align 1, !tbaa !21
  %.not548.i417 = icmp eq i8 %i.dfv, 2
  %i.dfw = mul i64 %i.dew, %i.daj
  %.sink.idx.i811.i418 = select i1 %i.czu, i64 0, i64 %i.dfw
  %gep984.i = getelementptr i8, ptr %invariant.gep971.i, i64 %.sink.idx.i811.i418
  %i.dfx = load i8, ptr %gep984.i, align 1, !tbaa !21
  %.not549.i419 = icmp eq i8 %i.dfx, 2            ; 2 uses
  %.pre1976 = load i64, ptr %i.bxo, align 8       ; 7 uses
  br i1 %.not548.i417, label %bb.uj, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.dfy = mul i64 %.pre1976, %i.dbq
  %.sink.idx.i807.i420 = select i1 %i.dag, i64 0, i64 %i.dfy
  %gep980.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i807.i420
  %i.dfz = load float, ptr %gep980.i, align 4, !tbaa !46 ; 2 uses
  br i1 %.not549.i419, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.dga = mul i64 %.pre1976, %i.daj
  %.sink.idx.i805.i421 = select i1 %i.dag, i64 0, i64 %i.dga
  %gep978.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i805.i421
  %i.dgb = load float, ptr %gep978.i, align 4, !tbaa !46
  %i.dgc = fsub float %i.dfz, %i.dgb
  %i.dgd = fmul float %i.dgc, 5.000000e-01
  br label %bb.ul

bb.ui:                                            ; preds = %bb.ug
  %i.dge = mul i64 %.pre1976, %i.czx
  %.sink.idx.i809.i490 = select i1 %i.dag, i64 0, i64 %i.dge
  %gep982.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i809.i490
  %i.dgf = load float, ptr %gep982.i, align 4, !tbaa !46
  %i.dgg = fsub float %i.dfz, %i.dgf
  br label %bb.ul

bb.uj:                                            ; preds = %bb.uf
  br i1 %.not549.i419, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.dgh = mul i64 %.pre1976, %i.czx
  %.sink.idx.i813.i491 = select i1 %i.dag, i64 0, i64 %i.dgh
  %gep986.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i813.i491
  %i.dgi = load float, ptr %gep986.i, align 4, !tbaa !46
  %i.dgj = mul i64 %.pre1976, %i.daj
  %.sink.idx.i815.i492 = select i1 %i.dag, i64 0, i64 %i.dgj
  %gep988.i = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i815.i492
  %i.dgk = load float, ptr %gep988.i, align 4, !tbaa !46
  %i.dgl = fsub float %i.dgi, %i.dgk
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.uj, %bb.ui, %bb.uh
  %.sroa.8866.0.i422 = phi float [ %i.dgd, %bb.uh ], [ %i.dgl, %bb.uk ], [ %i.dgg, %bb.ui ], [ 0.000000e+00, %bb.uj ]
  %i.dgm = mul i64 %.pre1976, %i.czx
  %.sink.idx.i821.i465 = select i1 %i.dag, i64 0, i64 %i.dgm
  %gep.i466 = getelementptr i8, ptr %invariant.gep975.i, i64 %.sink.idx.i821.i465
  br label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %._crit_edge.i436, %bb.ul
  %.0959.i424 = phi float [ %.us-phi933.i440, %._crit_edge.i436 ], [ f0x1E3CE508, %bb.ul ] ; 3 uses
  %.0522956.i427 = phi float [ %.us-phi.i437, %._crit_edge.i436 ], [ 0.000000e+00, %bb.ul ] ; 3 uses
  %.1533955.i428 = phi i32 [ %i.dhg, %._crit_edge.i436 ], [ %i.del, %bb.ul ] ; 10 uses
  %i.dgn = phi <2 x float> [ %i.dmp, %._crit_edge.i436 ], [ zeroinitializer, %bb.ul ] ; 3 uses
  %i.dgo = add nsw i32 %.1533955.i428, -1         ; 3 uses
  %i.dgp = icmp eq i32 %.1533955.i428, 1
  %i.dgq = zext i1 %i.dgp to i32
  %i.dgr = add nuw nsw i32 %i.dgo, %i.dgq         ; 2 uses
  %i.dgs = icmp eq i32 %.1533955.i428, %i.den
  %.neg.i429 = sext i1 %i.dgs to i32              ; 2 uses
  %i.dgt = add nsw i32 %i.dgo, %.neg.i429
  %i.dgu = icmp sgt i32 %.1533955.i428, 0
  %i.dgv = zext nneg i32 %.1533955.i428 to i64    ; 2 uses
  %i.dgw = mul i64 %i.dew, %i.dgv
  %.sink.idx.i817.i430 = select i1 %i.czu, i64 0, i64 %i.dgw
  %.sink.i818.i431 = getelementptr inbounds nuw i8, ptr %i.czv, i64 %.sink.idx.i817.i430 ; 2 uses
  %i.dgx = sub nsw i32 %.1533955.i428, %.5543.fr.i373 ; 2 uses
  %i.dgy = mul nsw i32 %i.dgx, %i.dgx
  %i.dgz = sub nsw i32 %.5543.fr.i373, %.1533955.i428
  %i.dha = sitofp i32 %i.dgz to float             ; 2 uses
  %i.dhb = insertelement <2 x float> poison, float %i.dha, i64 0 ; 2 uses
  %i.dhc = insertelement <2 x float> %i.dhb, float %.sroa.8866.0.i422, i64 1
  %i.dhd = shufflevector <2 x float> %i.dhb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dhe = fmul <2 x float> %i.dhc, %i.dhd
  %i.dhf = sext i32 %i.dgr to i64                 ; 3 uses
  %i.dhg = add i32 %.1533955.i428, 1              ; 3 uses
  %i.dhh = zext nneg i32 %i.dhg to i64
  %i.dhi = mul i64 %i.dew, %i.dhh
  %.sink.idx.i841.i432 = select i1 %i.czu, i64 0, i64 %i.dhi
  %.sink.i842.i433 = getelementptr inbounds nuw i8, ptr %i.czv, i64 %.sink.idx.i841.i432
  %i.dhj = zext nneg i32 %i.dgo to i64            ; 2 uses
  %i.dhk = mul i64 %i.dew, %i.dhj
  %.sink.idx.i843.i434 = select i1 %i.czu, i64 0, i64 %i.dhk
  %.sink.i844.i435 = getelementptr inbounds nuw i8, ptr %i.czv, i64 %.sink.idx.i843.i434
  %i.dhl = add i32 %.1533955.i428, %.neg.i429
  %i.dhm = sext i32 %i.dhl to i64
  %i.dhn = add nsw i32 %i.dgr, -1
  %i.dho = sext i32 %i.dhn to i64                 ; 2 uses
  %i.dhp = sext i32 %i.dgt to i64
  br i1 %i.dgu, label %.lr.ph.split.i446, label %._crit_edge.i436

.lr.ph.split.i446:                                ; preds = %.lr.ph.i423
  %i.dhq = icmp slt i32 %.1533955.i428, %i.der
  %.fr953.i447 = freeze i1 %i.dhq
  br i1 %.fr953.i447, label %.lr.ph.split.split.i448.preheader, label %._crit_edge.i436

.lr.ph.split.split.i448.preheader:                ; preds = %.lr.ph.split.i446
  %i.dhr = mul i64 %.pre1976, %i.dgv
  %.sink.idx.i819.i463 = select i1 %i.dag, i64 0, i64 %i.dhr
  %.sink.i820.i464 = getelementptr inbounds nuw i8, ptr %i.dah, i64 %.sink.idx.i819.i463
  %i.dhs = insertelement <2 x float> poison, float %i.dha, i64 1
  br label %.lr.ph.split.split.i448

.lr.ph.split.split.i448:                          ; preds = %.lr.ph.split.split.i448.preheader, %bb.vb
  %.1927.i449 = phi float [ %.2.i458, %bb.vb ], [ %.0959.i424, %.lr.ph.split.split.i448.preheader ] ; 4 uses
  %.1523924.i452 = phi float [ %.2524.i455, %bb.vb ], [ %.0522956.i427, %.lr.ph.split.split.i448.preheader ] ; 4 uses
  %.1531922.i453 = phi i32 [ %i.dmo, %bb.vb ], [ %i.deo, %.lr.ph.split.split.i448.preheader ] ; 11 uses
  %i.dht = phi <2 x float> [ %i.dmn, %bb.vb ], [ %i.dgn, %.lr.ph.split.split.i448.preheader ] ; 4 uses
  %i.dhu = add nsw i32 %.1531922.i453, -1         ; 3 uses
  %i.dhv = icmp eq i32 %.1531922.i453, 1
  %i.dhw = zext i1 %i.dhv to i32
  %i.dhx = add nuw nsw i32 %i.dhu, %i.dhw         ; 4 uses
  %i.dhy = icmp eq i32 %.1531922.i453, %i.deq
  %.neg553.i454 = sext i1 %i.dhy to i32           ; 2 uses
  %i.dhz = add nsw i32 %i.dhu, %.neg553.i454
  %i.dia = icmp sgt i32 %.1531922.i453, 0
  %i.dib = icmp slt i32 %.1531922.i453, %i.des
  %or.cond1037.i = select i1 %i.dia, i1 %i.dib, i1 false
  br i1 %or.cond1037.i, label %bb.um, label %bb.vb

bb.um:                                            ; preds = %.lr.ph.split.split.i448
  %i.dic = zext nneg i32 %.1531922.i453 to i64    ; 4 uses
  %i.did = getelementptr inbounds nuw i8, ptr %.sink.i818.i431, i64 %i.dic ; 2 uses
  %i.die = load i8, ptr %i.did, align 1, !tbaa !21
  %.not554.i460 = icmp eq i8 %i.die, 2
  br i1 %.not554.i460, label %bb.vb, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.dif = sub nsw i32 %.1531922.i453, %.5.i372   ; 2 uses
  %i.dig = mul nsw i32 %i.dif, %i.dif
  %i.dih = add nuw nsw i32 %i.dig, %i.dgy
  %.not555.i461 = icmp samesign ugt i32 %i.dih, %i.bxp
  br i1 %.not555.i461, label %bb.vb, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.dii = sub nsw i32 %.5.i372, %.1531922.i453
  %i.dij = sitofp i32 %i.dii to float             ; 2 uses
  %i.dik = getelementptr inbounds nuw [4 x i8], ptr %.sink.i820.i464, i64 %i.dic
  %i.dil = load float, ptr %i.dik, align 4, !tbaa !46
  %i.dim = load float, ptr %gep.i466, align 4, !tbaa !46
  %i.din = fsub float %i.dil, %i.dim
  %i.dio = insertelement <2 x float> poison, float %i.dij, i64 0
  %i.dip = shufflevector <2 x float> %i.dio, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.diq = insertelement <2 x float> %i.dip, float %.sroa.0865.0.i415, i64 1
  %i.dir = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dip, <2 x float> %i.diq, <2 x float> %i.dhe) ; 3 uses
  %i.dis = extractelement <2 x float> %i.dir, i64 0 ; 2 uses
  %sqrt912.i462 = call nnan float @llvm.sqrt.f32(float %i.dis)
  %i.dit = fmul float %i.dis, %sqrt912.i462
  %i.diu = fdiv float 1.000000e+00, %i.dit
  %i.div = extractelement <2 x float> %i.dir, i64 1
  %i.diw = insertelement <2 x float> %i.dir, float %i.din, i64 0
  %i.dix = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.diw)
  %i.diy = fpext <2 x float> %i.dix to <2 x double> ; 2 uses
  %i.diz = extractelement <2 x double> %i.diy, i64 0
  %i.dja = fadd double %i.diz, 1.000000e+00
  %i.djb = fdiv double 1.000000e+00, %i.dja
  %i.djc = fptrunc double %i.djb to float
  %i.djd = extractelement <2 x double> %i.diy, i64 1
  %i.dje = fcmp ole double %i.djd, 1.000000e-02
  %spec.store.select8.i467 = select i1 %i.dje, float f0x358637BD, float %i.div
  %i.djf = fmul float %i.diu, %i.djc
  %i.djg = fmul float %spec.store.select8.i467, %i.djf
  %i.djh = call float @llvm.fabs.f32(float %i.djg) ; 3 uses
  %i.dji = getelementptr inbounds nuw i8, ptr %i.did, i64 1
  %i.djj = load i8, ptr %i.dji, align 1, !tbaa !21
  %.not556.i468 = icmp eq i8 %i.djj, 2
  %i.djk = zext nneg i32 %i.dhu to i64            ; 2 uses
  %i.djl = getelementptr inbounds nuw i8, ptr %.sink.i818.i431, i64 %i.djk
  %i.djm = load i8, ptr %i.djl, align 1, !tbaa !21
  %.not557.i469 = icmp eq i8 %i.djm, 2            ; 2 uses
  br i1 %.not556.i468, label %bb.us, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.djn = add nsw i32 %.1531922.i453, %.neg553.i454
  %i.djo = load i64, ptr %i.bxs, align 8          ; 3 uses
  %i.djp = mul i64 %i.djo, %i.dhf
  %i.djq = zext nneg i32 %i.djn to i64
  %i.djr = sext i32 %i.dhx to i64
  %.sink.idx.i831.i486 = select i1 %i.deu, i64 0, i64 %i.djp
  %.sink.i832.i487 = getelementptr inbounds nuw i8, ptr %i.dev, i64 %.sink.idx.i831.i486 ; 2 uses
  %i.djs = getelementptr inbounds nuw [2 x i8], ptr %.sink.i832.i487, i64 %i.djq
  %i.djt = load i16, ptr %i.djs, align 2, !tbaa !172
  %i.dju = zext i16 %i.djt to i32                 ; 2 uses
  %i.djv = getelementptr [2 x i8], ptr %.sink.i832.i487, i64 %i.djr ; 2 uses
  br i1 %.not557.i469, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.djw = getelementptr i8, ptr %i.djv, i64 -2
  %i.djx = load i16, ptr %i.djw, align 2, !tbaa !172
  %i.djy = zext i16 %i.djx to i32
  %i.djz = sub nsw i32 %i.dju, %i.djy
  %i.dka = sitofp i32 %i.djz to float
  %i.dkb = fmul nnan float %i.dka, 2.000000e+00
  br label %bb.uu

bb.ur:                                            ; preds = %bb.up
  %i.dkc = load i16, ptr %i.djv, align 2, !tbaa !172
  %i.dkd = zext i16 %i.dkc to i32
  %i.dke = sub nsw i32 %i.dju, %i.dkd
  %i.dkf = sitofp i32 %i.dke to float
  br label %bb.uu

bb.us:                                            ; preds = %bb.uo
  %.pre1077.i.pre = load i64, ptr %i.bxs, align 8 ; 3 uses
  br i1 %.not557.i469, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.dkg = mul i64 %.pre1077.i.pre, %i.dhf
  %.sink.idx.i837.i488 = select i1 %i.deu, i64 0, i64 %i.dkg
  %.sink.i838.i489 = getelementptr inbounds nuw i8, ptr %i.dev, i64 %.sink.idx.i837.i488 ; 2 uses
  %i.dkh = sext i32 %i.dhz to i64
  %i.dki = getelementptr inbounds [2 x i8], ptr %.sink.i838.i489, i64 %i.dkh
  %i.dkj = load i16, ptr %i.dki, align 2, !tbaa !172
  %i.dkk = zext i16 %i.dkj to i32
  %i.dkl = sext i32 %i.dhx to i64
  %i.dkm = getelementptr [2 x i8], ptr %.sink.i838.i489, i64 %i.dkl
  %i.dkn = getelementptr i8, ptr %i.dkm, i64 -2
  %i.dko = load i16, ptr %i.dkn, align 2, !tbaa !172
  %i.dkp = zext i16 %i.dko to i32
  %i.dkq = sub nsw i32 %i.dkk, %i.dkp
  %i.dkr = sitofp i32 %i.dkq to float
  br label %bb.uu

bb.uu:                                            ; preds = %bb.ut, %bb.us, %bb.ur, %bb.uq
  %.pre1077.i = phi i64 [ %i.djo, %bb.uq ], [ %.pre1077.i.pre, %bb.ut ], [ %i.djo, %bb.ur ], [ %.pre1077.i.pre, %bb.us ] ; 6 uses
  %.sroa.0867.0.i470 = phi float [ %i.dkb, %bb.uq ], [ %i.dkr, %bb.ut ], [ %i.dkf, %bb.ur ], [ 0.000000e+00, %bb.us ]
  %i.dks = getelementptr inbounds nuw i8, ptr %.sink.i842.i433, i64 %i.dic
  %i.dkt = load i8, ptr %i.dks, align 1, !tbaa !21
  %.not559.i471 = icmp eq i8 %i.dkt, 2
  %i.dku = getelementptr inbounds nuw i8, ptr %.sink.i844.i435, i64 %i.dic
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !21
  %.not560.i472 = icmp eq i8 %i.dkv, 2            ; 2 uses
  br i1 %.not559.i471, label %bb.uy, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.dkw = mul i64 %.pre1077.i, %i.dhm
  %i.dkx = sext i32 %i.dhx to i64                 ; 3 uses
  %.sink.idx.i849.i478 = select i1 %i.deu, i64 0, i64 %i.dkw
  %.sink.i850.i479 = getelementptr inbounds nuw i8, ptr %i.dev, i64 %.sink.idx.i849.i478
  %i.dky = getelementptr inbounds [2 x i8], ptr %.sink.i850.i479, i64 %i.dkx
  %i.dkz = load i16, ptr %i.dky, align 2, !tbaa !172
  %i.dla = zext i16 %i.dkz to i32                 ; 2 uses
  br i1 %.not560.i472, label %bb.ux, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.dlb = mul i64 %.pre1077.i, %i.dho
  %.sink.idx.i847.i473 = select i1 %i.deu, i64 0, i64 %i.dlb
  %.sink.i848.i474 = getelementptr inbounds nuw i8, ptr %i.dev, i64 %.sink.idx.i847.i473
  %i.dlc = getelementptr inbounds [2 x i8], ptr %.sink.i848.i474, i64 %i.dkx
  %i.dld = load i16, ptr %i.dlc, align 2, !tbaa !172
  %i.dle = zext i16 %i.dld to i32
  %i.dlf = sub nsw i32 %i.dla, %i.dle
  %i.dlg = sitofp i32 %i.dlf to float
  %i.dlh = fmul nnan float %i.dlg, 2.000000e+00
  br label %bb.va

bb.ux:                                            ; preds = %bb.uv
  %i.dli = mul i64 %.pre1077.i, %i.dhf
end_hunk_3
begin_hunk_4_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

bb.xu:                                            ; preds = %bb.xs
  %i.dyc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i651.2.i917, i64 %i.dqh
  %i.dyd = load float, ptr %i.dyc, align 4, !tbaa !46
  %i.dye = fsub float %i.dxx, %i.dyd
  br label %bb.xx

bb.xv:                                            ; preds = %bb.xr
  br i1 %.not578.2.i899, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.dyf = load i64, ptr %i.dov, align 8
  %i.dyg = mul i64 %i.dyf, %i.dqf
  %.sink.idx.i656.2.i1081 = select i1 %i.dqo, i64 0, i64 %i.dyg
  %.sink.i657.2.i1082 = getelementptr inbounds nuw i8, ptr %i.dqp, i64 %.sink.idx.i656.2.i1081 ; 2 uses
  %i.dyh = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i1082, i64 %i.dqh
  %i.dyi = load float, ptr %i.dyh, align 4, !tbaa !46
  %i.dyj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i657.2.i1082, i64 %i.dqx
  %i.dyk = load float, ptr %i.dyj, align 4, !tbaa !46
  %i.dyl = fsub float %i.dyi, %i.dyk
  br label %bb.xx

bb.xx:                                            ; preds = %bb.xw, %bb.xv, %bb.xu, %bb.xt
  %.sroa.23.0.i918 = phi float [ %i.dyb, %bb.xt ], [ %i.dyl, %bb.xw ], [ %i.dye, %bb.xu ], [ 0.000000e+00, %bb.xv ]
  %.pre1975 = load i64, ptr %i.dov, align 8       ; 7 uses
  br i1 %.not580.i891, label %bb.yb, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.dym = mul i64 %.pre1975, %i.dry
  %.sink.idx.i668.2.i919 = select i1 %i.dqo, i64 0, i64 %i.dym
  %gep1001.2.i920 = getelementptr i8, ptr %invariant.gep996.i893, i64 %.sink.idx.i668.2.i919
  %i.dyn = load float, ptr %gep1001.2.i920, align 4, !tbaa !46 ; 2 uses
  br i1 %.not581.2.i906, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.dyo = mul i64 %.pre1975, %i.dqr
  %.sink.idx.i666.2.i921 = select i1 %i.dqo, i64 0, i64 %i.dyo
  %gep999.2.i922 = getelementptr i8, ptr %invariant.gep996.i893, i64 %.sink.idx.i666.2.i921
  %i.dyp = load float, ptr %gep999.2.i922, align 4, !tbaa !46
  %i.dyq = fsub float %i.dyn, %i.dyp
  %i.dyr = fmul float %i.dyq, 5.000000e-01
  br label %bb.yd

bb.ya:                                            ; preds = %bb.xy
  %i.dys = mul i64 %.pre1975, %i.dqf
  %.sink.idx.i670.2.i1075 = select i1 %i.dqo, i64 0, i64 %i.dys
  %gep1003.2.i1076 = getelementptr i8, ptr %invariant.gep996.i893, i64 %.sink.idx.i670.2.i1075
  %i.dyt = load float, ptr %gep1003.2.i1076, align 4, !tbaa !46
  %i.dyu = fsub float %i.dyn, %i.dyt
  br label %bb.yd

bb.yb:                                            ; preds = %bb.xx
  br i1 %.not581.2.i906, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.dyv = mul i64 %.pre1975, %i.dqf
  %.sink.idx.i674.2.i1077 = select i1 %i.dqo, i64 0, i64 %i.dyv
  %gep1007.2.i1078 = getelementptr i8, ptr %invariant.gep996.i893, i64 %.sink.idx.i674.2.i1077
  %i.dyw = load float, ptr %gep1007.2.i1078, align 4, !tbaa !46
  %i.dyx = mul i64 %.pre1975, %i.dqr
  %.sink.idx.i676.2.i1079 = select i1 %i.dqo, i64 0, i64 %i.dyx
  %gep1009.2.i1080 = getelementptr i8, ptr %invariant.gep996.i893, i64 %.sink.idx.i676.2.i1079
  %i.dyy = load float, ptr %gep1009.2.i1080, align 4, !tbaa !46
  %i.dyz = fsub float %i.dyw, %i.dyy
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb, %bb.ya, %bb.xz
  %.sroa.28.0.i923 = phi float [ %i.dyr, %bb.xz ], [ %i.dyz, %bb.yc ], [ %i.dyu, %bb.ya ], [ 0.000000e+00, %bb.yb ]
  %i.dza = add nuw nsw i32 %.2540.fr.i851, %i.dp
  %i.dzb = add nsw i32 %i.dpz, -2
  %i.dzc = add nsw i32 %i.dqa, -2
  %i.dzd = add nsw i32 %i.dpz, -1
  %i.dze = add nsw i32 %i.dqa, -1
  %i.dzf = add nuw nsw i32 %.2536.i850, %i.dp
  %i.dzg = sub nsw i32 %.2536.i850, %i.dp
  %i.dzh = sub nsw i32 %.2540.fr.i851, %i.dp
  %i.dzi = sext i32 %i.dzg to i64
  %i.dzj = zext nneg i32 %i.dze to i64
  %i.dzk = zext nneg i32 %i.dzf to i64
  %sext.i924 = zext nneg i32 %i.dzc to i64
  %i.dzl = mul i64 %.pre1975, %i.dqf
  %.sink.idx.i682.i1012 = select i1 %i.dqo, i64 0, i64 %i.dzl
  %gep1017.i1013 = getelementptr i8, ptr %invariant.gep996.i893, i64 %.sink.idx.i682.i1012
  %i.dzm = insertelement <2 x float> poison, float %.sroa.13.0.i910, i64 1
  %i.dzn = insertelement <2 x float> poison, float %.sroa.23.0.i918, i64 1
  br label %.lr.ph1021.i925

.preheader914.loopexit.i954:                      ; preds = %._crit_edge1022.i940
  %i.dzo = extractelement <2 x float> %i.epg, i64 1 ; 3 uses
  %i.dzp = fmul float %i.dzo, %i.dzo
  %i.dzq = call float @llvm.fmuladd.f32(float %.sroa.01069.4.i941, float %.sroa.01069.4.i941, float %i.dzp)
  %sqrt911.i955 = call float @llvm.sqrt.f32(float %i.dzq)
  %i.dzr = fadd float %sqrt911.i955, f0x1E3CE508
  %i.dzs = fadd float %.sroa.01069.4.i941, %i.dzo
  %i.dzt = shufflevector <2 x float> %i.epg, <2 x float> %i.eph, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dzu = shufflevector <2 x float> %i.epf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dzv = shufflevector <4 x float> %i.dzt, <4 x float> %i.dzu, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dzw = insertelement <4 x float> %i.dzv, float %i.dzs, i64 3
  %i.dzx = insertelement <4 x float> poison, float %.sroa.0.4.i952, i64 0
  %i.dzy = insertelement <4 x float> %i.dzx, float %.sroa.6.4.i951, i64 1
  %i.dzz = insertelement <4 x float> %i.dzy, float %.sroa.9.4.i950, i64 2
  %i.eaa = insertelement <4 x float> %i.dzz, float %i.dzr, i64 3
  %i.eab = fdiv <4 x float> %i.dzw, %i.eaa        ; 3 uses
  %shift2154 = shufflevector <4 x float> %i.eab, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2155 = fadd <4 x float> %shift2154, %i.eab
  %i.eac = extractelement <4 x float> %foldExtExtBinop2155, i64 0
  %i.ead = fpext float %i.eac to double
  %i.eae = fadd double %i.ead, 5.000000e-01
  %i.eaf = insertelement <2 x double> poison, double %i.eae, i64 0
  %i.eag = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.eaf)
  %i.eah = call i32 @llvm.smax.i32(i32 %i.eag, i32 0)
  %i.eai = call i32 @llvm.umin.i32(i32 %i.eah, i32 255)
  %i.eaj = trunc nuw i32 %i.eai to i8
  %i.eak = load i32, ptr %i.dox, align 4, !tbaa !148
  %i.eal = icmp slt i32 %i.eak, 2
  %i.eam = load ptr, ptr %i.doy, align 8, !tbaa !149
  %i.ean = load i64, ptr %i.doz, align 8
  %i.eao = mul i64 %i.ean, %i.dqr
  %.sink.idx.i722.i956 = select i1 %i.eal, i64 0, i64 %i.eao
  %.sink.i723.i957 = getelementptr inbounds nuw i8, ptr %i.eam, i64 %.sink.idx.i722.i956
  %i.eap = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.i957, i64 %i.dqx
  store i8 %i.eaj, ptr %i.eap, align 1, !tbaa !21
  %i.eaq = load i32, ptr %i.dox, align 4, !tbaa !148
  %i.ear = icmp slt i32 %i.eaq, 2
  %i.eas = load ptr, ptr %i.doy, align 8, !tbaa !149
  %i.eat = load i64, ptr %i.doz, align 8
  %i.eau = mul i64 %i.eat, %i.dqr
  %.sink.idx.i722.1.i959 = select i1 %i.ear, i64 0, i64 %i.eau
  %.sink.i723.1.i960 = getelementptr inbounds nuw i8, ptr %i.eas, i64 %.sink.idx.i722.1.i959
  %i.eav = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.1.i960, i64 %i.dqx
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.eav, i64 1
  %i.eax = shufflevector <2 x float> %i.eph, <2 x float> %i.epf, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.eay = fadd <2 x float> %i.epi, %i.eax
  %i.eaz = fmul <2 x float> %i.eax, %i.eax
  %i.eba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.epi, <2 x float> %i.epi, <2 x float> %i.eaz)
  %i.ebb = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.eba)
  %i.ebc = fadd <2 x float> %i.ebb, splat (float f0x1E3CE508)
  %i.ebd = fdiv <2 x float> %i.eay, %i.ebc
  %i.ebe = shufflevector <4 x float> %i.eab, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ebf = fadd <2 x float> %i.ebd, %i.ebe
  %i.ebg = fpext <2 x float> %i.ebf to <2 x double>
  %i.ebh = fadd <2 x double> %i.ebg, splat (double 5.000000e-01) ; 2 uses
  %i.ebi = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ebh)
  %i.ebj = call i32 @llvm.smax.i32(i32 %i.ebi, i32 0)
  %i.ebk = call i32 @llvm.umin.i32(i32 %i.ebj, i32 255)
  %i.ebl = trunc nuw i32 %i.ebk to i8
  store i8 %i.ebl, ptr %i.eaw, align 1, !tbaa !21
  %i.ebm = shufflevector <2 x double> %i.ebh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ebn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ebm)
  %i.ebo = call i32 @llvm.smax.i32(i32 %i.ebn, i32 0)
  %i.ebp = call i32 @llvm.umin.i32(i32 %i.ebo, i32 255)
  %i.ebq = trunc nuw i32 %i.ebp to i8
  %i.ebr = load i32, ptr %i.dox, align 4, !tbaa !148
  %i.ebs = icmp slt i32 %i.ebr, 2
  %i.ebt = load ptr, ptr %i.doy, align 8, !tbaa !149
  %i.ebu = load i64, ptr %i.doz, align 8
  %i.ebv = mul i64 %i.ebu, %i.dqr
  %.sink.idx.i722.2.i962 = select i1 %i.ebs, i64 0, i64 %i.ebv
  %.sink.i723.2.i963 = getelementptr inbounds nuw i8, ptr %i.ebt, i64 %.sink.idx.i722.2.i962
  %i.ebw = getelementptr inbounds nuw [3 x i8], ptr %.sink.i723.2.i963, i64 %i.dqx
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.ebw, i64 2
  store i8 %i.ebq, ptr %i.ebx, align 1, !tbaa !21
  %i.eby = load i32, ptr %i.doo, align 4, !tbaa !148
  %i.ebz = icmp slt i32 %i.eby, 2
  %i.eca = load ptr, ptr %i.dop, align 8, !tbaa !149
  %i.ecb = load i64, ptr %i.doq, align 8
  %i.ecc = mul i64 %i.ecb, %i.dqf
  %.sink.idx.i724.i964 = select i1 %i.ebz, i64 0, i64 %i.ecc
  %.sink.i725.i965 = getelementptr inbounds nuw i8, ptr %i.eca, i64 %.sink.idx.i724.i964
  %i.ecd = getelementptr inbounds nuw i8, ptr %.sink.i725.i965, i64 %i.dqh
  store i8 1, ptr %i.ecd, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store float %i.dur, ptr %12, align 4, !tbaa !50
  store i32 %.2540.fr.i851, ptr %i.dpa, align 4, !tbaa !169
  store i32 %.2536.i850, ptr %i.dpb, align 4, !tbaa !170
  %i.ece = load i32, ptr %i.dpd, align 8, !tbaa !162
  store i32 %i.ece, ptr %i.dpc, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.dnp, ptr noundef nonnull align 4 dereferenceable(16) %12)
          to label %.noexc1103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1103:                                       ; preds = %.preheader914.loopexit.i954
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ecf = load i32, ptr %i.dpd, align 8, !tbaa !162
  %i.ecg = add nsw i32 %i.ecf, 1
  store i32 %i.ecg, ptr %i.dpd, align 8, !tbaa !162
  br label %bb.zp

.lr.ph1021.i925:                                  ; preds = %._crit_edge1022.i940, %bb.yd
  %.sroa.01069.1.i926 = phi float [ 0.000000e+00, %bb.yd ], [ %.sroa.01069.4.i941, %._crit_edge1022.i940 ] ; 3 uses
  %.sroa.9.1.i935 = phi float [ f0x1E3CE508, %bb.yd ], [ %.sroa.9.4.i950, %._crit_edge1022.i940 ] ; 3 uses
  %.sroa.6.1.i936 = phi float [ f0x1E3CE508, %bb.yd ], [ %.sroa.6.4.i951, %._crit_edge1022.i940 ] ; 3 uses
  %.sroa.0.1.i937 = phi float [ f0x1E3CE508, %bb.yd ], [ %.sroa.0.4.i952, %._crit_edge1022.i940 ] ; 3 uses
  %.05321029.i938 = phi i32 [ %i.dzh, %bb.yd ], [ %i.ecy, %._crit_edge1022.i940 ] ; 10 uses
  %i.ech = phi <2 x float> [ zeroinitializer, %bb.yd ], [ %i.epf, %._crit_edge1022.i940 ] ; 3 uses
  %i.eci = phi <2 x float> [ zeroinitializer, %bb.yd ], [ %i.epg, %._crit_edge1022.i940 ] ; 3 uses
  %i.ecj = phi <2 x float> [ zeroinitializer, %bb.yd ], [ %i.eph, %._crit_edge1022.i940 ] ; 3 uses
  %i.eck = phi <2 x float> [ zeroinitializer, %bb.yd ], [ %i.epi, %._crit_edge1022.i940 ] ; 3 uses
  %i.ecl = add nsw i32 %.05321029.i938, -1        ; 3 uses
  %i.ecm = icmp eq i32 %.05321029.i938, 1
  %i.ecn = zext i1 %i.ecm to i32
  %i.eco = add nuw nsw i32 %i.ecl, %i.ecn         ; 2 uses
  %i.ecp = icmp eq i32 %.05321029.i938, %i.dzb
  %.neg566.i939 = sext i1 %i.ecp to i32           ; 2 uses
  %i.ecq = add i32 %i.ecl, %.neg566.i939
  %i.ecr = icmp sgt i32 %.05321029.i938, 0
  %i.ecs = zext nneg i32 %.05321029.i938 to i64   ; 2 uses
  %i.ect = sub nsw i32 %.05321029.i938, %.2540.fr.i851 ; 2 uses
  %i.ecu = mul nsw i32 %i.ect, %i.ect
  %i.ecv = sub nsw i32 %.2540.fr.i851, %.05321029.i938
  %i.ecw = sitofp i32 %i.ecv to float             ; 8 uses
  %i.ecx = fmul nnan float %i.ecw, %i.ecw
  %i.ecy = add i32 %.05321029.i938, 1             ; 3 uses
  %i.ecz = zext nneg i32 %i.ecy to i64
  %i.eda = sext i32 %i.ecl to i64                 ; 2 uses
  %i.edb = sext i32 %i.eco to i64                 ; 9 uses
  %i.edc = add i32 %.05321029.i938, %.neg566.i939
  %i.edd = sext i32 %i.edc to i64                 ; 3 uses
  %i.ede = add nsw i32 %i.eco, -1
  %i.edf = sext i32 %i.ede to i64                 ; 6 uses
  %i.edg = sext i32 %i.ecq to i64                 ; 3 uses
  br i1 %i.ecr, label %.lr.ph1021.split.i966, label %._crit_edge1022.i940

.lr.ph1021.split.i966:                            ; preds = %.lr.ph1021.i925
  %i.edh = icmp slt i32 %.05321029.i938, %i.dzd
  %.fr1027.i967 = freeze i1 %i.edh
  br i1 %.fr1027.i967, label %.lr.ph1021.split.split.preheader.i968, label %._crit_edge1022.i940

.lr.ph1021.split.split.preheader.i968:            ; preds = %.lr.ph1021.split.i966
  %i.edi = mul i64 %i.dut, %i.ecs
  %.sink.idx.i678.i969 = select i1 %i.dqc, i64 0, i64 %i.edi
  %.sink.i679.i970 = getelementptr inbounds nuw i8, ptr %i.dqd, i64 %.sink.idx.i678.i969 ; 2 uses
  %i.edj = mul i64 %i.dut, %i.ecz
  %.sink.idx.i702.i971 = select i1 %i.dqc, i64 0, i64 %i.edj
  %.sink.i703.i972 = getelementptr inbounds nuw i8, ptr %i.dqd, i64 %.sink.idx.i702.i971
  %i.edk = mul i64 %i.dut, %i.eda
  %.sink.idx.i704.i973 = select i1 %i.dqc, i64 0, i64 %i.edk
  %invariant.gep.i974 = getelementptr i8, ptr %i.dqd, i64 %.sink.idx.i704.i973
  %i.edl = fmul float %.sroa.8.0.i907, %i.ecw
  %i.edm = fmul float %.sroa.18.0.i915, %i.ecw
  %i.edn = fmul float %.sroa.28.0.i923, %i.ecw
  %i.edo = mul i64 %.pre1975, %i.ecs
  %.sink.idx.i680.i1010 = select i1 %i.dqo, i64 0, i64 %i.edo
  %.sink.i681.i1011 = getelementptr inbounds nuw i8, ptr %i.dqp, i64 %.sink.idx.i680.i1010
  %i.edp = insertelement <2 x float> poison, float %i.ecx, i64 0
  %i.edq = insertelement <2 x float> %i.edp, float %i.edl, i64 1
  %i.edr = insertelement <2 x float> poison, float %i.edm, i64 1
  br label %.lr.ph1021.split.split.i975

.lr.ph1021.split.split.i975:                      ; preds = %.loopexit.i991, %.lr.ph1021.split.split.preheader.i968
  %.sroa.01069.2.i976 = phi float [ %.sroa.01069.1.i926, %.lr.ph1021.split.split.preheader.i968 ], [ %.sroa.01069.3.i992, %.loopexit.i991 ] ; 4 uses
  %.sroa.9.2.i985 = phi float [ %.sroa.9.1.i935, %.lr.ph1021.split.split.preheader.i968 ], [ %.sroa.9.3.i1001, %.loopexit.i991 ] ; 4 uses
  %.sroa.6.2.i986 = phi float [ %.sroa.6.1.i936, %.lr.ph1021.split.split.preheader.i968 ], [ %.sroa.6.3.i1002, %.loopexit.i991 ] ; 4 uses
  %.sroa.0.2.i987 = phi float [ %.sroa.0.1.i937, %.lr.ph1021.split.split.preheader.i968 ], [ %.sroa.0.3.i1003, %.loopexit.i991 ] ; 4 uses
  %indvars.iv.i988 = phi i64 [ %i.dzi, %.lr.ph1021.split.split.preheader.i968 ], [ %indvars.iv.next.i1004, %.loopexit.i991 ] ; 12 uses
  %i.eds = phi <2 x float> [ %i.ech, %.lr.ph1021.split.split.preheader.i968 ], [ %i.epb, %.loopexit.i991 ] ; 4 uses
  %i.edt = phi <2 x float> [ %i.eci, %.lr.ph1021.split.split.preheader.i968 ], [ %i.epc, %.loopexit.i991 ] ; 4 uses
  %i.edu = phi <2 x float> [ %i.ecj, %.lr.ph1021.split.split.preheader.i968 ], [ %i.epd, %.loopexit.i991 ] ; 4 uses
  %i.edv = phi <2 x float> [ %i.eck, %.lr.ph1021.split.split.preheader.i968 ], [ %i.epe, %.loopexit.i991 ] ; 5 uses
  %i.edw = add nsw i64 %indvars.iv.i988, -1       ; 4 uses
  %i.edx = icmp eq i64 %indvars.iv.i988, 1
  %i.edy = zext i1 %i.edx to i64
  %i.edz = add nuw nsw i64 %i.edw, %i.edy         ; 21 uses
  %i.eea = icmp eq i64 %indvars.iv.i988, %sext.i924
  %.neg568.i989 = sext i1 %i.eea to i32           ; 2 uses
  %i.eeb = trunc nsw i64 %i.edw to i32
  %i.eec = add i32 %i.eeb, %.neg568.i989
  %i.eed = icmp sgt i64 %indvars.iv.i988, 0
  %i.eee = icmp slt i64 %indvars.iv.i988, %i.dzj
  %or.cond1036.i990 = select i1 %i.eed, i1 %i.eee, i1 false
  br i1 %or.cond1036.i990, label %bb.ye, label %.loopexit.i991

bb.ye:                                            ; preds = %.lr.ph1021.split.split.i975
  %i.eef = getelementptr inbounds nuw i8, ptr %.sink.i679.i970, i64 %indvars.iv.i988 ; 2 uses
  %i.eeg = load i8, ptr %i.eef, align 1, !tbaa !21
  %.not569.i1006 = icmp eq i8 %i.eeg, 2
  br i1 %.not569.i1006, label %.loopexit.i991, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.eeh = trunc nuw nsw i64 %indvars.iv.i988 to i32 ; 3 uses
  %i.eei = sub nsw i32 %i.eeh, %.2536.i850        ; 2 uses
  %i.eej = mul nsw i32 %i.eei, %i.eei
  %i.eek = add nuw nsw i32 %i.eej, %i.ecu
  %.not570.i1007 = icmp samesign ugt i32 %i.eek, %i.dow
  br i1 %.not570.i1007, label %.loopexit.i991, label %.preheader.i1008

.preheader.i1008:                                 ; preds = %bb.yf
  %i.eel = sub nsw i32 %.2536.i850, %i.eeh
  %i.eem = sitofp i32 %i.eel to float             ; 6 uses
  %i.een = getelementptr inbounds nuw [4 x i8], ptr %.sink.i681.i1011, i64 %indvars.iv.i988
  %i.eeo = load float, ptr %i.een, align 4, !tbaa !46
  %i.eep = load float, ptr %gep1017.i1013, align 4, !tbaa !46
  %i.eeq = fsub float %i.eeo, %i.eep
  %i.eer = call float @llvm.fabs.f32(float %i.eeq)
  %i.ees = getelementptr inbounds nuw i8, ptr %i.eef, i64 1
  %i.eet = load i8, ptr %i.ees, align 1, !tbaa !21
  %.not571.i1014 = icmp eq i8 %i.eet, 2           ; 3 uses
  %i.eeu = getelementptr inbounds nuw i8, ptr %.sink.i703.i972, i64 %indvars.iv.i988
  %i.eev = load i8, ptr %i.eeu, align 1, !tbaa !21
  %.not574.i1015 = icmp eq i8 %i.eev, 2           ; 3 uses
  %i.eew = load i32, ptr %i.dox, align 4, !tbaa !148
  %i.eex = icmp slt i32 %i.eew, 2                 ; 22 uses
  %i.eey = load ptr, ptr %i.doy, align 8, !tbaa !149 ; 22 uses
  %i.eez = load i64, ptr %i.doz, align 8          ; 22 uses
  %i.efa = mul i64 %i.eez, %i.eda
  %.sink.idx.i720.i1016 = select i1 %i.eex, i64 0, i64 %i.efa
  %.sink.i721.i1017 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i720.i1016
  %i.efb = getelementptr inbounds [3 x i8], ptr %.sink.i721.i1017, i64 %i.edw ; 3 uses
  %i.efc = getelementptr inbounds i8, ptr %.sink.i679.i970, i64 %i.edw
  %i.efd = add nsw i32 %.neg568.i989, %i.eeh
  %i.efe = zext nneg i32 %i.efd to i64            ; 3 uses
  %i.eff = sext i32 %i.eec to i64                 ; 3 uses
  %gep1106.i1018 = getelementptr i8, ptr %invariant.gep.i974, i64 %indvars.iv.i988
  %i.efg = insertelement <2 x float> poison, float %i.eem, i64 0
  %i.efh = shufflevector <2 x float> %i.efg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.efi = insertelement <2 x float> %i.efh, float %.sroa.01075.0.i900, i64 1
  %i.efj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.efh, <2 x float> %i.efi, <2 x float> %i.edq) ; 2 uses
  %i.efk = extractelement <2 x float> %i.efj, i64 0
  %i.efl = fpext float %i.eer to double
  %i.efm = fpext float %i.efk to double           ; 2 uses
  %sqrt.i1009 = call nnan double @llvm.sqrt.f64(double %i.efm)
  %i.efn = fadd double %i.efl, 1.000000e+00
  %i.efo = fmul double %sqrt.i1009, %i.efm
  %i.efp = insertelement <2 x double> poison, double %i.efo, i64 0
  %i.efq = insertelement <2 x double> %i.efp, double %i.efn, i64 1
  %i.efr = fdiv <2 x double> splat (double 1.000000e+00), %i.efq
  %i.efs = fptrunc <2 x double> %i.efr to <2 x float> ; 2 uses
  %shift2157 = shufflevector <2 x float> %i.efs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2158 = fmul <2 x float> %shift2157, %i.efs
  %i.eft = extractelement <2 x float> %foldExtExtBinop2158, i64 0 ; 3 uses
  %i.efu = extractelement <2 x float> %i.efj, i64 1 ; 2 uses
  %i.efv = call float @llvm.fabs.f32(float %i.efu)
  %i.efw = fpext float %i.efv to double
  %i.efx = fcmp ole double %i.efw, 1.000000e-02
  %spec.store.select.i1019 = select i1 %i.efx, float f0x358637BD, float %i.efu
  %i.efy = fmul float %spec.store.select.i1019, %i.eft
  %i.efz = call float @llvm.fabs.f32(float %i.efy) ; 3 uses
  %i.ega = load i8, ptr %i.efc, align 1, !tbaa !21
  %.not572.i1020 = icmp eq i8 %i.ega, 2           ; 2 uses
  br i1 %.not571.i1014, label %bb.yj, label %bb.yg

bb.yg:                                            ; preds = %.preheader.i1008
  %i.egb = mul i64 %i.eez, %i.edb
  %.sink.idx.i692.i1021 = select i1 %i.eex, i64 0, i64 %i.egb
  %.sink.i693.i1022 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i692.i1021 ; 2 uses
  %i.egc = getelementptr inbounds nuw [3 x i8], ptr %.sink.i693.i1022, i64 %i.efe
  %i.egd = load i8, ptr %i.egc, align 1, !tbaa !21
  %i.ege = zext i8 %i.egd to i32                  ; 2 uses
  %i.egf = getelementptr [3 x i8], ptr %.sink.i693.i1022, i64 %i.edz ; 2 uses
  br i1 %.not572.i1020, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %i.egg = getelementptr i8, ptr %i.egf, i64 -3
  %i.egh = load i8, ptr %i.egg, align 1, !tbaa !21
  %i.egi = zext i8 %i.egh to i32
  %i.egj = sub nsw i32 %i.ege, %i.egi
  %i.egk = sitofp i32 %i.egj to float
  %i.egl = fmul nnan float %i.egk, 2.000000e+00
  br label %bb.yl

bb.yi:                                            ; preds = %bb.yg
  %i.egm = load i8, ptr %i.egf, align 1, !tbaa !21
  %i.egn = zext i8 %i.egm to i32
  %i.ego = sub nsw i32 %i.ege, %i.egn
  %i.egp = sitofp i32 %i.ego to float
  br label %bb.yl

bb.yj:                                            ; preds = %.preheader.i1008
  br i1 %.not572.i1020, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.egq = mul i64 %i.eez, %i.edb
  %.sink.idx.i698.i1073 = select i1 %i.eex, i64 0, i64 %i.egq
  %.sink.i699.i1074 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i698.i1073 ; 2 uses
  %i.egr = getelementptr inbounds [3 x i8], ptr %.sink.i699.i1074, i64 %i.eff
  %i.egs = load i8, ptr %i.egr, align 1, !tbaa !21
  %i.egt = zext i8 %i.egs to i32
  %i.egu = getelementptr [3 x i8], ptr %.sink.i699.i1074, i64 %i.edz
  %i.egv = getelementptr i8, ptr %i.egu, i64 -3
  %i.egw = load i8, ptr %i.egv, align 1, !tbaa !21
  %i.egx = zext i8 %i.egw to i32
  %i.egy = sub nsw i32 %i.egt, %i.egx
  %i.egz = sitofp i32 %i.egy to float
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj, %bb.yi, %bb.yh
  %.not572.2.i1023 = phi i1 [ false, %bb.yh ], [ false, %bb.yk ], [ true, %bb.yi ], [ true, %bb.yj ] ; 4 uses
  %.sroa.0871.0.i1024 = phi float [ %i.egl, %bb.yh ], [ %i.egz, %bb.yk ], [ %i.egp, %bb.yi ], [ 0.000000e+00, %bb.yj ]
  %i.eha = load i8, ptr %gep1106.i1018, align 1, !tbaa !21
  %.not575.i1025 = icmp eq i8 %i.eha, 2           ; 2 uses
  br i1 %.not574.i1015, label %bb.yp, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.ehb = mul i64 %i.eez, %i.edd
  %.sink.idx.i710.i1026 = select i1 %i.eex, i64 0, i64 %i.ehb
  %.sink.i711.i1027 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i710.i1026
  %i.ehc = getelementptr inbounds [3 x i8], ptr %.sink.i711.i1027, i64 %i.edz
  %i.ehd = load i8, ptr %i.ehc, align 1, !tbaa !21
  %i.ehe = zext i8 %i.ehd to i32                  ; 2 uses
  br i1 %.not575.i1025, label %bb.yo, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.ehf = mul i64 %i.eez, %i.edf
  %.sink.idx.i708.i1028 = select i1 %i.eex, i64 0, i64 %i.ehf
  %.sink.i709.i1029 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i708.i1028
  %i.ehg = getelementptr inbounds [3 x i8], ptr %.sink.i709.i1029, i64 %i.edz
  %i.ehh = load i8, ptr %i.ehg, align 1, !tbaa !21
  %i.ehi = zext i8 %i.ehh to i32
  %i.ehj = sub nsw i32 %i.ehe, %i.ehi
  %i.ehk = sitofp i32 %i.ehj to float
  %i.ehl = fmul nnan float %i.ehk, 2.000000e+00
  br label %bb.yr

bb.yo:                                            ; preds = %bb.ym
  %i.ehm = mul i64 %i.eez, %i.edb
  %.sink.idx.i712.i1067 = select i1 %i.eex, i64 0, i64 %i.ehm
  %.sink.i713.i1068 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i712.i1067
  %i.ehn = getelementptr inbounds [3 x i8], ptr %.sink.i713.i1068, i64 %i.edz
  %i.eho = load i8, ptr %i.ehn, align 1, !tbaa !21
  %i.ehp = zext i8 %i.eho to i32
  %i.ehq = sub nsw i32 %i.ehe, %i.ehp
  %i.ehr = sitofp i32 %i.ehq to float
  br label %bb.yr

bb.yp:                                            ; preds = %bb.yl
  br i1 %.not575.i1025, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.ehs = mul i64 %i.eez, %i.edg
  %.sink.idx.i716.i1069 = select i1 %i.eex, i64 0, i64 %i.ehs
  %.sink.i717.i1070 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i716.i1069
  %i.eht = getelementptr inbounds [3 x i8], ptr %.sink.i717.i1070, i64 %i.edz
  %i.ehu = load i8, ptr %i.eht, align 1, !tbaa !21
  %i.ehv = zext i8 %i.ehu to i32
  %i.ehw = mul i64 %i.eez, %i.edf
  %.sink.idx.i718.i1071 = select i1 %i.eex, i64 0, i64 %i.ehw
  %.sink.i719.i1072 = getelementptr inbounds nuw i8, ptr %i.eey, i64 %.sink.idx.i718.i1071
  %i.ehx = getelementptr inbounds [3 x i8], ptr %.sink.i719.i1072, i64 %i.edz
  %i.ehy = load i8, ptr %i.ehx, align 1, !tbaa !21
  %i.ehz = zext i8 %i.ehy to i32
  %i.eia = sub nsw i32 %i.ehv, %i.ehz
  %i.eib = sitofp i32 %i.eia to float
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yp, %bb.yo, %bb.yn
  %.not575.2.i1030 = phi i1 [ false, %bb.yn ], [ false, %bb.yq ], [ true, %bb.yo ], [ true, %bb.yp ] ; 4 uses
  %.sroa.8872.0.i1031 = phi float [ %i.ehl, %bb.yn ], [ %i.eib, %bb.yq ], [ %i.ehr, %bb.yo ], [ 0.000000e+00, %bb.yp ]
  %i.eic = load i8, ptr %i.efb, align 1, !tbaa !21
  %i.eid = uitofp i8 %i.eic to float
  %i.eie = fmul float %.sroa.0871.0.i1024, %i.eem
  %i.eif = fneg float %i.efz                      ; 2 uses
  %i.eig = fmul float %.sroa.8872.0.i1031, %i.ecw
  %i.eih = insertelement <2 x float> poison, float %i.efz, i64 0
  %i.eii = insertelement <2 x float> %i.eih, float %i.eif, i64 1
  %i.eij = insertelement <2 x float> poison, float %i.eid, i64 0
  %i.eik = insertelement <2 x float> %i.eij, float %i.eig, i64 1
  %i.eil = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eii, <2 x float> %i.eik, <2 x float> %i.edt)
  %i.eim = fadd float %.sroa.0.2.i987, %i.efz
  %i.ein = insertelement <2 x float> poison, float %i.eif, i64 0
  %i.eio = insertelement <2 x float> %i.ein, float %i.eem, i64 1
  %i.eip = insertelement <2 x float> %i.dzm, float %i.eie, i64 0
  %i.eiq = insertelement <2 x float> %i.edr, float %.sroa.01069.2.i976, i64 0
  %i.eir = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eio, <2 x float> %i.eip, <2 x float> %i.eiq) ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  br i1 %.not31.i764.i729, label %bb.aax, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.ety = fadd double %i.etg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i730

bb.aax:                                           ; preds = %bb.aav
  %i.etz = fadd double %i.eti, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i730

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i730: ; preds = %bb.aax, %bb.aaw, %bb.aau, %bb.aat, %bb.aas
  %.not31.i776.i731 = phi i1 [ true, %bb.aax ], [ true, %bb.aau ], [ false, %bb.aaw ], [ %i.etw, %bb.aat ], [ false, %bb.aas ] ; 2 uses
  %.0.i765.i732 = phi double [ %i.etz, %bb.aax ], [ %i.etx, %bb.aau ], [ %i.ety, %bb.aaw ], [ %i.etv, %bb.aat ], [ %i.etp, %bb.aas ]
  %i.eua = fptrunc double %.0.i765.i732 to float  ; 2 uses
  %i.eub = fcmp ogt float %i.esh, %i.etf
  %i.euc = select i1 %i.eub, double %i.etg, double %i.esi ; 2 uses
  %i.eud = load i8, ptr %i.esm, align 1, !tbaa !21
  %.not.i773.i733 = icmp eq i8 %i.eud, 2
  br i1 %.not.i773.i733, label %bb.abd, label %bb.aay

bb.aay:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i730
  br i1 %.not31.i776.i731, label %bb.abc, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.eue = fsub double %i.esi, %i.etg             ; 3 uses
  %i.euf = call double @llvm.fabs.f64(double %i.eue)
  %i.eug = fcmp ult double %i.euf, 1.000000e+00
  br i1 %i.eug, label %bb.abb, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  %i.euh = fadd double %i.euc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734

bb.abb:                                           ; preds = %bb.aaz
  %i.eui = fadd double %i.esi, %i.etg
  %i.euj = fneg double %i.eue
  %i.euk = call double @llvm.fmuladd.f64(double %i.euj, double %i.eue, double 2.000000e+00)
  %i.eul = call double @sqrt(double noundef %i.euk) #20
  %i.eum = fadd double %i.eui, %i.eul
  %i.eun = fmul double %i.eum, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734

bb.abc:                                           ; preds = %bb.aay
  %i.euo = fadd double %i.esi, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734

bb.abd:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit766.i730
  br i1 %.not31.i776.i731, label %bb.abf, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.eup = fadd double %i.etg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734

bb.abf:                                           ; preds = %bb.abd
  %i.euq = fadd double %i.euc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734: ; preds = %bb.abf, %bb.abe, %bb.abc, %bb.abb, %bb.aba
  %.0.i777.i735 = phi double [ %i.euh, %bb.aba ], [ %i.eun, %bb.abb ], [ %i.euo, %bb.abc ], [ %i.eup, %bb.abe ], [ %i.euq, %bb.abf ]
  %i.eur = fptrunc double %.0.i777.i735 to float  ; 2 uses
  %i.eus = fcmp ogt float %i.esc, %i.etb
  %i.eut = select i1 %i.eus, float %i.etb, float %i.esc ; 2 uses
  %i.euu = fcmp ogt float %i.eua, %i.eur
  %i.euv = select i1 %i.euu, float %i.eur, float %i.eua ; 2 uses
  %i.euw = fcmp ogt float %i.eut, %i.euv
  %i.eux = select i1 %i.euw, float %i.euv, float %i.eut ; 2 uses
  %i.euy = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i734.i713, i64 %i.eqn
  store float %i.eux, ptr %i.euy, align 4, !tbaa !46
  %invariant.gep971.i736 = getelementptr i8, ptr %i.eqj, i64 %i.eqn ; 2 uses
  %invariant.gep975.i737 = getelementptr [4 x i8], ptr %i.eqv, i64 %i.eqn ; 6 uses
  %i.euz = sub nsw i32 %.5543.fr.i700, %i.dp
  %i.eva = add nuw nsw i32 %.5543.fr.i700, %i.dp
  %i.evb = add nsw i32 %i.eqf, -2
  %i.evc = sub nsw i32 %.5.i699, %i.dp
  %i.evd = add nuw nsw i32 %.5.i699, %i.dp
  %i.eve = add nsw i32 %i.eqg, -2
  %i.evf = add nsw i32 %i.eqf, -1
  %i.evg = add nsw i32 %i.eqg, -1
  %i.evh = load i32, ptr %i.doe, align 4, !tbaa !148
  %i.evi = icmp slt i32 %i.evh, 2                 ; 9 uses
  %i.evj = load ptr, ptr %i.dof, align 8, !tbaa !149 ; 9 uses
  %invariant.gep989.i738 = getelementptr [4 x i8], ptr %i.evj, i64 %i.erd
  %i.evk = load i64, ptr %i.dnx, align 8          ; 6 uses
  %i.evl = mul i64 %i.evk, %i.eql
  %.sink.idx.i781.i739 = select i1 %i.eqi, i64 0, i64 %i.evl
  %.sink.i782.i740 = getelementptr inbounds nuw i8, ptr %i.eqj, i64 %.sink.idx.i781.i739 ; 2 uses
  %i.evm = getelementptr inbounds nuw i8, ptr %.sink.i782.i740, i64 %i.etd
  %i.evn = load i8, ptr %i.evm, align 1, !tbaa !21
  %.not545.i741 = icmp eq i8 %i.evn, 2
  %i.evo = getelementptr inbounds nuw i8, ptr %.sink.i782.i740, i64 %i.erd
  %i.evp = load i8, ptr %i.evo, align 1, !tbaa !21
  %.not546.i742 = icmp eq i8 %i.evp, 2            ; 2 uses
  br i1 %.not545.i741, label %bb.abj, label %bb.abg

bb.abg:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734
  %i.evq = load i64, ptr %i.doc, align 8
  %i.evr = mul i64 %i.evq, %i.eql
  %.sink.idx.i789.i743 = select i1 %i.equ, i64 0, i64 %i.evr
  %.sink.i790.i744 = getelementptr inbounds nuw i8, ptr %i.eqv, i64 %.sink.idx.i789.i743 ; 3 uses
  %i.evs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i744, i64 %i.etd
  %i.evt = load float, ptr %i.evs, align 4, !tbaa !46 ; 2 uses
  br i1 %.not546.i742, label %bb.abi, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.evu = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i744, i64 %i.erd
  %i.evv = load float, ptr %i.evu, align 4, !tbaa !46
  %i.evw = fsub float %i.evt, %i.evv
  %i.evx = fmul float %i.evw, 5.000000e-01
  br label %bb.abl

bb.abi:                                           ; preds = %bb.abg
  %i.evy = getelementptr inbounds nuw [4 x i8], ptr %.sink.i790.i744, i64 %i.eqn
  %i.evz = load float, ptr %i.evy, align 4, !tbaa !46
  %i.ewa = fsub float %i.evt, %i.evz
  br label %bb.abl

bb.abj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit778.i734
  br i1 %.not546.i742, label %bb.abl, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.ewb = load i64, ptr %i.doc, align 8
  %i.ewc = mul i64 %i.ewb, %i.eql
  %.sink.idx.i795.i838 = select i1 %i.equ, i64 0, i64 %i.ewc
  %.sink.i796.i839 = getelementptr inbounds nuw i8, ptr %i.eqv, i64 %.sink.idx.i795.i838 ; 2 uses
  %i.ewd = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i839, i64 %i.eqn
  %i.ewe = load float, ptr %i.ewd, align 4, !tbaa !46
  %i.ewf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i796.i839, i64 %i.erd
  %i.ewg = load float, ptr %i.ewf, align 4, !tbaa !46
  %i.ewh = fsub float %i.ewe, %i.ewg
  br label %bb.abl

bb.abl:                                           ; preds = %bb.abk, %bb.abj, %bb.abi, %bb.abh
  %.sroa.0865.0.i745 = phi float [ %i.evx, %bb.abh ], [ %i.ewh, %bb.abk ], [ %i.ewa, %bb.abi ], [ 0.000000e+00, %bb.abj ]
  %i.ewi = mul i64 %i.evk, %i.ese
  %.sink.idx.i799.i746 = select i1 %i.eqi, i64 0, i64 %i.ewi
  %gep972.i747 = getelementptr i8, ptr %invariant.gep971.i736, i64 %.sink.idx.i799.i746
  %i.ewj = load i8, ptr %gep972.i747, align 1, !tbaa !21
  %.not548.i748 = icmp eq i8 %i.ewj, 2
  %i.ewk = mul i64 %i.evk, %i.eqx
  %.sink.idx.i811.i749 = select i1 %i.eqi, i64 0, i64 %i.ewk
  %gep984.i750 = getelementptr i8, ptr %invariant.gep971.i736, i64 %.sink.idx.i811.i749
  %i.ewl = load i8, ptr %gep984.i750, align 1, !tbaa !21
  %.not549.i751 = icmp eq i8 %i.ewl, 2            ; 2 uses
  %.pre1973 = load i64, ptr %i.doc, align 8       ; 7 uses
  br i1 %.not548.i748, label %bb.abp, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.ewm = mul i64 %.pre1973, %i.ese
  %.sink.idx.i807.i752 = select i1 %i.equ, i64 0, i64 %i.ewm
  %gep980.i753 = getelementptr i8, ptr %invariant.gep975.i737, i64 %.sink.idx.i807.i752
  %i.ewn = load float, ptr %gep980.i753, align 4, !tbaa !46 ; 2 uses
  br i1 %.not549.i751, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.ewo = mul i64 %.pre1973, %i.eqx
  %.sink.idx.i805.i754 = select i1 %i.equ, i64 0, i64 %i.ewo
  %gep978.i755 = getelementptr i8, ptr %invariant.gep975.i737, i64 %.sink.idx.i805.i754
  %i.ewp = load float, ptr %gep978.i755, align 4, !tbaa !46
  %i.ewq = fsub float %i.ewn, %i.ewp
  %i.ewr = fmul float %i.ewq, 5.000000e-01
  br label %bb.abr

bb.abo:                                           ; preds = %bb.abm
  %i.ews = mul i64 %.pre1973, %i.eql
  %.sink.idx.i809.i832 = select i1 %i.equ, i64 0, i64 %i.ews
  %gep982.i833 = getelementptr i8, ptr %invariant.gep975.i737, i64 %.sink.idx.i809.i832
  %i.ewt = load float, ptr %gep982.i833, align 4, !tbaa !46
  %i.ewu = fsub float %i.ewn, %i.ewt
  br label %bb.abr

bb.abp:                                           ; preds = %bb.abl
  br i1 %.not549.i751, label %bb.abr, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.ewv = mul i64 %.pre1973, %i.eql
  %.sink.idx.i813.i834 = select i1 %i.equ, i64 0, i64 %i.ewv
  %gep986.i835 = getelementptr i8, ptr %invariant.gep975.i737, i64 %.sink.idx.i813.i834
  %i.eww = load float, ptr %gep986.i835, align 4, !tbaa !46
  %i.ewx = mul i64 %.pre1973, %i.eqx
  %.sink.idx.i815.i836 = select i1 %i.equ, i64 0, i64 %i.ewx
  %gep988.i837 = getelementptr i8, ptr %invariant.gep975.i737, i64 %.sink.idx.i815.i836
  %i.ewy = load float, ptr %gep988.i837, align 4, !tbaa !46
  %i.ewz = fsub float %i.eww, %i.ewy
  br label %bb.abr

bb.abr:                                           ; preds = %bb.abq, %bb.abp, %bb.abo, %bb.abn
  %.sroa.8866.0.i756 = phi float [ %i.ewr, %bb.abn ], [ %i.ewz, %bb.abq ], [ %i.ewu, %bb.abo ], [ 0.000000e+00, %bb.abp ]
  %i.exa = mul i64 %.pre1973, %i.eql
  %.sink.idx.i821.i802 = select i1 %i.equ, i64 0, i64 %i.exa
  %gep.i803 = getelementptr i8, ptr %invariant.gep975.i737, i64 %.sink.idx.i821.i802
  br label %.lr.ph.i757

.lr.ph.i757:                                      ; preds = %._crit_edge.i770, %bb.abr
  %.0959.i758 = phi float [ %.us-phi933.i774, %._crit_edge.i770 ], [ f0x1E3CE508, %bb.abr ] ; 3 uses
  %.0522956.i761 = phi float [ %.us-phi.i771, %._crit_edge.i770 ], [ 0.000000e+00, %bb.abr ] ; 3 uses
  %.1533955.i762 = phi i32 [ %i.exu, %._crit_edge.i770 ], [ %i.euz, %bb.abr ] ; 10 uses
  %i.exb = phi <2 x float> [ %i.fcm, %._crit_edge.i770 ], [ zeroinitializer, %bb.abr ] ; 3 uses
  %i.exc = add nsw i32 %.1533955.i762, -1         ; 3 uses
  %i.exd = icmp eq i32 %.1533955.i762, 1
  %i.exe = zext i1 %i.exd to i32
  %i.exf = add nuw nsw i32 %i.exc, %i.exe         ; 2 uses
  %i.exg = icmp eq i32 %.1533955.i762, %i.evb
  %.neg.i763 = sext i1 %i.exg to i32              ; 2 uses
  %i.exh = add nsw i32 %i.exc, %.neg.i763
  %i.exi = icmp sgt i32 %.1533955.i762, 0
  %i.exj = zext nneg i32 %.1533955.i762 to i64    ; 2 uses
  %i.exk = mul i64 %i.evk, %i.exj
  %.sink.idx.i817.i764 = select i1 %i.eqi, i64 0, i64 %i.exk
  %.sink.i818.i765 = getelementptr inbounds nuw i8, ptr %i.eqj, i64 %.sink.idx.i817.i764 ; 2 uses
  %i.exl = sub nsw i32 %.1533955.i762, %.5543.fr.i700 ; 2 uses
  %i.exm = mul nsw i32 %i.exl, %i.exl
  %i.exn = sub nsw i32 %.5543.fr.i700, %.1533955.i762
  %i.exo = sitofp i32 %i.exn to float             ; 2 uses
  %i.exp = insertelement <2 x float> poison, float %i.exo, i64 0 ; 2 uses
  %i.exq = insertelement <2 x float> %i.exp, float %.sroa.8866.0.i756, i64 1
  %i.exr = shufflevector <2 x float> %i.exp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.exs = fmul <2 x float> %i.exq, %i.exr
  %i.ext = sext i32 %i.exf to i64                 ; 3 uses
  %i.exu = add i32 %.1533955.i762, 1              ; 3 uses
  %i.exv = zext nneg i32 %i.exu to i64
  %i.exw = mul i64 %i.evk, %i.exv
  %.sink.idx.i841.i766 = select i1 %i.eqi, i64 0, i64 %i.exw
  %.sink.i842.i767 = getelementptr inbounds nuw i8, ptr %i.eqj, i64 %.sink.idx.i841.i766
  %i.exx = zext nneg i32 %i.exc to i64            ; 2 uses
  %i.exy = mul i64 %i.evk, %i.exx
  %.sink.idx.i843.i768 = select i1 %i.eqi, i64 0, i64 %i.exy
  %.sink.i844.i769 = getelementptr inbounds nuw i8, ptr %i.eqj, i64 %.sink.idx.i843.i768
  %i.exz = add i32 %.1533955.i762, %.neg.i763
  %i.eya = sext i32 %i.exz to i64
  %i.eyb = add nsw i32 %i.exf, -1
  %i.eyc = sext i32 %i.eyb to i64                 ; 2 uses
  %i.eyd = sext i32 %i.exh to i64
  br i1 %i.exi, label %.lr.ph.split.i782, label %._crit_edge.i770

.lr.ph.split.i782:                                ; preds = %.lr.ph.i757
  %i.eye = icmp slt i32 %.1533955.i762, %i.evf
  %.fr953.i783 = freeze i1 %i.eye
  br i1 %.fr953.i783, label %.lr.ph.split.split.i784.preheader, label %._crit_edge.i770

.lr.ph.split.split.i784.preheader:                ; preds = %.lr.ph.split.i782
  %i.eyf = mul i64 %.pre1973, %i.exj
  %.sink.idx.i819.i800 = select i1 %i.equ, i64 0, i64 %i.eyf
  %.sink.i820.i801 = getelementptr inbounds nuw i8, ptr %i.eqv, i64 %.sink.idx.i819.i800
  %i.eyg = insertelement <2 x float> poison, float %i.exo, i64 1
  br label %.lr.ph.split.split.i784

.lr.ph.split.split.i784:                          ; preds = %.lr.ph.split.split.i784.preheader, %bb.ach
  %.1927.i785 = phi float [ %.2.i795, %bb.ach ], [ %.0959.i758, %.lr.ph.split.split.i784.preheader ] ; 4 uses
  %.1523924.i788 = phi float [ %.2524.i792, %bb.ach ], [ %.0522956.i761, %.lr.ph.split.split.i784.preheader ] ; 4 uses
  %.1531922.i789 = phi i32 [ %i.fcl, %bb.ach ], [ %i.evc, %.lr.ph.split.split.i784.preheader ] ; 11 uses
  %i.eyh = phi <2 x float> [ %i.fck, %bb.ach ], [ %i.exb, %.lr.ph.split.split.i784.preheader ] ; 4 uses
  %i.eyi = add nsw i32 %.1531922.i789, -1         ; 3 uses
  %i.eyj = icmp eq i32 %.1531922.i789, 1
  %i.eyk = zext i1 %i.eyj to i32
  %i.eyl = add nuw nsw i32 %i.eyi, %i.eyk         ; 4 uses
  %i.eym = icmp eq i32 %.1531922.i789, %i.eve
  %.neg553.i790 = sext i1 %i.eym to i32           ; 2 uses
  %i.eyn = add nsw i32 %i.eyi, %.neg553.i790
  %i.eyo = icmp sgt i32 %.1531922.i789, 0
  %i.eyp = icmp slt i32 %.1531922.i789, %i.evg
  %or.cond1037.i791 = select i1 %i.eyo, i1 %i.eyp, i1 false
  br i1 %or.cond1037.i791, label %bb.abs, label %bb.ach

bb.abs:                                           ; preds = %.lr.ph.split.split.i784
  %i.eyq = zext nneg i32 %.1531922.i789 to i64    ; 4 uses
  %i.eyr = getelementptr inbounds nuw i8, ptr %.sink.i818.i765, i64 %i.eyq ; 2 uses
  %i.eys = load i8, ptr %i.eyr, align 1, !tbaa !21
  %.not554.i797 = icmp eq i8 %i.eys, 2
  br i1 %.not554.i797, label %bb.ach, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %i.eyt = sub nsw i32 %.1531922.i789, %.5.i699   ; 2 uses
  %i.eyu = mul nsw i32 %i.eyt, %i.eyt
  %i.eyv = add nuw nsw i32 %i.eyu, %i.exm
  %.not555.i798 = icmp samesign ugt i32 %i.eyv, %i.dod
  br i1 %.not555.i798, label %bb.ach, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.eyw = sub nsw i32 %.5.i699, %.1531922.i789
  %i.eyx = sitofp i32 %i.eyw to float             ; 2 uses
  %i.eyy = getelementptr inbounds nuw [4 x i8], ptr %.sink.i820.i801, i64 %i.eyq
  %i.eyz = load float, ptr %i.eyy, align 4, !tbaa !46
  %i.eza = load float, ptr %gep.i803, align 4, !tbaa !46
  %i.ezb = fsub float %i.eyz, %i.eza
  %i.ezc = insertelement <2 x float> poison, float %i.eyx, i64 0
  %i.ezd = shufflevector <2 x float> %i.ezc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eze = insertelement <2 x float> %i.ezd, float %.sroa.0865.0.i745, i64 1
  %i.ezf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ezd, <2 x float> %i.eze, <2 x float> %i.exs) ; 3 uses
  %i.ezg = extractelement <2 x float> %i.ezf, i64 0 ; 2 uses
  %sqrt912.i799 = call nnan float @llvm.sqrt.f32(float %i.ezg)
  %i.ezh = fmul float %i.ezg, %sqrt912.i799
  %i.ezi = fdiv float 1.000000e+00, %i.ezh
  %i.ezj = extractelement <2 x float> %i.ezf, i64 1
  %i.ezk = insertelement <2 x float> %i.ezf, float %i.ezb, i64 0
  %i.ezl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ezk)
  %i.ezm = fpext <2 x float> %i.ezl to <2 x double> ; 2 uses
  %i.ezn = extractelement <2 x double> %i.ezm, i64 0
  %i.ezo = fadd double %i.ezn, 1.000000e+00
  %i.ezp = fdiv double 1.000000e+00, %i.ezo
  %i.ezq = fptrunc double %i.ezp to float
  %i.ezr = extractelement <2 x double> %i.ezm, i64 1
  %i.ezs = fcmp ole double %i.ezr, 1.000000e-02
  %spec.store.select8.i804 = select i1 %i.ezs, float f0x358637BD, float %i.ezj
  %i.ezt = fmul float %i.ezi, %i.ezq
  %i.ezu = fmul float %spec.store.select8.i804, %i.ezt
  %i.ezv = call float @llvm.fabs.f32(float %i.ezu) ; 3 uses
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.eyr, i64 1
  %i.ezx = load i8, ptr %i.ezw, align 1, !tbaa !21
  %.not556.i805 = icmp eq i8 %i.ezx, 2
  %i.ezy = zext nneg i32 %i.eyi to i64            ; 2 uses
  %i.ezz = getelementptr inbounds nuw i8, ptr %.sink.i818.i765, i64 %i.ezy
  %i.faa = load i8, ptr %i.ezz, align 1, !tbaa !21
  %.not557.i806 = icmp eq i8 %i.faa, 2            ; 2 uses
  br i1 %.not556.i805, label %bb.aby, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.fab = add nsw i32 %.1531922.i789, %.neg553.i790
  %i.fac = load i64, ptr %i.dog, align 8          ; 3 uses
  %i.fad = mul i64 %i.fac, %i.ext
  %i.fae = zext nneg i32 %i.fab to i64
  %i.faf = sext i32 %i.eyl to i64
  %.sink.idx.i831.i828 = select i1 %i.evi, i64 0, i64 %i.fad
  %.sink.i832.i829 = getelementptr inbounds nuw i8, ptr %i.evj, i64 %.sink.idx.i831.i828 ; 2 uses
  %i.fag = getelementptr inbounds nuw [4 x i8], ptr %.sink.i832.i829, i64 %i.fae
  %i.fah = load float, ptr %i.fag, align 4, !tbaa !46 ; 2 uses
  %i.fai = getelementptr [4 x i8], ptr %.sink.i832.i829, i64 %i.faf ; 2 uses
  br i1 %.not557.i806, label %bb.abx, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.faj = getelementptr i8, ptr %i.fai, i64 -4
  %i.fak = load float, ptr %i.faj, align 4, !tbaa !46
  %i.fal = fsub float %i.fah, %i.fak
  %i.fam = fmul float %i.fal, 2.000000e+00
  br label %bb.aca

bb.abx:                                           ; preds = %bb.abv
  %i.fan = load float, ptr %i.fai, align 4, !tbaa !46
  %i.fao = fsub float %i.fah, %i.fan
  br label %bb.aca

bb.aby:                                           ; preds = %bb.abu
  %.pre1077.i812.pre = load i64, ptr %i.dog, align 8 ; 3 uses
  br i1 %.not557.i806, label %bb.aca, label %bb.abz

bb.abz:                                           ; preds = %bb.aby
  %i.fap = mul i64 %.pre1077.i812.pre, %i.ext
  %.sink.idx.i837.i830 = select i1 %i.evi, i64 0, i64 %i.fap
  %.sink.i838.i831 = getelementptr inbounds nuw i8, ptr %i.evj, i64 %.sink.idx.i837.i830 ; 2 uses
  %i.faq = sext i32 %i.eyn to i64
  %i.far = getelementptr inbounds [4 x i8], ptr %.sink.i838.i831, i64 %i.faq
  %i.fas = load float, ptr %i.far, align 4, !tbaa !46
  %i.fat = sext i32 %i.eyl to i64
  %i.fau = getelementptr [4 x i8], ptr %.sink.i838.i831, i64 %i.fat
  %i.fav = getelementptr i8, ptr %i.fau, i64 -4
  %i.faw = load float, ptr %i.fav, align 4, !tbaa !46
  %i.fax = fsub float %i.fas, %i.faw
  br label %bb.aca

bb.aca:                                           ; preds = %bb.abz, %bb.aby, %bb.abx, %bb.abw
  %.pre1077.i812 = phi i64 [ %i.fac, %bb.abw ], [ %.pre1077.i812.pre, %bb.abz ], [ %i.fac, %bb.abx ], [ %.pre1077.i812.pre, %bb.aby ] ; 6 uses
  %.sroa.0867.0.i809 = phi float [ %i.fam, %bb.abw ], [ %i.fax, %bb.abz ], [ %i.fao, %bb.abx ], [ 0.000000e+00, %bb.aby ]
  %i.fay = getelementptr inbounds nuw i8, ptr %.sink.i842.i767, i64 %i.eyq
  %i.faz = load i8, ptr %i.fay, align 1, !tbaa !21
  %.not559.i810 = icmp eq i8 %i.faz, 2
  %i.fba = getelementptr inbounds nuw i8, ptr %.sink.i844.i769, i64 %i.eyq
  %i.fbb = load i8, ptr %i.fba, align 1, !tbaa !21
  %.not560.i811 = icmp eq i8 %i.fbb, 2            ; 2 uses
  br i1 %.not559.i810, label %bb.ace, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.fbc = mul i64 %.pre1077.i812, %i.eya
  %i.fbd = sext i32 %i.eyl to i64                 ; 3 uses
  %.sink.idx.i849.i820 = select i1 %i.evi, i64 0, i64 %i.fbc
  %.sink.i850.i821 = getelementptr inbounds nuw i8, ptr %i.evj, i64 %.sink.idx.i849.i820
  %i.fbe = getelementptr inbounds [4 x i8], ptr %.sink.i850.i821, i64 %i.fbd
  %i.fbf = load float, ptr %i.fbe, align 4, !tbaa !46 ; 2 uses
  br i1 %.not560.i811, label %bb.acd, label %bb.acc

bb.acc:                                           ; preds = %bb.acb
  %i.fbg = mul i64 %.pre1077.i812, %i.eyc
  %.sink.idx.i847.i815 = select i1 %i.evi, i64 0, i64 %i.fbg
  %.sink.i848.i816 = getelementptr inbounds nuw i8, ptr %i.evj, i64 %.sink.idx.i847.i815
  %i.fbh = getelementptr inbounds [4 x i8], ptr %.sink.i848.i816, i64 %i.fbd
  %i.fbi = load float, ptr %i.fbh, align 4, !tbaa !46
  %i.fbj = fsub float %i.fbf, %i.fbi
  %i.fbk = fmul float %i.fbj, 2.000000e+00
  br label %bb.acg

bb.acd:                                           ; preds = %bb.acb
  %i.fbl = mul i64 %.pre1077.i812, %i.ext
  %.sink.idx.i851.i822 = select i1 %i.evi, i64 0, i64 %i.fbl
  %.sink.i852.i823 = getelementptr inbounds nuw i8, ptr %i.evj, i64 %.sink.idx.i851.i822
  %i.fbm = getelementptr inbounds [4 x i8], ptr %.sink.i852.i823, i64 %i.fbd
  %i.fbn = load float, ptr %i.fbm, align 4, !tbaa !46
  %i.fbo = fsub float %i.fbf, %i.fbn
  br label %bb.acg

bb.ace:                                           ; preds = %bb.aca
  br i1 %.not560.i811, label %bb.acg, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
end_hunk_5
begin_hunk_6_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.fje = fsub double %i.fgt, %i.fiy             ; 3 uses
  %i.fjf = call double @llvm.fabs.f64(double %i.fje)
  %i.fjg = fcmp ult double %i.fjf, 1.000000e+00
  br i1 %i.fjg, label %bb.adr, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  %i.fjh = fadd double %i.fja, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.adr:                                           ; preds = %bb.adp
  %i.fji = fadd double %i.fgt, %i.fiy
  %i.fjj = fneg double %i.fje
  %i.fjk = call double @llvm.fmuladd.f64(double %i.fjj, double %i.fje, double 2.000000e+00)
  %i.fjl = call double @sqrt(double noundef %i.fjk) #20
  %i.fjm = fadd double %i.fji, %i.fjl
  %i.fjn = fmul double %i.fjm, 5.000000e-01
  %.pr.pre.i1157 = load i8, ptr %i.fjc, align 1, !tbaa !21
  %i.fjo = icmp eq i8 %.pr.pre.i1157, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.ads:                                           ; preds = %bb.ado
  %i.fjp = fadd double %i.fgt, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.adt:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit482.i
  br i1 %.not31.i492.i, label %bb.adv, label %bb.adu

bb.adu:                                           ; preds = %bb.adt
  %i.fjq = fadd double %i.fiy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

bb.adv:                                           ; preds = %bb.adt
  %i.fjr = fadd double %i.fja, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i: ; preds = %bb.adv, %bb.adu, %bb.ads, %bb.adr, %bb.adq
  %.not31.i504.i = phi i1 [ true, %bb.adv ], [ true, %bb.ads ], [ false, %bb.adu ], [ %i.fjo, %bb.adr ], [ false, %bb.adq ] ; 2 uses
  %.0.i493.i = phi double [ %i.fjr, %bb.adv ], [ %i.fjp, %bb.ads ], [ %i.fjq, %bb.adu ], [ %i.fjn, %bb.adr ], [ %i.fjh, %bb.adq ]
  %i.fjs = fptrunc double %.0.i493.i to float     ; 2 uses
  %i.fjt = fcmp ogt float %i.fhz, %i.fix
  %i.fju = select i1 %i.fjt, double %i.fiy, double %i.fia ; 2 uses
  %i.fjv = load i8, ptr %i.fie, align 1, !tbaa !21
  %.not.i501.i = icmp eq i8 %i.fjv, 2
  br i1 %.not.i501.i, label %bb.aeb, label %bb.adw

bb.adw:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i
  br i1 %.not31.i504.i, label %bb.aea, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.fjw = fsub double %i.fia, %i.fiy             ; 3 uses
  %i.fjx = call double @llvm.fabs.f64(double %i.fjw)
  %i.fjy = fcmp ult double %i.fjx, 1.000000e+00
  br i1 %i.fjy, label %bb.adz, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  %i.fjz = fadd double %i.fju, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.adz:                                           ; preds = %bb.adx
  %i.fka = fadd double %i.fia, %i.fiy
  %i.fkb = fneg double %i.fjw
  %i.fkc = call double @llvm.fmuladd.f64(double %i.fkb, double %i.fjw, double 2.000000e+00)
  %i.fkd = call double @sqrt(double noundef %i.fkc) #20
  %i.fke = fadd double %i.fka, %i.fkd
  %i.fkf = fmul double %i.fke, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.aea:                                           ; preds = %bb.adw
  %i.fkg = fadd double %i.fia, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.aeb:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i
  br i1 %.not31.i504.i, label %bb.aed, label %bb.aec

bb.aec:                                           ; preds = %bb.aeb
  %i.fkh = fadd double %i.fiy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

bb.aed:                                           ; preds = %bb.aeb
  %i.fki = fadd double %i.fju, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i: ; preds = %bb.aed, %bb.aec, %bb.aea, %bb.adz, %bb.ady
  %.0.i505.i = phi double [ %i.fjz, %bb.ady ], [ %i.fkf, %bb.adz ], [ %i.fkg, %bb.aea ], [ %i.fkh, %bb.aec ], [ %i.fki, %bb.aed ]
  %i.fkj = fptrunc double %.0.i505.i to float     ; 2 uses
  %i.fkk = fcmp ogt float %i.fhu, %i.fit
  %i.fkl = select i1 %i.fkk, float %i.fit, float %i.fhu ; 2 uses
  %i.fkm = fcmp ogt float %i.fjs, %i.fkj
  %i.fkn = select i1 %i.fkm, float %i.fkj, float %i.fjs ; 2 uses
  %i.fko = fcmp ogt float %i.fkl, %i.fkn
  %i.fkp = select i1 %i.fko, float %i.fkn, float %i.fkl ; 2 uses
  %i.fkq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1130, i64 %i.fgf
  store float %i.fkp, ptr %i.fkq, align 4, !tbaa !46
  %i.fkr = add nuw nsw i32 %.2404.fr.i, %i.dp
  %i.fks = sub nsw i32 %.2404.fr.i, %i.dp
  %i.fkt = load i32, ptr %i.fy, align 8, !tbaa !146 ; 2 uses
  %i.fku = add nsw i32 %i.fkt, -2
  %i.fkv = add nsw i32 %i.fkt, -1
  %i.fkw = add nuw nsw i32 %.2401.i, %i.dp
  %i.fkx = sub nsw i32 %.2401.i, %i.dp
  %i.fky = load i32, ptr %i.es, align 4, !tbaa !145 ; 2 uses
  %i.fkz = add nsw i32 %i.fky, -2
  %i.fla = add nsw i32 %i.fky, -1
  %i.flb = sext i32 %i.fkx to i64
  %i.flc = sext i32 %i.fla to i64
  %i.fld = zext nneg i32 %i.fkw to i64
  %sext.i1137 = sext i32 %i.fkz to i64
  %i.fle = load i64, ptr %i.feo, align 8          ; 3 uses
  br label %.lr.ph756.i

.preheader712.loopexit.i:                         ; preds = %._crit_edge757.i
  %i.flf = fpext float %.sroa.0789.4.i to double
  %i.flg = fpext float %.sroa.0.4.i1143 to double
  %i.flh = fdiv double %i.flf, %i.flg
  %i.fli = fpext float %.sroa.6791.4.i to double
  %i.flj = fpext float %.sroa.6.4.i1142 to double
  %i.flk = fdiv double %i.fli, %i.flj
  %i.fll = fpext float %.sroa.9793.4.i to double
  %i.flm = fpext float %.sroa.9.4.i1141 to double
  %i.fln = fdiv double %i.fll, %i.flm
  %i.flo = insertelement <2 x double> poison, double %i.flh, i64 0
  %i.flp = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.flo)
  %i.flq = call i32 @llvm.smax.i32(i32 %i.flp, i32 0)
  %i.flr = call i32 @llvm.umin.i32(i32 %i.flq, i32 255)
  %i.fls = trunc nuw i32 %i.flr to i8
  %i.flt = load i32, ptr %i.fev, align 4, !tbaa !148
  %i.flu = icmp slt i32 %i.flt, 2
  %i.flv = load ptr, ptr %i.few, align 8, !tbaa !149
  %i.flw = load i64, ptr %i.fex, align 8
  %i.flx = mul i64 %i.flw, %i.fgp
  %.sink.idx.i557.i = select i1 %i.flu, i64 0, i64 %i.flx
  %.sink.i558.i = getelementptr inbounds nuw i8, ptr %i.flv, i64 %.sink.idx.i557.i
  %i.fly = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i, i64 %i.fgv
  store i8 %i.fls, ptr %i.fly, align 1, !tbaa !21
  %i.flz = insertelement <2 x double> poison, double %i.flk, i64 0
  %i.fma = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.flz)
  %i.fmb = call i32 @llvm.smax.i32(i32 %i.fma, i32 0)
  %i.fmc = call i32 @llvm.umin.i32(i32 %i.fmb, i32 255)
  %i.fmd = trunc nuw i32 %i.fmc to i8
  %i.fme = load i32, ptr %i.fev, align 4, !tbaa !148
  %i.fmf = icmp slt i32 %i.fme, 2
  %i.fmg = load ptr, ptr %i.few, align 8, !tbaa !149
  %i.fmh = load i64, ptr %i.fex, align 8
  %i.fmi = mul i64 %i.fmh, %i.fgp
  %.sink.idx.i557.1.i = select i1 %i.fmf, i64 0, i64 %i.fmi
  %.sink.i558.1.i = getelementptr inbounds nuw i8, ptr %i.fmg, i64 %.sink.idx.i557.1.i
  %i.fmj = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i, i64 %i.fgv
  %i.fmk = getelementptr inbounds nuw i8, ptr %i.fmj, i64 1
  store i8 %i.fmd, ptr %i.fmk, align 1, !tbaa !21
  %i.fml = insertelement <2 x double> poison, double %i.fln, i64 0
  %i.fmm = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fml)
  %i.fmn = call i32 @llvm.smax.i32(i32 %i.fmm, i32 0)
  %i.fmo = call i32 @llvm.umin.i32(i32 %i.fmn, i32 255)
  %i.fmp = trunc nuw i32 %i.fmo to i8
  %i.fmq = load i32, ptr %i.fev, align 4, !tbaa !148
  %i.fmr = icmp slt i32 %i.fmq, 2
  %i.fms = load ptr, ptr %i.few, align 8, !tbaa !149
  %i.fmt = load i64, ptr %i.fex, align 8
  %i.fmu = mul i64 %i.fmt, %i.fgp
  %.sink.idx.i557.2.i = select i1 %i.fmr, i64 0, i64 %i.fmu
  %.sink.i558.2.i = getelementptr inbounds nuw i8, ptr %i.fms, i64 %.sink.idx.i557.2.i
  %i.fmv = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i, i64 %i.fgv
  %i.fmw = getelementptr inbounds nuw i8, ptr %i.fmv, i64 2
  store i8 %i.fmp, ptr %i.fmw, align 1, !tbaa !21
  %i.fmx = load i32, ptr %i.fem, align 4, !tbaa !148
  %i.fmy = icmp slt i32 %i.fmx, 2
  %i.fmz = load ptr, ptr %i.fen, align 8, !tbaa !149
  %i.fna = load i64, ptr %i.feo, align 8
  %i.fnb = mul i64 %i.fna, %i.fgd
  %.sink.idx.i559.i = select i1 %i.fmy, i64 0, i64 %i.fnb
  %.sink.i560.i = getelementptr inbounds nuw i8, ptr %i.fmz, i64 %.sink.idx.i559.i
  %i.fnc = getelementptr inbounds nuw i8, ptr %.sink.i560.i, i64 %i.fgf
  store i8 1, ptr %i.fnc, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store float %i.fkp, ptr %10, align 4, !tbaa !50
  store i32 %.2404.fr.i, ptr %i.fey, align 4, !tbaa !169
  store i32 %.2401.i, ptr %i.fez, align 4, !tbaa !170
  %i.fnd = load i32, ptr %i.ffb, align 8, !tbaa !162
  store i32 %i.fnd, ptr %i.ffa, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mh, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %.noexc1160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1160:                                       ; preds = %.preheader712.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.fne = load i32, ptr %i.ffb, align 8, !tbaa !162
  %i.fnf = add nsw i32 %i.fne, 1
  store i32 %i.fnf, ptr %i.ffb, align 8, !tbaa !162
  br label %bb.afv

.lr.ph756.i:                                      ; preds = %._crit_edge757.i, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i
  %.sroa.0789.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.0789.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.6791.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.6791.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.9793.1.i = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.9793.4.i, %._crit_edge757.i ] ; 3 uses
  %.sroa.9.1.i1138 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.9.4.i1141, %._crit_edge757.i ] ; 3 uses
  %.sroa.6.1.i1139 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.6.4.i1142, %._crit_edge757.i ] ; 3 uses
  %.sroa.0.1.i1140 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %.sroa.0.4.i1143, %._crit_edge757.i ] ; 3 uses
  %.0397764.i = phi i32 [ %i.fks, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i ], [ %i.fns, %._crit_edge757.i ] ; 9 uses
  %i.fng = add nsw i32 %.0397764.i, -1            ; 3 uses
  %i.fnh = icmp eq i32 %.0397764.i, 1
  %i.fni = zext i1 %i.fnh to i32
  %i.fnj = add nuw nsw i32 %i.fng, %i.fni         ; 2 uses
  %i.fnk = icmp eq i32 %.0397764.i, %i.fku
  %.neg423.i = sext i1 %i.fnk to i32              ; 2 uses
  %i.fnl = add i32 %i.fng, %.neg423.i
  %i.fnm = icmp sgt i32 %.0397764.i, 0
  %i.fnn = zext nneg i32 %.0397764.i to i64
  %i.fno = sub nsw i32 %.0397764.i, %.2404.fr.i   ; 3 uses
  %i.fnp = mul nsw i32 %i.fno, %i.fno
  %i.fnq = sitofp i32 %i.fno to float             ; 5 uses
  %i.fnr = fmul nnan float %i.fnq, %i.fnq
  %i.fns = add i32 %.0397764.i, 1                 ; 3 uses
  %i.fnt = zext nneg i32 %i.fns to i64
  %i.fnu = sext i32 %i.fng to i64                 ; 2 uses
  %i.fnv = add i32 %.0397764.i, %.neg423.i
  %i.fnw = sext i32 %i.fnv to i64                 ; 3 uses
  %i.fnx = sext i32 %i.fnl to i64                 ; 6 uses
  %i.fny = add nsw i32 %i.fnj, -1
  %i.fnz = sext i32 %i.fny to i64                 ; 6 uses
  %i.foa = sext i32 %i.fnj to i64                 ; 6 uses
  br i1 %i.fnm, label %.lr.ph756.split.i, label %._crit_edge757.i

.lr.ph756.split.i:                                ; preds = %.lr.ph756.i
  %i.fob = icmp slt i32 %.0397764.i, %i.fkv
  %.fr762.i = freeze i1 %i.fob
  br i1 %.fr762.i, label %.lr.ph756.split.split.i.preheader, label %._crit_edge757.i

.lr.ph756.split.split.i.preheader:                ; preds = %.lr.ph756.split.i
  %i.foc = mul i64 %i.fle, %i.fnn
  %.sink.idx.i509.i = select i1 %i.fga, i64 0, i64 %i.foc
  %.sink.i510.i = getelementptr inbounds nuw i8, ptr %i.fgb, i64 %.sink.idx.i509.i ; 2 uses
  %i.fod = mul i64 %i.fle, %i.fnt
  %.sink.idx.i511.i = select i1 %i.fga, i64 0, i64 %i.fod
  %.sink.i512.i = getelementptr inbounds nuw i8, ptr %i.fgb, i64 %.sink.idx.i511.i
  %i.foe = mul i64 %i.fle, %i.fnu
  %.sink.idx.i513.i = select i1 %i.fga, i64 0, i64 %i.foe
  %invariant.gep1906 = getelementptr i8, ptr %i.fgb, i64 %.sink.idx.i513.i
  br label %.lr.ph756.split.split.i

.lr.ph756.split.split.i:                          ; preds = %.lr.ph756.split.split.i.preheader, %.loopexit.i1148
  %.sroa.0789.2.i = phi float [ %.sroa.0789.3.i, %.loopexit.i1148 ], [ %.sroa.0789.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.6791.2.i = phi float [ %.sroa.6791.3.i, %.loopexit.i1148 ], [ %.sroa.6791.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.9793.2.i = phi float [ %.sroa.9793.3.i, %.loopexit.i1148 ], [ %.sroa.9793.1.i, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.9.2.i1144 = phi float [ %.sroa.9.3.i1149, %.loopexit.i1148 ], [ %.sroa.9.1.i1138, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.6.2.i1145 = phi float [ %.sroa.6.3.i1150, %.loopexit.i1148 ], [ %.sroa.6.1.i1139, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %.sroa.0.2.i1146 = phi float [ %.sroa.0.3.i1151, %.loopexit.i1148 ], [ %.sroa.0.1.i1140, %.lr.ph756.split.split.i.preheader ] ; 4 uses
  %indvars.iv.i1147 = phi i64 [ %indvars.iv.next.i1152, %.loopexit.i1148 ], [ %i.flb, %.lr.ph756.split.split.i.preheader ] ; 12 uses
  %i.fof = add nsw i64 %indvars.iv.i1147, -1      ; 3 uses
  %i.fog = icmp eq i64 %indvars.iv.i1147, 1
  %i.foh = zext i1 %i.fog to i64
  %i.foi = add nuw nsw i64 %i.fof, %i.foh         ; 21 uses
  %i.foj = icmp eq i64 %indvars.iv.i1147, %sext.i1137
  %.neg425.i = sext i1 %i.foj to i64
  %i.fok = icmp sgt i64 %indvars.iv.i1147, 0
  %i.fol = icmp slt i64 %indvars.iv.i1147, %i.flc
  %or.cond770.i = select i1 %i.fok, i1 %i.fol, i1 false
  br i1 %or.cond770.i, label %bb.aee, label %.loopexit.i1148

bb.aee:                                           ; preds = %.lr.ph756.split.split.i
  %i.fom = getelementptr inbounds nuw i8, ptr %.sink.i510.i, i64 %indvars.iv.i1147 ; 2 uses
  %i.fon = load i8, ptr %i.fom, align 1, !tbaa !21
  %.not426.i = icmp eq i8 %i.fon, 2
  br i1 %.not426.i, label %.loopexit.i1148, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  %i.foo = trunc nuw nsw i64 %indvars.iv.i1147 to i32
  %i.fop = sub nsw i32 %i.foo, %.2401.i           ; 3 uses
  %i.foq = mul nsw i32 %i.fop, %i.fop
  %i.for = add nuw nsw i32 %i.foq, %i.fnp
  %.not427.i = icmp samesign ugt i32 %i.for, %i.feu
  br i1 %.not427.i, label %.loopexit.i1148, label %.preheader.i1153

.preheader.i1153:                                 ; preds = %bb.aef
  %i.fos = sitofp i32 %i.fop to float             ; 5 uses
  %i.fot = call noundef float @llvm.fmuladd.f32(float %i.fos, float %i.fos, float %i.fnr) ; 5 uses
  %i.fou = call nnan float @llvm.fmuladd.f32(float %i.fot, float %i.fot, float 1.000000e+00)
  %i.fov = fdiv nnan float 1.000000e+00, %i.fou   ; 3 uses
  %i.fow = getelementptr inbounds nuw i8, ptr %.sink.i512.i, i64 %indvars.iv.i1147 ; 3 uses
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fom, i64 1 ; 3 uses
  %i.foy = load i32, ptr %i.fev, align 4, !tbaa !148
  %i.foz = icmp slt i32 %i.foy, 2                 ; 22 uses
  %i.fpa = load ptr, ptr %i.few, align 8, !tbaa !149 ; 22 uses
  %i.fpb = load i64, ptr %i.fex, align 8          ; 22 uses
  %i.fpc = mul i64 %i.fpb, %i.fnu
  %.sink.idx.i555.i = select i1 %i.foz, i64 0, i64 %i.fpc
  %.sink.i556.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i555.i
  %i.fpd = getelementptr inbounds [3 x i8], ptr %.sink.i556.i, i64 %i.fof ; 3 uses
  %gep1907 = getelementptr i8, ptr %invariant.gep1906, i64 %indvars.iv.i1147 ; 3 uses
  %i.fpe = getelementptr inbounds i8, ptr %.sink.i510.i, i64 %i.fof ; 3 uses
  %i.fpf = add nsw i64 %indvars.iv.i1147, %.neg425.i ; 3 uses
  %i.fpg = load i8, ptr %i.fow, align 1, !tbaa !21 ; 2 uses
  %.not428.i = icmp eq i8 %i.fpg, 2
  %i.fph = load i8, ptr %gep1907, align 1, !tbaa !21 ; 2 uses
  %.not429.i = icmp eq i8 %i.fph, 2               ; 2 uses
  br i1 %.not428.i, label %bb.aej, label %bb.aeg

bb.aeg:                                           ; preds = %.preheader.i1153
  %i.fpi = mul i64 %i.fpb, %i.fnw
  %.sink.idx.i523.i = select i1 %i.foz, i64 0, i64 %i.fpi
  %.sink.i524.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i523.i
  %i.fpj = getelementptr inbounds [3 x i8], ptr %.sink.i524.i, i64 %i.foi
  %i.fpk = load i8, ptr %i.fpj, align 1, !tbaa !21
  %i.fpl = zext i8 %i.fpk to i32
  %i.fpm = mul i64 %i.fpb, %i.fnx
  %.sink.idx.i525.i = select i1 %i.foz, i64 0, i64 %i.fpm
  %.sink.i526.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i525.i
  %i.fpn = getelementptr inbounds [3 x i8], ptr %.sink.i526.i, i64 %i.foi
  %i.fpo = load i8, ptr %i.fpn, align 1, !tbaa !21
  %i.fpp = zext i8 %i.fpo to i32                  ; 2 uses
  %i.fpq = sub nsw i32 %i.fpl, %i.fpp
  %i.fpr = call i32 @llvm.abs.i32(i32 %i.fpq, i1 true) ; 2 uses
  br i1 %.not429.i, label %bb.aei, label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  %i.fps = mul i64 %i.fpb, %i.fnz
  %.sink.idx.i521.i = select i1 %i.foz, i64 0, i64 %i.fps
  %.sink.i522.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i521.i
  %i.fpt = getelementptr inbounds [3 x i8], ptr %.sink.i522.i, i64 %i.foi
  %i.fpu = load i8, ptr %i.fpt, align 1, !tbaa !21
  %i.fpv = zext i8 %i.fpu to i32
  %i.fpw = sub nsw i32 %i.fpp, %i.fpv
  %i.fpx = call i32 @llvm.abs.i32(i32 %i.fpw, i1 true)
  %i.fpy = add nuw nsw i32 %i.fpx, %i.fpr
  %i.fpz = uitofp nneg i32 %i.fpy to float
  br label %bb.ael

bb.aei:                                           ; preds = %bb.aeg
  %i.fqa = uitofp nneg i32 %i.fpr to float
  %i.fqb = fmul nnan float %i.fqa, 2.000000e+00
  br label %bb.ael

bb.aej:                                           ; preds = %.preheader.i1153
  br i1 %.not429.i, label %bb.ael, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  %i.fqc = mul i64 %i.fpb, %i.fnx
  %.sink.idx.i529.i = select i1 %i.foz, i64 0, i64 %i.fqc
  %.sink.i530.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i529.i
  %i.fqd = getelementptr inbounds [3 x i8], ptr %.sink.i530.i, i64 %i.foi
  %i.fqe = load i8, ptr %i.fqd, align 1, !tbaa !21
  %i.fqf = zext i8 %i.fqe to i32
  %i.fqg = mul i64 %i.fpb, %i.fnz
  %.sink.idx.i531.i = select i1 %i.foz, i64 0, i64 %i.fqg
  %.sink.i532.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i531.i
  %i.fqh = getelementptr inbounds [3 x i8], ptr %.sink.i532.i, i64 %i.foi
  %i.fqi = load i8, ptr %i.fqh, align 1, !tbaa !21
  %i.fqj = zext i8 %i.fqi to i32
  %i.fqk = sub nsw i32 %i.fqf, %i.fqj
  %i.fql = call i32 @llvm.abs.i32(i32 %i.fqk, i1 true)
  %i.fqm = uitofp nneg i32 %i.fql to float
  %i.fqn = fmul nnan float %i.fqm, 2.000000e+00
  br label %bb.ael

bb.ael:                                           ; preds = %bb.aek, %bb.aej, %bb.aei, %bb.aeh
  %.sroa.0671.0.i = phi float [ %i.fpz, %bb.aeh ], [ %i.fqn, %bb.aek ], [ %i.fqb, %bb.aei ], [ 0.000000e+00, %bb.aej ] ; 3 uses
  %i.fqo = load i8, ptr %i.fox, align 1, !tbaa !21
  %.not431.i = icmp eq i8 %i.fqo, 2
  %i.fqp = load i8, ptr %i.fpe, align 1, !tbaa !21
  %.not432.i = icmp eq i8 %i.fqp, 2               ; 2 uses
  br i1 %.not431.i, label %bb.aep, label %bb.aem

bb.aem:                                           ; preds = %bb.ael
  %i.fqq = mul i64 %i.fpb, %i.foa
  %.sink.idx.i545.i = select i1 %i.foz, i64 0, i64 %i.fqq
  %.sink.i546.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i545.i ; 2 uses
  %i.fqr = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i, i64 %i.fpf
  %i.fqs = load i8, ptr %i.fqr, align 1, !tbaa !21
  %i.fqt = zext i8 %i.fqs to i32
  %i.fqu = getelementptr [3 x i8], ptr %.sink.i546.i, i64 %i.foi ; 2 uses
  %i.fqv = load i8, ptr %i.fqu, align 1, !tbaa !21
  %i.fqw = zext i8 %i.fqv to i32                  ; 2 uses
  %i.fqx = sub nsw i32 %i.fqt, %i.fqw
  %i.fqy = call i32 @llvm.abs.i32(i32 %i.fqx, i1 true) ; 2 uses
  br i1 %.not432.i, label %bb.aeo, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  %i.fqz = getelementptr i8, ptr %i.fqu, i64 -3
  %i.fra = load i8, ptr %i.fqz, align 1, !tbaa !21
  %i.frb = zext i8 %i.fra to i32
  %i.frc = sub nsw i32 %i.fqw, %i.frb
  %i.frd = call i32 @llvm.abs.i32(i32 %i.frc, i1 true)
  %i.fre = add nuw nsw i32 %i.frd, %i.fqy
  %i.frf = uitofp nneg i32 %i.fre to float
  br label %bb.aer

bb.aeo:                                           ; preds = %bb.aem
  %i.frg = uitofp nneg i32 %i.fqy to float
  %i.frh = fmul nnan float %i.frg, 2.000000e+00
  br label %bb.aer

bb.aep:                                           ; preds = %bb.ael
  br i1 %.not432.i, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.fri = mul i64 %i.fpb, %i.foa
  %.sink.idx.i551.i = select i1 %i.foz, i64 0, i64 %i.fri
  %.sink.i552.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i551.i
  %i.frj = getelementptr [3 x i8], ptr %.sink.i552.i, i64 %i.foi ; 2 uses
  %i.frk = load i8, ptr %i.frj, align 1, !tbaa !21
  %i.frl = zext i8 %i.frk to i32
  %i.frm = getelementptr i8, ptr %i.frj, i64 -3
  %i.frn = load i8, ptr %i.frm, align 1, !tbaa !21
  %i.fro = zext i8 %i.frn to i32
  %i.frp = sub nsw i32 %i.frl, %i.fro
  %i.frq = call i32 @llvm.abs.i32(i32 %i.frp, i1 true)
  %i.frr = uitofp nneg i32 %i.frq to float
  %i.frs = fmul nnan float %i.frr, 2.000000e+00
  br label %bb.aer

bb.aer:                                           ; preds = %bb.aeq, %bb.aep, %bb.aeo, %bb.aen
  %.sroa.12672.0.i = phi float [ %i.frf, %bb.aen ], [ %i.frs, %bb.aeq ], [ %i.frh, %bb.aeo ], [ 0.000000e+00, %bb.aep ] ; 3 uses
  %i.frt = fneg float %.sroa.0671.0.i
  %i.fru = fmul float %.sroa.12672.0.i, %i.fnq
  %i.frv = call noundef float @llvm.fmuladd.f32(float %i.fos, float %i.frt, float %i.fru) ; 2 uses
  %i.frw = call float @llvm.fabs.f32(float %i.frv)
  %i.frx = fpext float %i.frw to double
  %i.fry = fcmp ugt double %i.frx, 1.000000e-02
  br i1 %i.fry, label %bb.aes, label %bb.aet

bb.aes:                                           ; preds = %bb.aer
  %i.frz = fmul float %.sroa.12672.0.i, %.sroa.12672.0.i
  %i.fsa = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i, float %.sroa.0671.0.i, float %i.frz)
  %i.fsb = fmul float %i.fot, %i.fsa
  %i.fsc = call noundef float @sqrtf(float noundef %i.fsb) #20
  %i.fsd = fdiv float %i.frv, %i.fsc
  %i.fse = call float @llvm.fabs.f32(float %i.fsd)
  %.pre798.i = load i8, ptr %i.fow, align 1, !tbaa !21
  %.pre1970 = load i8, ptr %gep1907, align 1, !tbaa !21
  br label %bb.aet

bb.aet:                                           ; preds = %bb.aes, %bb.aer
  %i.fsf = phi i8 [ %.pre1970, %bb.aes ], [ %i.fph, %bb.aer ] ; 2 uses
  %i.fsg = phi i8 [ %.pre798.i, %bb.aes ], [ %i.fpg, %bb.aer ] ; 2 uses
  %.0390.i = phi float [ %i.fse, %bb.aes ], [ f0x358637BD, %bb.aer ]
  %i.fsh = fmul float %i.fov, %.0390.i            ; 2 uses
  %i.fsi = load i8, ptr %i.fpd, align 1, !tbaa !21
  %i.fsj = uitofp i8 %i.fsi to float
  %i.fsk = call float @llvm.fmuladd.f32(float %i.fsh, float %i.fsj, float %.sroa.0789.2.i)
  %i.fsl = fadd float %.sroa.0.2.i1146, %i.fsh
  %.not428.1.i = icmp eq i8 %i.fsg, 2
  %.not429.1.i = icmp eq i8 %i.fsf, 2             ; 2 uses
  br i1 %.not428.1.i, label %bb.aex, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.fsm = mul i64 %i.fpb, %i.fnw
  %.sink.idx.i523.1.i = select i1 %i.foz, i64 0, i64 %i.fsm
  %.sink.i524.1.i = getelementptr inbounds nuw i8, ptr %i.fpa, i64 %.sink.idx.i523.1.i
  %i.fsn = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i, i64 %i.foi
  %i.fso = getelementptr inbounds nuw i8, ptr %i.fsn, i64 1
  %i.fsp = load i8, ptr %i.fso, align 1, !tbaa !21
  %i.fsq = zext i8 %i.fsp to i32
end_hunk_6
begin_hunk_7_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

bb.agm:                                           ; preds = %bb.agl
  %i.gcb = fadd double %i.gbh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i

bb.agn:                                           ; preds = %bb.agl
  %i.gcc = fadd double %i.gbj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i: ; preds = %bb.agn, %bb.agm, %bb.agk, %bb.agj, %bb.agi
  %.not31.i587.i = phi i1 [ false, %bb.agi ], [ %i.gbz, %bb.agj ], [ true, %bb.agk ], [ false, %bb.agm ], [ true, %bb.agn ] ; 2 uses
  %.0.i576.i = phi double [ %i.gbs, %bb.agi ], [ %i.gby, %bb.agj ], [ %i.gca, %bb.agk ], [ %i.gcb, %bb.agm ], [ %i.gcc, %bb.agn ]
  %i.gcd = fptrunc double %.0.i576.i to float     ; 2 uses
  %i.gce = add nuw nsw i32 %.5407.fr.i, 1
  %i.gcf = zext nneg i32 %i.gce to i64            ; 2 uses
  %i.gcg = mul i64 %i.gax, %i.gcf
  %.sink.idx.i.i578.i = select i1 %i.gav, i64 0, i64 %i.gcg
  %.sink.i.i579.i = getelementptr inbounds nuw i8, ptr %i.gaw, i64 %.sink.idx.i.i578.i
  %i.gch = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i579.i, i64 %i.gao
  %i.gci = load float, ptr %i.gch, align 4, !tbaa !46 ; 3 uses
  %i.gcj = fpext float %i.gci to double           ; 8 uses
  %i.gck = fcmp ogt float %i.gci, %i.gbg
  %i.gcl = select i1 %i.gck, double %i.gbh, double %i.gcj ; 2 uses
  %i.gcm = mul i64 %i.gal, %i.gcf
  %.sink.idx.i35.i582.i = select i1 %i.gaj, i64 0, i64 %i.gcm
  %.sink.i36.i583.i = getelementptr inbounds nuw i8, ptr %i.gak, i64 %.sink.idx.i35.i582.i
  %i.gcn = getelementptr inbounds nuw i8, ptr %.sink.i36.i583.i, i64 %i.gao ; 2 uses
  %i.gco = load i8, ptr %i.gcn, align 1, !tbaa !21
  %.not.i584.i = icmp eq i8 %i.gco, 2
  br i1 %.not.i584.i, label %bb.agt, label %bb.ago

bb.ago:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i
  br i1 %.not31.i587.i, label %bb.ags, label %bb.agp

bb.agp:                                           ; preds = %bb.ago
  %i.gcp = fsub double %i.gcj, %i.gbh             ; 3 uses
  %i.gcq = call double @llvm.fabs.f64(double %i.gcp)
  %i.gcr = fcmp ult double %i.gcq, 1.000000e+00
  br i1 %i.gcr, label %bb.agr, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.gcs = fadd double %i.gcl, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agr:                                           ; preds = %bb.agp
  %i.gct = fadd double %i.gbh, %i.gcj
  %i.gcu = fneg double %i.gcp
  %i.gcv = call double @llvm.fmuladd.f64(double %i.gcu, double %i.gcp, double 2.000000e+00)
  %i.gcw = call double @sqrt(double noundef %i.gcv) #20
  %i.gcx = fadd double %i.gct, %i.gcw
  %i.gcy = fmul double %i.gcx, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.ags:                                           ; preds = %bb.ago
  %i.gcz = fadd double %i.gcj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agt:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i
  br i1 %.not31.i587.i, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.gda = fadd double %i.gbh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agv:                                           ; preds = %bb.agt
  %i.gdb = fadd double %i.gcl, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i: ; preds = %bb.agv, %bb.agu, %bb.ags, %bb.agr, %bb.agq
  %.0.i588.i = phi double [ %i.gcs, %bb.agq ], [ %i.gcy, %bb.agr ], [ %i.gcz, %bb.ags ], [ %i.gda, %bb.agu ], [ %i.gdb, %bb.agv ]
  %i.gdc = fptrunc double %.0.i588.i to float     ; 2 uses
  %i.gdd = add nuw nsw i32 %.5.i1109, 1
  %i.gde = zext nneg i32 %i.gdd to i64            ; 2 uses
  %i.gdf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.gde
  %i.gdg = load float, ptr %i.gdf, align 4, !tbaa !46 ; 3 uses
  %i.gdh = fpext float %i.gdg to double           ; 8 uses
  %i.gdi = fcmp ogt float %i.gbb, %i.gdg
  %i.gdj = select i1 %i.gdi, double %i.gdh, double %i.gbc ; 2 uses
  %i.gdk = load i8, ptr %i.gbl, align 1, !tbaa !21
  %.not.i596.i = icmp eq i8 %i.gdk, 2
  %i.gdl = getelementptr inbounds nuw i8, ptr %.sink.i565.i, i64 %i.gde ; 2 uses
  %i.gdm = load i8, ptr %i.gdl, align 1, !tbaa !21
  %.not31.i599.i = icmp eq i8 %i.gdm, 2           ; 2 uses
  br i1 %.not.i596.i, label %bb.ahb, label %bb.agw

bb.agw:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i
  br i1 %.not31.i599.i, label %bb.aha, label %bb.agx

bb.agx:                                           ; preds = %bb.agw
  %i.gdn = fsub double %i.gbc, %i.gdh             ; 3 uses
  %i.gdo = call double @llvm.fabs.f64(double %i.gdn)
  %i.gdp = fcmp ult double %i.gdo, 1.000000e+00
  br i1 %i.gdp, label %bb.agz, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  %i.gdq = fadd double %i.gdj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.agz:                                           ; preds = %bb.agx
  %i.gdr = fadd double %i.gbc, %i.gdh
  %i.gds = fneg double %i.gdn
  %i.gdt = call double @llvm.fmuladd.f64(double %i.gds, double %i.gdn, double 2.000000e+00)
  %i.gdu = call double @sqrt(double noundef %i.gdt) #20
  %i.gdv = fadd double %i.gdr, %i.gdu
  %i.gdw = fmul double %i.gdv, 5.000000e-01
  %.pr708.pre.i = load i8, ptr %i.gdl, align 1, !tbaa !21
  %i.gdx = icmp eq i8 %.pr708.pre.i, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.aha:                                           ; preds = %bb.agw
  %i.gdy = fadd double %i.gbc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.ahb:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i
  br i1 %.not31.i599.i, label %bb.ahd, label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb
  %i.gdz = fadd double %i.gdh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.ahd:                                           ; preds = %bb.ahb
  %i.gea = fadd double %i.gdj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i: ; preds = %bb.ahd, %bb.ahc, %bb.aha, %bb.agz, %bb.agy
  %.not31.i611.i = phi i1 [ true, %bb.ahd ], [ true, %bb.aha ], [ false, %bb.ahc ], [ %i.gdx, %bb.agz ], [ false, %bb.agy ] ; 2 uses
  %.0.i600.i = phi double [ %i.gea, %bb.ahd ], [ %i.gdy, %bb.aha ], [ %i.gdz, %bb.ahc ], [ %i.gdw, %bb.agz ], [ %i.gdq, %bb.agy ]
  %i.geb = fptrunc double %.0.i600.i to float     ; 2 uses
  %i.gec = fcmp ogt float %i.gci, %i.gdg
  %i.ged = select i1 %i.gec, double %i.gdh, double %i.gcj ; 2 uses
  %i.gee = load i8, ptr %i.gcn, align 1, !tbaa !21
  %.not.i608.i = icmp eq i8 %i.gee, 2
  br i1 %.not.i608.i, label %bb.ahj, label %bb.ahe

bb.ahe:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i
  br i1 %.not31.i611.i, label %bb.ahi, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  %i.gef = fsub double %i.gcj, %i.gdh             ; 3 uses
  %i.geg = call double @llvm.fabs.f64(double %i.gef)
  %i.geh = fcmp ult double %i.geg, 1.000000e+00
  br i1 %i.geh, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.gei = fadd double %i.ged, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahh:                                           ; preds = %bb.ahf
  %i.gej = fadd double %i.gcj, %i.gdh
  %i.gek = fneg double %i.gef
  %i.gel = call double @llvm.fmuladd.f64(double %i.gek, double %i.gef, double 2.000000e+00)
  %i.gem = call double @sqrt(double noundef %i.gel) #20
  %i.gen = fadd double %i.gej, %i.gem
  %i.geo = fmul double %i.gen, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahi:                                           ; preds = %bb.ahe
  %i.gep = fadd double %i.gcj, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i
  br i1 %.not31.i611.i, label %bb.ahl, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.geq = fadd double %i.gdh, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahl:                                           ; preds = %bb.ahj
  %i.ger = fadd double %i.ged, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i: ; preds = %bb.ahl, %bb.ahk, %bb.ahi, %bb.ahh, %bb.ahg
  %.0.i612.i = phi double [ %i.gei, %bb.ahg ], [ %i.geo, %bb.ahh ], [ %i.gep, %bb.ahi ], [ %i.geq, %bb.ahk ], [ %i.ger, %bb.ahl ]
  %i.ges = fptrunc double %.0.i612.i to float     ; 2 uses
  %i.get = fcmp ogt float %i.gcd, %i.gdc
  %i.geu = select i1 %i.get, float %i.gdc, float %i.gcd ; 2 uses
  %i.gev = fcmp ogt float %i.geb, %i.ges
  %i.gew = select i1 %i.gev, float %i.ges, float %i.geb ; 2 uses
  %i.gex = fcmp ogt float %i.geu, %i.gew
  %i.gey = select i1 %i.gex, float %i.gew, float %i.geu ; 2 uses
  %i.gez = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.gao
  store float %i.gey, ptr %i.gez, align 4, !tbaa !46
  %i.gfa = add nuw nsw i32 %.5407.fr.i, %i.dp
  %i.gfb = add nsw i32 %i.gag, -2
  %i.gfc = sub nsw i32 %.5.i1109, %i.dp
  %i.gfd = add nuw nsw i32 %.5.i1109, %i.dp
  %i.gfe = add nsw i32 %i.gah, -2
  %i.gff = add nsw i32 %i.gag, -1
  %i.gfg = add nsw i32 %i.gah, -1
  %i.gfh = sub nsw i32 %.5407.fr.i, %i.dp
  %i.gfi = load i64, ptr %i.fdv, align 8          ; 3 uses
  br label %.lr.ph.i1114

.lr.ph.i1114:                                     ; preds = %._crit_edge.i1116, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i
  %.0386740.i = phi float [ %.us-phi724.i, %._crit_edge.i1116 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 3 uses
  %.0387739.i = phi float [ %.us-phi.i1117, %._crit_edge.i1116 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 3 uses
  %.1398738.i = phi i32 [ %i.gfw, %._crit_edge.i1116 ], [ %i.gfh, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 10 uses
  %i.gfj = add nsw i32 %.1398738.i, -1            ; 3 uses
  %i.gfk = icmp eq i32 %.1398738.i, 1
  %i.gfl = zext i1 %i.gfk to i32
  %i.gfm = add nuw nsw i32 %i.gfj, %i.gfl         ; 2 uses
  %i.gfn = icmp eq i32 %.1398738.i, %i.gfb
  %.neg.i1115 = sext i1 %i.gfn to i32             ; 2 uses
  %i.gfo = add i32 %i.gfj, %.neg.i1115
  %i.gfp = icmp sgt i32 %.1398738.i, 0
  %i.gfq = zext nneg i32 %.1398738.i to i64
  %i.gfr = sub nsw i32 %.1398738.i, %.5407.fr.i   ; 2 uses
  %i.gfs = mul nsw i32 %i.gfr, %i.gfr
  %i.gft = sub nsw i32 %.5407.fr.i, %.1398738.i
  %i.gfu = sitofp i32 %i.gft to float             ; 3 uses
  %i.gfv = fmul nnan float %i.gfu, %i.gfu
  %i.gfw = add i32 %.1398738.i, 1                 ; 3 uses
  %i.gfx = zext nneg i32 %i.gfw to i64
  %i.gfy = zext nneg i32 %i.gfj to i64            ; 2 uses
  %i.gfz = add i32 %.1398738.i, %.neg.i1115
  %i.gga = sext i32 %i.gfz to i64
  %i.ggb = sext i32 %i.gfo to i64                 ; 2 uses
  %i.ggc = add nsw i32 %i.gfm, -1
  %i.ggd = sext i32 %i.ggc to i64                 ; 2 uses
  %i.gge = sext i32 %i.gfm to i64                 ; 2 uses
  br i1 %i.gfp, label %.lr.ph.split.i1119, label %._crit_edge.i1116

.lr.ph.split.i1119:                               ; preds = %.lr.ph.i1114
  %i.ggf = icmp slt i32 %.1398738.i, %i.gff
  %.fr736.i = freeze i1 %i.ggf
  br i1 %.fr736.i, label %.lr.ph.split.split.i1120.preheader, label %._crit_edge.i1116

.lr.ph.split.split.i1120.preheader:               ; preds = %.lr.ph.split.i1119
  %i.ggg = mul i64 %i.gfi, %i.gfq
  %.sink.idx.i616.i = select i1 %i.gaj, i64 0, i64 %i.ggg
  %.sink.i617.i = getelementptr inbounds nuw i8, ptr %i.gak, i64 %.sink.idx.i616.i ; 2 uses
  %i.ggh = mul i64 %i.gfi, %i.gfx
  %.sink.idx.i618.i = select i1 %i.gaj, i64 0, i64 %i.ggh
  %.sink.i619.i = getelementptr inbounds nuw i8, ptr %i.gak, i64 %.sink.idx.i618.i
  %i.ggi = mul i64 %i.gfi, %i.gfy
  %.sink.idx.i634.i = select i1 %i.gaj, i64 0, i64 %i.ggi
  %.sink.i635.i = getelementptr inbounds nuw i8, ptr %i.gak, i64 %.sink.idx.i634.i
  br label %.lr.ph.split.split.i1120

.lr.ph.split.split.i1120:                         ; preds = %.lr.ph.split.split.i1120.preheader, %bb.aid
  %.1722.i = phi float [ %.2.i1121, %bb.aid ], [ %.0386740.i, %.lr.ph.split.split.i1120.preheader ] ; 4 uses
  %.1388721.i = phi float [ %.2389.i, %bb.aid ], [ %.0387739.i, %.lr.ph.split.split.i1120.preheader ] ; 4 uses
  %.1396719.i = phi i32 [ %i.glm, %bb.aid ], [ %i.gfc, %.lr.ph.split.split.i1120.preheader ] ; 11 uses
  %i.ggj = add nsw i32 %.1396719.i, -1            ; 2 uses
  %i.ggk = icmp eq i32 %.1396719.i, 1
  %i.ggl = zext i1 %i.ggk to i32
  %i.ggm = add nuw nsw i32 %i.ggj, %i.ggl         ; 4 uses
  %i.ggn = icmp eq i32 %.1396719.i, %i.gfe
  %.neg411.i = sext i1 %i.ggn to i32
  %i.ggo = icmp sgt i32 %.1396719.i, 0
  %i.ggp = icmp slt i32 %.1396719.i, %i.gfg
  %or.cond771.i = select i1 %i.ggo, i1 %i.ggp, i1 false
  br i1 %or.cond771.i, label %bb.ahm, label %bb.aid

bb.ahm:                                           ; preds = %.lr.ph.split.split.i1120
  %i.ggq = zext nneg i32 %.1396719.i to i64       ; 3 uses
  %i.ggr = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.ggq ; 2 uses
  %i.ggs = load i8, ptr %i.ggr, align 1, !tbaa !21
  %.not412.i = icmp eq i8 %i.ggs, 2
  br i1 %.not412.i, label %bb.aid, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  %i.ggt = sub nsw i32 %.1396719.i, %.5.i1109     ; 2 uses
  %i.ggu = mul nsw i32 %i.ggt, %i.ggt
  %i.ggv = add nuw nsw i32 %i.ggu, %i.gfs
  %.not413.i = icmp samesign ugt i32 %i.ggv, %i.feb
  br i1 %.not413.i, label %bb.aid, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.ggw = sub nsw i32 %.5.i1109, %.1396719.i
  %i.ggx = sitofp i32 %i.ggw to float             ; 3 uses
  %i.ggy = call noundef float @llvm.fmuladd.f32(float %i.ggx, float %i.ggx, float %i.gfv) ; 3 uses
  %i.ggz = call nnan float @llvm.fmuladd.f32(float %i.ggy, float %i.ggy, float 1.000000e+00)
  %i.gha = fdiv nnan float 1.000000e+00, %i.ggz
  %i.ghb = getelementptr inbounds nuw i8, ptr %.sink.i619.i, i64 %i.ggq
  %i.ghc = load i8, ptr %i.ghb, align 1, !tbaa !21
  %.not414.i = icmp eq i8 %i.ghc, 2
  %i.ghd = getelementptr inbounds nuw i8, ptr %.sink.i635.i, i64 %i.ggq
  %i.ghe = load i8, ptr %i.ghd, align 1, !tbaa !21
  %.not415.i = icmp eq i8 %i.ghe, 2               ; 2 uses
  br i1 %.not414.i, label %bb.ahs, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  %i.ghf = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.ghg = icmp slt i32 %i.ghf, 2                 ; 3 uses
  %i.ghh = load ptr, ptr %i.fed, align 8, !tbaa !149 ; 3 uses
  %i.ghi = load i64, ptr %i.fee, align 8          ; 3 uses
  %i.ghj = mul i64 %i.ghi, %i.gga
  %.sink.idx.i630.i = select i1 %i.ghg, i64 0, i64 %i.ghj
  %.sink.i631.i = getelementptr inbounds nuw i8, ptr %i.ghh, i64 %.sink.idx.i630.i
  %i.ghk = sext i32 %i.ggm to i64                 ; 3 uses
  %i.ghl = getelementptr inbounds i8, ptr %.sink.i631.i, i64 %i.ghk
  %i.ghm = load i8, ptr %i.ghl, align 1, !tbaa !21
  %i.ghn = zext i8 %i.ghm to i32
  %i.gho = mul i64 %i.ghi, %i.ggb
  %.sink.idx.i632.i = select i1 %i.ghg, i64 0, i64 %i.gho
  %.sink.i633.i = getelementptr inbounds nuw i8, ptr %i.ghh, i64 %.sink.idx.i632.i
  %i.ghp = getelementptr inbounds i8, ptr %.sink.i633.i, i64 %i.ghk
  %i.ghq = load i8, ptr %i.ghp, align 1, !tbaa !21
  %i.ghr = zext i8 %i.ghq to i32                  ; 2 uses
  %i.ghs = sub nsw i32 %i.ghn, %i.ghr
  %i.ght = call i32 @llvm.abs.i32(i32 %i.ghs, i1 true) ; 2 uses
  br i1 %.not415.i, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp
  %i.ghu = mul i64 %i.ghi, %i.ggd
  %.sink.idx.i628.i = select i1 %i.ghg, i64 0, i64 %i.ghu
  %.sink.i629.i = getelementptr inbounds nuw i8, ptr %i.ghh, i64 %.sink.idx.i628.i
  %i.ghv = getelementptr inbounds i8, ptr %.sink.i629.i, i64 %i.ghk
  %i.ghw = load i8, ptr %i.ghv, align 1, !tbaa !21
  %i.ghx = zext i8 %i.ghw to i32
  %i.ghy = sub nsw i32 %i.ghr, %i.ghx
  %i.ghz = call i32 @llvm.abs.i32(i32 %i.ghy, i1 true)
  %i.gia = add nuw nsw i32 %i.ghz, %i.ght
  %i.gib = uitofp nneg i32 %i.gia to float
  br label %bb.ahu

bb.ahr:                                           ; preds = %bb.ahp
  %i.gic = uitofp nneg i32 %i.ght to float
  %i.gid = fmul nnan float %i.gic, 2.000000e+00
  br label %bb.ahu

bb.ahs:                                           ; preds = %bb.aho
  br i1 %.not415.i, label %bb.ahu, label %bb.aht

bb.aht:                                           ; preds = %bb.ahs
  %i.gie = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.gif = icmp slt i32 %i.gie, 2                 ; 2 uses
  %i.gig = load ptr, ptr %i.fed, align 8, !tbaa !149 ; 2 uses
  %i.gih = load i64, ptr %i.fee, align 8          ; 2 uses
  %i.gii = mul i64 %i.gih, %i.ggb
  %.sink.idx.i636.i = select i1 %i.gif, i64 0, i64 %i.gii
  %.sink.i637.i = getelementptr inbounds nuw i8, ptr %i.gig, i64 %.sink.idx.i636.i
  %i.gij = sext i32 %i.ggm to i64                 ; 2 uses
  %i.gik = getelementptr inbounds i8, ptr %.sink.i637.i, i64 %i.gij
  %i.gil = load i8, ptr %i.gik, align 1, !tbaa !21
  %i.gim = zext i8 %i.gil to i32
  %i.gin = mul i64 %i.gih, %i.ggd
  %.sink.idx.i638.i = select i1 %i.gif, i64 0, i64 %i.gin
  %.sink.i639.i = getelementptr inbounds nuw i8, ptr %i.gig, i64 %.sink.idx.i638.i
  %i.gio = getelementptr inbounds i8, ptr %.sink.i639.i, i64 %i.gij
  %i.gip = load i8, ptr %i.gio, align 1, !tbaa !21
  %i.giq = zext i8 %i.gip to i32
  %i.gir = sub nsw i32 %i.gim, %i.giq
  %i.gis = call i32 @llvm.abs.i32(i32 %i.gir, i1 true)
  %i.git = uitofp nneg i32 %i.gis to float
  %i.giu = fmul nnan float %i.git, 2.000000e+00
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht, %bb.ahs, %bb.ahr, %bb.ahq
  %.sroa.0668.0.i = phi float [ %i.gib, %bb.ahq ], [ %i.giu, %bb.aht ], [ %i.gid, %bb.ahr ], [ 0.000000e+00, %bb.ahs ] ; 3 uses
  %i.giv = getelementptr inbounds nuw i8, ptr %i.ggr, i64 1
  %i.giw = load i8, ptr %i.giv, align 1, !tbaa !21
  %.not417.i = icmp eq i8 %i.giw, 2
  %i.gix = zext nneg i32 %i.ggj to i64            ; 2 uses
  %i.giy = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.gix
  %i.giz = load i8, ptr %i.giy, align 1, !tbaa !21
  %.not418.i = icmp eq i8 %i.giz, 2               ; 2 uses
  br i1 %.not417.i, label %bb.ahy, label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu
  %i.gja = add nsw i32 %.1396719.i, %.neg411.i
  %i.gjb = load i32, ptr %i.fec, align 4, !tbaa !148
  %i.gjc = icmp slt i32 %i.gjb, 2
  %i.gjd = load ptr, ptr %i.fed, align 8, !tbaa !149
  %i.gje = load i64, ptr %i.fee, align 8
  %i.gjf = mul i64 %i.gje, %i.gge
  %.sink.idx.i652.i = select i1 %i.gjc, i64 0, i64 %i.gjf
  %.sink.i653.i = getelementptr inbounds nuw i8, ptr %i.gjd, i64 %.sink.idx.i652.i ; 2 uses
  %i.gjg = zext nneg i32 %i.gja to i64
  %i.gjh = getelementptr inbounds nuw i8, ptr %.sink.i653.i, i64 %i.gjg
  %i.gji = load i8, ptr %i.gjh, align 1, !tbaa !21
  %i.gjj = zext i8 %i.gji to i32
  %i.gjk = sext i32 %i.ggm to i64
  %i.gjl = getelementptr i8, ptr %.sink.i653.i, i64 %i.gjk ; 2 uses
  %i.gjm = load i8, ptr %i.gjl, align 1, !tbaa !21
  %i.gjn = zext i8 %i.gjm to i32                  ; 2 uses
  %i.gjo = sub nsw i32 %i.gjj, %i.gjn
  %i.gjp = call i32 @llvm.abs.i32(i32 %i.gjo, i1 true) ; 2 uses
  br i1 %.not418.i, label %bb.ahx, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  %i.gjq = getelementptr i8, ptr %i.gjl, i64 -1
  %i.gjr = load i8, ptr %i.gjq, align 1, !tbaa !21
  %i.gjs = zext i8 %i.gjr to i32
  %i.gjt = sub nsw i32 %i.gjn, %i.gjs
  %i.gju = call i32 @llvm.abs.i32(i32 %i.gjt, i1 true)
  %i.gjv = add nuw nsw i32 %i.gju, %i.gjp
  %i.gjw = uitofp nneg i32 %i.gjv to float
  br label %bb.aia

bb.ahx:                                           ; preds = %bb.ahv
  %i.gjx = uitofp nneg i32 %i.gjp to float
  %i.gjy = fmul nnan float %i.gjx, 2.000000e+00
  br label %bb.aia

bb.ahy:                                           ; preds = %bb.ahu
  br i1 %.not418.i, label %bb.aia, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  %i.gjz = load i32, ptr %i.fec, align 4, !tbaa !148
end_hunk_7
begin_hunk_8_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.gsb = fsub double %i.gpq, %i.grv             ; 3 uses
  %i.gsc = call double @llvm.fabs.f64(double %i.gsb)
  %i.gsd = fcmp ult double %i.gsc, 1.000000e+00
  br i1 %i.gsd, label %bb.ajh, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  %i.gse = fadd double %i.grx, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303

bb.ajh:                                           ; preds = %bb.ajf
  %i.gsf = fadd double %i.gpq, %i.grv
  %i.gsg = fneg double %i.gsb
  %i.gsh = call double @llvm.fmuladd.f64(double %i.gsg, double %i.gsb, double 2.000000e+00)
  %i.gsi = call double @sqrt(double noundef %i.gsh) #20
  %i.gsj = fadd double %i.gsf, %i.gsi
  %i.gsk = fmul double %i.gsj, 5.000000e-01
  %.pr.pre.i1435 = load i8, ptr %i.grz, align 1, !tbaa !21
  %i.gsl = icmp eq i8 %.pr.pre.i1435, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303

bb.aji:                                           ; preds = %bb.aje
  %i.gsm = fadd double %i.gpq, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303

bb.ajj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit482.i1299
  br i1 %.not31.i492.i1302, label %bb.ajl, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.gsn = fadd double %i.grv, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303

bb.ajl:                                           ; preds = %bb.ajj
  %i.gso = fadd double %i.grx, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303: ; preds = %bb.ajl, %bb.ajk, %bb.aji, %bb.ajh, %bb.ajg
  %.not31.i504.i1304 = phi i1 [ true, %bb.ajl ], [ true, %bb.aji ], [ false, %bb.ajk ], [ %i.gsl, %bb.ajh ], [ false, %bb.ajg ] ; 2 uses
  %.0.i493.i1305 = phi double [ %i.gso, %bb.ajl ], [ %i.gsm, %bb.aji ], [ %i.gsn, %bb.ajk ], [ %i.gsk, %bb.ajh ], [ %i.gse, %bb.ajg ]
  %i.gsp = fptrunc double %.0.i493.i1305 to float ; 2 uses
  %i.gsq = fcmp ogt float %i.gqw, %i.gru
  %i.gsr = select i1 %i.gsq, double %i.grv, double %i.gqx ; 2 uses
  %i.gss = load i8, ptr %i.grb, align 1, !tbaa !21
  %.not.i501.i1306 = icmp eq i8 %i.gss, 2
  br i1 %.not.i501.i1306, label %bb.ajr, label %bb.ajm

bb.ajm:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303
  br i1 %.not31.i504.i1304, label %bb.ajq, label %bb.ajn

bb.ajn:                                           ; preds = %bb.ajm
  %i.gst = fsub double %i.gqx, %i.grv             ; 3 uses
  %i.gsu = call double @llvm.fabs.f64(double %i.gst)
  %i.gsv = fcmp ult double %i.gsu, 1.000000e+00
  br i1 %i.gsv, label %bb.ajp, label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn
  %i.gsw = fadd double %i.gsr, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307

bb.ajp:                                           ; preds = %bb.ajn
  %i.gsx = fadd double %i.gqx, %i.grv
  %i.gsy = fneg double %i.gst
  %i.gsz = call double @llvm.fmuladd.f64(double %i.gsy, double %i.gst, double 2.000000e+00)
  %i.gta = call double @sqrt(double noundef %i.gsz) #20
  %i.gtb = fadd double %i.gsx, %i.gta
  %i.gtc = fmul double %i.gtb, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307

bb.ajq:                                           ; preds = %bb.ajm
  %i.gtd = fadd double %i.gqx, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307

bb.ajr:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1303
  br i1 %.not31.i504.i1304, label %bb.ajt, label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr
  %i.gte = fadd double %i.grv, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307

bb.ajt:                                           ; preds = %bb.ajr
  %i.gtf = fadd double %i.gsr, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307: ; preds = %bb.ajt, %bb.ajs, %bb.ajq, %bb.ajp, %bb.ajo
  %.0.i505.i1308 = phi double [ %i.gsw, %bb.ajo ], [ %i.gtc, %bb.ajp ], [ %i.gtd, %bb.ajq ], [ %i.gte, %bb.ajs ], [ %i.gtf, %bb.ajt ]
  %i.gtg = fptrunc double %.0.i505.i1308 to float ; 2 uses
  %i.gth = fcmp ogt float %i.gqr, %i.grq
  %i.gti = select i1 %i.gth, float %i.grq, float %i.gqr ; 2 uses
  %i.gtj = fcmp ogt float %i.gsp, %i.gtg
  %i.gtk = select i1 %i.gtj, float %i.gtg, float %i.gsp ; 2 uses
  %i.gtl = fcmp ogt float %i.gti, %i.gtk
  %i.gtm = select i1 %i.gtl, float %i.gtk, float %i.gti ; 2 uses
  %i.gtn = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1286, i64 %i.gpc
  store float %i.gtm, ptr %i.gtn, align 4, !tbaa !46
  %i.gto = add nuw nsw i32 %.2404.fr.i1274, %i.dp
  %i.gtp = sub nsw i32 %.2404.fr.i1274, %i.dp
  %i.gtq = load i32, ptr %i.fy, align 8, !tbaa !146 ; 2 uses
  %i.gtr = add nsw i32 %i.gtq, -2
  %i.gts = add nsw i32 %i.gtq, -1
  %i.gtt = add nuw nsw i32 %.2401.i1273, %i.dp
  %i.gtu = sub nsw i32 %.2401.i1273, %i.dp
  %i.gtv = load i32, ptr %i.es, align 4, !tbaa !145 ; 2 uses
  %i.gtw = add nsw i32 %i.gtv, -2
  %i.gtx = add nsw i32 %i.gtv, -1
  %i.gty = sext i32 %i.gtu to i64
  %i.gtz = sext i32 %i.gtx to i64
  %i.gua = zext nneg i32 %i.gtt to i64
  %sext.i1309 = sext i32 %i.gtw to i64
  %i.gub = load i64, ptr %i.gnl, align 8          ; 3 uses
  br label %.lr.ph756.i1310

.preheader712.loopexit.i1327:                     ; preds = %._crit_edge757.i1319
  %i.guc = fpext float %.sroa.0789.4.i1320 to double
  %i.gud = fpext float %.sroa.0.4.i1325 to double
  %i.gue = fdiv double %i.guc, %i.gud
  %i.guf = fpext float %.sroa.6791.4.i1321 to double
  %i.gug = fpext float %.sroa.6.4.i1324 to double
  %i.guh = fdiv double %i.guf, %i.gug
  %i.gui = fpext float %.sroa.9793.4.i1322 to double
  %i.guj = fpext float %.sroa.9.4.i1323 to double
  %i.guk = fdiv double %i.gui, %i.guj
  %i.gul = insertelement <2 x double> poison, double %i.gue, i64 0
  %i.gum = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gul)
  %i.gun = call i32 @llvm.smax.i32(i32 %i.gum, i32 0)
  %i.guo = call i32 @llvm.umin.i32(i32 %i.gun, i32 255)
  %i.gup = trunc nuw i32 %i.guo to i8
  %i.guq = load i32, ptr %i.gns, align 4, !tbaa !148
  %i.gur = icmp slt i32 %i.guq, 2
  %i.gus = load ptr, ptr %i.gnt, align 8, !tbaa !149
  %i.gut = load i64, ptr %i.gnu, align 8
  %i.guu = mul i64 %i.gut, %i.gpm
  %.sink.idx.i557.i1328 = select i1 %i.gur, i64 0, i64 %i.guu
  %.sink.i558.i1329 = getelementptr inbounds nuw i8, ptr %i.gus, i64 %.sink.idx.i557.i1328
  %i.guv = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i1329, i64 %i.gps
  store i8 %i.gup, ptr %i.guv, align 1, !tbaa !21
  %i.guw = insertelement <2 x double> poison, double %i.guh, i64 0
  %i.gux = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.guw)
  %i.guy = call i32 @llvm.smax.i32(i32 %i.gux, i32 0)
  %i.guz = call i32 @llvm.umin.i32(i32 %i.guy, i32 255)
  %i.gva = trunc nuw i32 %i.guz to i8
  %i.gvb = load i32, ptr %i.gns, align 4, !tbaa !148
  %i.gvc = icmp slt i32 %i.gvb, 2
  %i.gvd = load ptr, ptr %i.gnt, align 8, !tbaa !149
  %i.gve = load i64, ptr %i.gnu, align 8
  %i.gvf = mul i64 %i.gve, %i.gpm
  %.sink.idx.i557.1.i1330 = select i1 %i.gvc, i64 0, i64 %i.gvf
  %.sink.i558.1.i1331 = getelementptr inbounds nuw i8, ptr %i.gvd, i64 %.sink.idx.i557.1.i1330
  %i.gvg = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i1331, i64 %i.gps
  %i.gvh = getelementptr inbounds nuw i8, ptr %i.gvg, i64 1
  store i8 %i.gva, ptr %i.gvh, align 1, !tbaa !21
  %i.gvi = insertelement <2 x double> poison, double %i.guk, i64 0
  %i.gvj = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gvi)
  %i.gvk = call i32 @llvm.smax.i32(i32 %i.gvj, i32 0)
  %i.gvl = call i32 @llvm.umin.i32(i32 %i.gvk, i32 255)
  %i.gvm = trunc nuw i32 %i.gvl to i8
  %i.gvn = load i32, ptr %i.gns, align 4, !tbaa !148
  %i.gvo = icmp slt i32 %i.gvn, 2
  %i.gvp = load ptr, ptr %i.gnt, align 8, !tbaa !149
  %i.gvq = load i64, ptr %i.gnu, align 8
  %i.gvr = mul i64 %i.gvq, %i.gpm
  %.sink.idx.i557.2.i1332 = select i1 %i.gvo, i64 0, i64 %i.gvr
  %.sink.i558.2.i1333 = getelementptr inbounds nuw i8, ptr %i.gvp, i64 %.sink.idx.i557.2.i1332
  %i.gvs = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i1333, i64 %i.gps
  %i.gvt = getelementptr inbounds nuw i8, ptr %i.gvs, i64 2
  store i8 %i.gvm, ptr %i.gvt, align 1, !tbaa !21
  %i.gvu = load i32, ptr %i.gnj, align 4, !tbaa !148
  %i.gvv = icmp slt i32 %i.gvu, 2
  %i.gvw = load ptr, ptr %i.gnk, align 8, !tbaa !149
  %i.gvx = load i64, ptr %i.gnl, align 8
  %i.gvy = mul i64 %i.gvx, %i.gpa
  %.sink.idx.i559.i1334 = select i1 %i.gvv, i64 0, i64 %i.gvy
  %.sink.i560.i1335 = getelementptr inbounds nuw i8, ptr %i.gvw, i64 %.sink.idx.i559.i1334
  %i.gvz = getelementptr inbounds nuw i8, ptr %.sink.i560.i1335, i64 %i.gpc
  store i8 1, ptr %i.gvz, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store float %i.gtm, ptr %8, align 4, !tbaa !50
  store i32 %.2404.fr.i1274, ptr %i.gnv, align 4, !tbaa !169
  store i32 %.2401.i1273, ptr %i.gnw, align 4, !tbaa !170
  %i.gwa = load i32, ptr %i.gny, align 8, !tbaa !162
  store i32 %i.gwa, ptr %i.gnx, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mh, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %.noexc1439 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1439:                                       ; preds = %.preheader712.loopexit.i1327
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.gwb = load i32, ptr %i.gny, align 8, !tbaa !162
  %i.gwc = add nsw i32 %i.gwb, 1
  store i32 %i.gwc, ptr %i.gny, align 8, !tbaa !162
  br label %bb.all

.lr.ph756.i1310:                                  ; preds = %._crit_edge757.i1319, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307
  %.sroa.0789.1.i1311 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %.sroa.0789.4.i1320, %._crit_edge757.i1319 ] ; 3 uses
  %.sroa.6791.1.i1312 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %.sroa.6791.4.i1321, %._crit_edge757.i1319 ] ; 3 uses
  %.sroa.9793.1.i1313 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %.sroa.9793.4.i1322, %._crit_edge757.i1319 ] ; 3 uses
  %.sroa.9.1.i1314 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %.sroa.9.4.i1323, %._crit_edge757.i1319 ] ; 3 uses
  %.sroa.6.1.i1315 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %.sroa.6.4.i1324, %._crit_edge757.i1319 ] ; 3 uses
  %.sroa.0.1.i1316 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %.sroa.0.4.i1325, %._crit_edge757.i1319 ] ; 3 uses
  %.0397764.i1317 = phi i32 [ %i.gtp, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1307 ], [ %i.gwp, %._crit_edge757.i1319 ] ; 9 uses
  %i.gwd = add nsw i32 %.0397764.i1317, -1        ; 3 uses
  %i.gwe = icmp eq i32 %.0397764.i1317, 1
  %i.gwf = zext i1 %i.gwe to i32
  %i.gwg = add nuw nsw i32 %i.gwd, %i.gwf         ; 2 uses
  %i.gwh = icmp eq i32 %.0397764.i1317, %i.gtr
  %.neg423.i1318 = sext i1 %i.gwh to i32          ; 2 uses
  %i.gwi = add i32 %i.gwd, %.neg423.i1318
  %i.gwj = icmp sgt i32 %.0397764.i1317, 0
  %i.gwk = zext nneg i32 %.0397764.i1317 to i64
  %i.gwl = sub nsw i32 %.0397764.i1317, %.2404.fr.i1274 ; 3 uses
  %i.gwm = mul nsw i32 %i.gwl, %i.gwl
  %i.gwn = sitofp i32 %i.gwl to float             ; 5 uses
  %i.gwo = fmul nnan float %i.gwn, %i.gwn
  %i.gwp = add i32 %.0397764.i1317, 1             ; 3 uses
  %i.gwq = zext nneg i32 %i.gwp to i64
  %i.gwr = sext i32 %i.gwd to i64                 ; 2 uses
  %i.gws = add i32 %.0397764.i1317, %.neg423.i1318
  %i.gwt = sext i32 %i.gws to i64                 ; 3 uses
  %i.gwu = sext i32 %i.gwi to i64                 ; 6 uses
  %i.gwv = add nsw i32 %i.gwg, -1
  %i.gww = sext i32 %i.gwv to i64                 ; 6 uses
  %i.gwx = sext i32 %i.gwg to i64                 ; 6 uses
  br i1 %i.gwj, label %.lr.ph756.split.i1336, label %._crit_edge757.i1319

.lr.ph756.split.i1336:                            ; preds = %.lr.ph756.i1310
  %i.gwy = icmp slt i32 %.0397764.i1317, %i.gts
  %.fr762.i1337 = freeze i1 %i.gwy
  br i1 %.fr762.i1337, label %.lr.ph756.split.split.i1338.preheader, label %._crit_edge757.i1319

.lr.ph756.split.split.i1338.preheader:            ; preds = %.lr.ph756.split.i1336
  %i.gwz = mul i64 %i.gub, %i.gwk
  %.sink.idx.i509.i1357 = select i1 %i.gox, i64 0, i64 %i.gwz
  %.sink.i510.i1358 = getelementptr inbounds nuw i8, ptr %i.goy, i64 %.sink.idx.i509.i1357 ; 2 uses
  %i.gxa = mul i64 %i.gub, %i.gwq
  %.sink.idx.i511.i1362 = select i1 %i.gox, i64 0, i64 %i.gxa
  %.sink.i512.i1363 = getelementptr inbounds nuw i8, ptr %i.goy, i64 %.sink.idx.i511.i1362
  %i.gxb = mul i64 %i.gub, %i.gwr
  %.sink.idx.i513.i1367 = select i1 %i.gox, i64 0, i64 %i.gxb
  %invariant.gep1904 = getelementptr i8, ptr %i.goy, i64 %.sink.idx.i513.i1367
  br label %.lr.ph756.split.split.i1338

.lr.ph756.split.split.i1338:                      ; preds = %.lr.ph756.split.split.i1338.preheader, %.loopexit.i1348
  %.sroa.0789.2.i1339 = phi float [ %.sroa.0789.3.i1349, %.loopexit.i1348 ], [ %.sroa.0789.1.i1311, %.lr.ph756.split.split.i1338.preheader ] ; 4 uses
  %.sroa.6791.2.i1340 = phi float [ %.sroa.6791.3.i1350, %.loopexit.i1348 ], [ %.sroa.6791.1.i1312, %.lr.ph756.split.split.i1338.preheader ] ; 4 uses
  %.sroa.9793.2.i1341 = phi float [ %.sroa.9793.3.i1351, %.loopexit.i1348 ], [ %.sroa.9793.1.i1313, %.lr.ph756.split.split.i1338.preheader ] ; 4 uses
  %.sroa.9.2.i1342 = phi float [ %.sroa.9.3.i1352, %.loopexit.i1348 ], [ %.sroa.9.1.i1314, %.lr.ph756.split.split.i1338.preheader ] ; 4 uses
  %.sroa.6.2.i1343 = phi float [ %.sroa.6.3.i1353, %.loopexit.i1348 ], [ %.sroa.6.1.i1315, %.lr.ph756.split.split.i1338.preheader ] ; 4 uses
  %.sroa.0.2.i1344 = phi float [ %.sroa.0.3.i1354, %.loopexit.i1348 ], [ %.sroa.0.1.i1316, %.lr.ph756.split.split.i1338.preheader ] ; 4 uses
  %indvars.iv.i1345 = phi i64 [ %indvars.iv.next.i1355, %.loopexit.i1348 ], [ %i.gty, %.lr.ph756.split.split.i1338.preheader ] ; 12 uses
  %i.gxc = add nsw i64 %indvars.iv.i1345, -1      ; 3 uses
  %i.gxd = icmp eq i64 %indvars.iv.i1345, 1
  %i.gxe = zext i1 %i.gxd to i64
  %i.gxf = add nuw nsw i64 %i.gxc, %i.gxe         ; 21 uses
  %i.gxg = icmp eq i64 %indvars.iv.i1345, %sext.i1309
  %.neg425.i1346 = sext i1 %i.gxg to i64
  %i.gxh = icmp sgt i64 %indvars.iv.i1345, 0
  %i.gxi = icmp slt i64 %indvars.iv.i1345, %i.gtz
  %or.cond770.i1347 = select i1 %i.gxh, i1 %i.gxi, i1 false
  br i1 %or.cond770.i1347, label %bb.aju, label %.loopexit.i1348

bb.aju:                                           ; preds = %.lr.ph756.split.split.i1338
  %i.gxj = getelementptr inbounds nuw i8, ptr %.sink.i510.i1358, i64 %indvars.iv.i1345 ; 2 uses
  %i.gxk = load i8, ptr %i.gxj, align 1, !tbaa !21
  %.not426.i1359 = icmp eq i8 %i.gxk, 2
  br i1 %.not426.i1359, label %.loopexit.i1348, label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju
  %i.gxl = trunc nuw nsw i64 %indvars.iv.i1345 to i32
  %i.gxm = sub nsw i32 %i.gxl, %.2401.i1273       ; 3 uses
  %i.gxn = mul nsw i32 %i.gxm, %i.gxm
  %i.gxo = add nuw nsw i32 %i.gxn, %i.gwm
  %.not427.i1360 = icmp samesign ugt i32 %i.gxo, %i.gnr
  br i1 %.not427.i1360, label %.loopexit.i1348, label %.preheader.i1361

.preheader.i1361:                                 ; preds = %bb.ajv
  %i.gxp = sitofp i32 %i.gxm to float             ; 5 uses
  %i.gxq = call noundef float @llvm.fmuladd.f32(float %i.gxp, float %i.gxp, float %i.gwo) ; 5 uses
  %i.gxr = call nnan float @llvm.fmuladd.f32(float %i.gxq, float %i.gxq, float 1.000000e+00)
  %i.gxs = fdiv nnan float 1.000000e+00, %i.gxr   ; 3 uses
  %i.gxt = getelementptr inbounds nuw i8, ptr %.sink.i512.i1363, i64 %indvars.iv.i1345 ; 3 uses
  %i.gxu = getelementptr inbounds nuw i8, ptr %i.gxj, i64 1 ; 3 uses
  %i.gxv = load i32, ptr %i.gns, align 4, !tbaa !148
  %i.gxw = icmp slt i32 %i.gxv, 2                 ; 22 uses
  %i.gxx = load ptr, ptr %i.gnt, align 8, !tbaa !149 ; 22 uses
  %i.gxy = load i64, ptr %i.gnu, align 8          ; 22 uses
  %i.gxz = mul i64 %i.gxy, %i.gwr
  %.sink.idx.i555.i1365 = select i1 %i.gxw, i64 0, i64 %i.gxz
  %.sink.i556.i1366 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i555.i1365
  %i.gya = getelementptr inbounds [3 x i8], ptr %.sink.i556.i1366, i64 %i.gxc ; 3 uses
  %gep1905 = getelementptr i8, ptr %invariant.gep1904, i64 %indvars.iv.i1345 ; 3 uses
  %i.gyb = getelementptr inbounds i8, ptr %.sink.i510.i1358, i64 %i.gxc ; 3 uses
  %i.gyc = add nsw i64 %indvars.iv.i1345, %.neg425.i1346 ; 3 uses
  %i.gyd = load i8, ptr %i.gxt, align 1, !tbaa !21 ; 2 uses
  %.not428.i1369 = icmp eq i8 %i.gyd, 2
  %i.gye = load i8, ptr %gep1905, align 1, !tbaa !21 ; 2 uses
  %.not429.i1370 = icmp eq i8 %i.gye, 2           ; 2 uses
  br i1 %.not428.i1369, label %bb.ajz, label %bb.ajw

bb.ajw:                                           ; preds = %.preheader.i1361
  %i.gyf = mul i64 %i.gxy, %i.gwt
  %.sink.idx.i523.i1371 = select i1 %i.gxw, i64 0, i64 %i.gyf
  %.sink.i524.i1372 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i523.i1371
  %i.gyg = getelementptr inbounds [3 x i8], ptr %.sink.i524.i1372, i64 %i.gxf
  %i.gyh = load i8, ptr %i.gyg, align 1, !tbaa !21
  %i.gyi = zext i8 %i.gyh to i32
  %i.gyj = mul i64 %i.gxy, %i.gwu
  %.sink.idx.i525.i1373 = select i1 %i.gxw, i64 0, i64 %i.gyj
  %.sink.i526.i1374 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i525.i1373
  %i.gyk = getelementptr inbounds [3 x i8], ptr %.sink.i526.i1374, i64 %i.gxf
  %i.gyl = load i8, ptr %i.gyk, align 1, !tbaa !21
  %i.gym = zext i8 %i.gyl to i32                  ; 2 uses
  %i.gyn = sub nsw i32 %i.gyi, %i.gym
  %i.gyo = call i32 @llvm.abs.i32(i32 %i.gyn, i1 true) ; 2 uses
  br i1 %.not429.i1370, label %bb.ajy, label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  %i.gyp = mul i64 %i.gxy, %i.gww
  %.sink.idx.i521.i1375 = select i1 %i.gxw, i64 0, i64 %i.gyp
  %.sink.i522.i1376 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i521.i1375
  %i.gyq = getelementptr inbounds [3 x i8], ptr %.sink.i522.i1376, i64 %i.gxf
  %i.gyr = load i8, ptr %i.gyq, align 1, !tbaa !21
  %i.gys = zext i8 %i.gyr to i32
  %i.gyt = sub nsw i32 %i.gym, %i.gys
  %i.gyu = call i32 @llvm.abs.i32(i32 %i.gyt, i1 true)
  %i.gyv = add nuw nsw i32 %i.gyu, %i.gyo
  %i.gyw = uitofp nneg i32 %i.gyv to float
  br label %bb.akb

bb.ajy:                                           ; preds = %bb.ajw
  %i.gyx = uitofp nneg i32 %i.gyo to float
  %i.gyy = fmul nnan float %i.gyx, 2.000000e+00
  br label %bb.akb

bb.ajz:                                           ; preds = %.preheader.i1361
  br i1 %.not429.i1370, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %bb.ajz
  %i.gyz = mul i64 %i.gxy, %i.gwu
  %.sink.idx.i529.i1431 = select i1 %i.gxw, i64 0, i64 %i.gyz
  %.sink.i530.i1432 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i529.i1431
  %i.gza = getelementptr inbounds [3 x i8], ptr %.sink.i530.i1432, i64 %i.gxf
  %i.gzb = load i8, ptr %i.gza, align 1, !tbaa !21
  %i.gzc = zext i8 %i.gzb to i32
  %i.gzd = mul i64 %i.gxy, %i.gww
  %.sink.idx.i531.i1433 = select i1 %i.gxw, i64 0, i64 %i.gzd
  %.sink.i532.i1434 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i531.i1433
  %i.gze = getelementptr inbounds [3 x i8], ptr %.sink.i532.i1434, i64 %i.gxf
  %i.gzf = load i8, ptr %i.gze, align 1, !tbaa !21
  %i.gzg = zext i8 %i.gzf to i32
  %i.gzh = sub nsw i32 %i.gzc, %i.gzg
  %i.gzi = call i32 @llvm.abs.i32(i32 %i.gzh, i1 true)
  %i.gzj = uitofp nneg i32 %i.gzi to float
  %i.gzk = fmul nnan float %i.gzj, 2.000000e+00
  br label %bb.akb

bb.akb:                                           ; preds = %bb.aka, %bb.ajz, %bb.ajy, %bb.ajx
  %.sroa.0671.0.i1377 = phi float [ %i.gyw, %bb.ajx ], [ %i.gzk, %bb.aka ], [ %i.gyy, %bb.ajy ], [ 0.000000e+00, %bb.ajz ] ; 3 uses
  %i.gzl = load i8, ptr %i.gxu, align 1, !tbaa !21
  %.not431.i1378 = icmp eq i8 %i.gzl, 2
  %i.gzm = load i8, ptr %i.gyb, align 1, !tbaa !21
  %.not432.i1379 = icmp eq i8 %i.gzm, 2           ; 2 uses
  br i1 %.not431.i1378, label %bb.akf, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  %i.gzn = mul i64 %i.gxy, %i.gwx
  %.sink.idx.i545.i1380 = select i1 %i.gxw, i64 0, i64 %i.gzn
  %.sink.i546.i1381 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i545.i1380 ; 2 uses
  %i.gzo = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i1381, i64 %i.gyc
  %i.gzp = load i8, ptr %i.gzo, align 1, !tbaa !21
  %i.gzq = zext i8 %i.gzp to i32
  %i.gzr = getelementptr [3 x i8], ptr %.sink.i546.i1381, i64 %i.gxf ; 2 uses
  %i.gzs = load i8, ptr %i.gzr, align 1, !tbaa !21
  %i.gzt = zext i8 %i.gzs to i32                  ; 2 uses
  %i.gzu = sub nsw i32 %i.gzq, %i.gzt
  %i.gzv = call i32 @llvm.abs.i32(i32 %i.gzu, i1 true) ; 2 uses
  br i1 %.not432.i1379, label %bb.ake, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  %i.gzw = getelementptr i8, ptr %i.gzr, i64 -3
  %i.gzx = load i8, ptr %i.gzw, align 1, !tbaa !21
  %i.gzy = zext i8 %i.gzx to i32
  %i.gzz = sub nsw i32 %i.gzt, %i.gzy
  %i.haa = call i32 @llvm.abs.i32(i32 %i.gzz, i1 true)
  %i.hab = add nuw nsw i32 %i.haa, %i.gzv
  %i.hac = uitofp nneg i32 %i.hab to float
  br label %bb.akh

bb.ake:                                           ; preds = %bb.akc
  %i.had = uitofp nneg i32 %i.gzv to float
  %i.hae = fmul nnan float %i.had, 2.000000e+00
  br label %bb.akh

bb.akf:                                           ; preds = %bb.akb
  br i1 %.not432.i1379, label %bb.akh, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.haf = mul i64 %i.gxy, %i.gwx
  %.sink.idx.i551.i1429 = select i1 %i.gxw, i64 0, i64 %i.haf
  %.sink.i552.i1430 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i551.i1429
  %i.hag = getelementptr [3 x i8], ptr %.sink.i552.i1430, i64 %i.gxf ; 2 uses
  %i.hah = load i8, ptr %i.hag, align 1, !tbaa !21
  %i.hai = zext i8 %i.hah to i32
  %i.haj = getelementptr i8, ptr %i.hag, i64 -3
  %i.hak = load i8, ptr %i.haj, align 1, !tbaa !21
  %i.hal = zext i8 %i.hak to i32
  %i.ham = sub nsw i32 %i.hai, %i.hal
  %i.han = call i32 @llvm.abs.i32(i32 %i.ham, i1 true)
  %i.hao = uitofp nneg i32 %i.han to float
  %i.hap = fmul nnan float %i.hao, 2.000000e+00
  br label %bb.akh

bb.akh:                                           ; preds = %bb.akg, %bb.akf, %bb.ake, %bb.akd
  %.sroa.12672.0.i1382 = phi float [ %i.hac, %bb.akd ], [ %i.hap, %bb.akg ], [ %i.hae, %bb.ake ], [ 0.000000e+00, %bb.akf ] ; 3 uses
  %i.haq = fneg float %.sroa.0671.0.i1377
  %i.har = fmul float %.sroa.12672.0.i1382, %i.gwn
  %i.has = call noundef float @llvm.fmuladd.f32(float %i.gxp, float %i.haq, float %i.har) ; 2 uses
  %i.hat = call float @llvm.fabs.f32(float %i.has)
  %i.hau = fpext float %i.hat to double
  %i.hav = fcmp ugt double %i.hau, 1.000000e-02
  br i1 %i.hav, label %bb.aki, label %bb.akj

bb.aki:                                           ; preds = %bb.akh
  %i.haw = fmul float %.sroa.12672.0.i1382, %.sroa.12672.0.i1382
  %i.hax = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i1377, float %.sroa.0671.0.i1377, float %i.haw)
  %i.hay = fmul float %i.gxq, %i.hax
  %i.haz = call noundef float @sqrtf(float noundef %i.hay) #20
  %i.hba = fdiv float %i.has, %i.haz
  %i.hbb = call float @llvm.fabs.f32(float %i.hba)
  %.pre798.i1428 = load i8, ptr %i.gxt, align 1, !tbaa !21
  %.pre1968 = load i8, ptr %gep1905, align 1, !tbaa !21
  br label %bb.akj

bb.akj:                                           ; preds = %bb.aki, %bb.akh
  %i.hbc = phi i8 [ %.pre1968, %bb.aki ], [ %i.gye, %bb.akh ] ; 2 uses
  %i.hbd = phi i8 [ %.pre798.i1428, %bb.aki ], [ %i.gyd, %bb.akh ] ; 2 uses
  %.0390.i1383 = phi float [ %i.hbb, %bb.aki ], [ f0x358637BD, %bb.akh ]
  %i.hbe = fmul float %i.gxs, %.0390.i1383        ; 2 uses
  %i.hbf = load i8, ptr %i.gya, align 1, !tbaa !21
  %i.hbg = uitofp i8 %i.hbf to float
  %i.hbh = call float @llvm.fmuladd.f32(float %i.hbe, float %i.hbg, float %.sroa.0789.2.i1339)
  %i.hbi = fadd float %.sroa.0.2.i1344, %i.hbe
  %.not428.1.i1384 = icmp eq i8 %i.hbd, 2
  %.not429.1.i1385 = icmp eq i8 %i.hbc, 2         ; 2 uses
  br i1 %.not428.1.i1384, label %bb.akn, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %i.hbj = mul i64 %i.gxy, %i.gwt
  %.sink.idx.i523.1.i1386 = select i1 %i.gxw, i64 0, i64 %i.hbj
  %.sink.i524.1.i1387 = getelementptr inbounds nuw i8, ptr %i.gxx, i64 %.sink.idx.i523.1.i1386
  %i.hbk = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i1387, i64 %i.gxf
  %i.hbl = getelementptr inbounds nuw i8, ptr %i.hbk, i64 1
  %i.hbm = load i8, ptr %i.hbl, align 1, !tbaa !21
  %i.hbn = zext i8 %i.hbm to i32
end_hunk_8
begin_hunk_9_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

bb.amc:                                           ; preds = %bb.amb
  %i.hky = fadd double %i.hke, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1189

bb.amd:                                           ; preds = %bb.amb
  %i.hkz = fadd double %i.hkg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1189

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1189: ; preds = %bb.amd, %bb.amc, %bb.ama, %bb.alz, %bb.aly
  %.not31.i587.i1190 = phi i1 [ false, %bb.aly ], [ %i.hkw, %bb.alz ], [ true, %bb.ama ], [ false, %bb.amc ], [ true, %bb.amd ] ; 2 uses
  %.0.i576.i1191 = phi double [ %i.hkp, %bb.aly ], [ %i.hkv, %bb.alz ], [ %i.hkx, %bb.ama ], [ %i.hky, %bb.amc ], [ %i.hkz, %bb.amd ]
  %i.hla = fptrunc double %.0.i576.i1191 to float ; 2 uses
  %i.hlb = add nuw nsw i32 %.5407.fr.i1171, 1
  %i.hlc = zext nneg i32 %i.hlb to i64            ; 2 uses
  %i.hld = mul i64 %i.hju, %i.hlc
  %.sink.idx.i.i578.i1192 = select i1 %i.hjs, i64 0, i64 %i.hld
  %.sink.i.i579.i1193 = getelementptr inbounds nuw i8, ptr %i.hjt, i64 %.sink.idx.i.i578.i1192
  %i.hle = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i579.i1193, i64 %i.hjl
  %i.hlf = load float, ptr %i.hle, align 4, !tbaa !46 ; 3 uses
  %i.hlg = fpext float %i.hlf to double           ; 8 uses
  %i.hlh = fcmp ogt float %i.hlf, %i.hkd
  %i.hli = select i1 %i.hlh, double %i.hke, double %i.hlg ; 2 uses
  %i.hlj = mul i64 %i.hji, %i.hlc
  %.sink.idx.i35.i582.i1194 = select i1 %i.hjg, i64 0, i64 %i.hlj
  %.sink.i36.i583.i1195 = getelementptr inbounds nuw i8, ptr %i.hjh, i64 %.sink.idx.i35.i582.i1194
  %i.hlk = getelementptr inbounds nuw i8, ptr %.sink.i36.i583.i1195, i64 %i.hjl ; 2 uses
  %i.hll = load i8, ptr %i.hlk, align 1, !tbaa !21
  %.not.i584.i1196 = icmp eq i8 %i.hll, 2
  br i1 %.not.i584.i1196, label %bb.amj, label %bb.ame

bb.ame:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1189
  br i1 %.not31.i587.i1190, label %bb.ami, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.hlm = fsub double %i.hlg, %i.hke             ; 3 uses
  %i.hln = call double @llvm.fabs.f64(double %i.hlm)
  %i.hlo = fcmp ult double %i.hln, 1.000000e+00
  br i1 %i.hlo, label %bb.amh, label %bb.amg

bb.amg:                                           ; preds = %bb.amf
  %i.hlp = fadd double %i.hli, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.amh:                                           ; preds = %bb.amf
  %i.hlq = fadd double %i.hke, %i.hlg
  %i.hlr = fneg double %i.hlm
  %i.hls = call double @llvm.fmuladd.f64(double %i.hlr, double %i.hlm, double 2.000000e+00)
  %i.hlt = call double @sqrt(double noundef %i.hls) #20
  %i.hlu = fadd double %i.hlq, %i.hlt
  %i.hlv = fmul double %i.hlu, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.ami:                                           ; preds = %bb.ame
  %i.hlw = fadd double %i.hlg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.amj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1189
  br i1 %.not31.i587.i1190, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  %i.hlx = fadd double %i.hke, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.aml:                                           ; preds = %bb.amj
  %i.hly = fadd double %i.hli, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197: ; preds = %bb.aml, %bb.amk, %bb.ami, %bb.amh, %bb.amg
  %.0.i588.i1198 = phi double [ %i.hlp, %bb.amg ], [ %i.hlv, %bb.amh ], [ %i.hlw, %bb.ami ], [ %i.hlx, %bb.amk ], [ %i.hly, %bb.aml ]
  %i.hlz = fptrunc double %.0.i588.i1198 to float ; 2 uses
  %i.hma = add nuw nsw i32 %.5.i1170, 1
  %i.hmb = zext nneg i32 %i.hma to i64            ; 2 uses
  %i.hmc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1184, i64 %i.hmb
  %i.hmd = load float, ptr %i.hmc, align 4, !tbaa !46 ; 3 uses
  %i.hme = fpext float %i.hmd to double           ; 8 uses
  %i.hmf = fcmp ogt float %i.hjy, %i.hmd
  %i.hmg = select i1 %i.hmf, double %i.hme, double %i.hjz ; 2 uses
  %i.hmh = load i8, ptr %i.hki, align 1, !tbaa !21
  %.not.i596.i1199 = icmp eq i8 %i.hmh, 2
  %i.hmi = getelementptr inbounds nuw i8, ptr %.sink.i565.i1180, i64 %i.hmb ; 2 uses
  %i.hmj = load i8, ptr %i.hmi, align 1, !tbaa !21
  %.not31.i599.i1200 = icmp eq i8 %i.hmj, 2       ; 2 uses
  br i1 %.not.i596.i1199, label %bb.amr, label %bb.amm

bb.amm:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197
  br i1 %.not31.i599.i1200, label %bb.amq, label %bb.amn

bb.amn:                                           ; preds = %bb.amm
  %i.hmk = fsub double %i.hjz, %i.hme             ; 3 uses
  %i.hml = call double @llvm.fabs.f64(double %i.hmk)
  %i.hmm = fcmp ult double %i.hml, 1.000000e+00
  br i1 %i.hmm, label %bb.amp, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  %i.hmn = fadd double %i.hmg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amp:                                           ; preds = %bb.amn
  %i.hmo = fadd double %i.hjz, %i.hme
  %i.hmp = fneg double %i.hmk
  %i.hmq = call double @llvm.fmuladd.f64(double %i.hmp, double %i.hmk, double 2.000000e+00)
  %i.hmr = call double @sqrt(double noundef %i.hmq) #20
  %i.hms = fadd double %i.hmo, %i.hmr
  %i.hmt = fmul double %i.hms, 5.000000e-01
  %.pr708.pre.i1263 = load i8, ptr %i.hmi, align 1, !tbaa !21
  %i.hmu = icmp eq i8 %.pr708.pre.i1263, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amq:                                           ; preds = %bb.amm
  %i.hmv = fadd double %i.hjz, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amr:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197
  br i1 %.not31.i599.i1200, label %bb.amt, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  %i.hmw = fadd double %i.hme, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amt:                                           ; preds = %bb.amr
  %i.hmx = fadd double %i.hmg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201: ; preds = %bb.amt, %bb.ams, %bb.amq, %bb.amp, %bb.amo
  %.not31.i611.i1202 = phi i1 [ true, %bb.amt ], [ true, %bb.amq ], [ false, %bb.ams ], [ %i.hmu, %bb.amp ], [ false, %bb.amo ] ; 2 uses
  %.0.i600.i1203 = phi double [ %i.hmx, %bb.amt ], [ %i.hmv, %bb.amq ], [ %i.hmw, %bb.ams ], [ %i.hmt, %bb.amp ], [ %i.hmn, %bb.amo ]
  %i.hmy = fptrunc double %.0.i600.i1203 to float ; 2 uses
  %i.hmz = fcmp ogt float %i.hlf, %i.hmd
  %i.hna = select i1 %i.hmz, double %i.hme, double %i.hlg ; 2 uses
  %i.hnb = load i8, ptr %i.hlk, align 1, !tbaa !21
  %.not.i608.i1204 = icmp eq i8 %i.hnb, 2
  br i1 %.not.i608.i1204, label %bb.amz, label %bb.amu

bb.amu:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201
  br i1 %.not31.i611.i1202, label %bb.amy, label %bb.amv

bb.amv:                                           ; preds = %bb.amu
  %i.hnc = fsub double %i.hlg, %i.hme             ; 3 uses
  %i.hnd = call double @llvm.fabs.f64(double %i.hnc)
  %i.hne = fcmp ult double %i.hnd, 1.000000e+00
  br i1 %i.hne, label %bb.amx, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  %i.hnf = fadd double %i.hna, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.amx:                                           ; preds = %bb.amv
  %i.hng = fadd double %i.hlg, %i.hme
  %i.hnh = fneg double %i.hnc
  %i.hni = call double @llvm.fmuladd.f64(double %i.hnh, double %i.hnc, double 2.000000e+00)
  %i.hnj = call double @sqrt(double noundef %i.hni) #20
  %i.hnk = fadd double %i.hng, %i.hnj
  %i.hnl = fmul double %i.hnk, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.amy:                                           ; preds = %bb.amu
  %i.hnm = fadd double %i.hlg, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.amz:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201
  br i1 %.not31.i611.i1202, label %bb.anb, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.hnn = fadd double %i.hme, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.anb:                                           ; preds = %bb.amz
  %i.hno = fadd double %i.hna, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205: ; preds = %bb.anb, %bb.ana, %bb.amy, %bb.amx, %bb.amw
  %.0.i612.i1206 = phi double [ %i.hnf, %bb.amw ], [ %i.hnl, %bb.amx ], [ %i.hnm, %bb.amy ], [ %i.hnn, %bb.ana ], [ %i.hno, %bb.anb ]
  %i.hnp = fptrunc double %.0.i612.i1206 to float ; 2 uses
  %i.hnq = fcmp ogt float %i.hla, %i.hlz
  %i.hnr = select i1 %i.hnq, float %i.hlz, float %i.hla ; 2 uses
  %i.hns = fcmp ogt float %i.hmy, %i.hnp
  %i.hnt = select i1 %i.hns, float %i.hnp, float %i.hmy ; 2 uses
  %i.hnu = fcmp ogt float %i.hnr, %i.hnt
  %i.hnv = select i1 %i.hnu, float %i.hnt, float %i.hnr ; 2 uses
  %i.hnw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1184, i64 %i.hjl
  store float %i.hnv, ptr %i.hnw, align 4, !tbaa !46
  %i.hnx = add nuw nsw i32 %.5407.fr.i1171, %i.dp
  %i.hny = add nsw i32 %i.hjd, -2
  %i.hnz = sub nsw i32 %.5.i1170, %i.dp
  %i.hoa = add nuw nsw i32 %.5.i1170, %i.dp
  %i.hob = add nsw i32 %i.hje, -2
  %i.hoc = add nsw i32 %i.hjd, -1
  %i.hod = add nsw i32 %i.hje, -1
  %i.hoe = sub nsw i32 %.5407.fr.i1171, %i.dp
  %i.hof = load i64, ptr %i.gms, align 8          ; 3 uses
  br label %.lr.ph.i1207

.lr.ph.i1207:                                     ; preds = %._crit_edge.i1212, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205
  %.0386740.i1208 = phi float [ %.us-phi724.i1214, %._crit_edge.i1212 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205 ] ; 3 uses
  %.0387739.i1209 = phi float [ %.us-phi.i1213, %._crit_edge.i1212 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205 ] ; 3 uses
  %.1398738.i1210 = phi i32 [ %i.hot, %._crit_edge.i1212 ], [ %i.hoe, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205 ] ; 10 uses
  %i.hog = add nsw i32 %.1398738.i1210, -1        ; 3 uses
  %i.hoh = icmp eq i32 %.1398738.i1210, 1
  %i.hoi = zext i1 %i.hoh to i32
  %i.hoj = add nuw nsw i32 %i.hog, %i.hoi         ; 2 uses
  %i.hok = icmp eq i32 %.1398738.i1210, %i.hny
  %.neg.i1211 = sext i1 %i.hok to i32             ; 2 uses
  %i.hol = add i32 %i.hog, %.neg.i1211
  %i.hom = icmp sgt i32 %.1398738.i1210, 0
  %i.hon = zext nneg i32 %.1398738.i1210 to i64
  %i.hoo = sub nsw i32 %.1398738.i1210, %.5407.fr.i1171 ; 2 uses
  %i.hop = mul nsw i32 %i.hoo, %i.hoo
  %i.hoq = sub nsw i32 %.5407.fr.i1171, %.1398738.i1210
  %i.hor = sitofp i32 %i.hoq to float             ; 3 uses
  %i.hos = fmul nnan float %i.hor, %i.hor
  %i.hot = add i32 %.1398738.i1210, 1             ; 3 uses
  %i.hou = zext nneg i32 %i.hot to i64
  %i.hov = zext nneg i32 %i.hog to i64            ; 2 uses
  %i.how = add i32 %.1398738.i1210, %.neg.i1211
  %i.hox = sext i32 %i.how to i64
  %i.hoy = sext i32 %i.hol to i64                 ; 2 uses
  %i.hoz = add nsw i32 %i.hoj, -1
  %i.hpa = sext i32 %i.hoz to i64                 ; 2 uses
  %i.hpb = sext i32 %i.hoj to i64                 ; 2 uses
  br i1 %i.hom, label %.lr.ph.split.i1221, label %._crit_edge.i1212

.lr.ph.split.i1221:                               ; preds = %.lr.ph.i1207
  %i.hpc = icmp slt i32 %.1398738.i1210, %i.hoc
  %.fr736.i1222 = freeze i1 %i.hpc
  br i1 %.fr736.i1222, label %.lr.ph.split.split.i1223.preheader, label %._crit_edge.i1212

.lr.ph.split.split.i1223.preheader:               ; preds = %.lr.ph.split.i1221
  %i.hpd = mul i64 %i.hof, %i.hon
  %.sink.idx.i616.i1232 = select i1 %i.hjg, i64 0, i64 %i.hpd
  %.sink.i617.i1233 = getelementptr inbounds nuw i8, ptr %i.hjh, i64 %.sink.idx.i616.i1232 ; 2 uses
  %i.hpe = mul i64 %i.hof, %i.hou
  %.sink.idx.i618.i1236 = select i1 %i.hjg, i64 0, i64 %i.hpe
  %.sink.i619.i1237 = getelementptr inbounds nuw i8, ptr %i.hjh, i64 %.sink.idx.i618.i1236
  %i.hpf = mul i64 %i.hof, %i.hov
  %.sink.idx.i634.i1239 = select i1 %i.hjg, i64 0, i64 %i.hpf
  %.sink.i635.i1240 = getelementptr inbounds nuw i8, ptr %i.hjh, i64 %.sink.idx.i634.i1239
  br label %.lr.ph.split.split.i1223

.lr.ph.split.split.i1223:                         ; preds = %.lr.ph.split.split.i1223.preheader, %bb.ant
  %.1722.i1224 = phi float [ %.2.i1230, %bb.ant ], [ %.0386740.i1208, %.lr.ph.split.split.i1223.preheader ] ; 4 uses
  %.1388721.i1225 = phi float [ %.2389.i1229, %bb.ant ], [ %.0387739.i1209, %.lr.ph.split.split.i1223.preheader ] ; 4 uses
  %.1396719.i1226 = phi i32 [ %i.huj, %bb.ant ], [ %i.hnz, %.lr.ph.split.split.i1223.preheader ] ; 11 uses
  %i.hpg = add nsw i32 %.1396719.i1226, -1        ; 2 uses
  %i.hph = icmp eq i32 %.1396719.i1226, 1
  %i.hpi = zext i1 %i.hph to i32
  %i.hpj = add nuw nsw i32 %i.hpg, %i.hpi         ; 4 uses
  %i.hpk = icmp eq i32 %.1396719.i1226, %i.hob
  %.neg411.i1227 = sext i1 %i.hpk to i32
  %i.hpl = icmp sgt i32 %.1396719.i1226, 0
  %i.hpm = icmp slt i32 %.1396719.i1226, %i.hod
  %or.cond771.i1228 = select i1 %i.hpl, i1 %i.hpm, i1 false
  br i1 %or.cond771.i1228, label %bb.anc, label %bb.ant

bb.anc:                                           ; preds = %.lr.ph.split.split.i1223
  %i.hpn = zext nneg i32 %.1396719.i1226 to i64   ; 3 uses
  %i.hpo = getelementptr inbounds nuw i8, ptr %.sink.i617.i1233, i64 %i.hpn ; 2 uses
  %i.hpp = load i8, ptr %i.hpo, align 1, !tbaa !21
  %.not412.i1234 = icmp eq i8 %i.hpp, 2
  br i1 %.not412.i1234, label %bb.ant, label %bb.and

bb.and:                                           ; preds = %bb.anc
  %i.hpq = sub nsw i32 %.1396719.i1226, %.5.i1170 ; 2 uses
  %i.hpr = mul nsw i32 %i.hpq, %i.hpq
  %i.hps = add nuw nsw i32 %i.hpr, %i.hop
  %.not413.i1235 = icmp samesign ugt i32 %i.hps, %i.gmy
  br i1 %.not413.i1235, label %bb.ant, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  %i.hpt = sub nsw i32 %.5.i1170, %.1396719.i1226
  %i.hpu = sitofp i32 %i.hpt to float             ; 3 uses
  %i.hpv = call noundef float @llvm.fmuladd.f32(float %i.hpu, float %i.hpu, float %i.hos) ; 3 uses
  %i.hpw = call nnan float @llvm.fmuladd.f32(float %i.hpv, float %i.hpv, float 1.000000e+00)
  %i.hpx = fdiv nnan float 1.000000e+00, %i.hpw
  %i.hpy = getelementptr inbounds nuw i8, ptr %.sink.i619.i1237, i64 %i.hpn
  %i.hpz = load i8, ptr %i.hpy, align 1, !tbaa !21
  %.not414.i1238 = icmp eq i8 %i.hpz, 2
  %i.hqa = getelementptr inbounds nuw i8, ptr %.sink.i635.i1240, i64 %i.hpn
  %i.hqb = load i8, ptr %i.hqa, align 1, !tbaa !21
  %.not415.i1241 = icmp eq i8 %i.hqb, 2           ; 2 uses
  br i1 %.not414.i1238, label %bb.ani, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  %i.hqc = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.hqd = icmp slt i32 %i.hqc, 2                 ; 3 uses
  %i.hqe = load ptr, ptr %i.gna, align 8, !tbaa !149 ; 3 uses
  %i.hqf = load i64, ptr %i.gnb, align 8          ; 3 uses
  %i.hqg = mul i64 %i.hqf, %i.hox
  %.sink.idx.i630.i1242 = select i1 %i.hqd, i64 0, i64 %i.hqg
  %.sink.i631.i1243 = getelementptr inbounds nuw i8, ptr %i.hqe, i64 %.sink.idx.i630.i1242
  %i.hqh = sext i32 %i.hpj to i64                 ; 3 uses
  %i.hqi = getelementptr inbounds [2 x i8], ptr %.sink.i631.i1243, i64 %i.hqh
  %i.hqj = load i16, ptr %i.hqi, align 2, !tbaa !172
  %i.hqk = zext i16 %i.hqj to i32
  %i.hql = mul i64 %i.hqf, %i.hoy
  %.sink.idx.i632.i1244 = select i1 %i.hqd, i64 0, i64 %i.hql
  %.sink.i633.i1245 = getelementptr inbounds nuw i8, ptr %i.hqe, i64 %.sink.idx.i632.i1244
  %i.hqm = getelementptr inbounds [2 x i8], ptr %.sink.i633.i1245, i64 %i.hqh
  %i.hqn = load i16, ptr %i.hqm, align 2, !tbaa !172
  %i.hqo = zext i16 %i.hqn to i32                 ; 2 uses
  %i.hqp = sub nsw i32 %i.hqk, %i.hqo
  %i.hqq = call i32 @llvm.abs.i32(i32 %i.hqp, i1 true) ; 2 uses
  br i1 %.not415.i1241, label %bb.anh, label %bb.ang

bb.ang:                                           ; preds = %bb.anf
  %i.hqr = mul i64 %i.hqf, %i.hpa
  %.sink.idx.i628.i1246 = select i1 %i.hqd, i64 0, i64 %i.hqr
  %.sink.i629.i1247 = getelementptr inbounds nuw i8, ptr %i.hqe, i64 %.sink.idx.i628.i1246
  %i.hqs = getelementptr inbounds [2 x i8], ptr %.sink.i629.i1247, i64 %i.hqh
  %i.hqt = load i16, ptr %i.hqs, align 2, !tbaa !172
  %i.hqu = zext i16 %i.hqt to i32
  %i.hqv = sub nsw i32 %i.hqo, %i.hqu
  %i.hqw = call i32 @llvm.abs.i32(i32 %i.hqv, i1 true)
  %i.hqx = add nuw nsw i32 %i.hqw, %i.hqq
  %i.hqy = uitofp nneg i32 %i.hqx to float
  br label %bb.ank

bb.anh:                                           ; preds = %bb.anf
  %i.hqz = uitofp nneg i32 %i.hqq to float
  %i.hra = fmul nnan float %i.hqz, 2.000000e+00
  br label %bb.ank

bb.ani:                                           ; preds = %bb.ane
  br i1 %.not415.i1241, label %bb.ank, label %bb.anj

bb.anj:                                           ; preds = %bb.ani
  %i.hrb = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.hrc = icmp slt i32 %i.hrb, 2                 ; 2 uses
  %i.hrd = load ptr, ptr %i.gna, align 8, !tbaa !149 ; 2 uses
  %i.hre = load i64, ptr %i.gnb, align 8          ; 2 uses
  %i.hrf = mul i64 %i.hre, %i.hoy
  %.sink.idx.i636.i1259 = select i1 %i.hrc, i64 0, i64 %i.hrf
  %.sink.i637.i1260 = getelementptr inbounds nuw i8, ptr %i.hrd, i64 %.sink.idx.i636.i1259
  %i.hrg = sext i32 %i.hpj to i64                 ; 2 uses
  %i.hrh = getelementptr inbounds [2 x i8], ptr %.sink.i637.i1260, i64 %i.hrg
  %i.hri = load i16, ptr %i.hrh, align 2, !tbaa !172
  %i.hrj = zext i16 %i.hri to i32
  %i.hrk = mul i64 %i.hre, %i.hpa
  %.sink.idx.i638.i1261 = select i1 %i.hrc, i64 0, i64 %i.hrk
  %.sink.i639.i1262 = getelementptr inbounds nuw i8, ptr %i.hrd, i64 %.sink.idx.i638.i1261
  %i.hrl = getelementptr inbounds [2 x i8], ptr %.sink.i639.i1262, i64 %i.hrg
  %i.hrm = load i16, ptr %i.hrl, align 2, !tbaa !172
  %i.hrn = zext i16 %i.hrm to i32
  %i.hro = sub nsw i32 %i.hrj, %i.hrn
  %i.hrp = call i32 @llvm.abs.i32(i32 %i.hro, i1 true)
  %i.hrq = uitofp nneg i32 %i.hrp to float
  %i.hrr = fmul nnan float %i.hrq, 2.000000e+00
  br label %bb.ank

bb.ank:                                           ; preds = %bb.anj, %bb.ani, %bb.anh, %bb.ang
  %.sroa.0668.0.i1248 = phi float [ %i.hqy, %bb.ang ], [ %i.hrr, %bb.anj ], [ %i.hra, %bb.anh ], [ 0.000000e+00, %bb.ani ] ; 3 uses
  %i.hrs = getelementptr inbounds nuw i8, ptr %i.hpo, i64 1
  %i.hrt = load i8, ptr %i.hrs, align 1, !tbaa !21
  %.not417.i1249 = icmp eq i8 %i.hrt, 2
  %i.hru = zext nneg i32 %i.hpg to i64            ; 2 uses
  %i.hrv = getelementptr inbounds nuw i8, ptr %.sink.i617.i1233, i64 %i.hru
  %i.hrw = load i8, ptr %i.hrv, align 1, !tbaa !21
  %.not418.i1250 = icmp eq i8 %i.hrw, 2           ; 2 uses
  br i1 %.not417.i1249, label %bb.ano, label %bb.anl

bb.anl:                                           ; preds = %bb.ank
  %i.hrx = add nsw i32 %.1396719.i1226, %.neg411.i1227
  %i.hry = load i32, ptr %i.gmz, align 4, !tbaa !148
  %i.hrz = icmp slt i32 %i.hry, 2
  %i.hsa = load ptr, ptr %i.gna, align 8, !tbaa !149
  %i.hsb = load i64, ptr %i.gnb, align 8
  %i.hsc = mul i64 %i.hsb, %i.hpb
  %.sink.idx.i652.i1251 = select i1 %i.hrz, i64 0, i64 %i.hsc
  %.sink.i653.i1252 = getelementptr inbounds nuw i8, ptr %i.hsa, i64 %.sink.idx.i652.i1251 ; 2 uses
  %i.hsd = zext nneg i32 %i.hrx to i64
  %i.hse = getelementptr inbounds nuw [2 x i8], ptr %.sink.i653.i1252, i64 %i.hsd
  %i.hsf = load i16, ptr %i.hse, align 2, !tbaa !172
  %i.hsg = zext i16 %i.hsf to i32
  %i.hsh = sext i32 %i.hpj to i64
  %i.hsi = getelementptr [2 x i8], ptr %.sink.i653.i1252, i64 %i.hsh ; 2 uses
  %i.hsj = load i16, ptr %i.hsi, align 2, !tbaa !172
  %i.hsk = zext i16 %i.hsj to i32                 ; 2 uses
  %i.hsl = sub nsw i32 %i.hsg, %i.hsk
  %i.hsm = call i32 @llvm.abs.i32(i32 %i.hsl, i1 true) ; 2 uses
  br i1 %.not418.i1250, label %bb.ann, label %bb.anm

bb.anm:                                           ; preds = %bb.anl
  %i.hsn = getelementptr i8, ptr %i.hsi, i64 -2
  %i.hso = load i16, ptr %i.hsn, align 2, !tbaa !172
  %i.hsp = zext i16 %i.hso to i32
  %i.hsq = sub nsw i32 %i.hsk, %i.hsp
  %i.hsr = call i32 @llvm.abs.i32(i32 %i.hsq, i1 true)
  %i.hss = add nuw nsw i32 %i.hsr, %i.hsm
  %i.hst = uitofp nneg i32 %i.hss to float
  br label %bb.anq

bb.ann:                                           ; preds = %bb.anl
  %i.hsu = uitofp nneg i32 %i.hsm to float
  %i.hsv = fmul nnan float %i.hsu, 2.000000e+00
  br label %bb.anq

bb.ano:                                           ; preds = %bb.ank
  br i1 %.not418.i1250, label %bb.anq, label %bb.anp

bb.anp:                                           ; preds = %bb.ano
  %i.hsw = load i32, ptr %i.gmz, align 4, !tbaa !148
end_hunk_9
begin_hunk_10_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.iav = fsub double %i.hyk, %i.iap             ; 3 uses
  %i.iaw = call double @llvm.fabs.f64(double %i.iav)
  %i.iax = fcmp ult double %i.iaw, 1.000000e+00
  br i1 %i.iax, label %bb.aox, label %bb.aow

bb.aow:                                           ; preds = %bb.aov
  %i.iay = fadd double %i.iar, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582

bb.aox:                                           ; preds = %bb.aov
  %i.iaz = fadd double %i.hyk, %i.iap
  %i.iba = fneg double %i.iav
  %i.ibb = call double @llvm.fmuladd.f64(double %i.iba, double %i.iav, double 2.000000e+00)
  %i.ibc = call double @sqrt(double noundef %i.ibb) #20
  %i.ibd = fadd double %i.iaz, %i.ibc
  %i.ibe = fmul double %i.ibd, 5.000000e-01
  %.pr.pre.i1714 = load i8, ptr %i.iat, align 1, !tbaa !21
  %i.ibf = icmp eq i8 %.pr.pre.i1714, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582

bb.aoy:                                           ; preds = %bb.aou
  %i.ibg = fadd double %i.hyk, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582

bb.aoz:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit482.i1578
  br i1 %.not31.i492.i1581, label %bb.apb, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  %i.ibh = fadd double %i.iap, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582

bb.apb:                                           ; preds = %bb.aoz
  %i.ibi = fadd double %i.iar, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582: ; preds = %bb.apb, %bb.apa, %bb.aoy, %bb.aox, %bb.aow
  %.not31.i504.i1583 = phi i1 [ true, %bb.apb ], [ true, %bb.aoy ], [ false, %bb.apa ], [ %i.ibf, %bb.aox ], [ false, %bb.aow ] ; 2 uses
  %.0.i493.i1584 = phi double [ %i.ibi, %bb.apb ], [ %i.ibg, %bb.aoy ], [ %i.ibh, %bb.apa ], [ %i.ibe, %bb.aox ], [ %i.iay, %bb.aow ]
  %i.ibj = fptrunc double %.0.i493.i1584 to float ; 2 uses
  %i.ibk = fcmp ogt float %i.hzq, %i.iao
  %i.ibl = select i1 %i.ibk, double %i.iap, double %i.hzr ; 2 uses
  %i.ibm = load i8, ptr %i.hzv, align 1, !tbaa !21
  %.not.i501.i1585 = icmp eq i8 %i.ibm, 2
  br i1 %.not.i501.i1585, label %bb.aph, label %bb.apc

bb.apc:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582
  br i1 %.not31.i504.i1583, label %bb.apg, label %bb.apd

bb.apd:                                           ; preds = %bb.apc
  %i.ibn = fsub double %i.hzr, %i.iap             ; 3 uses
  %i.ibo = call double @llvm.fabs.f64(double %i.ibn)
  %i.ibp = fcmp ult double %i.ibo, 1.000000e+00
  br i1 %i.ibp, label %bb.apf, label %bb.ape

bb.ape:                                           ; preds = %bb.apd
  %i.ibq = fadd double %i.ibl, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586

bb.apf:                                           ; preds = %bb.apd
  %i.ibr = fadd double %i.hzr, %i.iap
  %i.ibs = fneg double %i.ibn
  %i.ibt = call double @llvm.fmuladd.f64(double %i.ibs, double %i.ibn, double 2.000000e+00)
  %i.ibu = call double @sqrt(double noundef %i.ibt) #20
  %i.ibv = fadd double %i.ibr, %i.ibu
  %i.ibw = fmul double %i.ibv, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586

bb.apg:                                           ; preds = %bb.apc
  %i.ibx = fadd double %i.hzr, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586

bb.aph:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit494.i1582
  br i1 %.not31.i504.i1583, label %bb.apj, label %bb.api

bb.api:                                           ; preds = %bb.aph
  %i.iby = fadd double %i.iap, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586

bb.apj:                                           ; preds = %bb.aph
  %i.ibz = fadd double %i.ibl, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586: ; preds = %bb.apj, %bb.api, %bb.apg, %bb.apf, %bb.ape
  %.0.i505.i1587 = phi double [ %i.ibq, %bb.ape ], [ %i.ibw, %bb.apf ], [ %i.ibx, %bb.apg ], [ %i.iby, %bb.api ], [ %i.ibz, %bb.apj ]
  %i.ica = fptrunc double %.0.i505.i1587 to float ; 2 uses
  %i.icb = fcmp ogt float %i.hzl, %i.iak
  %i.icc = select i1 %i.icb, float %i.iak, float %i.hzl ; 2 uses
  %i.icd = fcmp ogt float %i.ibj, %i.ica
  %i.ice = select i1 %i.icd, float %i.ica, float %i.ibj ; 2 uses
  %i.icf = fcmp ogt float %i.icc, %i.ice
  %i.icg = select i1 %i.icf, float %i.ice, float %i.icc ; 2 uses
  %i.ich = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i.i1565, i64 %i.hxw
  store float %i.icg, ptr %i.ich, align 4, !tbaa !46
  %i.ici = add nuw nsw i32 %.2404.fr.i1553, %i.dp
  %i.icj = sub nsw i32 %.2404.fr.i1553, %i.dp
  %i.ick = load i32, ptr %i.fy, align 8, !tbaa !146 ; 2 uses
  %i.icl = add nsw i32 %i.ick, -2
  %i.icm = add nsw i32 %i.ick, -1
  %i.icn = add nuw nsw i32 %.2401.i1552, %i.dp
  %i.ico = sub nsw i32 %.2401.i1552, %i.dp
  %i.icp = load i32, ptr %i.es, align 4, !tbaa !145 ; 2 uses
  %i.icq = add nsw i32 %i.icp, -2
  %i.icr = add nsw i32 %i.icp, -1
  %i.ics = sext i32 %i.ico to i64
  %i.ict = sext i32 %i.icr to i64
  %i.icu = zext nneg i32 %i.icn to i64
  %sext.i1588 = sext i32 %i.icq to i64
  %i.icv = load i64, ptr %i.hwf, align 8          ; 3 uses
  br label %.lr.ph756.i1589

.preheader712.loopexit.i1606:                     ; preds = %._crit_edge757.i1598
  %i.icw = fpext float %.sroa.0789.4.i1599 to double
  %i.icx = fpext float %.sroa.0.4.i1604 to double
  %i.icy = fdiv double %i.icw, %i.icx
  %i.icz = fpext float %.sroa.6791.4.i1600 to double
  %i.ida = fpext float %.sroa.6.4.i1603 to double
  %i.idb = fdiv double %i.icz, %i.ida
  %i.idc = fpext float %.sroa.9793.4.i1601 to double
  %i.idd = fpext float %.sroa.9.4.i1602 to double
  %i.ide = fdiv double %i.idc, %i.idd
  %i.idf = insertelement <2 x double> poison, double %i.icy, i64 0
  %i.idg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.idf)
  %i.idh = call i32 @llvm.smax.i32(i32 %i.idg, i32 0)
  %i.idi = call i32 @llvm.umin.i32(i32 %i.idh, i32 255)
  %i.idj = trunc nuw i32 %i.idi to i8
  %i.idk = load i32, ptr %i.hwm, align 4, !tbaa !148
  %i.idl = icmp slt i32 %i.idk, 2
  %i.idm = load ptr, ptr %i.hwn, align 8, !tbaa !149
  %i.idn = load i64, ptr %i.hwo, align 8
  %i.ido = mul i64 %i.idn, %i.hyg
  %.sink.idx.i557.i1607 = select i1 %i.idl, i64 0, i64 %i.ido
  %.sink.i558.i1608 = getelementptr inbounds nuw i8, ptr %i.idm, i64 %.sink.idx.i557.i1607
  %i.idp = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.i1608, i64 %i.hym
  store i8 %i.idj, ptr %i.idp, align 1, !tbaa !21
  %i.idq = insertelement <2 x double> poison, double %i.idb, i64 0
  %i.idr = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.idq)
  %i.ids = call i32 @llvm.smax.i32(i32 %i.idr, i32 0)
  %i.idt = call i32 @llvm.umin.i32(i32 %i.ids, i32 255)
  %i.idu = trunc nuw i32 %i.idt to i8
  %i.idv = load i32, ptr %i.hwm, align 4, !tbaa !148
  %i.idw = icmp slt i32 %i.idv, 2
  %i.idx = load ptr, ptr %i.hwn, align 8, !tbaa !149
  %i.idy = load i64, ptr %i.hwo, align 8
  %i.idz = mul i64 %i.idy, %i.hyg
  %.sink.idx.i557.1.i1609 = select i1 %i.idw, i64 0, i64 %i.idz
  %.sink.i558.1.i1610 = getelementptr inbounds nuw i8, ptr %i.idx, i64 %.sink.idx.i557.1.i1609
  %i.iea = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.1.i1610, i64 %i.hym
  %i.ieb = getelementptr inbounds nuw i8, ptr %i.iea, i64 1
  store i8 %i.idu, ptr %i.ieb, align 1, !tbaa !21
  %i.iec = insertelement <2 x double> poison, double %i.ide, i64 0
  %i.ied = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.iec)
  %i.iee = call i32 @llvm.smax.i32(i32 %i.ied, i32 0)
  %i.ief = call i32 @llvm.umin.i32(i32 %i.iee, i32 255)
  %i.ieg = trunc nuw i32 %i.ief to i8
  %i.ieh = load i32, ptr %i.hwm, align 4, !tbaa !148
  %i.iei = icmp slt i32 %i.ieh, 2
  %i.iej = load ptr, ptr %i.hwn, align 8, !tbaa !149
  %i.iek = load i64, ptr %i.hwo, align 8
  %i.iel = mul i64 %i.iek, %i.hyg
  %.sink.idx.i557.2.i1611 = select i1 %i.iei, i64 0, i64 %i.iel
  %.sink.i558.2.i1612 = getelementptr inbounds nuw i8, ptr %i.iej, i64 %.sink.idx.i557.2.i1611
  %i.iem = getelementptr inbounds nuw [3 x i8], ptr %.sink.i558.2.i1612, i64 %i.hym
  %i.ien = getelementptr inbounds nuw i8, ptr %i.iem, i64 2
  store i8 %i.ieg, ptr %i.ien, align 1, !tbaa !21
  %i.ieo = load i32, ptr %i.hwd, align 4, !tbaa !148
  %i.iep = icmp slt i32 %i.ieo, 2
  %i.ieq = load ptr, ptr %i.hwe, align 8, !tbaa !149
  %i.ier = load i64, ptr %i.hwf, align 8
  %i.ies = mul i64 %i.ier, %i.hxu
  %.sink.idx.i559.i1613 = select i1 %i.iep, i64 0, i64 %i.ies
  %.sink.i560.i1614 = getelementptr inbounds nuw i8, ptr %i.ieq, i64 %.sink.idx.i559.i1613
  %i.iet = getelementptr inbounds nuw i8, ptr %.sink.i560.i1614, i64 %i.hxw
  store i8 1, ptr %i.iet, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store float %i.icg, ptr %6, align 4, !tbaa !50
  store i32 %.2404.fr.i1553, ptr %i.hwp, align 4, !tbaa !169
  store i32 %.2401.i1552, ptr %i.hwq, align 4, !tbaa !170
  %i.ieu = load i32, ptr %i.hws, align 8, !tbaa !162
  store i32 %i.ieu, ptr %i.hwr, align 4, !tbaa !51
  invoke void @_ZNSt14priority_queueI10CvHeapElemSt6vectorIS0_SaIS0_EESt7greaterIS0_EE4pushEOS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.mh, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %.noexc1718 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc1718:                                       ; preds = %.preheader712.loopexit.i1606
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.iev = load i32, ptr %i.hws, align 8, !tbaa !162
  %i.iew = add nsw i32 %i.iev, 1
  store i32 %i.iew, ptr %i.hws, align 8, !tbaa !162
  br label %bb.arb

.lr.ph756.i1589:                                  ; preds = %._crit_edge757.i1598, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586
  %.sroa.0789.1.i1590 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %.sroa.0789.4.i1599, %._crit_edge757.i1598 ] ; 3 uses
  %.sroa.6791.1.i1591 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %.sroa.6791.4.i1600, %._crit_edge757.i1598 ] ; 3 uses
  %.sroa.9793.1.i1592 = phi float [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %.sroa.9793.4.i1601, %._crit_edge757.i1598 ] ; 3 uses
  %.sroa.9.1.i1593 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %.sroa.9.4.i1602, %._crit_edge757.i1598 ] ; 3 uses
  %.sroa.6.1.i1594 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %.sroa.6.4.i1603, %._crit_edge757.i1598 ] ; 3 uses
  %.sroa.0.1.i1595 = phi float [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %.sroa.0.4.i1604, %._crit_edge757.i1598 ] ; 3 uses
  %.0397764.i1596 = phi i32 [ %i.icj, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit506.i1586 ], [ %i.ifj, %._crit_edge757.i1598 ] ; 9 uses
  %i.iex = add nsw i32 %.0397764.i1596, -1        ; 3 uses
  %i.iey = icmp eq i32 %.0397764.i1596, 1
  %i.iez = zext i1 %i.iey to i32
  %i.ifa = add nuw nsw i32 %i.iex, %i.iez         ; 2 uses
  %i.ifb = icmp eq i32 %.0397764.i1596, %i.icl
  %.neg423.i1597 = sext i1 %i.ifb to i32          ; 2 uses
  %i.ifc = add i32 %i.iex, %.neg423.i1597
  %i.ifd = icmp sgt i32 %.0397764.i1596, 0
  %i.ife = zext nneg i32 %.0397764.i1596 to i64
  %i.iff = sub nsw i32 %.0397764.i1596, %.2404.fr.i1553 ; 3 uses
  %i.ifg = mul nsw i32 %i.iff, %i.iff
  %i.ifh = sitofp i32 %i.iff to float             ; 5 uses
  %i.ifi = fmul nnan float %i.ifh, %i.ifh
  %i.ifj = add i32 %.0397764.i1596, 1             ; 3 uses
  %i.ifk = zext nneg i32 %i.ifj to i64
  %i.ifl = sext i32 %i.iex to i64                 ; 2 uses
  %i.ifm = add i32 %.0397764.i1596, %.neg423.i1597
  %i.ifn = sext i32 %i.ifm to i64                 ; 3 uses
  %i.ifo = sext i32 %i.ifc to i64                 ; 6 uses
  %i.ifp = add nsw i32 %i.ifa, -1
  %i.ifq = sext i32 %i.ifp to i64                 ; 6 uses
  %i.ifr = sext i32 %i.ifa to i64                 ; 6 uses
  br i1 %i.ifd, label %.lr.ph756.split.i1615, label %._crit_edge757.i1598

.lr.ph756.split.i1615:                            ; preds = %.lr.ph756.i1589
  %i.ifs = icmp slt i32 %.0397764.i1596, %i.icm
  %.fr762.i1616 = freeze i1 %i.ifs
  br i1 %.fr762.i1616, label %.lr.ph756.split.split.i1617.preheader, label %._crit_edge757.i1598

.lr.ph756.split.split.i1617.preheader:            ; preds = %.lr.ph756.split.i1615
  %i.ift = mul i64 %i.icv, %i.ife
  %.sink.idx.i509.i1636 = select i1 %i.hxr, i64 0, i64 %i.ift
  %.sink.i510.i1637 = getelementptr inbounds nuw i8, ptr %i.hxs, i64 %.sink.idx.i509.i1636 ; 2 uses
  %i.ifu = mul i64 %i.icv, %i.ifk
  %.sink.idx.i511.i1641 = select i1 %i.hxr, i64 0, i64 %i.ifu
  %.sink.i512.i1642 = getelementptr inbounds nuw i8, ptr %i.hxs, i64 %.sink.idx.i511.i1641
  %i.ifv = mul i64 %i.icv, %i.ifl
  %.sink.idx.i513.i1646 = select i1 %i.hxr, i64 0, i64 %i.ifv
  %invariant.gep = getelementptr i8, ptr %i.hxs, i64 %.sink.idx.i513.i1646
  br label %.lr.ph756.split.split.i1617

.lr.ph756.split.split.i1617:                      ; preds = %.lr.ph756.split.split.i1617.preheader, %.loopexit.i1627
  %.sroa.0789.2.i1618 = phi float [ %.sroa.0789.3.i1628, %.loopexit.i1627 ], [ %.sroa.0789.1.i1590, %.lr.ph756.split.split.i1617.preheader ] ; 4 uses
  %.sroa.6791.2.i1619 = phi float [ %.sroa.6791.3.i1629, %.loopexit.i1627 ], [ %.sroa.6791.1.i1591, %.lr.ph756.split.split.i1617.preheader ] ; 4 uses
  %.sroa.9793.2.i1620 = phi float [ %.sroa.9793.3.i1630, %.loopexit.i1627 ], [ %.sroa.9793.1.i1592, %.lr.ph756.split.split.i1617.preheader ] ; 4 uses
  %.sroa.9.2.i1621 = phi float [ %.sroa.9.3.i1631, %.loopexit.i1627 ], [ %.sroa.9.1.i1593, %.lr.ph756.split.split.i1617.preheader ] ; 4 uses
  %.sroa.6.2.i1622 = phi float [ %.sroa.6.3.i1632, %.loopexit.i1627 ], [ %.sroa.6.1.i1594, %.lr.ph756.split.split.i1617.preheader ] ; 4 uses
  %.sroa.0.2.i1623 = phi float [ %.sroa.0.3.i1633, %.loopexit.i1627 ], [ %.sroa.0.1.i1595, %.lr.ph756.split.split.i1617.preheader ] ; 4 uses
  %indvars.iv.i1624 = phi i64 [ %indvars.iv.next.i1634, %.loopexit.i1627 ], [ %i.ics, %.lr.ph756.split.split.i1617.preheader ] ; 12 uses
  %i.ifw = add nsw i64 %indvars.iv.i1624, -1      ; 3 uses
  %i.ifx = icmp eq i64 %indvars.iv.i1624, 1
  %i.ify = zext i1 %i.ifx to i64
  %i.ifz = add nuw nsw i64 %i.ifw, %i.ify         ; 21 uses
  %i.iga = icmp eq i64 %indvars.iv.i1624, %sext.i1588
  %.neg425.i1625 = sext i1 %i.iga to i64
  %i.igb = icmp sgt i64 %indvars.iv.i1624, 0
  %i.igc = icmp slt i64 %indvars.iv.i1624, %i.ict
  %or.cond770.i1626 = select i1 %i.igb, i1 %i.igc, i1 false
  br i1 %or.cond770.i1626, label %bb.apk, label %.loopexit.i1627

bb.apk:                                           ; preds = %.lr.ph756.split.split.i1617
  %i.igd = getelementptr inbounds nuw i8, ptr %.sink.i510.i1637, i64 %indvars.iv.i1624 ; 2 uses
  %i.ige = load i8, ptr %i.igd, align 1, !tbaa !21
  %.not426.i1638 = icmp eq i8 %i.ige, 2
  br i1 %.not426.i1638, label %.loopexit.i1627, label %bb.apl

bb.apl:                                           ; preds = %bb.apk
  %i.igf = trunc nuw nsw i64 %indvars.iv.i1624 to i32
  %i.igg = sub nsw i32 %i.igf, %.2401.i1552       ; 3 uses
  %i.igh = mul nsw i32 %i.igg, %i.igg
  %i.igi = add nuw nsw i32 %i.igh, %i.ifg
  %.not427.i1639 = icmp samesign ugt i32 %i.igi, %i.hwl
  br i1 %.not427.i1639, label %.loopexit.i1627, label %.preheader.i1640

.preheader.i1640:                                 ; preds = %bb.apl
  %i.igj = sitofp i32 %i.igg to float             ; 5 uses
  %i.igk = call noundef float @llvm.fmuladd.f32(float %i.igj, float %i.igj, float %i.ifi) ; 5 uses
  %i.igl = call nnan float @llvm.fmuladd.f32(float %i.igk, float %i.igk, float 1.000000e+00)
  %i.igm = fdiv nnan float 1.000000e+00, %i.igl   ; 3 uses
  %i.ign = getelementptr inbounds nuw i8, ptr %.sink.i512.i1642, i64 %indvars.iv.i1624 ; 3 uses
  %i.igo = getelementptr inbounds nuw i8, ptr %i.igd, i64 1 ; 3 uses
  %i.igp = load i32, ptr %i.hwm, align 4, !tbaa !148
  %i.igq = icmp slt i32 %i.igp, 2                 ; 22 uses
  %i.igr = load ptr, ptr %i.hwn, align 8, !tbaa !149 ; 22 uses
  %i.igs = load i64, ptr %i.hwo, align 8          ; 22 uses
  %i.igt = mul i64 %i.igs, %i.ifl
  %.sink.idx.i555.i1644 = select i1 %i.igq, i64 0, i64 %i.igt
  %.sink.i556.i1645 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i555.i1644
  %i.igu = getelementptr inbounds [3 x i8], ptr %.sink.i556.i1645, i64 %i.ifw ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i1624 ; 3 uses
  %i.igv = getelementptr inbounds i8, ptr %.sink.i510.i1637, i64 %i.ifw ; 3 uses
  %i.igw = add nsw i64 %indvars.iv.i1624, %.neg425.i1625 ; 3 uses
  %i.igx = load i8, ptr %i.ign, align 1, !tbaa !21 ; 2 uses
  %.not428.i1648 = icmp eq i8 %i.igx, 2
  %i.igy = load i8, ptr %gep, align 1, !tbaa !21  ; 2 uses
  %.not429.i1649 = icmp eq i8 %i.igy, 2           ; 2 uses
  br i1 %.not428.i1648, label %bb.app, label %bb.apm

bb.apm:                                           ; preds = %.preheader.i1640
  %i.igz = mul i64 %i.igs, %i.ifn
  %.sink.idx.i523.i1650 = select i1 %i.igq, i64 0, i64 %i.igz
  %.sink.i524.i1651 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i523.i1650
  %i.iha = getelementptr inbounds [3 x i8], ptr %.sink.i524.i1651, i64 %i.ifz
  %i.ihb = load i8, ptr %i.iha, align 1, !tbaa !21
  %i.ihc = zext i8 %i.ihb to i32
  %i.ihd = mul i64 %i.igs, %i.ifo
  %.sink.idx.i525.i1652 = select i1 %i.igq, i64 0, i64 %i.ihd
  %.sink.i526.i1653 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i525.i1652
  %i.ihe = getelementptr inbounds [3 x i8], ptr %.sink.i526.i1653, i64 %i.ifz
  %i.ihf = load i8, ptr %i.ihe, align 1, !tbaa !21
  %i.ihg = zext i8 %i.ihf to i32                  ; 2 uses
  %i.ihh = sub nsw i32 %i.ihc, %i.ihg
  %i.ihi = call i32 @llvm.abs.i32(i32 %i.ihh, i1 true) ; 2 uses
  br i1 %.not429.i1649, label %bb.apo, label %bb.apn

bb.apn:                                           ; preds = %bb.apm
  %i.ihj = mul i64 %i.igs, %i.ifq
  %.sink.idx.i521.i1654 = select i1 %i.igq, i64 0, i64 %i.ihj
  %.sink.i522.i1655 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i521.i1654
  %i.ihk = getelementptr inbounds [3 x i8], ptr %.sink.i522.i1655, i64 %i.ifz
  %i.ihl = load i8, ptr %i.ihk, align 1, !tbaa !21
  %i.ihm = zext i8 %i.ihl to i32
  %i.ihn = sub nsw i32 %i.ihg, %i.ihm
  %i.iho = call i32 @llvm.abs.i32(i32 %i.ihn, i1 true)
  %i.ihp = add nuw nsw i32 %i.iho, %i.ihi
  %i.ihq = uitofp nneg i32 %i.ihp to float
  br label %bb.apr

bb.apo:                                           ; preds = %bb.apm
  %i.ihr = uitofp nneg i32 %i.ihi to float
  %i.ihs = fmul nnan float %i.ihr, 2.000000e+00
  br label %bb.apr

bb.app:                                           ; preds = %.preheader.i1640
  br i1 %.not429.i1649, label %bb.apr, label %bb.apq

bb.apq:                                           ; preds = %bb.app
  %i.iht = mul i64 %i.igs, %i.ifo
  %.sink.idx.i529.i1710 = select i1 %i.igq, i64 0, i64 %i.iht
  %.sink.i530.i1711 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i529.i1710
  %i.ihu = getelementptr inbounds [3 x i8], ptr %.sink.i530.i1711, i64 %i.ifz
  %i.ihv = load i8, ptr %i.ihu, align 1, !tbaa !21
  %i.ihw = zext i8 %i.ihv to i32
  %i.ihx = mul i64 %i.igs, %i.ifq
  %.sink.idx.i531.i1712 = select i1 %i.igq, i64 0, i64 %i.ihx
  %.sink.i532.i1713 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i531.i1712
  %i.ihy = getelementptr inbounds [3 x i8], ptr %.sink.i532.i1713, i64 %i.ifz
  %i.ihz = load i8, ptr %i.ihy, align 1, !tbaa !21
  %i.iia = zext i8 %i.ihz to i32
  %i.iib = sub nsw i32 %i.ihw, %i.iia
  %i.iic = call i32 @llvm.abs.i32(i32 %i.iib, i1 true)
  %i.iid = uitofp nneg i32 %i.iic to float
  %i.iie = fmul nnan float %i.iid, 2.000000e+00
  br label %bb.apr

bb.apr:                                           ; preds = %bb.apq, %bb.app, %bb.apo, %bb.apn
  %.sroa.0671.0.i1656 = phi float [ %i.ihq, %bb.apn ], [ %i.iie, %bb.apq ], [ %i.ihs, %bb.apo ], [ 0.000000e+00, %bb.app ] ; 3 uses
  %i.iif = load i8, ptr %i.igo, align 1, !tbaa !21
  %.not431.i1657 = icmp eq i8 %i.iif, 2
  %i.iig = load i8, ptr %i.igv, align 1, !tbaa !21
  %.not432.i1658 = icmp eq i8 %i.iig, 2           ; 2 uses
  br i1 %.not431.i1657, label %bb.apv, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.iih = mul i64 %i.igs, %i.ifr
  %.sink.idx.i545.i1659 = select i1 %i.igq, i64 0, i64 %i.iih
  %.sink.i546.i1660 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i545.i1659 ; 2 uses
  %i.iii = getelementptr inbounds nuw [3 x i8], ptr %.sink.i546.i1660, i64 %i.igw
  %i.iij = load i8, ptr %i.iii, align 1, !tbaa !21
  %i.iik = zext i8 %i.iij to i32
  %i.iil = getelementptr [3 x i8], ptr %.sink.i546.i1660, i64 %i.ifz ; 2 uses
  %i.iim = load i8, ptr %i.iil, align 1, !tbaa !21
  %i.iin = zext i8 %i.iim to i32                  ; 2 uses
  %i.iio = sub nsw i32 %i.iik, %i.iin
  %i.iip = call i32 @llvm.abs.i32(i32 %i.iio, i1 true) ; 2 uses
  br i1 %.not432.i1658, label %bb.apu, label %bb.apt

bb.apt:                                           ; preds = %bb.aps
  %i.iiq = getelementptr i8, ptr %i.iil, i64 -3
  %i.iir = load i8, ptr %i.iiq, align 1, !tbaa !21
  %i.iis = zext i8 %i.iir to i32
  %i.iit = sub nsw i32 %i.iin, %i.iis
  %i.iiu = call i32 @llvm.abs.i32(i32 %i.iit, i1 true)
  %i.iiv = add nuw nsw i32 %i.iiu, %i.iip
  %i.iiw = uitofp nneg i32 %i.iiv to float
  br label %bb.apx

bb.apu:                                           ; preds = %bb.aps
  %i.iix = uitofp nneg i32 %i.iip to float
  %i.iiy = fmul nnan float %i.iix, 2.000000e+00
  br label %bb.apx

bb.apv:                                           ; preds = %bb.apr
  br i1 %.not432.i1658, label %bb.apx, label %bb.apw

bb.apw:                                           ; preds = %bb.apv
  %i.iiz = mul i64 %i.igs, %i.ifr
  %.sink.idx.i551.i1708 = select i1 %i.igq, i64 0, i64 %i.iiz
  %.sink.i552.i1709 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i551.i1708
  %i.ija = getelementptr [3 x i8], ptr %.sink.i552.i1709, i64 %i.ifz ; 2 uses
  %i.ijb = load i8, ptr %i.ija, align 1, !tbaa !21
  %i.ijc = zext i8 %i.ijb to i32
  %i.ijd = getelementptr i8, ptr %i.ija, i64 -3
  %i.ije = load i8, ptr %i.ijd, align 1, !tbaa !21
  %i.ijf = zext i8 %i.ije to i32
  %i.ijg = sub nsw i32 %i.ijc, %i.ijf
  %i.ijh = call i32 @llvm.abs.i32(i32 %i.ijg, i1 true)
  %i.iji = uitofp nneg i32 %i.ijh to float
  %i.ijj = fmul nnan float %i.iji, 2.000000e+00
  br label %bb.apx

bb.apx:                                           ; preds = %bb.apw, %bb.apv, %bb.apu, %bb.apt
  %.sroa.12672.0.i1661 = phi float [ %i.iiw, %bb.apt ], [ %i.ijj, %bb.apw ], [ %i.iiy, %bb.apu ], [ 0.000000e+00, %bb.apv ] ; 3 uses
  %i.ijk = fneg float %.sroa.0671.0.i1656
  %i.ijl = fmul float %.sroa.12672.0.i1661, %i.ifh
  %i.ijm = call noundef float @llvm.fmuladd.f32(float %i.igj, float %i.ijk, float %i.ijl) ; 2 uses
  %i.ijn = call float @llvm.fabs.f32(float %i.ijm)
  %i.ijo = fpext float %i.ijn to double
  %i.ijp = fcmp ugt double %i.ijo, 1.000000e-02
  br i1 %i.ijp, label %bb.apy, label %bb.apz

bb.apy:                                           ; preds = %bb.apx
  %i.ijq = fmul float %.sroa.12672.0.i1661, %.sroa.12672.0.i1661
  %i.ijr = call float @llvm.fmuladd.f32(float %.sroa.0671.0.i1656, float %.sroa.0671.0.i1656, float %i.ijq)
  %i.ijs = fmul float %i.igk, %i.ijr
  %i.ijt = call noundef float @sqrtf(float noundef %i.ijs) #20
  %i.iju = fdiv float %i.ijm, %i.ijt
  %i.ijv = call float @llvm.fabs.f32(float %i.iju)
  %.pre798.i1707 = load i8, ptr %i.ign, align 1, !tbaa !21
  %.pre1966 = load i8, ptr %gep, align 1, !tbaa !21
  br label %bb.apz

bb.apz:                                           ; preds = %bb.apy, %bb.apx
  %i.ijw = phi i8 [ %.pre1966, %bb.apy ], [ %i.igy, %bb.apx ] ; 2 uses
  %i.ijx = phi i8 [ %.pre798.i1707, %bb.apy ], [ %i.igx, %bb.apx ] ; 2 uses
  %.0390.i1662 = phi float [ %i.ijv, %bb.apy ], [ f0x358637BD, %bb.apx ]
  %i.ijy = fmul float %i.igm, %.0390.i1662        ; 2 uses
  %i.ijz = load i8, ptr %i.igu, align 1, !tbaa !21
  %i.ika = uitofp i8 %i.ijz to float
  %i.ikb = call float @llvm.fmuladd.f32(float %i.ijy, float %i.ika, float %.sroa.0789.2.i1618)
  %i.ikc = fadd float %.sroa.0.2.i1623, %i.ijy
  %.not428.1.i1663 = icmp eq i8 %i.ijx, 2
  %.not429.1.i1664 = icmp eq i8 %i.ijw, 2         ; 2 uses
  br i1 %.not428.1.i1663, label %bb.aqd, label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz
  %i.ikd = mul i64 %i.igs, %i.ifn
  %.sink.idx.i523.1.i1665 = select i1 %i.igq, i64 0, i64 %i.ikd
  %.sink.i524.1.i1666 = getelementptr inbounds nuw i8, ptr %i.igr, i64 %.sink.idx.i523.1.i1665
  %i.ike = getelementptr inbounds [3 x i8], ptr %.sink.i524.1.i1666, i64 %i.ifz
  %i.ikf = getelementptr inbounds nuw i8, ptr %i.ike, i64 1
  %i.ikg = load i8, ptr %i.ikf, align 1, !tbaa !21
  %i.ikh = zext i8 %i.ikg to i32
end_hunk_10
begin_hunk_11_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

bb.ars:                                           ; preds = %bb.arr
  %i.its = fadd double %i.isy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1468

bb.art:                                           ; preds = %bb.arr
  %i.itt = fadd double %i.ita, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1468

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1468: ; preds = %bb.art, %bb.ars, %bb.arq, %bb.arp, %bb.aro
  %.not31.i587.i1469 = phi i1 [ false, %bb.aro ], [ %i.itq, %bb.arp ], [ true, %bb.arq ], [ false, %bb.ars ], [ true, %bb.art ] ; 2 uses
  %.0.i576.i1470 = phi double [ %i.itj, %bb.aro ], [ %i.itp, %bb.arp ], [ %i.itr, %bb.arq ], [ %i.its, %bb.ars ], [ %i.itt, %bb.art ]
  %i.itu = fptrunc double %.0.i576.i1470 to float ; 2 uses
  %i.itv = add nuw nsw i32 %.5407.fr.i1450, 1
  %i.itw = zext nneg i32 %i.itv to i64            ; 2 uses
  %i.itx = mul i64 %i.iso, %i.itw
  %.sink.idx.i.i578.i1471 = select i1 %i.ism, i64 0, i64 %i.itx
  %.sink.i.i579.i1472 = getelementptr inbounds nuw i8, ptr %i.isn, i64 %.sink.idx.i.i578.i1471
  %i.ity = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i579.i1472, i64 %i.isf
  %i.itz = load float, ptr %i.ity, align 4, !tbaa !46 ; 3 uses
  %i.iua = fpext float %i.itz to double           ; 8 uses
  %i.iub = fcmp ogt float %i.itz, %i.isx
  %i.iuc = select i1 %i.iub, double %i.isy, double %i.iua ; 2 uses
  %i.iud = mul i64 %i.isc, %i.itw
  %.sink.idx.i35.i582.i1473 = select i1 %i.isa, i64 0, i64 %i.iud
  %.sink.i36.i583.i1474 = getelementptr inbounds nuw i8, ptr %i.isb, i64 %.sink.idx.i35.i582.i1473
  %i.iue = getelementptr inbounds nuw i8, ptr %.sink.i36.i583.i1474, i64 %i.isf ; 2 uses
  %i.iuf = load i8, ptr %i.iue, align 1, !tbaa !21
  %.not.i584.i1475 = icmp eq i8 %i.iuf, 2
  br i1 %.not.i584.i1475, label %bb.arz, label %bb.aru

bb.aru:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1468
  br i1 %.not31.i587.i1469, label %bb.ary, label %bb.arv

bb.arv:                                           ; preds = %bb.aru
  %i.iug = fsub double %i.iua, %i.isy             ; 3 uses
  %i.iuh = call double @llvm.fabs.f64(double %i.iug)
  %i.iui = fcmp ult double %i.iuh, 1.000000e+00
  br i1 %i.iui, label %bb.arx, label %bb.arw

bb.arw:                                           ; preds = %bb.arv
  %i.iuj = fadd double %i.iuc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.arx:                                           ; preds = %bb.arv
  %i.iuk = fadd double %i.isy, %i.iua
  %i.iul = fneg double %i.iug
  %i.ium = call double @llvm.fmuladd.f64(double %i.iul, double %i.iug, double 2.000000e+00)
  %i.iun = call double @sqrt(double noundef %i.ium) #20
  %i.iuo = fadd double %i.iuk, %i.iun
  %i.iup = fmul double %i.iuo, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.ary:                                           ; preds = %bb.aru
  %i.iuq = fadd double %i.iua, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.arz:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1468
  br i1 %.not31.i587.i1469, label %bb.asb, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  %i.iur = fadd double %i.isy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.asb:                                           ; preds = %bb.arz
  %i.ius = fadd double %i.iuc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476: ; preds = %bb.asb, %bb.asa, %bb.ary, %bb.arx, %bb.arw
  %.0.i588.i1477 = phi double [ %i.iuj, %bb.arw ], [ %i.iup, %bb.arx ], [ %i.iuq, %bb.ary ], [ %i.iur, %bb.asa ], [ %i.ius, %bb.asb ]
  %i.iut = fptrunc double %.0.i588.i1477 to float ; 2 uses
  %i.iuu = add nuw nsw i32 %.5.i1449, 1
  %i.iuv = zext nneg i32 %i.iuu to i64            ; 2 uses
  %i.iuw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1463, i64 %i.iuv
  %i.iux = load float, ptr %i.iuw, align 4, !tbaa !46 ; 3 uses
  %i.iuy = fpext float %i.iux to double           ; 8 uses
  %i.iuz = fcmp ogt float %i.iss, %i.iux
  %i.iva = select i1 %i.iuz, double %i.iuy, double %i.ist ; 2 uses
  %i.ivb = load i8, ptr %i.itc, align 1, !tbaa !21
  %.not.i596.i1478 = icmp eq i8 %i.ivb, 2
  %i.ivc = getelementptr inbounds nuw i8, ptr %.sink.i565.i1459, i64 %i.iuv ; 2 uses
  %i.ivd = load i8, ptr %i.ivc, align 1, !tbaa !21
  %.not31.i599.i1479 = icmp eq i8 %i.ivd, 2       ; 2 uses
  br i1 %.not.i596.i1478, label %bb.ash, label %bb.asc

bb.asc:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476
  br i1 %.not31.i599.i1479, label %bb.asg, label %bb.asd

bb.asd:                                           ; preds = %bb.asc
  %i.ive = fsub double %i.ist, %i.iuy             ; 3 uses
  %i.ivf = call double @llvm.fabs.f64(double %i.ive)
  %i.ivg = fcmp ult double %i.ivf, 1.000000e+00
  br i1 %i.ivg, label %bb.asf, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  %i.ivh = fadd double %i.iva, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.asf:                                           ; preds = %bb.asd
  %i.ivi = fadd double %i.ist, %i.iuy
  %i.ivj = fneg double %i.ive
  %i.ivk = call double @llvm.fmuladd.f64(double %i.ivj, double %i.ive, double 2.000000e+00)
  %i.ivl = call double @sqrt(double noundef %i.ivk) #20
  %i.ivm = fadd double %i.ivi, %i.ivl
  %i.ivn = fmul double %i.ivm, 5.000000e-01
  %.pr708.pre.i1542 = load i8, ptr %i.ivc, align 1, !tbaa !21
  %i.ivo = icmp eq i8 %.pr708.pre.i1542, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.asg:                                           ; preds = %bb.asc
  %i.ivp = fadd double %i.ist, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.ash:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476
  br i1 %.not31.i599.i1479, label %bb.asj, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  %i.ivq = fadd double %i.iuy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.asj:                                           ; preds = %bb.ash
  %i.ivr = fadd double %i.iva, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480: ; preds = %bb.asj, %bb.asi, %bb.asg, %bb.asf, %bb.ase
  %.not31.i611.i1481 = phi i1 [ true, %bb.asj ], [ true, %bb.asg ], [ false, %bb.asi ], [ %i.ivo, %bb.asf ], [ false, %bb.ase ] ; 2 uses
  %.0.i600.i1482 = phi double [ %i.ivr, %bb.asj ], [ %i.ivp, %bb.asg ], [ %i.ivq, %bb.asi ], [ %i.ivn, %bb.asf ], [ %i.ivh, %bb.ase ]
  %i.ivs = fptrunc double %.0.i600.i1482 to float ; 2 uses
  %i.ivt = fcmp ogt float %i.itz, %i.iux
  %i.ivu = select i1 %i.ivt, double %i.iuy, double %i.iua ; 2 uses
  %i.ivv = load i8, ptr %i.iue, align 1, !tbaa !21
  %.not.i608.i1483 = icmp eq i8 %i.ivv, 2
  br i1 %.not.i608.i1483, label %bb.asp, label %bb.ask

bb.ask:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480
  br i1 %.not31.i611.i1481, label %bb.aso, label %bb.asl

bb.asl:                                           ; preds = %bb.ask
  %i.ivw = fsub double %i.iua, %i.iuy             ; 3 uses
  %i.ivx = call double @llvm.fabs.f64(double %i.ivw)
  %i.ivy = fcmp ult double %i.ivx, 1.000000e+00
  br i1 %i.ivy, label %bb.asn, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.ivz = fadd double %i.ivu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.asn:                                           ; preds = %bb.asl
  %i.iwa = fadd double %i.iua, %i.iuy
  %i.iwb = fneg double %i.ivw
  %i.iwc = call double @llvm.fmuladd.f64(double %i.iwb, double %i.ivw, double 2.000000e+00)
  %i.iwd = call double @sqrt(double noundef %i.iwc) #20
  %i.iwe = fadd double %i.iwa, %i.iwd
  %i.iwf = fmul double %i.iwe, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.aso:                                           ; preds = %bb.ask
  %i.iwg = fadd double %i.iua, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.asp:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480
  br i1 %.not31.i611.i1481, label %bb.asr, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.iwh = fadd double %i.iuy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.asr:                                           ; preds = %bb.asp
  %i.iwi = fadd double %i.ivu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484: ; preds = %bb.asr, %bb.asq, %bb.aso, %bb.asn, %bb.asm
  %.0.i612.i1485 = phi double [ %i.ivz, %bb.asm ], [ %i.iwf, %bb.asn ], [ %i.iwg, %bb.aso ], [ %i.iwh, %bb.asq ], [ %i.iwi, %bb.asr ]
  %i.iwj = fptrunc double %.0.i612.i1485 to float ; 2 uses
  %i.iwk = fcmp ogt float %i.itu, %i.iut
  %i.iwl = select i1 %i.iwk, float %i.iut, float %i.itu ; 2 uses
  %i.iwm = fcmp ogt float %i.ivs, %i.iwj
  %i.iwn = select i1 %i.iwm, float %i.iwj, float %i.ivs ; 2 uses
  %i.iwo = fcmp ogt float %i.iwl, %i.iwn
  %i.iwp = select i1 %i.iwo, float %i.iwn, float %i.iwl ; 2 uses
  %i.iwq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1463, i64 %i.isf
  store float %i.iwp, ptr %i.iwq, align 4, !tbaa !46
  %i.iwr = add nuw nsw i32 %.5407.fr.i1450, %i.dp
  %i.iws = add nsw i32 %i.irx, -2
  %i.iwt = sub nsw i32 %.5.i1449, %i.dp
  %i.iwu = add nuw nsw i32 %.5.i1449, %i.dp
  %i.iwv = add nsw i32 %i.iry, -2
  %i.iww = add nsw i32 %i.irx, -1
  %i.iwx = add nsw i32 %i.iry, -1
  %i.iwy = sub nsw i32 %.5407.fr.i1450, %i.dp
  %i.iwz = load i64, ptr %i.hvm, align 8          ; 3 uses
  br label %.lr.ph.i1486

.lr.ph.i1486:                                     ; preds = %._crit_edge.i1491, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484
  %.0386740.i1487 = phi float [ %.us-phi724.i1493, %._crit_edge.i1491 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484 ] ; 3 uses
  %.0387739.i1488 = phi float [ %.us-phi.i1492, %._crit_edge.i1491 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484 ] ; 3 uses
  %.1398738.i1489 = phi i32 [ %i.ixn, %._crit_edge.i1491 ], [ %i.iwy, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484 ] ; 10 uses
  %i.ixa = add nsw i32 %.1398738.i1489, -1        ; 3 uses
  %i.ixb = icmp eq i32 %.1398738.i1489, 1
  %i.ixc = zext i1 %i.ixb to i32
  %i.ixd = add nuw nsw i32 %i.ixa, %i.ixc         ; 2 uses
  %i.ixe = icmp eq i32 %.1398738.i1489, %i.iws
  %.neg.i1490 = sext i1 %i.ixe to i32             ; 2 uses
  %i.ixf = add i32 %i.ixa, %.neg.i1490
  %i.ixg = icmp sgt i32 %.1398738.i1489, 0
  %i.ixh = zext nneg i32 %.1398738.i1489 to i64
  %i.ixi = sub nsw i32 %.1398738.i1489, %.5407.fr.i1450 ; 2 uses
  %i.ixj = mul nsw i32 %i.ixi, %i.ixi
  %i.ixk = sub nsw i32 %.5407.fr.i1450, %.1398738.i1489
  %i.ixl = sitofp i32 %i.ixk to float             ; 3 uses
  %i.ixm = fmul nnan float %i.ixl, %i.ixl
  %i.ixn = add i32 %.1398738.i1489, 1             ; 3 uses
  %i.ixo = zext nneg i32 %i.ixn to i64
  %i.ixp = zext nneg i32 %i.ixa to i64            ; 2 uses
  %i.ixq = add i32 %.1398738.i1489, %.neg.i1490
  %i.ixr = sext i32 %i.ixq to i64
  %i.ixs = sext i32 %i.ixf to i64                 ; 2 uses
  %i.ixt = add nsw i32 %i.ixd, -1
  %i.ixu = sext i32 %i.ixt to i64                 ; 2 uses
  %i.ixv = sext i32 %i.ixd to i64                 ; 2 uses
  br i1 %i.ixg, label %.lr.ph.split.i1500, label %._crit_edge.i1491

.lr.ph.split.i1500:                               ; preds = %.lr.ph.i1486
  %i.ixw = icmp slt i32 %.1398738.i1489, %i.iww
  %.fr736.i1501 = freeze i1 %i.ixw
  br i1 %.fr736.i1501, label %.lr.ph.split.split.i1502.preheader, label %._crit_edge.i1491

.lr.ph.split.split.i1502.preheader:               ; preds = %.lr.ph.split.i1500
  %i.ixx = mul i64 %i.iwz, %i.ixh
  %.sink.idx.i616.i1511 = select i1 %i.isa, i64 0, i64 %i.ixx
  %.sink.i617.i1512 = getelementptr inbounds nuw i8, ptr %i.isb, i64 %.sink.idx.i616.i1511 ; 2 uses
  %i.ixy = mul i64 %i.iwz, %i.ixo
  %.sink.idx.i618.i1515 = select i1 %i.isa, i64 0, i64 %i.ixy
  %.sink.i619.i1516 = getelementptr inbounds nuw i8, ptr %i.isb, i64 %.sink.idx.i618.i1515
  %i.ixz = mul i64 %i.iwz, %i.ixp
  %.sink.idx.i634.i1518 = select i1 %i.isa, i64 0, i64 %i.ixz
  %.sink.i635.i1519 = getelementptr inbounds nuw i8, ptr %i.isb, i64 %.sink.idx.i634.i1518
  br label %.lr.ph.split.split.i1502

.lr.ph.split.split.i1502:                         ; preds = %.lr.ph.split.split.i1502.preheader, %bb.atj
  %.1722.i1503 = phi float [ %.2.i1509, %bb.atj ], [ %.0386740.i1487, %.lr.ph.split.split.i1502.preheader ] ; 4 uses
  %.1388721.i1504 = phi float [ %.2389.i1508, %bb.atj ], [ %.0387739.i1488, %.lr.ph.split.split.i1502.preheader ] ; 4 uses
  %.1396719.i1505 = phi i32 [ %i.jcm, %bb.atj ], [ %i.iwt, %.lr.ph.split.split.i1502.preheader ] ; 11 uses
  %i.iya = add nsw i32 %.1396719.i1505, -1        ; 2 uses
  %i.iyb = icmp eq i32 %.1396719.i1505, 1
  %i.iyc = zext i1 %i.iyb to i32
  %i.iyd = add nuw nsw i32 %i.iya, %i.iyc         ; 4 uses
  %i.iye = icmp eq i32 %.1396719.i1505, %i.iwv
  %.neg411.i1506 = sext i1 %i.iye to i32
  %i.iyf = icmp sgt i32 %.1396719.i1505, 0
  %i.iyg = icmp slt i32 %.1396719.i1505, %i.iwx
  %or.cond771.i1507 = select i1 %i.iyf, i1 %i.iyg, i1 false
  br i1 %or.cond771.i1507, label %bb.ass, label %bb.atj

bb.ass:                                           ; preds = %.lr.ph.split.split.i1502
  %i.iyh = zext nneg i32 %.1396719.i1505 to i64   ; 3 uses
  %i.iyi = getelementptr inbounds nuw i8, ptr %.sink.i617.i1512, i64 %i.iyh ; 2 uses
  %i.iyj = load i8, ptr %i.iyi, align 1, !tbaa !21
  %.not412.i1513 = icmp eq i8 %i.iyj, 2
  br i1 %.not412.i1513, label %bb.atj, label %bb.ast

bb.ast:                                           ; preds = %bb.ass
  %i.iyk = sub nsw i32 %.1396719.i1505, %.5.i1449 ; 2 uses
  %i.iyl = mul nsw i32 %i.iyk, %i.iyk
  %i.iym = add nuw nsw i32 %i.iyl, %i.ixj
  %.not413.i1514 = icmp samesign ugt i32 %i.iym, %i.hvs
  br i1 %.not413.i1514, label %bb.atj, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  %i.iyn = sub nsw i32 %.5.i1449, %.1396719.i1505
  %i.iyo = sitofp i32 %i.iyn to float             ; 3 uses
  %i.iyp = call noundef float @llvm.fmuladd.f32(float %i.iyo, float %i.iyo, float %i.ixm) ; 3 uses
  %i.iyq = call nnan float @llvm.fmuladd.f32(float %i.iyp, float %i.iyp, float 1.000000e+00)
  %i.iyr = fdiv nnan float 1.000000e+00, %i.iyq
  %i.iys = getelementptr inbounds nuw i8, ptr %.sink.i619.i1516, i64 %i.iyh
  %i.iyt = load i8, ptr %i.iys, align 1, !tbaa !21
  %.not414.i1517 = icmp eq i8 %i.iyt, 2
  %i.iyu = getelementptr inbounds nuw i8, ptr %.sink.i635.i1519, i64 %i.iyh
  %i.iyv = load i8, ptr %i.iyu, align 1, !tbaa !21
  %.not415.i1520 = icmp eq i8 %i.iyv, 2           ; 2 uses
  br i1 %.not414.i1517, label %bb.asy, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  %i.iyw = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.iyx = icmp slt i32 %i.iyw, 2                 ; 3 uses
  %i.iyy = load ptr, ptr %i.hvu, align 8, !tbaa !149 ; 3 uses
  %i.iyz = load i64, ptr %i.hvv, align 8          ; 3 uses
  %i.iza = mul i64 %i.iyz, %i.ixr
  %.sink.idx.i630.i1521 = select i1 %i.iyx, i64 0, i64 %i.iza
  %.sink.i631.i1522 = getelementptr inbounds nuw i8, ptr %i.iyy, i64 %.sink.idx.i630.i1521
  %i.izb = sext i32 %i.iyd to i64                 ; 3 uses
  %i.izc = getelementptr inbounds [4 x i8], ptr %.sink.i631.i1522, i64 %i.izb
  %i.izd = load float, ptr %i.izc, align 4, !tbaa !46
  %i.ize = mul i64 %i.iyz, %i.ixs
  %.sink.idx.i632.i1523 = select i1 %i.iyx, i64 0, i64 %i.ize
  %.sink.i633.i1524 = getelementptr inbounds nuw i8, ptr %i.iyy, i64 %.sink.idx.i632.i1523
  %i.izf = getelementptr inbounds [4 x i8], ptr %.sink.i633.i1524, i64 %i.izb
  %i.izg = load float, ptr %i.izf, align 4, !tbaa !46 ; 2 uses
  %i.izh = fsub float %i.izd, %i.izg
  %i.izi = call noundef float @llvm.fabs.f32(float %i.izh) ; 2 uses
  br i1 %.not415.i1520, label %bb.asx, label %bb.asw

bb.asw:                                           ; preds = %bb.asv
  %i.izj = mul i64 %i.iyz, %i.ixu
  %.sink.idx.i628.i1525 = select i1 %i.iyx, i64 0, i64 %i.izj
  %.sink.i629.i1526 = getelementptr inbounds nuw i8, ptr %i.iyy, i64 %.sink.idx.i628.i1525
  %i.izk = getelementptr inbounds [4 x i8], ptr %.sink.i629.i1526, i64 %i.izb
  %i.izl = load float, ptr %i.izk, align 4, !tbaa !46
  %i.izm = fsub float %i.izg, %i.izl
  %i.izn = call noundef float @llvm.fabs.f32(float %i.izm)
  %i.izo = fadd float %i.izi, %i.izn
  br label %bb.ata

bb.asx:                                           ; preds = %bb.asv
  %i.izp = fmul float %i.izi, 2.000000e+00
  br label %bb.ata

bb.asy:                                           ; preds = %bb.asu
  br i1 %.not415.i1520, label %bb.ata, label %bb.asz

bb.asz:                                           ; preds = %bb.asy
  %i.izq = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.izr = icmp slt i32 %i.izq, 2                 ; 2 uses
  %i.izs = load ptr, ptr %i.hvu, align 8, !tbaa !149 ; 2 uses
  %i.izt = load i64, ptr %i.hvv, align 8          ; 2 uses
  %i.izu = mul i64 %i.izt, %i.ixs
  %.sink.idx.i636.i1538 = select i1 %i.izr, i64 0, i64 %i.izu
  %.sink.i637.i1539 = getelementptr inbounds nuw i8, ptr %i.izs, i64 %.sink.idx.i636.i1538
  %i.izv = sext i32 %i.iyd to i64                 ; 2 uses
  %i.izw = getelementptr inbounds [4 x i8], ptr %.sink.i637.i1539, i64 %i.izv
  %i.izx = load float, ptr %i.izw, align 4, !tbaa !46
  %i.izy = mul i64 %i.izt, %i.ixu
  %.sink.idx.i638.i1540 = select i1 %i.izr, i64 0, i64 %i.izy
  %.sink.i639.i1541 = getelementptr inbounds nuw i8, ptr %i.izs, i64 %.sink.idx.i638.i1540
  %i.izz = getelementptr inbounds [4 x i8], ptr %.sink.i639.i1541, i64 %i.izv
  %i.jaa = load float, ptr %i.izz, align 4, !tbaa !46
  %i.jab = fsub float %i.izx, %i.jaa
  %i.jac = call noundef float @llvm.fabs.f32(float %i.jab)
  %i.jad = fmul float %i.jac, 2.000000e+00
  br label %bb.ata

bb.ata:                                           ; preds = %bb.asz, %bb.asy, %bb.asx, %bb.asw
  %.sroa.0668.0.i1527 = phi float [ %i.izo, %bb.asw ], [ %i.jad, %bb.asz ], [ %i.izp, %bb.asx ], [ 0.000000e+00, %bb.asy ] ; 3 uses
  %i.jae = getelementptr inbounds nuw i8, ptr %i.iyi, i64 1
  %i.jaf = load i8, ptr %i.jae, align 1, !tbaa !21
  %.not417.i1528 = icmp eq i8 %i.jaf, 2
  %i.jag = zext nneg i32 %i.iya to i64            ; 2 uses
  %i.jah = getelementptr inbounds nuw i8, ptr %.sink.i617.i1512, i64 %i.jag
  %i.jai = load i8, ptr %i.jah, align 1, !tbaa !21
  %.not418.i1529 = icmp eq i8 %i.jai, 2           ; 2 uses
  br i1 %.not417.i1528, label %bb.ate, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  %i.jaj = add nsw i32 %.1396719.i1505, %.neg411.i1506
  %i.jak = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.jal = icmp slt i32 %i.jak, 2
  %i.jam = load ptr, ptr %i.hvu, align 8, !tbaa !149
  %i.jan = load i64, ptr %i.hvv, align 8
  %i.jao = mul i64 %i.jan, %i.ixv
  %.sink.idx.i652.i1530 = select i1 %i.jal, i64 0, i64 %i.jao
  %.sink.i653.i1531 = getelementptr inbounds nuw i8, ptr %i.jam, i64 %.sink.idx.i652.i1530 ; 2 uses
  %i.jap = zext nneg i32 %i.jaj to i64
  %i.jaq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i653.i1531, i64 %i.jap
  %i.jar = load float, ptr %i.jaq, align 4, !tbaa !46
  %i.jas = sext i32 %i.iyd to i64
  %i.jat = getelementptr [4 x i8], ptr %.sink.i653.i1531, i64 %i.jas ; 2 uses
  %i.jau = load float, ptr %i.jat, align 4, !tbaa !46 ; 2 uses
  %i.jav = fsub float %i.jar, %i.jau
  %i.jaw = call noundef float @llvm.fabs.f32(float %i.jav) ; 2 uses
  br i1 %.not418.i1529, label %bb.atd, label %bb.atc

bb.atc:                                           ; preds = %bb.atb
  %i.jax = getelementptr i8, ptr %i.jat, i64 -4
  %i.jay = load float, ptr %i.jax, align 4, !tbaa !46
  %i.jaz = fsub float %i.jau, %i.jay
  %i.jba = call noundef float @llvm.fabs.f32(float %i.jaz)
  %i.jbb = fadd float %i.jaw, %i.jba
  br label %bb.atg

bb.atd:                                           ; preds = %bb.atb
  %i.jbc = fmul float %i.jaw, 2.000000e+00
  br label %bb.atg

bb.ate:                                           ; preds = %bb.ata
  br i1 %.not418.i1529, label %bb.atg, label %bb.atf

bb.atf:                                           ; preds = %bb.ate
  %i.jbd = load i32, ptr %i.hvt, align 4, !tbaa !148
  %i.jbe = icmp slt i32 %i.jbd, 2
  %i.jbf = load ptr, ptr %i.hvu, align 8, !tbaa !149
  %i.jbg = load i64, ptr %i.hvv, align 8
  %i.jbh = mul i64 %i.jbg, %i.ixv
  %.sink.idx.i658.i1536 = select i1 %i.jbe, i64 0, i64 %i.jbh
  %.sink.i659.i1537 = getelementptr inbounds nuw i8, ptr %i.jbf, i64 %.sink.idx.i658.i1536
  %i.jbi = sext i32 %i.iyd to i64
  %i.jbj = getelementptr [4 x i8], ptr %.sink.i659.i1537, i64 %i.jbi ; 2 uses
  %i.jbk = load float, ptr %i.jbj, align 4, !tbaa !46
  %i.jbl = getelementptr i8, ptr %i.jbj, i64 -4
  %i.jbm = load float, ptr %i.jbl, align 4, !tbaa !46
  %i.jbn = fsub float %i.jbk, %i.jbm
  %i.jbo = call noundef float @llvm.fabs.f32(float %i.jbn)
end_hunk_11
