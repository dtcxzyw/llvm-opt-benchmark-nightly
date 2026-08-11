inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_Z11do_rotationRKN3gmx7MpiCommEPK12gmx_domdec_tP10gmx_enfrotPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEflb:bb.a

scalar.ph499.preheader:                           ; preds = %vector.memcheck482, %.lr.ph203.i, %middle.block549
  %indvars.iv214.i.ph = phi i64 [ 0, %vector.memcheck482 ], [ 0, %.lr.ph203.i ], [ %n.vec502, %middle.block549 ]
  br label %scalar.ph499

scalar.ph499:                                     ; preds = %scalar.ph499.preheader, %scalar.ph499
  %indvars.iv214.i = phi i64 [ %indvars.iv.next215.i, %scalar.ph499 ], [ %indvars.iv214.i.ph, %scalar.ph499.preheader ] ; 3 uses
  %i.azr = getelementptr inbounds nuw [36 x i8], ptr %i.axu, i64 %indvars.iv214.i ; 9 uses
  %i.azs = load float, ptr %i.azr, align 4, !tbaa !59
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 4
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !59
  %i.azv = fmul float %i.avb, %i.azu
  %i.azw = call float @llvm.fmuladd.f32(float %i.azs, float %i.auz, float %i.azv)
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azy = load float, ptr %i.azx, align 4, !tbaa !59
  %i.azz = call float @llvm.fmuladd.f32(float %i.azy, float %i.avd, float %i.azw) ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azr, i64 12
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !59
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azr, i64 16
  %i.bad = load float, ptr %i.bac, align 4, !tbaa !59
  %i.bae = fmul float %i.avb, %i.bad
  %i.baf = call float @llvm.fmuladd.f32(float %i.bab, float %i.auz, float %i.bae)
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azr, i64 20
  %i.bah = load float, ptr %i.bag, align 4, !tbaa !59
  %i.bai = call float @llvm.fmuladd.f32(float %i.bah, float %i.avd, float %i.baf) ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %i.azr, i64 24
  %i.bak = load float, ptr %i.baj, align 4, !tbaa !59
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azr, i64 28
  %i.bam = load float, ptr %i.bal, align 4, !tbaa !59
  %i.ban = fmul float %i.avb, %i.bam
  %i.bao = call float @llvm.fmuladd.f32(float %i.bak, float %i.auz, float %i.ban)
  %i.bap = getelementptr inbounds nuw i8, ptr %i.azr, i64 32
  %i.baq = load float, ptr %i.bap, align 4, !tbaa !59
  %i.bar = call float @llvm.fmuladd.f32(float %i.baq, float %i.avd, float %i.bao) ; 2 uses
  %i.bas = load float, ptr %i.aqv, align 4, !tbaa !59 ; 2 uses
  %i.bat = load float, ptr %i.aqw, align 8, !tbaa !59 ; 2 uses
  %i.bau = fneg float %i.bai
  %i.bav = fmul float %i.bat, %i.bau
  %i.baw = call float @llvm.fmuladd.f32(float %i.bas, float %i.bar, float %i.bav) ; 3 uses
  %i.bax = load float, ptr %i.aqu, align 8, !tbaa !59 ; 2 uses
  %i.bay = fneg float %i.bar
  %i.baz = fmul float %i.bax, %i.bay
  %i.bba = call float @llvm.fmuladd.f32(float %i.bat, float %i.azz, float %i.baz) ; 3 uses
  %i.bbb = fneg float %i.azz
  %i.bbc = fmul float %i.bas, %i.bbb
  %i.bbd = call float @llvm.fmuladd.f32(float %i.bax, float %i.bai, float %i.bbc) ; 3 uses
  %i.bbe = fmul float %i.bba, %i.bba
  %i.bbf = call float @llvm.fmuladd.f32(float %i.baw, float %i.baw, float %i.bbe)
  %i.bbg = call noundef float @llvm.fmuladd.f32(float %i.bbd, float %i.bbd, float %i.bbf)
  %sqrt.i86.i = call float @llvm.sqrt.f32(float %i.bbg)
  %i.bbh = fdiv float 1.000000e+00, %sqrt.i86.i   ; 3 uses
  %i.bbi = fmul float %i.baw, %i.bbh
  %i.bbj = fmul float %i.bba, %i.bbh
  %i.bbk = fmul float %i.bbd, %i.bbh
  %i.bbl = fmul float %i.aws, %i.bbj
  %i.bbm = call float @llvm.fmuladd.f32(float %i.bbi, float %i.awq, float %i.bbl)
  %i.bbn = call noundef float @llvm.fmuladd.f32(float %i.bbk, float %i.awu, float %i.bbm) ; 2 uses
  %i.bbo = fmul float %i.bbn, %i.bbn
  %i.bbp = load float, ptr %i.aqz, align 8, !tbaa !398
  %i.bbq = fpext float %i.bbp to double
  %i.bbr = fmul double %i.bbq, 5.000000e-01
  %i.bbs = fmul double %i.bbr, %i.axv
  %i.bbt = fpext float %i.bbo to double
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %indvars.iv214.i ; 2 uses
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !59
  %i.bbw = fpext float %i.bbv to double
  %i.bbx = call double @llvm.fmuladd.f64(double %i.bbs, double %i.bbt, double %i.bbw)
  %i.bby = fptrunc double %i.bbx to float
  store float %i.bby, ptr %i.bbu, align 4, !tbaa !59
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %exitcond218.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count217.i
  br i1 %exitcond218.not.i, label %.loopexit.i158, label %scalar.ph499, !llvm.loop !504

