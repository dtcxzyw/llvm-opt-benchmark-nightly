inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
  %.pre604.i.i.i = load i32, ptr %i.gq, align 4, !tbaa !108
  br label %opj_t1_dec_refpass_step_mqc.exit.i.i.i

opj_t1_dec_refpass_step_mqc.exit.i.i.i:           ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %i.bbs = phi i32 [ %i.ayc, %.lr.ph.i.i.i ], [ %.pre604.i.i.i, %.loopexit.i.i.i.i ] ; 4 uses
  %i.bbt = phi i32 [ %i.ayd, %.lr.ph.i.i.i ], [ %i.bbr, %.loopexit.i.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bbu = sub i32 %i.bbs, %.0332.lcssa.i.i.i
  %i.bbv = zext i32 %i.bbu to i64
  %i.bbw = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bbv
  br i1 %i.bbw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !150

._crit_edge.i.i.i:                                ; preds = %opj_t1_dec_refpass_step_mqc.exit.i.i.i, %.preheader.i8.i.i
  %i.bbx = phi i32 [ %i.aya, %.preheader.i8.i.i ], [ %i.bbs, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ]
  %i.bby = phi i32 [ %.0332.lcssa.i.i.i, %.preheader.i8.i.i ], [ %i.bbs, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ]
  %i.bbz = add nuw i32 %.1561.i.i.i, 1            ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.2560.i.i.i, i64 4
  %i.bcb = getelementptr inbounds nuw i8, ptr %.2337559.i.i.i, i64 4
  %exitcond603.not.i.i.i = icmp eq i32 %i.bbz, %i.zz
  br i1 %exitcond603.not.i.i.i, label %opj_t1_dec_sigpass_raw.exit.i, label %.preheader.i8.i.i, !llvm.loop !151

bb.kc:                                            ; preds = %bb.an
  tail call fastcc void @opj_t1_dec_clnpass(ptr noundef nonnull %.0254, i32 noundef %.1153277.i, i32 noundef %i.bu)
  br label %opj_t1_dec_sigpass_raw.exit.i

default.unreachable.i:                            ; preds = %bb.an
  unreachable

opj_t1_dec_sigpass_raw.exit.i:                    ; preds = %._crit_edge.i.i.i, %._crit_edge.i192.i, %._crit_edge.i.i, %bb.kc, %._crit_edge542.i.i.i, %opj_t1_dec_refpass_mqc_64x64.exit.i.i, %._crit_edge104.i.i, %bb.cc, %._crit_edge137.i.i
  br i1 %or.cond4.not.i, label %opj_t1_dec_sigpass_raw.exit.thread.i, label %bb.kd

bb.kd:                                            ; preds = %opj_t1_dec_sigpass_raw.exit.i
  tail call void @opj_mqc_resetstates(ptr noundef nonnull %.0254) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0254, i32 noundef 18, i32 noundef 0, i32 noundef 46) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0254, i32 noundef 17, i32 noundef 0, i32 noundef 3) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0254, i32 noundef 0, i32 noundef 0, i32 noundef 4) #12
  br label %opj_t1_dec_sigpass_raw.exit.thread.i

opj_t1_dec_sigpass_raw.exit.thread.i:             ; preds = %bb.kd, %opj_t1_dec_sigpass_raw.exit.i, %.preheader94.lr.ph.i.i, %.preheader126.lr.ph.i.i
  %i.bcc = add nuw nsw i32 %.1151278.i, 1         ; 2 uses
  %i.bcd = icmp eq i32 %i.bcc, 3                  ; 2 uses
  %i.bce = sext i1 %i.bcd to i32
  %spec.select.i = add nsw i32 %.1153277.i, %i.bce ; 3 uses
  %spec.select177.i = select i1 %i.bcd, i32 0, i32 %i.bcc ; 2 uses
  %i.bcf = add nuw i32 %.0148279.i, 1             ; 2 uses
  %i.bcg = load i32, ptr %i.ho, align 4, !tbaa !106
  %i.bch = icmp ult i32 %i.bcf, %i.bcg
  %i.bci = icmp sgt i32 %spec.select.i, 0
  %i.bcj = select i1 %i.bch, i1 %i.bci, i1 false
  br i1 %i.bcj, label %bb.an, label %._crit_edge282.i, !llvm.loop !152

