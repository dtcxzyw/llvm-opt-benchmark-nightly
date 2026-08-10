inline.NumInlined: 184
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Exa7_ManExactSynthesis:bb.a
  %cmp.n1018 = icmp eq i64 %n.vec1008, %wide.trip.count.i184
  br i1 %cmp.n1018, label %.preheader140.i, label %scalar.ph1005.preheader

scalar.ph1005.preheader:                          ; preds = %.lr.ph.i183, %middle.block1017
  %indvars.iv.i185.ph = phi i64 [ 0, %.lr.ph.i183 ], [ %n.vec1008, %middle.block1017 ]
  br label %scalar.ph1005

.preheader140.i:                                  ; preds = %scalar.ph1005, %middle.block1017, %bb.fn
  %i.apt = load i32, ptr %i.fy, align 8, !tbaa !71 ; 2 uses
  %i.apu = icmp slt i32 %i.apk, %i.apt
  br i1 %i.apu, label %.lr.ph161.i, label %Exa7_ManAddCnf.exit

.lr.ph161.i:                                      ; preds = %.preheader140.i
  %i.apv = sext i32 %i.apk to i64
  %i.apw = and i64 %i.apj, 1
  %i.apx = icmp eq i64 %i.apw, 0
  %i.apy = trunc i64 %i.apj to i1
  br label %bb.fo

scalar.ph1005:                                    ; preds = %scalar.ph1005.preheader, %scalar.ph1005
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186, %scalar.ph1005 ], [ %indvars.iv.i185.ph, %scalar.ph1005.preheader ] ; 3 uses
  %i.apz = trunc nuw nsw i64 %indvars.iv.i185 to i32
  %i.aqa = lshr i32 %.0100453, %i.apz
  %i.aqb = and i32 %i.aqa, 1
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %indvars.iv.i185
  store i32 %i.aqb, ptr %i.aqc, align 4, !tbaa !20
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i185, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i186, %wide.trip.count.i184
  br i1 %exitcond.not.i187, label %.preheader140.i, label %scalar.ph1005, !llvm.loop !136

bb.fo:                                            ; preds = %.loopexit.1.i, %.lr.ph161.i
  %i.aqd = phi i32 [ %i.apt, %.lr.ph161.i ], [ %i.avm, %.loopexit.1.i ] ; 8 uses
  %indvars.iv181.i = phi i64 [ %i.apv, %.lr.ph161.i ], [ %indvars.iv.next182.i, %.loopexit.1.i ] ; 3 uses
  %i.aqe = load i32, ptr %i.fw, align 4, !tbaa !70
  %i.aqf = load i32, ptr %i.fo, align 8, !tbaa !37
  %i.aqg = trunc nsw i64 %indvars.iv181.i to i32  ; 6 uses
  %i.aqh = sub nsw i32 %i.aqg, %i.aqf             ; 2 uses
  %i.aqi = mul nsw i32 %i.aqh, %i.aqe             ; 2 uses
  %i.aqj = load i32, ptr %i.gp, align 8, !tbaa !75
  %i.aqk = load i32, ptr %i.fu, align 8, !tbaa !69 ; 3 uses
  %i.aql = add nsw i32 %i.aqk, 1
  %i.aqm = mul nsw i32 %i.aql, %i.aqh
  %i.aqn = add nsw i32 %i.aqm, %i.aqj             ; 7 uses
  %i.aqo = icmp sgt i32 %i.aqk, 0
  br i1 %i.aqo, label %.preheader138.lr.ph.i, label %.preheader139.i

.preheader138.lr.ph.i:                            ; preds = %bb.fo
  %i.aqp = getelementptr inbounds [2048 x i8], ptr %i.afj, i64 %indvars.iv181.i
  %i.aqq = icmp sgt i32 %i.aqd, 0
  br i1 %i.aqq, label %.preheader138.i, label %.preheader139.i

.preheader139.i:                                  ; preds = %._crit_edge.i180, %.preheader138.lr.ph.i, %bb.fo
  %i.aqr = phi i32 [ %i.aqd, %bb.fo ], [ %i.aqd, %.preheader138.lr.ph.i ], [ %i.asm, %._crit_edge.i180 ] ; 2 uses
  %i.aqs = phi i32 [ %i.aqd, %bb.fo ], [ %i.aqd, %.preheader138.lr.ph.i ], [ %i.aso, %._crit_edge.i180 ]
  %i.aqt = add nsw i32 %i.aqs, -1                 ; 2 uses
  %i.aqu = icmp eq i32 %i.aqt, %i.aqg
  %or.cond122.i = select i1 %i.aqu, i1 %i.apx, i1 false
  br i1 %or.cond122.i, label %.loopexit.i175, label %.preheader137.i