.loopexit.i158:                                   ; preds = %scalar.ph499, %middle.block549, %.preheader.i162, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i
  br i1 %i.k, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.loopexit.i158
  %i.bbz = load float, ptr %i.aoa, align 8, !tbaa !59
  %i.bca = fsub float %.sroa.0185.0.i, %i.bbz     ; 2 uses
  %i.bcb = load float, ptr %i.aqx, align 4, !tbaa !59
  %i.bcc = fsub float %.sroa.9.0.i, %i.bcb        ; 2 uses
  %i.bcd = load float, ptr %i.aqy, align 8, !tbaa !59
  %i.bce = fsub float %i.aux, %i.bcd              ; 2 uses
  %i.bcf = fneg float %i.axk
  %i.bcg = fmul float %i.bce, %i.bcf
  %i.bch = call float @llvm.fmuladd.f32(float %i.bcc, float %i.axl, float %i.bcg)
  %i.bci = fneg float %i.axl
  %i.bcj = fmul float %i.bca, %i.bci
  %i.bck = call float @llvm.fmuladd.f32(float %i.bce, float %i.axj, float %i.bcj)
  %i.bcl = fneg float %i.axj
  %i.bcm = fmul float %i.bcc, %i.bcl
  %i.bcn = call float @llvm.fmuladd.f32(float %i.bca, float %i.axk, float %i.bcm)
  %i.bco = load float, ptr %i.aqu, align 8, !tbaa !59 ; 6 uses
  %i.bcp = load float, ptr %i.aqv, align 4, !tbaa !59 ; 6 uses
  %i.bcq = fmul float %i.bck, %i.bcp
  %i.bcr = call float @llvm.fmuladd.f32(float %i.bch, float %i.bco, float %i.bcq)
  %i.bcs = load float, ptr %i.aqw, align 8, !tbaa !59 ; 6 uses
  %i.bct = call noundef float @llvm.fmuladd.f32(float %i.bcn, float %i.bcs, float %i.bcr)
  %i.bcu = load float, ptr %i.mz, align 4, !tbaa !80
  %i.bcv = fadd float %i.bcu, %i.bct
  store float %i.bcv, ptr %i.mz, align 4, !tbaa !80
  %i.bcw = fmul float %i.avb, %i.bcp
  %i.bcx = call float @llvm.fmuladd.f32(float %i.bco, float %i.auz, float %i.bcw)
  %i.bcy = call noundef float @llvm.fmuladd.f32(float %i.bcs, float %i.avd, float %i.bcx) ; 3 uses
  %i.bcz = fmul float %i.bco, %i.bcy
  %i.bda = fmul float %i.bcp, %i.bcy
  %i.bdb = fmul float %i.bcs, %i.bcy
  %i.bdc = fsub float %i.auz, %i.bcz              ; 5 uses
  %i.bdd = fsub float %i.avb, %i.bda              ; 5 uses
  %i.bde = fsub float %i.avd, %i.bdb              ; 5 uses
  %i.bdf = fmul float %i.aws, %i.bcp
  %i.bdg = call float @llvm.fmuladd.f32(float %i.bco, float %i.awq, float %i.bdf)
  %i.bdh = call noundef float @llvm.fmuladd.f32(float %i.bcs, float %i.awu, float %i.bdg) ; 3 uses
  %i.bdi = fmul float %i.bco, %i.bdh
  %i.bdj = fmul float %i.bcp, %i.bdh
  %i.bdk = fmul float %i.bcs, %i.bdh
  %i.bdl = fsub float %i.awq, %i.bdi              ; 7 uses
  %i.bdm = fsub float %i.aws, %i.bdj              ; 7 uses
  %i.bdn = fsub float %i.awu, %i.bdk              ; 7 uses
  %i.bdo = fneg float %i.bdd
  %i.bdp = fmul float %i.bdn, %i.bdo
  %i.bdq = call float @llvm.fmuladd.f32(float %i.bdm, float %i.bde, float %i.bdp)
  %i.bdr = fneg float %i.bde
  %i.bds = fmul float %i.bdl, %i.bdr
  %i.bdt = call float @llvm.fmuladd.f32(float %i.bdn, float %i.bdc, float %i.bds)
  %i.bdu = fneg float %i.bdc
  %i.bdv = fmul float %i.bdm, %i.bdu
  %i.bdw = call float @llvm.fmuladd.f32(float %i.bdl, float %i.bdd, float %i.bdv)
  %i.bdx = fmul float %i.bcp, %i.bdt
  %i.bdy = call float @llvm.fmuladd.f32(float %i.bco, float %i.bdq, float %i.bdx)
  %i.bdz = call noundef float @llvm.fmuladd.f32(float %i.bcs, float %i.bdw, float %i.bdy)
  %i.bea = fcmp ult float %i.bdz, 0.000000e+00
  %i.beb = fneg float %i.bdm
  %i.bec = fmul float %i.bde, %i.beb
  %i.bed = call float @llvm.fmuladd.f32(float %i.bdd, float %i.bdn, float %i.bec) ; 2 uses
  %i.bee = fneg float %i.bdn
  %i.bef = fmul float %i.bdc, %i.bee
  %i.beg = call float @llvm.fmuladd.f32(float %i.bde, float %i.bdl, float %i.bef) ; 2 uses
  %i.beh = fneg float %i.bdl
  %i.bei = fmul float %i.bdd, %i.beh
  %i.bej = call float @llvm.fmuladd.f32(float %i.bdc, float %i.bdm, float %i.bei) ; 2 uses
  %i.bek = fmul float %i.beg, %i.beg
  %i.bel = call float @llvm.fmuladd.f32(float %i.bed, float %i.bed, float %i.bek)
  %i.bem = call noundef float @llvm.fmuladd.f32(float %i.bej, float %i.bej, float %i.bel)
  %sqrt.i.i12.i.i159 = call noundef float @llvm.sqrt.f32(float %i.bem)
  %i.ben = fmul float %i.bdd, %i.bdm
  %i.beo = call float @llvm.fmuladd.f32(float %i.bdc, float %i.bdl, float %i.ben)
  %i.bep = call noundef float @llvm.fmuladd.f32(float %i.bde, float %i.bdn, float %i.beo)
  %i.beq = call noundef float @atan2f(float noundef %sqrt.i.i12.i.i159, float noundef %i.bep) #28 ; 2 uses
  %i.ber = fneg float %i.beq
  %storemerge.i.i160 = select i1 %i.bea, float %i.beq, float %i.ber
  %i.bes = fmul float %i.bdm, %i.bdm
  %i.bet = call float @llvm.fmuladd.f32(float %i.bdl, float %i.bdl, float %i.bes)
  %i.beu = call noundef float @llvm.fmuladd.f32(float %i.bdn, float %i.bdn, float %i.bet)
  %sqrt.i.i.i161 = call noundef float @llvm.sqrt.f32(float %i.beu) ; 2 uses
  %i.bev = load float, ptr %i.na, align 8, !tbaa !81
  %i.bew = call float @llvm.fmuladd.f32(float %storemerge.i.i160, float %sqrt.i.i.i161, float %i.bev)
  store float %i.bew, ptr %i.na, align 8, !tbaa !81
  %i.bex = load float, ptr %i.nb, align 4, !tbaa !82
  %i.bey = fadd float %i.bex, %sqrt.i.i.i161
  store float %i.bey, ptr %i.nb, align 4, !tbaa !82
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit.i158
  %i.bez = add nuw nsw i64 %.082205.i, 1          ; 2 uses
  %exitcond219.not.i = icmp eq i64 %i.bez, %i.aqe
  br i1 %exitcond219.not.i, label %._crit_edge208.loopexit.i, label %bb.ap, !llvm.loop !505

