inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
  %.pre604.i.i.i = load i32, ptr %i.gr, align 4, !tbaa !108
  br label %opj_t1_dec_refpass_step_mqc.exit.i.i.i

opj_t1_dec_refpass_step_mqc.exit.i.i.i:           ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %i.bbt = phi i32 [ %i.ayd, %.lr.ph.i.i.i ], [ %.pre604.i.i.i, %.loopexit.i.i.i.i ] ; 4 uses
  %i.bbu = phi i32 [ %i.aye, %.lr.ph.i.i.i ], [ %i.bbs, %.loopexit.i.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bbv = sub i32 %i.bbt, %.0418.lcssa.i.i.i
  %i.bbw = zext i32 %i.bbv to i64
  %i.bbx = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bbw
  br i1 %i.bbx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !150

._crit_edge.i.i.i:                                ; preds = %opj_t1_dec_refpass_step_mqc.exit.i.i.i, %.preheader.i8.i.i
  %i.bby = phi i32 [ %i.ayb, %.preheader.i8.i.i ], [ %i.bbt, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ]
  %i.bbz = phi i32 [ %.0418.lcssa.i.i.i, %.preheader.i8.i.i ], [ %i.bbt, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ]
  %i.bca = add nuw i32 %.1421559.i.i.i, 1         ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.2417560.i.i.i, i64 4
  %i.bcc = getelementptr inbounds nuw i8, ptr %.2414561.i.i.i, i64 4
  %exitcond603.not.i.i.i = icmp eq i32 %i.bca, %i.aaa
  br i1 %exitcond603.not.i.i.i, label %opj_t1_dec_sigpass_raw.exit.i, label %.preheader.i8.i.i, !llvm.loop !151

bb.kc:                                            ; preds = %bb.an
  tail call fastcc void @opj_t1_dec_clnpass(ptr noundef nonnull %.0254, i32 noundef %.1151279.i, i32 noundef %i.bu)
  br label %opj_t1_dec_sigpass_raw.exit.i

default.unreachable.i:                            ; preds = %bb.an
  unreachable

opj_t1_dec_sigpass_raw.exit.i:                    ; preds = %._crit_edge.i.i.i, %._crit_edge.i194.i, %._crit_edge.i.i, %bb.kc, %._crit_edge542.i.i.i, %opj_t1_dec_refpass_mqc_64x64.exit.i.i, %._crit_edge104.i.i, %bb.cc, %._crit_edge137.i.i
  br i1 %or.cond4.not.i, label %opj_t1_dec_sigpass_raw.exit.thread.i, label %bb.kd

bb.kd:                                            ; preds = %opj_t1_dec_sigpass_raw.exit.i
  tail call void @opj_mqc_resetstates(ptr noundef nonnull %.0254) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0254, i32 noundef 18, i32 noundef 0, i32 noundef 46) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0254, i32 noundef 17, i32 noundef 0, i32 noundef 3) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0254, i32 noundef 0, i32 noundef 0, i32 noundef 4) #12
  br label %opj_t1_dec_sigpass_raw.exit.thread.i

opj_t1_dec_sigpass_raw.exit.thread.i:             ; preds = %bb.kd, %opj_t1_dec_sigpass_raw.exit.i, %.preheader94.lr.ph.i.i, %.preheader126.lr.ph.i.i
  %i.bcd = add nuw nsw i32 %.1149280.i, 1         ; 2 uses
  %i.bce = icmp eq i32 %i.bcd, 3                  ; 2 uses
  %i.bcf = sext i1 %i.bce to i32
  %spec.select.i = add nsw i32 %.1151279.i, %i.bcf ; 3 uses
  %spec.select178.i = select i1 %i.bce, i32 0, i32 %i.bcd ; 2 uses
  %i.bcg = add nuw i32 %.0146281.i, 1             ; 2 uses
  %i.bch = load i32, ptr %i.hp, align 4, !tbaa !106
  %i.bci = icmp ult i32 %i.bcg, %i.bch
  %i.bcj = icmp sgt i32 %spec.select.i, 0
  %i.bck = select i1 %i.bci, i1 %i.bcj, i1 false
  br i1 %i.bck, label %bb.an, label %._crit_edge284.i, !llvm.loop !152

._crit_edge284.i:                                 ; preds = %opj_t1_dec_sigpass_raw.exit.thread.i, %bb.am
  %.1151.lcssa.i = phi i32 [ %.0150287.i, %bb.am ], [ %spec.select.i, %opj_t1_dec_sigpass_raw.exit.thread.i ]
  %.1149.lcssa.i = phi i32 [ %.0148288.i, %bb.am ], [ %spec.select178.i, %opj_t1_dec_sigpass_raw.exit.thread.i ]
  tail call void @opq_mqc_finish_dec(ptr noundef nonnull %.0254) #12
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %i.bcl = load i32, ptr %i.gn, align 4, !tbaa !102
  %i.bcm = zext i32 %i.bcl to i64
  %i.bcn = icmp samesign ult i64 %indvars.iv.next370.i, %i.bcm
  br i1 %i.bcn, label %bb.aj, label %._crit_edge293.i, !llvm.loop !153

._crit_edge293.i:                                 ; preds = %._crit_edge284.i, %bb.ai
  %.not169.i = icmp eq i32 %i.cf, 0
  br i1 %.not169.i, label %bb.km, label %bb.ke

bb.ke:                                            ; preds = %._crit_edge293.i
  %i.bco = getelementptr inbounds nuw i8, ptr %.0254, i64 16 ; 2 uses
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !111 ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 2
  %i.bcr = getelementptr inbounds nuw i8, ptr %.0254, i64 32 ; 2 uses
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !154 ; 2 uses
  %i.bct = icmp ult ptr %i.bcq, %i.bcs
  br i1 %i.bct, label %bb.kf, label %bb.kj

