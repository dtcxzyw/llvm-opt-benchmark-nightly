inline.NumInlined: 58
inline.NumDeleted: 1
begin_hunk_0_@cli_scanpe:bb.a
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !75 ; 3 uses
  %.not2796 = icmp ne i64 %i.akn, 0
  %i.ako = zext i32 %i.akk to i64                 ; 2 uses
  %i.akp = icmp ult i64 %i.akn, %i.ako
  %or.cond3043 = select i1 %.not2796, i1 %i.akp, i1 false
  br i1 %or.cond3043, label %bb.ph, label %bb.pj

bb.ph:                                            ; preds = %bb.pg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.akk, i64 noundef %i.akn) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.akq = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.akr = and i32 %i.akq, 256
  %.not2813 = icmp eq i32 %i.akr, 0
  br i1 %.not2813, label %.critedge3020, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.aks = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.153, ptr %i.aks, align 8, !tbaa !21
  br label %.critedge3020

bb.pj:                                            ; preds = %._crit_edge3612, %bb.pg
  %.pre-phi3625 = phi i64 [ %.pre3624, %._crit_edge3612 ], [ %i.ako, %bb.pg ]
  %i.akt = call ptr @cli_malloc(i64 noundef %.pre-phi3625) #13 ; 14 uses
  %i.aku = icmp eq ptr %i.akt, null
  br i1 %i.aku, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.pl:                                            ; preds = %bb.pj
  %i.akv = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.akt, i32 noundef %i.akk) #13
  %.not2797 = icmp eq i32 %i.akv, %i.akk
  br i1 %.not2797, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.170, i32 noundef %i.akk) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.akt) #13
  br label %.critedge3020

bb.pn:                                            ; preds = %bb.pl
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  %.val3087 = load i32, ptr %i.akw, align 1
  %i.akx = load i32, ptr %i.ajf, align 4, !tbaa !32 ; 2 uses
  %i.aky = sub i32 %.val3087, %i.akx              ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akt, i64 8 ; 5 uses
  %.val3086 = load i32, ptr %i.akz, align 1
  %i.ala = sub i32 %.val3086, %i.akx              ; 4 uses
  %i.alb = load i32, ptr %i.ajl, align 4, !tbaa !45 ; 2 uses
  %i.alc = icmp ult i32 %i.ala, %i.alb
  br i1 %i.alc, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.ald = sub nuw i32 %i.ala, %i.alb
  %i.ale = load i32, ptr %i.ajm, align 4, !tbaa !50
  %.not2798 = icmp ult i32 %i.ald, %i.ale
  br i1 %.not2798, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.161) #13
  call void @free(ptr noundef nonnull %i.akt) #13
  br label %bb.qw

bb.pq:                                            ; preds = %bb.po
  %i.alf = load i32, ptr %i.ajp, align 4, !tbaa !45 ; 2 uses
  %.not2799 = icmp eq i32 %i.aky, %i.alf
  br i1 %.not2799, label %.preheader3345, label %bb.pr

.preheader3345:                                   ; preds = %bb.pq
  %i.alg = add i32 %i.akk, -4                     ; 2 uses
  %i.alh = icmp ugt i32 %i.alg, 12
  br i1 %i.alh, label %.lr.ph3445, label %.loopexit

bb.pr:                                            ; preds = %bb.pq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.171, i32 noundef %i.aky, i32 noundef %i.alf) #13
  call void @free(ptr noundef nonnull %i.akt) #13
  br label %bb.qw

.lr.ph3445:                                       ; preds = %.preheader3345, %bb.pw
  %i.ali = phi i32 [ %i.alp, %bb.pw ], [ %i.aky, %.preheader3345 ]
  %.023363444 = phi i32 [ %i.alt, %bb.pw ], [ 12, %.preheader3345 ] ; 2 uses
  %.023593443 = phi i32 [ %i.aln, %bb.pw ], [ 0, %.preheader3345 ] ; 2 uses
  %i.alj = zext i32 %.023363444 to i64            ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.alj
  %.val3085 = load i32, ptr %i.alk, align 1       ; 2 uses
  %.not2800 = icmp eq i32 %.val3085, 0
  br i1 %.not2800, label %.loopexit3346.thread, label %bb.ps

