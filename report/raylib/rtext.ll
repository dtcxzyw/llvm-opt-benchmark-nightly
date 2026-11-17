Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %i.asw = fdiv float %i.ast, %i.asv
  %.1.i.i.i.i.i.i.i = select i1 %i.ass, float %i.asw, float %.0298.i.i.i.i.i.i.i
  %.0295.i.i.i.i.i.i.i = select i1 %i.ass, float %i.aiz, float %i.asf
  %i.asx = fmul float %i.asi, %.1.i.i.i.i.i.i.i   ; 4 uses
  %i.asy = icmp slt i32 %i.arz, %.pre-phi474.i.i.i.i.i.i.i
  br i1 %i.asy, label %.lr.ph467.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph467.i.i.i.i.i.i.i:                          ; preds = %bb.go
  %i.asz = fmul float %i.asx, 5.000000e-01        ; 3 uses
  %i.ata = add nuw nsw i64 %i.aso, 1              ; 2 uses
  %i.atb = add nsw i32 %.pre-phi474.i.i.i.i.i.i.i, -2
  %i.atc = sub nsw i32 %.pre-phi.i.i.i.i.i.i.i, %.pre-phi474.i.i.i.i.i.i.i
  %i.atd = and i32 %i.atc, 1
  %lcmp.mod809.not.not = icmp eq i32 %i.atd, 0
  br i1 %lcmp.mod809.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i.i.i.i.i
  %i.ate = fadd float %i.asz, %i.ask
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.ata ; 2 uses
  %i.atg = load float, ptr %i.atf, align 4
  %i.ath = fadd float %i.ate, %i.atg
  store float %i.ath, ptr %i.atf, align 4
  %i.ati = fadd float %i.asx, %i.ask              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.prol = add nuw nsw i64 %i.aso, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i.i.i.i.i
  %indvars.iv471.i.i.i.i.i.i.i.unr = phi i64 [ %i.ata, %.lr.ph467.i.i.i.i.i.i.i ], [ %indvars.iv.next472.i.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.i.i.i.i.unr = phi float [ %i.ask, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.ati, %.prol.loopexit.unr-lcssa ]
  %.lcssa727.unr = phi float [ poison, %.lr.ph467.i.i.i.i.i.i.i ], [ %i.ati, %.prol.loopexit.unr-lcssa ]
  %i.atj = icmp eq i32 %i.atb, %.pre-phi.i.i.i.i.i.i.i
  br i1 %i.atj, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph467.i.i.i.i.i.i.i.new

.lr.ph467.i.i.i.i.i.i.i.new:                      ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new
  %indvars.iv471.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.i.i.i.i.1, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %indvars.iv471.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i.i.i.i.i = phi float [ %i.atu, %.lr.ph467.i.i.i.i.i.i.i.new ], [ %.0294466.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.atk = fadd float %i.asz, %.0294466.i.i.i.i.i.i.i
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i ; 2 uses
  %i.atm = load float, ptr %i.atl, align 4
  %i.atn = fadd float %i.atk, %i.atm
  store float %i.atn, ptr %i.atl, align 4
  %i.ato = fadd float %i.asx, %.0294466.i.i.i.i.i.i.i ; 2 uses
  %i.atp = fadd float %i.asz, %i.ato
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv471.i.i.i.i.i.i.i
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 4 ; 2 uses
  %i.ats = load float, ptr %i.atr, align 4
  %i.att = fadd float %i.atp, %i.ats
  store float %i.att, ptr %i.atr, align 4
  %i.atu = fadd float %i.asx, %i.ato              ; 2 uses
  %indvars.iv.next472.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.atv = trunc nuw i64 %indvars.iv.next472.i.i.i.i.i.i.i.1 to i32
  %i.atw = icmp sgt i32 %.pre-phi474.i.i.i.i.i.i.i, %i.atv
  br i1 %i.atw, label %.lr.ph467.i.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.i.i.i.i.new, %bb.go
  %.0294.lcssa.i.i.i.i.i.i.i = phi float [ %i.ask, %bb.go ], [ %.lcssa727.unr, %.prol.loopexit ], [ %i.atu, %.lr.ph467.i.i.i.i.i.i.i.new ]
  %i.atx = fsub float %.1300.i.i.i.i.i.i.i, %.0295.i.i.i.i.i.i.i
  %i.aty = fadd float %i.asd, 1.000000e+00        ; 2 uses
  %i.atz = fsub nnan float %i.aty, %i.asd
  %i.aua = fsub float %i.aty, %.1304.i.i.i.i.i.i.i
  %i.aub = fadd float %i.atz, %i.aua
  %i.auc = fmul float %i.aub, 5.000000e-01
  %i.aud = fmul float %i.auc, %i.atx
  %i.aue = call float @llvm.fmuladd.f32(float %i.asi, float %i.aud, float %.0294.lcssa.i.i.i.i.i.i.i)
  %i.auf = zext nneg i32 %.pre-phi474.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.auf ; 2 uses
  %i.auh = load float, ptr %i.aug, align 4
  %i.aui = fadd float %i.aue, %i.auh
  store float %i.aui, ptr %i.aug, align 4
  %i.auj = fsub float %.1300.i.i.i.i.i.i.i, %.1302.i.i.i.i.i.i.i
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %i.auf ; 2 uses
  %i.aul = load float, ptr %i.auk, align 4
  %i.aum = call float @llvm.fmuladd.f32(float %i.asi, float %i.auj, float %i.aul)
  store float %i.aum, ptr %i.auk, align 4
  br label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

bb.gp:                                            ; preds = %bb.gj, %bb.gi
  br i1 %i.aiw, label %.lr.ph.i.i94.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i.i:                           ; preds = %bb.gp
  %i.aun = fsub float %i.aqh, %i.alm
  %i.auo = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i.i.i.i.i, i64 20 ; 30 uses
  %i.aup = fcmp olt float %i.aqq, %i.aiy          ; 7 uses
  %or.cond35.i.i.i.i.i.i = select i1 %i.alg, i1 true, i1 %i.aup
  %i.auq = fcmp olt float %i.aiz, %i.aql          ; 7 uses
  %or.cond36.i.i.i.i.i.i = or i1 %i.auq, %or.cond35.i.i.i.i.i.i
  %i.aur = fmul float %i.aun, %i.aqn
  %i.aus = fdiv float %i.aur, %i.alh
  %i.aut = fadd float %i.alm, %i.aus
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.aqm, float %i.aut, float %i.alm ; 4 uses
  %i.auu = fsub float %i.aqh, %.055.i457.i.i.i.i.i.i.i
  %i.auv = fsub float %i.aqq, %i.aiz              ; 7 uses
  %i.auw = fmul float %i.auv, %i.auu
  %i.aux = fsub float %i.aiz, %.0301.i.i.i.i.i.i.i
  %i.auy = fdiv float %i.auw, %i.aux
  %i.auz = fadd float %i.aqh, %i.auy
  %.053.i459.i.i.i.i.i.i.i = select i1 %i.aqr, float %i.auz, float %i.aqh ; 3 uses
  %i.ava = fsub float %.0299.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i ; 2 uses
  %i.avb = insertelement <2 x float> poison, float %i.alm, i64 0
  %i.avc = shufflevector <2 x float> %i.avb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avd = insertelement <2 x float> poison, float %i.alk, i64 0
  %i.ave = shufflevector <2 x float> %i.avd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.gq

bb.gq:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i.i, %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i, 1 ; 3 uses
  %i.avf = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i.i to i32
  %i.avg = uitofp nneg i32 %i.avf to float        ; 90 uses
  %i.avh = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i.i to i32
  %i.avi = uitofp nneg i32 %i.avh to float        ; 60 uses
  %i.avj = insertelement <2 x float> poison, float %i.avg, i64 0
  %i.avk = insertelement <2 x float> %i.avj, float %i.avi, i64 1
  %i.avl = fsub <2 x float> %i.avk, %i.avc        ; 7 uses
  %i.avm = fdiv <2 x float> %i.avl, %i.ave        ; 2 uses
  %i.avn = extractelement <2 x float> %i.avm, i64 0
  %i.avo = fadd float %i.avn, %i.aiy              ; 48 uses
  %i.avp = extractelement <2 x float> %i.avm, i64 1
  %i.avq = fadd float %i.avp, %i.aiy              ; 48 uses
  %i.avr = fcmp olt float %i.alm, %i.avg          ; 2 uses
  %i.avs = fcmp ogt float %i.aqh, %i.avi          ; 2 uses
  %or.cond339.i.i.i.i.i.i.i = select i1 %i.avr, i1 %i.avs, i1 false
  br i1 %or.cond339.i.i.i.i.i.i.i, label %bb.gr, label %bb.ho

bb.gr:                                            ; preds = %bb.gq
  %i.avt = fcmp oeq float %i.avo, %i.aiy
  %or.cond7.i.i.i.i.i.i = select i1 %i.avt, i1 true, i1 %i.aup
  %i.avu = fcmp olt float %i.avo, %i.aql          ; 2 uses
  %or.cond8.i.i.i.i.i.i = or i1 %i.avu, %or.cond7.i.i.i.i.i.i
  br i1 %or.cond8.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.avv = extractelement <2 x float> %i.avl, i64 0
  %i.avw = fmul float %i.aqn, %i.avv
  %i.avx = fsub float %i.avo, %i.aiy
  %i.avy = fdiv float %i.avw, %i.avx
  %i.avz = fadd float %i.alm, %i.avy
  %.055.i359.i.i.i.i.i.i.i = select i1 %i.aqm, float %i.avz, float %i.alm ; 4 uses
  %i.awa = fcmp ogt float %i.avo, %i.aqq
  br i1 %i.awa, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.awb = fsub float %i.avg, %.055.i359.i.i.i.i.i.i.i
  %i.awc = fsub float %i.aqq, %i.avo
  %i.awd = fmul float %i.awc, %i.awb
  %i.awe = fsub float %i.avo, %.0301.i.i.i.i.i.i.i
  %i.awf = fdiv float %i.awd, %i.awe
  %i.awg = fadd float %i.awf, %i.avg
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.053.i361.i.i.i.i.i.i.i = phi float [ %i.awg, %bb.gt ], [ %i.avg, %bb.gs ] ; 3 uses
  %.0.i362.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.gt ], [ %i.avo, %bb.gs ] ; 2 uses
  %i.awh = fcmp ugt float %.055.i359.i.i.i.i.i.i.i, %i.avg
  %i.awi = fcmp ugt float %.053.i361.i.i.i.i.i.i.i, %i.avg
  %or.cond.i363.i.i.i.i.i.i.i = select i1 %i.awh, i1 true, i1 %i.awi
  br i1 %or.cond.i363.i.i.i.i.i.i.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awj = load float, ptr %i.auo, align 4
  %i.awk = fsub float %.0.i362.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awm = load float, ptr %i.awl, align 4
  %i.awn = call float @llvm.fmuladd.f32(float %i.awj, float %i.awk, float %i.awm)
  store float %i.awn, ptr %i.awl, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.gw:                                            ; preds = %bb.gu
  %i.awo = fcmp ult float %.055.i359.i.i.i.i.i.i.i, %i.avi
  %i.awp = fcmp ult float %.053.i361.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i364.i.i.i.i.i.i.i = select i1 %i.awo, i1 true, i1 %i.awp
  br i1 %or.cond62.i364.i.i.i.i.i.i.i, label %bb.gx, label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.awq = load float, ptr %i.auo, align 4
  %i.awr = fsub float %.0.i362.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.aws = fmul float %i.awr, %i.awq
  %i.awt = fsub float %.055.i359.i.i.i.i.i.i.i, %i.avg
  %i.awu = fsub float %.053.i361.i.i.i.i.i.i.i, %i.avg
  %i.awv = fadd float %i.awt, %i.awu
  %i.aww = fmul float %i.awv, 5.000000e-01
  %i.awx = fsub float 1.000000e+00, %i.aww
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.awz = load float, ptr %i.awy, align 4
  %i.axa = call float @llvm.fmuladd.f32(float %i.aws, float %i.awx, float %i.awz)
  store float %i.axa, ptr %i.awy, align 4
  br label %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i: ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gr
  %i.axb = fcmp oeq float %i.avo, %i.avq
  %i.axc = fcmp ogt float %i.avo, %i.aqq
  %or.cond9.i.i.i.i.i.i = select i1 %i.axb, i1 true, i1 %i.axc
  %i.axd = fcmp olt float %i.avq, %i.aql          ; 2 uses
  %or.cond10.i.i.i.i.i.i = or i1 %i.axd, %or.cond9.i.i.i.i.i.i
  br i1 %or.cond10.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  br i1 %i.avu, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.axe = fsub nnan float %i.avi, %i.avg
  %i.axf = fsub float %i.aql, %i.avo
  %i.axg = fmul float %i.axe, %i.axf
  %i.axh = fsub float %i.avq, %i.avo
  %i.axi = fdiv float %i.axg, %i.axh
  %i.axj = fadd float %i.axi, %i.avg
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.055.i366.i.i.i.i.i.i.i = phi float [ %i.axj, %bb.gz ], [ %i.avg, %bb.gy ] ; 4 uses
  %.054.i367.i.i.i.i.i.i.i = phi float [ %i.aql, %bb.gz ], [ %i.avo, %bb.gy ] ; 3 uses
  %i.axk = fcmp ogt float %i.avq, %i.aqq
  br i1 %i.axk, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.axl = fsub float %i.avi, %.055.i366.i.i.i.i.i.i.i
  %i.axm = fsub float %i.aqq, %i.avq
  %i.axn = fmul float %i.axm, %i.axl
  %i.axo = fsub float %i.avq, %.054.i367.i.i.i.i.i.i.i
  %i.axp = fdiv float %i.axn, %i.axo
  %i.axq = fadd float %i.axp, %i.avi
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.053.i368.i.i.i.i.i.i.i = phi float [ %i.axq, %bb.hb ], [ %i.avi, %bb.ha ] ; 3 uses
  %.0.i369.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.hb ], [ %i.avq, %bb.ha ] ; 2 uses
  %i.axr = fcmp ugt float %.055.i366.i.i.i.i.i.i.i, %i.avg
  %i.axs = fcmp ugt float %.053.i368.i.i.i.i.i.i.i, %i.avg
  %or.cond.i370.i.i.i.i.i.i.i = select i1 %i.axr, i1 true, i1 %i.axs
  br i1 %or.cond.i370.i.i.i.i.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.axt = load float, ptr %i.auo, align 4
  %i.axu = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.axw = load float, ptr %i.axv, align 4
  %i.axx = call float @llvm.fmuladd.f32(float %i.axt, float %i.axu, float %i.axw)
  store float %i.axx, ptr %i.axv, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  %i.axy = fcmp ult float %.055.i366.i.i.i.i.i.i.i, %i.avi
  %i.axz = fcmp ult float %.053.i368.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i371.i.i.i.i.i.i.i = select i1 %i.axy, i1 true, i1 %i.axz
  br i1 %or.cond62.i371.i.i.i.i.i.i.i, label %bb.hf, label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.he
  %i.aya = load float, ptr %i.auo, align 4
  %i.ayb = fsub float %.0.i369.i.i.i.i.i.i.i, %.054.i367.i.i.i.i.i.i.i
  %i.ayc = fmul float %i.ayb, %i.aya
  %i.ayd = fsub float %.055.i366.i.i.i.i.i.i.i, %i.avg
  %i.aye = fsub float %.053.i368.i.i.i.i.i.i.i, %i.avg
  %i.ayf = fadd float %i.ayd, %i.aye
  %i.ayg = fmul float %i.ayf, 5.000000e-01
  %i.ayh = fsub float 1.000000e+00, %i.ayg
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.ayj = load float, ptr %i.ayi, align 4
  %i.ayk = call float @llvm.fmuladd.f32(float %i.ayc, float %i.ayh, float %i.ayj)
  store float %i.ayk, ptr %i.ayi, align 4
  br label %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i: ; preds = %bb.hf, %bb.he, %bb.hd, %stbtt__handle_clipped_edge.exit365.i.i.i.i.i.i.i
  %i.ayl = fcmp oeq float %i.avq, %i.aiz
  %i.aym = fcmp ogt float %i.avq, %i.aqq
  %or.cond11.i.i.i.i.i.i = select i1 %i.ayl, i1 true, i1 %i.aym
  %or.cond12.i.i.i.i.i.i = or i1 %i.auq, %or.cond11.i.i.i.i.i.i
  br i1 %or.cond12.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  br i1 %i.axd, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.ayn = fsub float %i.aqh, %i.avi
  %i.ayo = fsub float %i.aql, %i.avq
  %i.ayp = fmul float %i.ayn, %i.ayo
  %i.ayq = fsub float %i.aiz, %i.avq
  %i.ayr = fdiv float %i.ayp, %i.ayq
  %i.ays = fadd float %i.ayr, %i.avi
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.055.i373.i.i.i.i.i.i.i = phi float [ %i.ays, %bb.hh ], [ %i.avi, %bb.hg ] ; 4 uses
  %.054.i374.i.i.i.i.i.i.i = phi float [ %i.aql, %bb.hh ], [ %i.avq, %bb.hg ] ; 3 uses
  br i1 %i.aqr, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.ayt = fsub float %i.aqh, %.055.i373.i.i.i.i.i.i.i
  %i.ayu = fmul float %i.auv, %i.ayt
  %i.ayv = fsub float %i.aiz, %.054.i374.i.i.i.i.i.i.i
  %i.ayw = fdiv float %i.ayu, %i.ayv
  %i.ayx = fadd float %i.aqh, %i.ayw
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.053.i375.i.i.i.i.i.i.i = phi float [ %i.ayx, %bb.hj ], [ %i.aqh, %bb.hi ] ; 3 uses
  %.0.i376.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.hj ], [ %i.aiz, %bb.hi ] ; 2 uses
  %i.ayy = fcmp ugt float %.055.i373.i.i.i.i.i.i.i, %i.avg
  %i.ayz = fcmp ugt float %.053.i375.i.i.i.i.i.i.i, %i.avg
  %or.cond.i377.i.i.i.i.i.i.i = select i1 %i.ayy, i1 true, i1 %i.ayz
  br i1 %or.cond.i377.i.i.i.i.i.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aza = load float, ptr %i.auo, align 4
  %i.azb = fsub float %.0.i376.i.i.i.i.i.i.i, %.054.i374.i.i.i.i.i.i.i
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.azd = load float, ptr %i.azc, align 4
  %i.aze = call float @llvm.fmuladd.f32(float %i.aza, float %i.azb, float %i.azd)
  store float %i.aze, ptr %i.azc, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.azf = fcmp ult float %.055.i373.i.i.i.i.i.i.i, %i.avi
  %i.azg = fcmp ult float %.053.i375.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i378.i.i.i.i.i.i.i = select i1 %i.azf, i1 true, i1 %i.azg
  br i1 %or.cond62.i378.i.i.i.i.i.i.i, label %bb.hn, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hm
  %i.azh = load float, ptr %i.auo, align 4
  %i.azi = fsub float %.0.i376.i.i.i.i.i.i.i, %.054.i374.i.i.i.i.i.i.i
  %i.azj = fmul float %i.azi, %i.azh
  %i.azk = fsub float %.055.i373.i.i.i.i.i.i.i, %i.avg
  %i.azl = fsub float %.053.i375.i.i.i.i.i.i.i, %i.avg
  %i.azm = fadd float %i.azk, %i.azl
  %i.azn = fmul float %i.azm, 5.000000e-01
  %i.azo = fsub float 1.000000e+00, %i.azn
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.azq = load float, ptr %i.azp, align 4
  %i.azr = call float @llvm.fmuladd.f32(float %i.azj, float %i.azo, float %i.azq)
  store float %i.azr, ptr %i.azp, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.gq
  %i.azs = fcmp olt float %i.aqh, %i.avg          ; 2 uses
  %i.azt = fcmp ogt float %i.alm, %i.avi          ; 2 uses
  %or.cond340.i.i.i.i.i.i.i = select i1 %i.azs, i1 %i.azt, i1 false
  br i1 %or.cond340.i.i.i.i.i.i.i, label %bb.hp, label %bb.im