._crit_edge282.i:                                 ; preds = %opj_t1_dec_sigpass_raw.exit.thread.i, %bb.am
  %.1153.lcssa.i = phi i32 [ %.0152285.i, %bb.am ], [ %spec.select.i, %opj_t1_dec_sigpass_raw.exit.thread.i ]
  %.1151.lcssa.i = phi i32 [ %.0150286.i, %bb.am ], [ %spec.select177.i, %opj_t1_dec_sigpass_raw.exit.thread.i ]
  tail call void @opq_mqc_finish_dec(ptr noundef nonnull %.0254) #12
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %i.bck = load i32, ptr %i.gm, align 4, !tbaa !102
  %i.bcl = zext i32 %i.bck to i64
  %i.bcm = icmp samesign ult i64 %indvars.iv.next368.i, %i.bcl
  br i1 %i.bcm, label %bb.aj, label %._crit_edge291.i, !llvm.loop !153

._crit_edge291.i:                                 ; preds = %._crit_edge282.i, %bb.ai
  %.not168.i = icmp eq i32 %i.cf, 0
  br i1 %.not168.i, label %bb.km, label %bb.ke

bb.ke:                                            ; preds = %._crit_edge291.i
  %i.bcn = getelementptr inbounds nuw i8, ptr %.0254, i64 16 ; 2 uses
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !111 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 2
  %i.bcq = getelementptr inbounds nuw i8, ptr %.0254, i64 32 ; 2 uses
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !154 ; 2 uses
  %i.bcs = icmp ult ptr %i.bcp, %i.bcr
  br i1 %i.bcs, label %bb.kf, label %bb.kj

bb.kf:                                            ; preds = %bb.ke
  %.not170.i = icmp eq ptr %i.cd, null            ; 2 uses
  br i1 %.not170.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  tail call void @opj_mutex_lock(ptr noundef nonnull %i.cd) #12
  %.pre371.i = load ptr, ptr %i.bcq, align 8, !tbaa !154
  %.pre372.i = load ptr, ptr %i.bcn, align 8, !tbaa !111
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.bct = phi ptr [ %.pre372.i, %bb.kg ], [ %i.bco, %bb.kf ]
  %i.bcu = phi ptr [ %.pre371.i, %bb.kg ], [ %i.bcr, %bb.kf ]
  %i.bcv = ptrtoint ptr %i.bcu to i64             ; 2 uses
  %i.bcw = ptrtoint ptr %i.bct to i64             ; 2 uses
  %i.bcx = sub i64 %i.bcv, %i.bcw
  %i.bcy = trunc i64 %i.bcx to i32
  %i.bcz = add nsw i32 %i.bcy, -2
  %i.bda = getelementptr inbounds nuw i8, ptr %.0254, i64 24
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !155
  %i.bdc = ptrtoint ptr %i.bdb to i64             ; 2 uses
  %i.bdd = sub i64 %i.bcw, %i.bdc
  %i.bde = trunc i64 %i.bdd to i32
  %i.bdf = sub i64 %i.bcv, %i.bdc
  %i.bdg = trunc i64 %i.bdf to i32
  %i.bdh = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %i.cb, i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %i.bcz, i32 noundef %i.bde, i32 noundef %i.bdg) #12 ; 0 uses
  br i1 %.not170.i, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @opj_mutex_unlock(ptr noundef nonnull %i.cd) #12
  br label %bb.km

bb.kj:                                            ; preds = %bb.ke
  %i.bdi = getelementptr inbounds nuw i8, ptr %.0254, i64 12 ; 2 uses
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !127 ; 2 uses
  %i.bdk = icmp ugt i32 %i.bdj, 2
  br i1 %i.bdk, label %bb.kk, label %bb.km

bb.kk:                                            ; preds = %bb.kj
  %.not169.i = icmp eq ptr %i.cd, null
  br i1 %.not169.i, label %.critedge179.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  tail call void @opj_mutex_lock(ptr noundef nonnull %i.cd) #12
  %i.bdl = load i32, ptr %i.bdi, align 4, !tbaa !127
  %i.bdm = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %i.cb, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %i.bdl) #12 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %i.cd) #12
  br label %bb.km

