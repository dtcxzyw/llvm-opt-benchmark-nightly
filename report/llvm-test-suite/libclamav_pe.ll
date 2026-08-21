inline.NumInlined: 58
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_scanpe:bb.a
bb.ox:                                            ; preds = %bb.ow
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 24
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !75 ; 3 uses
  %.not2793 = icmp eq i64 %i.ajs, 0
  br i1 %.not2793, label %bb.pb, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.ajt = call i32 @llvm.umax.i32(i32 %i.ajo, i32 %i.ajk) ; 2 uses
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = icmp ult i64 %i.ajs, %i.aju
  br i1 %i.ajv, label %bb.oz, label %bb.pb

bb.oz:                                            ; preds = %bb.oy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.ajt, i64 noundef %i.ajs) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ajw = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.ajx = and i32 %i.ajw, 256
  %.not2814 = icmp eq i32 %i.ajx, 0
  br i1 %.not2814, label %.critedge3020, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.ajy = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.153, ptr %i.ajy, align 8, !tbaa !21
  br label %.critedge3020

bb.pb:                                            ; preds = %bb.oy, %bb.ox, %bb.ow
  %i.ajz = icmp ugt i32 %i.ajk, 25
  %.not2794 = icmp ugt i32 %i.ajo, %i.ajk
  %or.cond3041 = select i1 %i.ajz, i1 %.not2794, i1 false
  br i1 %or.cond3041, label %cli_rawaddr.exit, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.154, i32 noundef %i.ajk, i32 noundef %i.ajo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

cli_rawaddr.exit:                                 ; preds = %bb.pb
  %i.aka = icmp uge i32 %i.aje, %i.fl
  %i.akb = zext i32 %i.aje to i64
  %.not36.i = icmp ule i64 %i.ej, %i.akb
  %narrow3325 = select i1 %i.aka, i1 true, i1 %.not36.i ; 3 uses
  %.sink.i = zext i1 %narrow3325 to i32
  %.030.i = select i1 %narrow3325, i32 0, i32 %i.aje ; 3 uses
  store i32 %.sink.i, ptr %i.g, align 4, !tbaa !4
  %i.akc = icmp eq i32 %.030.i, 0
  %or.cond157 = and i1 %i.akc, %narrow3325
  br i1 %or.cond157, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %cli_rawaddr.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.169) #13
  br label %bb.qv

bb.pe:                                            ; preds = %cli_rawaddr.exit
  %i.akd = zext i32 %.030.i to i64
  %i.ake = call i64 @lseek(i32 noundef %0, i64 noundef %i.akd, i32 noundef 0) #13 ; 0 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !49
  %i.akh = sub i32 %i.akg, %.030.i                ; 7 uses
  %i.aki = load ptr, ptr %i.ajp, align 8, !tbaa !74 ; 2 uses
  %.not2795 = icmp eq ptr %i.aki, null
  br i1 %.not2795, label %._crit_edge3611, label %bb.pf

._crit_edge3611:                                  ; preds = %bb.pe
  %.pre3623 = zext i32 %i.akh to i64
  br label %bb.pi

bb.pf:                                            ; preds = %bb.pe
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !75 ; 3 uses
  %.not2796 = icmp ne i64 %i.akk, 0
  %i.akl = zext i32 %i.akh to i64                 ; 2 uses
  %i.akm = icmp ult i64 %i.akk, %i.akl
  %or.cond3043 = select i1 %.not2796, i1 %i.akm, i1 false
  br i1 %or.cond3043, label %bb.pg, label %bb.pi

bb.pg:                                            ; preds = %bb.pf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.akh, i64 noundef %i.akk) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.akn = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.ako = and i32 %i.akn, 256
  %.not2813 = icmp eq i32 %i.ako, 0
  br i1 %.not2813, label %.critedge3020, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.akp = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.153, ptr %i.akp, align 8, !tbaa !21
  br label %.critedge3020

bb.pi:                                            ; preds = %._crit_edge3611, %bb.pf
  %.pre-phi3624 = phi i64 [ %.pre3623, %._crit_edge3611 ], [ %i.akl, %bb.pf ]
  %i.akq = call ptr @cli_malloc(i64 noundef %.pre-phi3624) #13 ; 14 uses
  %i.akr = icmp eq ptr %i.akq, null
  br i1 %i.akr, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.pk:                                            ; preds = %bb.pi
  %i.aks = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.akq, i32 noundef %i.akh) #13
  %.not2797 = icmp eq i32 %i.aks, %i.akh
  br i1 %.not2797, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.170, i32 noundef %i.akh) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.akq) #13
  br label %.critedge3020