_ZL19do_radial_motion_pfP13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPA3_Kfbb.exit: ; preds = %._crit_edge.i, %._crit_edge208.loopexit.i
  %.083.lcssa.i = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.atf, %._crit_edge208.loopexit.i ]
  %i.bfa = getelementptr inbounds nuw i8, ptr %.pre221.i, i64 64
  %i.bfb = load float, ptr %i.bfa, align 8, !tbaa !398
  %i.bfc = fpext float %i.bfb to double
  %i.bfd = fmul double %i.bfc, 5.000000e-01
  %i.bfe = fmul double %.083.lcssa.i, %i.bfd
  %i.bff = fptrunc double %i.bfe to float
  store float %i.bff, ptr %i.my, align 4, !tbaa !41
  br label %_ZL8do_fixedP13gmx_enfrotgrpbb.exit

bb.at:                                            ; preds = %.loopexit, %.loopexit
  %i.bfg = load ptr, ptr %.sroa.0198.0243, align 8, !tbaa !77 ; 4 uses
  %i.bfh = load i32, ptr %i.bfg, align 8, !tbaa !99
  %i.bfi = icmp eq i32 %i.bfh, 7                  ; 3 uses
  br i1 %or.cond.i169, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfg, i64 80
  %i.bfk = load i32, ptr %i.bfj, align 8, !tbaa !83
  %i.bfl = icmp eq i32 %i.bfk, 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.bfm = phi i1 [ false, %bb.at ], [ %i.bfl, %bb.au ]
  br i1 %i.bfi, label %bb.aw, label %._crit_edge213.i

._crit_edge213.i:                                 ; preds = %bb.av
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bfg, i64 8
  %.pre.i170 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !317
  %.phi.trans.insert214.i = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 216
  %.pre215.i = load float, ptr %.phi.trans.insert214.i, align 8, !tbaa !364
  %.pre218.i = sitofp i32 %.pre.i170 to float
  %.pre219.i = fmul float %.pre215.i, %.pre218.i
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.bfn = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 144 ; 2 uses
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !442
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 200 ; 2 uses
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !338
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfg, i64 8
  %i.bfs = load i32, ptr %i.bfr, align 8, !tbaa !317
  %i.bft = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 96 ; 2 uses
  call void @_Z10get_centerPA3_KfPfiS2_(ptr noundef %i.bfo, ptr noundef %i.bfq, i32 noundef %i.bfs, ptr noundef nonnull %i.bft)
  %i.bfu = load ptr, ptr %.sroa.0198.0243, align 8, !tbaa !77 ; 3 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8
  %i.bfw = load i32, ptr %i.bfv, align 8, !tbaa !317 ; 3 uses
  %10 = sitofp i32 %i.bfw to float
  %i.bfx = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 216
  %i.bfy = load float, ptr %i.bfx, align 8, !tbaa !364 ; 2 uses
  %i.bfz = fmul float %i.bfy, %10                 ; 2 uses
  %i.bga = icmp sgt i32 %i.bfw, 0
  br i1 %i.bga, label %.lr.ph.i.i, label %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aw
  %i.bgb = load ptr, ptr %i.bfp, align 8, !tbaa !338
  %i.bgc = load ptr, ptr %i.bfn, align 8, !tbaa !442
  %i.bgd = load float, ptr %i.bft, align 8, !tbaa !59
  %i.bge = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 100
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !59
  %i.bgg = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 104
  %i.bgh = load float, ptr %i.bgg, align 8, !tbaa !59
  %i.bgi = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 16
  %i.bgj = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 120
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !27
  %i.bgl = load float, ptr %i.bgi, align 8, !tbaa !59
  %i.bgm = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 20
  %i.bgn = load float, ptr %i.bgm, align 4, !tbaa !59
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 24
  %i.bgp = load float, ptr %i.bgo, align 8, !tbaa !59
  %i.bgq = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 28
  %i.bgr = load float, ptr %i.bgq, align 4, !tbaa !59
  %i.bgs = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 32
  %i.bgt = load float, ptr %i.bgs, align 8, !tbaa !59
  %i.bgu = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 36
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !59
  %i.bgw = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 40
  %i.bgx = load float, ptr %i.bgw, align 8, !tbaa !59
  %i.bgy = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 44
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !59
  %i.bha = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 48
  %i.bhb = load float, ptr %i.bha, align 8, !tbaa !59
  %i.bhc = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 64
  %i.bhd = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 68
  %i.bhe = load float, ptr %i.bhd, align 4, !tbaa !59 ; 4 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 72
  %i.bhg = load float, ptr %i.bhf, align 8, !tbaa !59 ; 4 uses
  %i.bhh = load float, ptr %i.bhc, align 8, !tbaa !59 ; 4 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bfu, i64 100
  %i.bhj = load float, ptr %i.bhi, align 4, !tbaa !399
  %i.bhk = fneg float %i.bhe
  %i.bhl = fneg float %i.bhg
  %i.bhm = fneg float %i.bhh
  %wide.trip.count.i.i = zext nneg i32 %i.bfw to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ax ] ; 4 uses
  %.sroa.0.075.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.bkl, %bb.ax ]
  %.sroa.6.074.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.bkm, %bb.ax ]
  %.sroa.10.073.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.bkn, %bb.ax ]
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bgb, i64 %indvars.iv.i.i
  %i.bho = load float, ptr %i.bhn, align 4, !tbaa !59
  %i.bhp = fmul float %i.bfz, %i.bho
  %i.bhq = getelementptr inbounds nuw [12 x i8], ptr %i.bgc, i64 %indvars.iv.i.i ; 3 uses
  %i.bhr = load float, ptr %i.bhq, align 4, !tbaa !59
  %i.bhs = fsub float %i.bhr, %i.bgd              ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhq, i64 4
  %i.bhu = load float, ptr %i.bht, align 4, !tbaa !59
  %i.bhv = fsub float %i.bhu, %i.bgf              ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bhx = load float, ptr %i.bhw, align 4, !tbaa !59
  %i.bhy = fsub float %i.bhx, %i.bgh              ; 2 uses
  %i.bhz = getelementptr inbounds nuw [12 x i8], ptr %i.bgk, i64 %indvars.iv.i.i ; 3 uses
  %i.bia = load float, ptr %i.bhz, align 4, !tbaa !59 ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhz, i64 4
  %i.bic = load float, ptr %i.bib, align 4, !tbaa !59 ; 3 uses
  %i.bid = fmul float %i.bgn, %i.bic
  %i.bie = call float @llvm.fmuladd.f32(float %i.bgl, float %i.bia, float %i.bid)
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bhz, i64 8
  %i.big = load float, ptr %i.bif, align 4, !tbaa !59 ; 3 uses
  %i.bih = call float @llvm.fmuladd.f32(float %i.bgp, float %i.big, float %i.bie) ; 2 uses
  %i.bii = fmul float %i.bgt, %i.bic
  %i.bij = call float @llvm.fmuladd.f32(float %i.bgr, float %i.bia, float %i.bii)
  %i.bik = call float @llvm.fmuladd.f32(float %i.bgv, float %i.big, float %i.bij) ; 2 uses
  %i.bil = fmul float %i.bgz, %i.bic
  %i.bim = call float @llvm.fmuladd.f32(float %i.bgx, float %i.bia, float %i.bil)
  %i.bin = call float @llvm.fmuladd.f32(float %i.bhb, float %i.big, float %i.bim) ; 2 uses
  %i.bio = fneg float %i.bhv
  %i.bip = fmul float %i.bhg, %i.bio
  %i.biq = call float @llvm.fmuladd.f32(float %i.bhe, float %i.bhy, float %i.bip) ; 3 uses
  %i.bir = fneg float %i.bhy
  %i.bis = fmul float %i.bhh, %i.bir
  %i.bit = call float @llvm.fmuladd.f32(float %i.bhg, float %i.bhs, float %i.bis) ; 3 uses
  %i.biu = fneg float %i.bhs
  %i.biv = fmul float %i.bhe, %i.biu
  %i.biw = call float @llvm.fmuladd.f32(float %i.bhh, float %i.bhv, float %i.biv) ; 3 uses
  %i.bix = fmul float %i.bit, %i.bit
  %i.biy = call float @llvm.fmuladd.f32(float %i.biq, float %i.biq, float %i.bix)
  %i.biz = call noundef float @llvm.fmuladd.f32(float %i.biw, float %i.biw, float %i.biy) ; 2 uses
  %i.bja = fadd float %i.bhj, %i.biz
  %sqrt.i.i190 = call float @llvm.sqrt.f32(float %i.biz)
  %i.bjb = insertelement <2 x float> poison, float %i.bja, i64 0
  %i.bjc = insertelement <2 x float> %i.bjb, float %sqrt.i.i190, i64 1
  %i.bjd = fdiv <2 x float> splat (float 1.000000e+00), %i.bjc ; 4 uses
  %i.bje = extractelement <2 x float> %i.bjd, i64 1 ; 7 uses
  %i.bjf = extractelement <2 x float> %i.bjd, i64 0
  %i.bjg = fmul float %i.biq, %i.bje              ; 2 uses
  %i.bjh = fmul float %i.bit, %i.bje              ; 2 uses
  %i.bji = fmul float %i.biw, %i.bje              ; 2 uses
  %i.bjj = fmul float %i.bik, %i.bjh
  %i.bjk = call float @llvm.fmuladd.f32(float %i.bjg, float %i.bih, float %i.bjj)
  %i.bjl = call noundef float @llvm.fmuladd.f32(float %i.bji, float %i.bin, float %i.bjk) ; 2 uses
  %i.bjm = fdiv float %i.bjf, %i.bje              ; 3 uses
  %i.bjn = fmul float %i.bih, %i.bjm
  %i.bjo = fmul float %i.bik, %i.bjm
  %i.bjp = fmul float %i.bin, %i.bjm
  %foldExtExtBinop684 = fmul <2 x float> %i.bjd, %i.bjd
  %i.bjq = extractelement <2 x float> %foldExtExtBinop684, i64 0
  %i.bjr = fmul float %i.bje, %i.bje
  %i.bjs = fmul float %i.bje, %i.bjr
  %i.bjt = fdiv float %i.bjq, %i.bjs
  %i.bju = fmul float %i.bjt, %i.bjl              ; 3 uses
  %i.bjv = fmul float %i.bjg, %i.bju
  %i.bjw = fmul float %i.bjh, %i.bju
  %i.bjx = fmul float %i.bji, %i.bju
  %i.bjy = fsub float %i.bjn, %i.bjv              ; 2 uses
  %i.bjz = fsub float %i.bjo, %i.bjw              ; 2 uses
  %i.bka = fsub float %i.bjp, %i.bjx              ; 2 uses
  %i.bkb = fmul float %i.bka, %i.bhk
  %i.bkc = call float @llvm.fmuladd.f32(float %i.bjz, float %i.bhg, float %i.bkb)
  %i.bkd = fmul float %i.bjy, %i.bhl
  %i.bke = call float @llvm.fmuladd.f32(float %i.bka, float %i.bhh, float %i.bkd)
  %i.bkf = fmul float %i.bjz, %i.bhm
  %i.bkg = call float @llvm.fmuladd.f32(float %i.bjy, float %i.bhe, float %i.bkf)
  %i.bkh = fmul float %i.bhp, %i.bjl              ; 3 uses
  %i.bki = fmul float %i.bkh, %i.bkc
  %i.bkj = fmul float %i.bkh, %i.bke
  %i.bkk = fmul float %i.bkh, %i.bkg
  %i.bkl = fadd float %.sroa.0.075.i.i, %i.bki    ; 2 uses
  %i.bkm = fadd float %.sroa.6.074.i.i, %i.bkj    ; 2 uses
  %i.bkn = fadd float %.sroa.10.073.i.i, %i.bkk   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i, label %bb.ax, !llvm.loop !506

