Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wmavoice?download=true
inline.NumInlined: 94
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 35
begin_hunk_0_@synth_superframe:bb.a

.lr.ph63.i146.preheader:                          ; preds = %.lr.ph58.i142
  %xtraiter522.a = and i64 %i.ahb, 1
  %i.aii = icmp eq i64 %i.ahc, 0
  br i1 %i.aii, label %.lr.ph63.i146.epil.preheader, label %.lr.ph63.i146.preheader.new

.lr.ph63.i146.preheader.new:                      ; preds = %.lr.ph63.i146.preheader
  %unroll_iter525 = and i64 %i.ahb, -2
  br label %.lr.ph63.i146

.lr.ph63.i146:                                    ; preds = %bb.au, %.lr.ph63.i146.preheader.new
  %indvars.iv71.i147 = phi i64 [ 1, %.lr.ph63.i146.preheader.new ], [ %indvars.iv.next72.i151.1, %bb.au ] ; 4 uses
  %niter526 = phi i64 [ 0, %.lr.ph63.i146.preheader.new ], [ %niter526.next.1, %bb.au ]
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv71.i147
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !46 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph63.i146
  %indvars.iv73.i148 = phi i64 [ %indvars.iv71.i147, %.lr.ph63.i146 ], [ %indvars.iv.next74.i149, %bb.ar ] ; 4 uses
  %indvars.iv.next74.i149 = add nsw i64 %indvars.iv73.i148, -1 ; 2 uses
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv.next74.i149
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !46 ; 2 uses
  %i.ain = fcmp nsz ugt double %i.aim, %i.aik
  br i1 %i.ain, label %bb.ar, label %.lr.ph63.i146.1

bb.ar:                                            ; preds = %bb.aq
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv73.i148
  store double %i.aim, ptr %i.aio, align 8, !tbaa !46
  %i.aip = icmp sgt i64 %indvars.iv73.i148, 1
  br i1 %i.aip, label %bb.aq, label %.lr.ph63.i146.1, !llvm.loop !94

.lr.ph63.i146.1:                                  ; preds = %bb.ar, %bb.aq
  %.0.in.lcssa.i150 = phi i64 [ %indvars.iv73.i148, %bb.aq ], [ 0, %bb.ar ]
  %i.aiq = getelementptr inbounds [8 x i8], ptr %i.agx, i64 %.0.in.lcssa.i150
  store double %i.aik, ptr %i.aiq, align 8, !tbaa !46
  %indvars.iv.next72.i151 = add nuw nsw i64 %indvars.iv71.i147, 1 ; 2 uses
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv.next72.i151
  %i.ais = load double, ptr %i.air, align 8, !tbaa !46 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph63.i146.1
  %indvars.iv73.i148.1 = phi i64 [ %indvars.iv.next72.i151, %.lr.ph63.i146.1 ], [ %indvars.iv.next74.i149.1, %bb.at ] ; 4 uses
  %indvars.iv.next74.i149.1 = add nsw i64 %indvars.iv73.i148.1, -1 ; 2 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv.next74.i149.1
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !46 ; 2 uses
  %i.aiv = fcmp nsz ugt double %i.aiu, %i.ais
  br i1 %i.aiv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv73.i148.1
  store double %i.aiu, ptr %i.aiw, align 8, !tbaa !46
  %i.aix = icmp sgt i64 %indvars.iv73.i148.1, 1
  br i1 %i.aix, label %bb.as, label %bb.au, !llvm.loop !94

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.in.lcssa.i150.1 = phi i64 [ %indvars.iv73.i148.1, %bb.as ], [ 0, %bb.at ]
  %i.aiy = getelementptr inbounds [8 x i8], ptr %i.agx, i64 %.0.in.lcssa.i150.1
  store double %i.ais, ptr %i.aiy, align 8, !tbaa !46
  %indvars.iv.next72.i151.1 = add nuw nsw i64 %indvars.iv71.i147, 2 ; 2 uses
  %niter526.next.1 = add i64 %niter526, 2         ; 2 uses
  %niter526.ncmp.1 = icmp eq i64 %niter526.next.1, %unroll_iter525
  br i1 %niter526.ncmp.1, label %stabilize_lsps.exit153.loopexit.unr-lcssa, label %.lr.ph63.i146, !llvm.loop !95

stabilize_lsps.exit153.loopexit.unr-lcssa:        ; preds = %bb.au
  %lcmp.mod523.not.a = icmp eq i64 %xtraiter522.a, 0
  br i1 %lcmp.mod523.not.a, label %stabilize_lsps.exit153, label %.lr.ph63.i146.epil.preheader

.lr.ph63.i146.epil.preheader:                     ; preds = %stabilize_lsps.exit153.loopexit.unr-lcssa, %.lr.ph63.i146.preheader
  %indvars.iv71.i147.epil.init = phi i64 [ 1, %.lr.ph63.i146.preheader ], [ %indvars.iv.next72.i151.1, %stabilize_lsps.exit153.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod524 = trunc i64 %i.ahb to i1
  call void @llvm.assume(i1 %lcmp.mod524)
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv71.i147.epil.init
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !46 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph63.i146.epil.preheader
  %indvars.iv73.i148.epil = phi i64 [ %indvars.iv71.i147.epil.init, %.lr.ph63.i146.epil.preheader ], [ %indvars.iv.next74.i149.epil, %bb.aw ] ; 4 uses
  %indvars.iv.next74.i149.epil = add nsw i64 %indvars.iv73.i148.epil, -1 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv.next74.i149.epil
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !46 ; 2 uses
  %i.ajd = fcmp nsz ugt double %i.ajc, %i.aja
  br i1 %i.ajd, label %bb.aw, label %stabilize_lsps.exit153.loopexit.epilog-lcssa

bb.aw:                                            ; preds = %bb.av
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv73.i148.epil
  store double %i.ajc, ptr %i.aje, align 8, !tbaa !46
  %i.ajf = icmp sgt i64 %indvars.iv73.i148.epil, 1
  br i1 %i.ajf, label %bb.av, label %stabilize_lsps.exit153.loopexit.epilog-lcssa, !llvm.loop !94

stabilize_lsps.exit153.loopexit.epilog-lcssa:     ; preds = %bb.aw, %bb.av
  %.0.in.lcssa.i150.epil = phi i64 [ %indvars.iv73.i148.epil, %bb.av ], [ 0, %bb.aw ]
  %i.ajg = getelementptr inbounds [8 x i8], ptr %i.agx, i64 %.0.in.lcssa.i150.epil
  store double %i.aja, ptr %i.ajg, align 8, !tbaa !46
  br label %stabilize_lsps.exit153

stabilize_lsps.exit153:                           ; preds = %bb.ap, %stabilize_lsps.exit153.loopexit.epilog-lcssa, %stabilize_lsps.exit153.loopexit.unr-lcssa, %._crit_edge.i132, %bb.ak
  %i.ajh = phi i32 [ %i.agf, %stabilize_lsps.exit153.loopexit.epilog-lcssa ], [ %.pre268, %bb.ak ], [ %i.agf, %._crit_edge.i132 ], [ %i.agf, %stabilize_lsps.exit153.loopexit.unr-lcssa ], [ %i.agf, %bb.ap ]
  %i.aji = mul nuw nsw i64 %indvars.iv260, 160    ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %i.aji ; 3 uses
  %i.ajk = getelementptr [128 x i8], ptr %i.j, i64 %indvars.iv260 ; 11 uses
  %i.ajl = icmp eq i64 %indvars.iv260, 0
  %i.ajm = getelementptr i8, ptr %i.ajk, i64 -128
  %i.ajn = select i1 %i.ajl, ptr %i.afn, ptr %i.ajm ; 9 uses
  %i.ajo = ptrtoaddr ptr %i.ajn to i64            ; 2 uses
  %i.ajp = load i32, ptr %i.ae, align 8, !tbaa !57
  %i.ajq = trunc nuw nsw i64 %i.aji to i32        ; 4 uses
  %i.ajr = add nsw i32 %i.ajp, %i.ajq
  %i.ajs = sext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ajs ; 2 uses
  %i.aju = add nsw i32 %i.ajh, %i.ajq
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ajv ; 5 uses
  %i.ajx = load ptr, ptr %i.p, align 8, !tbaa !28 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 24
  %i.ajz = load i32, ptr %i.at, align 8, !tbaa !52 ; 4 uses
  %i.aka = load i32, ptr %i.ay, align 8, !tbaa !51 ; 7 uses
  %i.akb = load ptr, ptr %.0114, align 8, !tbaa !49 ; 7 uses
  %i.akc = lshr i32 %i.ajz, 3
  %i.akd = zext nneg i32 %i.akc to i64
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.akd
  %i.akf = load i32, ptr %i.ake, align 1, !tbaa !30
  %i.akg = call i32 @llvm.bswap.i32(i32 %i.akf)
  %i.akh = and i32 %i.ajz, 7
  %i.aki = shl i32 %i.akg, %i.akh
  %i.akj = lshr i32 %i.aki, 26
  %i.akk = zext nneg i32 %i.akj to i64
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr @frame_type_vlc, i64 %i.akk ; 2 uses
  %i.akm = load i16, ptr %i.akl, align 4, !tbaa !30
  %i.akn = sext i16 %i.akm to i32                 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 2
  %i.akp = load i16, ptr %i.ako, align 2, !tbaa !30 ; 2 uses
  %i.akq = sext i16 %i.akp to i32                 ; 3 uses
  %i.akr = icmp slt i16 %i.akp, 0
  br i1 %i.akr, label %bb.ax, label %get_vlc2.exit.i

bb.ax:                                            ; preds = %stabilize_lsps.exit153
  %i.aks = add i32 %i.ajz, 6
  %i.akt = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.aks) ; 4 uses
  %i.aku = lshr i32 %i.akt, 3
  %i.akv = zext nneg i32 %i.aku to i64
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.akv
  %i.akx = load i32, ptr %i.akw, align 1, !tbaa !30
  %i.aky = call i32 @llvm.bswap.i32(i32 %i.akx)
  %i.akz = and i32 %i.akt, 7
  %i.ala = shl i32 %i.aky, %i.akz
  %i.alb = add nsw i32 %i.akq, 32
  %i.alc = lshr i32 %i.ala, %i.alb
  %i.ald = add i32 %i.alc, %i.akn
  %i.ale = zext i32 %i.ald to i64
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr @frame_type_vlc, i64 %i.ale ; 2 uses
  %i.alg = load i16, ptr %i.alf, align 4, !tbaa !30
  %i.alh = sext i16 %i.alg to i32                 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 2
  %i.alj = load i16, ptr %i.ali, align 2, !tbaa !30 ; 2 uses
  %i.alk = sext i16 %i.alj to i32                 ; 2 uses
  %i.all = icmp slt i16 %i.alj, 0
  br i1 %i.all, label %bb.ay, label %get_vlc2.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.alm = sub i32 %i.akt, %i.akq
  %i.aln = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.alm) ; 3 uses
  %i.alo = lshr i32 %i.aln, 3
  %i.alp = zext nneg i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.alp
  %i.alr = load i32, ptr %i.alq, align 1, !tbaa !30
  %i.als = call i32 @llvm.bswap.i32(i32 %i.alr)
  %i.alt = and i32 %i.aln, 7
  %i.alu = shl i32 %i.als, %i.alt
  %i.alv = add nsw i32 %i.alk, 32
  %i.alw = lshr i32 %i.alu, %i.alv
  %i.alx = add i32 %i.alw, %i.alh
  %i.aly = zext i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr @frame_type_vlc, i64 %i.aly ; 2 uses
  %i.ama = load i16, ptr %i.alz, align 4, !tbaa !30
  %i.amb = sext i16 %i.ama to i32
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 2
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !30
  %i.ame = sext i16 %i.amd to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.ay, %bb.ax, %stabilize_lsps.exit153
  %.167.i.i = phi i32 [ %i.akn, %stabilize_lsps.exit153 ], [ %i.amb, %bb.ay ], [ %i.alh, %bb.ax ]
  %.165.i.i = phi i32 [ %i.ajz, %stabilize_lsps.exit153 ], [ %i.aln, %bb.ay ], [ %i.akt, %bb.ax ]
  %.1.i.i = phi i32 [ %i.akq, %stabilize_lsps.exit153 ], [ %i.ame, %bb.ay ], [ %i.alk, %bb.ax ]
  %i.amf = add i32 %.1.i.i, %.165.i.i
  %i.amg = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.amf) ; 5 uses
  store i32 %i.amg, ptr %i.at, align 8, !tbaa !52
  %i.amh = sext i32 %.167.i.i to i64
  %i.ami = getelementptr inbounds i8, ptr %i.ajy, i64 %i.amh
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !30 ; 7 uses
  store i32 2147483647, ptr %i.f, align 16, !tbaa !56
  %i.amk = icmp slt i8 %i.amj, 0
  br i1 %i.amk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %get_vlc2.exit.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15) #12
  br label %bb.ef