bb.ps:                                            ; preds = %.lr.ph3445
  %i.all = load i32, ptr %i.ajf, align 4, !tbaa !32
  %.neg2801 = xor i32 %i.all, -1
  %i.alm = add i32 %.val3085, %.neg2801           ; 3 uses
  %i.aln = add nuw nsw i32 %.023593443, 1         ; 4 uses
  %i.alo = and i32 %i.alm, 4095
  %.not2802 = icmp eq i32 %i.alo, 0
  br i1 %.not2802, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.172, i32 noundef %i.aln) #13
  %.pre3605 = load i32, ptr %i.ajp, align 4, !tbaa !45
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.alp = phi i32 [ %.pre3605, %bb.pt ], [ %i.ali, %bb.ps ] ; 3 uses
  %i.alq = icmp ult i32 %i.alm, %i.alp
  br i1 %i.alq, label %.loopexit3346, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.alr = sub nuw i32 %i.alm, %i.alp
  %i.als = load i32, ptr %i.ajq, align 4, !tbaa !48
  %.not2803 = icmp ult i32 %i.alr, %i.als
  br i1 %.not2803, label %bb.pw, label %.loopexit3346

bb.pw:                                            ; preds = %bb.pv
  %i.alt = add i32 %.023363444, 4                 ; 2 uses
  %i.alu = icmp ult i32 %i.alt, %i.alg
  br i1 %i.alu, label %.lr.ph3445, label %.loopexit, !llvm.loop !77

.loopexit3346:                                    ; preds = %bb.pu, %bb.pv
  %i.alv = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.alj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.173, i32 noundef %i.aln) #13
  %.val3084.pre = load i32, ptr %i.alv, align 1
  %i.alw = icmp eq i32 %.val3084.pre, 0
  br i1 %i.alw, label %.loopexit3346.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.pw, %.preheader3345, %.loopexit3346
  call void @free(ptr noundef nonnull %i.akt) #13
  br label %bb.qw

.loopexit3346.thread:                             ; preds = %.lr.ph3445, %.loopexit3346
  %.12360.ph3836 = phi i32 [ %i.aln, %.loopexit3346 ], [ %.023593443, %.lr.ph3445 ] ; 3 uses
  %i.alx = add i32 %.12360.ph3836, 1              ; 3 uses
  %i.aly = sext i32 %i.alx to i64
  %i.alz = mul nsw i64 %i.aly, 36
  %i.ama = call ptr @cli_malloc(i64 noundef %i.alz) #13 ; 20 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %bb.px, label %bb.py

bb.px:                                            ; preds = %.loopexit3346.thread
  call void @free(ptr noundef %i.em) #13
  call void @free(ptr noundef nonnull %i.akt) #13
  br label %.critedge3020

bb.py:                                            ; preds = %.loopexit3346.thread
  store i32 %i.aky, ptr %i.ama, align 4, !tbaa !45
  %.not28063446 = icmp eq i32 %.12360.ph3836, 0
  br i1 %.not28063446, label %._crit_edge3450, label %.lr.ph3449.preheader