.critedge179.i:                                   ; preds = %bb.kk
  %i.bdn = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %i.cb, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %i.bdj) #12 ; 0 uses
  br label %bb.km

bb.km:                                            ; preds = %.critedge179.i, %bb.kl, %bb.kj, %bb.ki, %bb.kh, %._crit_edge291.i
  %i.bdo = load ptr, ptr %i.gi, align 8, !tbaa !49
  %.not171.i = icmp eq ptr %i.bdo, null
  br i1 %.not171.i, label %opj_t1_decode_cblk.exit, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bdp = getelementptr inbounds nuw i8, ptr %.0254, i64 216
  store ptr %.0144.i, ptr %i.bdp, align 8, !tbaa !15
  br label %opj_t1_decode_cblk.exit

opj_t1_decode_cblk.exit:                          ; preds = %bb.kn, %bb.km, %bb.af, %bb.z, %bb.u
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bdr = load i32, ptr %i.bdq, align 8, !tbaa !55
  %i.bds = load i32, ptr %i.ag, align 8, !tbaa !156
  %i.bdt = sub nsw i32 %i.bdr, %i.bds             ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !56
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !157
  %i.bdy = sub nsw i32 %i.bdv, %i.bdx             ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bea = load i32, ptr %i.bdz, align 8, !tbaa !39 ; 2 uses
  %i.beb = and i32 %i.bea, 1
  %.not273 = icmp eq i32 %i.beb, 0
  br i1 %.not273, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %opj_t1_decode_cblk.exit
  %i.bec = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.bed = add i32 %i.ae, -1
  %i.bee = zext i32 %i.bed to i64
  %i.bef = getelementptr inbounds nuw [192 x i8], ptr %i.bec, i64 %i.bee ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 8
  %i.beh = load i32, ptr %i.beg, align 8, !tbaa !82
  %i.bei = load i32, ptr %i.bef, align 8, !tbaa !83
  %i.bej = add i32 %i.beh, %i.bdt
  %i.bek = sub i32 %i.bej, %i.bei
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %opj_t1_decode_cblk.exit
  %.0244 = phi i32 [ %i.bek, %bb.ko ], [ %i.bdt, %opj_t1_decode_cblk.exit ] ; 2 uses
  %i.bel = and i32 %i.bea, 2
  %.not274 = icmp eq i32 %i.bel, 0
  br i1 %.not274, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bem = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.ben = add i32 %i.ae, -1
  %i.beo = zext i32 %i.ben to i64
  %i.bep = getelementptr inbounds nuw [192 x i8], ptr %i.bem, i64 %i.beo ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 12
  %i.ber = load i32, ptr %i.beq, align 4, !tbaa !158
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bep, i64 4
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !159
  %i.beu = add i32 %i.ber, %i.bdy
  %i.bev = sub i32 %i.beu, %i.bet
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.0245 = phi i32 [ %i.bev, %bb.kq ], [ %i.bdy, %bb.kp ] ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !49 ; 2 uses
  %.not275 = icmp eq ptr %i.bex, null             ; 2 uses
  br i1 %.not275, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bey = getelementptr inbounds nuw i8, ptr %.0254, i64 216
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !15
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.ks
  %i.bfa = phi ptr [ %i.bez, %bb.ks ], [ %i.bex, %bb.kr ] ; 21 uses
  %i.bfb = ptrtoaddr ptr %i.bfa to i64
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0254, i64 232
  %i.bfd = load i32, ptr %i.bfc, align 8, !tbaa !107 ; 19 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0254, i64 236
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !108 ; 8 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.ak, i64 808 ; 2 uses
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !87 ; 3 uses
  %.not276 = icmp eq i32 %i.bfh, 0
  br i1 %.not276, label %.loopexit292, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %2 = icmp sgt i32 %i.bfh, 30
  %i.bfi = icmp ne i32 %i.bff, 0
  %i.bfj = icmp ne i32 %i.bfd, 0
  %or.cond394.a = select i1 %i.bfi, i1 %i.bfj, i1 false ; 2 uses
  br i1 %2, label %.preheader291, label %.preheader294