bb.ba:                                            ; preds = %get_vlc2.exit.i
  %i.aml = zext nneg i8 %i.amj to i64             ; 2 uses
  %i.amm = getelementptr inbounds nuw [5 x i8], ptr @frame_descs, i64 %i.aml ; 5 uses
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !135 ; 5 uses
  %i.amo = zext i8 %i.amn to i32                  ; 3 uses
  %i.amp = udiv i8 -96, %i.amn                    ; 3 uses
  %.zext.i = zext i8 %i.amp to i32                ; 9 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amm, i64 2
  %i.amr = add nsw i8 %i.amj, -2
  %i.ams = icmp ult i8 %i.amr, 6                  ; 2 uses
  br i1 %i.ams, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.amt = shl nuw nsw i32 %i.amo, 1              ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amm, i64 1
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !136
  %i.amw = zext i8 %i.amv to i32
  %i.amx = add nuw nsw i32 %i.amw, 1              ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 88
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !53
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ajx, i64 96
  %i.anb = load i32, ptr %i.ana, align 16, !tbaa !55 ; 2 uses
  %i.anc = lshr i32 %i.amg, 3
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.and
  %i.anf = load i32, ptr %i.ane, align 1, !tbaa !30
  %i.ang = call i32 @llvm.bswap.i32(i32 %i.anf)
  %i.anh = and i32 %i.amg, 7
  %i.ani = shl i32 %i.ang, %i.anh
  %i.anj = sub nsw i32 32, %i.anb
  %i.ank = lshr i32 %i.ani, %i.anj
  %i.anl = add i32 %i.anb, %i.amg
  %i.anm = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.anl) ; 2 uses
  store i32 %i.anm, ptr %i.at, align 8, !tbaa !52
  %i.ann = add i32 %i.ank, %i.amz
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ajx, i64 92
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !54
  %i.anq = add nsw i32 %i.anp, -1
  %i.anr = call i32 @llvm.smin.i32(i32 %i.ann, i32 %i.anq) ; 8 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ajx, i64 628
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !137
  %i.anu = icmp eq i32 %i.ant, 0
  br i1 %i.anu, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ajx, i64 624
  %i.anw = load i32, ptr %i.anv, align 16, !tbaa !138 ; 3 uses
  %i.anx = sub nsw i32 %i.anr, %i.anw
  %i.any = call i32 @llvm.abs.i32(i32 %i.anx, i1 true)
  %i.anz = mul nuw nsw i32 %i.any, 20
  %i.aoa = add nsw i32 %i.anw, %i.anr
  %i.aob = icmp sgt i32 %i.anz, %i.aoa
  br i1 %i.aob, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ajx, i64 624
  store i32 %i.anr, ptr %i.aoc, align 16, !tbaa !138
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.aod = phi i32 [ %i.anr, %bb.bd ], [ %i.anw, %bb.bc ] ; 3 uses
  %wide.trip.count.i160 = zext i8 %i.amn to i64   ; 3 uses
  %min.iters.check429.not = icmp ugt i8 %i.amj, 4
  br i1 %min.iters.check429.not, label %vector.ph430, label %scalar.ph428.preheader

vector.ph430:                                     ; preds = %bb.be
  %n.vec431 = and i64 %wide.trip.count.i160, 252  ; 3 uses
  %broadcast.splatinsert432 = insertelement <4 x i32> poison, i32 %i.aod, i64 0
  %broadcast.splat433 = shufflevector <4 x i32> %broadcast.splatinsert432, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert434 = insertelement <4 x i32> poison, i32 %i.amt, i64 0
  %broadcast.splat435 = shufflevector <4 x i32> %broadcast.splatinsert434, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert436 = insertelement <4 x i32> poison, i32 %i.anr, i64 0
  %broadcast.splat437 = shufflevector <4 x i32> %broadcast.splatinsert436, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert438 = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %broadcast.splat439 = shufflevector <4 x i32> %broadcast.splatinsert438, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert440 = insertelement <4 x i32> poison, i32 %i.amx, i64 0
  %broadcast.splat441 = shufflevector <4 x i32> %broadcast.splatinsert440, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph430
  %index443 = phi i64 [ 0, %vector.ph430 ], [ %index.next444, %vector.body442 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph430 ], [ %vec.ind.next, %vector.body442 ] ; 2 uses
  %i.aoe = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.aof = or disjoint <4 x i32> %i.aoe, splat (i32 1) ; 2 uses
  %i.aog = sub <4 x i32> %broadcast.splat435, %i.aof
  %i.aoh = mul nsw <4 x i32> %i.aog, %broadcast.splat433
  %i.aoi = mul <4 x i32> %i.aof, %broadcast.splat437
  %i.aoj = add <4 x i32> %i.aoi, %broadcast.splat439
  %i.aok = add <4 x i32> %i.aoj, %i.aoh
  %i.aol = ashr <4 x i32> %i.aok, %broadcast.splat441
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index443
  store <4 x i32> %i.aol, ptr %i.aom, align 16, !tbaa !56
  %index.next444 = add nuw i64 %index443, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aon = icmp eq i64 %index.next444, %n.vec431
  br i1 %i.aon, label %middle.block445, label %vector.body442, !llvm.loop !99

middle.block445:                                  ; preds = %vector.body442
  %cmp.n446 = icmp eq i64 %n.vec431, %wide.trip.count.i160
  br i1 %cmp.n446, label %.loopexit, label %scalar.ph428.preheader

scalar.ph428.preheader:                           ; preds = %bb.be, %middle.block445
  %indvars.iv.i161.ph = phi i64 [ 0, %bb.be ], [ %n.vec431, %middle.block445 ]
  br label %scalar.ph428

scalar.ph428:                                     ; preds = %scalar.ph428.preheader, %scalar.ph428
  %indvars.iv.i161 = phi i64 [ %indvars.iv.next.i162, %scalar.ph428 ], [ %indvars.iv.i161.ph, %scalar.ph428.preheader ] ; 3 uses
  %indvars.iv.i161.tr = trunc i64 %indvars.iv.i161 to i32
  %i.aoo = shl i32 %indvars.iv.i161.tr, 1
  %i.aop = or disjoint i32 %i.aoo, 1              ; 2 uses
  %i.aoq = sub i32 %i.amt, %i.aop
  %i.aor = mul nsw i32 %i.aoq, %i.aod
  %i.aos = mul i32 %i.aop, %i.anr
  %i.aot = add i32 %i.aos, %i.amo
  %i.aou = add i32 %i.aot, %i.aor
  %i.aov = ashr i32 %i.aou, %i.amx
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i161
  store i32 %i.aov, ptr %i.aow, align 4, !tbaa !56
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i160
  br i1 %exitcond.not.i163, label %.loopexit, label %scalar.ph428, !llvm.loop !100

.loopexit:                                        ; preds = %scalar.ph428, %middle.block445
  %i.aox = sub nsw i32 %i.anr, %i.aod
  %i.aoy = shl nsw i32 %i.aox, 11
  %i.aoz = sdiv i32 %i.aoy, 5
  %i.apa = getelementptr inbounds nuw i8, ptr %i.ajx, i64 632
  store i32 %i.aoz, ptr %i.apa, align 8, !tbaa !139
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %bb.ba
  %i.apb = phi i32 [ %i.anm, %.loopexit ], [ %i.amg, %bb.ba ] ; 6 uses
  %.0154.i = phi i32 [ %i.anr, %.loopexit ], [ undef, %bb.ba ]
  %i.apc = getelementptr inbounds nuw i8, ptr %i.amm, i64 3
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !140 ; 2 uses
  switch i8 %i.apd, label %aw_parse_coords.exit.i [
    i8 0, label %bb.bg
    i8 2, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.ape = lshr i32 %i.apb, 3
  %i.apf = zext nneg i32 %i.ape to i64
  %i.apg = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.apf
  %i.aph = load i32, ptr %i.apg, align 1, !tbaa !30
  %i.api = call i32 @llvm.bswap.i32(i32 %i.aph)
  %i.apj = and i32 %i.apb, 7
  %i.apk = shl i32 %i.api, %i.apj
  %i.apl = lshr i32 %i.apk, 24
  %i.apm = add i32 %i.apb, 8
  %i.apn = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.apm)
  store i32 %i.apn, ptr %i.at, align 8, !tbaa !52
  %i.apo = zext nneg i32 %i.apl to i64
  %i.app = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_silence, i64 %i.apo
  %i.apq = load float, ptr %i.app, align 4, !tbaa !37
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ajx, i64 636
  store float %i.apq, ptr %i.apr, align 4, !tbaa !141
  br label %aw_parse_coords.exit.i

bb.bh:                                            ; preds = %bb.bf
  %.val.i = load i32, ptr %i.f, align 16          ; 7 uses
  %.val173.i = load i32, ptr %i.afo, align 4      ; 5 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.ajx, i64 640 ; 2 uses
  store i32 0, ptr %i.aps, align 16, !tbaa !142
  %i.apt = lshr i32 %i.apb, 3
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.apu
  %i.apw = load i32, ptr %i.apv, align 1, !tbaa !30
  %i.apx = call i32 @llvm.bswap.i32(i32 %i.apw)
  %i.apy = and i32 %i.apb, 7
  %i.apz = shl i32 %i.apx, %i.apy                 ; 2 uses
  %i.aqa = lshr i32 %i.apz, 26                    ; 3 uses
  %i.aqb = add i32 %i.apb, 6
  %i.aqc = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.aqb) ; 4 uses
  store i32 %i.aqc, ptr %i.at, align 8, !tbaa !52
  %i.aqd = icmp ugt i32 %i.apz, -671088641
  br i1 %i.aqd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %i.aps, align 16, !tbaa !142
  %i.aqe = mul nuw nsw i32 %i.aqa, 3
  %i.aqf = lshr i32 %i.aqc, 3
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.aqg
  %i.aqi = load i32, ptr %i.aqh, align 1, !tbaa !30
  %i.aqj = call i32 @llvm.bswap.i32(i32 %i.aqi)
  %i.aqk = and i32 %i.aqc, 7
  %i.aql = shl i32 %i.aqj, %i.aqk
  %i.aqm = lshr i32 %i.aql, 30
  %i.aqn = add i32 %i.aqc, 2
  %i.aqo = call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.aqn)
  store i32 %i.aqo, ptr %i.at, align 8, !tbaa !52
  %i.aqp = add nuw nsw i32 %i.aqa, -162
  %i.aqq = add nsw i32 %i.aqp, %i.aqe
  %i.aqr = add nsw i32 %i.aqq, %i.aqm
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.043.i.i = phi i32 [ %i.aqr, %bb.bi ], [ %i.aqa, %bb.bh ] ; 3 uses
  %..i174.i = call i32 @llvm.smin.i32(i32 %.val.i, i32 %.val173.i)
  %i.aqs = icmp sgt i32 %..i174.i, 32             ; 2 uses
  %i.aqt = select i1 %i.aqs, i32 24, i32 16       ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.ajx, i64 644
  store i32 %i.aqt, ptr %i.aqu, align 4, !tbaa !143
  %i.aqv = zext nneg i32 %.043.i.i to i64
  %i.aqw = getelementptr inbounds nuw [2 x i8], ptr @aw_parse_coords.start_offset, i64 %i.aqv
  %i.aqx = load i16, ptr %i.aqw, align 2, !tbaa !59
  %i.aqy = sext i16 %i.aqx to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.0.i175.i = phi i32 [ %i.aqy, %bb.bj ], [ %i.ara, %bb.bk ] ; 5 uses
  %i.aqz = icmp slt i32 %.0.i175.i, 0
  %i.ara = add nsw i32 %.0.i175.i, %.val.i
  br i1 %i.aqz, label %bb.bk, label %bb.bl, !llvm.loop !101

bb.bl:                                            ; preds = %bb.bk
  %.neg.i.i = select i1 %i.aqs, i32 -24, i32 -16  ; 4 uses
  %i.arb = add nsw i32 %.val.i, 79
  %i.arc = sub i32 %i.arb, %.0.i175.i
  %i.ard = sdiv i32 %i.arc, %.val.i               ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ajx, i64 648
  store i32 %i.ard, ptr %i.are, align 8, !tbaa !56
  %.neg.neg.i.i = lshr exact i32 %i.aqt, 1        ; 2 uses
  %i.arf = sub nsw i32 %.0.i175.i, %.neg.neg.i.i  ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ajx, i64 656 ; 2 uses
  store i32 %i.arf, ptr %i.arg, align 16, !tbaa !56
  %i.arh = mul nsw i32 %i.ard, %.val.i
  %i.ari = add nsw i32 %i.arh, %.0.i175.i         ; 2 uses
  %i.arj = add nsw i32 %.val173.i, 159
  %i.ark = sub i32 %i.arj, %i.ari
  %i.arl = sdiv i32 %i.ark, %.val173.i
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ajx, i64 652
  store i32 %i.arl, ptr %i.arm, align 4, !tbaa !56
  %reass.sub7.i.i = sub i32 %i.ari, %.neg.neg.i.i
  %i.arn = add i32 %reass.sub7.i.i, -80           ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ajx, i64 660 ; 2 uses
  store i32 %i.arn, ptr %i.aro, align 4, !tbaa !56
  %i.arp = icmp ult i32 %.043.i.i, 54
  br i1 %i.arp, label %.preheader2.i.i, label %aw_parse_coords.exit.i