.lr.ph3449.preheader:                             ; preds = %bb.py
  %umax = call i32 @llvm.umax.i32(i32 %i.alx, i32 2)
  %wide.trip.count3562 = zext i32 %umax to i64    ; 7 uses
  %i.amc = add nsw i64 %wide.trip.count3562, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.alx, 21
  br i1 %min.iters.check, label %.lr.ph3449.preheader3947, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3449.preheader
  %i.amd = add nsw i64 %wide.trip.count3562, -2   ; 2 uses
  %i.ame = and i64 %i.amd, 1073741823
  %i.amf = icmp eq i64 %i.ame, 1073741823
  %i.amg = icmp ugt i64 %i.amd, 1073741823
  %i.amh = or i1 %i.amf, %i.amg
  br i1 %i.amh, label %.lr.ph3449.preheader3947, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.ama, i64 36 ; 2 uses
  %i.ami = mul nuw nsw i64 %wide.trip.count3562, 36
  %i.amj = getelementptr i8, ptr %i.ama, i64 %i.ami
  %scevgep3938 = getelementptr i8, ptr %i.amj, i64 -32 ; 2 uses
  %scevgep3939 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %scevgep3940 = getelementptr i8, ptr %i.akt, i64 12
  %i.amk = shl nuw nsw i64 %wide.trip.count3562, 2
  %i.aml = getelementptr i8, ptr %i.akt, i64 %i.amk
  %scevgep3941 = getelementptr i8, ptr %i.aml, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep3939
  %bound1 = icmp ult ptr %i.ajf, %scevgep3938
  %found.conflict = and i1 %bound0, %bound1
  %bound03942 = icmp ult ptr %scevgep, %scevgep3941
  %bound13943 = icmp ult ptr %scevgep3940, %scevgep3938
  %found.conflict3944 = and i1 %bound03942, %bound13943
  %conflict.rdx = or i1 %found.conflict, %found.conflict3944
  br i1 %conflict.rdx, label %.lr.ph3449.preheader3947, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amc, -4                     ; 3 uses
  %i.amm = or disjoint i64 %n.vec, 1
  %i.amn = load i32, ptr %i.ajf, align 4, !tbaa !32, !alias.scope !78
  %i.amo = xor i32 %i.amn, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.amp = or disjoint i64 %index, 1              ; 2 uses
  %i.amq = shl i64 %i.amp, 2
  %i.amr = and i64 %i.amq, 4294967284
  %i.ams = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.amr
  %wide.load = load <4 x i32>, ptr %i.ams, align 1, !alias.scope !81
  %i.amt = add <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %5 = getelementptr inbounds nuw [36 x i8], ptr %i.ama, i64 %i.amp
  %6 = getelementptr inbounds nuw [36 x i8], ptr %i.ama, i64 %index
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 72
  %8 = getelementptr inbounds nuw [36 x i8], ptr %i.ama, i64 %index
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 108
  %i.amu = getelementptr [36 x i8], ptr %i.ama, i64 %index
  %i.amv = getelementptr i8, ptr %i.amu, i64 144
  %10 = extractelement <4 x i32> %i.amt, i64 0
  store i32 %10, ptr %5, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %11 = extractelement <4 x i32> %i.amt, i64 1
  store i32 %11, ptr %7, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %12 = extractelement <4 x i32> %i.amt, i64 2
  store i32 %12, ptr %9, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %13 = extractelement <4 x i32> %i.amt, i64 3
  store i32 %13, ptr %i.amv, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.amw = icmp eq i64 %index.next, %n.vec
  br i1 %i.amw, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amc, %n.vec
  br i1 %cmp.n, label %._crit_edge3450, label %.lr.ph3449.preheader3947

.lr.ph3449.preheader3947:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3449.preheader, %middle.block
  %indvars.iv3559.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph3449.preheader ], [ %i.amm, %middle.block ] ; 5 uses
  %i.amx = and i64 %wide.trip.count3562, 1
  %lcmp.mod.not.not = icmp eq i64 %i.amx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph3449.prol, label %.lr.ph3449.prol.loopexit

.lr.ph3449.prol:                                  ; preds = %.lr.ph3449.preheader3947
  %i.amy = shl nsw i64 %indvars.iv3559.ph, 2
  %i.amz = and i64 %i.amy, 4294967292
  %i.ana = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.amz
  %.val3083.prol = load i32, ptr %i.ana, align 1
  %i.anb = load i32, ptr %i.ajf, align 4, !tbaa !32
  %i.anc = xor i32 %i.anb, -1
  %i.and = add i32 %.val3083.prol, %i.anc
  %i.ane = getelementptr inbounds nuw [36 x i8], ptr %i.ama, i64 %indvars.iv3559.ph
  store i32 %i.and, ptr %i.ane, align 4, !tbaa !45
  %indvars.iv.next3560.prol = add nuw nsw i64 %indvars.iv3559.ph, 1
  br label %.lr.ph3449.prol.loopexit