bb.kf:                                            ; preds = %bb.ke
  %.not171.i = icmp eq ptr %i.cd, null            ; 2 uses
  br i1 %.not171.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  tail call void @opj_mutex_lock(ptr noundef nonnull %i.cd) #12
  %.pre373.i = load ptr, ptr %i.bcr, align 8, !tbaa !154
  %.pre374.i = load ptr, ptr %i.bco, align 8, !tbaa !111
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.bcu = phi ptr [ %.pre374.i, %bb.kg ], [ %i.bcp, %bb.kf ]
  %i.bcv = phi ptr [ %.pre373.i, %bb.kg ], [ %i.bcs, %bb.kf ]
  %i.bcw = ptrtoint ptr %i.bcv to i64             ; 2 uses
  %i.bcx = ptrtoint ptr %i.bcu to i64             ; 2 uses
  %i.bcy = sub i64 %i.bcw, %i.bcx
  %i.bcz = trunc i64 %i.bcy to i32
  %i.bda = add nsw i32 %i.bcz, -2
  %i.bdb = getelementptr inbounds nuw i8, ptr %.0254, i64 24
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !155
  %i.bdd = ptrtoint ptr %i.bdc to i64             ; 2 uses
  %i.bde = sub i64 %i.bcx, %i.bdd
  %i.bdf = trunc i64 %i.bde to i32
  %i.bdg = sub i64 %i.bcw, %i.bdd
  %i.bdh = trunc i64 %i.bdg to i32
  %i.bdi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %i.cb, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %i.bda, i32 noundef %i.bdf, i32 noundef %i.bdh) #12 ; 0 uses
  br i1 %.not171.i, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @opj_mutex_unlock(ptr noundef nonnull %i.cd) #12
  br label %bb.km

bb.kj:                                            ; preds = %bb.ke
  %i.bdj = getelementptr inbounds nuw i8, ptr %.0254, i64 12 ; 2 uses
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !127 ; 2 uses
  %i.bdl = icmp ugt i32 %i.bdk, 2
  br i1 %i.bdl, label %bb.kk, label %bb.km

bb.kk:                                            ; preds = %bb.kj
  %.not170.i = icmp eq ptr %i.cd, null
  br i1 %.not170.i, label %.critedge180.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  tail call void @opj_mutex_lock(ptr noundef nonnull %i.cd) #12
  %i.bdm = load i32, ptr %i.bdj, align 4, !tbaa !127
  %i.bdn = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %i.cb, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %i.bdm) #12 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %i.cd) #12
  br label %bb.km

.critedge180.i:                                   ; preds = %bb.kk
  %i.bdo = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %i.cb, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %i.bdk) #12 ; 0 uses
  br label %bb.km

bb.km:                                            ; preds = %.critedge180.i, %bb.kl, %bb.kj, %bb.ki, %bb.kh, %._crit_edge293.i
  %i.bdp = load ptr, ptr %i.gj, align 8, !tbaa !49
  %.not172.i = icmp eq ptr %i.bdp, null
  br i1 %.not172.i, label %opj_t1_decode_cblk.exit, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bdq = getelementptr inbounds nuw i8, ptr %.0254, i64 216
  store ptr %.0142.i, ptr %i.bdq, align 8, !tbaa !15
  br label %opj_t1_decode_cblk.exit

opj_t1_decode_cblk.exit:                          ; preds = %bb.kn, %bb.km, %bb.af, %bb.z, %bb.u
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bds = load i32, ptr %i.bdr, align 8, !tbaa !55
  %i.bdt = load i32, ptr %i.ag, align 8, !tbaa !156
  %i.bdu = sub nsw i32 %i.bds, %i.bdt             ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !56
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !157
  %i.bdz = sub nsw i32 %i.bdw, %i.bdy             ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.beb = load i32, ptr %i.bea, align 8, !tbaa !39 ; 2 uses
  %i.bec = and i32 %i.beb, 1
  %.not273 = icmp eq i32 %i.bec, 0
  br i1 %.not273, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %opj_t1_decode_cblk.exit
  %i.bed = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.bee = add i32 %i.ae, -1
  %i.bef = zext i32 %i.bee to i64
  %i.beg = getelementptr inbounds nuw [192 x i8], ptr %i.bed, i64 %i.bef ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 8
  %i.bei = load i32, ptr %i.beh, align 8, !tbaa !82
  %i.bej = load i32, ptr %i.beg, align 8, !tbaa !83
  %i.bek = add i32 %i.bei, %i.bdu
  %i.bel = sub i32 %i.bek, %i.bej
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %opj_t1_decode_cblk.exit
  %.0244 = phi i32 [ %i.bel, %bb.ko ], [ %i.bdu, %opj_t1_decode_cblk.exit ] ; 2 uses
  %i.bem = and i32 %i.beb, 2
  %.not274 = icmp eq i32 %i.bem, 0
  br i1 %.not274, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ben = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.beo = add i32 %i.ae, -1
  %i.bep = zext i32 %i.beo to i64
  %i.beq = getelementptr inbounds nuw [192 x i8], ptr %i.ben, i64 %i.bep ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 12
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !158
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beq, i64 4
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !159
  %i.bev = add i32 %i.bes, %i.bdz
  %i.bew = sub i32 %i.bev, %i.beu
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.0245 = phi i32 [ %i.bew, %bb.kq ], [ %i.bdz, %bb.kp ] ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !49 ; 2 uses
  %.not275 = icmp eq ptr %i.bey, null             ; 2 uses
  br i1 %.not275, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bez = getelementptr inbounds nuw i8, ptr %.0254, i64 216
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !15
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.ks
  %i.bfb = phi ptr [ %i.bfa, %bb.ks ], [ %i.bey, %bb.kr ] ; 21 uses
  %i.bfc = ptrtoaddr ptr %i.bfb to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %.0254, i64 232
  %i.bfe = load i32, ptr %i.bfd, align 8, !tbaa !107 ; 16 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.0254, i64 236
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !108 ; 8 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.ak, i64 808 ; 2 uses
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !87 ; 3 uses
  %.not276 = icmp eq i32 %i.bfi, 0
  br i1 %.not276, label %.loopexit292, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bfj = icmp sgt i32 %i.bfi, 30
  %i.bfk = icmp ne i32 %i.bfg, 0
  %i.bfl = icmp ne i32 %i.bfe, 0
  %or.cond394 = select i1 %i.bfk, i1 %i.bfl, i1 false ; 2 uses
  br i1 %i.bfj, label %.preheader291, label %.preheader294