.preheader2.i.i:                                  ; preds = %bb.bl
  %i.arq = sub nsw i32 %i.arn, %.val173.i         ; 2 uses
  %i.arr = icmp sgt i32 %i.arq, %.neg.i.i
  br i1 %i.arr, label %.lr.ph.i.i, label %bb.bm

.lr.ph.i.i:                                       ; preds = %.preheader2.i.i, %.lr.ph.i.i
  %i.ars = phi i32 [ %i.art, %.lr.ph.i.i ], [ %i.arq, %.preheader2.i.i ] ; 2 uses
  %i.art = sub nsw i32 %i.ars, %.val173.i         ; 2 uses
  %i.aru = icmp sgt i32 %i.art, %.neg.i.i
  br i1 %i.aru, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !102

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.ars, ptr %i.aro, align 4, !tbaa !56
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i, %.preheader2.i.i
  %i.arv = icmp samesign ult i32 %.043.i.i, 6
  %i.arw = sub nsw i32 %i.arf, %.val.i            ; 2 uses
  %i.arx = icmp sgt i32 %i.arw, %.neg.i.i
  %or.cond.i.i = select i1 %i.arv, i1 %i.arx, i1 false
  br i1 %or.cond.i.i, label %.lr.ph5.i.i, label %aw_parse_coords.exit.i

.lr.ph5.i.i:                                      ; preds = %bb.bm, %.lr.ph5.i.i
  %i.ary = phi i32 [ %i.arz, %.lr.ph5.i.i ], [ %i.arw, %bb.bm ] ; 2 uses
  %i.arz = sub nsw i32 %i.ary, %.val.i            ; 2 uses
  %i.asa = icmp sgt i32 %i.arz, %.neg.i.i
  br i1 %i.asa, label %.lr.ph5.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !103

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph5.i.i
  store i32 %i.ary, ptr %i.arg, align 16, !tbaa !56
  br label %aw_parse_coords.exit.i

aw_parse_coords.exit.i:                           ; preds = %..loopexit_crit_edge.i.i, %bb.bm, %bb.bl, %bb.bg, %bb.bf
  %i.asb = load i8, ptr %i.amq, align 1, !tbaa !144 ; 3 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ajx, i64 116
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 118
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ajx, i64 120
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ajx, i64 122
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ajx, i64 112 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ajx, i64 108
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ajx, i64 100
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ajx, i64 104
  %i.ask = icmp samesign ult i8 %i.amj, 2         ; 2 uses
  %.not.i154 = icmp eq i8 %i.amj, 0               ; 2 uses
  %i.asl = shl nuw nsw i32 %.zext.i, 2            ; 2 uses
  %i.asm = zext nneg i32 %i.asl to i64
  %i.asn = icmp eq i8 %i.amj, 2
  %i.aso = getelementptr inbounds nuw i8, ptr %i.amm, i64 1 ; 2 uses
  %i.asp = shl nuw i64 1, %i.aml                  ; 3 uses
  %i.asq = and i64 %i.asp, 18727
  %.not160.i.i.not.i = icmp eq i64 %i.asq, 0
  %i.asr = and i64 %i.asp, 112344
  %.not183.i = icmp eq i64 %i.asr, 0
  %i.ass = and i64 %i.asp, 74896
  %.not184.i = icmp eq i64 %i.ass, 0              ; 3 uses
  %i.ast = getelementptr i8, ptr %i.ajx, i64 640  ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ajx, i64 648 ; 3 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ajx, i64 644
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ajx, i64 656
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ajx, i64 664 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 668 ; 4 uses
  %i.asz = zext i8 %i.amp to i16
  %.rhs.trunc.i.i37.i.i = sub nuw nsw i16 1000, %i.asz ; 2 uses
  %i.ata = getelementptr i8, ptr %i.ajx, i64 636  ; 8 uses
  %wide.trip.count.i38.i.i = zext i8 %i.amp to i64 ; 11 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 676 ; 13 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ajx, i64 624 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 632
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ajx, i64 76 ; 4 uses
  %i.atf = uitofp i8 %i.amn to double
  %wide.trip.count219.i = zext i8 %i.amn to i64   ; 2 uses
  %i.atg = shl nuw nsw i64 %wide.trip.count.i38.i.i, 2
  %xtraiter527 = and i64 %wide.trip.count.i38.i.i, 248 ; 3 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, %wide.trip.count.i38.i.i
  %i.ath = and i64 %wide.trip.count.i38.i.i, 3    ; 2 uses
  %min.iters.check402.not = icmp eq i64 %i.ath, 0
  %n.vec390 = and i64 %wide.trip.count.i38.i.i, 248 ; 3 uses
  %cmp.n399 = icmp eq i64 %n.vec390, %wide.trip.count.i38.i.i
  %i.ati = sub i64 %i.ajo, %i.d
  %diff.check373 = icmp ugt i64 %i.ati, -16
  br label %bb.bn

bb.bn:                                            ; preds = %synth_block.exit.i, %aw_parse_coords.exit.i
  %indvars.iv214.i = phi i64 [ 0, %aw_parse_coords.exit.i ], [ %indvars.iv.next215.i, %synth_block.exit.i ] ; 10 uses
  %.0152200.i = phi i32 [ undef, %aw_parse_coords.exit.i ], [ %.1153180.i, %synth_block.exit.i ] ; 5 uses
  %indvars217.i = trunc i64 %indvars.iv214.i to i32 ; 5 uses
  switch i8 %i.asb, label %bb.ca [
    i8 2, label %bb.bo
    i8 1, label %bb.bz
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.atj = load i16, ptr %i.asd, align 2, !tbaa !59
  %i.atk = zext i16 %i.atj to i32                 ; 3 uses
  %i.atl = load i16, ptr %i.asc, align 4, !tbaa !59
  %i.atm = zext i16 %i.atl to i32                 ; 2 uses
  %i.atn = sub nsw i32 %i.atk, %i.atm
  %i.ato = shl nsw i32 %i.atn, 2                  ; 2 uses
  %i.atp = load i16, ptr %i.ase, align 4, !tbaa !59
  %i.atq = zext i16 %i.atp to i32                 ; 3 uses
  %i.atr = sub nsw i32 %i.atq, %i.atk
  %i.ats = shl nsw i32 %i.atr, 1                  ; 2 uses
  %i.att = load i16, ptr %i.asf, align 2, !tbaa !59
  %i.atu = zext i16 %i.att to i32                 ; 2 uses
  %i.atv = sub nsw i32 %i.atu, %i.atq
  %i.atw = icmp eq i64 %indvars.iv214.i, 0
  br i1 %i.atw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.atx = load i32, ptr %i.asi, align 4, !tbaa !63 ; 2 uses
  %i.aty = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.atz = load i32, ptr %i.ay, align 8, !tbaa !51
  %i.aua = load ptr, ptr %.0114, align 8, !tbaa !49
  %i.aub = lshr i32 %i.aty, 3
  %i.auc = zext nneg i32 %i.aub to i64
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.auc
  %i.aue = load i32, ptr %i.aud, align 1, !tbaa !30
  %i.auf = call i32 @llvm.bswap.i32(i32 %i.aue)
  %i.aug = and i32 %i.aty, 7
  %i.auh = shl i32 %i.auf, %i.aug
  %i.aui = sub nsw i32 32, %i.atx
  %i.auj = lshr i32 %i.auh, %i.aui
  %i.auk = add i32 %i.aty, %i.atx
  %i.aul = call i32 @llvm.umin.i32(i32 %i.atz, i32 %i.auk)
  %.pre.i = load i32, ptr %i.asg, align 16, !tbaa !60
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.aum = load i32, ptr %i.asg, align 16, !tbaa !60 ; 2 uses
  %i.aun = sub i32 %.0152200.i, %i.aum
  %i.auo = load i32, ptr %i.ash, align 4, !tbaa !61 ; 2 uses
  %i.aup = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.auq = load i32, ptr %i.ay, align 8, !tbaa !51
  %i.aur = load ptr, ptr %.0114, align 8, !tbaa !49
  %i.aus = lshr i32 %i.aup, 3
  %i.aut = zext nneg i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aur, i64 %i.aut
  %i.auv = load i32, ptr %i.auu, align 1, !tbaa !30
  %i.auw = call i32 @llvm.bswap.i32(i32 %i.auv)
  %i.aux = and i32 %i.aup, 7
  %i.auy = shl i32 %i.auw, %i.aux
  %i.auz = sub nsw i32 32, %i.auo
  %i.ava = lshr i32 %i.auy, %i.auz
  %i.avb = add i32 %i.aup, %i.auo
  %i.avc = call i32 @llvm.umin.i32(i32 %i.auq, i32 %i.avb)
  %i.avd = add i32 %i.aun, %i.ava
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ave = phi i32 [ %.pre.i, %bb.bp ], [ %i.aum, %bb.bq ] ; 3 uses
  %.sink.i = phi i32 [ %i.aul, %bb.bp ], [ %i.avc, %bb.bq ]
  %.0.i159 = phi i32 [ %i.auj, %bb.bp ], [ %i.avd, %bb.bq ] ; 5 uses
  store i32 %.sink.i, ptr %i.at, align 8, !tbaa !52
  %i.avf = load i32, ptr %i.asj, align 8, !tbaa !62
  %i.avg = sub nsw i32 %i.avf, %i.ave
  %i.avh = icmp slt i32 %.0.i159, %i.ave
  %..i.i = call i32 @llvm.smin.i32(i32 %.0.i159, i32 %i.avg)
  %.0.i.i = select i1 %i.avh, i32 %i.ave, i32 %..i.i
  %i.avi = icmp slt i32 %.0.i159, %i.ato
  br i1 %i.avi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.avj = shl nuw nsw i32 %i.atm, 2
  %i.avk = add nsw i32 %.0.i159, %i.avj
  br label %bb.by

bb.bt:                                            ; preds = %bb.br
  %i.avl = sub nsw i32 %.0.i159, %i.ato           ; 3 uses
  %i.avm = icmp slt i32 %i.avl, %i.ats
  br i1 %i.avm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.avn = shl nuw nsw i32 %i.atk, 2
  %i.avo = shl nuw nsw i32 %i.avl, 1
  %i.avp = add nuw nsw i32 %i.avo, %i.avn
  br label %bb.by

bb.bv:                                            ; preds = %bb.bt
  %i.avq = sub nsw i32 %i.avl, %i.ats             ; 2 uses
  %.not172.i = icmp sgt i32 %i.avq, %i.atv
  br i1 %.not172.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.avr = add nuw nsw i32 %i.avq, %i.atq
  %i.avs = shl nsw i32 %i.avr, 2
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.avt = shl nuw nsw i32 %i.atu, 2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bs
  %.0148.i = phi i32 [ %i.avk, %bb.bs ], [ %i.avp, %bb.bu ], [ %i.avs, %bb.bw ], [ %i.avt, %bb.bx ] ; 2 uses
  %i.avu = ashr i32 %.0148.i, 2
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv214.i
  store i32 %i.avu, ptr %i.avv, align 4, !tbaa !56
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bn
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv214.i
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !56
  %i.avy = shl i32 %i.avx, 2
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bn
  %i.avz = mul nuw nsw i64 %indvars.iv214.i, %wide.trip.count.i38.i.i ; 2 uses
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.avz ; 5 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.avz ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  br i1 %i.ask, label %bb.cb, label %.thread253.i

.thread253.i:                                     ; preds = %bb.ca
  %i.awc = mul nuw nsw i32 %indvars217.i, %.zext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not.i154, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.awd = load i32, ptr %i.asy, align 4, !tbaa !145
  %i.awe = mul i32 %indvars217.i, 1877
  %i.awf = add nsw i32 %i.awd, %i.awe             ; 3 uses
  %i.awg = icmp ugt i32 %i.awf, 65534
  %i.awh = add i32 %i.awf, -65535
  %spec.select.i.i.i.i = select i1 %i.awg, i32 %i.awh, i32 %i.awf ; 4 uses
  %i.awi = sext i32 %spec.select.i.i.i.i to i64
  %i.awj = mul nsw i64 %i.awi, 477218589
  %i.awk = lshr i64 %i.awj, 32
  %i.awl = trunc nuw i64 %i.awk to i32
  %.neg.i.i.i.i = mul i32 %i.awl, -9
  %i.awm = add i32 %.neg.i.i.i.i, %spec.select.i.i.i.i
  %i.awn = zext i32 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.awn ; 2 uses
  %i.awp = load i32, ptr %i.awo, align 8, !tbaa !56
  %i.awq = mul i32 %spec.select.i.i.i.i, %i.awp
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awo, i64 4
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !56
  %i.awt = zext i32 %spec.select.i.i.i.i to i64
  %i.awu = zext i32 %i.aws to i64
  %i.awv = mul nuw i64 %i.awt, %i.awu
  %i.aww = lshr i64 %i.awv, 32
  %i.awx = trunc nuw i64 %i.aww to i32
  %i.awy = add i32 %i.awq, %i.awx
  %.lhs.trunc.i.i.i.i = trunc i32 %i.awy to i16
  %i.awz = urem i16 %.lhs.trunc.i.i.i.i, %.rhs.trunc.i.i37.i.i
  %.zext.i.i.i.i = zext nneg i16 %i.awz to i32
  br label %.lr.ph.preheader.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.axa = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.axb = load i32, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %i.axc = load ptr, ptr %.0114, align 8, !tbaa !49 ; 2 uses
  %i.axd = lshr i32 %i.axa, 3
  %i.axe = zext nneg i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axc, i64 %i.axe
  %i.axg = load i32, ptr %i.axf, align 1, !tbaa !30
  %i.axh = call i32 @llvm.bswap.i32(i32 %i.axg)
  %i.axi = and i32 %i.axa, 7
  %i.axj = shl i32 %i.axh, %i.axi
  %i.axk = lshr i32 %i.axj, 24
  %i.axl = add i32 %i.axa, 8
  %i.axm = call i32 @llvm.umin.i32(i32 %i.axb, i32 %i.axl) ; 4 uses
  store i32 %i.axm, ptr %i.at, align 8, !tbaa !52
  %i.axn = lshr i32 %i.axm, 3
  %i.axo = zext nneg i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axc, i64 %i.axo
  %i.axq = load i32, ptr %i.axp, align 1, !tbaa !30
  %i.axr = call i32 @llvm.bswap.i32(i32 %i.axq)
  %i.axs = and i32 %i.axm, 7
  %i.axt = shl i32 %i.axr, %i.axs
  %i.axu = lshr i32 %i.axt, 26
  %i.axv = add i32 %i.axm, 6
end_hunk_0
begin_hunk_1_@synth_superframe:bb.a
  %i.bfw = phi i32 [ %i.bft, %.loopexit107.i.i.thread.i.i ], [ 4, %.loopexit107.i.i.i.i ], [ 4, %.loopexit109.i.i.thread.i.i ] ; 2 uses
  %i.bfx = lshr i32 %i.azh, 3
  %i.bfy = zext nneg i32 %i.bfx to i64
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bfy
  %i.bga = load i32, ptr %i.bfz, align 1, !tbaa !30
  %i.bgb = call i32 @llvm.bswap.i32(i32 %i.bga)
  %i.bgc = and i32 %i.azh, 7
  %i.bgd = shl i32 %i.bgb, %i.bgc
  %i.bge = sub nsw i32 32, %i.bfw
  %i.bgf = lshr i32 %i.bgd, %i.bge                ; 2 uses
  %i.bgg = add i32 %i.bfw, %i.azh
  %i.bgh = call i32 @llvm.umin.i32(i32 %i.ayv, i32 %i.bgg) ; 6 uses
  store i32 %i.bgh, ptr %i.at, align 8, !tbaa !52
  %.not117.i.i.i.i = icmp slt i32 %i.bgf, 0
  br i1 %.not117.i.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.lr.ph.i.i.i.i

.preheader.lr.ph.i.i.i.i:                         ; preds = %bb.da
  %i.bgi = load i32, ptr %i.afp, align 4
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dj, %.preheader.lr.ph.i.i.i.i
  %.0120.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.dj ]
  %.083119.i.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i.i ], [ %.184.i.i.i.i, %bb.dj ] ; 2 uses
  %.085118.i.i.i.i = phi i32 [ %i.bfu, %.preheader.lr.ph.i.i.i.i ], [ %i.bhp, %bb.dj ] ; 4 uses
  %i.bgj = icmp slt i32 %.085118.i.i.i.i, 0
  br i1 %i.bgj, label %.lr.ph115.i.i.i.i, label %._crit_edge.i115.i.i.i