.lr.ph3449.prol.loopexit:                         ; preds = %.lr.ph3449.prol, %.lr.ph3449.preheader3947
  %indvars.iv3559.unr = phi i64 [ %indvars.iv3559.ph, %.lr.ph3449.preheader3947 ], [ %indvars.iv.next3560.prol, %.lr.ph3449.prol ]
  %i.anf = add nsw i64 %wide.trip.count3562, -1
  %i.ang = icmp eq i64 %indvars.iv3559.ph, %i.anf
  br i1 %i.ang, label %._crit_edge3450, label %.lr.ph3449

.lr.ph3449:                                       ; preds = %.lr.ph3449.prol.loopexit, %.lr.ph3449
  %indvars.iv3559 = phi i64 [ %indvars.iv.next3560.1, %.lr.ph3449 ], [ %indvars.iv3559.unr, %.lr.ph3449.prol.loopexit ] ; 4 uses
  %i.anh = shl i64 %indvars.iv3559, 2
  %i.ani = and i64 %i.anh, 4294967292
  %i.anj = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.ani
  %.val3083 = load i32, ptr %i.anj, align 1
  %i.ank = load i32, ptr %i.ajf, align 4, !tbaa !32
  %i.anl = xor i32 %i.ank, -1
  %i.anm = add i32 %.val3083, %i.anl
  %i.ann = getelementptr inbounds nuw [36 x i8], ptr %i.ama, i64 %indvars.iv3559
  store i32 %i.anm, ptr %i.ann, align 4, !tbaa !45
  %indvars.iv.next3560 = add nuw nsw i64 %indvars.iv3559, 1 ; 2 uses
  %i.ano = shl i64 %indvars.iv.next3560, 2
  %i.anp = and i64 %i.ano, 4294967292
  %i.anq = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.anp
  %.val3083.1 = load i32, ptr %i.anq, align 1
  %i.anr = load i32, ptr %i.ajf, align 4, !tbaa !32
  %i.ans = xor i32 %i.anr, -1
  %i.ant = add i32 %.val3083.1, %i.ans
  %i.anu = getelementptr inbounds nuw [36 x i8], ptr %i.ama, i64 %indvars.iv.next3560
  store i32 %i.ant, ptr %i.anu, align 4, !tbaa !45
  %indvars.iv.next3560.1 = add nuw nsw i64 %indvars.iv3559, 2 ; 2 uses
  %exitcond3563.1 = icmp eq i64 %indvars.iv.next3560.1, %wide.trip.count3562
  br i1 %exitcond3563.1, label %._crit_edge3450, label %.lr.ph3449, !llvm.loop !89

._crit_edge3450:                                  ; preds = %.lr.ph3449.prol.loopexit, %.lr.ph3449, %middle.block, %bb.py
  call void @free(ptr noundef nonnull %i.akt) #13
  %i.anv = zext i32 %i.ajn to i64
  %i.anw = call ptr @cli_malloc(i64 noundef %i.anv) #13 ; 10 uses
  %i.anx = icmp eq ptr %i.anw, null
  br i1 %i.anx, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %._crit_edge3450
  call void @free(ptr noundef %i.em) #13
  call void @free(ptr noundef nonnull %i.ama) #13
  br label %.critedge3020

bb.qa:                                            ; preds = %._crit_edge3450
  %i.any = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.ajl)
  %.not2807 = icmp eq i64 %i.any, 0
  br i1 %.not2807, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.anz = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.anw, i32 noundef %i.ajn) #13
  %.not2808 = icmp eq i32 %i.anz, %i.ajn
  br i1 %.not2808, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, i32 noundef %.722873173) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.ama) #13
  call void @free(ptr noundef nonnull %i.anw) #13
  br label %.critedge3020

bb.qd:                                            ; preds = %bb.qb
  %i.aoa = load i32, ptr %i.h, align 4, !tbaa !4
  %i.aob = zext i32 %i.aoa to i64
  %i.aoc = call ptr @cli_calloc(i64 noundef %i.aob, i64 noundef 1) #13 ; 7 uses
  %i.aod = icmp eq ptr %i.aoc, null
  br i1 %i.aod, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.anw) #13
  call void @free(ptr noundef nonnull %i.ama) #13
  br label %.critedge3020

