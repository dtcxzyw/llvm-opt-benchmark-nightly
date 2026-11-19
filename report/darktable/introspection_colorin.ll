Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorin?download=true
inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  br i1 %i.aed, label %bb.cz, label %bb.da, !prof !201

bb.cz:                                            ; preds = %bb.cy
  %i.aee = fcmp reassoc nsz arcp contract afn ogt float %i.adw, 0.000000e+00
  %i.aef = select reassoc nsz arcp contract afn i1 %i.aee, float %i.adw, float 0.000000e+00
  %i.aeg = fmul reassoc nnan nsz arcp contract afn float %i.aef, 6.553500e+04 ; 2 uses
  %i.aeh = fptosi float %i.aeg to i32             ; 2 uses
  %i.aei = uitofp nsz nneg i32 %i.aeh to float
  %i.aej = fsub reassoc nnan nsz arcp contract afn float %i.aeg, %i.aei
  %i.aek = zext nneg i32 %i.aeh to i64
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.aek ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !101, !noalias !205 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !101, !noalias !205
  %i.aep = fsub reassoc nsz arcp contract afn float %i.aeo, %i.aem
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.aep, %i.aej
  %i.aer = fadd reassoc nsz arcp contract afn float %i.aeq, %i.aem
  br label %.sink.split.i.i21.i.i

bb.da:                                            ; preds = %bb.cy
  %i.aes = load float, ptr %i.ade, align 4, !tbaa !101, !noalias !205
  %i.aet = load float, ptr %i.adb, align 16, !tbaa !101, !noalias !205
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.aet, %i.adw
  %i.aev = load float, ptr %i.adf, align 8, !tbaa !101, !noalias !205
  %i.aew = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aeu, float %i.aev)
  %i.aex = fmul reassoc nsz arcp contract afn float %i.aew, %i.aes
  br label %.sink.split.i.i21.i.i

.sink.split.i.i21.i.i:                            ; preds = %bb.da, %bb.cz, %bb.cx
  %.sroa.024.0.i.i.i = phi nsz float [ %i.adw, %bb.cx ], [ %i.aex, %bb.da ], [ %i.aer, %bb.cz ] ; 4 uses
  br i1 %i.adi, label %.sink.split24.i.i22.i.i, label %bb.db

bb.db:                                            ; preds = %.sink.split.i.i21.i.i
  %i.aey = fcmp reassoc nsz arcp contract afn olt float %i.adz, 1.000000e+00
  br i1 %i.aey, label %bb.dd, label %bb.dc, !prof !201

bb.dc:                                            ; preds = %bb.db
  %i.aez = load float, ptr %i.adk, align 16, !tbaa !101, !noalias !205
  %i.afa = load float, ptr %i.adj, align 4, !tbaa !101, !noalias !205
  %i.afb = fmul reassoc nsz arcp contract afn float %i.afa, %i.adz
  %i.afc = load float, ptr %i.adl, align 4, !tbaa !101, !noalias !205
  %i.afd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.afb, float %i.afc)
  %i.afe = fmul reassoc nsz arcp contract afn float %i.afd, %i.aez
  br label %.sink.split24.i.i22.i.i

bb.dd:                                            ; preds = %bb.db
  %i.aff = fcmp reassoc nsz arcp contract afn ogt float %i.adz, 0.000000e+00
  %i.afg = select reassoc nsz arcp contract afn i1 %i.aff, float %i.adz, float 0.000000e+00
  %i.afh = fmul reassoc nnan nsz arcp contract afn float %i.afg, 6.553500e+04 ; 2 uses
  %i.afi = fptosi float %i.afh to i32             ; 2 uses
  %i.afj = uitofp nsz nneg i32 %i.afi to float
  %i.afk = fsub reassoc nnan nsz arcp contract afn float %i.afh, %i.afj
  %i.afl = zext nneg i32 %i.afi to i64
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.afl ; 2 uses
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !101, !noalias !205 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !101, !noalias !205
  %i.afq = fsub reassoc nsz arcp contract afn float %i.afp, %i.afn
  %i.afr = fmul reassoc nsz arcp contract afn float %i.afq, %i.afk
  %i.afs = fadd reassoc nsz arcp contract afn float %i.afr, %i.afn
  br label %.sink.split24.i.i22.i.i