.preheader294:                                    ; preds = %bb.ku
  br i1 %or.cond394, label %.preheader293.preheader, label %.loopexit292

.preheader293.preheader:                          ; preds = %.preheader294
  %wide.trip.count = zext i32 %i.bfe to i64
  br label %.preheader293

.preheader291:                                    ; preds = %bb.ku
  br i1 %or.cond394, label %.preheader290.preheader, label %.loopexit292

.preheader290.preheader:                          ; preds = %.preheader291
  %wide.trip.count481 = zext i32 %i.bfe to i64    ; 6 uses
  %i.bfm = add nsw i64 %wide.trip.count481, -1    ; 2 uses
  %min.iters.check785 = icmp ult i32 %i.bfe, 12
  %i.bfn = trunc i64 %i.bfm to i32
  %i.bfo = icmp ugt i64 %i.bfm, 4294967295
  %n.vec787 = and i64 %wide.trip.count481, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec787, %wide.trip.count481
  %xtraiter = and i64 %wide.trip.count481, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader, %._crit_edge367
  %.0250368 = phi i32 [ %i.bgs, %._crit_edge367 ], [ 0, %.preheader290.preheader ] ; 2 uses
  %i.bfp = mul i32 %.0250368, %i.bfe              ; 7 uses
  br i1 %min.iters.check785, label %scalar.ph784.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader290
  %i.bfq = xor i32 %i.bfp, -1
  %i.bfr = icmp ult i32 %i.bfq, %i.bfn
  %i.bfs = or i1 %i.bfr, %i.bfo
  br i1 %i.bfs, label %scalar.ph784.preheader, label %vector.body788

vector.body788:                                   ; preds = %vector.scevcheck, %vector.body788
  %index789 = phi i64 [ %index.next790, %vector.body788 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bft = trunc nuw i64 %index789 to i32
  %i.bfu = add i32 %i.bfp, %i.bft
  %i.bfv = zext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bfv ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bfw, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.bfx, align 4, !tbaa !3
  %index.next790 = add nuw i64 %index789, 8       ; 2 uses
  %i.bfy = icmp eq i64 %index.next790, %n.vec787
  br i1 %i.bfy, label %middle.block791, label %vector.body788, !llvm.loop !160

middle.block791:                                  ; preds = %vector.body788
  br i1 %cmp.n, label %._crit_edge367, label %scalar.ph784.preheader

scalar.ph784.preheader:                           ; preds = %vector.scevcheck, %.preheader290, %middle.block791
  %indvars.iv478.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader290 ], [ %n.vec787, %middle.block791 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol

scalar.ph784.prol:                                ; preds = %scalar.ph784.preheader, %scalar.ph784.prol
  %indvars.iv478.prol = phi i64 [ %indvars.iv.next479.prol, %scalar.ph784.prol ], [ %indvars.iv478.ph, %scalar.ph784.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph784.prol ], [ 0, %scalar.ph784.preheader ]
  %i.bfz = trunc nuw i64 %indvars.iv478.prol to i32
  %i.bga = add i32 %i.bfp, %i.bfz
  %i.bgb = zext i32 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgb
  store i32 0, ptr %i.bgc, align 4, !tbaa !3
  %indvars.iv.next479.prol = add nuw nsw i64 %indvars.iv478.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol, !llvm.loop !161

scalar.ph784.prol.loopexit:                       ; preds = %scalar.ph784.prol, %scalar.ph784.preheader
  %indvars.iv478.unr = phi i64 [ %indvars.iv478.ph, %scalar.ph784.preheader ], [ %indvars.iv.next479.prol, %scalar.ph784.prol ]
  %i.bgd = sub nsw i64 %indvars.iv478.ph, %wide.trip.count481
  %i.bge = icmp ugt i64 %i.bgd, -4
  br i1 %i.bge, label %._crit_edge367, label %scalar.ph784.preheader.new

scalar.ph784.preheader.new:                       ; preds = %scalar.ph784.prol.loopexit
  %invariant.op = add i32 1, %i.bfp
  %invariant.op1001 = add i32 2, %i.bfp
  %invariant.op1003 = add i32 3, %i.bfp
  br label %scalar.ph784

scalar.ph784:                                     ; preds = %scalar.ph784, %scalar.ph784.preheader.new
  %indvars.iv478 = phi i64 [ %indvars.iv478.unr, %scalar.ph784.preheader.new ], [ %indvars.iv.next479.3, %scalar.ph784 ] ; 5 uses
  %i.bgf = trunc nuw i64 %indvars.iv478 to i32
  %i.bgg = add i32 %i.bfp, %i.bgf
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgh
  store i32 0, ptr %i.bgi, align 4, !tbaa !3
  %i.bgj = trunc i64 %indvars.iv478 to i32
  %.reass = add i32 %i.bgj, %invariant.op
  %i.bgk = zext i32 %.reass to i64
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgk
  store i32 0, ptr %i.bgl, align 4, !tbaa !3
  %i.bgm = trunc i64 %indvars.iv478 to i32
  %.reass1002 = add i32 %i.bgm, %invariant.op1001
  %i.bgn = zext i32 %.reass1002 to i64
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgn
  store i32 0, ptr %i.bgo, align 4, !tbaa !3
  %i.bgp = trunc i64 %indvars.iv478 to i32
  %.reass1004 = add i32 %i.bgp, %invariant.op1003
  %i.bgq = zext i32 %.reass1004 to i64
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgq
  store i32 0, ptr %i.bgr, align 4, !tbaa !3
  %indvars.iv.next479.3 = add nuw nsw i64 %indvars.iv478, 4 ; 2 uses
  %exitcond482.not.3 = icmp eq i64 %indvars.iv.next479.3, %wide.trip.count481
  br i1 %exitcond482.not.3, label %._crit_edge367, label %scalar.ph784, !llvm.loop !163

._crit_edge367:                                   ; preds = %scalar.ph784.prol.loopexit, %scalar.ph784, %middle.block791
  %i.bgs = add nuw i32 %.0250368, 1               ; 2 uses
  %exitcond483.not = icmp eq i32 %i.bgs, %i.bfg
  br i1 %exitcond483.not, label %.loopexit292, label %.preheader290, !llvm.loop !164

.preheader293:                                    ; preds = %.preheader293.preheader, %._crit_edge
  %.1251365 = phi i32 [ %i.bhf, %._crit_edge ], [ 0, %.preheader293.preheader ] ; 2 uses
  %i.bgt = mul i32 %.1251365, %i.bfe
  br label %bb.kv

bb.kv:                                            ; preds = %.preheader293, %bb.kx
  %indvars.iv = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next, %bb.kx ] ; 2 uses
  %i.bgu = trunc nuw i64 %indvars.iv to i32
  %i.bgv = add i32 %i.bgt, %i.bgu
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgw ; 2 uses
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !3 ; 2 uses
  %i.bgz = tail call i32 @llvm.abs.i32(i32 %i.bgy, i1 true) ; 2 uses
  %.highbits = lshr i32 %i.bgz, %i.bfi
  %.not277 = icmp eq i32 %.highbits, 0
  br i1 %.not277, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bha = load i32, ptr %i.bfh, align 4, !tbaa !87
  %i.bhb = lshr i32 %i.bgz, %i.bha                ; 2 uses
  %i.bhc = icmp slt i32 %i.bgy, 0
  %i.bhd = sub nsw i32 0, %i.bhb
  %i.bhe = select i1 %i.bhc, i32 %i.bhd, i32 %i.bhb
  store i32 %i.bhe, ptr %i.bgx, align 4, !tbaa !3
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.kv, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.kx
  %i.bhf = add nuw i32 %.1251365, 1               ; 2 uses
  %exitcond477.not = icmp eq i32 %i.bhf, %i.bfg
  br i1 %exitcond477.not, label %.loopexit292, label %.preheader293, !llvm.loop !166