.lr.ph115.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %.lr.ph115.i.i.i.i
  %.182114.i.i.i.i = phi i32 [ %i.bgk, %.lr.ph115.i.i.i.i ], [ %.085118.i.i.i.i, %.preheader.i.i.i.i ]
  %i.bgk = add nsw i32 %.182114.i.i.i.i, %i.bgi   ; 3 uses
  %i.bgl = icmp slt i32 %i.bgk, 0
  br i1 %i.bgl, label %.lr.ph115.i.i.i.i, label %._crit_edge.i115.i.i.i, !llvm.loop !109

._crit_edge.i115.i.i.i:                           ; preds = %.lr.ph115.i.i.i.i, %.preheader.i.i.i.i
  %.182.lcssa.i.i.i.i = phi i32 [ %.085118.i.i.i.i, %.preheader.i.i.i.i ], [ %i.bgk, %.lr.ph115.i.i.i.i ] ; 2 uses
  %i.bgm = icmp samesign ugt i32 %.182.lcssa.i.i.i.i, 79
  br i1 %i.bgm, label %bb.db, label %bb.dh

bb.db:                                            ; preds = %._crit_edge.i115.i.i.i
  %i.bgn = load i16, ptr %i.afw, align 4, !tbaa !59
  %.not95.i.i.i.i = icmp eq i16 %i.bgn, 0
  br i1 %.not95.i.i.i.i, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %i.bgo = load i16, ptr %i.afy, align 2, !tbaa !59
  %.not96.i.i.i.i = icmp eq i16 %i.bgo, 0
  br i1 %.not96.i.i.i.i, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.bgp = load i16, ptr %i.afz, align 8, !tbaa !59
  %.not97.i.i.i.i = icmp eq i16 %i.bgp, 0
  br i1 %.not97.i.i.i.i, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.bgq = load i16, ptr %i.aga, align 2, !tbaa !59
  %.not98.i.i.i.i = icmp eq i16 %i.bgq, 0
  br i1 %.not98.i.i.i.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.bgr = load i16, ptr %i.agb, align 4, !tbaa !59
  %.not99.i.i.i.i = icmp eq i16 %i.bgr, 0
  br i1 %.not99.i.i.i.i, label %.lr.ph.i35.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db
  %.2.i.i.i.i = phi i32 [ 63, %bb.de ], [ 15, %bb.db ], [ 31, %bb.dc ], [ 47, %bb.dd ], [ 79, %bb.df ] ; 2 uses
  %i.bgs = lshr i32 %.2.i.i.i.i, 4
  %i.bgt = zext nneg i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds nuw [2 x i8], ptr %i.afw, i64 %i.bgt
  %i.bgv = load i16, ptr %i.bgu, align 2, !tbaa !59 ; 2 uses
  %i.bgw = zext i16 %i.bgv to i32                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i16 %i.bgv, 256      ; 2 uses
  %i.bgx = lshr i32 %i.bgw, 8
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.bgw, i32 %i.bgx
  %spec.select7.i.neg123.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 -8
  %i.bgy = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.bgz = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bgy
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !30
  %i.bhb = zext i8 %i.bha to i32
  %.neg105.i.i.i.i = sub nsw i32 %.2.i.i.i.i, %i.bhb
  %i.bhc = add nsw i32 %.neg105.i.i.i.i, %spec.select7.i.neg123.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %._crit_edge.i115.i.i.i
  %.3.i.i.i.i = phi i32 [ %i.bhc, %bb.dg ], [ %.182.lcssa.i.i.i.i, %._crit_edge.i115.i.i.i ] ; 3 uses
  %i.bhd = ashr i32 %.3.i.i.i.i, 4
  %i.bhe = sext i32 %i.bhd to i64
  %i.bhf = getelementptr inbounds [2 x i8], ptr %i.afw, i64 %i.bhe ; 2 uses
  %i.bhg = load i16, ptr %i.bhf, align 2, !tbaa !59 ; 2 uses
  %i.bhh = zext i16 %i.bhg to i32
  %i.bhi = and i32 %.3.i.i.i.i, 15                ; 2 uses
  %i.bhj = lshr exact i32 32768, %i.bhi
  %i.bhk = and i32 %i.bhj, %i.bhh
  %.not100.i.i.i.i = icmp eq i32 %i.bhk, 0
  br i1 %.not100.i.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bhl = ashr i32 -32769, %i.bhi
  %i.bhm = trunc i32 %i.bhl to i16
  %i.bhn = and i16 %i.bhg, %i.bhm
  store i16 %i.bhn, ptr %i.bhf, align 2, !tbaa !59
  %i.bho = add nsw i32 %.083119.i.i.i.i, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.184.i.i.i.i = phi i32 [ %i.bho, %bb.di ], [ %.083119.i.i.i.i, %bb.dh ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.3.i.i.i.i, %bb.di ], [ %.0120.i.i.i.i, %bb.dh ] ; 2 uses
  %i.bhp = add nsw i32 %.085118.i.i.i.i, 1
  %.not.i116.i.i.i = icmp sgt i32 %.184.i.i.i.i, %i.bgf
  br i1 %.not.i116.i.i.i, label %aw_pulse_set2.exit.thread.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !110

aw_pulse_set2.exit.thread.i.i.i:                  ; preds = %bb.dj, %bb.da
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.da ], [ %.1.i.i.i.i, %bb.dj ] ; 2 uses
  %i.bhq = sext i32 %i.bfv to i64
  %i.bhr = getelementptr inbounds [4 x i8], ptr %i.afs, i64 %i.bhq
  store i32 %.0.lcssa.i.i.i.i, ptr %i.bhr, align 4, !tbaa !56
  %i.bhs = lshr i32 %i.bgh, 3
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.ayw, i64 %i.bht
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !30
  %i.bhw = icmp slt i32 %i.bgh, %i.ayv
  %i.bhx = zext i1 %i.bhw to i32
  %spec.select.i101.i.i.i.i = add i32 %i.bgh, %i.bhx
  %i.bhy = zext i8 %i.bhv to i32
  %i.bhz = and i32 %i.bgh, 7
  store i32 %spec.select.i101.i.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bia = lshr exact i32 128, %i.bhz
  %i.bib = and i32 %i.bia, %i.bhy
  %.not93.i.i.i.i = icmp eq i32 %i.bib, 0
  %i.bic = select i1 %.not93.i.i.i.i, float 1.000000e+00, float -1.000000e+00
  %i.bid = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.bie
  store float %i.bic, ptr %i.bif, align 4, !tbaa !37
  %i.big = add nsw i32 %i.bid, 1
  store i32 %i.big, ptr %3, align 4, !tbaa !150
  %i.bih = sub nsw i32 80, %.0.lcssa.i.i.i.i
  %i.bii = load i32, ptr %i.afp, align 4, !tbaa !147 ; 2 uses
  %i.bij = srem i32 %i.bih, %i.bii                ; 2 uses
  %.not94.i.i.i.i = icmp eq i32 %i.bij, 0
  %i.bik = sub nsw i32 %i.bii, %i.bij
  %spec.select.i.i34.i.i = select i1 %.not94.i.i.i.i, i32 0, i32 %i.bik
  store i32 %spec.select.i.i34.i.i, ptr %i.asx, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit124.i.i.i