.sink.split24.i.i22.i.i:                          ; preds = %bb.dd, %bb.dc, %.sink.split.i.i21.i.i
  %.sroa.6.0.i.i.i = phi nsz float [ %i.adz, %.sink.split.i.i21.i.i ], [ %i.afs, %bb.dd ], [ %i.afe, %bb.dc ] ; 4 uses
  br i1 %i.ado, label %_apply_tone_curves.exit.i23.i.i, label %bb.de

bb.de:                                            ; preds = %.sink.split24.i.i22.i.i
  %i.aft = fcmp reassoc nsz arcp contract afn olt float %i.aec, 1.000000e+00
  br i1 %i.aft, label %bb.dg, label %bb.df, !prof !201

bb.df:                                            ; preds = %bb.de
  %i.afu = load float, ptr %i.adq, align 4, !tbaa !101, !noalias !205
  %i.afv = load float, ptr %i.adp, align 8, !tbaa !101, !noalias !205
  %i.afw = fmul reassoc nsz arcp contract afn float %i.afv, %i.aec
  %i.afx = load float, ptr %i.adr, align 16, !tbaa !101, !noalias !205
  %i.afy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.afw, float %i.afx)
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afy, %i.afu
  br label %_apply_tone_curves.exit.i23.i.i

bb.dg:                                            ; preds = %bb.de
  %i.aga = fcmp reassoc nsz arcp contract afn ogt float %i.aec, 0.000000e+00
  %i.agb = select reassoc nsz arcp contract afn i1 %i.aga, float %i.aec, float 0.000000e+00
  %i.agc = fmul reassoc nnan nsz arcp contract afn float %i.agb, 6.553500e+04 ; 2 uses
  %i.agd = fptosi float %i.agc to i32             ; 2 uses
  %i.age = uitofp nsz nneg i32 %i.agd to float
  %i.agf = fsub reassoc nnan nsz arcp contract afn float %i.agc, %i.age
  %i.agg = zext nneg i32 %i.agd to i64
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.agg ; 2 uses
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !101, !noalias !205 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !101, !noalias !205
  %i.agl = fsub reassoc nsz arcp contract afn float %i.agk, %i.agi
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, %i.agf
  %i.agn = fadd reassoc nsz arcp contract afn float %i.agm, %i.agi
  br label %_apply_tone_curves.exit.i23.i.i

_apply_tone_curves.exit.i23.i.i:                  ; preds = %bb.dg, %bb.df, %.sink.split24.i.i22.i.i
  %.sroa.10.0.i.i.i = phi nsz float [ %i.aec, %.sink.split24.i.i22.i.i ], [ %i.agn, %bb.dg ], [ %i.afz, %bb.df ] ; 4 uses
  %i.ago = fmul reassoc nsz arcp contract afn float %.sroa.024.0.i.i.i, %i.acj
  %i.agp = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i.i, %i.acp
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agp, %i.ago
  %i.agr = fmul reassoc nsz arcp contract afn float %.sroa.10.0.i.i.i, %i.acv
  %i.ags = fadd reassoc nsz arcp contract afn float %i.agq, %i.agr ; 2 uses
  %i.agt = fmul reassoc nsz arcp contract afn float %.sroa.024.0.i.i.i, %i.acl
  %i.agu = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i.i, %i.acr
  %i.agv = fadd reassoc nsz arcp contract afn float %i.agu, %i.agt
  %i.agw = fmul reassoc nsz arcp contract afn float %.sroa.10.0.i.i.i, %i.acx
  %i.agx = fadd reassoc nsz arcp contract afn float %i.agv, %i.agw ; 3 uses
  %i.agy = fmul reassoc nsz arcp contract afn float %.sroa.024.0.i.i.i, %i.acn
  %i.agz = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i.i, %i.act
  %i.aha = fadd reassoc nsz arcp contract afn float %i.agz, %i.agy
  %i.ahb = fmul reassoc nsz arcp contract afn float %.sroa.10.0.i.i.i, %i.acz
  %i.ahc = fadd reassoc nsz arcp contract afn float %i.aha, %i.ahb ; 2 uses
  %i.ahd = fadd reassoc nsz arcp contract afn float %.sroa.6.0.i.i.i, %.sroa.024.0.i.i.i
  %i.ahe = fadd reassoc nsz arcp contract afn float %i.ahd, %.sroa.10.0.i.i.i
  %i.ahf = fmul reassoc nsz arcp contract afn float %i.ags, f0x3F84C0A6 ; 2 uses
  %i.ahg = fcmp reassoc nsz arcp contract afn ogt float %i.ahf, f0x3C111AA7
  br i1 %i.ahg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_apply_tone_curves.exit.i23.i.i
  %i.ahh = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ahf) #27
  br label %bb.dj