.preheader294:                                    ; preds = %bb.ku
  br i1 %or.cond394.a, label %.preheader293.preheader, label %.loopexit292

.preheader293.preheader:                          ; preds = %.preheader294
  %wide.trip.count = zext i32 %i.bfd to i64
  br label %.preheader293

.preheader291:                                    ; preds = %bb.ku
  br i1 %or.cond394.a, label %.preheader290.preheader, label %.loopexit292

.preheader290.preheader:                          ; preds = %.preheader291
  %wide.trip.count481 = zext i32 %i.bfd to i64    ; 6 uses
  %i.bfk = add nsw i64 %wide.trip.count481, -1    ; 2 uses
  %min.iters.check785 = icmp ult i32 %i.bfd, 12
  %i.bfl = trunc i64 %i.bfk to i32
  %i.bfm = icmp ugt i64 %i.bfk, 4294967295
  %n.vec788 = and i64 %wide.trip.count481, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec788, %wide.trip.count481
  %xtraiter = and i64 %wide.trip.count481, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader, %._crit_edge367
  %.0250368 = phi i32 [ %i.bgr, %._crit_edge367 ], [ 0, %.preheader290.preheader ] ; 3 uses
  %i.bfn = mul i32 %.0250368, %i.bfd              ; 6 uses
  br i1 %min.iters.check785, label %scalar.ph784.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader290
  %i.bfo = mul i32 %i.bfd, %.0250368
  %i.bfp = xor i32 %i.bfo, -1
  %i.bfq = icmp ult i32 %i.bfp, %i.bfl
  %i.bfr = or i1 %i.bfq, %i.bfm
  br i1 %i.bfr, label %scalar.ph784.preheader, label %vector.body789