.lr.ph.i35.i.i:                                   ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bil = load i32, ptr %i.asy, align 4, !tbaa !145
  %i.bim = mul i32 %indvars217.i, 1877
  %i.bin = add nsw i32 %i.bil, %i.bim             ; 3 uses
  %i.bio = icmp ugt i32 %i.bin, 65534
  %i.bip = add i32 %i.bin, -65535
  %spec.select.i119.i.i.i = select i1 %i.bio, i32 %i.bip, i32 %i.bin ; 4 uses
  %i.biq = sext i32 %spec.select.i119.i.i.i to i64
  %i.bir = mul nsw i64 %i.biq, 477218589
  %i.bis = lshr i64 %i.bir, 32
  %i.bit = trunc nuw i64 %i.bis to i32
  %.neg.i120.i.i.i = mul i32 %i.bit, -9
  %i.biu = add i32 %.neg.i120.i.i.i, %spec.select.i119.i.i.i
  %i.biv = zext i32 %i.biu to i64
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr @pRNG.div_tbl, i64 %i.biv ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 8, !tbaa !56
  %i.biy = mul i32 %spec.select.i119.i.i.i, %i.bix
  %i.biz = zext i32 %spec.select.i119.i.i.i to i64
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biw, i64 4
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !56
  %i.bjc = zext i32 %i.bjb to i64
  %i.bjd = mul nuw i64 %i.biz, %i.bjc
  %i.bje = lshr i64 %i.bjd, 32
  %i.bjf = trunc nuw i64 %i.bje to i32
  %i.bjg = add i32 %i.biy, %i.bjf
  %.lhs.trunc.i.i36.i.i = trunc i32 %i.bjg to i16
  %i.bjh = urem i16 %.lhs.trunc.i.i36.i.i, %.rhs.trunc.i.i37.i.i
  %i.bji = zext nneg i16 %i.bjh to i64
  %invariant.gep.i39.i.i = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_std_codebook, i64 %i.bji ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ayp, i64 %i.atg
  %bound0 = icmp ult ptr %i.ayp, %i.ast
  %bound1 = icmp ult ptr %i.ata, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph.i35.i.i
  %i.bjj = load float, ptr %i.ata, align 4, !tbaa !141, !alias.scope !152
  %broadcast.splatinsert422 = insertelement <4 x float> poison, float %i.bjj, i64 0
  %broadcast.splat423 = shufflevector <4 x float> %broadcast.splatinsert422, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 3 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %index419 ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 16
  %wide.load420 = load <4 x float>, ptr %i.bjk, align 4, !tbaa !37
  %wide.load421 = load <4 x float>, ptr %i.bjl, align 4, !tbaa !37
  %i.bjm = fmul nsz <4 x float> %wide.load420, %broadcast.splat423
  %i.bjn = fmul nsz <4 x float> %wide.load421, %broadcast.splat423
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %index419 ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 16
  store <4 x float> %i.bjm, ptr %i.bjo, align 4, !tbaa !37, !alias.scope !153, !noalias !152
  store <4 x float> %i.bjn, ptr %i.bjp, align 4, !tbaa !37, !alias.scope !153, !noalias !152
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.bjq = icmp eq i64 %index.next424, %xtraiter527
  br i1 %i.bjq, label %middle.block425, label %vector.body418, !llvm.loop !114

middle.block425:                                  ; preds = %vector.body418
  br i1 %lcmp.mod528.not, label %._crit_edge.i.i.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %.lr.ph.i35.i.i, %middle.block425
  %indvars.iv.i40.i.i.ph = phi i64 [ 0, %.lr.ph.i35.i.i ], [ %xtraiter527, %middle.block425 ] ; 3 uses
  br i1 %min.iters.check402.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol

scalar.ph414.prol:                                ; preds = %scalar.ph414.preheader, %scalar.ph414.prol
  %indvars.iv.i40.i.i.prol = phi i64 [ %indvars.iv.next.i42.i.i.prol, %scalar.ph414.prol ], [ %indvars.iv.i40.i.i.ph, %scalar.ph414.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph414.prol ], [ 0, %scalar.ph414.preheader ]
  %gep.i41.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i.prol
  %i.bjr = load float, ptr %gep.i41.i.i.prol, align 4, !tbaa !37
  %i.bjs = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bjt = fmul nsz float %i.bjr, %i.bjs
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv.i40.i.i.prol
  store float %i.bjt, ptr %i.bju, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.prol = add nuw nsw i64 %indvars.iv.i40.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ath
  br i1 %prol.iter.cmp.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol, !llvm.loop !115

scalar.ph414.prol.loopexit:                       ; preds = %scalar.ph414.prol, %scalar.ph414.preheader
  %indvars.iv.i40.i.i.unr = phi i64 [ %indvars.iv.i40.i.i.ph, %scalar.ph414.preheader ], [ %indvars.iv.next.i42.i.i.prol, %scalar.ph414.prol ]
  %i.bjv = sub nsw i64 %indvars.iv.i40.i.i.ph, %wide.trip.count.i38.i.i
  %i.bjw = icmp ugt i64 %i.bjv, -4
  br i1 %i.bjw, label %._crit_edge.i.i.i, label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414
  %indvars.iv.i40.i.i = phi i64 [ %indvars.iv.next.i42.i.i.3, %scalar.ph414 ], [ %indvars.iv.i40.i.i.unr, %scalar.ph414.prol.loopexit ] ; 6 uses
  %gep.i41.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.i40.i.i
  %i.bjx = load float, ptr %gep.i41.i.i, align 4, !tbaa !37
  %i.bjy = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bjz = fmul nsz float %i.bjx, %i.bjy
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv.i40.i.i
  store float %i.bjz, ptr %i.bka, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i = add nuw nsw i64 %indvars.iv.i40.i.i, 1 ; 2 uses
  %gep.i41.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i
  %i.bkb = load float, ptr %gep.i41.i.i.1, align 4, !tbaa !37
  %i.bkc = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bkd = fmul nsz float %i.bkb, %i.bkc
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv.next.i42.i.i
  store float %i.bkd, ptr %i.bke, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.1 = add nuw nsw i64 %indvars.iv.i40.i.i, 2 ; 2 uses
  %gep.i41.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.1
  %i.bkf = load float, ptr %gep.i41.i.i.2, align 4, !tbaa !37
  %i.bkg = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bkh = fmul nsz float %i.bkf, %i.bkg
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv.next.i42.i.i.1
  store float %i.bkh, ptr %i.bki, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.2 = add nuw nsw i64 %indvars.iv.i40.i.i, 3 ; 2 uses
  %gep.i41.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i39.i.i, i64 %indvars.iv.next.i42.i.i.2
  %i.bkj = load float, ptr %gep.i41.i.i.3, align 4, !tbaa !37
  %i.bkk = load float, ptr %i.ata, align 4, !tbaa !141
  %i.bkl = fmul nsz float %i.bkj, %i.bkk
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv.next.i42.i.i.2
  store float %i.bkl, ptr %i.bkm, align 4, !tbaa !37
  %indvars.iv.next.i42.i.i.3 = add nuw nsw i64 %indvars.iv.i40.i.i, 4 ; 2 uses
  %exitcond.not.i43.i.i.3 = icmp eq i64 %indvars.iv.next.i42.i.i.3, %wide.trip.count.i38.i.i
  br i1 %exitcond.not.i43.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph414, !llvm.loop !116

._crit_edge.i.i.i:                                ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414, %middle.block425
  %i.bkn = add i32 %i.bgh, 8
  %i.bko = call i32 @llvm.umin.i32(i32 %i.ayv, i32 %i.bkn)
  store i32 %i.bko, ptr %i.at, align 8, !tbaa !52
  br label %synth_block_fcb_acb.exit.i.i