.loopexit292:                                     ; preds = %._crit_edge, %._crit_edge367, %.preheader294, %.preheader291, %bb.kt
  br i1 %.not275, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %.loopexit292
  %i.bhg = mul i32 %i.bfg, %i.bfe                 ; 9 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !167
  %i.bhj = icmp eq i32 %i.bhi, 1
  br i1 %i.bhj, label %.preheader286, label %bb.kz

.preheader286:                                    ; preds = %bb.ky
  %.not397 = icmp eq i32 %i.bhg, 0
  br i1 %.not397, label %.loopexit, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %.preheader286
  %wide.trip.count488 = zext i32 %i.bhg to i64    ; 3 uses
  %min.iters.check806 = icmp ult i32 %i.bhg, 8
  br i1 %min.iters.check806, label %.lr.ph377.preheader850, label %vector.ph807

vector.ph807:                                     ; preds = %.lr.ph377.preheader
  %n.vec808 = and i64 %wide.trip.count488, 4294967288 ; 3 uses
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph807
  %index810 = phi i64 [ 0, %vector.ph807 ], [ %index.next813, %vector.body809 ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %index810 ; 3 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 16 ; 2 uses
  %wide.load811 = load <4 x i32>, ptr %i.bhk, align 4, !tbaa !3
  %wide.load812 = load <4 x i32>, ptr %i.bhl, align 4, !tbaa !3
  %i.bhm = sdiv <4 x i32> %wide.load811, splat (i32 2)
  %i.bhn = sdiv <4 x i32> %wide.load812, splat (i32 2)
  store <4 x i32> %i.bhm, ptr %i.bhk, align 4, !tbaa !3
  store <4 x i32> %i.bhn, ptr %i.bhl, align 4, !tbaa !3
  %index.next813 = add nuw i64 %index810, 8       ; 2 uses
  %i.bho = icmp eq i64 %index.next813, %n.vec808
  br i1 %i.bho, label %middle.block814, label %vector.body809, !llvm.loop !168

middle.block814:                                  ; preds = %vector.body809
  %cmp.n815 = icmp eq i64 %n.vec808, %wide.trip.count488
  br i1 %cmp.n815, label %.loopexit, label %.lr.ph377.preheader850

.lr.ph377.preheader850:                           ; preds = %.lr.ph377.preheader, %middle.block814
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %n.vec808, %middle.block814 ]
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader850, %.lr.ph377
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %.lr.ph377 ], [ %indvars.iv485.ph, %.lr.ph377.preheader850 ] ; 2 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %indvars.iv485 ; 2 uses
  %i.bhq = load i32, ptr %i.bhp, align 4, !tbaa !3
  %i.bhr = sdiv i32 %i.bhq, 2
  store i32 %i.bhr, ptr %i.bhp, align 4, !tbaa !3
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond489.not = icmp eq i64 %indvars.iv.next486, %wide.trip.count488
  br i1 %exitcond489.not, label %.loopexit, label %.lr.ph377, !llvm.loop !169

bb.kz:                                            ; preds = %bb.ky
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bht = load float, ptr %i.bhs, align 8, !tbaa !170
  %i.bhu = fmul float %i.bht, 5.000000e-01        ; 3 uses
  %i.bhv = insertelement <4 x float> poison, float %i.bhu, i64 0
  %i.bhw = shufflevector <4 x float> %i.bhv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bhx = and i32 %i.bhg, -16                    ; 2 uses
  %.not396 = icmp eq i32 %i.bhx, 0
  br i1 %.not396, label %.preheader288, label %.lr.ph

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.bhy = and i32 %i.bhg, -16
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %bb.kz
  %.3249.lcssa = phi i32 [ 0, %bb.kz ], [ %i.bhy, %.preheader288.loopexit ] ; 3 uses
  %.0243.lcssa = phi ptr [ %i.bfb, %bb.kz ], [ %i.bjg, %.preheader288.loopexit ] ; 3 uses
  %i.bhz = icmp ult i32 %.3249.lcssa, %i.bhg
  br i1 %i.bhz, label %.lr.ph375.preheader, label %.loopexit