bb.hp:                                            ; preds = %bb.ho
  %i.azu = fcmp oeq float %i.avq, %i.aiy
  %or.cond13.i.i.i.i.i.i = select i1 %i.azu, i1 true, i1 %i.aup
  %i.azv = fcmp olt float %i.avq, %i.aql          ; 2 uses
  %or.cond14.i.i.i.i.i.i = or i1 %i.azv, %or.cond13.i.i.i.i.i.i
  br i1 %or.cond14.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.azw = extractelement <2 x float> %i.avl, i64 1
  %i.azx = fmul float %i.aqn, %i.azw
  %i.azy = fsub float %i.avq, %i.aiy
  %i.azz = fdiv float %i.azx, %i.azy
  %i.baa = fadd float %i.alm, %i.azz
  %.055.i380.i.i.i.i.i.i.i = select i1 %i.aqm, float %i.baa, float %i.alm ; 4 uses
  %i.bab = fcmp ogt float %i.avq, %i.aqq
  br i1 %i.bab, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.bac = fsub float %i.avi, %.055.i380.i.i.i.i.i.i.i
  %i.bad = fsub float %i.aqq, %i.avq
  %i.bae = fmul float %i.bad, %i.bac
  %i.baf = fsub float %i.avq, %.0301.i.i.i.i.i.i.i
  %i.bag = fdiv float %i.bae, %i.baf
  %i.bah = fadd float %i.bag, %i.avi
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.053.i382.i.i.i.i.i.i.i = phi float [ %i.bah, %bb.hr ], [ %i.avi, %bb.hq ] ; 3 uses
  %.0.i383.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.hr ], [ %i.avq, %bb.hq ] ; 2 uses
  %i.bai = fcmp ugt float %.055.i380.i.i.i.i.i.i.i, %i.avg
  %i.baj = fcmp ugt float %.053.i382.i.i.i.i.i.i.i, %i.avg
  %or.cond.i384.i.i.i.i.i.i.i = select i1 %i.bai, i1 true, i1 %i.baj
  br i1 %or.cond.i384.i.i.i.i.i.i.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bak = load float, ptr %i.auo, align 4
  %i.bal = fsub float %.0.i383.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.ban = load float, ptr %i.bam, align 4
  %i.bao = call float @llvm.fmuladd.f32(float %i.bak, float %i.bal, float %i.ban)
  store float %i.bao, ptr %i.bam, align 4
  br label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i

bb.hu:                                            ; preds = %bb.hs
  %i.bap = fcmp ult float %.055.i380.i.i.i.i.i.i.i, %i.avi
  %i.baq = fcmp ult float %.053.i382.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i385.i.i.i.i.i.i.i = select i1 %i.bap, i1 true, i1 %i.baq
  br i1 %or.cond62.i385.i.i.i.i.i.i.i, label %bb.hv, label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i

bb.hv:                                            ; preds = %bb.hu
  %i.bar = load float, ptr %i.auo, align 4
  %i.bas = fsub float %.0.i383.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bat = fmul float %i.bas, %i.bar
  %i.bau = fsub float %.055.i380.i.i.i.i.i.i.i, %i.avg
  %i.bav = fsub float %.053.i382.i.i.i.i.i.i.i, %i.avg
  %i.baw = fadd float %i.bau, %i.bav
  %i.bax = fmul float %i.baw, 5.000000e-01
  %i.bay = fsub float 1.000000e+00, %i.bax
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bba = load float, ptr %i.baz, align 4
  %i.bbb = call float @llvm.fmuladd.f32(float %i.bat, float %i.bay, float %i.bba)
  store float %i.bbb, ptr %i.baz, align 4
  br label %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i: ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hp
  %i.bbc = fcmp oeq float %i.avq, %i.avo
  %i.bbd = fcmp ogt float %i.avq, %i.aqq
  %or.cond15.i.i.i.i.i.i = select i1 %i.bbc, i1 true, i1 %i.bbd
  %i.bbe = fcmp olt float %i.avo, %i.aql          ; 2 uses
  %or.cond16.i.i.i.i.i.i = or i1 %i.bbe, %or.cond15.i.i.i.i.i.i
  br i1 %or.cond16.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i
  br i1 %i.azv, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.bbf = fsub nnan float %i.avg, %i.avi
  %i.bbg = fsub float %i.aql, %i.avq
  %i.bbh = fmul float %i.bbf, %i.bbg
  %i.bbi = fsub float %i.avo, %i.avq
  %i.bbj = fdiv float %i.bbh, %i.bbi
  %i.bbk = fadd float %i.bbj, %i.avi
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.055.i387.i.i.i.i.i.i.i = phi float [ %i.bbk, %bb.hx ], [ %i.avi, %bb.hw ] ; 4 uses
  %.054.i388.i.i.i.i.i.i.i = phi float [ %i.aql, %bb.hx ], [ %i.avq, %bb.hw ] ; 3 uses
  %i.bbl = fcmp ogt float %i.avo, %i.aqq
  br i1 %i.bbl, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.bbm = fsub float %i.avg, %.055.i387.i.i.i.i.i.i.i
  %i.bbn = fsub float %i.aqq, %i.avo
  %i.bbo = fmul float %i.bbn, %i.bbm
  %i.bbp = fsub float %i.avo, %.054.i388.i.i.i.i.i.i.i
  %i.bbq = fdiv float %i.bbo, %i.bbp
  %i.bbr = fadd float %i.bbq, %i.avg
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.053.i389.i.i.i.i.i.i.i = phi float [ %i.bbr, %bb.hz ], [ %i.avg, %bb.hy ] ; 3 uses
  %.0.i390.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.hz ], [ %i.avo, %bb.hy ] ; 2 uses
  %i.bbs = fcmp ugt float %.055.i387.i.i.i.i.i.i.i, %i.avg
  %i.bbt = fcmp ugt float %.053.i389.i.i.i.i.i.i.i, %i.avg
  %or.cond.i391.i.i.i.i.i.i.i = select i1 %i.bbs, i1 true, i1 %i.bbt
  br i1 %or.cond.i391.i.i.i.i.i.i.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bbu = load float, ptr %i.auo, align 4
  %i.bbv = fsub float %.0.i390.i.i.i.i.i.i.i, %.054.i388.i.i.i.i.i.i.i
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bbx = load float, ptr %i.bbw, align 4
  %i.bby = call float @llvm.fmuladd.f32(float %i.bbu, float %i.bbv, float %i.bbx)
  store float %i.bby, ptr %i.bbw, align 4
  br label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i