_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i: ; preds = %bb.ax, %bb.aw
  %.sroa.10.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.aw ], [ %i.bkn, %bb.ax ]
  %.sroa.6.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.aw ], [ %i.bkm, %bb.ax ]
  %.sroa.0.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.aw ], [ %i.bkl, %bb.ax ]
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bfu, i64 64
  %i.bkp = load float, ptr %i.bko, align 8, !tbaa !398
  %i.bkq = fmul float %i.bfy, %i.bkp              ; 3 uses
  %i.bkr = fmul float %.sroa.0.0.lcssa.i.i, %i.bkq
  %i.bks = fmul float %.sroa.6.0.lcssa.i.i, %i.bkq
  %i.bkt = fmul float %.sroa.10.0.lcssa.i.i, %i.bkq
  br label %bb.ay

bb.ay:                                            ; preds = %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i, %._crit_edge213.i
  %.pre-phi220.i = phi float [ %.pre219.i, %._crit_edge213.i ], [ %i.bfz, %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i ]
  %.sroa.8.0.i = phi float [ 0.000000e+00, %._crit_edge213.i ], [ %i.bkt, %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i ]
  %.sroa.5105.0.i = phi float [ 0.000000e+00, %._crit_edge213.i ], [ %i.bks, %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i ]
  %.sroa.0104.0.i = phi float [ 0.000000e+00, %._crit_edge213.i ], [ %i.bkr, %_ZL32radial_motion2_precalc_inner_sumPK13gmx_enfrotgrpPf.exit.i ]
  %i.bku = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 56 ; 2 uses
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !31
  %i.bkw = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bkv) ; 2 uses
  %i.bkx = extractvalue { ptr, ptr } %i.bkw, 0    ; 2 uses
  %i.bky = extractvalue { ptr, ptr } %i.bkw, 1
  %i.bkz = load ptr, ptr %i.bku, align 8, !tbaa !31
  %i.bla = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bkz)
  %i.blb = extractvalue { ptr, ptr } %i.bla, 0    ; 2 uses
  %i.blc = ptrtoint ptr %i.bky to i64
  %i.bld = ptrtoint ptr %i.bkx to i64
  %i.ble = sub i64 %i.blc, %i.bld
  %i.blf = ashr exact i64 %i.ble, 2               ; 2 uses
  %i.blg = icmp sgt i64 %i.blf, 0
  %.pre217.i = load ptr, ptr %.sroa.0198.0243, align 8, !tbaa !77 ; 5 uses
  br i1 %i.blg, label %.lr.ph201.i, label %_ZL17do_radial_motion2P13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPA3_Kfbb.exit