.preheader138.i:                                  ; preds = %.preheader138.lr.ph.i, %._crit_edge.i180
  %i.aqv = phi i32 [ %i.asm, %._crit_edge.i180 ], [ %i.aqd, %.preheader138.lr.ph.i ] ; 2 uses
  %i.aqw = phi i32 [ %i.asn, %._crit_edge.i180 ], [ %i.aqk, %.preheader138.lr.ph.i ]
  %i.aqx = phi i32 [ %i.aso, %._crit_edge.i180 ], [ %i.aqd, %.preheader138.lr.ph.i ] ; 2 uses
  %i.aqy = phi i32 [ %i.asp, %._crit_edge.i180 ], [ %i.aqd, %.preheader138.lr.ph.i ] ; 2 uses
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %._crit_edge.i180 ], [ 0, %.preheader138.lr.ph.i ] ; 3 uses
  %i.aqz = icmp sgt i32 %i.aqy, 0
  br i1 %i.aqz, label %.lr.ph146.i, label %._crit_edge.i180

.lr.ph146.i:                                      ; preds = %.preheader138.i
  %i.ara = getelementptr inbounds nuw [256 x i8], ptr %i.aqp, i64 %indvars.iv169.i
  %i.arb = trunc i64 %indvars.iv169.i to i32
  %.tr = add i32 %i.aqn, %i.arb
  %i.arc = shl i32 %.tr, 1                        ; 2 uses
  %i.ard = or disjoint i32 %i.arc, 1              ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %.thread126.i, %.lr.ph146.i
  %i.are = phi i32 [ %i.aqv, %.lr.ph146.i ], [ %i.asi, %.thread126.i ]
  %i.arf = phi i32 [ %i.aqx, %.lr.ph146.i ], [ %i.asj, %.thread126.i ]
  %indvars.iv166.i = phi i64 [ 0, %.lr.ph146.i ], [ %indvars.iv.next167.i, %.thread126.i ] ; 6 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %indvars.iv166.i ; 2 uses
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !20 ; 2 uses
  %.not118.i = icmp eq i32 %i.arh, 0
  br i1 %.not118.i, label %.thread126.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ari = load i32, ptr %i.gp, align 8, !tbaa !75
  %i.arj = load i32, ptr %i.fu, align 8, !tbaa !69 ; 2 uses
  %i.ark = add nsw i32 %i.arj, 1
  %i.arl = load i32, ptr %i.fo, align 8, !tbaa !37 ; 2 uses
  %i.arm = trunc nuw nsw i64 %indvars.iv166.i to i32
  %i.arn = sub nsw i32 %i.arm, %i.arl
  %i.aro = mul nsw i32 %i.arn, %i.ark
  %i.arp = add nsw i32 %i.aro, %i.ari             ; 2 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %indvars.iv166.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.arr = shl nsw i32 %i.arh, 1
  %i.ars = or disjoint i32 %i.arr, 1              ; 2 uses
  store i32 %i.ars, ptr %i.j, align 4, !tbaa !20
  store i32 %i.arc, ptr %i.afq, align 4, !tbaa !20
  %i.art = sext i32 %i.arl to i64
  %.not119.i = icmp slt i64 %indvars.iv166.i, %i.art
  br i1 %.not119.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aru = add nsw i32 %i.arp, %i.arj
  %i.arv = shl nsw i32 %i.aru, 1
  %i.arw = or disjoint i32 %i.arv, 1
  store i32 %i.arw, ptr %.0100.sroa.gep124.i, align 4, !tbaa !20
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  %i.arx = load i32, ptr %i.arq, align 4, !tbaa !20
  %i.ary = icmp eq i32 %i.arx, 0
  br i1 %i.ary, label %.thread699, label %bb.ft

