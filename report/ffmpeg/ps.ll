inline.NumInlined: 81
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_vvc_decode_frame_ps:bb.a
bb.dl:                                            ; preds = %bb.dj
  %i.apy = load ptr, ptr %i.ano, align 8, !tbaa !262 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 52
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 50
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.aqb = phi ptr [ %i.apw, %bb.dk ], [ %i.apz, %bb.dl ] ; 2 uses
  %.in.in.i.i.i.i = phi ptr [ %i.apx, %bb.dk ], [ %i.aqa, %bb.dl ]
  %.in.i.i.i.i = load i8, ptr %.in.in.i.i.i.i, align 2, !tbaa !131 ; 4 uses
  %.not25.i.i.i.i.i = icmp eq i8 %.in.i.i.i.i, 0
  br i1 %.not25.i.i.i.i.i, label %.loopexit.i.i.i.i37, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.dm
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.aqd = load i16, ptr %i.aqc, align 8, !tbaa !275
  %i.aqe = zext i16 %i.aqd to i32
  %i.aqf = add nuw nsw i32 %i.aqe, 7
  %i.aqg = lshr i32 %i.aqf, 3
  %i.aqh = trunc nuw nsw i32 %i.aqg to i16
  %i.aqi = add nsw i16 %i.aqh, -2                 ; 2 uses
  %wide.trip.count.i.i.i.i.i33 = zext i8 %.in.i.i.i.i to i64
  %i.aqj = load i16, ptr %i.aqb, align 2, !tbaa !161 ; 2 uses
  %i.aqk = icmp ult i16 %i.aqi, %i.aqj
  br i1 %i.aqk, label %decode_frame_ps.exit, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i.i.i.i32
  %i.aql = shl i16 %i.aqj, 3
  %i.aqm = add i16 %i.aql, 8
  store i16 %i.aqm, ptr %i.aps, align 2, !tbaa !161
  %exitcond.peel.not.i.i.i.i.i = icmp eq i8 %.in.i.i.i.i, 1
  br i1 %exitcond.peel.not.i.i.i.i.i, label %.loopexit.i.i.i.i37, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.dn, %bb.dp
  %indvars.iv.i.i.i.i.i34 = phi i64 [ %indvars.iv.next.i.i.i.i.i35, %bb.dp ], [ 1, %bb.dn ] ; 3 uses
  %i.aqn = getelementptr inbounds nuw [2 x i8], ptr %i.aqb, i64 %indvars.iv.i.i.i.i.i34
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !161 ; 2 uses
  %i.aqp = icmp ult i16 %i.aqi, %i.aqo
  br i1 %i.aqp, label %decode_frame_ps.exit, label %bb.do

bb.do:                                            ; preds = %.peel.next.i.i.i.i.i
  %i.aqq = shl i16 %i.aqo, 3
  %i.aqr = add i16 %i.aqq, 8                      ; 2 uses
  %i.aqs = getelementptr inbounds nuw [2 x i8], ptr %i.aps, i64 %indvars.iv.i.i.i.i.i34 ; 2 uses
  store i16 %i.aqr, ptr %i.aqs, align 2, !tbaa !161
  %i.aqt = zext i16 %i.aqr to i32
  %i.aqu = getelementptr i8, ptr %i.aqs, i64 -2
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !161
  %i.aqw = zext i16 %i.aqv to i32
  %i.aqx = add nuw nsw i32 %i.app, %i.aqw
  %i.aqy = icmp sgt i32 %i.aqx, %i.aqt
  br i1 %i.aqy, label %decode_frame_ps.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %indvars.iv.next.i.i.i.i.i35 = add nuw nsw i64 %indvars.iv.i.i.i.i.i34, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i36 = icmp eq i64 %indvars.iv.next.i.i.i.i.i35, %wide.trip.count.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i36, label %.loopexit.i.i.i.i37, label %.peel.next.i.i.i.i.i, !llvm.loop !276