vector.body789:                                   ; preds = %vector.scevcheck, %vector.body789
  %index790 = phi i64 [ %index.next791, %vector.body789 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bfs = trunc nuw i64 %index790 to i32
  %i.bft = add i32 %i.bfn, %i.bfs
  %i.bfu = zext i32 %i.bft to i64
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bfu ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bfv, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.bfw, align 4, !tbaa !3
  %index.next791 = add nuw i64 %index790, 8       ; 2 uses
  %i.bfx = icmp eq i64 %index.next791, %n.vec788
  br i1 %i.bfx, label %middle.block792, label %vector.body789, !llvm.loop !160

middle.block792:                                  ; preds = %vector.body789
  br i1 %cmp.n, label %._crit_edge367, label %scalar.ph784.preheader

scalar.ph784.preheader:                           ; preds = %vector.scevcheck, %.preheader290, %middle.block792
  %indvars.iv478.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader290 ], [ %n.vec788, %middle.block792 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol

scalar.ph784.prol:                                ; preds = %scalar.ph784.preheader, %scalar.ph784.prol
  %indvars.iv478.prol = phi i64 [ %indvars.iv.next479.prol, %scalar.ph784.prol ], [ %indvars.iv478.ph, %scalar.ph784.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph784.prol ], [ 0, %scalar.ph784.preheader ]
  %i.bfy = trunc nuw i64 %indvars.iv478.prol to i32
  %i.bfz = add i32 %i.bfn, %i.bfy
  %i.bga = zext i32 %i.bfz to i64
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bga
  store i32 0, ptr %i.bgb, align 4, !tbaa !3
  %indvars.iv.next479.prol = add nuw nsw i64 %indvars.iv478.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol, !llvm.loop !161

scalar.ph784.prol.loopexit:                       ; preds = %scalar.ph784.prol, %scalar.ph784.preheader
  %indvars.iv478.unr = phi i64 [ %indvars.iv478.ph, %scalar.ph784.preheader ], [ %indvars.iv.next479.prol, %scalar.ph784.prol ]
  %i.bgc = sub nsw i64 %indvars.iv478.ph, %wide.trip.count481
  %i.bgd = icmp ugt i64 %i.bgc, -4
  br i1 %i.bgd, label %._crit_edge367, label %scalar.ph784.preheader.new

scalar.ph784.preheader.new:                       ; preds = %scalar.ph784.prol.loopexit
  %invariant.op = add i32 1, %i.bfn
  %invariant.op1006 = add i32 2, %i.bfn
  %invariant.op1008 = add i32 3, %i.bfn
  br label %scalar.ph784

scalar.ph784:                                     ; preds = %scalar.ph784, %scalar.ph784.preheader.new
  %indvars.iv478 = phi i64 [ %indvars.iv478.unr, %scalar.ph784.preheader.new ], [ %indvars.iv.next479.3, %scalar.ph784 ] ; 5 uses
  %i.bge = trunc nuw i64 %indvars.iv478 to i32
  %i.bgf = add i32 %i.bfn, %i.bge
  %i.bgg = zext i32 %i.bgf to i64
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgg
  store i32 0, ptr %i.bgh, align 4, !tbaa !3
  %i.bgi = trunc i64 %indvars.iv478 to i32
  %.reass = add i32 %i.bgi, %invariant.op
  %i.bgj = zext i32 %.reass to i64
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgj
  store i32 0, ptr %i.bgk, align 4, !tbaa !3
  %i.bgl = trunc i64 %indvars.iv478 to i32
  %.reass1007 = add i32 %i.bgl, %invariant.op1006
  %i.bgm = zext i32 %.reass1007 to i64
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgm
  store i32 0, ptr %i.bgn, align 4, !tbaa !3
  %i.bgo = trunc i64 %indvars.iv478 to i32
  %.reass1009 = add i32 %i.bgo, %invariant.op1008
  %i.bgp = zext i32 %.reass1009 to i64
  %i.bgq = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgp
  store i32 0, ptr %i.bgq, align 4, !tbaa !3
  %indvars.iv.next479.3 = add nuw nsw i64 %indvars.iv478, 4 ; 2 uses
  %exitcond482.not.3 = icmp eq i64 %indvars.iv.next479.3, %wide.trip.count481
  br i1 %exitcond482.not.3, label %._crit_edge367, label %scalar.ph784, !llvm.loop !163

._crit_edge367:                                   ; preds = %scalar.ph784.prol.loopexit, %scalar.ph784, %middle.block792
  %i.bgr = add nuw i32 %.0250368, 1               ; 2 uses
  %exitcond483.not.a = icmp eq i32 %i.bgr, %i.bff
  br i1 %exitcond483.not.a, label %.loopexit292, label %.preheader290, !llvm.loop !164

.preheader293:                                    ; preds = %.preheader293.preheader, %._crit_edge
  %.1251365 = phi i32 [ %i.bhe, %._crit_edge ], [ 0, %.preheader293.preheader ] ; 2 uses
  %i.bgs = mul i32 %.1251365, %i.bfd
  br label %bb.kv

bb.kv:                                            ; preds = %.preheader293, %bb.kx
  %indvars.iv = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next, %bb.kx ] ; 2 uses
  %i.bgt = trunc nuw i64 %indvars.iv to i32
  %i.bgu = add i32 %i.bgs, %i.bgt
  %i.bgv = zext i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgv ; 2 uses
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !3 ; 2 uses
  %i.bgy = tail call i32 @llvm.abs.i32(i32 %i.bgx, i1 true) ; 2 uses
  %.highbits = lshr i32 %i.bgy, %i.bfh
  %.not277 = icmp eq i32 %.highbits, 0
  br i1 %.not277, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bgz = load i32, ptr %i.bfg, align 4, !tbaa !87
  %i.bha = lshr i32 %i.bgy, %i.bgz                ; 2 uses
  %i.bhb = icmp slt i32 %i.bgx, 0
  %i.bhc = sub nsw i32 0, %i.bha
  %i.bhd = select i1 %i.bhb, i32 %i.bhc, i32 %i.bha
  store i32 %i.bhd, ptr %i.bgw, align 4, !tbaa !3
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.kv, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.kx
  %i.bhe = add nuw i32 %.1251365, 1               ; 2 uses
  %exitcond477.not = icmp eq i32 %i.bhe, %i.bff
  br i1 %exitcond477.not, label %.loopexit292, label %.preheader293, !llvm.loop !166