bb.dk:                                            ; preds = %bb.cg
  %i.bkp = load i8, ptr %i.aso, align 1, !tbaa !136
  %i.bkq = zext i8 %i.bkp to i32                  ; 2 uses
  %i.bkr = sub nsw i32 5, %i.bkq                  ; 10 uses
  store i32 -1, ptr %i.afr, align 4, !tbaa !149
  %i.bks = load ptr, ptr %.0114, align 8, !tbaa !49 ; 15 uses
  %i.bkt = load i32, ptr %i.ay, align 8, !tbaa !51 ; 15 uses
  %i.bku = add nuw nsw i32 %i.bkq, 27             ; 10 uses
  %.promoted.i.i.i = load i32, ptr %i.at, align 8, !tbaa !52 ; 4 uses
  %i.bkv = lshr i32 %.promoted.i.i.i, 3
  %i.bkw = zext nneg i32 %i.bkv to i64
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bkw
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !30
  %i.bkz = icmp slt i32 %.promoted.i.i.i, %i.bkt
  %i.bla = zext i1 %i.bkz to i32
  %spec.select.i121.i.i.i = add i32 %.promoted.i.i.i, %i.bla ; 4 uses
  %i.blb = zext i8 %i.bky to i32
  %i.blc = and i32 %.promoted.i.i.i, 7
  store i32 %spec.select.i121.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bld = lshr exact i32 128, %i.blc
  %i.ble = and i32 %i.bld, %i.blb
  %.not.i32.i.i = icmp eq i32 %i.ble, 0
  %i.blf = select i1 %.not.i32.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.blg = lshr i32 %spec.select.i121.i.i.i, 3
  %i.blh = zext nneg i32 %i.blg to i64
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.blh
  %i.blj = load i32, ptr %i.bli, align 1, !tbaa !30
  %i.blk = call i32 @llvm.bswap.i32(i32 %i.blj)
  %i.bll = and i32 %spec.select.i121.i.i.i, 7
  %i.blm = shl i32 %i.blk, %i.bll
  %i.bln = lshr i32 %i.blm, %i.bku                ; 2 uses
  %i.blo = add i32 %spec.select.i121.i.i.i, %i.bkr
  %i.blp = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.blo) ; 5 uses
  store i32 %i.blp, ptr %i.at, align 8, !tbaa !52
  %i.blq = mul nuw nsw i32 %i.bln, 5
  store i32 %i.blq, ptr %i.afs, align 4, !tbaa !56
  store float %i.blf, ptr %i.aft, align 4, !tbaa !37
  br i1 %.not160.i.i.not.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.blr = lshr i32 %i.blp, 3
  %i.bls = zext nneg i32 %i.blr to i64
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bls
  %i.blu = load i32, ptr %i.blt, align 1, !tbaa !30
  %i.blv = call i32 @llvm.bswap.i32(i32 %i.blu)
  %i.blw = and i32 %i.blp, 7
  %i.blx = shl i32 %i.blv, %i.blw
  %i.bly = lshr i32 %i.blx, %i.bku                ; 2 uses
  %i.blz = add i32 %i.blp, %i.bkr
  %i.bma = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.blz) ; 2 uses
  store i32 %i.bma, ptr %i.at, align 8, !tbaa !52
  %i.bmb = mul nuw nsw i32 %i.bly, 5
  store i32 %i.bmb, ptr %i.afu, align 4, !tbaa !56
  %i.bmc = icmp samesign ult i32 %i.bln, %i.bly
  %i.bmd = fneg nsz float %i.blf
  %i.bme = select nsz i1 %i.bmc, float %i.bmd, float %i.blf
  store float %i.bme, ptr %i.afv, align 4, !tbaa !37
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.bmf = phi i32 [ 2, %bb.dl ], [ 1, %bb.dk ]   ; 3 uses
  %i.bmg = phi i32 [ %i.bma, %bb.dl ], [ %i.blp, %bb.dk ] ; 4 uses
  %i.bmh = lshr i32 %i.bmg, 3
  %i.bmi = zext nneg i32 %i.bmh to i64
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bmi
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !30
  %i.bml = icmp slt i32 %i.bmg, %i.bkt
  %i.bmm = zext i1 %i.bml to i32
  %spec.select.i121.1.i.i.i = add i32 %i.bmg, %i.bmm ; 4 uses
  %i.bmn = zext i8 %i.bmk to i32
  %i.bmo = and i32 %i.bmg, 7
  store i32 %spec.select.i121.1.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bmp = lshr exact i32 128, %i.bmo
  %i.bmq = and i32 %i.bmp, %i.bmn
  %.not.1.i.i.i = icmp eq i32 %i.bmq, 0
  %i.bmr = select i1 %.not.1.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bms = lshr i32 %spec.select.i121.1.i.i.i, 3
  %i.bmt = zext nneg i32 %i.bms to i64
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bmt
  %i.bmv = load i32, ptr %i.bmu, align 1, !tbaa !30
  %i.bmw = call i32 @llvm.bswap.i32(i32 %i.bmv)
  %i.bmx = and i32 %spec.select.i121.1.i.i.i, 7
  %i.bmy = shl i32 %i.bmw, %i.bmx
  %i.bmz = lshr i32 %i.bmy, %i.bku                ; 2 uses
  %i.bna = add i32 %spec.select.i121.1.i.i.i, %i.bkr
  %i.bnb = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bna) ; 5 uses
  store i32 %i.bnb, ptr %i.at, align 8, !tbaa !52
  %i.bnc = mul nuw nsw i32 %i.bmz, 5
  %i.bnd = add nuw nsw i32 %i.bnc, 1
  %i.bne = zext nneg i32 %i.bmf to i64            ; 2 uses
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bne
  store i32 %i.bnd, ptr %i.bnf, align 4, !tbaa !56
  %i.bng = add nuw nsw i32 %i.bmf, 1              ; 2 uses
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bne
  store float %i.bmr, ptr %i.bnh, align 4, !tbaa !37
  br i1 %.not183.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bni = lshr i32 %i.bnb, 3
  %i.bnj = zext nneg i32 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 1, !tbaa !30
  %i.bnm = call i32 @llvm.bswap.i32(i32 %i.bnl)
  %i.bnn = and i32 %i.bnb, 7
  %i.bno = shl i32 %i.bnm, %i.bnn
  %i.bnp = lshr i32 %i.bno, %i.bku                ; 2 uses
  %i.bnq = add i32 %i.bnb, %i.bkr
  %i.bnr = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bnq) ; 2 uses
  store i32 %i.bnr, ptr %i.at, align 8, !tbaa !52
  %i.bns = mul nuw nsw i32 %i.bnp, 5
  %i.bnt = add nuw nsw i32 %i.bns, 1
  %i.bnu = zext nneg i32 %i.bng to i64            ; 2 uses
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bnu
  store i32 %i.bnt, ptr %i.bnv, align 4, !tbaa !56
  %i.bnw = icmp samesign ult i32 %i.bmz, %i.bnp
  %i.bnx = fneg nsz float %i.bmr
  %i.bny = select nsz i1 %i.bnw, float %i.bnx, float %i.bmr
  %i.bnz = add nuw nsw i32 %i.bmf, 2
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bnu
  store float %i.bny, ptr %i.boa, align 4, !tbaa !37
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.bob = phi i32 [ %i.bnz, %bb.dn ], [ %i.bng, %bb.dm ] ; 3 uses
  %i.boc = phi i32 [ %i.bnr, %bb.dn ], [ %i.bnb, %bb.dm ] ; 4 uses
  %i.bod = lshr i32 %i.boc, 3
  %i.boe = zext nneg i32 %i.bod to i64
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.boe
  %i.bog = load i8, ptr %i.bof, align 1, !tbaa !30
  %i.boh = icmp slt i32 %i.boc, %i.bkt
  %i.boi = zext i1 %i.boh to i32
  %spec.select.i121.2.i.i.i = add i32 %i.boc, %i.boi ; 4 uses
  %i.boj = zext i8 %i.bog to i32
  %i.bok = and i32 %i.boc, 7
  store i32 %spec.select.i121.2.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bol = lshr exact i32 128, %i.bok
  %i.bom = and i32 %i.bol, %i.boj
  %.not.2.i.i.i = icmp eq i32 %i.bom, 0
  %i.bon = select i1 %.not.2.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.boo = lshr i32 %spec.select.i121.2.i.i.i, 3
  %i.bop = zext nneg i32 %i.boo to i64
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bop
  %i.bor = load i32, ptr %i.boq, align 1, !tbaa !30
  %i.bos = call i32 @llvm.bswap.i32(i32 %i.bor)
  %i.bot = and i32 %spec.select.i121.2.i.i.i, 7
  %i.bou = shl i32 %i.bos, %i.bot
  %i.bov = lshr i32 %i.bou, %i.bku                ; 2 uses
  %i.bow = add i32 %spec.select.i121.2.i.i.i, %i.bkr
  %i.box = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bow) ; 5 uses
  store i32 %i.box, ptr %i.at, align 8, !tbaa !52
  %i.boy = mul nuw nsw i32 %i.bov, 5
  %i.boz = add nuw nsw i32 %i.boy, 2
  %i.bpa = zext nneg i32 %i.bob to i64            ; 2 uses
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bpa
  store i32 %i.boz, ptr %i.bpb, align 4, !tbaa !56
  %i.bpc = add nuw nsw i32 %i.bob, 1              ; 3 uses
  store i32 %i.bpc, ptr %3, align 4, !tbaa !150
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bpa
  store float %i.bon, ptr %i.bpd, align 4, !tbaa !37
  br i1 %.not184.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bpe = lshr i32 %i.box, 3
  %i.bpf = zext nneg i32 %i.bpe to i64
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bpf
  %i.bph = load i32, ptr %i.bpg, align 1, !tbaa !30
  %i.bpi = call i32 @llvm.bswap.i32(i32 %i.bph)
  %i.bpj = and i32 %i.box, 7
  %i.bpk = shl i32 %i.bpi, %i.bpj
  %i.bpl = lshr i32 %i.bpk, %i.bku                ; 2 uses
  %i.bpm = add i32 %i.box, %i.bkr
  %i.bpn = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bpm) ; 2 uses
  store i32 %i.bpn, ptr %i.at, align 8, !tbaa !52
  %i.bpo = mul nuw nsw i32 %i.bpl, 5
  %i.bpp = add nuw nsw i32 %i.bpo, 2
  %i.bpq = zext nneg i32 %i.bpc to i64            ; 2 uses
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bpq
  store i32 %i.bpp, ptr %i.bpr, align 4, !tbaa !56
  %i.bps = icmp samesign ult i32 %i.bov, %i.bpl
  %i.bpt = fneg nsz float %i.bon
  %i.bpu = select nsz i1 %i.bps, float %i.bpt, float %i.bon
  %i.bpv = add nuw nsw i32 %i.bob, 2              ; 2 uses
  store i32 %i.bpv, ptr %3, align 4, !tbaa !150
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bpq
  store float %i.bpu, ptr %i.bpw, align 4, !tbaa !37
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.bpx = phi i32 [ %i.bpv, %bb.dp ], [ %i.bpc, %bb.do ] ; 3 uses
  %i.bpy = phi i32 [ %i.bpn, %bb.dp ], [ %i.box, %bb.do ] ; 4 uses
  %i.bpz = lshr i32 %i.bpy, 3
  %i.bqa = zext nneg i32 %i.bpz to i64
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bqa
  %i.bqc = load i8, ptr %i.bqb, align 1, !tbaa !30
  %i.bqd = icmp slt i32 %i.bpy, %i.bkt
  %i.bqe = zext i1 %i.bqd to i32
  %spec.select.i121.3.i.i.i = add i32 %i.bpy, %i.bqe ; 4 uses
  %i.bqf = zext i8 %i.bqc to i32
  %i.bqg = and i32 %i.bpy, 7
  store i32 %spec.select.i121.3.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bqh = lshr exact i32 128, %i.bqg
  %i.bqi = and i32 %i.bqh, %i.bqf
  %.not.3.i.i.i = icmp eq i32 %i.bqi, 0
  %i.bqj = select i1 %.not.3.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bqk = lshr i32 %spec.select.i121.3.i.i.i, 3
  %i.bql = zext nneg i32 %i.bqk to i64
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bql
  %i.bqn = load i32, ptr %i.bqm, align 1, !tbaa !30
  %i.bqo = call i32 @llvm.bswap.i32(i32 %i.bqn)
  %i.bqp = and i32 %spec.select.i121.3.i.i.i, 7
  %i.bqq = shl i32 %i.bqo, %i.bqp
  %i.bqr = lshr i32 %i.bqq, %i.bku                ; 2 uses
  %i.bqs = add i32 %spec.select.i121.3.i.i.i, %i.bkr
  %i.bqt = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bqs) ; 5 uses
  store i32 %i.bqt, ptr %i.at, align 8, !tbaa !52
  %i.bqu = mul nuw nsw i32 %i.bqr, 5
  %i.bqv = add nuw nsw i32 %i.bqu, 3
  %i.bqw = zext nneg i32 %i.bpx to i64            ; 2 uses
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bqw
  store i32 %i.bqv, ptr %i.bqx, align 4, !tbaa !56
  %i.bqy = add nuw nsw i32 %i.bpx, 1              ; 3 uses
  store i32 %i.bqy, ptr %3, align 4, !tbaa !150
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bqw
  store float %i.bqj, ptr %i.bqz, align 4, !tbaa !37
  br i1 %.not184.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bra = lshr i32 %i.bqt, 3
  %i.brb = zext nneg i32 %i.bra to i64
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.brb
  %i.brd = load i32, ptr %i.brc, align 1, !tbaa !30
  %i.bre = call i32 @llvm.bswap.i32(i32 %i.brd)
  %i.brf = and i32 %i.bqt, 7
  %i.brg = shl i32 %i.bre, %i.brf
  %i.brh = lshr i32 %i.brg, %i.bku                ; 2 uses
  %i.bri = add i32 %i.bqt, %i.bkr
  %i.brj = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bri) ; 2 uses
  store i32 %i.brj, ptr %i.at, align 8, !tbaa !52
  %i.brk = mul nuw nsw i32 %i.brh, 5
  %i.brl = add nuw nsw i32 %i.brk, 3
  %i.brm = zext nneg i32 %i.bqy to i64            ; 2 uses
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.brm
  store i32 %i.brl, ptr %i.brn, align 4, !tbaa !56
  %i.bro = icmp samesign ult i32 %i.bqr, %i.brh
  %i.brp = fneg nsz float %i.bqj
  %i.brq = select nsz i1 %i.bro, float %i.brp, float %i.bqj
  %i.brr = add nuw nsw i32 %i.bpx, 2              ; 2 uses
  store i32 %i.brr, ptr %3, align 4, !tbaa !150
  %i.brs = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.brm
  store float %i.brq, ptr %i.brs, align 4, !tbaa !37
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.brt = phi i32 [ %i.brr, %bb.dr ], [ %i.bqy, %bb.dq ] ; 3 uses
  %i.bru = phi i32 [ %i.brj, %bb.dr ], [ %i.bqt, %bb.dq ] ; 4 uses
  %i.brv = lshr i32 %i.bru, 3
  %i.brw = zext nneg i32 %i.brv to i64
  %i.brx = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.brw
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !30
  %i.brz = icmp slt i32 %i.bru, %i.bkt
  %i.bsa = zext i1 %i.brz to i32
  %spec.select.i121.4.i.i.i = add i32 %i.bru, %i.bsa ; 4 uses
  %i.bsb = zext i8 %i.bry to i32
  %i.bsc = and i32 %i.bru, 7
  store i32 %spec.select.i121.4.i.i.i, ptr %i.at, align 8, !tbaa !52
  %i.bsd = lshr exact i32 128, %i.bsc
  %i.bse = and i32 %i.bsd, %i.bsb
  %.not.4.i.i.i = icmp eq i32 %i.bse, 0
  %i.bsf = select i1 %.not.4.i.i.i, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.bsg = lshr i32 %spec.select.i121.4.i.i.i, 3
  %i.bsh = zext nneg i32 %i.bsg to i64
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bsh
  %i.bsj = load i32, ptr %i.bsi, align 1, !tbaa !30
  %i.bsk = call i32 @llvm.bswap.i32(i32 %i.bsj)
  %i.bsl = and i32 %spec.select.i121.4.i.i.i, 7
  %i.bsm = shl i32 %i.bsk, %i.bsl
  %i.bsn = lshr i32 %i.bsm, %i.bku                ; 2 uses
  %i.bso = add i32 %spec.select.i121.4.i.i.i, %i.bkr
  %i.bsp = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.bso) ; 4 uses
  store i32 %i.bsp, ptr %i.at, align 8, !tbaa !52
  %i.bsq = mul nuw nsw i32 %i.bsn, 5
  %i.bsr = add nuw nsw i32 %i.bsq, 4
  %i.bss = zext nneg i32 %i.brt to i64
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.bss
  store i32 %i.bsr, ptr %i.bst, align 4, !tbaa !56
  %i.bsu = add nuw nsw i32 %i.brt, 1              ; 2 uses
  store i32 %i.bsu, ptr %3, align 4, !tbaa !150
  %i.bsv = zext nneg i32 %i.brt to i64
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.bsv
  store float %i.bsf, ptr %i.bsw, align 4, !tbaa !37
  br i1 %.not184.i, label %.loopexit124.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bsx = lshr i32 %i.bsp, 3
  %i.bsy = zext nneg i32 %i.bsx to i64
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bsy
  %i.bta = load i32, ptr %i.bsz, align 1, !tbaa !30
  %i.btb = call i32 @llvm.bswap.i32(i32 %i.bta)
  %i.btc = and i32 %i.bsp, 7
  %i.btd = shl i32 %i.btb, %i.btc
  %i.bte = lshr i32 %i.btd, %i.bku                ; 2 uses
  %i.btf = add i32 %i.bsp, %i.bkr
  %i.btg = call i32 @llvm.umin.i32(i32 %i.bkt, i32 %i.btf)
  store i32 %i.btg, ptr %i.at, align 8, !tbaa !52
  %i.bth = mul nuw nsw i32 %i.bte, 5
  %i.bti = add nuw nsw i32 %i.bth, 4
  %i.btj = zext nneg i32 %i.bsu to i64
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.btj
  store i32 %i.bti, ptr %i.btk, align 4, !tbaa !56
  %i.btl = icmp samesign ult i32 %i.bsn, %i.bte
  %i.btm = fneg nsz float %i.bsf
  %i.btn = select nsz i1 %i.btl, float %i.btm, float %i.bsf
  %i.bto = load i32, ptr %3, align 4, !tbaa !150  ; 2 uses
  %i.btp = add nsw i32 %i.bto, 1
  store i32 %i.btp, ptr %3, align 4, !tbaa !150
  %i.btq = sext i32 %i.bto to i64
  %i.btr = getelementptr inbounds [4 x i8], ptr %i.aft, i64 %i.btq
  store float %i.btn, ptr %i.btr, align 4, !tbaa !37
  br label %.loopexit124.i.i.i