.lr.ph375.preheader:                              ; preds = %.preheader288
  %i.bia = and i32 %i.bhg, -16
  %i.bib = xor i32 %i.bia, -1
  %i.bic = add i32 %i.bhg, %i.bib                 ; 2 uses
  %i.bid = zext i32 %i.bic to i64
  %i.bie = add nuw nsw i64 %i.bid, 1              ; 2 uses
  %min.iters.check794 = icmp ult i32 %i.bic, 7
  br i1 %min.iters.check794, label %.lr.ph375.preheader852, label %vector.ph795

vector.ph795:                                     ; preds = %.lr.ph375.preheader
  %n.vec796 = and i64 %i.bie, 8589934584          ; 4 uses
  %i.bif = shl nuw nsw i64 %n.vec796, 2
  %i.big = getelementptr i8, ptr %.0243.lcssa, i64 %i.bif
  %i.bih = trunc i64 %n.vec796 to i32
  %i.bii = add i32 %.3249.lcssa, %i.bih
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bhu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph795
  %index798 = phi i64 [ 0, %vector.ph795 ], [ %index.next800, %vector.body797 ] ; 2 uses
  %i.bij = shl i64 %index798, 2
  %next.gep = getelementptr i8, ptr %.0243.lcssa, i64 %i.bij ; 4 uses
  %i.bik = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load799 = load <4 x i32>, ptr %i.bik, align 4, !tbaa !3
  %i.bil = sitofp <4 x i32> %wide.load to <4 x float>
  %i.bim = sitofp <4 x i32> %wide.load799 to <4 x float>
  %i.bin = fmul <4 x float> %broadcast.splat, %i.bil
  %i.bio = fmul <4 x float> %broadcast.splat, %i.bim
  %i.bip = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bin, ptr %next.gep, align 4
  store <4 x float> %i.bio, ptr %i.bip, align 4
  %index.next800 = add nuw i64 %index798, 8       ; 2 uses
  %i.biq = icmp eq i64 %index.next800, %n.vec796
  br i1 %i.biq, label %middle.block801, label %vector.body797, !llvm.loop !171

middle.block801:                                  ; preds = %vector.body797
  %cmp.n802 = icmp eq i64 %i.bie, %n.vec796
  br i1 %cmp.n802, label %.loopexit, label %.lr.ph375.preheader852

.lr.ph375.preheader852:                           ; preds = %.lr.ph375.preheader, %middle.block801
  %.1374.ph = phi ptr [ %.0243.lcssa, %.lr.ph375.preheader ], [ %i.big, %middle.block801 ]
  %.4373.ph = phi i32 [ %.3249.lcssa, %.lr.ph375.preheader ], [ %i.bii, %middle.block801 ]
  br label %.lr.ph375

.lr.ph:                                           ; preds = %bb.kz, %.lr.ph
  %.0243370 = phi ptr [ %i.bjg, %.lr.ph ], [ %i.bfb, %bb.kz ] ; 6 uses
  %.3249369 = phi i32 [ %i.bjh, %.lr.ph ], [ 0, %bb.kz ]
  %i.bir = load <4 x i32>, ptr %.0243370, align 16, !tbaa !48
  %i.bis = sitofp <4 x i32> %i.bir to <4 x float>
  %i.bit = getelementptr inbounds nuw i8, ptr %.0243370, i64 16 ; 2 uses
  %i.biu = load <4 x i32>, ptr %i.bit, align 16, !tbaa !48
  %i.biv = sitofp <4 x i32> %i.biu to <4 x float>
  %i.biw = getelementptr inbounds nuw i8, ptr %.0243370, i64 32 ; 2 uses
  %i.bix = load <4 x i32>, ptr %i.biw, align 16, !tbaa !48
  %i.biy = sitofp <4 x i32> %i.bix to <4 x float>
  %i.biz = getelementptr inbounds nuw i8, ptr %.0243370, i64 48 ; 2 uses
  %i.bja = load <4 x i32>, ptr %i.biz, align 16, !tbaa !48
  %i.bjb = sitofp <4 x i32> %i.bja to <4 x float>
  %i.bjc = fmul <4 x float> %i.bhw, %i.bis
  store <4 x float> %i.bjc, ptr %.0243370, align 16, !tbaa !48
  %i.bjd = fmul <4 x float> %i.bhw, %i.biv
  store <4 x float> %i.bjd, ptr %i.bit, align 16, !tbaa !48
  %i.bje = fmul <4 x float> %i.bhw, %i.biy
  store <4 x float> %i.bje, ptr %i.biw, align 16, !tbaa !48
  %i.bjf = fmul <4 x float> %i.bhw, %i.bjb
  store <4 x float> %i.bjf, ptr %i.biz, align 16, !tbaa !48
  %i.bjg = getelementptr inbounds nuw i8, ptr %.0243370, i64 64 ; 2 uses
  %i.bjh = add nuw i32 %.3249369, 16              ; 2 uses
  %i.bji = icmp ult i32 %i.bjh, %i.bhx
  br i1 %i.bji, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !172

.lr.ph375:                                        ; preds = %.lr.ph375.preheader852, %.lr.ph375
  %.1374 = phi ptr [ %i.bjm, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader852 ] ; 3 uses
  %.4373 = phi i32 [ %i.bjn, %.lr.ph375 ], [ %.4373.ph, %.lr.ph375.preheader852 ]
  %i.bjj = load i32, ptr %.1374, align 4, !tbaa !3
  %i.bjk = sitofp i32 %i.bjj to float
  %i.bjl = fmul float %i.bhu, %i.bjk
  store float %i.bjl, ptr %.1374, align 4
  %i.bjm = getelementptr inbounds nuw i8, ptr %.1374, i64 4
  %i.bjn = add nuw i32 %.4373, 1                  ; 2 uses
  %exitcond484.not = icmp eq i32 %i.bjn, %i.bhg
  br i1 %exitcond484.not, label %.loopexit, label %.lr.ph375, !llvm.loop !173