bb.ic:                                            ; preds = %bb.ia
  %i.bbz = fcmp ult float %.055.i387.i.i.i.i.i.i.i, %i.avi
  %i.bca = fcmp ult float %.053.i389.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i392.i.i.i.i.i.i.i = select i1 %i.bbz, i1 true, i1 %i.bca
  br i1 %or.cond62.i392.i.i.i.i.i.i.i, label %bb.id, label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.ic
  %i.bcb = load float, ptr %i.auo, align 4
  %i.bcc = fsub float %.0.i390.i.i.i.i.i.i.i, %.054.i388.i.i.i.i.i.i.i
  %i.bcd = fmul float %i.bcc, %i.bcb
  %i.bce = fsub float %.055.i387.i.i.i.i.i.i.i, %i.avg
  %i.bcf = fsub float %.053.i389.i.i.i.i.i.i.i, %i.avg
  %i.bcg = fadd float %i.bce, %i.bcf
  %i.bch = fmul float %i.bcg, 5.000000e-01
  %i.bci = fsub float 1.000000e+00, %i.bch
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bck = load float, ptr %i.bcj, align 4
  %i.bcl = call float @llvm.fmuladd.f32(float %i.bcd, float %i.bci, float %i.bck)
  store float %i.bcl, ptr %i.bcj, align 4
  br label %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i: ; preds = %bb.id, %bb.ic, %bb.ib, %stbtt__handle_clipped_edge.exit386.i.i.i.i.i.i.i
  %i.bcm = fcmp oeq float %i.avo, %i.aiz
  %i.bcn = fcmp ogt float %i.avo, %i.aqq
  %or.cond17.i.i.i.i.i.i = select i1 %i.bcm, i1 true, i1 %i.bcn
  %or.cond18.i.i.i.i.i.i = or i1 %i.auq, %or.cond17.i.i.i.i.i.i
  br i1 %or.cond18.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i
  br i1 %i.bbe, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bco = fsub float %i.aqh, %i.avg
  %i.bcp = fsub float %i.aql, %i.avo
  %i.bcq = fmul float %i.bco, %i.bcp
  %i.bcr = fsub float %i.aiz, %i.avo
  %i.bcs = fdiv float %i.bcq, %i.bcr
  %i.bct = fadd float %i.bcs, %i.avg
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.055.i394.i.i.i.i.i.i.i = phi float [ %i.bct, %bb.if ], [ %i.avg, %bb.ie ] ; 4 uses
  %.054.i395.i.i.i.i.i.i.i = phi float [ %i.aql, %bb.if ], [ %i.avo, %bb.ie ] ; 3 uses
  br i1 %i.aqr, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.bcu = fsub float %i.aqh, %.055.i394.i.i.i.i.i.i.i
  %i.bcv = fmul float %i.auv, %i.bcu
  %i.bcw = fsub float %i.aiz, %.054.i395.i.i.i.i.i.i.i
  %i.bcx = fdiv float %i.bcv, %i.bcw
  %i.bcy = fadd float %i.aqh, %i.bcx
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.053.i396.i.i.i.i.i.i.i = phi float [ %i.bcy, %bb.ih ], [ %i.aqh, %bb.ig ] ; 3 uses
  %.0.i397.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.ih ], [ %i.aiz, %bb.ig ] ; 2 uses
  %i.bcz = fcmp ugt float %.055.i394.i.i.i.i.i.i.i, %i.avg
  %i.bda = fcmp ugt float %.053.i396.i.i.i.i.i.i.i, %i.avg
  %or.cond.i398.i.i.i.i.i.i.i = select i1 %i.bcz, i1 true, i1 %i.bda
  br i1 %or.cond.i398.i.i.i.i.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bdb = load float, ptr %i.auo, align 4
  %i.bdc = fsub float %.0.i397.i.i.i.i.i.i.i, %.054.i395.i.i.i.i.i.i.i
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bde = load float, ptr %i.bdd, align 4
  %i.bdf = call float @llvm.fmuladd.f32(float %i.bdb, float %i.bdc, float %i.bde)
  store float %i.bdf, ptr %i.bdd, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.ik:                                            ; preds = %bb.ii
  %i.bdg = fcmp ult float %.055.i394.i.i.i.i.i.i.i, %i.avi
  %i.bdh = fcmp ult float %.053.i396.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i399.i.i.i.i.i.i.i = select i1 %i.bdg, i1 true, i1 %i.bdh
  br i1 %or.cond62.i399.i.i.i.i.i.i.i, label %bb.il, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.bdi = load float, ptr %i.auo, align 4
  %i.bdj = fsub float %.0.i397.i.i.i.i.i.i.i, %.054.i395.i.i.i.i.i.i.i
  %i.bdk = fmul float %i.bdj, %i.bdi
  %i.bdl = fsub float %.055.i394.i.i.i.i.i.i.i, %i.avg
  %i.bdm = fsub float %.053.i396.i.i.i.i.i.i.i, %i.avg
  %i.bdn = fadd float %i.bdl, %i.bdm
  %i.bdo = fmul float %i.bdn, 5.000000e-01
  %i.bdp = fsub float 1.000000e+00, %i.bdo
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bdr = load float, ptr %i.bdq, align 4
  %i.bds = call float @llvm.fmuladd.f32(float %i.bdk, float %i.bdp, float %i.bdr)
  store float %i.bds, ptr %i.bdq, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.im:                                            ; preds = %bb.ho
  %i.bdt = fcmp ogt float %i.aqh, %i.avg
  %or.cond341.i.i.i.i.i.i.i = and i1 %i.avr, %i.bdt
  br i1 %or.cond341.i.i.i.i.i.i.i, label %bb.in, label %bb.jc

bb.in:                                            ; preds = %bb.im
  %i.bdu = fcmp oeq float %i.avo, %i.aiy
  %or.cond19.i.i.i.i.i.i = select i1 %i.bdu, i1 true, i1 %i.aup
  %i.bdv = fcmp olt float %i.avo, %i.aql          ; 2 uses
  %or.cond20.i.i.i.i.i.i = or i1 %i.bdv, %or.cond19.i.i.i.i.i.i
  br i1 %or.cond20.i.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bdw = extractelement <2 x float> %i.avl, i64 0
  %i.bdx = fmul float %i.aqn, %i.bdw
  %i.bdy = fsub float %i.avo, %i.aiy
  %i.bdz = fdiv float %i.bdx, %i.bdy
  %i.bea = fadd float %i.alm, %i.bdz
  %.055.i401.i.i.i.i.i.i.i = select i1 %i.aqm, float %i.bea, float %i.alm ; 4 uses
  %i.beb = fcmp ogt float %i.avo, %i.aqq
  br i1 %i.beb, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.bec = fsub float %i.avg, %.055.i401.i.i.i.i.i.i.i
  %i.bed = fsub float %i.aqq, %i.avo
  %i.bee = fmul float %i.bed, %i.bec
  %i.bef = fsub float %i.avo, %.0301.i.i.i.i.i.i.i
  %i.beg = fdiv float %i.bee, %i.bef
  %i.beh = fadd float %i.beg, %i.avg
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.053.i403.i.i.i.i.i.i.i = phi float [ %i.beh, %bb.ip ], [ %i.avg, %bb.io ] ; 3 uses
  %.0.i404.i.i.i.i.i.i.i = phi float [ %i.aqq, %bb.ip ], [ %i.avo, %bb.io ] ; 2 uses
  %i.bei = fcmp ugt float %.055.i401.i.i.i.i.i.i.i, %i.avg
  %i.bej = fcmp ugt float %.053.i403.i.i.i.i.i.i.i, %i.avg
  %or.cond.i405.i.i.i.i.i.i.i = select i1 %i.bei, i1 true, i1 %i.bej
  br i1 %or.cond.i405.i.i.i.i.i.i.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.bek = load float, ptr %i.auo, align 4
  %i.bel = fsub float %.0.i404.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.ben = load float, ptr %i.bem, align 4
  %i.beo = call float @llvm.fmuladd.f32(float %i.bek, float %i.bel, float %i.ben)
  store float %i.beo, ptr %i.bem, align 4
  br label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %i.bep = fcmp ult float %.055.i401.i.i.i.i.i.i.i, %i.avi
  %i.beq = fcmp ult float %.053.i403.i.i.i.i.i.i.i, %i.avi
  %or.cond62.i406.i.i.i.i.i.i.i = select i1 %i.bep, i1 true, i1 %i.beq
  br i1 %or.cond62.i406.i.i.i.i.i.i.i, label %bb.it, label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.is
  %i.ber = load float, ptr %i.auo, align 4
  %i.bes = fsub float %.0.i404.i.i.i.i.i.i.i, %.0301.i.i.i.i.i.i.i
  %i.bet = fmul float %i.bes, %i.ber
  %i.beu = fsub float %.055.i401.i.i.i.i.i.i.i, %i.avg
  %i.bev = fsub float %.053.i403.i.i.i.i.i.i.i, %i.avg
  %i.bew = fadd float %i.beu, %i.bev
  %i.bex = fmul float %i.bew, 5.000000e-01
  %i.bey = fsub float 1.000000e+00, %i.bex
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bfa = load float, ptr %i.bez, align 4
  %i.bfb = call float @llvm.fmuladd.f32(float %i.bet, float %i.bey, float %i.bfa)
  store float %i.bfb, ptr %i.bez, align 4
  br label %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i: ; preds = %bb.it, %bb.is, %bb.ir, %bb.in