bb.pm:                                            ; preds = %bb.pk
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  %.val3086 = load i32, ptr %i.akt, align 1
  %i.aku = load i32, ptr %i.ajc, align 4, !tbaa !32 ; 2 uses
  %i.akv = sub i32 %.val3086, %i.aku              ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akq, i64 8 ; 5 uses
  %.val3085 = load i32, ptr %i.akw, align 1
  %i.akx = sub i32 %.val3085, %i.aku              ; 4 uses
  %i.aky = load i32, ptr %i.aji, align 4, !tbaa !45 ; 2 uses
  %i.akz = icmp ult i32 %i.akx, %i.aky
  br i1 %i.akz, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.ala = sub nuw i32 %i.akx, %i.aky
  %i.alb = load i32, ptr %i.ajj, align 4, !tbaa !50
  %.not2798 = icmp ult i32 %i.ala, %i.alb
  br i1 %.not2798, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.161) #13
  call void @free(ptr noundef nonnull %i.akq) #13
  br label %bb.qv

bb.pp:                                            ; preds = %bb.pn
  %i.alc = load i32, ptr %i.ajm, align 4, !tbaa !45 ; 2 uses
  %.not2799 = icmp eq i32 %i.akv, %i.alc
  br i1 %.not2799, label %.preheader3344, label %bb.pq

.preheader3344:                                   ; preds = %bb.pp
  %i.ald = add i32 %i.akh, -4                     ; 2 uses
  %i.ale = icmp ugt i32 %i.ald, 12
  br i1 %i.ale, label %.lr.ph3444, label %.loopexit

bb.pq:                                            ; preds = %bb.pp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.171, i32 noundef %i.akv, i32 noundef %i.alc) #13
  call void @free(ptr noundef nonnull %i.akq) #13
  br label %bb.qv

.lr.ph3444:                                       ; preds = %.preheader3344, %bb.pv
  %i.alf = phi i32 [ %i.alm, %bb.pv ], [ %i.akv, %.preheader3344 ]
  %.022803443 = phi i32 [ %i.alq, %bb.pv ], [ 12, %.preheader3344 ] ; 2 uses
  %.022823442 = phi i32 [ %i.alk, %bb.pv ], [ 0, %.preheader3344 ] ; 2 uses
  %i.alg = zext i32 %.022803443 to i64            ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.alg
  %.val3084 = load i32, ptr %i.alh, align 1       ; 2 uses
  %.not2800 = icmp eq i32 %.val3084, 0
  br i1 %.not2800, label %.loopexit3345.thread, label %bb.pr

bb.pr:                                            ; preds = %.lr.ph3444
  %i.ali = load i32, ptr %i.ajc, align 4, !tbaa !32
  %.neg2801 = xor i32 %i.ali, -1
  %i.alj = add i32 %.val3084, %.neg2801           ; 3 uses
  %i.alk = add nuw nsw i32 %.022823442, 1         ; 4 uses
  %i.all = and i32 %i.alj, 4095
  %.not2802 = icmp eq i32 %i.all, 0
  br i1 %.not2802, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.172, i32 noundef %i.alk) #13
  %.pre3604 = load i32, ptr %i.ajm, align 4, !tbaa !45
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %i.alm = phi i32 [ %.pre3604, %bb.ps ], [ %i.alf, %bb.pr ] ; 3 uses
  %i.aln = icmp ult i32 %i.alj, %i.alm
  br i1 %i.aln, label %.loopexit3345, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.alo = sub nuw i32 %i.alj, %i.alm
  %i.alp = load i32, ptr %i.ajn, align 4, !tbaa !48
  %.not2803 = icmp ult i32 %i.alo, %i.alp
  br i1 %.not2803, label %bb.pv, label %.loopexit3345

bb.pv:                                            ; preds = %bb.pu
  %i.alq = add i32 %.022803443, 4                 ; 2 uses
  %i.alr = icmp ult i32 %i.alq, %i.ald
  br i1 %i.alr, label %.lr.ph3444, label %.loopexit, !llvm.loop !77