bb.la:                                            ; preds = %.loopexit292
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !167
  %i.bjq = icmp eq i32 %i.bjp, 1
  %i.bjr = zext i32 %i.av to i64                  ; 7 uses
  br i1 %i.bjq, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !174 ; 2 uses
  %i.bju = sext i32 %.0245 to i64                 ; 2 uses
  %i.bjv = mul nsw i64 %i.bju, %i.bjr
  %i.bjw = sext i32 %.0244 to i64                 ; 2 uses
  %i.bjx = getelementptr [4 x i8], ptr %i.bjt, i64 %i.bjv
  %i.bjy = getelementptr [4 x i8], ptr %i.bjx, i64 %i.bjw ; 2 uses
  %.not398 = icmp eq i32 %i.bfg, 0
  br i1 %.not398, label %.loopexit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %bb.lb
  %i.bjz = ptrtoaddr ptr %i.bjt to i64
  %i.bka = and i32 %i.bfe, -4                     ; 2 uses
  %.not399 = icmp eq i32 %i.bka, 0
  %i.bkb = zext i32 %i.bka to i64
  %wide.trip.count503 = zext i32 %i.bfg to i64
  %wide.trip.count498 = zext i32 %i.bfe to i64    ; 5 uses
  %i.bkc = mul nsw i64 %i.bju, %i.bjr
  %i.bkd = add i64 %i.bkc, %i.bjw
  %i.bke = shl i64 %i.bkd, 2
  %i.bkf = add i64 %i.bke, %i.bjz
  %i.bkg = sub i64 %i.bkf, %i.bfc
  %i.bkh = shl nuw nsw i64 %i.bjr, 2
  %i.bki = add nsw i64 %wide.trip.count498, -1
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge392
  %indvars.iv500 = phi i64 [ 0, %.preheader283.lr.ph ], [ %indvars.iv.next501, %._crit_edge392 ] ; 6 uses
  %i.bkj = mul i64 %i.bkh, %indvars.iv500
  %i.bkk = add i64 %i.bkg, %i.bkj
  br i1 %.not399, label %.preheader, label %.lr.ph388

.lr.ph388:                                        ; preds = %.preheader283
  %i.bkl = trunc nuw i64 %indvars.iv500 to i32
  %i.bkm = mul i32 %i.bfe, %i.bkl
  %i.bkn = mul nuw i64 %indvars.iv500, %i.bjr
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.bkn
  br label %bb.lc

.preheader.loopexit:                              ; preds = %bb.lc
  %i.bkp = trunc nuw i64 %indvars.iv.next493 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader283
  %.5.lcssa = phi i32 [ 0, %.preheader283 ], [ %i.bkp, %.preheader.loopexit ] ; 4 uses
  %i.bkq = icmp ult i32 %.5.lcssa, %i.bfe
  br i1 %i.bkq, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %.preheader
  %i.bkr = trunc nuw i64 %indvars.iv500 to i32
  %i.bks = mul i32 %i.bfe, %i.bkr                 ; 6 uses
  %i.bkt = mul nuw i64 %indvars.iv500, %i.bjr
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.bkt ; 4 uses
  %i.bkv = zext i32 %.5.lcssa to i64              ; 8 uses
  %i.bkw = sub nsw i64 %wide.trip.count498, %i.bkv ; 3 uses
  %min.iters.check837 = icmp ult i64 %i.bkw, 12
  br i1 %min.iters.check837, label %scalar.ph836.preheader, label %vector.scevcheck835

vector.scevcheck835:                              ; preds = %.lr.ph391
  %i.bkx = xor i64 %i.bkv, -1
  %i.bky = add nsw i64 %i.bkx, %wide.trip.count498 ; 2 uses
  %i.bkz = add i32 %.5.lcssa, %i.bks
  %i.bla = trunc i64 %i.bky to i32
  %i.blb = xor i32 %i.bkz, -1
  %i.blc = icmp ult i32 %i.blb, %i.bla
  %i.bld = icmp ugt i64 %i.bky, 4294967295
  %i.ble = or i1 %i.blc, %i.bld
  br i1 %i.ble, label %scalar.ph836.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck835
  %i.blf = shl nuw nsw i64 %i.bkv, 2
  %i.blg = add i64 %i.bkk, %i.blf
  %i.blh = add i32 %.5.lcssa, %i.bks
  %i.bli = zext i32 %i.blh to i64
  %i.blj = shl nuw nsw i64 %i.bli, 2
  %i.blk = sub i64 %i.blj, %i.blg
  %diff.check = icmp ugt i64 %i.blk, -32
  br i1 %diff.check, label %scalar.ph836.preheader, label %vector.ph838

vector.ph838:                                     ; preds = %vector.memcheck
  %n.vec839 = and i64 %i.bkw, -8                  ; 3 uses
  %i.bll = add nsw i64 %n.vec839, %i.bkv
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next844, %vector.body840 ] ; 2 uses
  %i.blm = add nuw i64 %index841, %i.bkv          ; 2 uses
  %i.bln = trunc nuw i64 %i.blm to i32
  %i.blo = add i32 %i.bks, %i.bln
  %i.blp = zext i32 %i.blo to i64
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.blp ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 16
  %wide.load842 = load <4 x i32>, ptr %i.blq, align 4, !tbaa !3
  %wide.load843 = load <4 x i32>, ptr %i.blr, align 4, !tbaa !3
  %i.bls = sdiv <4 x i32> %wide.load842, splat (i32 2)
  %i.blt = sdiv <4 x i32> %wide.load843, splat (i32 2)
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %i.blm ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 16
  store <4 x i32> %i.bls, ptr %i.blu, align 4, !tbaa !3
  store <4 x i32> %i.blt, ptr %i.blv, align 4, !tbaa !3
  %index.next844 = add nuw i64 %index841, 8       ; 2 uses
  %i.blw = icmp eq i64 %index.next844, %n.vec839
  br i1 %i.blw, label %middle.block845, label %vector.body840, !llvm.loop !175