end_hunk_0
begin_hunk_1_@LoadFontData:bb.a
.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bqx = zext i32 %i.bqf to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bpz              ; 2 uses
  br i1 %i.bqs, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bqy = add i32 %i.bqa, 7
  %i.bqz = sub i32 %i.bqy, %i.bpz                 ; 8 uses
  %i.bra = zext i32 %i.bqz to i64
  %i.brb = add nuw nsw i64 %i.bra, 1              ; 15 uses
  %i.brc = add i32 %i.bqa, 3
  %i.brd = add i32 %i.bqa, 3
  %i.bre = add i32 %i.bqa, 3
  %min.iters.check661 = icmp ult i32 %i.bqz, 7
  %min.iters.check688 = icmp ult i32 %i.bqz, 31
  %i.brf = and i64 %i.brb, 24
  %n.vec690 = and i64 %i.brb, 8589934560          ; 4 uses
  %i.brg = add nuw nsw i64 %n.vec690, %i.bqx
  %cmp.n695 = icmp eq i64 %i.brb, %n.vec690
  %min.epilog.iters.check699 = icmp eq i64 %i.brf, 0
  %n.vec702 = and i64 %i.brb, 8589934584          ; 3 uses
  %i.brh = add nuw nsw i64 %n.vec702, %i.bqx
  %cmp.n707 = icmp eq i64 %i.brb, %n.vec702
  %min.iters.check663 = icmp ult i32 %i.bqz, 31
  %i.bri = and i64 %i.brb, 24
  %n.vec665 = and i64 %i.brb, 8589934560          ; 4 uses
  %i.brj = add nuw nsw i64 %n.vec665, %i.bqx
  %cmp.n670 = icmp eq i64 %i.brb, %n.vec665
  %min.epilog.iters.check674 = icmp eq i64 %i.bri, 0
  %n.vec677 = and i64 %i.brb, 8589934584          ; 3 uses
  %i.brk = add nuw nsw i64 %n.vec677, %i.bqx
  %cmp.n682 = icmp eq i64 %i.brb, %n.vec677
  %min.iters.check636 = icmp ult i32 %i.bqz, 7
  %min.iters.check638 = icmp ult i32 %i.bqz, 31
  %i.brl = and i64 %i.brb, 24
  %n.vec640 = and i64 %i.brb, 8589934560          ; 4 uses
  %i.brm = add nuw nsw i64 %n.vec640, %i.bqx
  %cmp.n645 = icmp eq i64 %i.brb, %n.vec640
  %min.epilog.iters.check649 = icmp eq i64 %i.brl, 0
  %n.vec652 = and i64 %i.brb, 8589934584          ; 3 uses
  %i.brn = add nuw nsw i64 %n.vec652, %i.bqx
  %cmp.n657 = icmp eq i64 %i.brb, %n.vec652
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cjn, %._crit_edge493.i.split.us.us.i ], [ %i.bqg, %.preheader.preheader.i.i ] ; 3 uses
  %i.bro = sitofp i32 %.0435494.i.us.i to float
  %i.brp = fadd float %i.bro, 5.000000e-01        ; 8 uses
  %i.brq = fdiv float %i.brp, %i.yu               ; 4 uses
  %i.brr = fpext float %i.brq to double
  %i.brs = fadd float %i.brq, f0xBC23D70A
  %i.brt = fadd float %i.brq, f0x3C23D70A
  %i.bru = sub nsw i32 %.0435494.i.us.i, %i.bqg
  %i.brv = mul nuw nsw i32 %i.bru, %i.bqj
  %.reass.i.us.i = add i32 %i.brv, %reass.sub.i.i
  br label %bb.lj

bb.lj:                                            ; preds = %bb.nf, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.bqx, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.nf ] ; 2 uses
  %i.brw = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.brx = sitofp i32 %i.brw to float
  %i.bry = fadd float %i.brx, 5.000000e-01        ; 8 uses
  %i.brz = fdiv float %i.bry, %i.yc               ; 7 uses
  %i.bsa = call double @fmod(double noundef %i.brr, double noundef 1.000000e+00) #39 ; 2 uses
  %i.bsb = fcmp olt double %i.bsa, f0x3F847AE130000000
  br i1 %i.bsb, label %.lr.ph.i.i.us.us.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bsc = fcmp ogt double %i.bsa, f0x3FEFAE1490000000
  br i1 %i.bsc, label %bb.ll, label %.lr.ph.i.i.us.us.i

bb.ll:                                            ; preds = %bb.lk
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.ll, %bb.lk, %bb.lj
  %.0150.i.i.us.us.i = phi float [ %i.brq, %bb.lk ], [ %i.brs, %bb.ll ], [ %i.brt, %bb.lj ] ; 10 uses
  %i.bsd = fmul float %i.brz, 0.000000e+00
  %i.bse = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bsf = fadd float %i.brz, %i.bse
  %i.bsg = fsub float %i.bsd, %.0150.i.i.us.us.i
  br label %bb.lm

bb.lm:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bsh = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 12
  %i.bsj = load i8, ptr %i.bsi, align 2
  switch i8 %i.bsj, label %.thread.i.i.us.us.i [
    i8 2, label %bb.mb
    i8 3, label %bb.ln
  ]

bb.ln:                                            ; preds = %bb.lm
  %i.bsk = getelementptr i8, ptr %i.bsh, i64 -14  ; 2 uses
  %i.bsl = getelementptr i8, ptr %i.bsh, i64 -12
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsh, i64 4
  %i.bsn = load i16, ptr %i.bsm, align 2          ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsh, i64 6
  %i.bsp = load i16, ptr %i.bso, align 2          ; 3 uses
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsh, i64 2
  %i.bsr = load i16, ptr %i.bsl, align 2          ; 6 uses
  %i.bss = load i16, ptr %i.bsk, align 2          ; 2 uses
  %i.bst = sext i16 %i.bsr to i32
  %i.bsu = load i16, ptr %i.bsq, align 2          ; 6 uses
  %i.bsv = load i16, ptr %i.bsh, align 2          ; 2 uses
  %i.bsw = call i16 @llvm.smin.i16(i16 %i.bsn, i16 %i.bsv)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bsw, i16 %i.bss)
  %i.bsx = call i16 @llvm.smin.i16(i16 %i.bsp, i16 %i.bsu)
  %i.bsy = call i16 @llvm.smin.i16(i16 %i.bsr, i16 %i.bsx)
  %i.bsz = call i16 @llvm.smax.i16(i16 %i.bsp, i16 %i.bsu)
  %i.bta = call i16 @llvm.smax.i16(i16 %i.bsr, i16 %i.bsz)
  %i.btb = sitofp i16 %i.bsy to float
  %i.btc = fcmp ogt float %.0150.i.i.us.us.i, %i.btb
  %i.btd = sitofp i16 %i.bta to float
  %i.bte = fcmp olt float %.0150.i.i.us.us.i, %i.btd
  %or.cond162.i.i.us.us.i = and i1 %i.btc, %i.bte
  %i.btf = sitofp i16 %..i.i.us.us.i to float
  %i.btg = fcmp ogt float %i.brz, %i.btf
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.btg, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.lo, label %.thread.i.i.us.us.i

bb.lo:                                            ; preds = %bb.ln
  %i.bth = load <2 x i16>, ptr %i.bsh, align 2    ; 2 uses
  %i.bti = load <2 x i16>, ptr %i.bsk, align 2    ; 2 uses
  %i.btj = shufflevector <2 x i16> %i.bth, <2 x i16> %i.bti, <2 x i32> <i32 0, i32 2>
  %i.btk = sitofp <2 x i16> %i.btj to <2 x float> ; 3 uses
  %i.btl = shufflevector <2 x i16> %i.bth, <2 x i16> %i.bti, <2 x i32> <i32 1, i32 3>
  %i.btm = sitofp <2 x i16> %i.btl to <2 x float> ; 3 uses
  %i.btn = sitofp i16 %i.bsn to float             ; 4 uses
  %i.bto = sitofp i16 %i.bsp to float             ; 4 uses
  %i.btp = extractelement <2 x float> %i.btk, i64 1 ; 3 uses
  %i.btq = fcmp une float %i.btp, %i.btn
  %i.btr = extractelement <2 x float> %i.btm, i64 1 ; 3 uses
  %i.bts = fcmp une float %i.btr, %i.bto
  %narrow.i.not.i.i.us.us.i = or i1 %i.btq, %i.bts
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.btt = extractelement <2 x float> %i.btk, i64 0 ; 2 uses
  %i.btu = fcmp une float %i.btt, %i.btn
  %i.btv = extractelement <2 x float> %i.btm, i64 0 ; 2 uses
  %i.btw = fcmp une float %i.btv, %i.bto
  %narrow.i182.not.i.i.us.us.i = or i1 %i.btu, %i.btw
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.lu, label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %i.btx = sext i16 %i.bss to i32                 ; 2 uses
  %i.bty = sext i16 %i.bsv to i32                 ; 2 uses
  %i.btz = sext i16 %i.bsu to i32
  %i.bua = icmp slt i16 %i.bsr, %i.bsu
  %i.bub = call i16 @llvm.smin.i16(i16 %i.bsr, i16 %i.bsu)
  %i.buc = sitofp i16 %i.bub to float
  %i.bud = fcmp ogt float %.0150.i.i.us.us.i, %i.buc
  br i1 %i.bud, label %bb.lr, label %.thread.i.i.us.us.i

bb.lr:                                            ; preds = %bb.lq
  %i.bue = call i16 @llvm.smax.i16(i16 %i.bsr, i16 %i.bsu)
  %i.buf = sitofp i16 %i.bue to float
  %i.bug = fcmp olt float %.0150.i.i.us.us.i, %i.buf
  br i1 %i.bug, label %bb.ls, label %.thread.i.i.us.us.i

bb.ls:                                            ; preds = %bb.lr
  %i.buh = call i32 @llvm.smin.i32(i32 %i.btx, i32 %i.bty)
  %i.bui = sitofp i32 %i.buh to float
  %i.buj = fcmp ogt float %i.brz, %i.bui
  br i1 %i.buj, label %bb.lt, label %.thread.i.i.us.us.i

bb.lt:                                            ; preds = %bb.ls
  %i.buk = fsub float %.0150.i.i.us.us.i, %i.btr
  %i.bul = sub nsw i32 %i.btz, %i.bst
  %i.bum = sitofp i32 %i.bul to float
  %i.bun = fdiv float %i.buk, %i.bum
  %i.buo = sub nsw i32 %i.bty, %i.btx
  %i.bup = sitofp i32 %i.buo to float
  %i.buq = call float @llvm.fmuladd.f32(float %i.bun, float %i.bup, float %i.btp)
  %i.bur = fcmp olt float %i.buq, %i.brz
  %i.bus = select i1 %i.bua, i32 1, i32 -1
  %i.but = select i1 %i.bur, i32 %i.bus, i32 0
  %.4.i.i.us.us.i = add nsw i32 %i.but, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

bb.lu:                                            ; preds = %bb.lp
  %i.buu = fneg float %i.btp
  %i.buv = call float @llvm.copysign.f32(float 0.000000e+00, float %i.buu)
  %i.buw = fadd float %i.buv, %i.btr              ; 3 uses
  %i.bux = fneg float %i.btn
  %i.buy = call float @llvm.copysign.f32(float 0.000000e+00, float %i.bux)
  %i.buz = fadd float %i.buy, %i.bto              ; 2 uses
  %i.bva = fneg float %i.btt
  %i.bvb = call float @llvm.copysign.f32(float 0.000000e+00, float %i.bva)
  %i.bvc = fadd float %i.bvb, %i.btv
  %i.bvd = call float @llvm.fmuladd.f32(float %i.buz, float -2.000000e+00, float %i.buw)
  %i.bve = fadd float %i.bvd, %i.bvc              ; 5 uses
  %i.bvf = fsub float %i.buz, %i.buw              ; 7 uses
  %i.bvg = fadd float %i.bsg, %i.buw              ; 2 uses
  %i.bvh = fcmp une float %i.bve, 0.000000e+00
  br i1 %i.bvh, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bvi = fmul float %i.bvf, -2.000000e+00
  %i.bvj = fdiv float %i.bvg, %i.bvi              ; 3 uses
  %i.bvk = fcmp ult float %i.bvj, 0.000000e+00
  %i.bvl = fcmp ugt float %i.bvj, 1.000000e+00
  %or.cond119.i.i.i.us.us.i = or i1 %i.bvk, %i.bvl
  br i1 %or.cond119.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, label %.thread21.i.i.i.us.us.i

bb.lw:                                            ; preds = %bb.lu
  %i.bvm = fneg float %i.bvg
  %i.bvn = fmul float %i.bve, %i.bvm
  %i.bvo = call float @llvm.fmuladd.f32(float %i.bvf, float %i.bvf, float %i.bvn) ; 2 uses
  %i.bvp = fcmp ogt float %i.bvo, 0.000000e+00
  br i1 %i.bvp, label %bb.lx, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

bb.lx:                                            ; preds = %bb.lw
  %i.bvq = fdiv float -1.000000e+00, %i.bve       ; 2 uses
  %sqrtf.i.i.i.us.us.i = call float @sqrtf(float noundef %i.bvo) #39 ; 3 uses
  %i.bvr = fadd float %i.bvf, %sqrtf.i.i.i.us.us.i
  %i.bvs = fmul float %i.bvq, %i.bvr              ; 4 uses
  %i.bvt = fsub float %i.bvf, %sqrtf.i.i.i.us.us.i
  %i.bvu = fmul float %i.bvq, %i.bvt              ; 5 uses
  %i.bvv = fcmp oge float %i.bvs, 0.000000e+00
  %i.bvw = fcmp ole float %i.bvs, 1.000000e+00
  %or.cond.not.not.not.i.i.i.us.us.i = and i1 %i.bvv, %i.bvw ; 3 uses
  %i.bvx = fcmp ule float %sqrtf.i.i.i.us.us.i, 0.000000e+00
  %i.bvy = fcmp ult float %i.bvu, 0.000000e+00
  %or.cond117.i.i.i.us.us.i = or i1 %i.bvx, %i.bvy
  %i.bvz = fcmp ugt float %i.bvu, 1.000000e+00
  %or.cond118.i.i.i.us.us.i = or i1 %i.bvz, %or.cond117.i.i.i.us.us.i
  br i1 %or.cond118.i.i.i.us.us.i, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %.0107.i.i.i.us.us.i = select i1 %or.cond.not.not.not.i.i.i.us.us.i, float %i.bvs, float %i.bvu
  br label %.thread21.i.i.i.us.us.i