.thread699:                                       ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 %i.ars, ptr %i.j, align 4, !tbaa !20
  store i32 %i.ard, ptr %i.afq, align 4, !tbaa !20
  br label %bb.fx

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.0100.sroa.phi.i = phi ptr [ %.0100.sroa.gep.i, %bb.fr ], [ %.0100.sroa.gep124.i, %bb.fs ]
  %i.arz = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.asa = call i32 @cadical_solver_addclause(ptr noundef %i.arz, ptr noundef nonnull %i.j, ptr noundef nonnull %.0100.sroa.phi.i) #23
  %.not121.i = icmp eq i32 %i.asa, 0
  br i1 %.not121.i, label %bb.fy, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.pre.i181 = load i32, ptr %i.arg, align 4, !tbaa !20
  %.pre185.i = load i32, ptr %i.fo, align 8, !tbaa !37
  %.pre197.i = shl nsw i32 %.pre.i181, 1
  %.pre199.i = or disjoint i32 %.pre197.i, 1
  %.pre201.i = sext i32 %.pre185.i to i64
  %i.asb = icmp slt i64 %indvars.iv166.i, %.pre201.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 %.pre199.i, ptr %i.j, align 4, !tbaa !20
  store i32 %i.ard, ptr %i.afq, align 4, !tbaa !20
  br i1 %i.asb, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.asc = load i32, ptr %i.fu, align 8, !tbaa !69
  %i.asd = add nsw i32 %i.asc, %i.arp
  %i.ase = shl nsw i32 %i.asd, 1
  store i32 %i.ase, ptr %.0100.sroa.gep124.i, align 4, !tbaa !20
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %.pre = load i32, ptr %i.arq, align 4, !tbaa !20
  %i.asf = icmp eq i32 %.pre, 1
  br i1 %i.asf, label %.thread126.loopexit.i, label %bb.fx

bb.fx:                                            ; preds = %.thread699, %bb.fw, %bb.fv
  %.0100.sroa.phi.1.i = phi ptr [ %.0100.sroa.gep.i, %bb.fv ], [ %.0100.sroa.gep124.i, %bb.fw ], [ %.0100.sroa.gep124.i, %.thread699 ]
  %i.asg = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.ash = call i32 @cadical_solver_addclause(ptr noundef %i.asg, ptr noundef nonnull %i.j, ptr noundef nonnull %.0100.sroa.phi.1.i) #23
  %.not121.1.i = icmp eq i32 %i.ash, 0
  br i1 %.not121.1.i, label %bb.fy, label %.thread126.loopexit.i

.thread126.loopexit.i:                            ; preds = %bb.fx, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  %.pre186.i = load i32, ptr %i.fy, align 8, !tbaa !71 ; 2 uses
  br label %.thread126.i

bb.fy:                                            ; preds = %bb.fx, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  br label %Exa7_ManAddCnf.exit.thread

.thread126.i:                                     ; preds = %.thread126.loopexit.i, %bb.fp
  %i.asi = phi i32 [ %.pre186.i, %.thread126.loopexit.i ], [ %i.are, %bb.fp ] ; 2 uses
  %i.asj = phi i32 [ %.pre186.i, %.thread126.loopexit.i ], [ %i.arf, %bb.fp ] ; 4 uses
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %i.ask = sext i32 %i.asj to i64
  %i.asl = icmp slt i64 %indvars.iv.next167.i, %i.ask
  br i1 %i.asl, label %bb.fp, label %._crit_edge.loopexit.i, !llvm.loop !137

._crit_edge.loopexit.i:                           ; preds = %.thread126.i
  %.pre187.i = load i32, ptr %i.fu, align 8, !tbaa !69
  br label %._crit_edge.i180

._crit_edge.i180:                                 ; preds = %._crit_edge.loopexit.i, %.preheader138.i
  %i.asm = phi i32 [ %i.asi, %._crit_edge.loopexit.i ], [ %i.aqv, %.preheader138.i ] ; 2 uses
  %i.asn = phi i32 [ %.pre187.i, %._crit_edge.loopexit.i ], [ %i.aqw, %.preheader138.i ] ; 2 uses
  %i.aso = phi i32 [ %i.asj, %._crit_edge.loopexit.i ], [ %i.aqx, %.preheader138.i ] ; 2 uses
  %i.asp = phi i32 [ %i.asj, %._crit_edge.loopexit.i ], [ %i.aqy, %.preheader138.i ]
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %i.asq = sext i32 %i.asn to i64
  %i.asr = icmp slt i64 %indvars.iv.next170.i, %i.asq
  br i1 %i.asr, label %.preheader138.i, label %.preheader139.i, !llvm.loop !138

.preheader137.i:                                  ; preds = %.preheader139.i
  %i.ass = load i32, ptr %i.fw, align 4, !tbaa !70
  %.not154.i = icmp slt i32 %i.ass, 0
  br i1 %.not154.i, label %.loopexit.i175, label %.preheader.i172.preheader

.preheader.i172.preheader:                        ; preds = %.preheader137.i
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %i.aqn, i64 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader.i172