.lr.ph201.i:                                      ; preds = %bb.ay
  %i.blh = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 248
  %i.bli = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 240
  %i.blj = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 232
  %i.blk = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 200
  %i.bll = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 152
  %i.blm = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 120 ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 16
  %i.blo = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 20
  %i.blp = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 24
  %i.blq = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 28
  %i.blr = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 32
  %i.bls = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 36
  %i.blt = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 40
  %i.blu = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 44
  %i.blv = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 48
  %i.blw = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 96 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 100 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 104 ; 2 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 64 ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 68 ; 2 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 72 ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %.pre217.i, i64 100
  %i.bmd = getelementptr i8, ptr %.pre217.i, i64 64 ; 7 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 80
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !57
  %i.bmg = getelementptr inbounds nuw i8, ptr %.pre217.i, i64 84
  %i.bmh = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 368
  %scevgep555 = getelementptr i8, ptr %.pre217.i, i64 68 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i174:                        ; preds = %bb.bf
  %i.bmi = fpext float %i.bsr to double
  br label %_ZL17do_radial_motion2P13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPA3_Kfbb.exit

bb.az:                                            ; preds = %bb.bf, %.lr.ph201.i
  %.0200.i = phi float [ 0.000000e+00, %.lr.ph201.i ], [ %i.bsr, %bb.bf ]
  %.0100198.i = phi i64 [ 0, %.lr.ph201.i ], [ %i.cca, %bb.bf ] ; 8 uses
  %.sroa.18.0197.i = phi float [ 0.000000e+00, %.lr.ph201.i ], [ %.sroa.18.1.i, %bb.bf ]
  %.sroa.10.0196.i = phi float [ 0.000000e+00, %.lr.ph201.i ], [ %.sroa.10.1.i, %bb.bf ]
  %.sroa.0155.0195.i = phi float [ 0.000000e+00, %.lr.ph201.i ], [ %.sroa.0155.1.i, %bb.bf ]
  br i1 %i.bfi, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %.0100198.i
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !58
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.blb, i64 %.0100198.i
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !58
  %i.bmn = load ptr, ptr %i.blk, align 8, !tbaa !338
  %i.bmo = sext i32 %i.bmm to i64                 ; 3 uses
  %i.bmp = getelementptr inbounds [4 x i8], ptr %i.bmn, i64 %i.bmo
  %i.bmq = load float, ptr %i.bmp, align 4, !tbaa !59
  %i.bmr = sext i32 %i.bmk to i64
  %i.bms = getelementptr inbounds [12 x i8], ptr %4, i64 %i.bmr ; 3 uses
  %i.bmt = load float, ptr %i.bms, align 4, !tbaa !59 ; 2 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 4
  %i.bmv = load float, ptr %i.bmu, align 4, !tbaa !59 ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bms, i64 8
  %i.bmx = load float, ptr %i.bmw, align 4, !tbaa !59
  %i.bmy = load ptr, ptr %i.bll, align 8, !tbaa !443
  %i.bmz = getelementptr inbounds [12 x i8], ptr %i.bmy, i64 %i.bmo ; 3 uses
  %i.bna = load i32, ptr %i.bmz, align 4, !tbaa !58
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmz, i64 4
  %i.bnc = load i32, ptr %i.bnb, align 4, !tbaa !58 ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bmz, i64 8
  %i.bne = load i32, ptr %i.bnd, align 4, !tbaa !58 ; 2 uses
  %i.bnf = load float, ptr %i.jv, align 4, !tbaa !59 ; 2 uses
  %i.bng = fcmp une float %i.bnf, 0.000000e+00
  %.pre.i.i184 = load float, ptr %.phi.trans.insert.i.i172, align 4, !tbaa !59 ; 2 uses
  %i.bnh = fcmp une float %.pre.i.i184, 0.000000e+00
  %or.cond.i.i185 = select i1 %i.bng, i1 true, i1 %i.bnh
  %.pre216.i = load float, ptr %i.jw, align 4, !tbaa !59 ; 2 uses
  %i.bni = fcmp une float %.pre216.i, 0.000000e+00
  %or.cond228.i186 = select i1 %or.cond.i.i185, i1 true, i1 %i.bni
  %i.bnj = sitofp i32 %i.bna to float             ; 2 uses
  %i.bnk = load float, ptr %3, align 4, !tbaa !59 ; 2 uses
  br i1 %or.cond228.i186, label %._crit_edge.i.i189, label %bb.bb

._crit_edge.i.i189:                               ; preds = %bb.ba
  %i.bnl = sitofp i32 %i.bnc to float             ; 2 uses
  %i.bnm = fmul float %i.bnf, %i.bnl
  %i.bnn = call float @llvm.fmuladd.f32(float %i.bnj, float %i.bnk, float %i.bnm)
  %i.bno = sitofp i32 %i.bne to float             ; 3 uses
  %i.bnp = call float @llvm.fmuladd.f32(float %i.bno, float %.pre.i.i184, float %i.bnn)
  %i.bnq = fadd float %i.bmt, %i.bnp
  %i.bnr = load float, ptr %i.jx, align 4, !tbaa !59
  %i.bns = fmul float %.pre216.i, %i.bno
  %i.bnt = call float @llvm.fmuladd.f32(float %i.bnl, float %i.bnr, float %i.bns)
  %i.bnu = fadd float %i.bmv, %i.bnt
  br label %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187

bb.bb:                                            ; preds = %bb.ba
  %i.bnv = call float @llvm.fmuladd.f32(float %i.bnj, float %i.bnk, float %i.bmt)
  %i.bnw = sitofp i32 %i.bnc to float
  %i.bnx = load float, ptr %i.jx, align 4, !tbaa !59
  %i.bny = call float @llvm.fmuladd.f32(float %i.bnw, float %i.bnx, float %i.bmv)
  %i.bnz = sitofp i32 %i.bne to float
  br label %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187