.loopexit124.i.i.i:                               ; preds = %bb.dt, %bb.ds, %aw_pulse_set2.exit.thread.i.i.i
  call void @ff_set_fixed_vector(ptr noundef nonnull %i.b, ptr noundef nonnull %3, float noundef 1.000000e+00, i32 noundef range(i32 0, 161) %.zext.i) #12
  %i.bts = load i32, ptr %i.at, align 8, !tbaa !52 ; 3 uses
  %i.btt = load i32, ptr %i.ay, align 8, !tbaa !51
  %i.btu = load ptr, ptr %.0114, align 8, !tbaa !49
  %i.btv = lshr i32 %i.bts, 3
  %i.btw = zext nneg i32 %i.btv to i64
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btu, i64 %i.btw
  %i.bty = load i32, ptr %i.btx, align 1, !tbaa !30
  %i.btz = call i32 @llvm.bswap.i32(i32 %i.bty)
  %i.bua = and i32 %i.bts, 7
  %i.bub = shl i32 %i.btz, %i.bua
  %i.buc = lshr i32 %i.bub, 25
  %i.bud = add i32 %i.bts, 7
  %i.bue = call i32 @llvm.umin.i32(i32 %i.btt, i32 %i.bud)
  store i32 %i.bue, ptr %i.at, align 8, !tbaa !52
  %i.buf = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.atb, ptr noundef nonnull @synth_block_fcb_acb.gain_coeff, i32 noundef 6) #12
  %i.bug = zext nneg i32 %i.buc to i64            ; 2 uses
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_codebook_fcb, i64 %i.bug
  %i.bui = load float, ptr %i.buh, align 4, !tbaa !37 ; 3 uses
  %i.buj = getelementptr inbounds nuw [4 x i8], ptr @wmavoice_gain_codebook_acb, i64 %i.bug
  %i.buk = load float, ptr %i.buj, align 4, !tbaa !37
  %i.bul = fcmp nsz ogt float %i.bui, f0xC03FBA14
  %i.bum = select nsz i1 %i.bul, float %i.bui, float f0xC03FBA14 ; 2 uses
  %i.bun = fcmp nsz ogt float %i.bum, f0x3FCE0210
  %..i113.i.i.i = select nsz i1 %i.bun, float f0x3FCE0210, float %i.bum ; 9 uses
  %i.buo = load i8, ptr %i.aso, align 1, !tbaa !136
  %i.bup = zext nneg i8 %i.buo to i32
  %i.buq = lshr i32 8, %i.bup                     ; 3 uses
  %i.bur = zext nneg i32 %i.buq to i64            ; 3 uses
  %i.bus = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %i.bur
  %i.but = sub nsw i32 6, %i.buq
  %i.buu = sext i32 %i.but to i64
  %i.buv = shl nsw i64 %i.buu, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bus, ptr nonnull align 4 %i.atb, i64 %i.buv, i1 false)
  %xtraiter517 = and i64 %i.bur, 7                ; 3 uses
  %5 = add nsw i32 %i.buq, -1
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %.lr.ph132.i.i.i.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %.loopexit124.i.i.i
  %n.vec404 = and i64 %i.bur, 8
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph403
  %indvars.iv143.i.i.i = phi i64 [ 0, %vector.ph403 ], [ %indvars.iv.next144.i.i.i.7, %vector.body407 ] ; 9 uses
  %index408 = phi i64 [ 0, %vector.ph403 ], [ %index.next409, %vector.body407 ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  store float %..i113.i.i.i, ptr %7, align 4, !tbaa !37
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %..i113.i.i.i, ptr %9, align 4, !tbaa !37
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %..i113.i.i.i, ptr %11, align 4, !tbaa !37
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store float %..i113.i.i.i, ptr %13, align 4, !tbaa !37
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store float %..i113.i.i.i, ptr %15, align 4, !tbaa !37
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 20
  store float %..i113.i.i.i, ptr %17, align 4, !tbaa !37
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store float %..i113.i.i.i, ptr %19, align 4, !tbaa !37
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i
  %20 = getelementptr inbounds nuw i8, ptr %i.buw, i64 28
  store float %..i113.i.i.i, ptr %20, align 4, !tbaa !37
  %indvars.iv.next144.i.i.i.7 = add nuw nsw i64 %indvars.iv143.i.i.i, 8 ; 2 uses
  %index.next409 = add i64 %index408, 8           ; 2 uses
  %i.bux = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.bux, label %middle.block410, label %vector.body407, !llvm.loop !117

middle.block410:                                  ; preds = %vector.body407
  %cmp.n411 = icmp eq i64 %xtraiter517, 0
  br i1 %cmp.n411, label %._crit_edge133.i.i.i, label %.lr.ph132.i.i.i.preheader

.lr.ph132.i.i.i.preheader:                        ; preds = %middle.block410, %.loopexit124.i.i.i
  %indvars.iv143.i.i.i.ph = phi i64 [ 0, %.loopexit124.i.i.i ], [ %indvars.iv.next144.i.i.i.7, %middle.block410 ]
  %lcmp.mod519 = icmp ne i64 %xtraiter517, 0
  call void @llvm.assume(i1 %lcmp.mod519)
  br label %.lr.ph132.i.i.i

.lr.ph132.i.i.i:                                  ; preds = %.lr.ph132.i.i.i, %.lr.ph132.i.i.i.preheader
  %indvars.iv143.i.i.i.epil = phi i64 [ %indvars.iv.next144.i.i.i.epil, %.lr.ph132.i.i.i ], [ %indvars.iv143.i.i.i.ph, %.lr.ph132.i.i.i.preheader ] ; 2 uses
  %indvars.iv143.i.i.i.a = phi i64 [ %indvars.iv.next144.i.i.i, %.lr.ph132.i.i.i ], [ 0, %.lr.ph132.i.i.i.preheader ]
  %i.buy = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv143.i.i.i.epil
  store float %..i113.i.i.i, ptr %i.buy, align 4, !tbaa !37
  %indvars.iv.next144.i.i.i.epil = add nuw nsw i64 %indvars.iv143.i.i.i.epil, 1
  %indvars.iv.next144.i.i.i = add i64 %indvars.iv143.i.i.i.a, 1 ; 2 uses
  %exitcond147.not.i.i.i = icmp eq i64 %indvars.iv.next144.i.i.i, %xtraiter517
  br i1 %exitcond147.not.i.i.i, label %._crit_edge133.i.i.i, label %.lr.ph132.i.i.i, !llvm.loop !118

._crit_edge133.i.i.i:                             ; preds = %.lr.ph132.i.i.i, %middle.block410
  %i.buz = fpext nsz float %i.buf to double
  %i.bva = fadd nsz double %i.buz, f0xC014F6B2BA15D4C2
  %i.bvb = fpext nsz float %i.bui to double
  %i.bvc = fadd nsz double %i.bva, %i.bvb
  %i.bvd = fptrunc nsz double %i.bvc to float
  %i.bve = call nsz float @llvm.exp.f32(float %i.bvd)
  br i1 %i.ams, label %.lr.ph135.i.i.i, label %bb.dw

.lr.ph135.i.i.i:                                  ; preds = %._crit_edge133.i.i.i, %bb.dv
  %.3134.i.i.i = phi i32 [ %i.bwe, %bb.dv ], [ 0, %._crit_edge133.i.i.i ] ; 5 uses
  %i.bvf = add nsw i32 %.3134.i.i.i, %i.ayo
  %i.bvg = load i32, ptr %i.atc, align 16, !tbaa !138
  %i.bvh = shl i32 %i.bvg, 16
  %i.bvi = load i32, ptr %i.atd, align 8, !tbaa !139 ; 4 uses
  %i.bvj = mul nsw i32 %i.bvi, %i.bvf
  %i.bvk = add nsw i32 %i.bvj, %i.bvh             ; 2 uses
  %i.bvl = add nsw i32 %i.bvk, 28671              ; 2 uses
  %i.bvm = ashr i32 %i.bvl, 16
  %i.bvn = and i32 %i.bvl, -65536
  %i.bvo = sub nsw i32 %i.bvn, %i.bvk
  %i.bvp = shl nsw i32 %i.bvo, 3                  ; 2 uses
  %i.bvq = add nsw i32 %i.bvp, 360448             ; 3 uses
  %i.bvr = ashr i32 %i.bvq, 16
  %.not112.i.i.i = icmp eq i32 %i.bvi, 0
  br i1 %.not112.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.lr.ph135.i.i.i
  %i.bvs = icmp sgt i32 %i.bvi, 0
  %i.bvt = add nsw i32 %i.bvp, 425984
  %.0.in.i.i.i = select i1 %i.bvs, i32 %i.bvq, i32 %i.bvt
  %.0.i33.i.i = and i32 %.0.in.i.i.i, -65536
  %i.bvu = sub nsw i32 %i.bvq, %.0.i33.i.i
  %i.bvv = sdiv i32 %i.bvu, %i.bvi                ; 2 uses
  %i.bvw = sdiv i32 %i.bvv, 8
  %i.bvx = sub nsw i32 %.zext.i, %.3134.i.i.i
  %i.bvy = icmp slt i32 %i.bvv, 8
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bvw, i32 %i.bvx)
  %.0.i.i.i.i = select i1 %i.bvy, i32 1, i32 %..i.i.i.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph135.i.i.i
  %.0105.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.du ], [ %.zext.i, %.lr.ph135.i.i.i ] ; 2 uses
  %i.bvz = sext i32 %.3134.i.i.i to i64
  %i.bwa = getelementptr inbounds [4 x i8], ptr %i.ayp, i64 %i.bvz
  %i.bwb = sub nsw i32 %.3134.i.i.i, %i.bvm
  %i.bwc = sext i32 %i.bwb to i64
  %i.bwd = getelementptr inbounds [4 x i8], ptr %i.ayp, i64 %i.bwc
  call void @ff_acelp_interpolatef(ptr noundef nonnull %i.bwa, ptr noundef nonnull %i.bwd, ptr noundef nonnull @wmavoice_ipol1_coeffs, i32 noundef 17, i32 noundef %i.bvr, i32 noundef 9, i32 noundef %.0105.i.i.i) #12
  %i.bwe = add nsw i32 %.0105.i.i.i, %.3134.i.i.i ; 2 uses
  %i.bwf = icmp slt i32 %i.bwe, %.zext.i
  br i1 %i.bwf, label %.lr.ph135.i.i.i, label %.loopexit.i.i.i, !llvm.loop !119

bb.dw:                                            ; preds = %._crit_edge133.i.i.i
  %i.bwg = and i32 %.1182256.i, 3                 ; 2 uses
  %.not111.i.i.i = icmp eq i32 %i.bwg, 0
  br i1 %.not111.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bwh = sub nsw i32 0, %i.ayr
  %i.bwi = sext i32 %i.bwh to i64
  %i.bwj = getelementptr inbounds [4 x i8], ptr %i.ayp, i64 %i.bwi
  call void @ff_acelp_interpolatef(ptr noundef nonnull %i.ayp, ptr noundef nonnull %i.bwj, ptr noundef nonnull @wmavoice_ipol2_coeffs, i32 noundef 4, i32 noundef %i.bwg, i32 noundef 8, i32 noundef range(i32 0, 161) %.zext.i) #12
  br label %.loopexit.i.i.i

bb.dy:                                            ; preds = %bb.dw
  call void @av_memcpy_backptr(ptr noundef nonnull %i.ayp, i32 noundef %.1182256.i, i32 noundef %i.asl) #12
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.dv, %bb.dy, %bb.dx
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.ayp, ptr noundef nonnull %i.ayp, ptr noundef nonnull %i.b, float noundef %i.buk, float noundef %i.bve, i32 noundef range(i32 0, 161) %.zext.i) #12
  br label %synth_block_fcb_acb.exit.i.i

synth_block_fcb_acb.exit.i.i:                     ; preds = %.loopexit.i.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %synth_block_hardcoded.exit.i.i