bb.lz:                                            ; preds = %bb.lx
  br i1 %or.cond.not.not.not.i.i.i.us.us.i, label %.thread21.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

.thread21.i.i.i.us.us.i:                          ; preds = %bb.lz, %bb.ly, %bb.lv
  %.327.i.i.i.us.us.i = phi i1 [ false, %bb.lz ], [ %or.cond.not.not.not.i.i.i.us.us.i, %bb.ly ], [ false, %bb.lv ]
  %.110626.i.i.i.us.us.i = phi float [ %i.bvu, %bb.lz ], [ %i.bvu, %bb.ly ], [ 0.000000e+00, %bb.lv ] ; 5 uses
  %.311025.i.i.i.us.us.i = phi float [ %i.bvs, %bb.lz ], [ %.0107.i.i.i.us.us.i, %bb.ly ], [ %i.bvj, %bb.lv ] ; 5 uses
  %i.bwa = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.btm)
  %i.bwb = call float @llvm.copysign.f32(float 0.000000e+00, float %i.bto)
  %i.bwc = fadd float %i.bwb, %i.btn
  %i.bwd = fadd <2 x float> %i.bwa, %i.btk        ; 2 uses
  %i.bwe = extractelement <2 x float> %i.bwd, i64 1 ; 3 uses
  %i.bwf = fsub float %i.bwc, %i.bwe              ; 2 uses
  %i.bwg = extractelement <2 x float> %i.bwd, i64 0
  %i.bwh = fsub float %i.bwg, %i.bwe              ; 2 uses
  %i.bwi = fsub float %i.bwe, %i.bsf              ; 2 uses
  %i.bwj = call float @llvm.fmuladd.f32(float %.311025.i.i.i.us.us.i, float -2.000000e+00, float 2.000000e+00)
  %i.bwk = fmul float %.311025.i.i.i.us.us.i, %i.bwj
  %i.bwl = call float @llvm.fmuladd.f32(float %i.bwk, float %i.bwf, float %i.bwi)
  %i.bwm = fmul float %.311025.i.i.i.us.us.i, %.311025.i.i.i.us.us.i
  %i.bwn = call float @llvm.fmuladd.f32(float %i.bwm, float %i.bwh, float %i.bwl) ; 2 uses
  %i.bwo = call float @llvm.fmuladd.f32(float %i.bve, float %.311025.i.i.i.us.us.i, float %i.bvf) ; 2 uses
  br i1 %.327.i.i.i.us.us.i, label %bb.ma, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

bb.ma:                                            ; preds = %.thread21.i.i.i.us.us.i
  %i.bwp = call float @llvm.fmuladd.f32(float %.110626.i.i.i.us.us.i, float -2.000000e+00, float 2.000000e+00)
  %i.bwq = fmul float %.110626.i.i.i.us.us.i, %i.bwp
  %i.bwr = call float @llvm.fmuladd.f32(float %i.bwq, float %i.bwf, float %i.bwi)
  %i.bws = fmul float %.110626.i.i.i.us.us.i, %.110626.i.i.i.us.us.i
  %i.bwt = call float @llvm.fmuladd.f32(float %i.bws, float %i.bwh, float %i.bwr)
  %i.bwu = call float @llvm.fmuladd.f32(float %i.bve, float %.110626.i.i.i.us.us.i, float %i.bvf)
  %i.bwv = fcmp olt float %i.bwt, 0.000000e+00
  %i.bww = fcmp olt float %i.bwu, 0.000000e+00
  %i.bwx = select i1 %i.bww, i32 -1, i32 1
  %i.bwy = select i1 %i.bwv, i32 %i.bwx, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

stbtt__ray_intersect_bezier.exit.i.i.us.us.i:     ; preds = %bb.ma, %.thread21.i.i.i.us.us.i, %bb.lz, %bb.lw, %bb.lv
  %.sroa.4.0.i.i.us.us.i = phi float [ %i.bwo, %bb.ma ], [ %i.bwo, %.thread21.i.i.i.us.us.i ], [ undef, %bb.lz ], [ undef, %bb.lw ], [ undef, %bb.lv ]
  %.sroa.0.0.i.i.us.us.i = phi float [ %i.bwn, %bb.ma ], [ %i.bwn, %.thread21.i.i.i.us.us.i ], [ undef, %bb.lz ], [ undef, %bb.lw ], [ undef, %bb.lv ]
  %i.bwz = phi i1 [ true, %bb.ma ], [ true, %.thread21.i.i.i.us.us.i ], [ false, %bb.lz ], [ false, %bb.lw ], [ false, %bb.lv ]
  %or.cond7.i.i.us.us.i = phi i32 [ %i.bwy, %bb.ma ], [ 0, %.thread21.i.i.i.us.us.i ], [ 0, %bb.lz ], [ 0, %bb.lw ], [ 0, %bb.lv ]
  %i.bxa = fcmp olt float %.sroa.0.0.i.i.us.us.i, 0.000000e+00
  %or.cond.i.i.us.us.i = select i1 %i.bwz, i1 %i.bxa, i1 false
  %i.bxb = fcmp olt float %.sroa.4.0.i.i.us.us.i, 0.000000e+00
  %i.bxc = select i1 %i.bxb, i32 -1, i32 1
  %i.bxd = select i1 %or.cond.i.i.us.us.i, i32 %i.bxc, i32 0
  %.5.i.i.us.us.i = add i32 %or.cond7.i.i.us.us.i, %.0197.i.i.us.us.i
  %.6.i.i.us.us.i = add i32 %.5.i.i.us.us.i, %i.bxd
  br label %.thread.i.i.us.us.i

bb.mb:                                            ; preds = %bb.lm
  %i.bxe = getelementptr i8, ptr %i.bsh, i64 -14
  %i.bxf = load <2 x i16>, ptr %i.bxe, align 2    ; 3 uses
  %i.bxg = extractelement <2 x i16> %i.bxf, i64 1 ; 4 uses
  %i.bxh = extractelement <2 x i16> %i.bxf, i64 0
  %i.bxi = sext i16 %i.bxh to i32                 ; 2 uses
  %i.bxj = sext i16 %i.bxg to i32
  %i.bxk = load i16, ptr %i.bsh, align 2
  %i.bxl = sext i16 %i.bxk to i32                 ; 2 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bsh, i64 2
  %i.bxn = load i16, ptr %i.bxm, align 2          ; 4 uses
  %i.bxo = sext i16 %i.bxn to i32
  %i.bxp = icmp slt i16 %i.bxg, %i.bxn
  %i.bxq = call i16 @llvm.smin.i16(i16 %i.bxg, i16 %i.bxn)
  %i.bxr = sitofp i16 %i.bxq to float
  %i.bxs = fcmp ogt float %.0150.i.i.us.us.i, %i.bxr
  br i1 %i.bxs, label %bb.mc, label %.thread.i.i.us.us.i

bb.mc:                                            ; preds = %bb.mb
  %i.bxt = call i16 @llvm.smax.i16(i16 %i.bxg, i16 %i.bxn)
  %i.bxu = sitofp i16 %i.bxt to float
  %i.bxv = fcmp olt float %.0150.i.i.us.us.i, %i.bxu
  br i1 %i.bxv, label %bb.md, label %.thread.i.i.us.us.i

bb.md:                                            ; preds = %bb.mc
  %i.bxw = call i32 @llvm.smin.i32(i32 %i.bxi, i32 %i.bxl)
  %i.bxx = sitofp i32 %i.bxw to float
  %i.bxy = fcmp ogt float %i.brz, %i.bxx
  br i1 %i.bxy, label %bb.me, label %.thread.i.i.us.us.i

bb.me:                                            ; preds = %bb.md
  %i.bxz = sitofp <2 x i16> %i.bxf to <2 x float> ; 2 uses
  %i.bya = extractelement <2 x float> %i.bxz, i64 1
  %i.byb = fsub float %.0150.i.i.us.us.i, %i.bya
  %i.byc = sub nsw i32 %i.bxo, %i.bxj
  %i.byd = sitofp i32 %i.byc to float
  %i.bye = fdiv float %i.byb, %i.byd
  %i.byf = sub nsw i32 %i.bxl, %i.bxi
  %i.byg = sitofp i32 %i.byf to float
  %i.byh = extractelement <2 x float> %i.bxz, i64 0
  %i.byi = call float @llvm.fmuladd.f32(float %i.bye, float %i.byg, float %i.byh)
  %i.byj = fcmp olt float %i.byi, %i.brz
  %i.byk = select i1 %i.bxp, i32 1, i32 -1
  %i.byl = select i1 %i.byj, i32 %i.byk, i32 0
  %.1.i.i.us.us.i = add nsw i32 %i.byl, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

.thread.i.i.us.us.i:                              ; preds = %bb.me, %bb.md, %bb.mc, %bb.mb, %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.ln, %bb.lm
  %.9.i.i.us.us.i = phi i32 [ %.0197.i.i.us.us.i, %bb.lm ], [ %.6.i.i.us.us.i, %stbtt__ray_intersect_bezier.exit.i.i.us.us.i ], [ %.0197.i.i.us.us.i, %bb.ln ], [ %.4.i.i.us.us.i, %bb.lt ], [ %.0197.i.i.us.us.i, %bb.ls ], [ %.0197.i.i.us.us.i, %bb.lr ], [ %.0197.i.i.us.us.i, %bb.lq ], [ %.0197.i.i.us.us.i, %bb.mb ], [ %.0197.i.i.us.us.i, %bb.mc ], [ %.0197.i.i.us.us.i, %bb.md ], [ %.1.i.i.us.us.i, %bb.me ]
  %.9.i.fr.i.us.us.i = freeze i32 %.9.i.i.us.us.i ; 2 uses
  %indvars.iv.next.i.i.us.us.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i, %wide.trip.count.i.i.i156
  br i1 %exitcond.not.i.i.us.us.i, label %.lr.ph490.i.us.us.i, label %bb.lm

.lr.ph490.i.us.us.i:                              ; preds = %.thread.i.i.us.us.i, %.thread.i.us.us.i
  %indvars.iv497.i.us.us.i = phi i64 [ %indvars.iv.next498.i.us.us.i, %.thread.i.us.us.i ], [ 0, %.thread.i.i.us.us.i ] ; 4 uses
  %.0428489.i.us.us.i = phi float [ %.9.i.us.us.i, %.thread.i.us.us.i ], [ 9.999990e+05, %.thread.i.i.us.us.i ] ; 10 uses
  %i.bym = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv497.i.us.us.i ; 5 uses
  %i.byn = load <2 x i16>, ptr %i.bym, align 2
  %i.byo = sitofp <2 x i16> %i.byn to <2 x float>
  %i.byp = fmul <2 x float> %i.zc, %i.byo         ; 10 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %i.bym, i64 12
  %i.byr = load i8, ptr %i.byq, align 2
  switch i8 %i.byr, label %.thread.i.us.us.i [
    i8 2, label %bb.nb
    i8 3, label %bb.mf
  ]