bb.di:                                            ; preds = %_apply_tone_curves.exit.i23.i.i
  %i.ahi = fmul reassoc nsz arcp contract afn float %i.ags, f0x410137F7
  %i.ahj = fadd reassoc nsz arcp contract afn float %i.ahi, f0x3E0D3DCB
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ahk = phi reassoc nsz arcp contract afn float [ %i.ahh, %bb.dh ], [ %i.ahj, %bb.di ]
  %i.ahl = fcmp reassoc nsz arcp contract afn ogt float %i.agx, f0x3C111AA7
  br i1 %i.ahl, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.agx, f0x40F92F69
  %i.ahn = fadd reassoc nsz arcp contract afn float %i.ahm, f0x3E0D3DCB
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.aho = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.agx) #27
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.ahp = phi reassoc nsz arcp contract afn float [ %i.aho, %bb.dl ], [ %i.ahn, %bb.dk ] ; 3 uses
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.ahc, f0x3F9B2B9B ; 2 uses
  %i.ahr = fcmp reassoc nsz arcp contract afn ogt float %i.ahq, f0x3C111AA7
  br i1 %i.ahr, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ahs = fmul reassoc nsz arcp contract afn float %i.ahc, f0x41170A26
  %i.aht = fadd reassoc nsz arcp contract afn float %i.ahs, f0x3E0D3DCB
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.ahu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ahq) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ahv = phi reassoc nsz arcp contract afn float [ %i.ahu, %bb.do ], [ %i.aht, %bb.dn ]
  %i.ahw = fmul reassoc nsz arcp contract afn float %i.ahe, 0.000000e+00 ; 3 uses
  %i.ahx = fcmp reassoc nsz arcp contract afn ogt float %i.ahw, f0x3C111AA7
  br i1 %i.ahx, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ahy = fadd reassoc ninf nsz arcp contract afn float %i.ahw, f0x3E0D3DCB
  br label %dt_RGB_to_Lab.exit.i24.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.ahz = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ahw) #27
  br label %dt_RGB_to_Lab.exit.i24.i.i

dt_RGB_to_Lab.exit.i24.i.i:                       ; preds = %bb.dr, %bb.dq
  %i.aia = phi reassoc nsz arcp contract afn float [ %i.ahz, %bb.dr ], [ %i.ahy, %bb.dq ]
  %i.aib = fmul reassoc nsz arcp contract afn float %i.ahp, 1.160000e+02
  %i.aic = fadd reassoc nsz arcp contract afn float %i.aib, -1.600000e+01
  %i.aid = fsub reassoc nsz arcp contract afn float %i.ahk, %i.ahp
  %i.aie = fsub reassoc nsz arcp contract afn float %i.ahv, %i.ahp
  %i.aif = insertelement <4 x float> poison, float %i.aid, i64 1
  %i.aig = insertelement <4 x float> %i.aif, float %i.aie, i64 2
  %i.aih = insertelement <4 x float> %i.aig, float %i.aia, i64 3
  %i.aii = fmul reassoc nsz arcp contract afn <4 x float> %i.aih, <float poison, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.aij = insertelement <4 x float> %i.aii, float %i.aic, i64 0
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adt
  store <4 x float> %i.aij, ptr %i.aik, align 16, !tbaa !34, !alias.scope !206, !nontemporal !193
  %i.ail = add nuw i64 %.038.i.i.i, 1             ; 2 uses
  %exitcond.not.i29.i.i = icmp eq i64 %i.ail, %i.cp
  br i1 %exitcond.not.i29.i.i, label %process_cmatrix.exit, label %bb.cx