_ZL18shift_single_coordPA3_KfPfPKi.exit.i187:     ; preds = %bb.bb, %._crit_edge.i.i189
  %.sroa.0180.1.i = phi float [ %i.bnq, %._crit_edge.i.i189 ], [ %i.bnv, %bb.bb ]
  %.sroa.10184.1.i = phi float [ %i.bnu, %._crit_edge.i.i189 ], [ %i.bny, %bb.bb ]
  %.sink30.i.i188 = phi float [ %i.bno, %._crit_edge.i.i189 ], [ %i.bnz, %bb.bb ]
  %i.boa = load float, ptr %i.jy, align 4, !tbaa !59
  %i.bob = call float @llvm.fmuladd.f32(float %.sink30.i.i188, float %i.boa, float %i.bmx)
  %i.boc = load ptr, ptr %i.blm, align 8, !tbaa !27
  %i.bod = getelementptr inbounds nuw [12 x i8], ptr %i.boc, i64 %i.bmo ; 3 uses
  %i.boe = load float, ptr %i.bod, align 4, !tbaa !59 ; 4 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bod, i64 4
  %i.bog = load float, ptr %i.bof, align 4, !tbaa !59 ; 4 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bod, i64 8
  %i.boi = load float, ptr %i.boh, align 4, !tbaa !59 ; 4 uses
  %i.boj = load float, ptr %i.bln, align 8, !tbaa !59
  %i.bok = load float, ptr %i.blo, align 4, !tbaa !59
  %i.bol = fmul float %i.bog, %i.bok
  %i.bom = call float @llvm.fmuladd.f32(float %i.boj, float %i.boe, float %i.bol)
  %i.bon = load float, ptr %i.blp, align 8, !tbaa !59
  %i.boo = call float @llvm.fmuladd.f32(float %i.bon, float %i.boi, float %i.bom)
  %i.bop = load float, ptr %i.blq, align 4, !tbaa !59
  %i.boq = load float, ptr %i.blr, align 8, !tbaa !59
  %i.bor = fmul float %i.bog, %i.boq
  %i.bos = call float @llvm.fmuladd.f32(float %i.bop, float %i.boe, float %i.bor)
  %i.bot = load float, ptr %i.bls, align 4, !tbaa !59
  %i.bou = call float @llvm.fmuladd.f32(float %i.bot, float %i.boi, float %i.bos)
  %i.bov = load float, ptr %i.blt, align 8, !tbaa !59
  %i.bow = load float, ptr %i.blu, align 4, !tbaa !59
  %i.box = fmul float %i.bog, %i.bow
  %i.boy = call float @llvm.fmuladd.f32(float %i.bov, float %i.boe, float %i.box)
  %i.boz = load float, ptr %i.blv, align 8, !tbaa !59
  %i.bpa = call float @llvm.fmuladd.f32(float %i.boz, float %i.boi, float %i.boy)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.bpb = load ptr, ptr %i.blh, align 8, !tbaa !445
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %.0100198.i
  %i.bpd = load float, ptr %i.bpc, align 4, !tbaa !59
  %i.bpe = load ptr, ptr %i.bli, align 8, !tbaa !450
  %i.bpf = getelementptr inbounds nuw [12 x i8], ptr %i.bpe, i64 %.0100198.i ; 3 uses
  %i.bpg = load float, ptr %i.bpf, align 4, !tbaa !59
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpf, i64 4
  %i.bpi = load float, ptr %i.bph, align 4, !tbaa !59
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8
  %i.bpk = load float, ptr %i.bpj, align 4, !tbaa !59
  %i.bpl = load ptr, ptr %i.blj, align 8, !tbaa !448
  %i.bpm = getelementptr inbounds nuw [12 x i8], ptr %i.bpl, i64 %.0100198.i ; 3 uses
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !59
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpm, i64 4
  %i.bpp = load float, ptr %i.bpo, align 4, !tbaa !59
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8
  %i.bpr = load float, ptr %i.bpq, align 4, !tbaa !59
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187
  %.sroa.0125.0.i = phi float [ %i.boo, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpn, %bb.bc ] ; 5 uses
  %.sroa.8129.0.i = phi float [ %i.bou, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpp, %bb.bc ] ; 5 uses
  %.sroa.14.0.i = phi float [ %i.bpa, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpr, %bb.bc ] ; 5 uses
  %.sroa.0155.1.i = phi float [ %i.boe, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %.sroa.0155.0195.i, %bb.bc ] ; 5 uses
  %.sroa.10.1.i = phi float [ %i.bog, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %.sroa.10.0196.i, %bb.bc ] ; 5 uses
  %.sroa.18.1.i = phi float [ %i.boi, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %.sroa.18.0197.i, %bb.bc ] ; 5 uses
  %.sroa.0180.0.i = phi float [ %.sroa.0180.1.i, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpg, %bb.bc ] ; 2 uses
  %.sroa.10184.0.i = phi float [ %.sroa.10184.1.i, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpi, %bb.bc ] ; 2 uses
  %.sroa.18188.0.i = phi float [ %i.bob, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpk, %bb.bc ] ; 2 uses
  %.099.i = phi float [ %i.bmq, %_ZL18shift_single_coordPA3_KfPfPKi.exit.i187 ], [ %i.bpd, %bb.bc ] ; 4 uses
  %i.bps = fmul float %.pre-phi220.i, %.099.i     ; 3 uses
  %i.bpt = load float, ptr %i.blw, align 8, !tbaa !59
  %i.bpu = fsub float %.sroa.0180.0.i, %i.bpt     ; 4 uses
  %i.bpv = load float, ptr %i.blx, align 4, !tbaa !59
  %i.bpw = fsub float %.sroa.10184.0.i, %i.bpv    ; 4 uses
  %i.bpx = load float, ptr %i.bly, align 8, !tbaa !59
  %i.bpy = fsub float %.sroa.18188.0.i, %i.bpx    ; 4 uses
  %i.bpz = load float, ptr %i.bma, align 4, !tbaa !59 ; 4 uses
  %i.bqa = load float, ptr %i.bmb, align 8, !tbaa !59 ; 4 uses
  %i.bqb = fneg float %i.bpw
  %i.bqc = fmul float %i.bqa, %i.bqb
  %i.bqd = call float @llvm.fmuladd.f32(float %i.bpz, float %i.bpy, float %i.bqc) ; 8 uses
  %i.bqe = load float, ptr %i.blz, align 8, !tbaa !59 ; 4 uses
  %i.bqf = fneg float %i.bpy
  %i.bqg = fmul float %i.bqe, %i.bqf
  %i.bqh = call float @llvm.fmuladd.f32(float %i.bqa, float %i.bpu, float %i.bqg) ; 8 uses
  %i.bqi = fneg float %i.bpu
  %i.bqj = fmul float %i.bpz, %i.bqi
  %i.bqk = call float @llvm.fmuladd.f32(float %i.bqe, float %i.bpw, float %i.bqj) ; 8 uses
  %i.bql = fmul float %i.bqh, %i.bqh
  %i.bqm = call float @llvm.fmuladd.f32(float %i.bqd, float %i.bqd, float %i.bql)
  %i.bqn = call noundef float @llvm.fmuladd.f32(float %i.bqk, float %i.bqk, float %i.bqm) ; 2 uses
  %i.bqo = load float, ptr %i.bmc, align 4, !tbaa !399
  %i.bqp = fadd float %i.bqo, %i.bqn
  %i.bqq = fdiv float 1.000000e+00, %i.bqp        ; 5 uses
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bqn)
  %i.bqr = fdiv float 1.000000e+00, %sqrt.i       ; 7 uses
  %i.bqs = fmul float %i.bqd, %i.bqr              ; 2 uses
  %i.bqt = fmul float %i.bqh, %i.bqr              ; 2 uses
  %i.bqu = fmul float %i.bqk, %i.bqr              ; 2 uses
  %i.bqv = fmul float %.sroa.8129.0.i, %i.bqh
  %i.bqw = call float @llvm.fmuladd.f32(float %i.bqd, float %.sroa.0125.0.i, float %i.bqv)
  %i.bqx = call noundef float @llvm.fmuladd.f32(float %i.bqk, float %.sroa.14.0.i, float %i.bqw) ; 2 uses
  %i.bqy = fmul float %i.bqx, %i.bqx
  %i.bqz = fmul float %.sroa.8129.0.i, %i.bqt
  %i.bra = call float @llvm.fmuladd.f32(float %i.bqs, float %.sroa.0125.0.i, float %i.bqz)
  %i.brb = call noundef float @llvm.fmuladd.f32(float %i.bqu, float %.sroa.14.0.i, float %i.bra) ; 2 uses
  %i.brc = fdiv float %i.bqq, %i.bqr              ; 3 uses
  %i.brd = fmul float %.sroa.0125.0.i, %i.brc
  %i.bre = fmul float %.sroa.8129.0.i, %i.brc
  %i.brf = fmul float %.sroa.14.0.i, %i.brc
  %i.brg = fmul float %i.bqq, %i.bqq
  %i.brh = fmul float %i.bqr, %i.bqr
  %i.bri = fmul float %i.bqr, %i.brh
  %i.brj = fdiv float %i.brg, %i.bri
  %i.brk = fmul float %i.brj, %i.brb              ; 3 uses
  %i.brl = fmul float %i.bqs, %i.brk
  %i.brm = fmul float %i.bqt, %i.brk
  %i.brn = fmul float %i.bqu, %i.brk
  %i.bro = fsub float %i.brd, %i.brl              ; 2 uses
  %i.brp = fsub float %i.bre, %i.brm              ; 2 uses
  %i.brq = fsub float %i.brf, %i.brn              ; 2 uses
  %i.brr = fneg float %i.bpz
  %i.brs = fmul float %i.brq, %i.brr
  %i.brt = call float @llvm.fmuladd.f32(float %i.brp, float %i.bqa, float %i.brs)
  %i.bru = fneg float %i.bqa
  %i.brv = fmul float %i.bro, %i.bru
  %i.brw = call float @llvm.fmuladd.f32(float %i.brq, float %i.bqe, float %i.brv)
  %i.brx = fneg float %i.bqe
  %i.bry = fmul float %i.brp, %i.brx
  %i.brz = call float @llvm.fmuladd.f32(float %i.bro, float %i.bpz, float %i.bry)
  %i.bsa = load float, ptr %i.bmd, align 8, !tbaa !398
  %i.bsb = fneg float %i.bsa
  %i.bsc = fmul float %i.bps, %i.bsb
  %i.bsd = fmul float %i.bsc, %i.brb              ; 3 uses
  %i.bse = fmul float %i.bsd, %i.brt
  %i.bsf = fmul float %i.bsd, %i.brw
  %i.bsg = fmul float %i.bsd, %i.brz
  %i.bsh = fmul float %.sroa.0104.0.i, %.099.i
  %i.bsi = fmul float %.sroa.5105.0.i, %.099.i
  %i.bsj = fmul float %.sroa.8.0.i, %.099.i
  %i.bsk = getelementptr inbounds nuw [12 x i8], ptr %i.bmf, i64 %.0100198.i ; 4 uses
  %i.bsl = fadd float %i.bsh, %i.bse
  %i.bsm = fadd float %i.bsi, %i.bsf
  %i.bsn = fadd float %i.bsj, %i.bsg
  store float %i.bsl, ptr %i.bsk, align 4, !tbaa !59
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsk, i64 4 ; 2 uses
  store float %i.bsm, ptr %i.bso, align 4, !tbaa !59
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8 ; 2 uses
  store float %i.bsn, ptr %i.bsp, align 4, !tbaa !59
  %i.bsq = fmul float %i.bps, %i.bqq
  %i.bsr = call float @llvm.fmuladd.f32(float %i.bsq, float %i.bqy, float %.0200.i) ; 2 uses
  br i1 %i.bfm, label %.preheader.i178, label %.loopexit.i173