.preheader.i172:                                  ; preds = %.preheader.i172.preheader, %._crit_edge189.i
  %.1108155.i = phi i32 [ %i.aua, %._crit_edge189.i ], [ 0, %.preheader.i172.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.ast = icmp eq i32 %.1108155.i, 0
  %i.asu = load i32, ptr %i.fu, align 8, !tbaa !69 ; 5 uses
  %i.asv = icmp sgt i32 %i.asu, 0
  br i1 %i.asv, label %.lr.ph150.preheader.i, label %._crit_edge151.i

.lr.ph150.preheader.i:                            ; preds = %.preheader.i172
  %wide.trip.count177.i = zext nneg i32 %i.asu to i64 ; 3 uses
  %min.iters.check990 = icmp ult i32 %i.asu, 4
  br i1 %min.iters.check990, label %.lr.ph150.i.preheader, label %vector.ph991

vector.ph991:                                     ; preds = %.lr.ph150.preheader.i
  %n.vec992 = and i64 %wide.trip.count177.i, 2147483644 ; 3 uses
  %broadcast.splatinsert995 = insertelement <4 x i32> poison, i32 %.1108155.i, i64 0
  %broadcast.splat996 = shufflevector <4 x i32> %broadcast.splatinsert995, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph991
  %index998 = phi i64 [ 0, %vector.ph991 ], [ %index.next1000, %vector.body997 ] ; 2 uses
  %vec.ind999 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph991 ], [ %vec.ind.next1001, %vector.body997 ] ; 3 uses
  %i.asw = add nsw <4 x i32> %broadcast.splat994, %vec.ind999
  %i.asx = lshr <4 x i32> %broadcast.splat996, %vec.ind999
  %i.asy = and <4 x i32> %i.asx, splat (i32 1)
  %i.asz = shl nsw <4 x i32> %i.asw, splat (i32 1)
  %i.ata = or disjoint <4 x i32> %i.asz, %i.asy
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index998
  store <4 x i32> %i.ata, ptr %i.atb, align 16, !tbaa !20
  %index.next1000 = add nuw i64 %index998, 4      ; 2 uses
  %vec.ind.next1001 = add <4 x i32> %vec.ind999, splat (i32 4)
  %i.atc = icmp eq i64 %index.next1000, %n.vec992
  br i1 %i.atc, label %middle.block1002, label %vector.body997, !llvm.loop !139

middle.block1002:                                 ; preds = %vector.body997
  %cmp.n1003 = icmp eq i64 %n.vec992, %wide.trip.count177.i
  br i1 %cmp.n1003, label %._crit_edge151.i, label %.lr.ph150.i.preheader

.lr.ph150.i.preheader:                            ; preds = %.lr.ph150.preheader.i, %middle.block1002
  %indvars.iv172.i.ph = phi i64 [ 0, %.lr.ph150.preheader.i ], [ %n.vec992, %middle.block1002 ]
  br label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader, %.lr.ph150.i
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %.lr.ph150.i ], [ %indvars.iv172.i.ph, %.lr.ph150.i.preheader ] ; 3 uses
  %indvars176.i = trunc i64 %indvars.iv172.i to i32 ; 2 uses
  %i.atd = add nsw i32 %i.aqn, %indvars176.i
  %i.ate = lshr i32 %.1108155.i, %indvars176.i
  %i.atf = and i32 %i.ate, 1
  %i.atg = shl nsw i32 %i.atd, 1
  %i.ath = or disjoint i32 %i.atg, %i.atf
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 1 ; 2 uses
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv172.i
  store i32 %i.ath, ptr %i.ati, align 4, !tbaa !20
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next173.i, %wide.trip.count177.i
  br i1 %exitcond178.not.i, label %._crit_edge151.i, label %.lr.ph150.i, !llvm.loop !140

._crit_edge151.i:                                 ; preds = %.lr.ph150.i, %middle.block1002, %.preheader.i172
  %.1112.lcssa.i = phi i32 [ 0, %.preheader.i172 ], [ %i.asu, %middle.block1002 ], [ %i.asu, %.lr.ph150.i ] ; 4 uses
  %i.atj = load i32, ptr %i.fy, align 8, !tbaa !71
  %i.atk = add nsw i32 %i.atj, -1
  %.not114.i = icmp eq i32 %i.atk, %i.aqg
  br i1 %.not114.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %._crit_edge151.i
  %i.atl = add nsw i32 %.1112.lcssa.i, %i.aqn
  %i.atm = shl nsw i32 %i.atl, 1
  %i.atn = or disjoint i32 %i.atm, 1
  %i.ato = add nuw nsw i32 %.1112.lcssa.i, 1
  %i.atp = zext nneg i32 %.1112.lcssa.i to i64
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.atp
  store i32 %i.atn, ptr %i.atq, align 4, !tbaa !20
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %._crit_edge151.i
  %.1.i173 = phi i32 [ %i.ato, %bb.fz ], [ %.1112.lcssa.i, %._crit_edge151.i ] ; 3 uses
  br i1 %i.ast, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.atr = add i32 %.1108155.i, %i.aqi
  %i.ats = shl nsw i32 %i.atr, 1
  %i.att = add nuw nsw i32 %.1.i173, 1
  %i.atu = zext nneg i32 %.1.i173 to i64
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.atu
  store i32 %i.ats, ptr %i.atv, align 4, !tbaa !20
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.2.i = phi i32 [ %i.att, %bb.gb ], [ %.1.i173, %bb.ga ]
  %i.atw = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.atx = zext nneg i32 %.2.i to i64
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.atx
  %i.atz = call i32 @cadical_solver_addclause(ptr noundef %i.atw, ptr noundef nonnull %i.k, ptr noundef nonnull %i.aty) #23
  %.not117.i = icmp eq i32 %i.atz, 0
  br i1 %.not117.i, label %.loopexit179.i, label %._crit_edge189.i