.loopexit.i.i.i.i37:                              ; preds = %bb.dp, %bb.dn, %bb.dm
  store i8 %.in.i.i.i.i, ptr %i.apt, align 8, !tbaa !131
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 2114 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.arb = load i8, ptr %i.apu, align 1, !tbaa !274
  %.not30.i20.i.i.i = icmp eq i8 %i.arb, 0
  br i1 %.not30.i20.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.loopexit.i.i.i.i37
  %i.arc = getelementptr inbounds nuw i8, ptr %i.anq, i64 38784
  %i.ard = getelementptr inbounds nuw i8, ptr %i.anq, i64 38782
  br label %bb.ds

bb.dr:                                            ; preds = %.loopexit.i.i.i.i37
  %i.are = load ptr, ptr %i.ano, align 8, !tbaa !262 ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 60
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 58
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.arh = phi ptr [ %i.arc, %bb.dq ], [ %i.arf, %bb.dr ] ; 2 uses
  %.in32.in.i.i.i.i = phi ptr [ %i.ard, %bb.dq ], [ %i.arg, %bb.dr ]
  %.in32.i.i.i.i = load i8, ptr %.in32.in.i.i.i.i, align 2, !tbaa !131 ; 4 uses
  %.not25.i33.i.i.i.i = icmp eq i8 %.in32.i.i.i.i, 0
  br i1 %.not25.i33.i.i.i.i, label %ph_vb_pos.exit43.i.i.i.i, label %.lr.ph.i34.i.i.i.i

.lr.ph.i34.i.i.i.i:                               ; preds = %bb.ds
  %i.ari = getelementptr inbounds nuw i8, ptr %i.ans, i64 10
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !278
  %i.ark = zext i16 %i.arj to i32
  %i.arl = add nuw nsw i32 %i.ark, 7
  %i.arm = lshr i32 %i.arl, 3
  %i.arn = trunc nuw nsw i32 %i.arm to i16
  %i.aro = add nsw i16 %i.arn, -2                 ; 2 uses
  %wide.trip.count.i35.i.i.i.i = zext i8 %.in32.i.i.i.i to i64
  %i.arp = load i16, ptr %i.arh, align 2, !tbaa !161 ; 2 uses
  %i.arq = icmp ult i16 %i.aro, %i.arp
  br i1 %i.arq, label %decode_frame_ps.exit, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i34.i.i.i.i
  %i.arr = shl i16 %i.arp, 3
  %i.ars = add i16 %i.arr, 8
  store i16 %i.ars, ptr %i.aqz, align 2, !tbaa !161
  %exitcond.peel.not.i36.i.i.i.i = icmp eq i8 %.in32.i.i.i.i, 1
  br i1 %exitcond.peel.not.i36.i.i.i.i, label %ph_vb_pos.exit43.i.i.i.i, label %.peel.next.i37.i.i.i.i

.peel.next.i37.i.i.i.i:                           ; preds = %bb.dt, %bb.dv
  %indvars.iv.i38.i.i.i.i = phi i64 [ %indvars.iv.next.i39.i.i.i.i, %bb.dv ], [ 1, %bb.dt ] ; 3 uses
  %i.art = getelementptr inbounds nuw [2 x i8], ptr %i.arh, i64 %indvars.iv.i38.i.i.i.i
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !161 ; 2 uses
  %i.arv = icmp ult i16 %i.aro, %i.aru
  br i1 %i.arv, label %decode_frame_ps.exit, label %bb.du

bb.du:                                            ; preds = %.peel.next.i37.i.i.i.i
  %i.arw = shl i16 %i.aru, 3
  %i.arx = add i16 %i.arw, 8                      ; 2 uses
  %i.ary = getelementptr inbounds nuw [2 x i8], ptr %i.aqz, i64 %indvars.iv.i38.i.i.i.i ; 2 uses
  store i16 %i.arx, ptr %i.ary, align 2, !tbaa !161
  %i.arz = zext i16 %i.arx to i32
  %i.asa = getelementptr i8, ptr %i.ary, i64 -2
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !161
  %i.asc = zext i16 %i.asb to i32
  %i.asd = add nuw nsw i32 %i.app, %i.asc
  %i.ase = icmp sgt i32 %i.asd, %i.arz
  br i1 %i.ase, label %decode_frame_ps.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %indvars.iv.next.i39.i.i.i.i = add nuw nsw i64 %indvars.iv.i38.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i40.i.i.i.i = icmp eq i64 %indvars.iv.next.i39.i.i.i.i, %wide.trip.count.i35.i.i.i.i
  br i1 %exitcond.not.i40.i.i.i.i, label %ph_vb_pos.exit43.i.i.i.i, label %.peel.next.i37.i.i.i.i, !llvm.loop !276