.loopexit292:                                     ; preds = %._crit_edge, %._crit_edge367, %.preheader294, %.preheader291, %bb.kt
  br i1 %.not275, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %.loopexit292
  %i.bhf = mul i32 %i.bff, %i.bfd                 ; 8 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !167
  %i.bhi = icmp eq i32 %i.bhh, 1
  br i1 %i.bhi, label %.preheader286, label %bb.kz

.preheader286:                                    ; preds = %bb.ky
  %.not397.a = icmp eq i32 %i.bhf, 0
  br i1 %.not397.a, label %.loopexit, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %.preheader286
  %wide.trip.count488 = zext i32 %i.bhf to i64    ; 3 uses
  %min.iters.check808 = icmp ult i32 %i.bhf, 8
  br i1 %min.iters.check808, label %.lr.ph377.preheader855, label %vector.ph809

vector.ph809:                                     ; preds = %.lr.ph377.preheader
  %n.vec811 = and i64 %wide.trip.count488, 4294967288 ; 3 uses
  br label %vector.body812

vector.body812:                                   ; preds = %vector.body812, %vector.ph809
  %index813 = phi i64 [ 0, %vector.ph809 ], [ %index.next816, %vector.body812 ] ; 2 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %index813 ; 3 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 16 ; 2 uses
  %wide.load814 = load <4 x i32>, ptr %i.bhj, align 4, !tbaa !3
  %wide.load815 = load <4 x i32>, ptr %i.bhk, align 4, !tbaa !3
  %i.bhl = sdiv <4 x i32> %wide.load814, splat (i32 2)
  %i.bhm = sdiv <4 x i32> %wide.load815, splat (i32 2)
  store <4 x i32> %i.bhl, ptr %i.bhj, align 4, !tbaa !3
  store <4 x i32> %i.bhm, ptr %i.bhk, align 4, !tbaa !3
  %index.next816 = add nuw i64 %index813, 8       ; 2 uses
  %i.bhn = icmp eq i64 %index.next816, %n.vec811
  br i1 %i.bhn, label %middle.block817, label %vector.body812, !llvm.loop !168

middle.block817:                                  ; preds = %vector.body812
  %cmp.n818 = icmp eq i64 %n.vec811, %wide.trip.count488
  br i1 %cmp.n818, label %.loopexit, label %.lr.ph377.preheader855

.lr.ph377.preheader855:                           ; preds = %.lr.ph377.preheader, %middle.block817
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %n.vec811, %middle.block817 ]
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader855, %.lr.ph377
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %.lr.ph377 ], [ %indvars.iv485.ph, %.lr.ph377.preheader855 ] ; 2 uses
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %indvars.iv485 ; 2 uses
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !3
  %i.bhq = sdiv i32 %i.bhp, 2
  store i32 %i.bhq, ptr %i.bho, align 4, !tbaa !3
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond489.not.a = icmp eq i64 %indvars.iv.next486, %wide.trip.count488
  br i1 %exitcond489.not.a, label %.loopexit, label %.lr.ph377, !llvm.loop !169

bb.kz:                                            ; preds = %bb.ky
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bhs = load float, ptr %i.bhr, align 8, !tbaa !170
  %i.bht = fmul float %i.bhs, 5.000000e-01        ; 3 uses
  %i.bhu = insertelement <4 x float> poison, float %i.bht, i64 0
  %i.bhv = shufflevector <4 x float> %i.bhu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bhw = and i32 %i.bhf, -16                    ; 2 uses
  %.not396 = icmp eq i32 %i.bhw, 0
  br i1 %.not396, label %.preheader288, label %.lr.ph

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.bhx = and i32 %i.bhf, -16
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %bb.kz
  %.3249.lcssa = phi i32 [ 0, %bb.kz ], [ %i.bhx, %.preheader288.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.bfa, %bb.kz ], [ %i.bje, %.preheader288.loopexit ] ; 3 uses
  %i.bhy = icmp ult i32 %.3249.lcssa, %i.bhf
  br i1 %i.bhy, label %.lr.ph375.preheader, label %.loopexit