bb.mf:                                            ; preds = %.lr.ph490.i.us.us.i
  %i.bys = getelementptr i8, ptr %i.bym, i64 -14
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bym, i64 4
  %i.byu = load <2 x i16>, ptr %i.bys, align 2
  %i.byv = sitofp <2 x i16> %i.byu to <2 x float>
  %i.byw = fmul <2 x float> %i.zc, %i.byv         ; 4 uses
  %i.byx = shufflevector <2 x float> %i.byw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.byy = load <2 x i16>, ptr %i.byt, align 2
  %i.byz = sitofp <2 x i16> %i.byy to <2 x float>
  %i.bza = fmul <2 x float> %i.zc, %i.byz         ; 6 uses
  %i.bzb = fcmp olt <2 x float> %i.byp, %i.bza
  %i.bzc = shufflevector <2 x i1> %i.bzb, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.bzd = shufflevector <2 x float> %i.bza, <2 x float> %i.byp, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bze = shufflevector <2 x float> %i.byp, <2 x float> %i.bza, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bzf = select <4 x i1> %i.bzc, <4 x float> %i.bzd, <4 x float> %i.bze ; 3 uses
  %i.bzg = fcmp olt <4 x float> %i.bzf, %i.byx
  %i.bzh = shufflevector <4 x float> %i.byx, <4 x float> %i.bzf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bzi = shufflevector <2 x float> %i.byw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bzj = shufflevector <4 x float> %i.bzf, <4 x float> %i.bzi, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.bzk = select <4 x i1> %i.bzg, <4 x float> %i.bzh, <4 x float> %i.bzj ; 2 uses
  %i.bzl = shufflevector <4 x float> %i.bzk, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bzm = insertelement <2 x float> poison, float %.0428489.i.us.us.i, i64 0
  %i.bzn = shufflevector <2 x float> %i.bzm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bzo = fsub <2 x float> %i.bzl, %i.bzn        ; 2 uses
  %i.bzp = extractelement <2 x float> %i.bzo, i64 1
  %i.bzq = fcmp ogt float %i.bry, %i.bzp
  %i.bzr = extractelement <2 x float> %i.bzo, i64 0
  %i.bzs = fcmp ogt float %i.brp, %i.bzr
  %i.bzt = shufflevector <4 x float> %i.bzk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bzu = fadd <2 x float> %i.bzn, %i.bzt        ; 2 uses
  %i.bzv = extractelement <2 x float> %i.bzu, i64 1
  %i.bzw = fcmp olt float %i.bry, %i.bzv
  %or.cond475.i.us.us.i = select i1 %i.bzq, i1 %i.bzw, i1 false
  %or.cond477.i.us.us.i = select i1 %or.cond475.i.us.us.i, i1 %i.bzs, i1 false
  %i.bzx = extractelement <2 x float> %i.bzu, i64 0
  %i.bzy = fcmp olt float %i.brp, %i.bzx
  %or.cond479.i.us.us.i = select i1 %or.cond477.i.us.us.i, i1 %i.bzy, i1 false
  br i1 %or.cond479.i.us.us.i, label %bb.mg, label %.thread.i.us.us.i

bb.mg:                                            ; preds = %bb.mf
  %i.bzz = extractelement <2 x float> %i.byp, i64 0 ; 5 uses
  %i.caa = extractelement <2 x float> %i.bza, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bza, %i.byp ; 2 uses
  %i.cab = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.cac = extractelement <2 x float> %i.byp, i64 1 ; 6 uses
  %i.cad = extractelement <2 x float> %i.bza, i64 1 ; 5 uses
  %i.cae = fsub float %i.cad, %i.cac              ; 7 uses
  %i.caf = call float @llvm.fmuladd.f32(float %i.caa, float -2.000000e+00, float %i.bzz)
  %i.cag = extractelement <2 x float> %i.byw, i64 0 ; 4 uses
  %i.cah = fadd float %i.cag, %i.caf              ; 3 uses
  %i.cai = call float @llvm.fmuladd.f32(float %i.cad, float -2.000000e+00, float %i.cac)
  %i.caj = extractelement <2 x float> %i.byw, i64 1 ; 4 uses
  %i.cak = fadd float %i.caj, %i.cai              ; 3 uses
  %i.cal = fsub float %i.bzz, %i.bry              ; 6 uses
  %i.cam = fsub float %i.cac, %i.brp              ; 6 uses
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %i.bqr, i64 %indvars.iv497.i.us.us.i
  %i.cao = load float, ptr %i.can, align 4        ; 4 uses
  %i.cap = fcmp oeq float %i.cao, 0.000000e+00
  %i.caq = fmul float %i.cae, %i.cak
  %i.car = call float @llvm.fmuladd.f32(float %i.cab, float %i.cah, float %i.caq)
  %i.cas = fmul float %i.car, 3.000000e+00        ; 4 uses
  br i1 %i.cap, label %bb.mo, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.cat = fmul float %i.cas, %i.cao              ; 5 uses
  %i.cau = fmul float %i.cae, %i.cae
  %i.cav = call float @llvm.fmuladd.f32(float %i.cab, float %i.cab, float %i.cau)
  %i.caw = fmul float %i.cam, %i.cak
  %i.cax = call float @llvm.fmuladd.f32(float %i.cal, float %i.cah, float %i.caw)
  %i.cay = call float @llvm.fmuladd.f32(float %i.cav, float 2.000000e+00, float %i.cax)
  %i.caz = fmul float %i.cay, %i.cao              ; 2 uses
  %i.cba = fdiv float %i.cat, -3.000000e+00       ; 4 uses
  %i.cbb = fmul float %i.cat, %i.cat
  %i.cbc = fdiv float %i.cbb, 3.000000e+00
  %i.cbd = fsub float %i.caz, %i.cbc              ; 4 uses
  %i.cbe = fmul float %i.cat, 2.000000e+00
  %i.cbf = insertelement <2 x float> poison, float %i.cam, i64 0
  %i.cbg = insertelement <2 x float> %i.cbf, float %i.caz, i64 1
  %i.cbh = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.cae, i64 0
  %i.cbi = fmul <2 x float> %i.cbg, %i.cbh
  %i.cbj = insertelement <2 x float> poison, float %i.cal, i64 0
  %i.cbk = insertelement <2 x float> %i.cbj, float %i.cbe, i64 1
  %i.cbl = insertelement <2 x float> %foldExtExtBinop, float %i.cat, i64 1 ; 2 uses
  %i.cbm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbk, <2 x float> %i.cbl, <2 x float> %i.cbi)
  %i.cbn = insertelement <2 x float> %i.cbl, float %i.cao, i64 0
  %i.cbo = fmul <2 x float> %i.cbm, %i.cbn        ; 2 uses
  %i.cbp = extractelement <2 x float> %i.cbo, i64 1
  %i.cbq = fdiv float %i.cbp, 2.700000e+01
  %i.cbr = extractelement <2 x float> %i.cbo, i64 0
  %i.cbs = fadd float %i.cbr, %i.cbq              ; 5 uses
  %i.cbt = fmul float %i.cbd, %i.cbd
  %i.cbu = fmul float %i.cbd, %i.cbt              ; 2 uses
  %i.cbv = fmul float %i.cbu, 4.000000e+00
  %i.cbw = fdiv float %i.cbv, 2.700000e+01
  %i.cbx = call float @llvm.fmuladd.f32(float %i.cbs, float %i.cbs, float %i.cbw) ; 2 uses
  %i.cby = fcmp ult float %i.cbx, 0.000000e+00
  br i1 %i.cby, label %bb.mn, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %sqrtf47.i.i.us.us.i = call float @sqrtf(float noundef %i.cbx) #39 ; 2 uses
  %i.cbz = fneg float %i.cbs
  %i.cca = fsub float %sqrtf47.i.i.us.us.i, %i.cbs
  %i.ccb = fmul float %i.cca, 5.000000e-01        ; 3 uses
  %i.ccc = fsub float %i.cbz, %sqrtf47.i.i.us.us.i
  %i.ccd = fmul float %i.ccc, 5.000000e-01        ; 3 uses
  %i.cce = fcmp olt float %i.ccb, 0.000000e+00
  br i1 %i.cce, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.ccf = fpext float %i.ccb to double
  %i.ccg = call double @pow(double noundef %i.ccf, double noundef f0x3FD5555560000000) #39
  %i.cch = fptrunc double %i.ccg to float
  br label %stbtt__cuberoot.exit.i.i.us.us.i

bb.mk:                                            ; preds = %bb.mi
  %i.cci = fneg float %i.ccb
  %i.ccj = fpext float %i.cci to double
  %i.cck = call double @pow(double noundef %i.ccj, double noundef f0x3FD5555560000000) #39
  %i.ccl = fptrunc double %i.cck to float
  %i.ccm = fneg float %i.ccl
  br label %stbtt__cuberoot.exit.i.i.us.us.i

stbtt__cuberoot.exit.i.i.us.us.i:                 ; preds = %bb.mk, %bb.mj
  %.0.i.i.i.us.us.i = phi float [ %i.ccm, %bb.mk ], [ %i.cch, %bb.mj ]
  %i.ccn = fcmp olt float %i.ccd, 0.000000e+00
  br i1 %i.ccn, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %stbtt__cuberoot.exit.i.i.us.us.i
  %i.cco = fpext float %i.ccd to double
  %i.ccp = call double @pow(double noundef %i.cco, double noundef f0x3FD5555560000000) #39
  %i.ccq = fptrunc double %i.ccp to float
  br label %stbtt__cuberoot.exit49.i.i.us.us.i

bb.mm:                                            ; preds = %stbtt__cuberoot.exit.i.i.us.us.i
  %i.ccr = fneg float %i.ccd
  %i.ccs = fpext float %i.ccr to double
  %i.cct = call double @pow(double noundef %i.ccs, double noundef f0x3FD5555560000000) #39
  %i.ccu = fptrunc double %i.cct to float
  %i.ccv = fneg float %i.ccu
  br label %stbtt__cuberoot.exit49.i.i.us.us.i

stbtt__cuberoot.exit49.i.i.us.us.i:               ; preds = %bb.mm, %bb.ml
  %.0.i48.i.i.us.us.i = phi float [ %i.ccv, %bb.mm ], [ %i.ccq, %bb.ml ]
  %i.ccw = fadd float %i.cba, %.0.i.i.i.us.us.i
  %i.ccx = fadd float %i.ccw, %.0.i48.i.i.us.us.i
  br label %stbtt__solve_cubic.exit.i.us.us.i

bb.mn:                                            ; preds = %bb.mh
  %i.ccy = fdiv float %i.cbd, -3.000000e+00
  %sqrtf.i.i.us.us.i = call float @sqrtf(float noundef %i.ccy) #39 ; 2 uses
  %i.ccz = fdiv float -2.700000e+01, %i.cbu
  %i.cda = fpext float %i.ccz to double
  %i.cdb = call double @sqrt(double noundef %i.cda) #39
  %i.cdc = fneg double %i.cdb
  %i.cdd = fpext float %i.cbs to double
  %i.cde = fmul double %i.cdd, %i.cdc
  %i.cdf = fmul double %i.cde, 5.000000e-01
  %i.cdg = call double @acos(double noundef %i.cdf) #39
  %i.cdh = fptrunc double %i.cdg to float
  %i.cdi = fdiv float %i.cdh, 3.000000e+00
  %i.cdj = fpext float %i.cdi to double           ; 2 uses
  %i.cdk = call double @cos(double noundef %i.cdj) #39
  %i.cdl = fptrunc double %i.cdk to float         ; 3 uses
  %i.cdm = fadd double %i.cdj, f0xBFF921FAFC8B007A
  %i.cdn = call double @cos(double noundef %i.cdm) #39
  %i.cdo = fptrunc double %i.cdn to float
  %i.cdp = fmul float %i.cdo, f0x3FDDB3D7         ; 2 uses
  %i.cdq = fmul float %sqrtf.i.i.us.us.i, 2.000000e+00
  %i.cdr = call float @llvm.fmuladd.f32(float %i.cdq, float %i.cdl, float %i.cba)
  %i.cds = fadd float %i.cdp, %i.cdl
  %i.cdt = fneg float %sqrtf.i.i.us.us.i          ; 2 uses
  %i.cdu = call float @llvm.fmuladd.f32(float %i.cdt, float %i.cds, float %i.cba)
  %i.cdv = fsub float %i.cdl, %i.cdp
  %i.cdw = call float @llvm.fmuladd.f32(float %i.cdt, float %i.cdv, float %i.cba)
  br label %stbtt__solve_cubic.exit.i.us.us.i