process_cmatrix.exit:                             ; preds = %bb.by, %dt_RGB_to_Lab.exit.i.i39.i, %dt_RGB_to_Lab.exit.i24.i.i, %dt_RGB_to_Lab.exit.i.i.i, %dt_RGB_to_Lab.exit.i19.i.i, %bb.n, %bb.z, %.critedge.i, %bb.ca, %bb.cw
  tail call void @llvm.x86.sse.sfence()
  br label %process_lcms2_bm.exit

bb.ds:                                            ; preds = %bb.j
  br i1 %i.bj, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.aim = getelementptr i8, ptr %5, i64 8
  %.val72 = load i32, ptr %i.aim, align 4, !tbaa !187
  %i.ain = getelementptr i8, ptr %5, i64 12
  %.val73 = load i32, ptr %i.ain, align 4, !tbaa !188 ; 2 uses
  %.8.val.fr.i = freeze i32 %.val72               ; 7 uses
  %i.aio = sext i32 %.8.val.fr.i to i64
  %.not16.i = icmp eq i32 %.val73, 0
  br i1 %.not16.i, label %process_lcms2_bm.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %bb.dt
  %.val = load ptr, ptr %i.f, align 16, !tbaa !29 ; 4 uses
  %.not17.i = icmp eq i32 %.8.val.fr.i, 0
  %i.aip = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %wide.trip.count45.i = zext i32 %.val73 to i64  ; 2 uses
  br i1 %.not17.i, label %.lr.ph8.split.split.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph8.i
  %wide.trip.count.i = zext i32 %.8.val.fr.i to i64 ; 6 uses
  %i.ait = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.aiu = add nsw i64 %i.ait, -4                 ; 2 uses
  %scevgep213.a = getelementptr i8, ptr %2, i64 %i.aiu
  %scevgep214 = getelementptr i8, ptr %3, i64 %i.aiu
  %min.iters.check216 = icmp ult i32 %.8.val.fr.i, 9
  %bound0218 = icmp ult ptr %3, %scevgep213.a
  %bound1219 = icmp ult ptr %2, %scevgep214
  %found.conflict220 = and i1 %bound0218, %bound1219
  %i.aiv = and i64 %wide.trip.count.i, 7          ; 2 uses
  %i.aiw = icmp eq i64 %i.aiv, 0
  %i.aix = select i1 %i.aiw, i64 8, i64 %i.aiv
  %n.vec223 = sub nsw i64 %wide.trip.count.i, %i.aix ; 2 uses
  %xtraiter252 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.aiy = icmp ult i32 %.8.val.fr.i, 4
  %unroll_iter256 = and i64 %wide.trip.count.i, 4294967292
  %lcmp.mod254.not = icmp eq i64 %xtraiter252, 0
  %lcmp.mod255 = icmp ne i64 %xtraiter252, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge5.us.i, %.lr.ph.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge5.us.i ] ; 2 uses
  %i.aiz = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.aja = mul i64 %i.aiz, %i.aio                 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aja ; 2 uses
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aja ; 11 uses
  %brmerge = select i1 %min.iters.check216, i1 true, i1 %found.conflict220
  br i1 %brmerge, label %scalar.ph215.preheader, label %vector.body224