.lr.ph375.preheader:                              ; preds = %.preheader288
  %i.bhz = and i32 %i.bhf, 15
  %i.bia = add nsw i32 %i.bhz, -1                 ; 2 uses
  %i.bib = zext i32 %i.bia to i64
  %i.bic = add nuw nsw i64 %i.bib, 1              ; 2 uses
  %min.iters.check795 = icmp ult i32 %i.bia, 7
  br i1 %min.iters.check795, label %.lr.ph375.preheader857, label %vector.ph796

vector.ph796:                                     ; preds = %.lr.ph375.preheader
  %n.vec798 = and i64 %i.bic, 8589934584          ; 4 uses
  %i.bid = shl nuw nsw i64 %n.vec798, 2
  %i.bie = getelementptr i8, ptr %.0.lcssa, i64 %i.bid
  %i.bif = trunc i64 %n.vec798 to i32
  %i.big = add i32 %.3249.lcssa, %i.bif
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bht, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body799

vector.body799:                                   ; preds = %vector.body799, %vector.ph796
  %index800 = phi i64 [ 0, %vector.ph796 ], [ %index.next802, %vector.body799 ] ; 2 uses
  %i.bih = shl i64 %index800, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.bih ; 4 uses
  %i.bii = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load801 = load <4 x i32>, ptr %i.bii, align 4, !tbaa !3
  %i.bij = sitofp <4 x i32> %wide.load to <4 x float>
  %i.bik = sitofp <4 x i32> %wide.load801 to <4 x float>
  %i.bil = fmul <4 x float> %broadcast.splat, %i.bij
  %i.bim = fmul <4 x float> %broadcast.splat, %i.bik
  %i.bin = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bil, ptr %next.gep, align 4
  store <4 x float> %i.bim, ptr %i.bin, align 4
  %index.next802 = add nuw i64 %index800, 8       ; 2 uses
  %i.bio = icmp eq i64 %index.next802, %n.vec798
  br i1 %i.bio, label %middle.block803, label %vector.body799, !llvm.loop !171

middle.block803:                                  ; preds = %vector.body799
  %cmp.n804 = icmp eq i64 %i.bic, %n.vec798
  br i1 %cmp.n804, label %.loopexit, label %.lr.ph375.preheader857

.lr.ph375.preheader857:                           ; preds = %.lr.ph375.preheader, %middle.block803
  %.1374.ph = phi ptr [ %.0.lcssa, %.lr.ph375.preheader ], [ %i.bie, %middle.block803 ]
  %.4373.ph = phi i32 [ %.3249.lcssa, %.lr.ph375.preheader ], [ %i.big, %middle.block803 ]
  br label %.lr.ph375

.lr.ph:                                           ; preds = %bb.kz, %.lr.ph
  %.0370 = phi ptr [ %i.bje, %.lr.ph ], [ %i.bfa, %bb.kz ] ; 6 uses
  %.3249369 = phi i32 [ %i.bjf, %.lr.ph ], [ 0, %bb.kz ]
  %i.bip = load <4 x i32>, ptr %.0370, align 16, !tbaa !48
  %i.biq = sitofp <4 x i32> %i.bip to <4 x float>
  %i.bir = getelementptr inbounds nuw i8, ptr %.0370, i64 16 ; 2 uses
  %i.bis = load <4 x i32>, ptr %i.bir, align 16, !tbaa !48
  %i.bit = sitofp <4 x i32> %i.bis to <4 x float>
  %i.biu = getelementptr inbounds nuw i8, ptr %.0370, i64 32 ; 2 uses
  %i.biv = load <4 x i32>, ptr %i.biu, align 16, !tbaa !48
  %i.biw = sitofp <4 x i32> %i.biv to <4 x float>
  %i.bix = getelementptr inbounds nuw i8, ptr %.0370, i64 48 ; 2 uses
  %i.biy = load <4 x i32>, ptr %i.bix, align 16, !tbaa !48
  %i.biz = sitofp <4 x i32> %i.biy to <4 x float>
  %i.bja = fmul <4 x float> %i.bhv, %i.biq
  store <4 x float> %i.bja, ptr %.0370, align 16, !tbaa !48
  %i.bjb = fmul <4 x float> %i.bhv, %i.bit
  store <4 x float> %i.bjb, ptr %i.bir, align 16, !tbaa !48
  %i.bjc = fmul <4 x float> %i.bhv, %i.biw
  store <4 x float> %i.bjc, ptr %i.biu, align 16, !tbaa !48
  %i.bjd = fmul <4 x float> %i.bhv, %i.biz
  store <4 x float> %i.bjd, ptr %i.bix, align 16, !tbaa !48
  %i.bje = getelementptr inbounds nuw i8, ptr %.0370, i64 64 ; 2 uses
  %i.bjf = add nuw i32 %.3249369, 16              ; 2 uses
  %i.bjg = icmp ult i32 %i.bjf, %i.bhw
  br i1 %i.bjg, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !172