.loopexit3345:                                    ; preds = %bb.pt, %bb.pu
  %i.als = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.alg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.173, i32 noundef %i.alk) #13
  %.val3083.pre = load i32, ptr %i.als, align 1
  %i.alt = icmp eq i32 %.val3083.pre, 0
  br i1 %i.alt, label %.loopexit3345.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.pv, %.preheader3344, %.loopexit3345
  call void @free(ptr noundef nonnull %i.akq) #13
  br label %bb.qv

.loopexit3345.thread:                             ; preds = %.lr.ph3444, %.loopexit3345
  %.12283.ph3838 = phi i32 [ %i.alk, %.loopexit3345 ], [ %.022823442, %.lr.ph3444 ] ; 3 uses
  %i.alu = add i32 %.12283.ph3838, 1              ; 4 uses
  %i.alv = sext i32 %i.alu to i64
  %i.alw = mul nsw i64 %i.alv, 36
  %i.alx = call ptr @cli_malloc(i64 noundef %i.alw) #13 ; 20 uses
  %i.aly = icmp eq ptr %i.alx, null
  br i1 %i.aly, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %.loopexit3345.thread
  call void @free(ptr noundef %i.em) #13
  call void @free(ptr noundef nonnull %i.akq) #13
  br label %.critedge3020

bb.px:                                            ; preds = %.loopexit3345.thread
  store i32 %i.akv, ptr %i.alx, align 4, !tbaa !45
  %.not28063445 = icmp eq i32 %.12283.ph3838, 0
  br i1 %.not28063445, label %._crit_edge3449, label %.lr.ph3448.preheader

.lr.ph3448.preheader:                             ; preds = %bb.px
  %umax = call i32 @llvm.umax.i32(i32 %i.alu, i32 2)
  %wide.trip.count3561 = zext i32 %umax to i64    ; 6 uses
  %i.alz = add nsw i64 %wide.trip.count3561, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.alu, 21
  br i1 %min.iters.check, label %.lr.ph3448.preheader3957, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3448.preheader
  %5 = zext i32 %i.alu to i64
  %6 = call i64 @llvm.usub.sat.i64(i64 %5, i64 2) ; 2 uses
  %i.ama = and i64 %6, 1073741823
  %i.amb = icmp eq i64 %i.ama, 1073741823
  %i.amc = icmp samesign ugt i64 %6, 1073741823
  %i.amd = or i1 %i.amb, %i.amc
  br i1 %i.amd, label %.lr.ph3448.preheader3957, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.alx, i64 36 ; 2 uses
  %i.ame = mul nuw nsw i64 %wide.trip.count3561, 36
  %i.amf = getelementptr i8, ptr %i.alx, i64 %i.ame
  %scevgep3948 = getelementptr i8, ptr %i.amf, i64 -32 ; 2 uses
  %scevgep3949 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %scevgep3950 = getelementptr i8, ptr %i.akq, i64 12
  %i.amg = shl nuw nsw i64 %wide.trip.count3561, 2
  %i.amh = getelementptr i8, ptr %i.akq, i64 %i.amg
  %scevgep3951 = getelementptr i8, ptr %i.amh, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep3949
  %bound1 = icmp ult ptr %i.ajc, %scevgep3948
  %found.conflict = and i1 %bound0, %bound1
  %bound03952 = icmp ult ptr %scevgep, %scevgep3951
  %bound13953 = icmp ult ptr %scevgep3950, %scevgep3948
  %found.conflict3954 = and i1 %bound03952, %bound13953
  %conflict.rdx = or i1 %found.conflict, %found.conflict3954
  br i1 %conflict.rdx, label %.lr.ph3448.preheader3957, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.alz, -4                     ; 3 uses
  %i.ami = or disjoint i64 %n.vec, 1
  %i.amj = load i32, ptr %i.ajc, align 4, !tbaa !32, !alias.scope !78
  %i.amk = xor i32 %i.amj, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.amk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aml = or disjoint i64 %index, 1              ; 2 uses
  %i.amm = shl i64 %i.aml, 2
  %i.amn = and i64 %i.amm, 4294967284
  %i.amo = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.amn
  %wide.load = load <4 x i32>, ptr %i.amo, align 1, !alias.scope !81
  %i.amp = add <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %i.amq = getelementptr inbounds nuw [36 x i8], ptr %i.alx, i64 %i.aml
  %i.amr = getelementptr inbounds nuw [36 x i8], ptr %i.alx, i64 %index
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 72
  %i.amt = getelementptr inbounds nuw [36 x i8], ptr %i.alx, i64 %index
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 108
  %i.amv = getelementptr [36 x i8], ptr %i.alx, i64 %index
  %i.amw = getelementptr i8, ptr %i.amv, i64 144
  %i.amx = extractelement <4 x i32> %i.amp, i64 0
  store i32 %i.amx, ptr %i.amq, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %i.amy = extractelement <4 x i32> %i.amp, i64 1
  store i32 %i.amy, ptr %i.ams, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %i.amz = extractelement <4 x i32> %i.amp, i64 2
  store i32 %i.amz, ptr %i.amu, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %i.ana = extractelement <4 x i32> %i.amp, i64 3
  store i32 %i.ana, ptr %i.amw, align 4, !tbaa !45, !alias.scope !83, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.anb = icmp eq i64 %index.next, %n.vec
  br i1 %i.anb, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.alz, %n.vec
  br i1 %cmp.n, label %._crit_edge3449, label %.lr.ph3448.preheader3957