vector.body224:                                   ; preds = %.lr.ph.us.i, %vector.body224
  %index225 = phi i64 [ %index.next232, %vector.body224 ], [ 0, %.lr.ph.us.i ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body224 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.us.i ] ; 2 uses
  %i.ajd = shl nuw nsw <8 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %i.aje = extractelement <8 x i64> %i.ajd, i64 0
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.aje
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, <8 x i64> %i.ajd ; 3 uses
  %wide.vec226 = load <32 x float>, ptr %i.ajf, align 4, !tbaa !101, !alias.scope !207 ; 3 uses
  %strided.vec227.a = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec228 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec229 = shufflevector <32 x float> %wide.vec226, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec227.a, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %wide.gep230 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec228, <8 x ptr> align 4 %wide.gep230, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec229, <8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true)), !tbaa !101, !alias.scope !208, !noalias !207
  %i.ajg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec228, %strided.vec227.a
  %i.ajh = fadd reassoc nsz arcp contract afn <8 x float> %i.ajg, %strided.vec229 ; 3 uses
  %i.aji = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ajh, zeroinitializer
  %i.ajj = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec229, %i.ajh ; 2 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ajj, splat (float 5.000000e-01)
  %i.ajl = and <8 x i1> %i.aji, %i.ajk            ; 2 uses
  %i.ajm = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajj, splat (float 2.000000e+00)
  %i.ajn = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ajm, splat (float -1.000000e+00)
  %i.ajo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajh, splat (float 2.000000e+00)
  %i.ajp = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ajo, <8 x float> splat (float 1.000000e+00))
  %i.ajq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ajp, splat (float 1.100000e-01)
  %i.ajr = fmul reassoc nsz arcp contract afn <8 x float> %i.ajq, %i.ajn ; 2 uses
  %i.ajs = fadd reassoc nsz arcp contract afn <8 x float> %i.ajr, %strided.vec228
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ajs, <8 x ptr> align 4 %wide.gep230, <8 x i1> %i.ajl), !tbaa !101, !alias.scope !208, !noalias !207
  %i.ajt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec229, %i.ajr
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ajt, <8 x ptr> align 4 %wide.gep231, <8 x i1> %i.ajl), !tbaa !101, !alias.scope !208, !noalias !207
  %index.next232 = add nuw i64 %index225, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.aju = icmp eq i64 %index.next232, %n.vec223
  br i1 %i.aju, label %scalar.ph215.preheader, label %vector.body224, !llvm.loop !174

scalar.ph215.preheader:                           ; preds = %vector.body224, %.lr.ph.us.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec223, %vector.body224 ]
  br label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %_apply_blue_mapping.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_apply_blue_mapping.exit.us.i ], [ %indvars.iv.i.ph, %scalar.ph215.preheader ] ; 2 uses
  %i.ajv = shl nuw nsw i64 %indvars.iv.i, 2       ; 2 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.ajv ; 3 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.ajv ; 3 uses
  %i.ajy = load float, ptr %i.ajw, align 4, !tbaa !101 ; 2 uses
  store float %i.ajy, ptr %i.ajx, align 4, !tbaa !101
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !101 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4 ; 2 uses
  store float %i.aka, ptr %i.akb, align 4, !tbaa !101
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !101 ; 4 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8 ; 2 uses
  store float %i.akd, ptr %i.ake, align 4, !tbaa !101
  %i.akf = fadd reassoc nsz arcp contract afn float %i.aka, %i.ajy
  %i.akg = fadd reassoc nsz arcp contract afn float %i.akf, %i.akd ; 3 uses
  %i.akh = fcmp reassoc nsz arcp contract afn ogt float %i.akg, 0.000000e+00
  br i1 %i.akh, label %bb.du, label %_apply_blue_mapping.exit.us.i

bb.du:                                            ; preds = %scalar.ph215
  %i.aki = fdiv reassoc nsz arcp contract afn float %i.akd, %i.akg ; 2 uses
  %i.akj = fcmp reassoc nsz arcp contract afn ogt float %i.aki, 5.000000e-01
  br i1 %i.akj, label %bb.dv, label %_apply_blue_mapping.exit.us.i