ph_vb_pos.exit43.i.i.i.i:                         ; preds = %bb.dv, %bb.dt, %bb.ds
  store i8 %.in32.i.i.i.i, ptr %i.ara, align 8, !tbaa !131
  br label %decode_ph.exit.i

decode_ph.exit.i:                                 ; preds = %ph_vb_pos.exit43.i.i.i.i, %bb.di
  %i.asf = getelementptr inbounds nuw i8, ptr %i.amy, i64 47
  %i.asg = load i8, ptr %i.asf, align 1, !tbaa !279
  %.not42.i = icmp eq i8 %i.asg, 0
  br i1 %.not42.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %decode_ph.exit.i
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 19064
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.asj = getelementptr inbounds nuw i8, ptr %i.amy, i64 48
  %i.ask = load i8, ptr %i.asj, align 2, !tbaa !280
  %i.asl = zext i8 %i.ask to i64
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.asl
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !281
  tail call void @av_refstruct_replace(ptr noundef nonnull %i.ash, ptr noundef %i.asn) #8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %decode_ph.exit.i
  %i.aso = getelementptr inbounds nuw i8, ptr %i.amy, i64 44
  %i.asp = load i8, ptr %i.aso, align 2, !tbaa !282
  %.not43.i = icmp eq i8 %i.asp, 0
  br i1 %.not43.i, label %decode_ph.exit.thread.loopexit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.asr = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.ass = getelementptr inbounds nuw i8, ptr %i.amy, i64 45
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !283
  %i.asu = zext i8 %i.ast to i64
  %i.asv = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %i.asu
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !284 ; 7 uses
  %i.asx = load ptr, ptr %i.k, align 8, !tbaa !260
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !122
  %i.asz = getelementptr i8, ptr %i.asy, i64 15416
  %.val.i = load i8, ptr %i.asz, align 8, !tbaa !124 ; 3 uses
  %i.ata = zext i8 %.val.i to i32                 ; 4 uses
  %i.atb = shl nuw i32 256, %i.ata                ; 7 uses
  %i.atc = ashr exact i32 %i.atb, 4               ; 7 uses
  %i.atd = icmp ugt i32 %i.atc, 65535             ; 2 uses
  %i.ate = lshr i32 %i.atc, 16
  %spec.select.i.i.i = select i1 %i.atd, i32 %i.ate, i32 %i.atc ; 3 uses
  %spec.select11.i.i.i = select i1 %i.atd, i32 16, i32 0 ; 2 uses
  %.not.i.i44.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.atf = lshr i32 %spec.select.i.i.i, 8
  %i.atg = or disjoint i32 %spec.select11.i.i.i, 8
  %.110.i.i.i = select i1 %.not.i.i44.i, i32 %spec.select.i.i.i, i32 %i.atf
  %.1.i.i.i = select i1 %.not.i.i44.i, i32 %spec.select11.i.i.i, i32 %i.atg
  %i.ath = zext nneg i32 %.110.i.i.i to i64
  %i.ati = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ath
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !131
  %i.atk = zext i8 %i.atj to i32
  %i.atl = add nuw nsw i32 %.1.i.i.i, %i.atk      ; 4 uses
  %i.atm = add nsw i32 %i.atl, -1
  %i.atn = shl nuw i32 1, %i.atm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ato = icmp ugt i8 %.val.i, 4
  br i1 %i.ato, label %lmcs_derive_lut.exit.thread.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.not.i.i38 = icmp eq ptr %i.asw, null
  br i1 %.not.i.i38, label %lmcs_derive_lut.exit.thread.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asw, i64 3088
  %i.atq = load i8, ptr %i.atp, align 8, !tbaa !286 ; 5 uses
  store i8 %i.atq, ptr %i.asq, align 8, !tbaa !288
  %i.atr = getelementptr inbounds nuw i8, ptr %i.asw, i64 3089
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !289
  %i.att = sub i8 15, %i.ats                      ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %0, i64 2609
  store i8 %i.att, ptr %i.atu, align 1, !tbaa !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.atv = zext i8 %i.atq to i32
  %i.atw = zext i8 %i.att to i32                  ; 4 uses
  %.not1285.i.i = icmp ugt i8 %i.atq, %i.att
  br i1 %.not1285.i.i, label %.._crit_edge.thread.i_crit_edge.i, label %.lr.ph.i.i