.lr.ph3448.preheader3957:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3448.preheader, %middle.block
  %indvars.iv3558.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph3448.preheader ], [ %i.ami, %middle.block ] ; 5 uses
  %i.anc = and i64 %wide.trip.count3561, 1
  %lcmp.mod.not.not = icmp eq i64 %i.anc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph3448.prol, label %.lr.ph3448.prol.loopexit

.lr.ph3448.prol:                                  ; preds = %.lr.ph3448.preheader3957
  %i.and = shl nsw i64 %indvars.iv3558.ph, 2
  %i.ane = and i64 %i.and, 4294967292
  %i.anf = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.ane
  %.val3082.prol = load i32, ptr %i.anf, align 1
  %i.ang = load i32, ptr %i.ajc, align 4, !tbaa !32
  %i.anh = xor i32 %i.ang, -1
  %i.ani = add i32 %.val3082.prol, %i.anh
  %i.anj = getelementptr inbounds nuw [36 x i8], ptr %i.alx, i64 %indvars.iv3558.ph
  store i32 %i.ani, ptr %i.anj, align 4, !tbaa !45
  %indvars.iv.next3559.prol = add nuw nsw i64 %indvars.iv3558.ph, 1
  br label %.lr.ph3448.prol.loopexit

.lr.ph3448.prol.loopexit:                         ; preds = %.lr.ph3448.prol, %.lr.ph3448.preheader3957
  %indvars.iv3558.unr = phi i64 [ %indvars.iv3558.ph, %.lr.ph3448.preheader3957 ], [ %indvars.iv.next3559.prol, %.lr.ph3448.prol ]
  %i.ank = add nsw i64 %wide.trip.count3561, -1
  %i.anl = icmp eq i64 %indvars.iv3558.ph, %i.ank
  br i1 %i.anl, label %._crit_edge3449, label %.lr.ph3448

.lr.ph3448:                                       ; preds = %.lr.ph3448.prol.loopexit, %.lr.ph3448
  %indvars.iv3558 = phi i64 [ %indvars.iv.next3559.1, %.lr.ph3448 ], [ %indvars.iv3558.unr, %.lr.ph3448.prol.loopexit ] ; 4 uses
  %i.anm = shl i64 %indvars.iv3558, 2
  %i.ann = and i64 %i.anm, 4294967292
  %i.ano = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.ann
  %.val3082 = load i32, ptr %i.ano, align 1
  %i.anp = load i32, ptr %i.ajc, align 4, !tbaa !32
  %i.anq = xor i32 %i.anp, -1
  %i.anr = add i32 %.val3082, %i.anq
  %i.ans = getelementptr inbounds nuw [36 x i8], ptr %i.alx, i64 %indvars.iv3558
  store i32 %i.anr, ptr %i.ans, align 4, !tbaa !45
  %indvars.iv.next3559 = add nuw nsw i64 %indvars.iv3558, 1 ; 2 uses
  %i.ant = shl i64 %indvars.iv.next3559, 2
  %i.anu = and i64 %i.ant, 4294967292
  %i.anv = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.anu
  %.val3082.1 = load i32, ptr %i.anv, align 1
  %i.anw = load i32, ptr %i.ajc, align 4, !tbaa !32
  %i.anx = xor i32 %i.anw, -1
  %i.any = add i32 %.val3082.1, %i.anx
  %i.anz = getelementptr inbounds nuw [36 x i8], ptr %i.alx, i64 %indvars.iv.next3559
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !45
  %indvars.iv.next3559.1 = add nuw nsw i64 %indvars.iv3558, 2 ; 2 uses
  %exitcond3562.1 = icmp eq i64 %indvars.iv.next3559.1, %wide.trip.count3561
  br i1 %exitcond3562.1, label %._crit_edge3449, label %.lr.ph3448, !llvm.loop !89