bb.mo:                                            ; preds = %bb.mg
  %i.cdx = fmul float %i.cae, %i.cae
  %i.cdy = call float @llvm.fmuladd.f32(float %i.cab, float %i.cab, float %i.cdx)
  %i.cdz = fmul float %i.cam, %i.cak
  %i.cea = call float @llvm.fmuladd.f32(float %i.cal, float %i.cah, float %i.cdz)
  %i.ceb = call float @llvm.fmuladd.f32(float %i.cdy, float 2.000000e+00, float %i.cea) ; 6 uses
  %i.cec = fmul float %i.cam, %i.cae
  %i.ced = call float @llvm.fmuladd.f32(float %i.cal, float %i.cab, float %i.cec) ; 2 uses
  %i.cee = call float @llvm.fabs.f32(float %i.cas)
  %i.cef = fcmp olt float %i.cee, f0x35800000
  br i1 %i.cef, label %bb.mr, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.ceg = fmul float %i.cas, 4.000000e+00
  %i.ceh = fneg float %i.ced
  %i.cei = fmul float %i.ceg, %i.ceh
  %i.cej = call float @llvm.fmuladd.f32(float %i.ceb, float %i.ceb, float %i.cei) ; 2 uses
  %i.cek = fcmp olt float %i.cej, 0.000000e+00
  br i1 %i.cek, label %stbtt__solve_cubic.exit.i.us.us.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %sqrtf.i.us.us.i = call float @sqrtf(float noundef %i.cej) #39 ; 2 uses
  %i.cel = fneg float %i.ceb
  %i.cem = fmul float %i.cas, 2.000000e+00
  %i.cen = fsub float %i.cel, %sqrtf.i.us.us.i
  %i.ceo = fsub float %sqrtf.i.us.us.i, %i.ceb
  %i.cep = insertelement <2 x float> poison, float %i.cem, i64 0
  %i.ceq = shufflevector <2 x float> %i.cep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cer = insertelement <2 x float> poison, float %i.cen, i64 0
  %i.ces = insertelement <2 x float> %i.cer, float %i.ceo, i64 1
  %i.cet = fdiv <2 x float> %i.ces, %i.ceq        ; 2 uses
  %i.ceu = extractelement <2 x float> %i.cet, i64 0
  %i.cev = extractelement <2 x float> %i.cet, i64 1
  br label %stbtt__solve_cubic.exit.i.us.us.i

bb.mr:                                            ; preds = %bb.mo
  %i.cew = call float @llvm.fabs.f32(float %i.ceb)
  %i.cex = fcmp ult float %i.cew, f0x35800000
  br i1 %i.cex, label %stbtt__solve_cubic.exit.i.us.us.i, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.cey = fneg float %i.ced
  %i.cez = fdiv float %i.cey, %i.ceb
  br label %stbtt__solve_cubic.exit.i.us.us.i

stbtt__solve_cubic.exit.i.us.us.i:                ; preds = %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mn, %stbtt__cuberoot.exit49.i.i.us.us.i
  %.sroa.0.0.i.us.us.i = phi float [ 0.000000e+00, %bb.mr ], [ %i.cez, %bb.ms ], [ 0.000000e+00, %bb.mp ], [ %i.ceu, %bb.mq ], [ %i.cdr, %bb.mn ], [ %i.ccx, %stbtt__cuberoot.exit49.i.i.us.us.i ] ; 6 uses
  %.sroa.8.0.i.us.us.i = phi float [ 0.000000e+00, %bb.mr ], [ 0.000000e+00, %bb.ms ], [ 0.000000e+00, %bb.mp ], [ %i.cev, %bb.mq ], [ %i.cdu, %bb.mn ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.i.us.us.i ] ; 6 uses
  %.sroa.11.0.i.us.us.i = phi float [ 0.000000e+00, %bb.mr ], [ 0.000000e+00, %bb.ms ], [ 0.000000e+00, %bb.mp ], [ 0.000000e+00, %bb.mq ], [ %i.cdw, %bb.mn ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.i.us.us.i ] ; 6 uses
  %i.cfa = phi i1 [ false, %bb.mr ], [ true, %bb.ms ], [ false, %bb.mp ], [ true, %bb.mq ], [ true, %bb.mn ], [ true, %stbtt__cuberoot.exit49.i.i.us.us.i ]
  %i.cfb = phi i1 [ false, %bb.mr ], [ false, %bb.ms ], [ false, %bb.mp ], [ true, %bb.mq ], [ true, %bb.mn ], [ false, %stbtt__cuberoot.exit49.i.i.us.us.i ]
  %i.cfc = phi i1 [ false, %bb.mr ], [ false, %bb.ms ], [ false, %bb.mp ], [ false, %bb.mq ], [ true, %bb.mn ], [ false, %stbtt__cuberoot.exit49.i.i.us.us.i ]
  %i.cfd = fmul float %i.cam, %i.cam
  %i.cfe = call float @llvm.fmuladd.f32(float %i.cal, float %i.cal, float %i.cfd) ; 2 uses
  %i.cff = fmul float %.0428489.i.us.us.i, %.0428489.i.us.us.i
  %i.cfg = fcmp olt float %i.cfe, %i.cff
  %sqrt481.i.us.us.i = call float @llvm.sqrt.f32(float %i.cfe)
  %.4.i.us.us.i = select i1 %i.cfg, float %sqrt481.i.us.us.i, float %.0428489.i.us.us.i ; 4 uses
  %i.cfh = fcmp oge float %.sroa.0.0.i.us.us.i, 0.000000e+00
  %i.cfi = fcmp ole float %.sroa.0.0.i.us.us.i, 1.000000e+00
  %i.cfj = and i1 %i.cfh, %i.cfi
  %or.cond7.i.us.us.i = select i1 %i.cfa, i1 %i.cfj, i1 false
  br i1 %or.cond7.i.us.us.i, label %bb.mt, label %bb.mv

bb.mt:                                            ; preds = %stbtt__solve_cubic.exit.i.us.us.i
  %i.cfk = fsub float 1.000000e+00, %.sroa.0.0.i.us.us.i ; 3 uses
  %i.cfl = fmul float %i.cfk, %i.cfk              ; 2 uses
  %i.cfm = fmul nnan float %.sroa.0.0.i.us.us.i, 2.000000e+00
  %i.cfn = fmul float %i.cfm, %i.cfk              ; 2 uses
  %i.cfo = fmul float %i.caa, %i.cfn
  %i.cfp = call float @llvm.fmuladd.f32(float %i.cfl, float %i.bzz, float %i.cfo)
  %i.cfq = fmul nnan float %.sroa.0.0.i.us.us.i, %.sroa.0.0.i.us.us.i ; 2 uses
  %i.cfr = call float @llvm.fmuladd.f32(float %i.cfq, float %i.cag, float %i.cfp)
  %i.cfs = fmul float %i.cad, %i.cfn
  %i.cft = call float @llvm.fmuladd.f32(float %i.cfl, float %i.cac, float %i.cfs)
  %i.cfu = call float @llvm.fmuladd.f32(float %i.cfq, float %i.caj, float %i.cft)
  %i.cfv = fsub float %i.cfr, %i.bry              ; 2 uses
  %i.cfw = fsub float %i.cfu, %i.brp              ; 2 uses
  %i.cfx = fmul float %i.cfw, %i.cfw
  %i.cfy = call float @llvm.fmuladd.f32(float %i.cfv, float %i.cfv, float %i.cfx) ; 2 uses
  %i.cfz = fmul float %.4.i.us.us.i, %.4.i.us.us.i
  %i.cga = fcmp olt float %i.cfy, %i.cfz
  br i1 %i.cga, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %sqrt482.i.us.us.i = call float @llvm.sqrt.f32(float %i.cfy)
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt, %stbtt__solve_cubic.exit.i.us.us.i
  %.5.i.us.us.i = phi float [ %sqrt482.i.us.us.i, %bb.mu ], [ %.4.i.us.us.i, %bb.mt ], [ %.4.i.us.us.i, %stbtt__solve_cubic.exit.i.us.us.i ] ; 4 uses
  %i.cgb = fcmp oge float %.sroa.8.0.i.us.us.i, 0.000000e+00
  %i.cgc = fcmp ole float %.sroa.8.0.i.us.us.i, 1.000000e+00
  %i.cgd = and i1 %i.cgb, %i.cgc
  %or.cond13.i.us.us.i = select i1 %i.cfb, i1 %i.cgd, i1 false
  br i1 %or.cond13.i.us.us.i, label %bb.mw, label %bb.my

bb.mw:                                            ; preds = %bb.mv
  %i.cge = fsub float 1.000000e+00, %.sroa.8.0.i.us.us.i ; 3 uses
  %i.cgf = fmul float %i.cge, %i.cge              ; 2 uses
  %i.cgg = fmul nnan float %.sroa.8.0.i.us.us.i, 2.000000e+00
  %i.cgh = fmul float %i.cgg, %i.cge              ; 2 uses
  %i.cgi = fmul float %i.caa, %i.cgh
  %i.cgj = call float @llvm.fmuladd.f32(float %i.cgf, float %i.bzz, float %i.cgi)
  %i.cgk = fmul nnan float %.sroa.8.0.i.us.us.i, %.sroa.8.0.i.us.us.i ; 2 uses
  %i.cgl = call float @llvm.fmuladd.f32(float %i.cgk, float %i.cag, float %i.cgj)
  %i.cgm = fmul float %i.cad, %i.cgh
  %i.cgn = call float @llvm.fmuladd.f32(float %i.cgf, float %i.cac, float %i.cgm)
  %i.cgo = call float @llvm.fmuladd.f32(float %i.cgk, float %i.caj, float %i.cgn)
  %i.cgp = fsub float %i.cgl, %i.bry              ; 2 uses
  %i.cgq = fsub float %i.cgo, %i.brp              ; 2 uses
  %i.cgr = fmul float %i.cgq, %i.cgq
  %i.cgs = call float @llvm.fmuladd.f32(float %i.cgp, float %i.cgp, float %i.cgr) ; 2 uses
  %i.cgt = fmul float %.5.i.us.us.i, %.5.i.us.us.i
  %i.cgu = fcmp olt float %i.cgs, %i.cgt
  br i1 %i.cgu, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %sqrt483.i.us.us.i = call float @llvm.sqrt.f32(float %i.cgs)
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw, %bb.mv
  %.6.i.us.us.i = phi float [ %sqrt483.i.us.us.i, %bb.mx ], [ %.5.i.us.us.i, %bb.mw ], [ %.5.i.us.us.i, %bb.mv ] ; 4 uses
  %i.cgv = fcmp oge float %.sroa.11.0.i.us.us.i, 0.000000e+00
  %i.cgw = fcmp ole float %.sroa.11.0.i.us.us.i, 1.000000e+00
  %i.cgx = and i1 %i.cgv, %i.cgw
  %or.cond19.i.us.us.i = select i1 %i.cfc, i1 %i.cgx, i1 false
  br i1 %or.cond19.i.us.us.i, label %bb.mz, label %.thread.i.us.us.i

bb.mz:                                            ; preds = %bb.my
  %i.cgy = fsub float 1.000000e+00, %.sroa.11.0.i.us.us.i ; 3 uses
  %i.cgz = fmul float %i.cgy, %i.cgy              ; 2 uses
  %i.cha = fmul nnan float %.sroa.11.0.i.us.us.i, 2.000000e+00
  %i.chb = fmul float %i.cha, %i.cgy              ; 2 uses
  %i.chc = fmul float %i.caa, %i.chb
  %i.chd = call float @llvm.fmuladd.f32(float %i.cgz, float %i.bzz, float %i.chc)
  %i.che = fmul nnan float %.sroa.11.0.i.us.us.i, %.sroa.11.0.i.us.us.i ; 2 uses
  %i.chf = call float @llvm.fmuladd.f32(float %i.che, float %i.cag, float %i.chd)
  %i.chg = fmul float %i.cad, %i.chb
  %i.chh = call float @llvm.fmuladd.f32(float %i.cgz, float %i.cac, float %i.chg)
  %i.chi = call float @llvm.fmuladd.f32(float %i.che, float %i.caj, float %i.chh)
  %i.chj = fsub float %i.chf, %i.bry              ; 2 uses
  %i.chk = fsub float %i.chi, %i.brp              ; 2 uses
  %i.chl = fmul float %i.chk, %i.chk
  %i.chm = call float @llvm.fmuladd.f32(float %i.chj, float %i.chj, float %i.chl) ; 2 uses
  %i.chn = fmul float %.6.i.us.us.i, %.6.i.us.us.i
  %i.cho = fcmp olt float %i.chm, %i.chn
  br i1 %i.cho, label %bb.na, label %.thread.i.us.us.i

bb.na:                                            ; preds = %bb.mz
  %sqrt484.i.us.us.i = call float @llvm.sqrt.f32(float %i.chm)
  br label %.thread.i.us.us.i

bb.nb:                                            ; preds = %.lr.ph490.i.us.us.i
  %i.chp = getelementptr inbounds nuw [4 x i8], ptr %i.bqr, i64 %indvars.iv497.i.us.us.i
  %i.chq = load float, ptr %i.chp, align 4        ; 2 uses
  %i.chr = fcmp une float %i.chq, 0.000000e+00
  br i1 %i.chr, label %bb.nc, label %.thread.i.us.us.i