middle.block845:                                  ; preds = %vector.body840
  %cmp.n846 = icmp eq i64 %i.bkw, %n.vec839
  br i1 %cmp.n846, label %._crit_edge392, label %scalar.ph836.preheader

scalar.ph836.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck835, %.lr.ph391, %middle.block845
  %indvars.iv495.ph = phi i64 [ %i.bkv, %vector.memcheck ], [ %i.bkv, %vector.scevcheck835 ], [ %i.bkv, %.lr.ph391 ], [ %i.bll, %middle.block845 ] ; 6 uses
  %i.blx = sub nsw i64 %wide.trip.count498, %indvars.iv495.ph
  %xtraiter927 = and i64 %i.blx, 1
  %lcmp.mod928.not = icmp eq i64 %xtraiter927, 0
  br i1 %lcmp.mod928.not, label %scalar.ph836.prol.loopexit, label %scalar.ph836.prol

scalar.ph836.prol:                                ; preds = %scalar.ph836.preheader
  %i.bly = trunc nuw i64 %indvars.iv495.ph to i32
  %i.blz = add i32 %i.bks, %i.bly
  %i.bma = zext i32 %i.blz to i64
  %i.bmb = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bma
  %i.bmc = load i32, ptr %i.bmb, align 4, !tbaa !3
  %i.bmd = sdiv i32 %i.bmc, 2
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %indvars.iv495.ph
  store i32 %i.bmd, ptr %i.bme, align 4, !tbaa !3
  %indvars.iv.next496.prol = add nuw nsw i64 %indvars.iv495.ph, 1
  br label %scalar.ph836.prol.loopexit

scalar.ph836.prol.loopexit:                       ; preds = %scalar.ph836.prol, %scalar.ph836.preheader
  %indvars.iv495.unr = phi i64 [ %indvars.iv495.ph, %scalar.ph836.preheader ], [ %indvars.iv.next496.prol, %scalar.ph836.prol ]
  %i.bmf = icmp eq i64 %indvars.iv495.ph, %i.bki
  br i1 %i.bmf, label %._crit_edge392, label %scalar.ph836

bb.lc:                                            ; preds = %.lr.ph388, %bb.lc
  %indvars.iv492 = phi i64 [ 0, %.lr.ph388 ], [ %indvars.iv.next493, %bb.lc ] ; 3 uses
  %i.bmg = trunc nuw i64 %indvars.iv492 to i32
  %i.bmh = add i32 %i.bkm, %i.bmg                 ; 4 uses
  %i.bmi = zext i32 %i.bmh to i64
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bmi
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !3
  %i.bml = add i32 %i.bmh, 1
  %i.bmm = zext i32 %i.bml to i64
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bmm
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !3
  %i.bmp = add i32 %i.bmh, 2
  %i.bmq = zext i32 %i.bmp to i64
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bmq
  %i.bms = load i32, ptr %i.bmr, align 4, !tbaa !3
  %i.bmt = add i32 %i.bmh, 3
  %i.bmu = zext i32 %i.bmt to i64
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bmu
  %i.bmw = load i32, ptr %i.bmv, align 4, !tbaa !3
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.bko, i64 %indvars.iv492
  %i.bmy = insertelement <4 x i32> poison, i32 %i.bmk, i64 0
  %i.bmz = insertelement <4 x i32> %i.bmy, i32 %i.bmo, i64 1
  %i.bna = insertelement <4 x i32> %i.bmz, i32 %i.bms, i64 2
  %i.bnb = insertelement <4 x i32> %i.bna, i32 %i.bmw, i64 3
  %i.bnc = sdiv <4 x i32> %i.bnb, splat (i32 2)
  store <4 x i32> %i.bnc, ptr %i.bmx, align 4, !tbaa !3
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 4 ; 3 uses
  %i.bnd = icmp samesign ult i64 %indvars.iv.next493, %i.bkb
  br i1 %i.bnd, label %bb.lc, label %.preheader.loopexit, !llvm.loop !176

scalar.ph836:                                     ; preds = %scalar.ph836.prol.loopexit, %scalar.ph836
  %indvars.iv495 = phi i64 [ %indvars.iv.next496.1, %scalar.ph836 ], [ %indvars.iv495.unr, %scalar.ph836.prol.loopexit ] ; 4 uses
  %i.bne = trunc nuw i64 %indvars.iv495 to i32
  %i.bnf = add i32 %i.bks, %i.bne
  %i.bng = zext i32 %i.bnf to i64
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bng
  %i.bni = load i32, ptr %i.bnh, align 4, !tbaa !3
  %i.bnj = sdiv i32 %i.bni, 2
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %indvars.iv495
  store i32 %i.bnj, ptr %i.bnk, align 4, !tbaa !3
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %i.bnl = trunc nuw i64 %indvars.iv.next496 to i32
  %i.bnm = add i32 %i.bks, %i.bnl
  %i.bnn = zext i32 %i.bnm to i64
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bnn
  %i.bnp = load i32, ptr %i.bno, align 4, !tbaa !3
  %i.bnq = sdiv i32 %i.bnp, 2
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %indvars.iv.next496
  store i32 %i.bnq, ptr %i.bnr, align 4, !tbaa !3
  %indvars.iv.next496.1 = add nuw nsw i64 %indvars.iv495, 2 ; 2 uses
  %exitcond499.not.1 = icmp eq i64 %indvars.iv.next496.1, %wide.trip.count498
  br i1 %exitcond499.not.1, label %._crit_edge392, label %scalar.ph836, !llvm.loop !177

._crit_edge392:                                   ; preds = %scalar.ph836.prol.loopexit, %scalar.ph836, %middle.block845, %.preheader
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, %wide.trip.count503
  br i1 %exitcond504.not, label %.loopexit, label %.preheader283, !llvm.loop !178