._crit_edge3449:                                  ; preds = %.lr.ph3448.prol.loopexit, %.lr.ph3448, %middle.block, %bb.px
  call void @free(ptr noundef nonnull %i.akq) #13
  %i.aoa = zext i32 %i.ajk to i64
  %i.aob = call ptr @cli_malloc(i64 noundef %i.aoa) #13 ; 10 uses
  %i.aoc = icmp eq ptr %i.aob, null
  br i1 %i.aoc, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %._crit_edge3449
  call void @free(ptr noundef %i.em) #13
  call void @free(ptr noundef nonnull %i.alx) #13
  br label %.critedge3020

bb.pz:                                            ; preds = %._crit_edge3449
  %i.aod = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.aji)
  %.not2807 = icmp eq i64 %i.aod, 0
  br i1 %.not2807, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.aoe = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.aob, i32 noundef %i.ajk) #13
  %.not2808 = icmp eq i32 %i.aoe, %i.ajk
  br i1 %.not2808, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, i32 noundef %.724143172) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.alx) #13
  call void @free(ptr noundef nonnull %i.aob) #13
  br label %.critedge3020

bb.qc:                                            ; preds = %bb.qa
  %i.aof = load i32, ptr %i.h, align 4, !tbaa !4
  %i.aog = zext i32 %i.aof to i64
  %i.aoh = call ptr @cli_calloc(i64 noundef %i.aog, i64 noundef 1) #13 ; 7 uses
  %i.aoi = icmp eq ptr %i.aoh, null
  br i1 %i.aoi, label %bb.qd, label %bb.qe

bb.qd:                                            ; preds = %bb.qc
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.aob) #13
  call void @free(ptr noundef nonnull %i.alx) #13
  br label %.critedge3020

bb.qe:                                            ; preds = %bb.qc
  %i.aoj = add i32 %i.cj, 167
  %i.aok = getelementptr inbounds nuw i8, ptr %i.f, i64 163
  %.val3081 = load i32, ptr %i.aok, align 1
  %i.aol = add i32 %i.aoj, %.val3081              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163, i32 noundef %i.aol) #13
  %i.aom = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2809 = icmp eq ptr %i.aom, null
  br i1 %.not2809, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.aob, ptr noundef nonnull %i.aoh, ptr noundef nonnull %i.alx, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.qg:                                            ; preds = %bb.qe
  %i.aon = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aom, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.aoo = icmp slt i32 %i.aon, 0
  br i1 %i.aoo, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.aom) #13
  call void @free(ptr noundef nonnull %i.aom) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.aob, ptr noundef nonnull %i.aoh, ptr noundef nonnull %i.alx, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.qi:                                            ; preds = %bb.qg
  %i.aop = zext i32 %i.akx to i64
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aob, i64 %i.aop
  %i.aor = load i32, ptr %i.aji, align 4, !tbaa !45 ; 2 uses
  %i.aos = zext i32 %i.aor to i64
  %i.aot = sub nsw i64 0, %i.aos
  %i.aou = getelementptr inbounds i8, ptr %i.aoq, i64 %i.aot
  %i.aov = sub i32 %i.ajk, %i.akx
  %i.aow = add i32 %i.aov, %i.aor
  %i.aox = load i32, ptr %i.h, align 4, !tbaa !4
  %i.aoy = load i32, ptr %i.ajc, align 4, !tbaa !32
  %i.aoz = call i32 @unfsg_133(ptr noundef nonnull %i.aou, ptr noundef nonnull %i.aoh, i32 noundef %i.aow, i32 noundef %i.aox, ptr noundef nonnull %i.alx, i32 noundef %.12283.ph3838, i32 noundef %i.aoy, i32 noundef %i.aol, i32 noundef %i.aon) #13
  switch i32 %i.aoz, label %bb.qu [
    i32 1, label %bb.qj
    i32 0, label %bb.qt
  ]

bb.qj:                                            ; preds = %bb.qi
  %i.apa = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2810 = icmp eq i8 %i.apa, 0
  br i1 %.not2810, label %bb.ql, label %bb.qk
end_hunk_0