bb.dv:                                            ; preds = %bb.du
  %i.akk = fmul reassoc nnan nsz arcp contract afn float %i.aki, 2.000000e+00
  %i.akl = fadd reassoc nnan nsz arcp contract afn float %i.akk, -1.000000e+00
  %i.akm = fmul reassoc nnan nsz arcp contract afn float %i.akg, 2.000000e+00
  %i.akn = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.akm, float 1.000000e+00)
  %i.ako = fmul reassoc nnan nsz arcp contract afn float %i.akn, 1.100000e-01
  %i.akp = fmul reassoc nsz arcp contract afn float %i.ako, %i.akl ; 2 uses
  %i.akq = fadd reassoc nsz arcp contract afn float %i.akp, %i.aka
  store float %i.akq, ptr %i.akb, align 4, !tbaa !101
  %i.akr = fsub reassoc nsz arcp contract afn float %i.akd, %i.akp
  store float %i.akr, ptr %i.ake, align 4, !tbaa !101
  br label %_apply_blue_mapping.exit.us.i

_apply_blue_mapping.exit.us.i:                    ; preds = %bb.dv, %bb.du, %scalar.ph215
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph215, !llvm.loop !175

.lr.ph4.us.preheader.i:                           ; preds = %._crit_edge.us.i
  %i.aks = load ptr, ptr %i.aiq, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.aks, ptr noundef nonnull %i.ajc, ptr noundef nonnull %i.ajc, i32 noundef %.8.val.fr.i) #18
  br i1 %i.aiy, label %.lr.ph4.us.i.epil.preheader, label %.lr.ph4.us.i

.lr.ph4.us.i:                                     ; preds = %.lr.ph4.us.preheader.i, %.lr.ph4.us.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ] ; 5 uses
  %niter257 = phi i64 [ %niter257.next.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ]
  %.idx.i = shl nuw nsw i64 %indvars.iv22.i, 4
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %.idx.i ; 2 uses
  %.val.i.us.i = load <4 x float>, ptr %i.akt, align 16, !tbaa !34
  %i.aku = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i, <4 x float> zeroinitializer)
  %i.akv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aku, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akv, ptr %i.akt, align 16, !tbaa !34
  %indvars.iv.next23.i = shl i64 %indvars.iv22.i, 4
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %indvars.iv.next23.i
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16 ; 2 uses
  %.val.i.us.i.1 = load <4 x float>, ptr %i.akx, align 16, !tbaa !34
  %i.aky = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.1, <4 x float> zeroinitializer)
  %i.akz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aky, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akz, ptr %i.akx, align 16, !tbaa !34
  %indvars.iv.next23.i.1 = shl i64 %indvars.iv22.i, 4
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %indvars.iv.next23.i.1
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 32 ; 2 uses
  %.val.i.us.i.2 = load <4 x float>, ptr %i.alb, align 16, !tbaa !34
  %i.alc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.2, <4 x float> zeroinitializer)
  %i.ald = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alc, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ald, ptr %i.alb, align 16, !tbaa !34
  %indvars.iv.next23.i.2 = shl i64 %indvars.iv22.i, 4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %indvars.iv.next23.i.2
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 48 ; 2 uses
  %.val.i.us.i.3 = load <4 x float>, ptr %i.alf, align 16, !tbaa !34
  %i.alg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.3, <4 x float> zeroinitializer)
  %i.alh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alg, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.alh, ptr %i.alf, align 16, !tbaa !34
  %indvars.iv.next23.i.3 = add nuw nsw i64 %indvars.iv22.i, 4 ; 2 uses
  %niter257.next.3 = add i64 %niter257, 4         ; 2 uses
  %niter257.ncmp.3 = icmp eq i64 %niter257.next.3, %unroll_iter256
  br i1 %niter257.ncmp.3, label %._crit_edge5.us.i.loopexit.unr-lcssa, label %.lr.ph4.us.i

._crit_edge5.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph4.us.i
  br i1 %lcmp.mod254.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil.preheader