.._crit_edge.thread.i_crit_edge.i:                ; preds = %bb.ea
  %.pre.i = zext i8 %i.atq to i64
  br label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.ea
  %i.atx = getelementptr inbounds nuw i8, ptr %i.asw, i64 3124 ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.asw, i64 3092 ; 2 uses
  %i.atz = zext i8 %i.atq to i64                  ; 5 uses
  %i.aua = add nuw nsw i32 %i.atw, 1
  %wide.trip.count.i.i = zext nneg i32 %i.aua to i64
  %2 = zext i8 %i.att to i64
  %3 = add nuw nsw i64 %2, 1
  %4 = sub nsw i64 %3, %i.atz                     ; 3 uses
  %min.iters.check316 = icmp ult i64 %4, 8
  br i1 %min.iters.check316, label %scalar.ph315.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph.i.i
  %n.vec318 = and i64 %4, -8                      ; 3 uses
  %i.aub = add nsw i64 %n.vec318, %i.atz
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.atc, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph317
  %index322 = phi i64 [ 0, %vector.ph317 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.auv, %vector.body321 ]
  %vec.phi323 = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.auw, %vector.body321 ]
  %i.auc = add nuw i64 %index322, %i.atz          ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.auc ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 4
  %wide.load = load <4 x i8>, ptr %i.aud, align 1, !tbaa !131
  %wide.load324 = load <4 x i8>, ptr %i.aue, align 1, !tbaa !131
  %i.auf = zext <4 x i8> %wide.load to <4 x i32>
  %i.aug = zext <4 x i8> %wide.load324 to <4 x i32>
  %i.auh = shl nuw nsw <4 x i32> %i.auf, splat (i32 1)
  %i.aui = shl nuw nsw <4 x i32> %i.aug, splat (i32 1)
  %i.auj = sub nsw <4 x i32> splat (i32 1), %i.auh
  %i.auk = sub nsw <4 x i32> splat (i32 1), %i.aui
  %i.aul = getelementptr inbounds nuw [2 x i8], ptr %i.aty, i64 %i.auc ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  %wide.load325 = load <4 x i16>, ptr %i.aul, align 2, !tbaa !161
  %wide.load326 = load <4 x i16>, ptr %i.aum, align 2, !tbaa !161
  %i.aun = zext <4 x i16> %wide.load325 to <4 x i32>
  %i.auo = zext <4 x i16> %wide.load326 to <4 x i32>
  %i.aup = mul nsw <4 x i32> %i.auj, %i.aun
  %i.auq = mul nsw <4 x i32> %i.auk, %i.auo
  %i.aur = add nsw <4 x i32> %i.aup, %broadcast.splat320 ; 2 uses
  %i.aus = add nsw <4 x i32> %i.auq, %broadcast.splat320 ; 2 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.auc ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 16
  store <4 x i32> %i.aur, ptr %i.aut, align 4, !tbaa !160
  store <4 x i32> %i.aus, ptr %i.auu, align 4, !tbaa !160
  %i.auv = add <4 x i32> %i.aur, %vec.phi         ; 2 uses
  %i.auw = add <4 x i32> %i.aus, %vec.phi323      ; 2 uses
  %index.next327 = add nuw i64 %index322, 8       ; 2 uses
  %i.aux = icmp eq i64 %index.next327, %n.vec318
  br i1 %i.aux, label %middle.block328, label %vector.body321, !llvm.loop !291

middle.block328:                                  ; preds = %vector.body321
  %bin.rdx = add <4 x i32> %i.auw, %i.auv
  %i.auy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n329 = icmp eq i64 %4, %n.vec318
  br i1 %cmp.n329, label %._crit_edge.i.i, label %scalar.ph315.preheader