.preheader.i178:                                  ; preds = %bb.bd
  %i.bss = load i32, ptr %i.bmg, align 4, !tbaa !87 ; 5 uses
  %i.bst = icmp sgt i32 %i.bss, 0
  br i1 %i.bst, label %.lr.ph.i179, label %.loopexit.i173

.lr.ph.i179:                                      ; preds = %.preheader.i178
  %i.bsu = fpext float %i.bps to double           ; 4 uses
  %i.bsv = fpext float %i.bqq to double           ; 4 uses
  %i.bsw = load ptr, ptr %i.bmh, align 8, !tbaa !88 ; 3 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 8
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !89 ; 11 uses
  br i1 %i.bfi, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i179
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsw, i64 16
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !452 ; 4 uses
  %wide.trip.count210.i = zext nneg i32 %i.bss to i64 ; 5 uses
  %min.iters.check564 = icmp ult i32 %i.bss, 8
  br i1 %min.iters.check564, label %scalar.ph563.preheader, label %vector.memcheck552

vector.memcheck552:                               ; preds = %.lr.ph.split.us.i
  %i.btb = shl nuw nsw i64 %wide.trip.count210.i, 2
  %scevgep553.a = getelementptr i8, ptr %i.bsy, i64 %i.btb ; 2 uses
  %i.btc = mul nuw nsw i64 %wide.trip.count210.i, 36
  %scevgep554 = getelementptr i8, ptr %i.bta, i64 %i.btc
  %bound0556 = icmp ult ptr %i.bsy, %scevgep554
  %bound1557 = icmp ult ptr %i.bta, %scevgep553.a
  %found.conflict558 = and i1 %bound0556, %bound1557
  %bound0559 = icmp ult ptr %i.bsy, %scevgep555
  %bound1560 = icmp ult ptr %i.bmd, %scevgep553.a
  %found.conflict561 = and i1 %bound0559, %bound1560
  %conflict.rdx562 = or i1 %found.conflict558, %found.conflict561
  br i1 %conflict.rdx562, label %scalar.ph563.preheader, label %vector.ph565