.lr.ph375:                                        ; preds = %.lr.ph375.preheader857, %.lr.ph375
  %.1374 = phi ptr [ %i.bjk, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader857 ] ; 3 uses
  %.4373 = phi i32 [ %i.bjl, %.lr.ph375 ], [ %.4373.ph, %.lr.ph375.preheader857 ]
  %i.bjh = load i32, ptr %.1374, align 4, !tbaa !3
  %i.bji = sitofp i32 %i.bjh to float
  %i.bjj = fmul float %i.bht, %i.bji
  store float %i.bjj, ptr %.1374, align 4
  %i.bjk = getelementptr inbounds nuw i8, ptr %.1374, i64 4
  %i.bjl = add nuw i32 %.4373, 1                  ; 2 uses
  %exitcond484.not = icmp eq i32 %i.bjl, %i.bhf
  br i1 %exitcond484.not, label %.loopexit, label %.lr.ph375, !llvm.loop !173

bb.la:                                            ; preds = %.loopexit292
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !167
  %i.bjo = icmp eq i32 %i.bjn, 1
  %i.bjp = zext i32 %i.av to i64                  ; 7 uses
  br i1 %i.bjo, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !174 ; 2 uses
  %i.bjs = sext i32 %.0245 to i64                 ; 2 uses
  %i.bjt = mul nsw i64 %i.bjs, %i.bjp
  %i.bju = sext i32 %.0244 to i64                 ; 2 uses
  %i.bjv = getelementptr [4 x i8], ptr %i.bjr, i64 %i.bjt
  %i.bjw = getelementptr [4 x i8], ptr %i.bjv, i64 %i.bju ; 2 uses
  %.not398.a = icmp eq i32 %i.bff, 0
  br i1 %.not398.a, label %.loopexit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %bb.lb
  %i.bjx = ptrtoaddr ptr %i.bjr to i64
  %i.bjy = and i32 %i.bfd, -4                     ; 2 uses
  %.not399 = icmp eq i32 %i.bjy, 0
  %i.bjz = zext i32 %i.bjy to i64
  %wide.trip.count503 = zext i32 %i.bff to i64
  %wide.trip.count498 = zext i32 %i.bfd to i64    ; 5 uses
  %i.bka = mul nsw i64 %i.bjs, %i.bjp
  %i.bkb = add i64 %i.bka, %i.bju
  %i.bkc = shl i64 %i.bkb, 2
  %i.bkd = add i64 %i.bkc, %i.bjx
  %i.bke = sub i64 %i.bkd, %i.bfb
  %i.bkf = shl nuw nsw i64 %i.bjp, 2
  %i.bkg = add nsw i64 %wide.trip.count498, -1
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge392
  %indvars.iv500 = phi i64 [ 0, %.preheader283.lr.ph ], [ %indvars.iv.next501, %._crit_edge392 ] ; 8 uses
  %i.bkh = mul i64 %i.bkf, %indvars.iv500
  %i.bki = add i64 %i.bke, %i.bkh
  %i.bkj = trunc i64 %indvars.iv500 to i32
  %i.bkk = mul i32 %i.bfd, %i.bkj
  %i.bkl = trunc i64 %indvars.iv500 to i32
  %i.bkm = mul i32 %i.bfd, %i.bkl
end_hunk_0