bb.nc:                                            ; preds = %bb.nb
  %i.chs = getelementptr i8, ptr %i.bym, i64 -14
  %i.cht = load <2 x i16>, ptr %i.chs, align 2
  %i.chu = sitofp <2 x i16> %i.cht to <2 x float> ; 2 uses
  %i.chv = extractelement <2 x float> %i.chu, i64 0
  %i.chw = fmul float %i.yc, %i.chv
  %i.chx = extractelement <2 x float> %i.chu, i64 1
  %i.chy = fmul float %i.chx, %i.yu
  %i.chz = fmul float %.0428489.i.us.us.i, %.0428489.i.us.us.i
  %i.cia = shufflevector <2 x float> %i.byp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cib = insertelement <2 x float> %i.cia, float %i.chy, i64 1
  %i.cic = insertelement <2 x float> %i.byp, float %i.brp, i64 0
  %i.cid = fsub <2 x float> %i.cib, %i.cic        ; 5 uses
  %i.cie = insertelement <2 x float> %i.byp, float %i.chw, i64 1
  %i.cif = shufflevector <2 x float> %i.byp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cig = insertelement <2 x float> %i.cif, float %i.bry, i64 0
  %i.cih = fsub <2 x float> %i.cie, %i.cig        ; 5 uses
  %i.cii = fneg <2 x float> %i.cih
  %i.cij = shufflevector <2 x float> %i.cid, <2 x float> %i.cii, <2 x i32> <i32 0, i32 2>
  %i.cik = fmul <2 x float> %i.cid, %i.cij
  %i.cil = shufflevector <2 x float> %i.cih, <2 x float> %i.cid, <2 x i32> <i32 0, i32 2>
  %i.cim = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cih, <2 x float> %i.cil, <2 x float> %i.cik) ; 2 uses
  %i.cin = extractelement <2 x float> %i.cim, i64 0 ; 2 uses
  %i.cio = fcmp olt float %i.cin, %i.chz
  %sqrt480.i.us.us.i = call float @llvm.sqrt.f32(float %i.cin)
  %.1429.i.us.us.i = select i1 %i.cio, float %sqrt480.i.us.us.i, float %.0428489.i.us.us.i ; 3 uses
  %i.cip = extractelement <2 x float> %i.cim, i64 1
  %i.ciq = call float @llvm.fabs.f32(float %i.cip)
  %i.cir = fmul float %i.chq, %i.ciq              ; 2 uses
  %i.cis = fcmp olt float %i.cir, %.1429.i.us.us.i
  br i1 %i.cis, label %bb.nd, label %.thread.i.us.us.i

bb.nd:                                            ; preds = %bb.nc
  %i.cit = shufflevector <2 x float> %i.cid, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ciu = fmul <2 x float> %i.cit, %i.cid
  %i.civ = shufflevector <2 x float> %i.cih, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ciw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.civ, <2 x float> %i.cih, <2 x float> %i.ciu) ; 2 uses
  %i.cix = extractelement <2 x float> %i.ciw, i64 0
  %i.ciy = fneg float %i.cix
  %i.ciz = extractelement <2 x float> %i.ciw, i64 1
  %i.cja = fdiv float %i.ciy, %i.ciz              ; 2 uses
  %i.cjb = fcmp oge float %i.cja, 0.000000e+00
  %i.cjc = fcmp ole float %i.cja, 1.000000e+00
  %or.cond.i.us.us.i = and i1 %i.cjb, %i.cjc
  %.2430.i.us.us.i = select i1 %or.cond.i.us.us.i, float %i.cir, float %.1429.i.us.us.i
  br label %.thread.i.us.us.i

.thread.i.us.us.i:                                ; preds = %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mf, %.lr.ph490.i.us.us.i
  %.9.i.us.us.i = phi float [ %.0428489.i.us.us.i, %.lr.ph490.i.us.us.i ], [ %.1429.i.us.us.i, %bb.nc ], [ %.2430.i.us.us.i, %bb.nd ], [ %.6.i.us.us.i, %bb.my ], [ %.0428489.i.us.us.i, %bb.mf ], [ %sqrt484.i.us.us.i, %bb.na ], [ %.6.i.us.us.i, %bb.mz ], [ %.0428489.i.us.us.i, %bb.nb ] ; 3 uses
  %indvars.iv.next498.i.us.us.i = add nuw nsw i64 %indvars.iv497.i.us.us.i, 1 ; 2 uses
  %exitcond501.not.i.us.us.i = icmp eq i64 %indvars.iv.next498.i.us.us.i, %wide.trip.count.i.i.i156
  br i1 %exitcond501.not.i.us.us.i, label %._crit_edge.i.us.us.i, label %.lr.ph490.i.us.us.i

._crit_edge.i.us.us.i:                            ; preds = %.thread.i.us.us.i
  %i.cjd = icmp eq i32 %.9.i.fr.i.us.us.i, 0
  %i.cje = fneg float %.9.i.us.us.i
  %i.cjf = select i1 %i.cjd, float %i.cje, float %.9.i.us.us.i
  %i.cjg = call float @llvm.fmuladd.f32(float %i.cjf, float 6.400000e+01, float 1.280000e+02) ; 3 uses
  %i.cjh = fcmp olt float %i.cjg, 0.000000e+00
  br i1 %i.cjh, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %._crit_edge.i.us.us.i
  %i.cji = fcmp ogt float %i.cjg, 2.550000e+02
  %spec.store.select.i.us.us.i = select i1 %i.cji, float 2.550000e+02, float %i.cjg
  %i.cjj = fptoui float %spec.store.select.i.us.us.i to i8
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %._crit_edge.i.us.us.i
  %.0431.i.us.us.i = phi i8 [ %i.cjj, %bb.ne ], [ 0, %._crit_edge.i.us.us.i ]
  %i.cjk = add i32 %.reass.i.us.i, %i.brw
  %i.cjl = sext i32 %i.cjk to i64
  %i.cjm = getelementptr inbounds i8, ptr %i.bqo, i64 %i.cjl
  store i8 %.0431.i.us.us.i, ptr %i.cjm, align 1
  %indvars.iv.next503.i.us.us.i = add nuw nsw i64 %indvars.iv502.i.us.us.i, 1 ; 2 uses
  %lftr.wideiv.i.us.us.i = trunc i64 %indvars.iv.next503.i.us.us.i to i32
  %exitcond505.not.i.us.us.i = icmp eq i32 %i.bqh, %lftr.wideiv.i.us.us.i
  br i1 %exitcond505.not.i.us.us.i, label %._crit_edge493.i.split.us.us.i, label %bb.lj

._crit_edge493.i.split.us.us.i:                   ; preds = %bb.nf
  %i.cjn = add nsw i32 %.0435494.i.us.i, 1        ; 2 uses
  %exitcond506.not.i.us.i = icmp eq i32 %i.cjn, %i.bqi
  br i1 %exitcond506.not.i.us.i, label %._crit_edge495.split.i.i, label %.preheader.i.us.i

bb.ng:                                            ; preds = %bb.nk, %.lr.ph.i.i157
  %indvars.iv.i.i159 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i161, %bb.nk ] ; 4 uses
  %.0432487.i.i = phi i64 [ %i.bqu, %.lr.ph.i.i157 ], [ %indvars.iv.i.i159, %bb.nk ] ; 2 uses
  %i.cjo = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i159 ; 4 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 12
  %i.cjq = load i8, ptr %i.cjp, align 2
  switch i8 %i.cjq, label %bb.nk [
    i8 2, label %bb.nh
    i8 3, label %bb.ni
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.cjr = load i16, ptr %i.cjo, align 2
  %i.cjs = sitofp i16 %i.cjr to float
  %i.cjt = fmul float %i.yc, %i.cjs
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjo, i64 2
  %i.cjv = load i16, ptr %i.cju, align 2
  %i.cjw = sitofp i16 %i.cjv to float
  %i.cjx = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cjy = load i16, ptr %i.cjx, align 2
  %i.cjz = sitofp i16 %i.cjy to float
  %i.cka = fmul float %i.yc, %i.cjz
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cjx, i64 2
  %i.ckc = load i16, ptr %i.ckb, align 2
  %i.ckd = sitofp i16 %i.ckc to float
  %i.cke = fsub float %i.cka, %i.cjt              ; 2 uses
  %i.ckf = fmul float %i.yc, %i.cjw
  %i.ckg = fmul float %i.yc, %i.ckd
  %i.ckh = fsub float %i.ckf, %i.ckg              ; 2 uses
  %i.cki = fmul float %i.ckh, %i.ckh
  %i.ckj = call float @llvm.fmuladd.f32(float %i.cke, float %i.cke, float %i.cki)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.ckj) ; 2 uses
  %i.ckk = fcmp olt float %sqrt.i.i, f0x3A800000
  %i.ckl = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ckm = select i1 %i.ckk, float 0.000000e+00, float %i.ckl
  br label %bb.nk

bb.ni:                                            ; preds = %bb.ng
  %i.ckn = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cko = load i16, ptr %i.ckn, align 2
  %i.ckp = sitofp i16 %i.cko to float
  %i.ckq = fmul float %i.yc, %i.ckp
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckn, i64 2
  %i.cks = load i16, ptr %i.ckr, align 2
  %i.ckt = sitofp i16 %i.cks to float
  %i.cku = load <4 x i16>, ptr %i.cjo, align 2
  %i.ckv = sitofp <4 x i16> %i.cku to <4 x float> ; 4 uses
  %i.ckw = extractelement <4 x float> %i.ckv, i64 2
  %i.ckx = fmul float %i.yc, %i.ckw
  %i.cky = extractelement <4 x float> %i.ckv, i64 3
  %i.ckz = fmul float %i.cky, %i.yu
  %i.cla = extractelement <4 x float> %i.ckv, i64 0
  %i.clb = fmul float %i.yc, %i.cla
  %i.clc = extractelement <4 x float> %i.ckv, i64 1
  %i.cld = fmul float %i.clc, %i.yu
  %i.cle = call float @llvm.fmuladd.f32(float %i.ckx, float -2.000000e+00, float %i.clb)
  %i.clf = fadd float %i.ckq, %i.cle              ; 2 uses
  %i.clg = call float @llvm.fmuladd.f32(float %i.ckz, float -2.000000e+00, float %i.cld)
  %i.clh = fmul float %i.yc, %i.ckt
  %i.cli = fsub float %i.clg, %i.clh              ; 2 uses
  %i.clj = fmul float %i.cli, %i.cli
  %i.clk = call float @llvm.fmuladd.f32(float %i.clf, float %i.clf, float %i.clj) ; 2 uses
  %i.cll = fcmp ult float %i.clk, f0x35800000
  br i1 %i.cll, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.clm = fdiv float 1.000000e+00, %i.clk
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni, %bb.nh, %bb.ng
  %.sink.i.i160 = phi float [ %i.clm, %bb.nj ], [ 0.000000e+00, %bb.ni ], [ %i.ckm, %bb.nh ], [ 0.000000e+00, %bb.ng ]
  %i.cln = getelementptr inbounds nuw [4 x i8], ptr %i.bqr, i64 %indvars.iv.i.i159
  store float %.sink.i.i160, ptr %i.cln, align 4
  %indvars.iv.next.i.i161 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 2 uses
  %exitcond.not.i.i162 = icmp eq i64 %indvars.iv.next.i.i161, %wide.trip.count.i.i158
  br i1 %exitcond.not.i.i162, label %.preheader485.i.i, label %bb.ng

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge493.i.split.i
  %.0435494.i.i = phi i32 [ %i.cpt, %._crit_edge493.i.split.i ], [ %i.bqg, %.preheader.i.i.preheader ] ; 3 uses
  %i.clo = sitofp i32 %.0435494.i.i to float
  %i.clp = fadd float %i.clo, 5.000000e-01
  %i.clq = fdiv float %i.clp, %i.yu
  %i.clr = fpext float %i.clq to double
  %i.cls = sub i32 %.0435494.i.i, %i.bqg
  %i.clt = mul i32 %i.cls, %i.bqj                 ; 11 uses
  %.reass.i.i = add i32 %i.clt, %reass.sub.i.i    ; 15 uses
  %i.clu = call double @fmod(double noundef %i.clr, double noundef 1.000000e+00) #39 ; 2 uses
  %i.clv = fcmp olt double %i.clu, f0x3F847AE130000000
  br i1 %i.clv, label %iter.check646, label %.preheader.i.split.split.i

end_hunk_1