bb.ld:                                            ; preds = %bb.la
  %i.bns = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bnt = load float, ptr %i.bns, align 8, !tbaa !170
  %i.bnu = fmul float %i.bnt, 5.000000e-01        ; 2 uses
  %i.bnv = icmp ne i32 %i.bfg, 0
  %i.bnw = icmp ne i32 %i.bfe, 0
  %or.cond395 = select i1 %i.bnv, i1 %i.bnw, i1 false
  br i1 %or.cond395, label %.preheader284.preheader, label %.loopexit

.preheader284.preheader:                          ; preds = %bb.ld
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bny = load ptr, ptr %i.bnx, align 8, !tbaa !174
  %i.bnz = sext i32 %.0245 to i64
  %i.boa = mul nsw i64 %i.bnz, %i.bjr
  %i.bob = getelementptr [4 x i8], ptr %i.bny, i64 %i.boa
  %i.boc = sext i32 %.0244 to i64
  %i.bod = getelementptr [4 x i8], ptr %i.bob, i64 %i.boc
  %i.boe = zext i32 %i.bfe to i64                 ; 2 uses
  %min.iters.check818 = icmp ult i32 %i.bfe, 8
  %n.vec820 = and i64 %i.boe, 4294967288          ; 4 uses
  %i.bof = shl nuw nsw i64 %n.vec820, 2           ; 2 uses
  %i.bog = trunc nuw i64 %n.vec820 to i32
  %broadcast.splatinsert821 = insertelement <4 x float> poison, float %i.bnu, i64 0
  %broadcast.splat822 = shufflevector <4 x float> %broadcast.splatinsert821, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n831 = icmp eq i64 %n.vec820, %i.boe
  br label %.preheader284

.preheader284:                                    ; preds = %.preheader284.preheader, %._crit_edge382
  %.0242386 = phi ptr [ %i.box, %._crit_edge382 ], [ %i.bod, %.preheader284.preheader ] ; 4 uses
  %.2385 = phi ptr [ %.lcssa, %._crit_edge382 ], [ %i.bfb, %.preheader284.preheader ] ; 3 uses
  %.3253384 = phi i32 [ %i.boy, %._crit_edge382 ], [ 0, %.preheader284.preheader ]
  br i1 %min.iters.check818, label %scalar.ph817.preheader, label %vector.ph819

vector.ph819:                                     ; preds = %.preheader284
  %i.boh = getelementptr i8, ptr %.0242386, i64 %i.bof
  %i.boi = getelementptr i8, ptr %.2385, i64 %i.bof ; 2 uses
  br label %vector.body823

vector.body823:                                   ; preds = %vector.body823, %vector.ph819
  %index824 = phi i64 [ 0, %vector.ph819 ], [ %index.next829, %vector.body823 ] ; 2 uses
  %i.boj = shl i64 %index824, 2                   ; 2 uses
  %next.gep825 = getelementptr i8, ptr %.0242386, i64 %i.boj ; 2 uses
  %next.gep826 = getelementptr i8, ptr %.2385, i64 %i.boj ; 2 uses
  %i.bok = getelementptr i8, ptr %next.gep826, i64 16
  %wide.load827 = load <4 x i32>, ptr %next.gep826, align 4, !tbaa !3
  %wide.load828 = load <4 x i32>, ptr %i.bok, align 4, !tbaa !3
  %i.bol = sitofp <4 x i32> %wide.load827 to <4 x float>
  %i.bom = sitofp <4 x i32> %wide.load828 to <4 x float>
  %i.bon = fmul <4 x float> %broadcast.splat822, %i.bol
  %i.boo = fmul <4 x float> %broadcast.splat822, %i.bom
  %i.bop = getelementptr i8, ptr %next.gep825, i64 16
  store <4 x float> %i.bon, ptr %next.gep825, align 4, !tbaa !179
  store <4 x float> %i.boo, ptr %i.bop, align 4, !tbaa !179
  %index.next829 = add nuw i64 %index824, 8       ; 2 uses
  %i.boq = icmp eq i64 %index.next829, %n.vec820
  br i1 %i.boq, label %middle.block830, label %vector.body823, !llvm.loop !180

middle.block830:                                  ; preds = %vector.body823
  br i1 %cmp.n831, label %._crit_edge382, label %scalar.ph817.preheader

scalar.ph817.preheader:                           ; preds = %.preheader284, %middle.block830
  %.0380.ph = phi ptr [ %.0242386, %.preheader284 ], [ %i.boh, %middle.block830 ]
  %.3379.ph = phi ptr [ %.2385, %.preheader284 ], [ %i.boi, %middle.block830 ]
  %.7378.ph = phi i32 [ 0, %.preheader284 ], [ %i.bog, %middle.block830 ]
  br label %scalar.ph817

scalar.ph817:                                     ; preds = %scalar.ph817.preheader, %scalar.ph817
  %.0380 = phi ptr [ %i.bov, %scalar.ph817 ], [ %.0380.ph, %scalar.ph817.preheader ] ; 2 uses
  %.3379 = phi ptr [ %i.bou, %scalar.ph817 ], [ %.3379.ph, %scalar.ph817.preheader ] ; 2 uses
  %.7378 = phi i32 [ %i.bow, %scalar.ph817 ], [ %.7378.ph, %scalar.ph817.preheader ]
  %i.bor = load i32, ptr %.3379, align 4, !tbaa !3
  %i.bos = sitofp i32 %i.bor to float
  %i.bot = fmul float %i.bnu, %i.bos
  store float %i.bot, ptr %.0380, align 4, !tbaa !179
  %i.bou = getelementptr inbounds nuw i8, ptr %.3379, i64 4 ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %.0380, i64 4
  %i.bow = add nuw i32 %.7378, 1                  ; 2 uses
  %exitcond490.not = icmp eq i32 %i.bow, %i.bfe
  br i1 %exitcond490.not, label %._crit_edge382, label %scalar.ph817, !llvm.loop !181

._crit_edge382:                                   ; preds = %scalar.ph817, %middle.block830
  %.lcssa = phi ptr [ %i.boi, %middle.block830 ], [ %i.bou, %scalar.ph817 ]
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %.0242386, i64 %i.bjr
end_hunk_0