.lr.ph4.us.i.epil.preheader:                      ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.preheader.i
  %indvars.iv22.i.epil.init = phi i64 [ 0, %.lr.ph4.us.preheader.i ], [ %indvars.iv.next23.i.3, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph4.us.i.epil

.lr.ph4.us.i.epil:                                ; preds = %.lr.ph4.us.i.epil, %.lr.ph4.us.i.epil.preheader
  %indvars.iv22.i.epil = phi i64 [ %indvars.iv22.i.epil.init, %.lr.ph4.us.i.epil.preheader ], [ %indvars.iv.next23.i.epil, %.lr.ph4.us.i.epil ] ; 2 uses
  %epil.iter253 = phi i64 [ 0, %.lr.ph4.us.i.epil.preheader ], [ %epil.iter253.next, %.lr.ph4.us.i.epil ]
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv22.i.epil, 4
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %.idx.i.epil ; 2 uses
  %.val.i.us.i.epil = load <4 x float>, ptr %i.ali, align 16, !tbaa !34
  %i.alj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.epil, <4 x float> zeroinitializer)
  %i.alk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.alj, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.alk, ptr %i.ali, align 16, !tbaa !34
  %indvars.iv.next23.i.epil = add nuw nsw i64 %indvars.iv22.i.epil, 1
  %epil.iter253.next = add i64 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i64 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil, !llvm.loop !176

._crit_edge5.us.i:                                ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.i.epil, %._crit_edge.us.i
  %.sink.in.i = phi ptr [ %i.ais, %._crit_edge.us.i ], [ %i.air, %.lr.ph4.us.i.epil ], [ %i.air, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !212
  tail call void @cmsDoTransform(ptr noundef %.sink.i, ptr noundef nonnull %i.ajc, ptr noundef nonnull %i.ajc, i32 noundef %.8.val.fr.i) #18
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count45.i
  br i1 %exitcond31.not.i, label %process_lcms2_bm.exit, label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_apply_blue_mapping.exit.us.i
  %i.all = load ptr, ptr %i.aip, align 16, !tbaa !105
  %.not.us.i = icmp eq ptr %i.all, null
  br i1 %.not.us.i, label %._crit_edge5.us.i, label %.lr.ph4.us.preheader.i

.lr.ph8.split.split.i:                            ; preds = %.lr.ph8.i, %bb.dx
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.dx ], [ 0, %.lr.ph8.i ]
  %i.alm = load ptr, ptr %i.aip, align 16, !tbaa !105
  %.not.i77 = icmp eq ptr %i.alm, null
  br i1 %.not.i77, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph8.split.split.i
  %i.aln = load ptr, ptr %i.aiq, align 32, !tbaa !106
  tail call void @cmsDoTransform(ptr noundef %i.aln, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph8.split.split.i, %bb.dw
  %.sink49.in.i = phi ptr [ %i.air, %bb.dw ], [ %i.ais, %.lr.ph8.split.split.i ]
  %.sink49.i = load ptr, ptr %.sink49.in.i, align 8, !tbaa !212
  tail call void @cmsDoTransform(ptr noundef %.sink49.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %process_lcms2_bm.exit, label %.lr.ph8.split.split.i

bb.dy:                                            ; preds = %bb.ds
  %.val74 = load ptr, ptr %i.f, align 16, !tbaa !29 ; 4 uses
  %i.alo = getelementptr i8, ptr %5, i64 8
  %.val75 = load i32, ptr %i.alo, align 4, !tbaa !187
  %i.alp = getelementptr i8, ptr %5, i64 12
  %.val76 = load i32, ptr %i.alp, align 4, !tbaa !188 ; 2 uses
  %.8.val.fr.i78 = freeze i32 %.val75             ; 13 uses
  %i.alq = sext i32 %.val76 to i64                ; 5 uses
  %i.alr = sext i32 %.8.val.fr.i78 to i64         ; 6 uses
  %i.als = shl nsw i64 %i.alr, 2                  ; 3 uses
  %i.alt = shl nsw i64 %i.alr, 4
  %i.alu = add nsw i64 %i.alt, 48
  %i.alv = and i64 %i.alu, -64
  %i.alw = tail call ptr @dt_alloc_aligned(i64 noundef %i.alv) #18 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.alw, i64 64) ]
  %.not14.i = icmp eq i32 %.val76, 0
  br i1 %.not14.i, label %process_lcms2_proper.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.dy
  %i.alx = fcmp reassoc nsz arcp contract afn une <2 x float> %i.bc, splat (float 1.000000e+00) ; 2 uses
end_hunk_0