.loopexit179.i:                                   ; preds = %bb.gc, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %Exa7_ManAddCnf.exit.thread

._crit_edge189.i:                                 ; preds = %bb.gc
  %.pre190.i = load i32, ptr %i.fw, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.aua = add nuw nsw i32 %.1108155.i, 1
  %.not.not.i = icmp slt i32 %.1108155.i, %.pre190.i
  br i1 %.not.not.i, label %.preheader.i172, label %.loopexit.loopexit.i174, !llvm.loop !141

.loopexit.loopexit.i174:                          ; preds = %._crit_edge189.i
  %.pre191.i = load i32, ptr %i.fy, align 8, !tbaa !71 ; 2 uses
  %.pre196.i = add nsw i32 %.pre191.i, -1
  br label %.loopexit.i175

.loopexit.i175:                                   ; preds = %.loopexit.loopexit.i174, %.preheader137.i, %.preheader139.i
  %.pre-phi.i176 = phi i32 [ %.pre196.i, %.loopexit.loopexit.i174 ], [ %i.aqt, %.preheader137.i ], [ %i.aqg, %.preheader139.i ]
  %i.aub = phi i32 [ %.pre191.i, %.loopexit.loopexit.i174 ], [ %i.aqr, %.preheader137.i ], [ %i.aqr, %.preheader139.i ] ; 2 uses
  %i.auc = icmp eq i32 %.pre-phi.i176, %i.aqg
  %or.cond122.1.i = select i1 %i.auc, i1 %i.apy, i1 false
  br i1 %or.cond122.1.i, label %.loopexit.1.i, label %.preheader137.1.i

.preheader137.1.i:                                ; preds = %.loopexit.i175
  %i.aud = load i32, ptr %i.fw, align 4, !tbaa !70 ; 2 uses
  %.not154.1.i = icmp slt i32 %i.aud, 0
  br i1 %.not154.1.i, label %.loopexit.1.i, label %.lr.ph157.1.i.preheader

.lr.ph157.1.i.preheader:                          ; preds = %.preheader137.1.i
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %i.aqn, i64 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph157.1.i

.lr.ph157.1.i:                                    ; preds = %.lr.ph157.1.i.preheader, %bb.gf
  %i.aue = phi i32 [ %i.avk, %bb.gf ], [ %i.aud, %.lr.ph157.1.i.preheader ]
  %.1108155.1.i = phi i32 [ %i.avl, %bb.gf ], [ 0, %.lr.ph157.1.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.auf = icmp eq i32 %.1108155.1.i, 0
  br i1 %i.auf, label %bb.gf, label %.preheader.1.i177

.preheader.1.i177:                                ; preds = %.lr.ph157.1.i
  %i.aug = load i32, ptr %i.fu, align 8, !tbaa !69 ; 5 uses
  %i.auh = icmp sgt i32 %i.aug, 0
  br i1 %i.auh, label %.lr.ph150.preheader.1.i, label %._crit_edge151.1.i

.lr.ph150.preheader.1.i:                          ; preds = %.preheader.1.i177
  %wide.trip.count177.1.i = zext nneg i32 %i.aug to i64 ; 3 uses
  %min.iters.check974 = icmp ult i32 %i.aug, 4
  br i1 %min.iters.check974, label %.lr.ph150.1.i.preheader, label %vector.ph975

vector.ph975:                                     ; preds = %.lr.ph150.preheader.1.i
  %n.vec976 = and i64 %wide.trip.count177.1.i, 2147483644 ; 3 uses
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %.1108155.1.i, i64 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph975
  %index982 = phi i64 [ 0, %vector.ph975 ], [ %index.next984, %vector.body981 ] ; 2 uses
  %vec.ind983 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph975 ], [ %vec.ind.next985, %vector.body981 ] ; 3 uses
  %i.aui = add nsw <4 x i32> %broadcast.splat978, %vec.ind983
  %i.auj = lshr <4 x i32> %broadcast.splat980, %vec.ind983
  %i.auk = and <4 x i32> %i.auj, splat (i32 1)
  %i.aul = shl nsw <4 x i32> %i.aui, splat (i32 1)
  %i.aum = or disjoint <4 x i32> %i.aul, %i.auk
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index982
  store <4 x i32> %i.aum, ptr %i.aun, align 16, !tbaa !20
  %index.next984 = add nuw i64 %index982, 4       ; 2 uses
  %vec.ind.next985 = add <4 x i32> %vec.ind983, splat (i32 4)
  %i.auo = icmp eq i64 %index.next984, %n.vec976
  br i1 %i.auo, label %middle.block986, label %vector.body981, !llvm.loop !142