bb.qf:                                            ; preds = %bb.qd
  %i.aoe = add i32 %i.cj, 167
  %i.aof = getelementptr inbounds nuw i8, ptr %i.f, i64 163
  %.val3082 = load i32, ptr %i.aof, align 1
  %i.aog = add i32 %i.aoe, %.val3082              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163, i32 noundef %i.aog) #13
  %i.aoh = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2809 = icmp eq ptr %i.aoh, null
  br i1 %.not2809, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.anw, ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.ama, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.qh:                                            ; preds = %bb.qf
  %i.aoi = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aoh, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.aoj = icmp slt i32 %i.aoi, 0
  br i1 %i.aoj, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %bb.qh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.aoh) #13
  call void @free(ptr noundef nonnull %i.aoh) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.anw, ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.ama, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.qj:                                            ; preds = %bb.qh
  %i.aok = zext i32 %i.ala to i64
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.aok
  %i.aom = load i32, ptr %i.ajl, align 4, !tbaa !45 ; 2 uses
  %i.aon = zext i32 %i.aom to i64
  %i.aoo = sub nsw i64 0, %i.aon
  %i.aop = getelementptr inbounds i8, ptr %i.aol, i64 %i.aoo
  %i.aoq = sub i32 %i.ajn, %i.ala
  %i.aor = add i32 %i.aoq, %i.aom
  %i.aos = load i32, ptr %i.h, align 4, !tbaa !4
  %i.aot = load i32, ptr %i.ajf, align 4, !tbaa !32
  %i.aou = call i32 @unfsg_133(ptr noundef nonnull %i.aop, ptr noundef nonnull %i.aoc, i32 noundef %i.aor, i32 noundef %i.aos, ptr noundef nonnull %i.ama, i32 noundef %.12360.ph3836, i32 noundef %i.aot, i32 noundef %i.aog, i32 noundef %i.aoi) #13
  switch i32 %i.aou, label %bb.qv [
    i32 1, label %bb.qk
    i32 0, label %bb.qu
  ]

bb.qk:                                            ; preds = %bb.qj
  %i.aov = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2810 = icmp eq i8 %i.aov, 0
  br i1 %.not2810, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, ptr noundef nonnull %i.aoh) #13
  br label %bb.qn

bb.qm:                                            ; preds = %bb.qk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #13
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.ql
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.anw, ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.ama, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.aow = call i32 @fsync(i32 noundef %i.aoi) #13 ; 0 uses
  %i.aox = call i64 @lseek(i32 noundef %i.aoi, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.aoy = call i32 @cli_magic_scandesc(i32 noundef %i.aoi, ptr noundef %1) #13
  %i.aoz = icmp eq i32 %i.aoy, 1
  %i.apa = call i32 @close(i32 noundef %i.aoi) #13 ; 0 uses
  %i.apb = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2812 = icmp eq i8 %i.apb, 0                ; 2 uses
  br i1 %i.aoz, label %bb.qo, label %bb.qr

bb.qo:                                            ; preds = %bb.qn
  br i1 %.not2812, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.apc = call i32 @unlink(ptr noundef nonnull %i.aoh) #13 ; 0 uses
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  call void @free(ptr noundef nonnull %i.aoh) #13
  br label %.critedge3020

bb.qr:                                            ; preds = %bb.qn
  br i1 %.not2812, label %bb.qs, label %bb.qt

bb.qs:                                            ; preds = %bb.qr
  %i.apd = call i32 @unlink(ptr noundef nonnull %i.aoh) #13 ; 0 uses
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qr
  call void @free(ptr noundef nonnull %i.aoh) #13
  br label %.critedge3020

bb.qu:                                            ; preds = %bb.qj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.167) #13
  %i.ape = call i32 @close(i32 noundef %i.aoi) #13 ; 0 uses
  %i.apf = call i32 @unlink(ptr noundef nonnull %i.aoh) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.aoh) #13
  call void @free(ptr noundef nonnull %i.ama) #13
  br label %.thread3280

bb.qv:                                            ; preds = %bb.qj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.168) #13
end_hunk_0