scalar.ph315.preheader:                           ; preds = %.lr.ph.i.i, %middle.block328
  %indvars.iv.i.i.ph = phi i64 [ %i.atz, %.lr.ph.i.i ], [ %i.aub, %middle.block328 ]
  %.01167.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.auy, %middle.block328 ]
  br label %scalar.ph315

._crit_edge.i.i:                                  ; preds = %scalar.ph315, %middle.block328
  %.lcssa = phi i32 [ %i.auy, %middle.block328 ], [ %i.avl, %scalar.ph315 ]
  %i.auz = icmp slt i32 %.lcssa, %i.atb
  br i1 %i.auz, label %._crit_edge.thread.i.i, label %lmcs_derive_lut.exit.thread.i

scalar.ph315:                                     ; preds = %scalar.ph315.preheader, %scalar.ph315
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph315 ], [ %indvars.iv.i.i.ph, %scalar.ph315.preheader ] ; 4 uses
  %.01167.i.i = phi i32 [ %i.avl, %scalar.ph315 ], [ %.01167.i.i.ph, %scalar.ph315.preheader ]
  %i.ava = getelementptr inbounds nuw i8, ptr %i.atx, i64 %indvars.iv.i.i
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !131
  %i.avc = zext i8 %i.avb to i32
  %i.avd = shl nuw nsw i32 %i.avc, 1
  %i.ave = sub nsw i32 1, %i.avd
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.aty, i64 %indvars.iv.i.i
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !161
  %i.avh = zext i16 %i.avg to i32
  %i.avi = mul nsw i32 %i.ave, %i.avh
  %i.avj = add nsw i32 %i.avi, %i.atc             ; 2 uses
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.avj, ptr %i.avk, align 4, !tbaa !160
  %i.avl = add nsw i32 %i.avj, %.01167.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph315, !llvm.loop !292

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.._crit_edge.thread.i_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge.thread.i_crit_edge.i ], [ %i.atz, %._crit_edge.i.i ]
  %i.avm = getelementptr inbounds nuw i8, ptr %i.asw, i64 3141
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !293
  %i.avo = zext i8 %i.avn to i32
  %i.avp = shl nuw nsw i32 %i.avo, 1
  %i.avq = sub nsw i32 1, %i.avp
  %i.avr = getelementptr inbounds nuw i8, ptr %i.asw, i64 3140
  %i.avs = load i8, ptr %i.avr, align 4, !tbaa !294
  %i.avt = zext i8 %i.avs to i32
  %i.avu = mul nsw i32 %i.avq, %i.avt
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 18994 ; 6 uses
  store i16 0, ptr %i.avv, align 2, !tbaa !161
  %i.avw = shl nuw nsw i32 8, %i.ata
  %i.avx = add nuw nsw i32 %i.avw, 65535
  %i.avy = add nuw nsw i32 %i.ata, 3              ; 2 uses
  %i.avz = lshr exact i32 %i.atc, 3
  %i.awa = lshr exact i32 %i.atb, 1
  %i.awb = shl nuw nsw i32 32768, %i.ata          ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 19028
  %i.awd = zext i8 %i.att to i64
  br label %bb.eb

.lr.ph11.i.i:                                     ; preds = %bb.eh
  %i.awe = add nsw i32 %i.atb, -1                 ; 3 uses
  %.not133.i.i = icmp eq i8 %.val.i, 0            ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 2610 ; 2 uses
  br i1 %.not133.i.i, label %.lr.ph11.split.us.i.i, label %.lr.ph11.split.i.i