middle.block986:                                  ; preds = %vector.body981
  %cmp.n987 = icmp eq i64 %n.vec976, %wide.trip.count177.1.i
  br i1 %cmp.n987, label %._crit_edge151.1.i, label %.lr.ph150.1.i.preheader

.lr.ph150.1.i.preheader:                          ; preds = %.lr.ph150.preheader.1.i, %middle.block986
  %indvars.iv172.1.i.ph = phi i64 [ 0, %.lr.ph150.preheader.1.i ], [ %n.vec976, %middle.block986 ]
  br label %.lr.ph150.1.i

.lr.ph150.1.i:                                    ; preds = %.lr.ph150.1.i.preheader, %.lr.ph150.1.i
  %indvars.iv172.1.i = phi i64 [ %indvars.iv.next173.1.i, %.lr.ph150.1.i ], [ %indvars.iv172.1.i.ph, %.lr.ph150.1.i.preheader ] ; 3 uses
  %indvars176.1.i = trunc i64 %indvars.iv172.1.i to i32 ; 2 uses
  %i.aup = add nsw i32 %i.aqn, %indvars176.1.i
  %i.auq = lshr i32 %.1108155.1.i, %indvars176.1.i
  %i.aur = and i32 %i.auq, 1
  %i.aus = shl nsw i32 %i.aup, 1
  %i.aut = or disjoint i32 %i.aus, %i.aur
  %indvars.iv.next173.1.i = add nuw nsw i64 %indvars.iv172.1.i, 1 ; 2 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv172.1.i
  store i32 %i.aut, ptr %i.auu, align 4, !tbaa !20
  %exitcond178.1.not.i = icmp eq i64 %indvars.iv.next173.1.i, %wide.trip.count177.1.i
  br i1 %exitcond178.1.not.i, label %._crit_edge151.1.i, label %.lr.ph150.1.i, !llvm.loop !143

._crit_edge151.1.i:                               ; preds = %.lr.ph150.1.i, %middle.block986, %.preheader.1.i177
  %.1112.lcssa.1.i = phi i32 [ 0, %.preheader.1.i177 ], [ %i.aug, %middle.block986 ], [ %i.aug, %.lr.ph150.1.i ] ; 4 uses
  %i.auv = load i32, ptr %i.fy, align 8, !tbaa !71
  %i.auw = add nsw i32 %i.auv, -1
  %.not114.1.i = icmp eq i32 %i.auw, %i.aqg
  br i1 %.not114.1.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge151.1.i
  %i.aux = add nsw i32 %.1112.lcssa.1.i, %i.aqn
  %i.auy = shl nsw i32 %i.aux, 1
  %i.auz = add nuw nsw i32 %.1112.lcssa.1.i, 1
  %i.ava = zext nneg i32 %.1112.lcssa.1.i to i64
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ava
  store i32 %i.auy, ptr %i.avb, align 4, !tbaa !20
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge151.1.i
  %.1.1.i178 = phi i32 [ %i.auz, %bb.gd ], [ %.1112.lcssa.1.i, %._crit_edge151.1.i ]
  %i.avc = add i32 %.1108155.1.i, %i.aqi
  %i.avd = shl nsw i32 %i.avc, 1
  %i.ave = or disjoint i32 %i.avd, 1
  %i.avf = zext nneg i32 %.1.1.i178 to i64
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.avf ; 2 uses
  store i32 %i.ave, ptr %i.avg, align 4, !tbaa !20
  %i.avh = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avg, i64 4
  %i.avj = call i32 @cadical_solver_addclause(ptr noundef %i.avh, ptr noundef nonnull %i.k, ptr noundef nonnull %i.avi) #23
  %.not117.1.i = icmp eq i32 %i.avj, 0
  br i1 %.not117.1.i, label %.loopexit179.i, label %._crit_edge193.i