vector.ph565:                                     ; preds = %vector.memcheck552
  %n.vec566 = and i64 %wide.trip.count210.i, 2147483640 ; 3 uses
  %broadcast.splatinsert567 = insertelement <8 x double> poison, double %i.bsv, i64 0
  %broadcast.splat568 = shufflevector <8 x double> %broadcast.splatinsert567, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <8 x double> poison, double %i.bsu, i64 0
  %broadcast.splat570 = shufflevector <8 x double> %broadcast.splatinsert569, <8 x double> poison, <8 x i32> zeroinitializer
  %i.btd = load float, ptr %i.bmd, align 8, !tbaa !398, !alias.scope !507
  %broadcast.splatinsert571 = insertelement <8 x float> poison, float %i.btd, i64 0
  %broadcast.splat572 = shufflevector <8 x float> %broadcast.splatinsert571, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bte = fpext <8 x float> %broadcast.splat572 to <8 x double>
  %i.btf = fmul <8 x double> %i.bte, splat (double 5.000000e-01)
  %i.btg = fmul <8 x double> %i.btf, %broadcast.splat570
  %i.bth = fmul <8 x double> %i.btg, %broadcast.splat568
  %broadcast.splatinsert573 = insertelement <8 x float> poison, float %.sroa.10.1.i, i64 0
  %broadcast.splat574 = shufflevector <8 x float> %broadcast.splatinsert573, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert575 = insertelement <8 x float> poison, float %.sroa.0155.1.i, i64 0
  %broadcast.splat576 = shufflevector <8 x float> %broadcast.splatinsert575, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert577 = insertelement <8 x float> poison, float %.sroa.18.1.i, i64 0
  %broadcast.splat578 = shufflevector <8 x float> %broadcast.splatinsert577, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert579 = insertelement <8 x float> poison, float %i.bqh, i64 0
  %broadcast.splat580 = shufflevector <8 x float> %broadcast.splatinsert579, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <8 x float> poison, float %i.bqd, i64 0
  %broadcast.splat582 = shufflevector <8 x float> %broadcast.splatinsert581, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert583 = insertelement <8 x float> poison, float %i.bqk, i64 0
  %broadcast.splat584 = shufflevector <8 x float> %broadcast.splatinsert583, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body585

vector.body585:                                   ; preds = %vector.body585, %vector.ph565
  %index586 = phi i64 [ 0, %vector.ph565 ], [ %index.next607, %vector.body585 ] ; 2 uses
  %vec.ind587 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph565 ], [ %vec.ind.next608, %vector.body585 ] ; 2 uses
  %wide.gep588 = getelementptr inbounds nuw [36 x i8], ptr %i.bta, <8 x i64> %vec.ind587 ; 9 uses
  %wide.masked.gather589 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep588, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %wide.gep590 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 4
  %wide.masked.gather591 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep590, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %i.bti = fmul <8 x float> %broadcast.splat574, %wide.masked.gather591
  %i.btj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather589, <8 x float> %broadcast.splat576, <8 x float> %i.bti)
  %wide.gep592 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 8
  %wide.masked.gather593 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep592, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %i.btk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather593, <8 x float> %broadcast.splat578, <8 x float> %i.btj)
  %wide.gep594 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 12
  %wide.masked.gather595 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep594, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %wide.gep596 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 16
  %wide.masked.gather597 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep596, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %i.btl = fmul <8 x float> %broadcast.splat574, %wide.masked.gather597
  %i.btm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather595, <8 x float> %broadcast.splat576, <8 x float> %i.btl)
  %wide.gep598 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 20
  %wide.masked.gather599 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep598, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %i.btn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather599, <8 x float> %broadcast.splat578, <8 x float> %i.btm)
  %wide.gep600 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 24
  %wide.masked.gather601 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep600, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %wide.gep602 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 28
  %wide.masked.gather603 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep602, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %i.bto = fmul <8 x float> %broadcast.splat574, %wide.masked.gather603
  %i.btp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather601, <8 x float> %broadcast.splat576, <8 x float> %i.bto)
  %wide.gep604 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep588, i64 32
  %wide.masked.gather605 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep604, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !59, !alias.scope !510
  %i.btq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather605, <8 x float> %broadcast.splat578, <8 x float> %i.btp)
  %i.btr = fmul <8 x float> %broadcast.splat580, %i.btn
  %i.bts = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat582, <8 x float> %i.btk, <8 x float> %i.btr)
  %i.btt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat584, <8 x float> %i.btq, <8 x float> %i.bts)
  %i.btu = fpext <8 x float> %i.btt to <8 x double> ; 2 uses
  %i.btv = fmul <8 x double> %i.bth, %i.btu
  %i.btw = getelementptr inbounds nuw [4 x i8], ptr %i.bsy, i64 %index586 ; 2 uses
  %wide.load606 = load <8 x float>, ptr %i.btw, align 4, !tbaa !59, !alias.scope !512, !noalias !514
  %i.btx = fpext <8 x float> %wide.load606 to <8 x double>
  %i.bty = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.btv, <8 x double> %i.btu, <8 x double> %i.btx)
  %i.btz = fptrunc <8 x double> %i.bty to <8 x float>
  store <8 x float> %i.btz, ptr %i.btw, align 4, !tbaa !59, !alias.scope !512, !noalias !514
  %index.next607 = add nuw i64 %index586, 8       ; 2 uses
  %vec.ind.next608 = add nuw nsw <8 x i64> %vec.ind587, splat (i64 8)
  %i.bua = icmp eq i64 %index.next607, %n.vec566
  br i1 %i.bua, label %middle.block609, label %vector.body585, !llvm.loop !515

middle.block609:                                  ; preds = %vector.body585
  %cmp.n610 = icmp eq i64 %n.vec566, %wide.trip.count210.i
  br i1 %cmp.n610, label %.loopexit.i173, label %scalar.ph563.preheader

scalar.ph563.preheader:                           ; preds = %vector.memcheck552, %.lr.ph.split.us.i, %middle.block609
  %indvars.iv207.i.ph = phi i64 [ 0, %vector.memcheck552 ], [ 0, %.lr.ph.split.us.i ], [ %n.vec566, %middle.block609 ]
  br label %scalar.ph563

scalar.ph563:                                     ; preds = %scalar.ph563.preheader, %scalar.ph563
  %indvars.iv207.i = phi i64 [ %indvars.iv.next208.i, %scalar.ph563 ], [ %indvars.iv207.i.ph, %scalar.ph563.preheader ] ; 3 uses
end_hunk_0