synth_block_hardcoded.exit.i.i:                   ; preds = %.lr.ph.i.i.i, %middle.block398, %synth_block_fcb_acb.exit.i.i
  %i.bwk = phi ptr [ %i.ayq, %synth_block_fcb_acb.exit.i.i ], [ %i.awb, %middle.block398 ], [ %i.awb, %.lr.ph.i.i.i ]
  %i.bwl = phi ptr [ %i.ayp, %synth_block_fcb_acb.exit.i.i ], [ %i.awa, %middle.block398 ], [ %i.awa, %.lr.ph.i.i.i ]
  %.1153180.i = phi i32 [ %.1153181257.i, %synth_block_fcb_acb.exit.i.i ], [ %.0152200.i, %middle.block398 ], [ %.0152200.i, %.lr.ph.i.i.i ]
  %i.bwm = load i32, ptr %i.ate, align 4, !tbaa !44 ; 4 uses
  %i.bwn = icmp sgt i32 %i.bwm, 0
  br i1 %i.bwn, label %.lr.ph.i177.i, label %synth_block.exit.i

.lr.ph.i177.i:                                    ; preds = %synth_block_hardcoded.exit.i.i
  %i.bwo = uitofp nsz nneg i32 %indvars217.i to double
  %i.bwp = fadd nsz double %i.bwo, 5.000000e-01
  %i.bwq = fdiv nsz double %i.bwp, %i.atf
  %i.bwr = fptrunc nsz double %i.bwq to float
  %i.bws = fpext nsz float %i.bwr to double       ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bwm to i64 ; 5 uses
  %min.iters.check376 = icmp eq i32 %i.bwm, 1
  %or.cond = select i1 %min.iters.check376, i1 true, i1 %diff.check373
  br i1 %or.cond, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %.lr.ph.i177.i
  %n.vec378 = and i64 %wide.trip.count.i.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bws, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next383, %vector.body379 ] ; 4 uses
  %i.bwt = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %index380
  %wide.load381 = load <2 x double>, ptr %i.bwt, align 8, !tbaa !46 ; 2 uses
  %i.bwu = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %index380
  %wide.load382 = load <2 x double>, ptr %i.bwu, align 16, !tbaa !46
  %i.bwv = fsub nsz <2 x double> %wide.load382, %wide.load381
  %i.bww = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.bwv, <2 x double> %wide.load381)
  %i.bwx = call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.bww)
  %i.bwy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index380
  store <2 x double> %i.bwx, ptr %i.bwy, align 16, !tbaa !46
  %index.next383 = add nuw i64 %index380, 2       ; 2 uses
  %i.bwz = icmp eq i64 %index.next383, %n.vec378
  br i1 %i.bwz, label %middle.block384, label %vector.body379, !llvm.loop !120

middle.block384:                                  ; preds = %vector.body379
  %cmp.n385 = icmp eq i64 %n.vec378, %wide.trip.count.i.i
  br i1 %cmp.n385, label %synth_block.exit.i, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %.lr.ph.i177.i, %middle.block384
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i177.i ], [ %n.vec378, %middle.block384 ] ; 6 uses
  %xtraiter529 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %scalar.ph375.prol.loopexit, label %scalar.ph375.prol

scalar.ph375.prol:                                ; preds = %scalar.ph375.preheader
  %i.bxa = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv.i.i.ph
  %i.bxb = load double, ptr %i.bxa, align 8, !tbaa !46 ; 2 uses
  %i.bxc = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %indvars.iv.i.i.ph
  %i.bxd = load double, ptr %i.bxc, align 16, !tbaa !46
  %i.bxe = fsub nsz double %i.bxd, %i.bxb
  %i.bxf = call nsz double @llvm.fmuladd.f64(double %i.bws, double %i.bxe, double %i.bxb)
  %i.bxg = call nsz double @llvm.cos.f64(double %i.bxf)
  %i.bxh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i.ph
  store double %i.bxg, ptr %i.bxh, align 16, !tbaa !46
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph375.prol.loopexit

scalar.ph375.prol.loopexit:                       ; preds = %scalar.ph375.prol, %scalar.ph375.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph375.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph375.prol ]
  %i.bxi = add nsw i64 %wide.trip.count.i.i, -1
  %i.bxj = icmp eq i64 %indvars.iv.i.i.ph, %i.bxi
  br i1 %i.bxj, label %synth_block.exit.i, label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.prol.loopexit, %scalar.ph375
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph375 ], [ %indvars.iv.i.i.unr, %scalar.ph375.prol.loopexit ] ; 5 uses
  %i.bxk = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv.i.i
  %i.bxl = load double, ptr %i.bxk, align 8, !tbaa !46 ; 2 uses
  %i.bxm = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %indvars.iv.i.i
  %i.bxn = load double, ptr %i.bxm, align 8, !tbaa !46
  %i.bxo = fsub nsz double %i.bxn, %i.bxl
  %i.bxp = call nsz double @llvm.fmuladd.f64(double %i.bws, double %i.bxo, double %i.bxl)
  %i.bxq = call nsz double @llvm.cos.f64(double %i.bxp)
  %i.bxr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i
  store double %i.bxq, ptr %i.bxr, align 8, !tbaa !46
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.bxs = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv.next.i.i
  %i.bxt = load double, ptr %i.bxs, align 8, !tbaa !46 ; 2 uses
  %i.bxu = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %indvars.iv.next.i.i
  %i.bxv = load double, ptr %i.bxu, align 8, !tbaa !46
  %i.bxw = fsub nsz double %i.bxv, %i.bxt
  %i.bxx = call nsz double @llvm.fmuladd.f64(double %i.bws, double %i.bxw, double %i.bxt)
  %i.bxy = call nsz double @llvm.cos.f64(double %i.bxx)
  %i.bxz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  store double %i.bxy, ptr %i.bxz, align 8, !tbaa !46
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %synth_block.exit.i, label %scalar.ph375, !llvm.loop !121

synth_block.exit.i:                               ; preds = %scalar.ph375.prol.loopexit, %scalar.ph375, %middle.block384, %synth_block_hardcoded.exit.i.i
  %i.bya = ashr i32 %i.bwm, 1
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef %i.bya) #12
  %i.byb = load i32, ptr %i.ate, align 4, !tbaa !44
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.bwk, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bwl, i32 noundef range(i32 0, 161) %.zext.i, i32 noundef %i.byb) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %exitcond220.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count219.i
  br i1 %exitcond220.not.i, label %bb.dz, label %bb.bn, !llvm.loop !122

bb.dz:                                            ; preds = %synth_block.exit.i
  %i.byc = getelementptr inbounds nuw i8, ptr %i.ajx, i64 60
  %i.byd = load i32, ptr %i.byc, align 4, !tbaa !36
  %.not169.i = icmp eq i32 %i.byd, 0
  br i1 %.not169.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.bye = load i32, ptr %i.f, align 16           ; 3 uses
  %i.byf = icmp ne i32 %i.bye, 2147483647
  %or.cond.not.i = select i1 %i.ask, i1 true, i1 %i.byf
  br i1 %or.cond.not.i, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.ea
end_hunk_1
begin_hunk_2_@ff_set_fixed_vector
declare void @ff_set_fixed_vector(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare float @ff_scalarproduct_float_c(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

declare void @ff_acelp_interpolatef(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @av_memcpy_backptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_weighted_vector_sumf(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_celp_lp_zero_synthesis_filterf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_acelp_apply_order_2_transfer_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @ff_tilt_compensation(ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 380}
!30 = !{!5, !5, i64 0}
!31 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24}
!33 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!34 = !{!"WMAVoiceContext", !31, i64 0, !5, i64 24, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !5, i64 116, !6, i64 124, !6, i64 128, !6, i64 132, !5, i64 136, !6, i64 456, !32, i64 464, !5, i64 496, !6, i64 624, !6, i64 628, !6, i64 632, !16, i64 636, !6, i64 640, !6, i64 644, !5, i64 648, !5, i64 656, !6, i64 664, !6, i64 668, !6, i64 672, !5, i64 676, !5, i64 700, !5, i64 2364, !33, i64 2432, !33, i64 2440, !9, i64 2448, !9, i64 2456, !33, i64 2464, !33, i64 2472, !9, i64 2480, !9, i64 2488, !5, i64 2496, !5, i64 4540, !16, i64 6584, !5, i64 6588, !5, i64 6596, !5, i64 10180, !6, i64 10820, !5, i64 10832, !5, i64 11360, !5, i64 11888}
!35 = !{!34, !6, i64 52}
!36 = !{!34, !6, i64 60}
!37 = !{!16, !16, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!34, !6, i64 64}
!40 = !{!34, !6, i64 68}
!41 = !{!34, !6, i64 72}
!42 = !{!34, !6, i64 80}
!43 = !{!34, !6, i64 84}
!44 = !{!34, !6, i64 76}
!45 = !{!"double", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!31, !14, i64 0}
!50 = !{!31, !6, i64 12}
!51 = !{!31, !6, i64 16}
!52 = !{!31, !6, i64 8}
!53 = !{!34, !6, i64 88}
!54 = !{!34, !6, i64 92}
!55 = !{!34, !6, i64 96}
!56 = !{!6, !6, i64 0}
!57 = !{!34, !6, i64 56}
!58 = !{!"short", !5, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!34, !6, i64 112}
!61 = !{!34, !6, i64 108}
!62 = !{!34, !6, i64 104}
!63 = !{!34, !6, i64 100}
!64 = !{!34, !6, i64 128}
!65 = !{!34, !6, i64 456}
!66 = !{!32, !6, i64 4}
!67 = !{!32, !6, i64 0}
!68 = !{!32, !14, i64 16}
!69 = !{!32, !14, i64 24}
!70 = !{!34, !6, i64 132}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38, !47, !48}
!73 = !{!27, !6, i64 80}
!74 = !{!27, !14, i64 72}
!75 = !{!27, !6, i64 344}
!76 = !{!9, !9, i64 0}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!81 = !{!80, !14, i64 24}
!82 = !{!80, !6, i64 32}
!83 = !{!34, !6, i64 124}
!84 = !{!34, !6, i64 672}
!85 = !{!32, !14, i64 8}
!86 = distinct !{!86, !38}
!87 = !{!34, !16, i64 6584}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38, !47, !48}
!90 = distinct !{!90, !38, !48, !47}
!91 = distinct !{!91, !38, !47, !48}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38, !48, !47}
!97 = distinct !{!97, !38, !47, !48}
!98 = distinct !{!98, !38, !48, !47}
!99 = distinct !{!99, !38, !47, !48}
!100 = distinct !{!100, !38, !48, !47}
!101 = distinct !{!101, !38}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38, !47, !48}
!105 = distinct !{!105, !38, !48, !47}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !38, !47, !48}
!115 = distinct !{!115, !154}
!116 = distinct !{!116, !38, !47}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !154}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38, !47, !48}
!121 = distinct !{!121, !38, !47}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38, !47, !48}
!124 = distinct !{!124, !38, !47}
!125 = distinct !{!125, !38, !47, !48}
!126 = distinct !{!126, !38, !48, !47}
!127 = distinct !{!127, !38}
!128 = !{!"p2 omnipotent char", !25, i64 0}
!129 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!130 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!131 = !{!"AVFrame", !5, i64 0, !5, i64 64, !128, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !129, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !130, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!132 = !{!131, !6, i64 112}
!133 = !{!14, !14, i64 0}
!134 = !{!"frame_type_desc", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!135 = !{!134, !5, i64 0}
!136 = !{!134, !5, i64 1}
!137 = !{!34, !6, i64 628}
!138 = !{!34, !6, i64 624}
!139 = !{!34, !6, i64 632}
!140 = !{!134, !5, i64 3}
!141 = !{!34, !16, i64 636}
!142 = !{!34, !6, i64 640}
!143 = !{!34, !6, i64 644}
!144 = !{!134, !5, i64 2}
!145 = !{!34, !6, i64 668}
!146 = !{!"AMRFixed", !6, i64 0, !5, i64 4, !5, i64 44, !6, i64 84, !6, i64 88, !16, i64 92}
!147 = !{!146, !6, i64 88}
!148 = !{!146, !16, i64 92}
!149 = !{!146, !6, i64 84}
!150 = !{!146, !6, i64 0}
!151 = !{!34, !6, i64 664}
!152 = !{!112}
!153 = !{!113}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = distinct !{!155, !38}
!156 = distinct !{null, null}
!157 = distinct !{!157, !38}
!158 = distinct !{!158, !38}
!159 = distinct !{null}
!160 = distinct !{!160, !38, !47, !48}
!161 = distinct !{!161, !38, !47, !48}
!162 = distinct !{!162, !38, !48, !47}
!163 = distinct !{!163, !38, !48, !47}
!164 = distinct !{!164, !38}
!165 = distinct !{!165, !38}
!166 = !{!34, !9, i64 2448}
!167 = !{!34, !33, i64 2432}
!168 = !{!34, !9, i64 2480}
!169 = !{!34, !33, i64 2464}
!170 = !{!34, !9, i64 2488}
!171 = !{!34, !33, i64 2472}
!172 = !{!34, !9, i64 2456}
!173 = !{!34, !33, i64 2440}
!174 = !{!34, !6, i64 10820}
end_hunk_2