.lr.ph11.split.us.i.i:                            ; preds = %.lr.ph11.i.i, %.lr.ph11.split.us.i.i
  %indvars.iv23.i.i = phi i64 [ %indvars.iv.next24.i.i, %.lr.ph11.split.us.i.i ], [ 0, %.lr.ph11.i.i ] ; 3 uses
  %indvars9.i = trunc i64 %indvars.iv23.i.i to i32 ; 3 uses
  %i.awg = lshr i32 %indvars9.i, %i.atl
  %i.awh = zext nneg i32 %i.awg to i64            ; 3 uses
  %i.awi = getelementptr inbounds nuw [2 x i8], ptr %i.avv, i64 %i.awh
  %i.awj = load i16, ptr %i.awi, align 2, !tbaa !161
  %i.awk = zext i16 %i.awj to i32
  %i.awl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.awh
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !161
  %i.awn = zext i16 %i.awm to i32
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.awh
  %i.awp = load i16, ptr %i.awo, align 2, !tbaa !161
  %i.awq = zext i16 %i.awp to i32
  %i.awr = sub nsw i32 %indvars9.i, %i.awq
  %i.aws = mul nsw i32 %i.awr, %i.awn
  %i.awt = add nsw i32 %i.aws, 1024
  %i.awu = ashr i32 %i.awt, 11
  %i.awv = add nsw i32 %i.awu, %i.awk             ; 2 uses
  %i.aww = icmp slt i32 %i.awv, 0
  %..i.i140.us.i.i = tail call i32 @llvm.smin.i32(i32 %i.awv, i32 %i.awe)
  %i.awx = trunc i32 %..i.i140.us.i.i to i8
  %i.awy = select i1 %i.aww, i8 0, i8 %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awf, i64 %indvars.iv23.i.i
  store i8 %i.awy, ptr %i.awz, align 1, !tbaa !131
  %i.axa = add i32 %indvars9.i, 1
  %i.axb = and i32 %i.axa, 65535
  %i.axc = icmp sgt i32 %i.atb, %i.axb
  %indvars.iv.next24.i.i = add i64 %indvars.iv23.i.i, 1
  br i1 %i.axc, label %.lr.ph11.split.us.i.i, label %.preheader.lr.ph.i.i, !llvm.loop !295

bb.eb:                                            ; preds = %bb.eh, %._crit_edge.thread.i.i
  %i.axd = phi i16 [ 0, %._crit_edge.thread.i.i ], [ %i.axl, %bb.eh ] ; 2 uses
  %indvars.iv17.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %indvars.iv.next18.i.i, %bb.eh ] ; 10 uses
  %i.axe = trunc i64 %indvars.iv17.i.i to i32
  %i.axf = mul i32 %i.atc, %i.axe
  %i.axg = trunc nuw i32 %i.axf to i16
  %i.axh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv17.i.i
  store i16 %i.axg, ptr %i.axh, align 2, !tbaa !161
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv17.i.i
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !160 ; 5 uses
  %i.axk = trunc i32 %i.axj to i16
  %i.axl = add i16 %i.axd, %i.axk                 ; 3 uses
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1 ; 3 uses
  %i.axm = getelementptr inbounds nuw [2 x i8], ptr %i.avv, i64 %indvars.iv.next18.i.i
  store i16 %i.axl, ptr %i.axm, align 2, !tbaa !161
  %.not134.i.i = icmp samesign ult i64 %indvars.iv17.i.i, %.pre-phi.i
  %.not135.i.i = icmp samesign ugt i64 %indvars.iv17.i.i, %i.awd
  %or.cond1.i.i = select i1 %.not134.i.i, i1 true, i1 %.not135.i.i
  br i1 %or.cond1.i.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.axn = zext i16 %i.axd to i32                 ; 2 uses
  %i.axo = and i32 %i.avx, %i.axn
  %.not136.i.i = icmp eq i32 %i.axo, 0
  br i1 %.not136.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.axp = lshr i32 %i.axn, %i.avy
  %i.axq = zext i16 %i.axl to i32
  %i.axr = lshr i32 %i.axq, %i.avy
  %i.axs = icmp eq i32 %i.axp, %i.axr
  br i1 %i.axs, label %lmcs_derive_lut.exit.thread.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.axt = shl nsw i32 %i.axj, 11
  %i.axu = add nsw i32 %i.axt, %i.atn
  %i.axv = ashr i32 %i.axu, %i.atl
  %i.axw = trunc i32 %i.axv to i16
  %i.axx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv17.i.i
  store i16 %i.axw, ptr %i.axx, align 2, !tbaa !161
  %i.axy = icmp eq i32 %i.axj, 0
  br i1 %i.axy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.axz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv17.i.i
  store i16 0, ptr %i.axz, align 2, !tbaa !161
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.aya = add nsw i32 %i.axj, %i.avu             ; 3 uses
  %i.ayb = icmp sge i32 %i.aya, %i.avz
  %.not137.i.i = icmp slt i32 %i.aya, %i.awa
  %or.cond.i.i = select i1 %i.ayb, i1 %.not137.i.i, i1 false
  br i1 %or.cond.i.i, label %.critedge139.i.i, label %lmcs_derive_lut.exit.thread.i