._crit_edge193.i:                                 ; preds = %bb.ge
  %.pre194.i = load i32, ptr %i.fw, align 4, !tbaa !70
  br label %bb.gf

bb.gf:                                            ; preds = %._crit_edge193.i, %.lr.ph157.1.i
  %i.avk = phi i32 [ %.pre194.i, %._crit_edge193.i ], [ %i.aue, %.lr.ph157.1.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.avl = add nuw nsw i32 %.1108155.1.i, 1
  %.not.not.1.i = icmp slt i32 %.1108155.1.i, %i.avk
  br i1 %.not.not.1.i, label %.lr.ph157.1.i, label %.loopexit.loopexit.1.i179, !llvm.loop !141

.loopexit.loopexit.1.i179:                        ; preds = %bb.gf
  %.pre195.i = load i32, ptr %i.fy, align 8, !tbaa !71
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i179, %.preheader137.1.i, %.loopexit.i175
  %i.avm = phi i32 [ %.pre195.i, %.loopexit.loopexit.1.i179 ], [ %i.aub, %.preheader137.1.i ], [ %i.aub, %.loopexit.i175 ] ; 2 uses
  %indvars.iv.next182.i = add nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %i.avn = sext i32 %i.avm to i64
  %i.avo = icmp slt i64 %indvars.iv.next182.i, %i.avn
  br i1 %i.avo, label %bb.fo, label %Exa7_ManAddCnf.exit, !llvm.loop !144

Exa7_ManAddCnf.exit:                              ; preds = %.loopexit.1.i, %.preheader140.i
  %i.avp = load i32, ptr %i.fu, align 8, !tbaa !69
  %i.avq = add nsw i32 %i.avp, 1
  %i.avr = load i32, ptr %i.fr, align 4, !tbaa !67
  %i.avs = mul nsw i32 %i.avq, %i.avr
  %i.avt = load i32, ptr %i.gp, align 8, !tbaa !75
  %i.avu = add nsw i32 %i.avt, %i.avs
  store i32 %i.avu, ptr %i.gp, align 8, !tbaa !75
  br label %Exa7_ManAddCnf2.exit.thread

Exa7_ManAddCnf2.exit.thread:                      ; preds = %.loopexit127.i, %.preheader128.i, %Exa7_ManAddCnf.exit
  %i.avv = load ptr, ptr %i.vu, align 8, !tbaa !45
  %i.avw = call i32 @cadical_solver_solve(ptr noundef %i.avv, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #23 ; 5 uses
  %i.avx = load i32, ptr %i.afr, align 4, !tbaa !145
  %.not119 = icmp eq i32 %i.avx, 0
  br i1 %.not119, label %bb.gj, label %bb.gg

bb.gg:                                            ; preds = %Exa7_ManAddCnf2.exit.thread
  %i.avy = load i32, ptr %i.vv, align 4, !tbaa !103
  %.not120 = icmp eq i32 %i.avy, 0
  %i.avz = urem i32 %.098455, 100
  %i.awa = icmp eq i32 %i.avz, 0
  %or.cond134 = select i1 %.not120, i1 true, i1 %i.awa
  br i1 %or.cond134, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.awb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.awc = icmp slt i32 %i.awb, 0
  br i1 %i.awc, label %Abc_Clock.exit189, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.awd = load i64, ptr %3, align 8, !tbaa !49
  %i.awe = mul nsw i64 %i.awd, 1000000
  %i.awf = load i64, ptr %i.afs, align 8, !tbaa !52
  %i.awg = sdiv i64 %i.awf, 1000
  %i.awh = add nsw i64 %i.awg, %i.awe
  br label %Abc_Clock.exit189

Abc_Clock.exit189:                                ; preds = %bb.gh, %bb.gi
  %.0.i188 = phi i64 [ %i.awh, %bb.gi ], [ -1, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.awi = sub nsw i64 %.0.i188, %.0.i
  call void @Exa7_ManPrint(ptr noundef nonnull %i.fm, i32 noundef %.098455, i32 noundef %.0100453, i64 noundef %i.awi)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gg, %Abc_Clock.exit189, %Exa7_ManAddCnf2.exit.thread
  %i.awj = add i32 %i.avw, -1
  %or.cond = icmp ult i32 %i.awj, -2              ; 3 uses
  br i1 %or.cond, label %bb.gk, label %Exa7_ManAddCnf.exit.thread

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.awk = load i32, ptr %i.fo, align 8, !tbaa !37 ; 3 uses
  %i.awl = load i32, ptr %i.fy, align 8, !tbaa !71 ; 3 uses
  %i.awm = icmp slt i32 %i.awk, %i.awl
  br i1 %i.awm, label %.lr.ph115.i, label %._crit_edge116.i

.lr.ph115.i:                                      ; preds = %bb.gk
  %i.awn = sext i32 %i.awk to i64                 ; 2 uses
  %.pre.i192 = load i32, ptr %i.fw, align 4, !tbaa !70
  br label %bb.gl

bb.gl:                                            ; preds = %._crit_edge112.i, %.lr.ph115.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge112.i ], [ 0, %.lr.ph115.i ] ; 2 uses
  %i.awo = phi i32 [ %i.bdo, %._crit_edge112.i ], [ %i.awl, %.lr.ph115.i ] ; 6 uses
  %i.awp = phi i32 [ %i.bdp, %._crit_edge112.i ], [ %.pre.i192, %.lr.ph115.i ]
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %._crit_edge112.i ], [ %i.awn, %.lr.ph115.i ] ; 5 uses
  %i.awq = add i64 %indvar, %i.awn
  %i.awr = shl i64 %i.awq, 3
  %i.aws = add i64 %i.awr, 8
  %i.awt = load i32, ptr %i.fo, align 8, !tbaa !37
  %i.awu = trunc nsw i64 %indvars.iv134.i to i32
  %i.awv = sub nsw i32 %i.awu, %i.awt
  %i.aww = mul nsw i32 %i.awv, %i.awp
  %i.awx = load i32, ptr %i.fu, align 8, !tbaa !69 ; 4 uses
  %i.awy = icmp sgt i32 %i.awx, 0
  br i1 %i.awy, label %.lr.ph.i196, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.gl
  %.val73.pre.i = load i32, ptr %i.gd, align 4, !tbaa !72
  br label %._crit_edge.i193

.lr.ph.i196:                                      ; preds = %bb.gl
  %i.awz = getelementptr inbounds [2048 x i8], ptr %i.afj, i64 %indvars.iv134.i
  %i.axa = icmp sgt i32 %i.awo, 0
  br i1 %i.axa, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i196
  %.val75.us.i = load i32, ptr %i.gd, align 4, !tbaa !72 ; 3 uses
  %.val76.us.i = load ptr, ptr %i.sz, align 8, !tbaa !97
  %i.axb = getelementptr i8, ptr %.val76.us.i, i64 8
  %.val76.val.us.i = load ptr, ptr %i.axb, align 8, !tbaa !90
  %i.axc = sub nsw i32 0, %.val75.us.i
  %i.axd = sext i32 %i.axc to i64
  %i.axe = getelementptr inbounds [8 x i8], ptr %.val76.val.us.i, i64 %i.axd ; 2 uses
  %wide.trip.count.i197 = zext nneg i32 %i.awx to i64 ; 3 uses
  %min.iters.check962 = icmp ult i32 %i.awx, 4
  br i1 %min.iters.check962, label %Exa7_ManFindFanin.exit.us.i.preheader, label %vector.ph963

vector.ph963:                                     ; preds = %.lr.ph.split.us.i
  %n.vec964 = and i64 %wide.trip.count.i197, 2147483644 ; 3 uses
  %broadcast.splatinsert965 = insertelement <2 x ptr> poison, ptr %i.axe, i64 0
  %broadcast.splat966 = shufflevector <2 x ptr> %broadcast.splatinsert965, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph963
  %index968 = phi i64 [ 0, %vector.ph963 ], [ %index.next969, %vector.body967 ] ; 2 uses
  %i.axf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index968 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 16
  store <2 x ptr> %broadcast.splat966, ptr %i.axf, align 16, !tbaa !146
  store <2 x ptr> %broadcast.splat966, ptr %i.axg, align 16, !tbaa !146
  %index.next969 = add nuw i64 %index968, 4       ; 2 uses
  %i.axh = icmp eq i64 %index.next969, %n.vec964
  br i1 %i.axh, label %middle.block970, label %vector.body967, !llvm.loop !147

middle.block970:                                  ; preds = %vector.body967
  %cmp.n971 = icmp eq i64 %n.vec964, %wide.trip.count.i197
  br i1 %cmp.n971, label %._crit_edge.i193, label %Exa7_ManFindFanin.exit.us.i.preheader

Exa7_ManFindFanin.exit.us.i.preheader:            ; preds = %.lr.ph.split.us.i, %middle.block970
  %indvars.iv.i198.ph = phi i64 [ 0, %.lr.ph.split.us.i ], [ %n.vec964, %middle.block970 ]
  br label %Exa7_ManFindFanin.exit.us.i
end_hunk_0