.critedge139.i.i:                                 ; preds = %bb.eg
  %i.ayc = sdiv i32 %i.awb, %i.axj
  %i.ayd = trunc i32 %i.ayc to i16
  %i.aye = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv17.i.i
  store i16 %i.ayd, ptr %i.aye, align 2, !tbaa !161
  %i.ayf = udiv i32 %i.awb, %i.aya
  %i.ayg = trunc i32 %i.ayf to i16
  br label %bb.eh

bb.eh:                                            ; preds = %.critedge139.i.i, %bb.ef
  %.sink.i.i = phi i16 [ %i.ayg, %.critedge139.i.i ], [ 2048, %bb.ef ]
  %i.ayh = getelementptr inbounds nuw [2 x i8], ptr %i.awc, i64 %indvars.iv17.i.i
  store i16 %.sink.i.i, ptr %i.ayh, align 2, !tbaa !161
  %exitcond20.not.i.i = icmp eq i64 %indvars.iv.next18.i.i, 16
  br i1 %exitcond20.not.i.i, label %.lr.ph11.i.i, label %bb.eb, !llvm.loop !296

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph11.split.i.i, %.lr.ph11.split.us.i.i
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 10802 ; 2 uses
  %i.ayj = add nuw nsw i32 %i.atw, 1
  br label %.preheader.i.i

.lr.ph11.split.i.i:                               ; preds = %.lr.ph11.i.i, %.lr.ph11.split.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %.lr.ph11.split.i.i ], [ 0, %.lr.ph11.i.i ] ; 3 uses
  %indvars.i = trunc i64 %indvars.iv21.i.i to i32 ; 3 uses
  %i.ayk = lshr i32 %indvars.i, %i.atl
  %i.ayl = zext nneg i32 %i.ayk to i64            ; 3 uses
  %i.aym = getelementptr inbounds nuw [2 x i8], ptr %i.avv, i64 %i.ayl
  %i.ayn = load i16, ptr %i.aym, align 2, !tbaa !161
  %i.ayo = zext i16 %i.ayn to i32
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ayl
  %i.ayq = load i16, ptr %i.ayp, align 2, !tbaa !161
  %i.ayr = zext i16 %i.ayq to i32
  %i.ays = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ayl
  %i.ayt = load i16, ptr %i.ays, align 2, !tbaa !161
  %i.ayu = zext i16 %i.ayt to i32
  %i.ayv = sub nsw i32 %indvars.i, %i.ayu
  %i.ayw = mul nsw i32 %i.ayv, %i.ayr
  %i.ayx = add nsw i32 %i.ayw, 1024
  %i.ayy = ashr i32 %i.ayx, 11
  %i.ayz = add nsw i32 %i.ayy, %i.ayo             ; 2 uses
  %i.aza = icmp slt i32 %i.ayz, 0
  %..i.i140.i.i = tail call i32 @llvm.smin.i32(i32 %i.ayz, i32 %i.awe)
  %i.azb = trunc i32 %..i.i140.i.i to i16
  %i.azc = select i1 %i.aza, i16 0, i16 %i.azb
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.awf, i64 %indvars.iv21.i.i
  store i16 %i.azc, ptr %i.azd, align 2, !tbaa !131
  %i.aze = add i32 %indvars.i, 1
  %i.azf = and i32 %i.aze, 65535
  %i.azg = icmp sgt i32 %i.atb, %i.azf
  %indvars.iv.next22.i.i = add i64 %indvars.iv21.i.i, 1
  br i1 %i.azg, label %.lr.ph11.split.i.i, label %.preheader.lr.ph.i.i, !llvm.loop !295

.preheader.i.i:                                   ; preds = %bb.em, %.preheader.lr.ph.i.i
end_hunk_0
