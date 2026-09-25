Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@lj_asm_trace:bb.a
bb.afn:                                           ; preds = %bb.afm
  %i.faw = getelementptr inbounds i8, ptr %.046.i580, i64 -1 ; 2 uses
  store i8 36, ptr %i.faw, align 1, !tbaa !25
  br label %bb.afo

bb.afo:                                           ; preds = %bb.afn, %bb.afm, %bb.afe, %bb.afd
  %.150.i567 = phi i32 [ 4, %bb.afd ], [ 37, %bb.afe ], [ %i.ezi, %bb.afn ], [ %i.ezi, %bb.afm ] ; 2 uses
  %.248.i568 = phi ptr [ %i.ezm, %bb.afd ], [ %i.ezn, %bb.afe ], [ %i.faw, %bb.afn ], [ %.046.i580, %bb.afm ] ; 3 uses
  %.2.i569 = phi i32 [ 0, %bb.afd ], [ 0, %bb.afe ], [ %.0.i581, %bb.afn ], [ %.0.i581, %bb.afm ]
  %i.fax = and i32 %.150.i567, 7
  %i.fay = or disjoint i32 %i.fax, 56
  %i.faz = add nuw nsw i32 %i.fay, %.2.i569
  %i.fba = trunc nuw i32 %i.faz to i8
  %i.fbb = getelementptr inbounds i8, ptr %.248.i568, i64 -1
  store i8 %i.fba, ptr %i.fbb, align 1, !tbaa !25
  %i.fbc = getelementptr i8, ptr %.248.i568, i64 -2 ; 2 uses
  store i8 -127, ptr %i.fbc, align 1, !tbaa !25
  %i.fbd = and i32 %.150.i567, 8
  %.not.i.i570 = icmp eq i32 %i.fbd, 0
  br i1 %.not.i.i570, label %emit_mrm.exit583, label %bb.afp

bb.afp:                                           ; preds = %bb.afo
  %i.fbe = getelementptr i8, ptr %.248.i568, i64 -3 ; 2 uses
  store i8 65, ptr %i.fbe, align 1, !tbaa !25
  br label %emit_mrm.exit583

emit_mrm.exit583:                                 ; preds = %bb.afk, %bb.afl, %bb.afo, %bb.afp
  %storemerge.i572 = phi ptr [ %i.fal, %bb.afk ], [ %i.fbe, %bb.afp ], [ %i.fau, %bb.afl ], [ %i.fbc, %bb.afo ]
  store ptr %storemerge.i572, ptr %i.bw, align 16, !tbaa !52
  br label %asm_ir.exit

bb.afq:                                           ; preds = %checkmclim.exit151
  call fastcc void @asm_fxload(ptr noundef nonnull %5, ptr noundef nonnull %i.anc)
  br label %asm_ir.exit

bb.afr:                                           ; preds = %checkmclim.exit151
  call fastcc void @asm_fxload(ptr noundef nonnull %5, ptr noundef nonnull %i.anc)
  br label %asm_ir.exit

bb.afs:                                           ; preds = %checkmclim.exit151
  %i.fbf = load i16, ptr %i.anc, align 8, !tbaa !25 ; 8 uses
  %i.fbg = zext i16 %i.fbf to i32
  %i.fbh = shl nuw nsw i32 %i.fbg, 3              ; 3 uses
  %i.fbi = add nsw i32 %i.fbh, -16                ; 27 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.aop, align 4, !tbaa !25 ; 4 uses
  %i.fbj = getelementptr inbounds nuw i8, ptr %i.anc, i64 2 ; 6 uses
  %i.fbk = load i16, ptr %i.fbj, align 2, !tbaa !25 ; 2 uses
  %i.fbl = and i16 %i.fbk, 8
  %.not.i513 = icmp ne i16 %i.fbl, 0
  %i.fbm = and i8 %.sroa.0.0.copyload.i, 31       ; 5 uses
  %i.fbn = icmp eq i8 %i.fbm, 19                  ; 2 uses
  %i.fbo = and i8 %.sroa.0.0.copyload.i, -97
  %i.fbp = icmp eq i8 %i.fbo, -109
  %or.cond113.i = select i1 %.not.i513, i1 %i.fbp, i1 false
  br i1 %or.cond113.i, label %bb.aft, label %bb.agk

bb.aft:                                           ; preds = %bb.afs
  %i.fbq = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.fbr = and i32 %i.fbq, -65536                 ; 2 uses
  %.not.i.i.i534 = icmp eq i32 %i.fbr, 0
  br i1 %.not.i.i.i534, label %bb.afu, label %bb.afy

bb.afu:                                           ; preds = %bb.aft
  %i.fbs = load <16 x i32>, ptr %i.lc, align 16, !tbaa !26
  %i.fbt = call i32 @llvm.vector.reduce.umin.v16i32(<16 x i32> %i.fbs)
  %i.fbu = and i32 %i.fbt, 65535                  ; 5 uses
  %i.fbv = icmp samesign ult i32 %i.fbu, 32768
  br i1 %i.fbv, label %ra_evict.exit.i565, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.fbw = load i32, ptr %i.kp, align 16, !tbaa !82 ; 2 uses
  %i.fbx = and i32 %i.fbw, -65536                 ; 2 uses
  %.not200.i.i563 = icmp eq i32 %i.fbx, 0
  br i1 %.not200.i.i563, label %ra_evict.exit.i565, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  %i.fby = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.fbz = zext nneg i32 %i.fbu to i64
  %i.fca = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fbz
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.fca, i64 6
  %i.fcc = load i8, ptr %i.fcb, align 2, !tbaa !25
  %i.fcd = zext nneg i8 %i.fcc to i32
  %i.fce = shl nuw i32 1, %i.fcd
  %i.fcf = and i32 %i.fce, %i.fbw
  %.not201.i.i564 = icmp eq i32 %i.fcf, 0
  br i1 %.not201.i.i564, label %bb.afx, label %ra_evict.exit.i565

bb.afx:                                           ; preds = %bb.afw
  %i.fcg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fbx, i1 true)
  %i.fch = zext nneg i32 %i.fcg to i64
  %i.fci = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fch
  %i.fcj = load i32, ptr %i.fci, align 4, !tbaa !26
  %i.fck = and i32 %i.fcj, 65535
  br label %ra_evict.exit.i565

ra_evict.exit.i565:                               ; preds = %bb.afx, %bb.afw, %bb.afv, %bb.afu
  %.1134.i.i566 = phi i32 [ %i.fbu, %bb.afu ], [ %i.fbu, %bb.afv ], [ %i.fbu, %bb.afw ], [ %i.fck, %bb.afx ]
  %i.fcl = call fastcc range(i32 0, 256) i32 @ra_restore(ptr noundef nonnull %5, i32 noundef %.1134.i.i566)
  br label %ra_scratch.exit.i535

bb.afy:                                           ; preds = %bb.aft
  %i.fcm = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.fbr)
  %i.fcn = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fcm, i1 true)
  %i.fco = xor i32 %i.fcn, 7
  br label %ra_scratch.exit.i535

ra_scratch.exit.i535:                             ; preds = %bb.afy, %ra_evict.exit.i565
  %.0.i.i.i536 = phi i32 [ %i.fco, %bb.afy ], [ %i.fcl, %ra_evict.exit.i565 ] ; 4 uses
  %i.fcp = shl nuw i32 1, %.0.i.i.i536
  %i.fcq = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.fcr = or i32 %i.fcq, %i.fcp
  store i32 %i.fcr, ptr %i.ko, align 4, !tbaa !71
  call fastcc void @asm_tointg(ptr noundef nonnull %5, ptr noundef nonnull %i.anc, i32 noundef %.0.i.i.i536)
  %i.fcs = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.fct = getelementptr inbounds nuw i8, ptr %i.fcs, i64 262150
  %i.fcu = load i8, ptr %i.fct, align 2, !tbaa !25 ; 2 uses
  %i.fcv = zext nneg i8 %i.fcu to i32
  %.not.i.i537 = icmp sgt i8 %i.fcu, -1
  br i1 %.not.i.i537, label %ra_alloc1.exit.i538, label %bb.afz

bb.afz:                                           ; preds = %ra_scratch.exit.i535
  %i.fcw = call fastcc i32 @ra_allocref(ptr noundef nonnull %5, i32 noundef 32768, i32 noundef 49135)
  br label %ra_alloc1.exit.i538

ra_alloc1.exit.i538:                              ; preds = %bb.afz, %ra_scratch.exit.i535
  %.0.i.i539 = phi i32 [ %i.fcw, %bb.afz ], [ %i.fcv, %ra_scratch.exit.i535 ] ; 7 uses
  %i.fcx = shl nuw i32 1, %.0.i.i539
  %i.fcy = xor i32 %i.fcx, -1
  %i.fcz = load i32, ptr %i.kp, align 16, !tbaa !82
  %i.fda = and i32 %i.fcz, %i.fcy
  store i32 %i.fda, ptr %i.kp, align 16, !tbaa !82
  %i.fdb = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 6 uses
  %.not.i114.i = icmp samesign ult i32 %.0.i.i539, 128
  br i1 %.not.i114.i, label %bb.aga, label %bb.agh

bb.aga:                                           ; preds = %ra_alloc1.exit.i538
  %i.fdc = icmp eq i32 %.0.i.i539, 37
  br i1 %i.fdc, label %.thread.i.i547, label %bb.agb

.thread.i.i547:                                   ; preds = %bb.aga
  %i.fdd = getelementptr inbounds i8, ptr %i.fdb, i64 -4 ; 2 uses
  store i32 %i.fbi, ptr %i.fdd, align 4, !tbaa !26
  br label %bb.agi

bb.agb:                                           ; preds = %bb.aga
  %i.fde = icmp ne i32 %i.fbi, 0
  %i.fdf = and i32 %.0.i.i539, 7                  ; 2 uses
  %.not34.i.i = icmp eq i32 %i.fdf, 5
  %or.cond.i.i545 = or i1 %i.fde, %.not34.i.i
  br i1 %or.cond.i.i545, label %bb.agc, label %bb.agf

bb.agc:                                           ; preds = %bb.agb
  %i.fdg = icmp ult i16 %i.fbf, 18
  br i1 %i.fdg, label %bb.agd, label %bb.age

bb.agd:                                           ; preds = %bb.agc
  %i.fdh = trunc nsw i32 %i.fbi to i8
  %i.fdi = getelementptr inbounds i8, ptr %i.fdb, i64 -1 ; 2 uses
  store i8 %i.fdh, ptr %i.fdi, align 1, !tbaa !25
  br label %bb.agf

bb.age:                                           ; preds = %bb.agc
  %i.fdj = getelementptr inbounds i8, ptr %i.fdb, i64 -4 ; 2 uses
  store i32 %i.fbi, ptr %i.fdj, align 4, !tbaa !26
  br label %bb.agf

bb.agf:                                           ; preds = %bb.age, %bb.agd, %bb.agb
  %.029.i.i546 = phi ptr [ %i.fdb, %bb.agb ], [ %i.fdj, %bb.age ], [ %i.fdi, %bb.agd ] ; 2 uses
  %.0.i117.i = phi i32 [ 0, %bb.agb ], [ 128, %bb.age ], [ 64, %bb.agd ] ; 2 uses
  %i.fdk = icmp eq i32 %i.fdf, 4
  br i1 %i.fdk, label %bb.agg, label %bb.agi

bb.agg:                                           ; preds = %bb.agf
  %i.fdl = getelementptr inbounds i8, ptr %.029.i.i546, i64 -1 ; 2 uses
  store i8 36, ptr %i.fdl, align 1, !tbaa !25
  br label %bb.agi

bb.agh:                                           ; preds = %ra_alloc1.exit.i538
  %i.fdm = getelementptr inbounds i8, ptr %i.fdb, i64 -4
  store i32 %i.fbi, ptr %i.fdm, align 4, !tbaa !26
  %i.fdn = getelementptr inbounds i8, ptr %i.fdb, i64 -5 ; 2 uses
  store i8 37, ptr %i.fdn, align 1, !tbaa !25
  br label %bb.agi

bb.agi:                                           ; preds = %bb.agh, %bb.agg, %bb.agf, %.thread.i.i547
  %.031.i.i540 = phi i32 [ 4, %bb.agh ], [ %.0.i.i539, %bb.agg ], [ %.0.i.i539, %bb.agf ], [ 37, %.thread.i.i547 ] ; 2 uses
  %.130.i.i541 = phi ptr [ %i.fdn, %bb.agh ], [ %i.fdl, %bb.agg ], [ %.029.i.i546, %bb.agf ], [ %i.fdd, %.thread.i.i547 ] ; 3 uses
  %.1.i.i542 = phi i32 [ 0, %bb.agh ], [ %.0.i117.i, %bb.agg ], [ %.0.i117.i, %bb.agf ], [ 0, %.thread.i.i547 ]
  %i.fdo = shl nuw nsw i32 %.0.i.i.i536, 3
  %i.fdp = and i32 %i.fdo, 56
  %i.fdq = and i32 %.031.i.i540, 7
  %i.fdr = or disjoint i32 %i.fdq, %i.fdp
  %i.fds = add nuw nsw i32 %i.fdr, %.1.i.i542
  %i.fdt = trunc nuw i32 %i.fds to i8
  %i.fdu = getelementptr inbounds i8, ptr %.130.i.i541, i64 -1
  store i8 %i.fdt, ptr %i.fdu, align 1, !tbaa !25
  %i.fdv = getelementptr inbounds i8, ptr %.130.i.i541, i64 -5 ; 3 uses
  store i32 269480700, ptr %i.fdv, align 4, !tbaa !26
  %i.fdw = getelementptr inbounds i8, ptr %.130.i.i541, i64 -4 ; 2 uses
  %i.fdx = lshr i32 %.0.i.i.i536, 1
  %i.fdy = and i32 %i.fdx, 4
  %i.fdz = lshr i32 %.031.i.i540, 3
  %i.fea = and i32 %i.fdz, 1
  %i.feb = or disjoint i32 %i.fea, %i.fdy         ; 2 uses
  %.not.i.i115.i = icmp eq i32 %i.feb, 0
  br i1 %.not.i.i115.i, label %emit_rmro.exit.i543, label %bb.agj

bb.agj:                                           ; preds = %bb.agi
  %i.fec = trunc nuw nsw i32 %i.feb to i8
  %i.fed = or disjoint i8 %i.fec, 64
  store i8 %i.fed, ptr %i.fdw, align 1, !tbaa !25
  store i8 -14, ptr %i.fdv, align 1, !tbaa !25
  br label %emit_rmro.exit.i543

emit_rmro.exit.i543:                              ; preds = %bb.agj, %bb.agi
  %.046.i.i.i544 = phi ptr [ %i.fdw, %bb.agi ], [ %i.fdv, %bb.agj ]
  store ptr %.046.i.i.i544, ptr %i.bw, align 16, !tbaa !52
  br label %bb.aid

bb.agk:                                           ; preds = %bb.afs
  %i.fee = load i8, ptr %i.anz, align 2, !tbaa !25 ; 4 uses
  %.not101.i = icmp sgt i8 %i.fee, -1
  br i1 %.not101.i, label %bb.agm, label %bb.agl

bb.agl:                                           ; preds = %bb.agk
  %i.fef = getelementptr inbounds nuw i8, ptr %i.anc, i64 7
  %i.feg = load i8, ptr %i.fef, align 1, !tbaa !25
  %.not102.i = icmp eq i8 %i.feg, 0
  br i1 %.not102.i, label %bb.aia, label %bb.agn

bb.agm:                                           ; preds = %bb.agk
  %i.feh = icmp eq i8 %i.fbm, 14
  %i.fei = zext nneg i8 %i.fee to i32             ; 2 uses
  %i.fej = shl nuw i32 1, %i.fei
  %i.fek = load <2 x i32>, ptr %i.kn, align 8, !tbaa !26
  %i.fel = insertelement <2 x i32> poison, i32 %i.fej, i64 0
  %i.fem = shufflevector <2 x i32> %i.fel, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fen = or <2 x i32> %i.fek, %i.fem
  store <2 x i32> %i.fen, ptr %i.kn, align 8, !tbaa !26
  br label %bb.ags

bb.agn:                                           ; preds = %bb.agl
  %i.feo = icmp eq i8 %i.fbm, 14                  ; 2 uses
  %i.fep = select i1 %i.feo, i32 -65536, i32 49135 ; 3 uses
  %i.feq = load i32, ptr %i.kn, align 8, !tbaa !83 ; 2 uses
  %i.fer = icmp samesign ult i8 %i.fee, -3
  br i1 %i.fer, label %bb.ago, label %._crit_edge.i.i514

bb.ago:                                           ; preds = %bb.agn
  %i.fes = and i8 %i.fee, 127
  %i.fet = zext nneg i8 %i.fes to i32             ; 2 uses
  %i.feu = shl nuw i32 1, %i.fet                  ; 2 uses
  %i.fev = and i32 %i.feu, %i.fep
  %i.few = and i32 %i.fev, %i.feq
  %.not22.i.i532 = icmp eq i32 %i.few, 0
  br i1 %.not22.i.i532, label %._crit_edge.i.i514, label %bb.agr

._crit_edge.i.i514:                               ; preds = %bb.ago, %bb.agn
  %i.fex = and i32 %i.feq, %i.fep                 ; 2 uses
  %.not.i.i.i.i515 = icmp eq i32 %i.fex, 0
  br i1 %.not.i.i.i.i515, label %bb.agp, label %bb.agq

bb.agp:                                           ; preds = %._crit_edge.i.i514
  %i.fey = call fastcc i32 @ra_evict(ptr noundef nonnull %5, i32 noundef %i.fep)
  br label %ra_scratch.exit.i.i516

bb.agq:                                           ; preds = %._crit_edge.i.i514
  %i.fez = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.fex)
  %i.ffa = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fez, i1 true)
  %i.ffb = xor i32 %i.ffa, 7
  br label %ra_scratch.exit.i.i516

ra_scratch.exit.i.i516:                           ; preds = %bb.agq, %bb.agp
  %.0.i.i.i.i517 = phi i32 [ %i.ffb, %bb.agq ], [ %i.fey, %bb.agp ] ; 2 uses
  %i.ffc = shl nuw i32 1, %.0.i.i.i.i517
  br label %bb.agr

bb.agr:                                           ; preds = %ra_scratch.exit.i.i516, %bb.ago
  %.sink30.i.i518 = phi i32 [ %i.ffc, %ra_scratch.exit.i.i516 ], [ %i.feu, %bb.ago ]
  %.0.i119.i = phi i32 [ %.0.i.i.i.i517, %ra_scratch.exit.i.i516 ], [ %i.fet, %bb.ago ] ; 2 uses
  %i.ffd = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.ffe = or i32 %i.ffd, %.sink30.i.i518
  store i32 %i.ffe, ptr %i.ko, align 4, !tbaa !71
  %i.fff = trunc nuw i32 %.0.i119.i to i8
  store i8 %i.fff, ptr %i.anz, align 2, !tbaa !25
  br label %bb.ags

bb.ags:                                           ; preds = %bb.agr, %bb.agm
  %i.ffg = phi i1 [ %i.feo, %bb.agr ], [ %i.feh, %bb.agm ]
  %.1.i120.i = phi i32 [ %.0.i119.i, %bb.agr ], [ %i.fei, %bb.agm ] ; 9 uses
  %i.ffh = getelementptr inbounds nuw i8, ptr %i.anc, i64 7
  %i.ffi = load i8, ptr %i.ffh, align 1, !tbaa !25 ; 2 uses
  %.not23.i.i519 = icmp eq i8 %i.ffi, 0
  br i1 %.not23.i.i519, label %ra_dest.exit.i521, label %bb.agt, !prof !39

bb.agt:                                           ; preds = %bb.ags
  %.val.i.i520 = load i8, ptr %i.aop, align 4, !tbaa !25
  call fastcc void @ra_save(ptr noundef nonnull %5, i8 %.val.i.i520, i8 %i.ffi, i32 noundef %.1.i120.i)
  br label %ra_dest.exit.i521

ra_dest.exit.i521:                                ; preds = %bb.agt, %bb.ags
  %i.ffj = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.ffk = getelementptr inbounds nuw i8, ptr %i.ffj, i64 262150
  %i.ffl = load i8, ptr %i.ffk, align 2, !tbaa !25 ; 2 uses
  %i.ffm = zext nneg i8 %i.ffl to i32
  %.not.i121.i = icmp sgt i8 %i.ffl, -1
  br i1 %.not.i121.i, label %ra_alloc1.exit123.i, label %bb.agu

bb.agu:                                           ; preds = %ra_dest.exit.i521
  %i.ffn = call fastcc i32 @ra_allocref(ptr noundef nonnull %5, i32 noundef 32768, i32 noundef 49135)
  br label %ra_alloc1.exit123.i

ra_alloc1.exit123.i:                              ; preds = %bb.agu, %ra_dest.exit.i521
  %.0.i122.i = phi i32 [ %i.ffn, %bb.agu ], [ %i.ffm, %ra_dest.exit.i521 ] ; 15 uses
  %i.ffo = shl nuw i32 1, %.0.i122.i
  %i.ffp = xor i32 %i.ffo, -1
  %i.ffq = load i32, ptr %i.kp, align 16, !tbaa !82
  %i.ffr = and i32 %i.ffq, %i.ffp
  store i32 %i.ffr, ptr %i.kp, align 16, !tbaa !82
  %i.ffs = load i16, ptr %i.fbj, align 2, !tbaa !25
  %i.fft = and i16 %i.ffs, 8
  %.not104.i = icmp eq i16 %i.fft, 0
  br i1 %.not104.i, label %bb.agw, label %bb.agv

bb.agv:                                           ; preds = %ra_alloc1.exit123.i
  %i.ffu = select i1 %i.fbn, i8 14, i8 19
  %i.ffv = select i1 %i.fbn, i32 739242748, i32 705688316
  call fastcc void @emit_rmro(ptr noundef nonnull %5, i32 noundef %i.ffv, i32 noundef %.1.i120.i, i32 noundef %.0.i122.i, i32 noundef %i.fbi)
  br label %bb.aid

bb.agw:                                           ; preds = %ra_alloc1.exit123.i
  %i.ffw = add nsw i8 %i.fbm, -3
  %i.ffx = icmp ult i8 %i.ffw, 10
  br i1 %i.ffx, label %bb.agx, label %bb.ahz

bb.agx:                                           ; preds = %bb.agw
  %i.ffy = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.ffz = getelementptr inbounds i8, ptr %i.ffy, i64 -1 ; 2 uses
  store ptr %i.ffz, ptr %i.bw, align 16, !tbaa !52
  store i8 17, ptr %i.ffz, align 1, !tbaa !25
  %i.fga = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 6 uses
  %i.fgb = trunc nuw i32 %.1.i120.i to i8         ; 2 uses
  %i.fgc = and i8 %i.fgb, 7                       ; 2 uses
  %i.fgd = or disjoint i8 %i.fgc, -24
  %i.fge = getelementptr inbounds i8, ptr %i.fga, i64 -1
  store i8 %i.fgd, ptr %i.fge, align 1, !tbaa !25
  %i.fgf = getelementptr i8, ptr %i.fga, i64 -2   ; 2 uses
  store i8 -63, ptr %i.fgf, align 1, !tbaa !25
  %i.fgg = lshr i32 %.1.i120.i, 3
  %i.fgh = and i32 %i.fgg, 1                      ; 2 uses
  %i.fgi = trunc nuw nsw i32 %i.fgh to i8
  %i.fgj = or disjoint i8 %i.fgi, 72              ; 2 uses
  %i.fgk = getelementptr i8, ptr %i.fga, i64 -3   ; 6 uses
  store i8 %i.fgj, ptr %i.fgk, align 1, !tbaa !25
  store ptr %i.fgk, ptr %i.bw, align 16, !tbaa !52
  %i.fgl = load i16, ptr %i.fbj, align 2, !tbaa !25
  %i.fgm = and i16 %i.fgl, 4
  %.not105.i = icmp eq i16 %i.fgm, 0
  br i1 %.not105.i, label %bb.ahg, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  %i.fgn = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.fgo = getelementptr inbounds nuw i8, ptr %i.fgn, i64 1696
  %i.fgp = load i32, ptr %i.li, align 4, !tbaa !66 ; 2 uses
  %i.fgq = lshr i32 %i.fgp, 5
  %i.fgr = zext nneg i32 %i.fgq to i64
  %i.fgs = getelementptr inbounds nuw [8 x i8], ptr %i.fgo, i64 %i.fgr
  %i.fgt = load ptr, ptr %i.fgs, align 8, !tbaa !24
  %i.fgu = shl i32 %i.fgp, 2
  %i.fgv = and i32 %i.fgu, 124
  %i.fgw = zext nneg i32 %i.fgv to i64
  %i.fgx = getelementptr inbounds nuw i8, ptr %i.fgt, i64 %i.fgw ; 2 uses
  %i.fgy = load ptr, ptr %i.kf, align 16, !tbaa !59
  %i.fgz = icmp eq ptr %i.fgk, %i.fgy
  br i1 %i.fgz, label %bb.agz, label %bb.ahc, !prof !80

bb.agz:                                           ; preds = %bb.agy
  store i32 1, ptr %i.bh, align 4, !tbaa !50
  %i.fha = getelementptr i8, ptr %i.fga, i64 2
  %i.fhb = ptrtoint ptr %i.fgx to i64
  %i.fhc = ptrtoint ptr %i.fha to i64
  %i.fhd = sub i64 %i.fhb, %i.fhc
  %i.fhe = trunc i64 %i.fhd to i32
  store i32 %i.fhe, ptr %i.fgf, align 4, !tbaa !26
  %i.fhf = load ptr, ptr %i.bg, align 16, !tbaa !49
  %.not.i128.i = icmp eq ptr %i.fhf, null
  br i1 %.not.i128.i, label %bb.ahc, label %bb.aha

bb.aha:                                           ; preds = %bb.agz
  %i.fhg = load i8, ptr %i.kb, align 4, !tbaa !56
  %i.fhh = icmp eq i8 %i.fhg, 37
  br i1 %i.fhh, label %bb.ahb, label %asm_guardcc.exit.i526, !prof !80

bb.ahb:                                           ; preds = %bb.aha
  %i.fhi = load i32, ptr %i.lv, align 16, !tbaa !86
  %i.fhj = add nsw i32 %i.fhi, 2
  store i32 %i.fhj, ptr %i.lv, align 16, !tbaa !86
  br label %asm_guardcc.exit.i526

bb.ahc:                                           ; preds = %bb.agz, %bb.agy
  %.022.i.i525 = phi i8 [ -124, %bb.agz ], [ -123, %bb.agy ]
end_hunk_0
begin_hunk_1_@lj_asm_trace:bb.a
  %i.gom = shufflevector <4 x i32> %i.goh, <4 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gon = shufflevector <12 x i32> %i.gol, <12 x i32> %i.gom, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.goo = call i32 @llvm.vector.reduce.umin.v12i32(<12 x i32> %i.gon)
  %i.gop = call i32 @llvm.umin.i32(i32 %i.goo, i32 %i.goj)
  %i.goq = call i32 @llvm.umin.i32(i32 %i.gop, i32 %i.gok)
  %i.gor = and i32 %i.goq, 65535                  ; 5 uses
  %i.gos = icmp samesign ult i32 %i.gor, 32768
  br i1 %i.gos, label %ra_evict.exit.i431, label %bb.aox

bb.aox:                                           ; preds = %bb.aow
  %i.got = load i32, ptr %i.kp, align 16, !tbaa !82 ; 2 uses
  %i.gou = and i32 %i.got, 49135                  ; 2 uses
  %.not200.i.i429 = icmp eq i32 %i.gou, 0
  br i1 %.not200.i.i429, label %ra_evict.exit.i431, label %bb.aoy

bb.aoy:                                           ; preds = %bb.aox
  %i.gov = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.gow = zext nneg i32 %i.gor to i64
  %i.gox = getelementptr inbounds nuw [8 x i8], ptr %i.gov, i64 %i.gow
  %i.goy = getelementptr inbounds nuw i8, ptr %i.gox, i64 6
  %i.goz = load i8, ptr %i.goy, align 2, !tbaa !25
  %i.gpa = zext nneg i8 %i.goz to i32
  %i.gpb = shl nuw i32 1, %i.gpa
  %i.gpc = and i32 %i.gpb, %i.got
  %.not201.i.i430 = icmp eq i32 %i.gpc, 0
  br i1 %.not201.i.i430, label %bb.aoz, label %ra_evict.exit.i431

bb.aoz:                                           ; preds = %bb.aoy
  %i.gpd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gou, i1 true)
  %i.gpe = zext nneg i32 %i.gpd to i64
  %i.gpf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gpe
  %i.gpg = load i32, ptr %i.gpf, align 4, !tbaa !26
  %i.gph = and i32 %i.gpg, 65535
  br label %ra_evict.exit.i431

ra_evict.exit.i431:                               ; preds = %bb.aoz, %bb.aoy, %bb.aox, %bb.aow
  %.1134.i.i432 = phi i32 [ %i.gor, %bb.aow ], [ %i.gor, %bb.aox ], [ %i.gor, %bb.aoy ], [ %i.gph, %bb.aoz ]
  %i.gpi = call fastcc range(i32 0, 256) i32 @ra_restore(ptr noundef nonnull %5, i32 noundef %.1134.i.i432)
  br label %ra_scratch.exit.i.i401

bb.apa:                                           ; preds = %._crit_edge.i.i398
  %i.gpj = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.pre-phi.i399)
  %i.gpk = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gpj, i1 true)
  %i.gpl = xor i32 %i.gpk, 7
  br label %ra_scratch.exit.i.i401

ra_scratch.exit.i.i401:                           ; preds = %bb.apa, %ra_evict.exit.i431
  %.0.i.i.i.i402 = phi i32 [ %i.gpl, %bb.apa ], [ %i.gpi, %ra_evict.exit.i431 ] ; 2 uses
  %i.gpm = shl nuw i32 1, %.0.i.i.i.i402
  br label %bb.apb

bb.apb:                                           ; preds = %ra_scratch.exit.i.i401, %bb.aov
  %.sink30.i.i403 = phi i32 [ %i.gpm, %ra_scratch.exit.i.i401 ], [ %i.goc, %bb.aov ]
  %.0.i.i404 = phi i32 [ %.0.i.i.i.i402, %ra_scratch.exit.i.i401 ], [ %i.gob, %bb.aov ] ; 2 uses
  %i.gpn = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.gpo = or i32 %i.gpn, %.sink30.i.i403
  store i32 %i.gpo, ptr %i.ko, align 4, !tbaa !71
  %i.gpp = trunc nuw i32 %.0.i.i404 to i8
  store i8 %i.gpp, ptr %i.anz, align 2, !tbaa !25
  br label %bb.apc

bb.apc:                                           ; preds = %bb.apb, %bb.aot
  %.1.i.i405 = phi i32 [ %.0.i.i404, %bb.apb ], [ %i.gnu, %bb.aot ] ; 40 uses
  %i.gpq = getelementptr inbounds nuw i8, ptr %i.anc, i64 7
  %i.gpr = load i8, ptr %i.gpq, align 1, !tbaa !25 ; 2 uses
  %.not23.i.i406 = icmp eq i8 %i.gpr, 0
  br i1 %.not23.i.i406, label %ra_dest.exit.i408, label %bb.apd, !prof !39

bb.apd:                                           ; preds = %bb.apc
  %.val.i.i407 = load i8, ptr %i.aop, align 4, !tbaa !25
  call fastcc void @ra_save(ptr noundef nonnull %5, i8 %.val.i.i407, i8 %i.gpr, i32 noundef %.1.i.i405)
  br label %ra_dest.exit.i408

ra_dest.exit.i408:                                ; preds = %bb.apd, %bb.apc
  %i.gps = getelementptr inbounds nuw i8, ptr %i.anc, i64 2
  %i.gpt = load i16, ptr %i.gps, align 2, !tbaa !25
  switch i16 %i.gpt, label %asm_bufhdr.exit [
    i16 0, label %bb.ape
    i16 1, label %bb.aqf
    i16 2, label %bb.aqn
  ]

bb.ape:                                           ; preds = %ra_dest.exit.i408
  %i.gpu = shl nuw i32 1, %.1.i.i405
  %i.gpv = and i32 %i.gpu, 49135
  %i.gpw = xor i32 %i.gpv, 49135                  ; 2 uses
  %i.gpx = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.gpy = and i32 %i.gpx, %i.gpw                 ; 2 uses
  %.not.i.i.i418 = icmp eq i32 %i.gpy, 0
  br i1 %.not.i.i.i418, label %bb.apf, label %bb.apg

bb.apf:                                           ; preds = %bb.ape
  %i.gpz = call fastcc i32 @ra_evict(ptr noundef nonnull %5, i32 noundef %i.gpw)
  br label %ra_scratch.exit.i419

bb.apg:                                           ; preds = %bb.ape
  %i.gqa = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.gpy)
  %i.gqb = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gqa, i1 true)
  %i.gqc = xor i32 %i.gqb, 7
  br label %ra_scratch.exit.i419

ra_scratch.exit.i419:                             ; preds = %bb.apg, %bb.apf
  %.0.i.i.i420 = phi i32 [ %i.gqc, %bb.apg ], [ %i.gpz, %bb.apf ] ; 6 uses
  %i.gqd = shl nuw i32 1, %.0.i.i.i420
  %i.gqe = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.gqf = or i32 %i.gqe, %i.gqd
  store i32 %i.gqf, ptr %i.ko, align 4, !tbaa !71
  %i.gqg = icmp samesign ult i32 %.0.i.i.i420, 16
  %i.gqh = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 12 uses
  %.not.i.i40.i = icmp samesign ult i32 %.1.i.i405, 128 ; 4 uses
  br i1 %i.gqg, label %bb.aph, label %bb.apm

bb.aph:                                           ; preds = %ra_scratch.exit.i419
  br i1 %.not.i.i40.i, label %bb.api, label %bb.apl

bb.api:                                           ; preds = %bb.aph
  %i.gqi = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gqi, label %.thread.i.i.i427, label %bb.apj

.thread.i.i.i427:                                 ; preds = %bb.api
  %i.gqj = getelementptr inbounds i8, ptr %i.gqh, i64 -4 ; 2 uses
  store i32 0, ptr %i.gqj, align 4, !tbaa !26
  br label %bb.apt

bb.apj:                                           ; preds = %bb.api
  %i.gqk = and i32 %.1.i.i405, 7
  switch i32 %i.gqk, label %bb.apt [
    i32 5, label %.thread.i426
    i32 4, label %bb.apk
  ]

.thread.i426:                                     ; preds = %bb.apj
  %i.gql = getelementptr inbounds i8, ptr %i.gqh, i64 -1 ; 2 uses
  store i8 0, ptr %i.gql, align 1, !tbaa !25
  br label %bb.apt

bb.apk:                                           ; preds = %bb.apj
  %i.gqm = getelementptr inbounds i8, ptr %i.gqh, i64 -1 ; 2 uses
  store i8 36, ptr %i.gqm, align 1, !tbaa !25
  br label %bb.apt

bb.apl:                                           ; preds = %bb.aph
  %i.gqn = getelementptr inbounds i8, ptr %i.gqh, i64 -4
  store i32 0, ptr %i.gqn, align 4, !tbaa !26
  %i.gqo = getelementptr inbounds i8, ptr %i.gqh, i64 -5 ; 2 uses
  store i8 37, ptr %i.gqo, align 1, !tbaa !25
  br label %bb.apt

bb.apm:                                           ; preds = %ra_scratch.exit.i419
  br i1 %.not.i.i40.i, label %bb.apn, label %bb.apq

bb.apn:                                           ; preds = %bb.apm
  %i.gqp = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gqp, label %.thread.i.i424, label %bb.apo

.thread.i.i424:                                   ; preds = %bb.apn
  %i.gqq = getelementptr inbounds i8, ptr %i.gqh, i64 -4 ; 2 uses
  store i32 0, ptr %i.gqq, align 4, !tbaa !26
  br label %bb.apr

bb.apo:                                           ; preds = %bb.apn
  %i.gqr = and i32 %.1.i.i405, 7
  switch i32 %i.gqr, label %bb.apr [
    i32 5, label %.thread87.i
    i32 4, label %bb.app
  ]

.thread87.i:                                      ; preds = %bb.apo
  %i.gqs = getelementptr inbounds i8, ptr %i.gqh, i64 -1 ; 2 uses
  store i8 0, ptr %i.gqs, align 1, !tbaa !25
  br label %bb.apr

bb.app:                                           ; preds = %bb.apo
  %i.gqt = getelementptr inbounds i8, ptr %i.gqh, i64 -1 ; 2 uses
  store i8 36, ptr %i.gqt, align 1, !tbaa !25
  br label %bb.apr

bb.apq:                                           ; preds = %bb.apm
  %i.gqu = getelementptr inbounds i8, ptr %i.gqh, i64 -4
  store i32 0, ptr %i.gqu, align 4, !tbaa !26
  %i.gqv = getelementptr inbounds i8, ptr %i.gqh, i64 -5 ; 2 uses
  store i8 37, ptr %i.gqv, align 1, !tbaa !25
  br label %bb.apr

bb.apr:                                           ; preds = %bb.apq, %bb.app, %.thread87.i, %bb.apo, %.thread.i.i424
  %.031.i.i421 = phi i32 [ 4, %bb.apq ], [ %.1.i.i405, %bb.app ], [ %.1.i.i405, %bb.apo ], [ 37, %.thread.i.i424 ], [ %.1.i.i405, %.thread87.i ] ; 2 uses
  %.130.i.i422 = phi ptr [ %i.gqv, %bb.apq ], [ %i.gqt, %bb.app ], [ %i.gqh, %bb.apo ], [ %i.gqq, %.thread.i.i424 ], [ %i.gqs, %.thread87.i ] ; 3 uses
  %.1.i67.i = phi i32 [ 0, %bb.apq ], [ 0, %bb.app ], [ 0, %bb.apo ], [ 0, %.thread.i.i424 ], [ 64, %.thread87.i ]
  %i.gqw = shl nuw nsw i32 %.0.i.i.i420, 3
  %i.gqx = and i32 %i.gqw, 56                     ; 2 uses
  %i.gqy = and i32 %.031.i.i421, 7
  %i.gqz = or disjoint i32 %i.gqy, %.1.i67.i
  %i.gra = or disjoint i32 %i.gqz, %i.gqx
  %i.grb = trunc nuw nsw i32 %i.gra to i8
  %i.grc = getelementptr inbounds i8, ptr %.130.i.i422, i64 -1
  store i8 %i.grb, ptr %i.grc, align 1, !tbaa !25
  %i.grd = getelementptr inbounds i8, ptr %.130.i.i422, i64 -5 ; 3 uses
  store i32 286258172, ptr %i.grd, align 4, !tbaa !26
  %i.gre = getelementptr inbounds i8, ptr %.130.i.i422, i64 -4 ; 2 uses
  %i.grf = lshr i32 %.0.i.i.i420, 1
  %i.grg = and i32 %i.grf, 4                      ; 2 uses
  %i.grh = lshr i32 %.031.i.i421, 3
  %i.gri = and i32 %i.grh, 1
  %i.grj = or disjoint i32 %i.gri, %i.grg         ; 2 uses
  %.not.i.i68.i = icmp eq i32 %i.grj, 0
  br i1 %.not.i.i68.i, label %bb.apy, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.grk = trunc nuw nsw i32 %i.grj to i8
  %i.grl = or disjoint i8 %i.grk, 64
  store i8 %i.grl, ptr %i.gre, align 1, !tbaa !25
  store i8 -13, ptr %i.grd, align 1, !tbaa !25
  br label %bb.apy

bb.apt:                                           ; preds = %bb.apl, %bb.apk, %.thread.i426, %bb.apj, %.thread.i.i.i427
  %.031.i.i.i = phi i32 [ 4, %bb.apl ], [ %.1.i.i405, %bb.apk ], [ %.1.i.i405, %bb.apj ], [ 37, %.thread.i.i.i427 ], [ %.1.i.i405, %.thread.i426 ] ; 2 uses
  %.130.i.i.i = phi ptr [ %i.gqo, %bb.apl ], [ %i.gqm, %bb.apk ], [ %i.gqh, %bb.apj ], [ %i.gqj, %.thread.i.i.i427 ], [ %i.gql, %.thread.i426 ] ; 8 uses
  %.1.i.i.i425 = phi i32 [ 0, %bb.apl ], [ 0, %bb.apk ], [ 0, %bb.apj ], [ 0, %.thread.i.i.i427 ], [ 64, %.thread.i426 ]
  %i.grm = shl nuw nsw i32 %.0.i.i.i420, 3
  %i.grn = and i32 %i.grm, 56                     ; 2 uses
  %i.gro = and i32 %.031.i.i.i, 7
  %i.grp = or disjoint i32 %i.gro, %.1.i.i.i425
  %i.grq = or disjoint i32 %i.grp, %i.grn
  %i.grr = trunc nuw nsw i32 %i.grq to i8
  %i.grs = getelementptr inbounds i8, ptr %.130.i.i.i, i64 -1
  store i8 %i.grr, ptr %i.grs, align 1, !tbaa !25
  %i.grt = getelementptr i8, ptr %.130.i.i.i, i64 -2
  store i8 -119, ptr %i.grt, align 1, !tbaa !25
  %i.gru = lshr i32 %.0.i.i.i420, 1
  %i.grv = and i32 %i.gru, 4                      ; 2 uses
  %i.grw = lshr i32 %.031.i.i.i, 3
  %i.grx = and i32 %i.grw, 1
  %i.gry = or disjoint i32 %i.grx, %i.grv
  %i.grz = trunc nuw nsw i32 %i.gry to i8
  %i.gsa = or disjoint i8 %i.grz, 72
  %i.gsb = getelementptr i8, ptr %.130.i.i.i, i64 -3
  store i8 %i.gsa, ptr %i.gsb, align 1, !tbaa !25
  br i1 %.not.i.i40.i, label %bb.apu, label %bb.apx

bb.apu:                                           ; preds = %bb.apt
  %i.gsc = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gsc, label %.thread.i.i54.i, label %bb.apv

.thread.i.i54.i:                                  ; preds = %bb.apu
  %i.gsd = getelementptr i8, ptr %.130.i.i.i, i64 -7 ; 2 uses
  store i32 16, ptr %i.gsd, align 4, !tbaa !26
  br label %emit_rmro.exit.i49.i

bb.apv:                                           ; preds = %bb.apu
  %i.gse = and i32 %.1.i.i405, 7
  %i.gsf = getelementptr i8, ptr %.130.i.i.i, i64 -4 ; 2 uses
  store i8 16, ptr %i.gsf, align 1, !tbaa !25
  %i.gsg = icmp eq i32 %i.gse, 4
  br i1 %i.gsg, label %bb.apw, label %emit_rmro.exit.i49.i

bb.apw:                                           ; preds = %bb.apv
  %i.gsh = getelementptr i8, ptr %.130.i.i.i, i64 -5 ; 2 uses
  store i8 36, ptr %i.gsh, align 1, !tbaa !25
  br label %emit_rmro.exit.i49.i

bb.apx:                                           ; preds = %bb.apt
  %i.gsi = getelementptr i8, ptr %.130.i.i.i, i64 -7
  store i32 16, ptr %i.gsi, align 4, !tbaa !26
  %i.gsj = getelementptr i8, ptr %.130.i.i.i, i64 -8 ; 2 uses
  store i8 37, ptr %i.gsj, align 1, !tbaa !25
  br label %emit_rmro.exit.i49.i

emit_rmro.exit.i49.i:                             ; preds = %bb.apx, %bb.apw, %bb.apv, %.thread.i.i54.i
  %.031.i.i45.i = phi i32 [ 4, %bb.apx ], [ %.1.i.i405, %bb.apw ], [ %.1.i.i405, %bb.apv ], [ 37, %.thread.i.i54.i ] ; 2 uses
  %.130.i.i46.i = phi ptr [ %i.gsj, %bb.apx ], [ %i.gsh, %bb.apw ], [ %i.gsf, %bb.apv ], [ %i.gsd, %.thread.i.i54.i ] ; 3 uses
  %.1.i.i47.i = phi i32 [ 0, %bb.apx ], [ 64, %bb.apw ], [ 64, %bb.apv ], [ 0, %.thread.i.i54.i ]
  %i.gsk = and i32 %.031.i.i45.i, 7
  %i.gsl = or disjoint i32 %i.gsk, %.1.i.i47.i
  %i.gsm = or disjoint i32 %i.gsl, %i.grn
  %i.gsn = trunc nuw nsw i32 %i.gsm to i8
  %i.gso = getelementptr inbounds i8, ptr %.130.i.i46.i, i64 -1
  store i8 %i.gsn, ptr %i.gso, align 1, !tbaa !25
  %i.gsp = getelementptr i8, ptr %.130.i.i46.i, i64 -2
  store i8 -117, ptr %i.gsp, align 1, !tbaa !25
  %i.gsq = lshr i32 %.031.i.i45.i, 3
  %i.gsr = and i32 %i.gsq, 1
  %i.gss = or disjoint i32 %i.gsr, %i.grv
  %i.gst = trunc nuw nsw i32 %i.gss to i8
  %i.gsu = or disjoint i8 %i.gst, 72
  %i.gsv = getelementptr i8, ptr %.130.i.i46.i, i64 -3 ; 2 uses
  store i8 %i.gsu, ptr %i.gsv, align 1, !tbaa !25
  store ptr %i.gsv, ptr %i.bw, align 16, !tbaa !52
  br label %asm_bufhdr.exit

bb.apy:                                           ; preds = %bb.aps, %bb.apr
  %.046.i.i.i423 = phi ptr [ %i.gre, %bb.apr ], [ %i.grd, %bb.aps ] ; 5 uses
  br i1 %.not.i.i40.i, label %bb.apz, label %bb.aqc

bb.apz:                                           ; preds = %bb.apy
  %i.gsw = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gsw, label %.thread.i81.i, label %bb.aqa

.thread.i81.i:                                    ; preds = %bb.apz
  %i.gsx = getelementptr inbounds i8, ptr %.046.i.i.i423, i64 -4 ; 2 uses
  store i32 16, ptr %i.gsx, align 4, !tbaa !26
  br label %bb.aqd

bb.aqa:                                           ; preds = %bb.apz
  %i.gsy = and i32 %.1.i.i405, 7
  %i.gsz = getelementptr inbounds i8, ptr %.046.i.i.i423, i64 -1 ; 2 uses
  store i8 16, ptr %i.gsz, align 1, !tbaa !25
  %i.gta = icmp eq i32 %i.gsy, 4
  br i1 %i.gta, label %bb.aqb, label %bb.aqd

bb.aqb:                                           ; preds = %bb.aqa
  %i.gtb = getelementptr inbounds i8, ptr %.046.i.i.i423, i64 -2 ; 2 uses
  store i8 36, ptr %i.gtb, align 1, !tbaa !25
  br label %bb.aqd

bb.aqc:                                           ; preds = %bb.apy
  %i.gtc = getelementptr inbounds i8, ptr %.046.i.i.i423, i64 -4
  store i32 16, ptr %i.gtc, align 4, !tbaa !26
  %i.gtd = getelementptr inbounds i8, ptr %.046.i.i.i423, i64 -5 ; 2 uses
  store i8 37, ptr %i.gtd, align 1, !tbaa !25
  br label %bb.aqd

bb.aqd:                                           ; preds = %bb.aqc, %bb.aqb, %bb.aqa, %.thread.i81.i
  %.031.i72.i = phi i32 [ 4, %bb.aqc ], [ %.1.i.i405, %bb.aqb ], [ %.1.i.i405, %bb.aqa ], [ 37, %.thread.i81.i ] ; 2 uses
  %.130.i73.i = phi ptr [ %i.gtd, %bb.aqc ], [ %i.gtb, %bb.aqb ], [ %i.gsz, %bb.aqa ], [ %i.gsx, %.thread.i81.i ] ; 3 uses
  %.1.i74.i = phi i32 [ 0, %bb.aqc ], [ 64, %bb.aqb ], [ 64, %bb.aqa ], [ 0, %.thread.i81.i ]
  %i.gte = and i32 %.031.i72.i, 7
  %i.gtf = or disjoint i32 %i.gte, %.1.i74.i
  %i.gtg = or disjoint i32 %i.gtf, %i.gqx
  %i.gth = trunc nuw nsw i32 %i.gtg to i8
  %i.gti = getelementptr inbounds i8, ptr %.130.i73.i, i64 -1
  store i8 %i.gth, ptr %i.gti, align 1, !tbaa !25
  %i.gtj = getelementptr inbounds i8, ptr %.130.i73.i, i64 -5 ; 3 uses
  store i32 269480956, ptr %i.gtj, align 4, !tbaa !26
  %i.gtk = getelementptr inbounds i8, ptr %.130.i73.i, i64 -4 ; 2 uses
  %i.gtl = lshr i32 %.031.i72.i, 3
  %i.gtm = and i32 %i.gtl, 1
  %i.gtn = or disjoint i32 %i.gtm, %i.grg         ; 2 uses
  %.not.i.i75.i = icmp eq i32 %i.gtn, 0
  br i1 %.not.i.i75.i, label %emit_rmro.exit82.i, label %bb.aqe

bb.aqe:                                           ; preds = %bb.aqd
  %i.gto = trunc nuw nsw i32 %i.gtn to i8
  %i.gtp = or disjoint i8 %i.gto, 64
  store i8 %i.gtp, ptr %i.gtk, align 1, !tbaa !25
  store i8 -13, ptr %i.gtj, align 1, !tbaa !25
  br label %emit_rmro.exit82.i

emit_rmro.exit82.i:                               ; preds = %bb.aqe, %bb.aqd
  %.046.i.i77.i = phi ptr [ %i.gtk, %bb.aqd ], [ %i.gtj, %bb.aqe ]
  store ptr %.046.i.i77.i, ptr %i.bw, align 16, !tbaa !52
  br label %asm_bufhdr.exit

bb.aqf:                                           ; preds = %ra_dest.exit.i408
  %i.gtq = load ptr, ptr %i.kc, align 16, !tbaa !57 ; 2 uses
  %i.gtr = load i16, ptr %i.anc, align 8, !tbaa !25 ; 2 uses
  %i.gts = zext i16 %i.gtr to i64
  %i.gtt = getelementptr inbounds nuw [8 x i8], ptr %i.gtq, i64 %i.gts ; 4 uses
  %i.gtu = getelementptr inbounds nuw i8, ptr %i.gtt, i64 6
  %i.gtv = load i8, ptr %i.gtu, align 2, !tbaa !25
  %.not.i414 = icmp sgt i8 %i.gtv, -1
  %i.gtw = getelementptr inbounds i8, ptr %i.anc, i64 -8
  %i.gtx = icmp eq ptr %i.gtt, %i.gtw
  %or.cond.i415 = select i1 %.not.i414, i1 true, i1 %i.gtx
  br i1 %or.cond.i415, label %asm_bufhdr.exit, label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf
  %i.gty = getelementptr inbounds i8, ptr %i.anc, i64 -16
  %i.gtz = icmp eq ptr %i.gtt, %i.gty
  br i1 %i.gtz, label %bb.aqh, label %.preheader

bb.aqh:                                           ; preds = %bb.aqg
  %i.gua = getelementptr inbounds i8, ptr %i.anc, i64 -2
  %i.gub = load i8, ptr %i.gua, align 2, !tbaa !25
  %.not36.i = icmp sgt i8 %i.gub, -1
  br i1 %.not36.i, label %.preheader, label %bb.aqi

bb.aqi:                                           ; preds = %bb.aqh
  %i.guc = getelementptr inbounds i8, ptr %i.anc, i64 -1
  %i.gud = load i8, ptr %i.guc, align 1, !tbaa !25
  %.not37.i = icmp eq i8 %i.gud, 0
  br i1 %.not37.i, label %asm_bufhdr.exit, label %.preheader

.preheader:                                       ; preds = %bb.aqi, %bb.aqh, %bb.aqg
  br label %bb.aqj

bb.aqj:                                           ; preds = %.preheader, %.critedge.i417
  %.0.i416 = phi ptr [ %i.gul, %.critedge.i417 ], [ %i.gtt, %.preheader ] ; 5 uses
  %i.gue = getelementptr inbounds nuw i8, ptr %.0.i416, i64 5
  %i.guf = load i8, ptr %i.gue, align 1, !tbaa !25
  %i.gug = icmp eq i8 %i.guf, 85
  br i1 %i.gug, label %bb.aqk, label %.critedge.i417

bb.aqk:                                           ; preds = %bb.aqj
  %i.guh = getelementptr inbounds nuw i8, ptr %.0.i416, i64 2
  %i.gui = load i16, ptr %i.guh, align 2, !tbaa !25
  %.not90.i = icmp eq i16 %i.gui, 0
  br i1 %.not90.i, label %bb.aql, label %.critedge.i417

.critedge.i417:                                   ; preds = %bb.aqk, %bb.aqj
  %i.guj = load i16, ptr %.0.i416, align 8, !tbaa !25
  %i.guk = zext i16 %i.guj to i64
  %i.gul = getelementptr inbounds nuw [8 x i8], ptr %i.gtq, i64 %i.guk
  br label %bb.aqj, !llvm.loop !111

bb.aql:                                           ; preds = %bb.aqk
  %i.gum = load i16, ptr %.0.i416, align 8, !tbaa !25
  %i.gun = icmp sgt i16 %i.gum, -1
  br i1 %i.gun, label %bb.aqm, label %asm_bufhdr.exit

bb.aqm:                                           ; preds = %bb.aql
  %i.guo = zext i16 %i.gtr to i32
  %i.gup = call fastcc i32 @ra_allocref(ptr noundef nonnull %5, i32 noundef %i.guo, i32 noundef 49135)
  %i.guq = shl nuw i32 1, %i.gup
  %i.gur = load i32, ptr %i.kp, align 16, !tbaa !82
  %i.gus = or i32 %i.gur, %i.guq
  store i32 %i.gus, ptr %i.kp, align 16, !tbaa !82
  br label %asm_bufhdr.exit

bb.aqn:                                           ; preds = %ra_dest.exit.i408
  %i.gut = shl nuw i32 1, %.1.i.i405
  %i.guu = and i32 %i.gut, 49135
  %i.guv = xor i32 %i.guu, 49135                  ; 2 uses
  %i.guw = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.gux = and i32 %i.guw, %i.guv                 ; 2 uses
  %.not.i.i.i55.i = icmp eq i32 %i.gux, 0
  br i1 %.not.i.i.i55.i, label %bb.aqo, label %bb.aqp

bb.aqo:                                           ; preds = %bb.aqn
  %i.guy = call fastcc i32 @ra_evict(ptr noundef nonnull %5, i32 noundef %i.guv)
  br label %ra_scratch.exit.i56.i

bb.aqp:                                           ; preds = %bb.aqn
  %i.guz = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.gux)
  %i.gva = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.guz, i1 true)
  %i.gvb = xor i32 %i.gva, 7
  br label %ra_scratch.exit.i56.i

ra_scratch.exit.i56.i:                            ; preds = %bb.aqp, %bb.aqo
  %.0.i.i.i57.i = phi i32 [ %i.gvb, %bb.aqp ], [ %i.guy, %bb.aqo ] ; 11 uses
  %i.gvc = shl nuw i32 1, %.0.i.i.i57.i
  %i.gvd = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.gve = or i32 %i.gvd, %i.gvc
  store i32 %i.gve, ptr %i.ko, align 4, !tbaa !71
  %i.gvf = icmp samesign ult i32 %.0.i.i.i57.i, 16 ; 2 uses
  %i.gvg = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 10 uses
  %.not.i.i12.i.i = icmp samesign ult i32 %.1.i.i405, 128 ; 4 uses
  br i1 %i.gvf, label %bb.aqq, label %bb.aqv

bb.aqq:                                           ; preds = %ra_scratch.exit.i56.i
  br i1 %.not.i.i12.i.i, label %bb.aqr, label %bb.aqu

bb.aqr:                                           ; preds = %bb.aqq
  %i.gvh = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gvh, label %.thread.i.i.i.i, label %bb.aqs

.thread.i.i.i.i:                                  ; preds = %bb.aqr
  %i.gvi = getelementptr inbounds i8, ptr %i.gvg, i64 -4 ; 2 uses
  store i32 24, ptr %i.gvi, align 4, !tbaa !26
  br label %emit_rmro.exit.i.i.i

bb.aqs:                                           ; preds = %bb.aqr
  %i.gvj = and i32 %.1.i.i405, 7
  %i.gvk = getelementptr inbounds i8, ptr %i.gvg, i64 -1 ; 2 uses
  store i8 24, ptr %i.gvk, align 1, !tbaa !25
  %i.gvl = icmp eq i32 %i.gvj, 4
  br i1 %i.gvl, label %bb.aqt, label %emit_rmro.exit.i.i.i

bb.aqt:                                           ; preds = %bb.aqs
  %i.gvm = getelementptr inbounds i8, ptr %i.gvg, i64 -2 ; 2 uses
  store i8 36, ptr %i.gvm, align 1, !tbaa !25
  br label %emit_rmro.exit.i.i.i

bb.aqu:                                           ; preds = %bb.aqq
  %i.gvn = getelementptr inbounds i8, ptr %i.gvg, i64 -4
  store i32 24, ptr %i.gvn, align 4, !tbaa !26
  %i.gvo = getelementptr inbounds i8, ptr %i.gvg, i64 -5 ; 2 uses
  store i8 37, ptr %i.gvo, align 1, !tbaa !25
  br label %emit_rmro.exit.i.i.i

emit_rmro.exit.i.i.i:                             ; preds = %bb.aqu, %bb.aqt, %bb.aqs, %.thread.i.i.i.i
  %.031.i.i.i.i = phi i32 [ 4, %bb.aqu ], [ %.1.i.i405, %bb.aqt ], [ %.1.i.i405, %bb.aqs ], [ 37, %.thread.i.i.i.i ] ; 2 uses
  %.130.i.i.i.i = phi ptr [ %i.gvo, %bb.aqu ], [ %i.gvm, %bb.aqt ], [ %i.gvk, %bb.aqs ], [ %i.gvi, %.thread.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi i32 [ 0, %bb.aqu ], [ 64, %bb.aqt ], [ 64, %bb.aqs ], [ 0, %.thread.i.i.i.i ]
  %i.gvp = shl nuw nsw i32 %.0.i.i.i57.i, 3
  %i.gvq = and i32 %i.gvp, 56
  %i.gvr = and i32 %.031.i.i.i.i, 7
  %i.gvs = or disjoint i32 %i.gvr, %i.gvq
  %i.gvt = or disjoint i32 %i.gvs, %.1.i.i.i.i
  %i.gvu = trunc nuw nsw i32 %i.gvt to i8
  %i.gvv = getelementptr inbounds i8, ptr %.130.i.i.i.i, i64 -1
  store i8 %i.gvu, ptr %i.gvv, align 1, !tbaa !25
  %i.gvw = getelementptr i8, ptr %.130.i.i.i.i, i64 -2
  store i8 -119, ptr %i.gvw, align 1, !tbaa !25
  %i.gvx = lshr i32 %.0.i.i.i57.i, 1              ; 2 uses
  %i.gvy = and i32 %i.gvx, 4
  %i.gvz = lshr i32 %.031.i.i.i.i, 3
  %i.gwa = and i32 %i.gvz, 1
  %i.gwb = or disjoint i32 %i.gwa, %i.gvy
  %i.gwc = trunc nuw nsw i32 %i.gwb to i8
  %i.gwd = or disjoint i8 %i.gwc, 72
  %i.gwe = getelementptr i8, ptr %.130.i.i.i.i, i64 -3 ; 2 uses
  store i8 %i.gwd, ptr %i.gwe, align 1, !tbaa !25
  br label %emit_storeofs.exit.i.i

bb.aqv:                                           ; preds = %ra_scratch.exit.i56.i
  br i1 %.not.i.i12.i.i, label %bb.aqw, label %bb.aqz

bb.aqw:                                           ; preds = %bb.aqv
  %i.gwf = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gwf, label %.thread.i.i62.i, label %bb.aqx

.thread.i.i62.i:                                  ; preds = %bb.aqw
  %i.gwg = getelementptr inbounds i8, ptr %i.gvg, i64 -4 ; 2 uses
  store i32 24, ptr %i.gwg, align 4, !tbaa !26
  br label %bb.ara

bb.aqx:                                           ; preds = %bb.aqw
  %i.gwh = and i32 %.1.i.i405, 7
  %i.gwi = getelementptr inbounds i8, ptr %i.gvg, i64 -1 ; 2 uses
  store i8 24, ptr %i.gwi, align 1, !tbaa !25
  %i.gwj = icmp eq i32 %i.gwh, 4
  br i1 %i.gwj, label %bb.aqy, label %bb.ara

bb.aqy:                                           ; preds = %bb.aqx
  %i.gwk = getelementptr inbounds i8, ptr %i.gvg, i64 -2 ; 2 uses
  store i8 36, ptr %i.gwk, align 1, !tbaa !25
  br label %bb.ara

bb.aqz:                                           ; preds = %bb.aqv
  %i.gwl = getelementptr inbounds i8, ptr %i.gvg, i64 -4
  store i32 24, ptr %i.gwl, align 4, !tbaa !26
  %i.gwm = getelementptr inbounds i8, ptr %i.gvg, i64 -5 ; 2 uses
  store i8 37, ptr %i.gwm, align 1, !tbaa !25
  br label %bb.ara

bb.ara:                                           ; preds = %bb.aqz, %bb.aqy, %bb.aqx, %.thread.i.i62.i
  %.031.i.i58.i = phi i32 [ 4, %bb.aqz ], [ %.1.i.i405, %bb.aqy ], [ %.1.i.i405, %bb.aqx ], [ 37, %.thread.i.i62.i ] ; 2 uses
  %.130.i.i59.i = phi ptr [ %i.gwm, %bb.aqz ], [ %i.gwk, %bb.aqy ], [ %i.gwi, %bb.aqx ], [ %i.gwg, %.thread.i.i62.i ] ; 3 uses
  %.1.i.i60.i = phi i32 [ 0, %bb.aqz ], [ 64, %bb.aqy ], [ 64, %bb.aqx ], [ 0, %.thread.i.i62.i ]
  %i.gwn = shl nuw nsw i32 %.0.i.i.i57.i, 3
  %i.gwo = and i32 %i.gwn, 56
  %i.gwp = and i32 %.031.i.i58.i, 7
  %i.gwq = or disjoint i32 %i.gwp, %i.gwo
  %i.gwr = or disjoint i32 %i.gwq, %.1.i.i60.i
  %i.gws = trunc nuw nsw i32 %i.gwr to i8
  %i.gwt = getelementptr inbounds i8, ptr %.130.i.i59.i, i64 -1
  store i8 %i.gws, ptr %i.gwt, align 1, !tbaa !25
  %i.gwu = getelementptr inbounds i8, ptr %.130.i.i59.i, i64 -5 ; 3 uses
  store i32 286258172, ptr %i.gwu, align 4, !tbaa !26
  %i.gwv = getelementptr inbounds i8, ptr %.130.i.i59.i, i64 -4 ; 2 uses
  %i.gww = lshr i32 %.0.i.i.i57.i, 1              ; 3 uses
  %i.gwx = and i32 %i.gww, 4
  %i.gwy = lshr i32 %.031.i.i58.i, 3
  %i.gwz = and i32 %i.gwy, 1
  %i.gxa = or disjoint i32 %i.gwz, %i.gwx         ; 2 uses
  %.not.i.i27.i.i = icmp eq i32 %i.gxa, 0
  br i1 %.not.i.i27.i.i, label %emit_storeofs.exit.i.i, label %bb.arb

bb.arb:                                           ; preds = %bb.ara
  %i.gxb = trunc nuw nsw i32 %i.gxa to i8
  %i.gxc = or disjoint i8 %i.gxb, 64
  store i8 %i.gxc, ptr %i.gwv, align 1, !tbaa !25
  store i8 -13, ptr %i.gwu, align 1, !tbaa !25
  br label %emit_storeofs.exit.i.i

emit_storeofs.exit.i.i:                           ; preds = %bb.arb, %bb.ara, %emit_rmro.exit.i.i.i
  %.sink.i.i409 = phi ptr [ %i.gwe, %emit_rmro.exit.i.i.i ], [ %i.gwv, %bb.ara ], [ %i.gwu, %bb.arb ]
  %.pre-phi.i.i410 = phi i32 [ %i.gvx, %emit_rmro.exit.i.i.i ], [ %i.gww, %bb.ara ], [ %i.gww, %bb.arb ] ; 2 uses
  store ptr %.sink.i.i409, ptr %i.bw, align 16, !tbaa !52
  %i.gxd = or disjoint i32 %.0.i.i.i57.i, 524800
  %i.gxe = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.gxf = getelementptr inbounds i8, ptr %i.gxe, i64 -368
  call fastcc void @emit_rma(ptr noundef nonnull %5, i32 noundef 184549630, i32 noundef %i.gxd, ptr noundef nonnull %i.gxf)
  %i.gxg = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 4 uses
  %i.gxh = getelementptr inbounds i8, ptr %i.gxg, i64 -1
  store i8 7, ptr %i.gxh, align 1, !tbaa !25
  %i.gxi = trunc nuw i32 %.0.i.i.i57.i to i8
  %i.gxj = and i8 %i.gxi, 7
  %i.gxk = or disjoint i8 %i.gxj, -32
  %i.gxl = getelementptr inbounds i8, ptr %i.gxg, i64 -2
  store i8 %i.gxk, ptr %i.gxl, align 1, !tbaa !25
  %i.gxm = getelementptr i8, ptr %i.gxg, i64 -3   ; 2 uses
  store i8 -125, ptr %i.gxm, align 1, !tbaa !25
  %i.gxn = and i32 %.0.i.i.i57.i, 8
  %.not.i.i14.i.i = icmp eq i32 %i.gxn, 0
  br i1 %.not.i.i14.i.i, label %emit_gri.exit.i.i411, label %bb.arc

bb.arc:                                           ; preds = %emit_storeofs.exit.i.i
  %i.gxo = getelementptr inbounds i8, ptr %i.gxg, i64 -4 ; 2 uses
  store i8 65, ptr %i.gxo, align 1, !tbaa !25
  br label %emit_gri.exit.i.i411

emit_gri.exit.i.i411:                             ; preds = %bb.arc, %emit_storeofs.exit.i.i
  %.046.i.i.i61.i = phi ptr [ %i.gxm, %emit_storeofs.exit.i.i ], [ %i.gxo, %bb.arc ] ; 10 uses
  br i1 %i.gvf, label %bb.ard, label %bb.ari

bb.ard:                                           ; preds = %emit_gri.exit.i.i411
  br i1 %.not.i.i12.i.i, label %bb.are, label %bb.arh

bb.are:                                           ; preds = %bb.ard
  %i.gxp = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gxp, label %.thread.i.i25.i.i, label %bb.arf

.thread.i.i25.i.i:                                ; preds = %bb.are
  %i.gxq = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -4 ; 2 uses
  store i32 24, ptr %i.gxq, align 4, !tbaa !26
  br label %emit_rmro.exit.i21.i.i

bb.arf:                                           ; preds = %bb.are
  %i.gxr = and i32 %.1.i.i405, 7
  %i.gxs = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -1 ; 2 uses
  store i8 24, ptr %i.gxs, align 1, !tbaa !25
  %i.gxt = icmp eq i32 %i.gxr, 4
  br i1 %i.gxt, label %bb.arg, label %emit_rmro.exit.i21.i.i

bb.arg:                                           ; preds = %bb.arf
  %i.gxu = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -2 ; 2 uses
  store i8 36, ptr %i.gxu, align 1, !tbaa !25
  br label %emit_rmro.exit.i21.i.i

bb.arh:                                           ; preds = %bb.ard
  %i.gxv = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -4
  store i32 24, ptr %i.gxv, align 4, !tbaa !26
  %i.gxw = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -5 ; 2 uses
  store i8 37, ptr %i.gxw, align 1, !tbaa !25
  br label %emit_rmro.exit.i21.i.i

emit_rmro.exit.i21.i.i:                           ; preds = %bb.arh, %bb.arg, %bb.arf, %.thread.i.i25.i.i
  %.031.i.i17.i.i = phi i32 [ 4, %bb.arh ], [ %.1.i.i405, %bb.arg ], [ %.1.i.i405, %bb.arf ], [ 37, %.thread.i.i25.i.i ] ; 2 uses
  %.130.i.i18.i.i = phi ptr [ %i.gxw, %bb.arh ], [ %i.gxu, %bb.arg ], [ %i.gxs, %bb.arf ], [ %i.gxq, %.thread.i.i25.i.i ] ; 3 uses
  %.1.i.i19.i.i = phi i32 [ 0, %bb.arh ], [ 64, %bb.arg ], [ 64, %bb.arf ], [ 0, %.thread.i.i25.i.i ]
  %i.gxx = shl nuw nsw i32 %.0.i.i.i57.i, 3
  %i.gxy = and i32 %i.gxx, 56
  %i.gxz = and i32 %.031.i.i17.i.i, 7
  %i.gya = or disjoint i32 %i.gxz, %i.gxy
  %i.gyb = or disjoint i32 %i.gya, %.1.i.i19.i.i
  %i.gyc = trunc nuw nsw i32 %i.gyb to i8
  %i.gyd = getelementptr inbounds i8, ptr %.130.i.i18.i.i, i64 -1
  store i8 %i.gyc, ptr %i.gyd, align 1, !tbaa !25
  %i.gye = getelementptr i8, ptr %.130.i.i18.i.i, i64 -2
  store i8 -117, ptr %i.gye, align 1, !tbaa !25
  %i.gyf = and i32 %.pre-phi.i.i410, 4
  %i.gyg = lshr i32 %.031.i.i17.i.i, 3
  %i.gyh = and i32 %i.gyg, 1
  %i.gyi = or disjoint i32 %i.gyh, %i.gyf
  %i.gyj = trunc nuw nsw i32 %i.gyi to i8
  %i.gyk = or disjoint i8 %i.gyj, 72
  %i.gyl = getelementptr i8, ptr %.130.i.i18.i.i, i64 -3 ; 2 uses
  store i8 %i.gyk, ptr %i.gyl, align 1, !tbaa !25
  br label %asm_bufhdr_write.exit.i

bb.ari:                                           ; preds = %emit_gri.exit.i.i411
  br i1 %.not.i.i12.i.i, label %bb.arj, label %bb.arm

bb.arj:                                           ; preds = %bb.ari
  %i.gym = icmp eq i32 %.1.i.i405, 37
  br i1 %i.gym, label %.thread.i38.i.i, label %bb.ark

.thread.i38.i.i:                                  ; preds = %bb.arj
  %i.gyn = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -4 ; 2 uses
  store i32 24, ptr %i.gyn, align 4, !tbaa !26
  br label %bb.arn

bb.ark:                                           ; preds = %bb.arj
  %i.gyo = and i32 %.1.i.i405, 7
  %i.gyp = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -1 ; 2 uses
  store i8 24, ptr %i.gyp, align 1, !tbaa !25
  %i.gyq = icmp eq i32 %i.gyo, 4
  br i1 %i.gyq, label %bb.arl, label %bb.arn

bb.arl:                                           ; preds = %bb.ark
  %i.gyr = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -2 ; 2 uses
  store i8 36, ptr %i.gyr, align 1, !tbaa !25
  br label %bb.arn

bb.arm:                                           ; preds = %bb.ari
  %i.gys = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -4
  store i32 24, ptr %i.gys, align 4, !tbaa !26
  %i.gyt = getelementptr inbounds i8, ptr %.046.i.i.i61.i, i64 -5 ; 2 uses
  store i8 37, ptr %i.gyt, align 1, !tbaa !25
  br label %bb.arn

bb.arn:                                           ; preds = %bb.arm, %bb.arl, %bb.ark, %.thread.i38.i.i
  %.031.i31.i.i = phi i32 [ 4, %bb.arm ], [ %.1.i.i405, %bb.arl ], [ %.1.i.i405, %bb.ark ], [ 37, %.thread.i38.i.i ] ; 2 uses
  %.130.i32.i.i = phi ptr [ %i.gyt, %bb.arm ], [ %i.gyr, %bb.arl ], [ %i.gyp, %bb.ark ], [ %i.gyn, %.thread.i38.i.i ] ; 3 uses
  %.1.i33.i.i = phi i32 [ 0, %bb.arm ], [ 64, %bb.arl ], [ 64, %bb.ark ], [ 0, %.thread.i38.i.i ]
  %i.gyu = shl nuw nsw i32 %.0.i.i.i57.i, 3
  %i.gyv = and i32 %i.gyu, 56
  %i.gyw = and i32 %.031.i31.i.i, 7
  %i.gyx = or disjoint i32 %i.gyw, %i.gyv
  %i.gyy = or disjoint i32 %i.gyx, %.1.i33.i.i
  %i.gyz = trunc nuw nsw i32 %i.gyy to i8
  %i.gza = getelementptr inbounds i8, ptr %.130.i32.i.i, i64 -1
  store i8 %i.gyz, ptr %i.gza, align 1, !tbaa !25
  %i.gzb = getelementptr inbounds i8, ptr %.130.i32.i.i, i64 -5 ; 3 uses
  store i32 269480956, ptr %i.gzb, align 4, !tbaa !26
  %i.gzc = getelementptr inbounds i8, ptr %.130.i32.i.i, i64 -4 ; 2 uses
  %i.gzd = and i32 %.pre-phi.i.i410, 4
  %i.gze = lshr i32 %.031.i31.i.i, 3
  %i.gzf = and i32 %i.gze, 1
  %i.gzg = or disjoint i32 %i.gzf, %i.gzd         ; 2 uses
  %.not.i.i34.i.i = icmp eq i32 %i.gzg, 0
  br i1 %.not.i.i34.i.i, label %asm_bufhdr_write.exit.i, label %bb.aro

bb.aro:                                           ; preds = %bb.arn
  %i.gzh = trunc nuw nsw i32 %i.gzg to i8
  %i.gzi = or disjoint i8 %i.gzh, 64
  store i8 %i.gzi, ptr %i.gzc, align 1, !tbaa !25
  store i8 -13, ptr %i.gzb, align 1, !tbaa !25
  br label %asm_bufhdr_write.exit.i

asm_bufhdr_write.exit.i:                          ; preds = %bb.aro, %bb.arn, %emit_rmro.exit.i21.i.i
  %storemerge.i.i = phi ptr [ %i.gyl, %emit_rmro.exit.i21.i.i ], [ %i.gzc, %bb.arn ], [ %i.gzb, %bb.aro ]
  store ptr %storemerge.i.i, ptr %i.bw, align 16, !tbaa !52
  br label %asm_bufhdr.exit

asm_bufhdr.exit:                                  ; preds = %ra_dest.exit.i408, %emit_rmro.exit.i49.i, %emit_rmro.exit82.i, %bb.aqf, %bb.aqi, %bb.aql, %bb.aqm, %asm_bufhdr_write.exit.i
  %.1.i413 = phi ptr [ %i.anc, %ra_dest.exit.i408 ], [ %i.anc, %bb.aqi ], [ %i.anc, %asm_bufhdr_write.exit.i ], [ %i.anc, %bb.aqf ], [ %.0.i416, %bb.aqm ], [ %i.anc, %bb.aql ], [ %i.anc, %emit_rmro.exit.i49.i ], [ %i.anc, %emit_rmro.exit82.i ]
  %i.gzj = load i16, ptr %.1.i413, align 8, !tbaa !25
  %i.gzk = zext i16 %i.gzj to i32
  call fastcc void @ra_left(ptr noundef nonnull %5, i32 noundef %.1.i.i405, i32 noundef %i.gzk)
  br label %asm_ir.exit

bb.arp:                                           ; preds = %checkmclim.exit151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.gzl = load i16, ptr %i.anc, align 8, !tbaa !25
  %i.gzm = zext i16 %i.gzl to i32
  store i32 %i.gzm, ptr %i.k, align 4, !tbaa !26
  %i.gzn = getelementptr inbounds nuw i8, ptr %i.anc, i64 2
  %i.gzo = load i16, ptr %i.gzn, align 2, !tbaa !25 ; 2 uses
  %i.gzp = zext i16 %i.gzo to i32                 ; 6 uses
  store i32 %i.gzp, ptr %i.lz, align 4, !tbaa !26
  %i.gzq = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.gzr = zext i16 %i.gzo to i64
  %i.gzs = getelementptr inbounds nuw [8 x i8], ptr %i.gzq, i64 %i.gzr ; 8 uses
  %i.gzt = getelementptr inbounds nuw i8, ptr %i.gzs, i64 5
  %i.gzu = load i8, ptr %i.gzt, align 1, !tbaa !25 ; 2 uses
  %i.gzv = icmp eq i8 %i.gzu, 24
  br i1 %i.gzv, label %bb.arq, label %bb.ars

bb.arq:                                           ; preds = %bb.arp
  %i.gzw = getelementptr inbounds nuw i8, ptr %i.gzs, i64 8
  %i.gzx = load i64, ptr %i.gzw, align 8, !tbaa !25
  %i.gzy = inttoptr i64 %i.gzx to ptr             ; 2 uses
  %i.gzz = getelementptr inbounds nuw i8, ptr %i.gzy, i64 20
  %i.haa = load i32, ptr %i.gzz, align 4, !tbaa !164
  %i.hab = icmp eq i32 %i.haa, 1
  br i1 %i.hab, label %bb.arr, label %bb.arz

bb.arr:                                           ; preds = %bb.arq
  %i.hac = getelementptr inbounds nuw i8, ptr %i.gzy, i64 24
  %i.had = load i8, ptr %i.hac, align 4, !tbaa !25
  %i.hae = sext i8 %i.had to i32
  store i32 32765, ptr %i.lz, align 4, !tbaa !26
  br label %bb.arz

bb.ars:                                           ; preds = %bb.arp
  %i.haf = load i32, ptr %i.km, align 8, !tbaa !63
  %i.hag = icmp ult i32 %i.haf, %i.gzp
  br i1 %i.hag, label %bb.art, label %bb.arz

bb.art:                                           ; preds = %bb.ars
  %i.hah = getelementptr inbounds nuw i8, ptr %i.gzs, i64 6
  %i.hai = load i8, ptr %i.hah, align 2, !tbaa !25
  %.not.i393 = icmp sgt i8 %i.hai, -1
  br i1 %.not.i393, label %bb.arz, label %bb.aru

bb.aru:                                           ; preds = %bb.art
  switch i8 %i.gzu, label %bb.arz [
    i8 93, label %bb.arv
    i8 79, label %bb.ary
  ]

bb.arv:                                           ; preds = %bb.aru
  %i.haj = getelementptr inbounds nuw i8, ptr %i.gzs, i64 2
  %i.hak = load i16, ptr %i.haj, align 2, !tbaa !25 ; 2 uses
  %i.hal = icmp eq i16 %i.hak, 1
  br i1 %i.hal, label %bb.arw, label %bb.arx

bb.arw:                                           ; preds = %bb.arv
  store i32 32765, ptr %i.lz, align 4, !tbaa !26
  br label %bb.arz

bb.arx:                                           ; preds = %bb.arv
  %i.ham = load i16, ptr %i.gzs, align 8, !tbaa !25
  %i.han = zext i16 %i.ham to i32                 ; 2 uses
  store i32 %i.han, ptr %i.lz, align 4, !tbaa !26
  %i.hao = icmp eq i16 %i.hak, 0
  %..i394 = select i1 %i.hao, ptr getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 112), ptr getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 288)
  br label %bb.arz

bb.ary:                                           ; preds = %bb.aru
  %i.hap = load i16, ptr %i.gzs, align 8, !tbaa !25
  %i.haq = zext i16 %i.hap to i32                 ; 2 uses
  store i32 %i.haq, ptr %i.lz, align 4, !tbaa !26
  %i.har = getelementptr inbounds nuw i8, ptr %i.gzs, i64 2
  %i.has = load i16, ptr %i.har, align 2, !tbaa !25
  %i.hat = zext i16 %i.has to i32
  store i32 %i.hat, ptr %i.ma, align 4, !tbaa !26
  br label %bb.arz

bb.arz:                                           ; preds = %bb.ary, %bb.arx, %bb.arw, %bb.aru, %bb.art, %bb.ars, %bb.arr, %bb.arq
  %i.hau = phi i32 [ %i.gzp, %bb.ars ], [ 32765, %bb.arw ], [ %i.han, %bb.arx ], [ %i.gzp, %bb.arq ], [ %i.haq, %bb.ary ], [ %i.gzp, %bb.aru ], [ %i.gzp, %bb.art ], [ 32765, %bb.arr ]
  %.131.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 272), %bb.ars ], [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 128), %bb.arw ], [ %..i394, %bb.arx ], [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 272), %bb.arq ], [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 256), %bb.ary ], [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 272), %bb.aru ], [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 272), %bb.art ], [ getelementptr inbounds nuw (i8, ptr @lj_ir_callinfo, i64 288), %bb.arr ] ; 2 uses
  %.1.i384 = phi i32 [ -129, %bb.ars ], [ -129, %bb.arw ], [ -129, %bb.arx ], [ -129, %bb.arq ], [ -129, %bb.ary ], [ -129, %bb.aru ], [ -129, %bb.art ], [ %i.hae, %bb.arr ] ; 3 uses
  call fastcc void @asm_setupresult(ptr noundef nonnull %5, ptr noundef nonnull %i.anc, ptr noundef %.131.i)
  call fastcc void @asm_gencall(ptr noundef nonnull %5, ptr noundef %.131.i, ptr noundef %i.k)
  %i.hav = icmp eq i32 %i.hau, 32765
  br i1 %i.hav, label %bb.asa, label %asm_bufput.exit

bb.asa:                                           ; preds = %bb.arz
  %i.haw = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.hax = getelementptr inbounds nuw i8, ptr %i.haw, i64 262126 ; 2 uses
  %i.hay = load i8, ptr %i.hax, align 2, !tbaa !25 ; 5 uses
  %i.haz = zext i8 %i.hay to i32                  ; 4 uses
  %i.hba = shl nuw i32 1, %i.haz
  %i.hbb = load <2 x i32>, ptr %i.kn, align 8, !tbaa !26
  %i.hbc = insertelement <2 x i32> poison, i32 %i.hba, i64 0
  %i.hbd = shufflevector <2 x i32> %i.hbc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hbe = or <2 x i32> %i.hbd, %i.hbb
  store <2 x i32> %i.hbe, ptr %i.kn, align 8, !tbaa !26
  store i8 -1, ptr %i.hax, align 2, !tbaa !25
  %i.hbf = icmp eq i32 %.1.i384, -129
  br i1 %i.hbf, label %bb.asb, label %bb.asc

bb.asb:                                           ; preds = %bb.asa
  %i.hbg = load i16, ptr %i.gzs, align 8, !tbaa !25
  %i.hbh = zext i16 %i.hbg to i32
  call fastcc void @asm_tvptr(ptr noundef nonnull %5, i32 noundef %i.haz, i32 noundef %i.hbh, i32 noundef 1)
  br label %asm_bufput.exit

bb.asc:                                           ; preds = %bb.asa
  %i.hbi = icmp eq i32 %.1.i384, 0
  %i.hbj = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 8 uses
  br i1 %i.hbi, label %bb.asd, label %._crit_edge.i.i386

bb.asd:                                           ; preds = %bb.asc
  %i.hbk = load i8, ptr %i.hbj, align 1, !tbaa !25 ; 2 uses
  %i.hbl = icmp eq i8 %i.hbk, 15
  br i1 %i.hbl, label %bb.ase, label %bb.asf

bb.ase:                                           ; preds = %bb.asd
  %i.hbm = getelementptr inbounds nuw i8, ptr %i.hbj, i64 1
  %i.hbn = load i8, ptr %i.hbm, align 1, !tbaa !25
  %i.hbo = icmp slt i8 %i.hbn, -112
  br i1 %i.hbo, label %._crit_edge.i.i386, label %.thread.i.i389

bb.asf:                                           ; preds = %bb.asd
  %i.hbp = icmp sgt i8 %i.hbk, 111
  br i1 %i.hbp, label %._crit_edge.i.i386, label %.thread.i.i389

.thread.i.i389:                                   ; preds = %bb.asf, %bb.ase
  %i.hbq = shl i8 %i.hay, 3
  %i.hbr = and i8 %i.hay, 7
  %i.hbs = or disjoint i8 %i.hbr, %i.hbq
  %i.hbt = or i8 %i.hbs, -64
  %i.hbu = getelementptr inbounds i8, ptr %i.hbj, i64 -1
  store i8 %i.hbt, ptr %i.hbu, align 1, !tbaa !25
  %i.hbv = getelementptr i8, ptr %i.hbj, i64 -2   ; 2 uses
  store i8 51, ptr %i.hbv, align 1, !tbaa !25
  %i.hbw = lshr i32 %i.haz, 1
  %i.hbx = and i32 %i.hbw, 4
  %i.hby = lshr i32 %i.haz, 3
  %i.hbz = and i32 %i.hby, 1
  %i.hca = or disjoint i32 %i.hbz, %i.hbx         ; 2 uses
  %.not.i.i.i.i390 = icmp eq i32 %i.hca, 0
  br i1 %.not.i.i.i.i390, label %emit_rr.exit.i.i391, label %bb.asg

bb.asg:                                           ; preds = %.thread.i.i389
  %i.hcb = trunc nuw nsw i32 %i.hca to i8
  %i.hcc = or disjoint i8 %i.hcb, 64
  %i.hcd = getelementptr i8, ptr %i.hbj, i64 -3   ; 2 uses
  store i8 %i.hcc, ptr %i.hcd, align 1, !tbaa !25
  br label %emit_rr.exit.i.i391

emit_rr.exit.i.i391:                              ; preds = %bb.asg, %.thread.i.i389
  %.046.i.i.i.i392 = phi ptr [ %i.hbv, %.thread.i.i389 ], [ %i.hcd, %bb.asg ]
  store ptr %.046.i.i.i.i392, ptr %i.bw, align 16, !tbaa !52
  br label %asm_bufput.exit

._crit_edge.i.i386:                               ; preds = %bb.asf, %bb.ase, %bb.asc
  %i.hce = getelementptr inbounds i8, ptr %i.hbj, i64 -4
  store i32 %.1.i384, ptr %i.hce, align 4, !tbaa !26
  %i.hcf = and i8 %i.hay, 7
  %i.hcg = or disjoint i8 %i.hcf, -72
  %i.hch = getelementptr inbounds i8, ptr %i.hbj, i64 -5 ; 2 uses
  store i8 %i.hcg, ptr %i.hch, align 1, !tbaa !25
  %i.hci = and i8 %i.hay, 8
  %.not.i.i387 = icmp eq i8 %i.hci, 0
  br i1 %.not.i.i387, label %bb.asi, label %bb.ash

bb.ash:                                           ; preds = %._crit_edge.i.i386
  %i.hcj = getelementptr inbounds i8, ptr %i.hbj, i64 -6 ; 2 uses
  store i8 65, ptr %i.hcj, align 2, !tbaa !25
  br label %bb.asi

bb.asi:                                           ; preds = %bb.ash, %._crit_edge.i.i386
  %.0.i.i388 = phi ptr [ %i.hcj, %bb.ash ], [ %i.hch, %._crit_edge.i.i386 ]
end_hunk_1
begin_hunk_2_@asm_neg_not:bb.a
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !71
  %i.bf = or i32 %i.be, %.sink30.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !71
  %i.bg = trunc nuw i32 %.0.i to i8
  store i8 %i.bg, ptr %i.a, align 2, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.j ], [ %i.c, %bb.b ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25  ; 2 uses
  %.not23.i = icmp eq i8 %i.bi, 0
  br i1 %.not23.i, label %ra_dest.exit, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %1, i64 4
  %.val.i = load i8, ptr %i.bj, align 4, !tbaa !25
  tail call fastcc void @ra_save(ptr noundef nonnull %0, i8 %.val.i, i8 %i.bi, i32 noundef %.1.i)
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.k, %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !25
  %i.bm = and i8 %i.bl, 31
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bo, 6315993
  %.not = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not, i32 0, i32 524800      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52 ; 3 uses
  %i.bt = shl nuw nsw i32 %2, 3
  %i.bu = and i32 %.1.i, 7
  %i.bv = or disjoint i32 %i.bu, %i.bt
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.bw, -64
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 -1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !25
  %i.bz = getelementptr i8, ptr %i.bs, i64 -2     ; 2 uses
  store i8 -9, ptr %i.bz, align 1, !tbaa !25
  %i.ca = lshr exact i32 %i.bq, 1
  %i.cb = and i32 %i.ca, 256
  %i.cc = lshr i32 %.1.i, 3
  %i.cd = and i32 %i.cc, 1                        ; 2 uses
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %.not.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i, label %emit_rr.exit, label %bb.m

bb.m:                                             ; preds = %ra_dest.exit
  %i.cf = lshr i32 %i.bq, 16
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %i.ci = or disjoint i8 %i.ch, 64
  %i.cj = getelementptr i8, ptr %i.bs, i64 -3     ; 2 uses
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !25
  br label %emit_rr.exit

emit_rr.exit:                                     ; preds = %ra_dest.exit, %bb.m
  %.046.i.i = phi ptr [ %i.bz, %ra_dest.exit ], [ %i.cj, %bb.m ]
  store ptr %.046.i.i, ptr %i.br, align 8, !tbaa !52
  %i.ck = load i16, ptr %1, align 8, !tbaa !25
  %i.cl = zext i16 %i.ck to i32
  tail call fastcc void @ra_left(ptr noundef %0, i32 noundef %.1.i, i32 noundef %i.cl)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_intarith(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 9) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !25   ; 4 uses
  %i.e = zext i16 %i.d to i32                     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = icmp ne i32 %2, 8                        ; 2 uses
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.i, align 1, !tbaa !25
  %i.m = icmp ult i8 %i.l, -124
  %i.n = select i1 %i.m, i64 3, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !25
  %i.q = icmp eq i8 %i.p, 15
  %.idx = zext i1 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !25    ; 2 uses
  %i.t = and i8 %i.s, 15                          ; 2 uses
  %i.u = icmp samesign ult i8 %i.t, 14
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ugt i8 %i.t, 11
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add i8 %i.s, -4
  store i8 %i.w, ptr %i.r, align 1, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.f, align 8, !tbaa !60
  store ptr %i.o, ptr %i.h, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = zext i16 %i.d to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !25  ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %.not = icmp sgt i8 %i.ac, -1                   ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = xor i32 %i.ae, -1                       ; 2 uses
  %i.ag = and i32 %i.af, 49135
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !82
  %i.aj = and i32 %i.ai, %i.af
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.076 = phi i32 [ 49135, %bb.f ], [ %i.ag, %bb.g ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !25  ; 3 uses
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %.not.i = icmp sgt i8 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !83 ; 3 uses
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = shl nuw i32 1, %i.am                    ; 2 uses
  %i.aq = or i32 %i.ap, %i.ao
  store i32 %i.aq, ptr %i.an, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71
  %i.at = or i32 %i.as, %i.ap
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !71
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.au = icmp samesign ult i8 %i.al, -3
  br i1 %i.au, label %bb.k, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.j
  %.pre120 = and i32 %i.ao, %.076
  br label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.av = and i32 %i.am, 127                      ; 2 uses
  %i.aw = shl nuw i32 1, %i.av                    ; 2 uses
  %i.ax = and i32 %i.ao, %.076                    ; 2 uses
  %i.ay = and i32 %i.ax, %i.aw
  %.not22.i = icmp eq i32 %i.ay, 0
  br i1 %.not22.i, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.k
  %.pre-phi = phi i32 [ %.pre120, %.._crit_edge.i_crit_edge ], [ %i.ax, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.az = tail call fastcc i32 @ra_evict(ptr noundef nonnull %0, i32 noundef %.076)
  br label %ra_scratch.exit.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.ba = tail call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.pre-phi)
  %i.bb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ba, i1 true)
  %i.bc = xor i32 %i.bb, 7
  br label %ra_scratch.exit.i

ra_scratch.exit.i:                                ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i32 [ %i.bc, %bb.m ], [ %i.az, %bb.l ] ; 2 uses
  %i.bd = shl nuw i32 1, %.0.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %ra_scratch.exit.i, %bb.k
  %.sink30.i = phi i32 [ %i.bd, %ra_scratch.exit.i ], [ %i.aw, %bb.k ]
  %.0.i = phi i32 [ %.0.i.i.i, %ra_scratch.exit.i ], [ %i.av, %bb.k ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !71
  %i.bg = or i32 %i.bf, %.sink30.i
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !71
  %i.bh = trunc nuw i32 %.0.i to i8
  store i8 %i.bh, ptr %i.ak, align 2, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.1.i = phi i32 [ %.0.i, %bb.n ], [ %i.am, %bb.i ] ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25  ; 2 uses
  %.not23.i = icmp eq i8 %i.bj, 0
  br i1 %.not23.i, label %ra_dest.exit, label %bb.p, !prof !39

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %1, i64 4
  %.val.i = load i8, ptr %i.bk, align 4, !tbaa !25
  tail call fastcc void @ra_save(ptr noundef nonnull %0, i8 %.val.i, i8 %i.bj, i32 noundef %.1.i)
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.o, %bb.p
  %i.bl = icmp eq i16 %i.a, %i.d                  ; 2 uses
  %brmerge = or i1 %i.bl, %.not
  %.mux = select i1 %i.bl, i32 %.1.i, i32 %i.ad
  br i1 %brmerge, label %asm_isk32.exit, label %bb.q

bb.q:                                             ; preds = %ra_dest.exit
  %i.bm = icmp sgt i16 %i.d, -1
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !57  ; 4 uses
  br i1 %i.bm, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.z ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25
  %i.bq = icmp eq i8 %i.bp, 27
  br i1 %i.bq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !25
  %i.bt = and i8 %i.bs, 31
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = and i32 %i.bv, 6315993
  %.not.i96 = icmp eq i32 %i.bw, 0
  br i1 %.not.i96, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bx = load i32, ptr %i.bn, align 8, !tbaa !25
  br label %asm_isk32.exit

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  %i.ca = add i64 %i.bz, 2147483648
  %i.cb = icmp ult i64 %i.ca, 4294967296
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = trunc nsw i64 %i.bz to i32
  br label %asm_isk32.exit

bb.w:                                             ; preds = %bb.q, %bb.u
  %i.cd = load i16, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ce ; 3 uses
  %i.cg = load i16, ptr %i.c, align 2, !tbaa !25  ; 3 uses
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !25
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @lj_ir_mode, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !25
  %i.co = and i8 %i.cn, 16
  %.not.i97 = icmp eq i8 %i.co, 0
  br i1 %.not.i97, label %.thread140, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = zext i16 %i.cg to i32
  %i.cq = icmp sgt i16 %i.cg, -1
  br i1 %i.cq, label %.thread140, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !25
  %.not27.i = icmp sgt i8 %i.cs, -1
  br i1 %.not27.i, label %.thread140, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load i8, ptr %i.ak, align 2, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 6
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !25
  %i.cw = xor i8 %i.cv, %i.ct
  %i.cx = and i8 %i.cw, 127
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %.thread140, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !58
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !48 ; 3 uses
  %i.dd = icmp ugt i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.ab, label %asm_swapops.exit

bb.ab:                                            ; preds = %bb.aa
  %i.de = icmp ugt i32 %i.dc, %i.cp
  br i1 %i.de, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.dg = load i8, ptr %i.df, align 4, !tbaa !25
  %i.dh = and i8 %i.dg, 64
  %.not28.i = icmp eq i8 %i.dh, 0
  br i1 %.not28.i, label %.thread140, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.di = zext i16 %i.cd to i32
  %i.dj = icmp ugt i32 %i.dc, %i.di
  br i1 %i.dj, label %bb.ae, label %asm_swapops.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !25
  %i.dm = and i8 %i.dl, 64
  %.not29.i = icmp eq i8 %i.dm, 0
  br i1 %.not29.i, label %.thread140, label %asm_swapops.exit

asm_swapops.exit:                                 ; preds = %bb.aa, %bb.ad, %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 5
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25
  %.fr146 = freeze i8 %i.do
  %i.dp = add i8 %.fr146, -73
  %switch.i = icmp ult i8 %i.dp, -7               ; 2 uses
  %spec.select = select i1 %switch.i, i32 %i.e, i32 %i.b
  %spec.select147 = select i1 %switch.i, i32 %i.b, i32 %i.e
  br label %.thread140

.thread140:                                       ; preds = %asm_swapops.exit, %bb.x, %bb.ac, %bb.w, %bb.z, %bb.y, %bb.ae
  %i.dq = phi i32 [ %i.b, %bb.y ], [ %spec.select, %asm_swapops.exit ], [ %i.b, %bb.z ], [ %i.b, %bb.ae ], [ %i.e, %bb.w ], [ %i.e, %bb.x ], [ %i.e, %bb.ac ] ; 3 uses
  %i.dr = phi i32 [ %i.e, %bb.y ], [ %spec.select147, %asm_swapops.exit ], [ %i.e, %bb.z ], [ %i.e, %bb.ae ], [ %i.b, %bb.w ], [ %i.b, %bb.x ], [ %i.b, %bb.ac ] ; 2 uses
  %i.ds = shl nuw i32 1, %.1.i
  %i.dt = xor i32 %i.ds, -1
  %i.du = and i32 %.076, %i.dt                    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !25
  %i.dx = and i8 %i.dw, 31
  %i.dy = zext nneg i8 %i.dx to i32
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dz, 6315993
  %.not.i99 = icmp eq i32 %i.ea, 0
  br i1 %.not.i99, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.thread140
  %i.eb = zext nneg i32 %i.dq to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !25
  %i.ef = and i8 %i.ee, 31
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw i32 1, %i.eg
  %i.ei = and i32 %i.eh, 6315993
  %.not9.i = icmp eq i32 %i.ei, 0
  br i1 %.not9.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 6
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !25  ; 2 uses
  %i.el = zext nneg i8 %i.ek to i32
  %.not.i.i = icmp sgt i8 %i.ek, -1
  br i1 %.not.i.i, label %ra_alloc1.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %i.dq, i32 noundef range(i32 0, 49136) %i.du)
  br label %ra_alloc1.exit.i

ra_alloc1.exit.i:                                 ; preds = %bb.ah, %bb.ag
  %.0.i.i = phi i32 [ %i.em, %bb.ah ], [ %i.el, %bb.ag ] ; 2 uses
  %i.en = shl nuw i32 1, %.0.i.i
  %i.eo = xor i32 %i.en, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !82
  %i.er = and i32 %i.eq, %i.eo
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !82
  br label %asm_isk32.exit

bb.ai:                                            ; preds = %bb.af, %.thread140
  %i.es = tail call fastcc i32 @asm_fuseload(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %i.dq, i32 noundef range(i32 0, 49136) %i.du)
  br label %asm_isk32.exit

asm_isk32.exit:                                   ; preds = %bb.ai, %ra_alloc1.exit.i, %bb.v, %bb.t, %ra_dest.exit
  %.0114 = phi i32 [ 0, %ra_dest.exit ], [ %i.bx, %bb.t ], [ %i.cc, %bb.v ], [ 0, %ra_alloc1.exit.i ], [ 0, %bb.ai ] ; 6 uses
  %.075 = phi i32 [ %.mux, %ra_dest.exit ], [ %i.ad, %bb.t ], [ %i.ad, %bb.v ], [ %.0.i.i, %ra_alloc1.exit.i ], [ %i.es, %bb.ai ] ; 3 uses
  %.1 = phi i32 [ %i.b, %ra_dest.exit ], [ %i.b, %bb.t ], [ %i.b, %bb.v ], [ %i.dr, %ra_alloc1.exit.i ], [ %i.dr, %bb.ai ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !25
  %.not87 = icmp sgt i8 %i.eu, -1
  br i1 %.not87, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %asm_isk32.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1696
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !66 ; 2 uses
  %i.fa = lshr i32 %i.ez, 5
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !24
  %i.fe = shl i32 %i.ez, 2
  %i.ff = and i32 %i.fe, 124
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fg ; 2 uses
  %i.fi = load ptr, ptr %i.h, align 8, !tbaa !52  ; 8 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !59
  %i.fl = icmp eq ptr %i.fi, %i.fk
  br i1 %i.fl, label %bb.ak, label %bb.an, !prof !80

bb.ak:                                            ; preds = %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.fm, align 4, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 5
  %i.fo = ptrtoint ptr %i.fh to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !26
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !49
  %.not.i103 = icmp eq ptr %i.fu, null
  br i1 %.not.i103, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !56
  %i.fx = icmp eq i8 %i.fw, 37
  br i1 %i.fx, label %bb.am, label %asm_guardcc.exit, !prof !80

bb.am:                                            ; preds = %bb.al
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !86
  %i.ga = add nsw i32 %i.fz, 2
  store i32 %i.ga, ptr %i.fy, align 8, !tbaa !86
  br label %asm_guardcc.exit

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %.022.i = phi i8 [ -127, %bb.ak ], [ -128, %bb.aj ]
  %.0.i101 = phi ptr [ %i.fi, %bb.ak ], [ %i.fh, %bb.aj ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.gc = load i8, ptr %i.gb, align 4, !tbaa !56
  %i.gd = icmp eq i8 %i.gc, 37
  br i1 %i.gd, label %bb.ao, label %bb.ap, !prof !80

bb.ao:                                            ; preds = %bb.an
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !86
  %i.gg = add nsw i32 %i.gf, 6
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !86
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gh = ptrtoint ptr %.0.i101 to i64
  %i.gi = ptrtoint ptr %i.fi to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = getelementptr inbounds i8, ptr %i.fi, i64 -4
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !26
  br label %asm_guardcc.exit

asm_guardcc.exit:                                 ; preds = %bb.al, %bb.am, %bb.ap
  %.sink145 = phi i64 [ -5, %bb.ap ], [ -1, %bb.am ], [ -1, %bb.al ]
  %.sink = phi i8 [ %.022.i, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.al ]
  %.sink26.i = phi i64 [ -6, %bb.ap ], [ -2, %bb.am ], [ -2, %bb.al ]
  %.sink.i102 = phi i8 [ 15, %bb.ap ], [ 113, %bb.am ], [ 113, %bb.al ]
  %i.gm = getelementptr inbounds i8, ptr %i.fi, i64 %.sink145
  store i8 %.sink, ptr %i.gm, align 1, !tbaa !25
  %i.gn = getelementptr inbounds i8, ptr %i.fi, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i102, ptr %i.gn, align 1, !tbaa !25
  store ptr %i.gn, ptr %i.h, align 8, !tbaa !52
  br label %bb.aq

bb.aq:                                            ; preds = %asm_guardcc.exit, %asm_isk32.exit
  %i.go = and i32 %.075, 128
  %.not91 = icmp eq i32 %i.go, 0                  ; 2 uses
  br i1 %i.k, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not91, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gp = shl nuw nsw i32 %2, 27
  %i.gq = or disjoint i32 %i.gp, 50331902
  %i.gr = load i8, ptr %i.et, align 4, !tbaa !25
  %i.gs = and i8 %i.gr, 31
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = and i32 %i.gu, 6315993
  %.not92 = icmp eq i32 %i.gv, 0
  %i.gw = select i1 %.not92, i32 0, i32 524800
  %i.gx = or disjoint i32 %i.gw, %.1.i
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef %i.gq, i32 noundef %i.gx, i32 noundef %.075)
  br label %bb.bi

bb.at:                                            ; preds = %bb.ar
  %i.gy = load i8, ptr %i.et, align 4, !tbaa !25
  %i.gz = and i8 %i.gy, 31
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = shl nuw i32 1, %i.ha
  %i.hc = and i32 %i.hb, 6315993
  %.not93 = icmp eq i32 %i.hc, 0
  %i.hd = select i1 %.not93, i32 0, i32 524800    ; 2 uses
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %i.hf = add i32 %.0114, 128
  %i.hg = icmp ult i32 %i.hf, 256
  br i1 %i.hg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hh = trunc nsw i32 %.0114 to i8
  %i.hi = getelementptr inbounds i8, ptr %i.he, i64 -1 ; 2 uses
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !25
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hj = getelementptr inbounds i8, ptr %i.he, i64 -4 ; 2 uses
  store i32 %.0114, ptr %i.hj, align 4, !tbaa !26
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.019.i = phi ptr [ %i.hi, %bb.au ], [ %i.hj, %bb.av ] ; 4 uses
  %.0.i104 = phi i32 [ -2097151746, %bb.au ], [ -2130706178, %bb.av ]
  %i.hk = shl nuw nsw i32 %2, 3
  %i.hl = and i32 %.1.i, 7
  %i.hm = or disjoint i32 %i.hl, %i.hk
  %i.hn = trunc nuw nsw i32 %i.hm to i8
  %i.ho = or disjoint i8 %i.hn, -64
  %i.hp = getelementptr inbounds i8, ptr %.019.i, i64 -1
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !25
  %i.hq = getelementptr inbounds i8, ptr %.019.i, i64 -5
  store i32 %.0.i104, ptr %i.hq, align 4, !tbaa !26
  %i.hr = getelementptr inbounds i8, ptr %.019.i, i64 -2
  %i.hs = lshr exact i32 %i.hd, 1
  %i.ht = and i32 %i.hs, 256
  %i.hu = lshr i32 %.1.i, 3
  %i.hv = and i32 %i.hu, 1                        ; 2 uses
  %i.hw = or disjoint i32 %i.ht, %i.hv
  %.not.i.i105 = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i105, label %emit_gri.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hx = lshr i32 %i.hd, 16
  %i.hy = or disjoint i32 %i.hx, %i.hv
  %i.hz = trunc nuw nsw i32 %i.hy to i8
  %i.ia = or disjoint i8 %i.hz, 64
  %i.ib = getelementptr inbounds i8, ptr %.019.i, i64 -3 ; 2 uses
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !25
  br label %emit_gri.exit

emit_gri.exit:                                    ; preds = %bb.aw, %bb.ax
  %.046.i.i = phi ptr [ %i.hr, %bb.aw ], [ %i.ib, %bb.ax ]
  store ptr %.046.i.i, ptr %i.h, align 8, !tbaa !52
  br label %bb.bi

bb.ay:                                            ; preds = %bb.aq
  %i.ic = load i8, ptr %i.et, align 4, !tbaa !25
  %i.id = and i8 %i.ic, 31
  %i.ie = zext nneg i8 %i.id to i32
  %i.if = shl nuw i32 1, %i.ie
  %i.ig = and i32 %i.if, 6315993
  %.not89 = icmp eq i32 %i.ig, 0                  ; 2 uses
  br i1 %.not91, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ih = select i1 %.not89, i32 0, i32 524800
  %i.ii = or disjoint i32 %i.ih, %.1.i
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef -1357971203, i32 noundef %i.ii, i32 noundef %.075)
  br label %bb.bi

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not89, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ij = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.ik = zext nneg i32 %.1 to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i8, ptr %i.im, align 4, !tbaa !25
  %i.io = and i8 %i.in, 31
  %i.ip = zext nneg i8 %i.io to i32
  %i.iq = shl nuw i32 1, %i.ip
  %i.ir = and i32 %i.iq, 6315993
  %.not9.i107 = icmp eq i32 %i.ir, 0
  br i1 %.not9.i107, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  %i.it = load i8, ptr %i.is, align 2, !tbaa !25  ; 2 uses
  %i.iu = zext nneg i8 %i.it to i32
  %.not.i.i109 = icmp sgt i8 %i.it, -1
  br i1 %.not.i.i109, label %ra_alloc1.exit.i110, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iv = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.1, i32 noundef 49135)
  br label %ra_alloc1.exit.i110

ra_alloc1.exit.i110:                              ; preds = %bb.bd, %bb.bc
  %.0.i.i111 = phi i32 [ %i.iv, %bb.bd ], [ %i.iu, %bb.bc ] ; 2 uses
  %i.iw = shl nuw i32 1, %.0.i.i111
  %i.ix = xor i32 %i.iw, -1
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !82
  %i.ja = and i32 %i.iz, %i.ix
  store i32 %i.ja, ptr %i.iy, align 8, !tbaa !82
  br label %asm_fuseloadm.exit112

bb.be:                                            ; preds = %bb.bb, %bb.ba
  %i.jb = tail call fastcc i32 @asm_fuseload(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.1, i32 noundef 49135)
  br label %asm_fuseloadm.exit112

asm_fuseloadm.exit112:                            ; preds = %ra_alloc1.exit.i110, %bb.be
  %.0.i108 = phi i32 [ %i.jb, %bb.be ], [ %.0.i.i111, %ra_alloc1.exit.i110 ]
  %i.jc = add i32 %.0114, 128
  %i.jd = icmp ult i32 %i.jc, 256
  br i1 %i.jd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %asm_fuseloadm.exit112
  %i.je = trunc nsw i32 %.0114 to i8
  %i.jf = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -1 ; 2 uses
  store ptr %i.jg, ptr %i.h, align 8, !tbaa !52
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !25
  br label %bb.bh

bb.bg:                                            ; preds = %asm_fuseloadm.exit112
  %i.jh = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -4 ; 2 uses
  store i32 %.0114, ptr %i.ji, align 4, !tbaa !26
  store ptr %i.ji, ptr %i.h, align 8, !tbaa !52
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0 = phi i32 [ 1795162366, %bb.bf ], [ 1761607934, %bb.bg ]
  %i.jj = load i8, ptr %i.et, align 4, !tbaa !25
  %i.jk = and i8 %i.jj, 31
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = shl nuw i32 1, %i.jl
  %i.jn = and i32 %i.jm, 6315993
  %.not90 = icmp eq i32 %i.jn, 0
  %i.jo = select i1 %.not90, i32 0, i32 524800
  %i.jp = or disjoint i32 %i.jo, %.1.i
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef %.0, i32 noundef %i.jp, i32 noundef %.0.i108)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.as, %emit_gri.exit, %bb.az
  tail call fastcc void @ra_left(ptr noundef %0, i32 noundef %.1.i, i32 noundef %.1)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_bitshift(ptr nofree noundef nonnull %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 8) %2, i32 noundef range(i32 -143007036, 1) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !25   ; 3 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = zext i16 %i.b to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = icmp sgt i16 %i.b, -1
  br i1 %i.h, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !25    ; 3 uses
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %.not.i = icmp sgt i8 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !83   ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw i32 1, %i.k                      ; 2 uses
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %i.l, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !71
  %i.r = or i32 %i.q, %i.n
  store i32 %i.r, ptr %i.p, align 4, !tbaa !71
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i8 %i.j, -3
  br i1 %i.s, label %bb.e, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.d
  %.pre193 = and i32 %i.m, 49135
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.k, 127                        ; 2 uses
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = and i32 %i.m, 49135                      ; 2 uses
  %i.w = and i32 %i.v, %i.u
  %.not22.i = icmp eq i32 %i.w, 0
  br i1 %.not22.i, label %._crit_edge.i, label %bb.k

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre193, %.._crit_edge.i_crit_edge ], [ %i.v, %bb.e ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.z = load <4 x i32>, ptr %0, align 8, !tbaa !26
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.ab = load <4 x i32>, ptr %i.x, align 4, !tbaa !26
  %i.ac = load <4 x i32>, ptr %i.y, align 4, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = shufflevector <4 x i32> %i.ac, <4 x i32> %i.aa, <12 x i32> <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <12 x i32> %i.ah, <12 x i32> %i.ai, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.ak = tail call i32 @llvm.vector.reduce.umin.v12i32(<12 x i32> %i.aj)
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ae)
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.ag)
  %i.an = and i32 %i.am, 65535                    ; 5 uses
  %i.ao = icmp samesign ult i32 %i.an, 32768
  br i1 %i.ao, label %ra_evict.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !82 ; 2 uses
  %i.ar = and i32 %i.aq, 49135                    ; 2 uses
  %.not200.i = icmp eq i32 %i.ar, 0
  br i1 %.not200.i, label %ra_evict.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = zext nneg i32 %i.an to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.av = load i8, ptr %i.au, align 2, !tbaa !25
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %i.aq
  %.not201.i = icmp eq i32 %i.ay, 0
  br i1 %.not201.i, label %bb.i, label %ra_evict.exit
end_hunk_2
begin_hunk_3_@asm_href:bb.a
  %i.by = zext i16 %i.bs to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !25  ; 2 uses
  %i.cc = zext nneg i8 %i.cb to i32
  %.not.i184 = icmp sgt i8 %i.cb, -1
  br i1 %.not.i184, label %ra_alloc1.exit, label %bb.m

bb.m:                                             ; preds = %ra_dest.exit
  %i.cd = zext i16 %i.bs to i32
  %i.ce = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %i.bv)
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !57
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %ra_dest.exit, %bb.m
  %i.cf = phi ptr [ %.pre, %bb.m ], [ %i.bx, %ra_dest.exit ]
  %.0.i185 = phi i32 [ %i.ce, %bb.m ], [ %i.cc, %ra_dest.exit ] ; 23 uses
  %i.cg = shl nuw i32 1, %.0.i185
  %i.ch = xor i32 %i.cg, -1                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !82
  %i.ck = and i32 %i.cj, %i.ch                    ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !25 ; 3 uses
  %i.cn = zext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cn ; 9 uses
  %i.cp = icmp slt i16 %i.cm, 0                   ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 3 uses
  %.sroa.07.0.copyload = load i8, ptr %i.cq, align 4, !tbaa !25 ; 2 uses
  br i1 %i.cp, label %bb.n, label %bb.r

bb.n:                                             ; preds = %ra_alloc1.exit
  %i.cr = and i32 %i.bv, %i.ch                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !25  ; 2 uses
  %i.cu = zext nneg i8 %i.ct to i32
  %.not.i186 = icmp sgt i8 %i.ct, -1
  br i1 %.not.i186, label %ra_alloc1.exit188, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = zext i16 %i.cm to i32
  %i.cw = and i8 %.sroa.07.0.copyload, 31
  %i.cx = icmp eq i8 %i.cw, 14
  %i.cy = select i1 %i.cx, i32 -65536, i32 %i.cr
  %i.cz = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %i.cy)
  %.pre422 = load i32, ptr %i.ci, align 8, !tbaa !82
  br label %ra_alloc1.exit188

ra_alloc1.exit188:                                ; preds = %bb.n, %bb.o
  %i.da = phi i32 [ %.pre422, %bb.o ], [ %i.ck, %bb.n ]
  %.0.i187 = phi i32 [ %i.cz, %bb.o ], [ %i.cu, %bb.n ] ; 2 uses
  %i.db = shl nuw i32 1, %.0.i187
  %i.dc = xor i32 %i.db, -1                       ; 2 uses
  %i.dd = and i32 %i.da, %i.dc
  store i32 %i.dd, ptr %i.ci, align 8, !tbaa !82
  %i.de = and i32 %i.cr, %i.dc                    ; 2 uses
  %i.df = load i32, ptr %i.bn, align 8, !tbaa !83
  %i.dg = and i32 %i.df, %i.de                    ; 2 uses
  %.not.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ra_alloc1.exit188
  %i.dh = tail call fastcc i32 @ra_evict(ptr noundef nonnull %0, i32 noundef %i.de)
  br label %ra_scratch.exit

bb.q:                                             ; preds = %ra_alloc1.exit188
  %i.di = tail call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.dg)
  %i.dj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.di, i1 true)
  %i.dk = xor i32 %i.dj, 7
  br label %ra_scratch.exit

ra_scratch.exit:                                  ; preds = %bb.p, %bb.q
  %.0.i.i = phi i32 [ %i.dk, %bb.q ], [ %i.dh, %bb.p ] ; 2 uses
  %i.dl = shl nuw i32 1, %.0.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !71
  %i.do = or i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !71
  br label %bb.r

bb.r:                                             ; preds = %ra_scratch.exit, %ra_alloc1.exit
  %.0176 = phi i32 [ 128, %ra_alloc1.exit ], [ %.0.i187, %ra_scratch.exit ] ; 14 uses
  %.0 = phi i32 [ 128, %ra_alloc1.exit ], [ %.0.i.i, %ra_scratch.exit ] ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 47 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 10 uses
  %i.dr = icmp eq i32 %2, 9
  br i1 %i.dr, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !44
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1696
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !66 ; 2 uses
  %i.dx = lshr i32 %i.dw, 5
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !24
  %i.eb = shl i32 %i.dw, 2
  %i.ec = and i32 %i.eb, 124
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !59
  %i.eh = icmp eq ptr %i.dq, %i.eg
  br i1 %i.eh, label %bb.t, label %bb.w, !prof !80

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.ei, align 4, !tbaa !50
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 5
  %i.ek = ptrtoint ptr %i.ee to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !26
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !49
  %.not.i190 = icmp eq ptr %i.eq, null
  br i1 %.not.i190, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.es = load i8, ptr %i.er, align 4, !tbaa !56
  %i.et = icmp eq i8 %i.es, 37
  br i1 %i.et, label %bb.v, label %asm_guardcc.exit, !prof !80

bb.v:                                             ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !86
  %i.ew = add nsw i32 %i.ev, 2
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !86
  br label %asm_guardcc.exit

bb.w:                                             ; preds = %bb.t, %bb.s
  %.022.i = phi i8 [ -123, %bb.t ], [ -124, %bb.s ]
  %.0.i189 = phi ptr [ %i.dq, %bb.t ], [ %i.ee, %bb.s ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !56
  %i.ez = icmp eq i8 %i.ey, 37
  br i1 %i.ez, label %bb.x, label %bb.y, !prof !80

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !86
  %i.fc = add nsw i32 %i.fb, 6
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !86
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fd = ptrtoint ptr %.0.i189 to i64
  %i.fe = ptrtoint ptr %i.dq to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !26
  br label %asm_guardcc.exit

asm_guardcc.exit:                                 ; preds = %bb.u, %bb.v, %bb.y
  %.sink452 = phi i64 [ -5, %bb.y ], [ -1, %bb.v ], [ -1, %bb.u ]
  %.sink = phi i8 [ %.022.i, %bb.y ], [ 0, %bb.v ], [ 0, %bb.u ]
  %.sink26.i = phi i64 [ -6, %bb.y ], [ -2, %bb.v ], [ -2, %bb.u ]
  %.sink.i = phi i8 [ 15, %bb.y ], [ 117, %bb.v ], [ 117, %bb.u ]
  %i.fi = getelementptr inbounds i8, ptr %i.dq, i64 %.sink452
  store i8 %.sink, ptr %i.fi, align 1, !tbaa !25
  %i.fj = getelementptr inbounds i8, ptr %i.dq, i64 %.sink26.i ; 3 uses
  store i8 %.sink.i, ptr %i.fj, align 1, !tbaa !25
  store ptr %i.fj, ptr %i.dp, align 8, !tbaa !52
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !44
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -496
  %i.fn = ptrtoint ptr %i.fm to i64
  tail call fastcc void @emit_loadu64(ptr noundef %0, i32 noundef %.1.i, i64 noundef %i.fn)
  %.pre423 = load ptr, ptr %i.dp, align 8, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %asm_guardcc.exit
  %i.fo = phi ptr [ %i.dq, %bb.z ], [ %.pre423, %bb.aa ], [ %i.fj, %asm_guardcc.exit ] ; 12 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -1 ; 3 uses
  store i8 0, ptr %i.fp, align 1, !tbaa !25
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 -2
  store i8 117, ptr %i.fq, align 1, !tbaa !25
  %i.fr = shl nuw nsw i32 %.1.i, 3                ; 3 uses
  %i.fs = and i32 %.1.i, 7                        ; 16 uses
  %i.ft = or disjoint i32 %i.fr, %i.fs
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = or i8 %i.fu, -64
  %i.fw = getelementptr inbounds i8, ptr %i.fo, i64 -3
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !25
  %i.fx = getelementptr i8, ptr %i.fo, i64 -4
  store i8 -123, ptr %i.fx, align 1, !tbaa !25
  %i.fy = lshr i32 %.1.i, 1
  %i.fz = and i32 %i.fy, 4                        ; 5 uses
  %i.ga = lshr i32 %.1.i, 3
  %i.gb = and i32 %i.ga, 1                        ; 8 uses
  %i.gc = or disjoint i32 %i.fz, %i.gb
  %i.gd = trunc nuw nsw i32 %i.gc to i8
  %i.ge = or disjoint i8 %i.gd, 72
  %i.gf = getelementptr i8, ptr %i.fo, i64 -5
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !25
  %.not.i193 = icmp samesign ult i32 %.1.i, 128   ; 9 uses
  br i1 %.not.i193, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gg = icmp eq i32 %.1.i, 37
  br i1 %i.gg, label %.thread.i, label %bb.ad

.thread.i:                                        ; preds = %bb.ac
  %i.gh = getelementptr i8, ptr %i.fo, i64 -9     ; 2 uses
  store i32 16, ptr %i.gh, align 4, !tbaa !26
  br label %emit_rmro.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gi = getelementptr i8, ptr %i.fo, i64 -6     ; 2 uses
  store i8 16, ptr %i.gi, align 1, !tbaa !25
  %i.gj = icmp eq i32 %i.fs, 4
  br i1 %i.gj, label %bb.ae, label %emit_rmro.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gk = getelementptr i8, ptr %i.fo, i64 -7     ; 2 uses
  store i8 36, ptr %i.gk, align 1, !tbaa !25
  br label %emit_rmro.exit

bb.af:                                            ; preds = %bb.ab
  %i.gl = getelementptr i8, ptr %i.fo, i64 -9
  store i32 16, ptr %i.gl, align 4, !tbaa !26
  %i.gm = getelementptr i8, ptr %i.fo, i64 -10    ; 2 uses
  store i8 37, ptr %i.gm, align 1, !tbaa !25
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %.thread.i, %bb.ad, %bb.ae, %bb.af
  %.031.i = phi i32 [ 4, %bb.af ], [ %.1.i, %bb.ae ], [ %.1.i, %bb.ad ], [ 37, %.thread.i ] ; 2 uses
  %.130.i = phi ptr [ %i.gm, %bb.af ], [ %i.gk, %bb.ae ], [ %i.gi, %bb.ad ], [ %i.gh, %.thread.i ] ; 8 uses
  %.1.i194 = phi i32 [ 0, %bb.af ], [ 64, %bb.ae ], [ 64, %bb.ad ], [ 0, %.thread.i ]
  %i.gn = and i32 %i.fr, 56                       ; 3 uses
  %i.go = and i32 %.031.i, 7
  %i.gp = or disjoint i32 %i.go, %.1.i194
  %i.gq = or disjoint i32 %i.gp, %i.gn
  %i.gr = trunc nuw nsw i32 %i.gq to i8
  %i.gs = getelementptr inbounds i8, ptr %.130.i, i64 -1
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !25
  %i.gt = getelementptr i8, ptr %.130.i, i64 -2   ; 2 uses
  store i8 -117, ptr %i.gt, align 1, !tbaa !25
  %i.gu = lshr i32 %.031.i, 3
  %i.gv = and i32 %i.gu, 1
  %i.gw = or disjoint i32 %i.gv, %i.fz
  %i.gx = trunc nuw nsw i32 %i.gw to i8
  %i.gy = or disjoint i8 %i.gx, 72
  %i.gz = getelementptr i8, ptr %.130.i, i64 -3   ; 10 uses
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !25
  store ptr %i.gz, ptr %i.dp, align 8, !tbaa !52
  %i.ha = icmp eq i32 %2, 8
  br i1 %i.ha, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %emit_rmro.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1696
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !66 ; 2 uses
  %i.hg = lshr i32 %i.hf, 5
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !24
  %i.hk = shl i32 %i.hf, 2
  %i.hl = and i32 %i.hk, 124
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !59
  %i.hq = icmp eq ptr %i.gz, %i.hp
  br i1 %i.hq, label %bb.ah, label %bb.ak, !prof !80

bb.ah:                                            ; preds = %bb.ag
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.hr, align 4, !tbaa !50
  %i.hs = getelementptr i8, ptr %.130.i, i64 2
  %i.ht = ptrtoint ptr %i.hn to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = trunc i64 %i.hv to i32
  store i32 %i.hw, ptr %i.gt, align 4, !tbaa !26
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !49
  %.not.i202 = icmp eq ptr %i.hy, null
  br i1 %.not.i202, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !56
  %i.ib = icmp eq i8 %i.ia, 37
  br i1 %i.ib, label %bb.aj, label %asm_guardcc.exit203, !prof !80

bb.aj:                                            ; preds = %bb.ai
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !86
  %i.ie = add nsw i32 %i.id, 2
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !86
  br label %asm_guardcc.exit203

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %.022.i198 = phi i8 [ -123, %bb.ah ], [ -124, %bb.ag ]
  %.0.i199 = phi ptr [ %i.gz, %bb.ah ], [ %i.hn, %bb.ag ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ig = load i8, ptr %i.if, align 4, !tbaa !56
  %i.ih = icmp eq i8 %i.ig, 37
  br i1 %i.ih, label %bb.al, label %bb.am, !prof !80

bb.al:                                            ; preds = %bb.ak
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !86
  %i.ik = add nsw i32 %i.ij, 6
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !86
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.il = ptrtoint ptr %.0.i199 to i64
  %i.im = ptrtoint ptr %i.gz to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i32
  %i.ip = getelementptr i8, ptr %.130.i, i64 -7
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !26
  br label %asm_guardcc.exit203

asm_guardcc.exit203:                              ; preds = %bb.ai, %bb.aj, %bb.am
  %.sink455 = phi i64 [ -8, %bb.am ], [ -4, %bb.aj ], [ -4, %bb.ai ]
  %.sink453 = phi i8 [ %.022.i198, %bb.am ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %.sink26.i200 = phi i64 [ -6, %bb.am ], [ -2, %bb.aj ], [ -2, %bb.ai ]
  %.sink.i201 = phi i8 [ 15, %bb.am ], [ 117, %bb.aj ], [ 117, %bb.ai ]
  %i.iq = getelementptr i8, ptr %.130.i, i64 %.sink455
  store i8 %.sink453, ptr %i.iq, align 1, !tbaa !25
  %i.ir = getelementptr inbounds i8, ptr %i.gz, i64 %.sink26.i200 ; 2 uses
  store i8 %.sink.i201, ptr %i.ir, align 1, !tbaa !25
  br label %bb.ao

bb.an:                                            ; preds = %emit_rmro.exit
  %i.is = ptrtoint ptr %i.dq to i64
  %i.it = ptrtoint ptr %i.gz to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = trunc i64 %i.iu to i8
  %i.iw = getelementptr i8, ptr %.130.i, i64 -4
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !25
  %i.ix = getelementptr i8, ptr %.130.i, i64 -5   ; 2 uses
  store i8 116, ptr %i.ix, align 1, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %asm_guardcc.exit203
  %storemerge = phi ptr [ %i.ix, %bb.an ], [ %i.ir, %asm_guardcc.exit203 ] ; 25 uses
  store ptr %storemerge, ptr %i.dp, align 8, !tbaa !52
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !54
  %i.ja = icmp ult ptr %storemerge, %i.iz
  br i1 %i.ja, label %bb.ap, label %checkmclim.exit183, !prof !80

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

checkmclim.exit183:                               ; preds = %bb.ao
  %i.jb = and i8 %.sroa.07.0.copyload, 31         ; 5 uses
  %i.jc = zext nneg i8 %i.jb to i32               ; 3 uses
  %i.jd = icmp eq i8 %i.jb, 14                    ; 2 uses
  br i1 %i.jd, label %bb.aq, label %bb.bv

bb.aq:                                            ; preds = %checkmclim.exit183
  br i1 %i.cp, label %bb.bj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.je = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !25 ; 3 uses
  %i.jg = add i32 %i.jf, 128
  %i.jh = icmp ult i32 %i.jg, 256
  br i1 %i.jh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ji = trunc nsw i32 %i.jf to i8
  %i.jj = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 2 uses
  store ptr %i.jj, ptr %i.dp, align 8, !tbaa !52
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %i.dp, align 8, !tbaa !52
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds i8, ptr %storemerge, i64 -4 ; 3 uses
  store i32 %i.jf, ptr %i.jk, align 4, !tbaa !26
  store ptr %i.jk, ptr %i.dp, align 8, !tbaa !52
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jl = phi ptr [ %.pre.i, %bb.as ], [ %i.jk, %bb.at ] ; 5 uses
  %.0.i204 = phi i32 [ -2097151746, %bb.as ], [ -2130706178, %bb.at ]
  br i1 %.not.i193, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.jm = icmp eq i32 %.1.i, 37
end_hunk_3
begin_hunk_4_@asm_href:bb.a
  %i.rq = getelementptr i8, ptr %i.rj, i64 -2
  store i8 11, ptr %i.rq, align 1, !tbaa !25
  %i.rr = lshr i32 %.0, 1
  %i.rs = and i32 %i.rr, 4
  %i.rt = lshr i32 %.0176, 3
  %i.ru = and i32 %i.rt, 1
  %i.rv = or disjoint i32 %i.ru, %i.rs
  %i.rw = trunc nuw nsw i32 %i.rv to i8
  %i.rx = or disjoint i8 %i.rw, 72
  %i.ry = getelementptr i8, ptr %i.rj, i64 -3     ; 2 uses
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !25
  store ptr %i.ry, ptr %i.dp, align 8, !tbaa !52
  %i.rz = xor i32 %i.jc, -1
  %i.sa = zext i32 %i.rz to i64
  %i.sb = shl i64 %i.sa, 47
  tail call fastcc void @emit_loadu64(ptr noundef %0, i32 noundef %.0, i64 noundef %i.sb)
  br label %ir_khash.exit.thread

bb.da:                                            ; preds = %.thread, %emit_rmro.exit279
  br i1 %i.cp, label %ir_khash.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sc = load i8, ptr %i.cq, align 4, !tbaa !25
  %i.sd = and i8 %i.sc, 31                        ; 3 uses
  %i.se = zext nneg i8 %i.sd to i32               ; 2 uses
  switch i8 %i.sd, label %bb.de [
    i8 4, label %bb.dc
    i8 14, label %bb.dd
  ]

bb.dc:                                            ; preds = %bb.db
  %i.sf = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !25
  %i.sh = inttoptr i64 %i.sg to ptr
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 12
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !25
  br label %ir_khash.exit

bb.dd:                                            ; preds = %bb.db
  %i.sk = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !25
  %i.sm = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !25
  %i.so = shl i32 %i.sn, 1
  br label %bb.dh

bb.de:                                            ; preds = %bb.db
  %i.sp = icmp samesign ult i8 %i.sd, 3
  br i1 %i.sp, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.sq = add nsw i32 %i.se, -1
  br label %ir_khash.exit

bb.dg:                                            ; preds = %bb.de
  %i.sr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !25 ; 2 uses
  %i.st = trunc i64 %i.ss to i32
  %i.su = lshr i64 %i.ss, 32
  %i.sv = trunc nuw i64 %i.su to i32
  %i.sw = xor i32 %i.se, -1
  %i.sx = shl nsw i32 %i.sw, 15
  %i.sy = or i32 %i.sx, %i.sv
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dd
  %.012.i = phi i32 [ %i.sl, %bb.dd ], [ %i.st, %bb.dg ]
  %.0.i283 = phi i32 [ %i.so, %bb.dd ], [ %i.sy, %bb.dg ] ; 5 uses
  %i.sz = xor i32 %.0.i283, %.012.i
  %i.ta = tail call i32 @llvm.fshl.i32(i32 %.0.i283, i32 %.0.i283, i32 14)
  %i.tb = sub i32 %i.sz, %i.ta                    ; 3 uses
  %i.tc = tail call i32 @llvm.fshl.i32(i32 %.0.i283, i32 %.0.i283, i32 19)
  %i.td = xor i32 %i.tb, %i.tc
  %i.te = tail call i32 @llvm.fshl.i32(i32 %i.tb, i32 %i.tb, i32 13)
  %i.tf = sub i32 %i.td, %i.te
  br label %ir_khash.exit

ir_khash.exit:                                    ; preds = %bb.dh, %bb.df, %bb.dc
  %i.tg = phi i32 [ %i.tf, %bb.dh ], [ %i.sq, %bb.df ], [ %i.sj, %bb.dc ] ; 2 uses
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.di, label %ir_khash.exit.thread

bb.di:                                            ; preds = %ir_khash.exit
  %i.ti = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 5 uses
  %.not.i284 = icmp samesign ult i32 %.0.i185, 128
  br i1 %.not.i284, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.tj = icmp eq i32 %.0.i185, 37
  br i1 %i.tj, label %.thread.i293, label %bb.dk

.thread.i293:                                     ; preds = %bb.dj
  %i.tk = getelementptr inbounds i8, ptr %i.ti, i64 -4 ; 2 uses
  store i32 40, ptr %i.tk, align 4, !tbaa !26
  br label %emit_rmro.exit294

bb.dk:                                            ; preds = %bb.dj
  %i.tl = and i32 %.0.i185, 7
  %i.tm = getelementptr inbounds i8, ptr %i.ti, i64 -1 ; 2 uses
  store i8 40, ptr %i.tm, align 1, !tbaa !25
  %i.tn = icmp eq i32 %i.tl, 4
  br i1 %i.tn, label %bb.dl, label %emit_rmro.exit294

bb.dl:                                            ; preds = %bb.dk
  %i.to = getelementptr inbounds i8, ptr %i.ti, i64 -2 ; 2 uses
  store i8 36, ptr %i.to, align 1, !tbaa !25
  br label %emit_rmro.exit294

bb.dm:                                            ; preds = %bb.di
  %i.tp = getelementptr inbounds i8, ptr %i.ti, i64 -4
  store i32 40, ptr %i.tp, align 4, !tbaa !26
  %i.tq = getelementptr inbounds i8, ptr %i.ti, i64 -5 ; 2 uses
  store i8 37, ptr %i.tq, align 1, !tbaa !25
  br label %emit_rmro.exit294

emit_rmro.exit294:                                ; preds = %.thread.i293, %bb.dk, %bb.dl, %bb.dm
  %.031.i285 = phi i32 [ 4, %bb.dm ], [ %.0.i185, %bb.dl ], [ %.0.i185, %bb.dk ], [ 37, %.thread.i293 ] ; 2 uses
  %.130.i286 = phi ptr [ %i.tq, %bb.dm ], [ %i.to, %bb.dl ], [ %i.tm, %bb.dk ], [ %i.tk, %.thread.i293 ] ; 3 uses
  %.1.i287 = phi i32 [ 0, %bb.dm ], [ 64, %bb.dl ], [ 64, %bb.dk ], [ 0, %.thread.i293 ]
  %i.tr = and i32 %.031.i285, 7
  %i.ts = or disjoint i32 %i.tr, %.1.i287
  %i.tt = or disjoint i32 %i.ts, %i.gn
  %i.tu = trunc nuw nsw i32 %i.tt to i8
  %i.tv = getelementptr inbounds i8, ptr %.130.i286, i64 -1
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !25
  %i.tw = getelementptr i8, ptr %.130.i286, i64 -2
  store i8 -117, ptr %i.tw, align 1, !tbaa !25
  %i.tx = lshr i32 %.031.i285, 3
  %i.ty = and i32 %i.tx, 1
  %i.tz = or disjoint i32 %i.ty, %i.fz
  %i.ua = trunc nuw nsw i32 %i.tz to i8
  %i.ub = or disjoint i8 %i.ua, 72
  %i.uc = getelementptr i8, ptr %.130.i286, i64 -3 ; 2 uses
  store i8 %i.ub, ptr %i.uc, align 1, !tbaa !25
  store ptr %i.uc, ptr %i.dp, align 8, !tbaa !52
  br label %bb.fr

ir_khash.exit.thread:                             ; preds = %bb.da, %.thread421, %ir_khash.exit
  %i.ud = phi i32 [ %i.tg, %ir_khash.exit ], [ 1, %.thread421 ], [ 1, %bb.da ] ; 3 uses
  %i.ue = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 5 uses
  %.not.i295 = icmp samesign ult i32 %.0.i185, 128 ; 4 uses
  br i1 %.not.i295, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %ir_khash.exit.thread
  %i.uf = icmp eq i32 %.0.i185, 37
  br i1 %i.uf, label %.thread.i304, label %bb.do

.thread.i304:                                     ; preds = %bb.dn
  %i.ug = getelementptr inbounds i8, ptr %i.ue, i64 -4 ; 2 uses
  store i32 40, ptr %i.ug, align 4, !tbaa !26
  br label %emit_rmro.exit305

bb.do:                                            ; preds = %bb.dn
  %i.uh = and i32 %.0.i185, 7
  %i.ui = getelementptr inbounds i8, ptr %i.ue, i64 -1 ; 2 uses
  store i8 40, ptr %i.ui, align 1, !tbaa !25
  %i.uj = icmp eq i32 %i.uh, 4
  br i1 %i.uj, label %bb.dp, label %emit_rmro.exit305

bb.dp:                                            ; preds = %bb.do
  %i.uk = getelementptr inbounds i8, ptr %i.ue, i64 -2 ; 2 uses
  store i8 36, ptr %i.uk, align 1, !tbaa !25
  br label %emit_rmro.exit305

bb.dq:                                            ; preds = %ir_khash.exit.thread
  %i.ul = getelementptr inbounds i8, ptr %i.ue, i64 -4
  store i32 40, ptr %i.ul, align 4, !tbaa !26
  %i.um = getelementptr inbounds i8, ptr %i.ue, i64 -5 ; 2 uses
  store i8 37, ptr %i.um, align 1, !tbaa !25
  br label %emit_rmro.exit305

emit_rmro.exit305:                                ; preds = %.thread.i304, %bb.do, %bb.dp, %bb.dq
  %.031.i296 = phi i32 [ 4, %bb.dq ], [ %.0.i185, %bb.dp ], [ %.0.i185, %bb.do ], [ 37, %.thread.i304 ] ; 2 uses
  %.130.i297 = phi ptr [ %i.um, %bb.dq ], [ %i.uk, %bb.dp ], [ %i.ui, %bb.do ], [ %i.ug, %.thread.i304 ] ; 4 uses
  %.1.i298 = phi i32 [ 0, %bb.dq ], [ 64, %bb.dp ], [ 64, %bb.do ], [ 0, %.thread.i304 ]
  %i.un = and i32 %.031.i296, 7
  %i.uo = or disjoint i32 %i.un, %.1.i298
  %i.up = or disjoint i32 %i.uo, %i.gn
  %i.uq = trunc nuw nsw i32 %i.up to i8
  %i.ur = getelementptr inbounds i8, ptr %.130.i297, i64 -1
  store i8 %i.uq, ptr %i.ur, align 1, !tbaa !25
  %i.us = getelementptr i8, ptr %.130.i297, i64 -2
  store i8 3, ptr %i.us, align 1, !tbaa !25
  %i.ut = lshr i32 %.031.i296, 3
  %i.uu = and i32 %i.ut, 1
  %i.uv = or disjoint i32 %i.uu, %i.fz
  %i.uw = trunc nuw nsw i32 %i.uv to i8
  %i.ux = or disjoint i8 %i.uw, 72
  %i.uy = getelementptr i8, ptr %.130.i297, i64 -3
  store i8 %i.ux, ptr %i.uy, align 1, !tbaa !25
  %i.uz = getelementptr i8, ptr %.130.i297, i64 -4 ; 2 uses
  store ptr %i.uz, ptr %i.dp, align 8, !tbaa !52
  store i8 3, ptr %i.uz, align 1, !tbaa !25
  %i.va = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 3 uses
  %i.vb = trunc nuw nsw i32 %i.fs to i8           ; 5 uses
  %i.vc = or disjoint i8 %i.vb, -32               ; 2 uses
  %i.vd = getelementptr inbounds i8, ptr %i.va, i64 -1
  store i8 %i.vc, ptr %i.vd, align 1, !tbaa !25
  %i.ve = getelementptr i8, ptr %i.va, i64 -2     ; 2 uses
  store i8 -63, ptr %i.ve, align 1, !tbaa !25
  %.not.i.i306 = icmp eq i32 %i.gb, 0             ; 5 uses
  br i1 %.not.i.i306, label %emit_rr.exit, label %bb.dr

bb.dr:                                            ; preds = %emit_rmro.exit305
  %i.vf = getelementptr i8, ptr %i.va, i64 -3     ; 2 uses
  store i8 65, ptr %i.vf, align 1, !tbaa !25
  br label %emit_rr.exit

emit_rr.exit:                                     ; preds = %emit_rmro.exit305, %bb.dr
  %.046.i.i308 = phi ptr [ %i.ve, %emit_rmro.exit305 ], [ %i.vf, %bb.dr ] ; 2 uses
  %.not.i309 = icmp eq i32 %i.fs, 5
  br i1 %.not.i309, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %emit_rr.exit
  %i.vg = getelementptr inbounds i8, ptr %.046.i.i308, i64 -1 ; 2 uses
  store i8 0, ptr %i.vg, align 1, !tbaa !25
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %emit_rr.exit
  %.022.i310 = phi ptr [ %i.vg, %bb.ds ], [ %.046.i.i308, %emit_rr.exit ] ; 4 uses
  %.0.i311 = phi i32 [ 64, %bb.ds ], [ 0, %emit_rr.exit ]
  %i.vh = shl nuw nsw i32 %.1.i, 3                ; 3 uses
  %i.vi = and i32 %i.vh, 56                       ; 6 uses
  %i.vj = or disjoint i32 %i.vi, %i.fs
  %i.vk = trunc nuw nsw i32 %i.vj to i8
  %i.vl = or disjoint i8 %i.vk, 64
  %i.vm = getelementptr inbounds i8, ptr %.022.i310, i64 -1
  store i8 %i.vl, ptr %i.vm, align 1, !tbaa !25
  %i.vn = or disjoint i32 %.0.i311, %i.vi
  %i.vo = trunc nuw nsw i32 %i.vn to i8
  %i.vp = or disjoint i8 %i.vo, 4
  %i.vq = getelementptr inbounds i8, ptr %.022.i310, i64 -2
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !25
  %i.vr = getelementptr i8, ptr %.022.i310, i64 -3 ; 2 uses
  store i8 -115, ptr %i.vr, align 1, !tbaa !25
  %i.vs = lshr i32 %.1.i, 1
  %i.vt = and i32 %i.vs, 4                        ; 7 uses
  %i.vu = lshr i32 %.1.i, 2
  %i.vv = and i32 %i.vu, 2
  %i.vw = or disjoint i32 %i.vt, %i.vv
  %i.vx = or disjoint i32 %i.vw, %i.gb            ; 2 uses
  %.not.i.i312 = icmp eq i32 %i.vx, 0
  br i1 %.not.i.i312, label %emit_rmrxo.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.vy = trunc nuw nsw i32 %i.vx to i8
  %i.vz = or disjoint i8 %i.vy, 64
  %i.wa = getelementptr inbounds i8, ptr %.022.i310, i64 -4 ; 2 uses
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !25
  br label %emit_rmrxo.exit

emit_rmrxo.exit:                                  ; preds = %bb.dt, %bb.du
  %.046.i.i313 = phi ptr [ %i.vr, %bb.dt ], [ %i.wa, %bb.du ] ; 13 uses
  store ptr %.046.i.i313, ptr %i.dp, align 8, !tbaa !52
  br i1 %i.cp, label %bb.eg, label %bb.dv

bb.dv:                                            ; preds = %emit_rmrxo.exit
  %i.wb = add i32 %i.ud, 128
  %i.wc = icmp ult i32 %i.wb, 256
  br i1 %i.wc, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.wd = trunc nsw i32 %i.ud to i8
  %i.we = getelementptr inbounds i8, ptr %.046.i.i313, i64 -1 ; 2 uses
  store i8 %i.wd, ptr %i.we, align 1, !tbaa !25
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.wf = getelementptr inbounds i8, ptr %.046.i.i313, i64 -4 ; 2 uses
  store i32 %i.ud, ptr %i.wf, align 4, !tbaa !26
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.019.i = phi ptr [ %i.we, %bb.dw ], [ %i.wf, %bb.dx ] ; 4 uses
  %.0.i314 = phi i32 [ -2097151746, %bb.dw ], [ -2130706178, %bb.dx ]
  %i.wg = getelementptr inbounds i8, ptr %.019.i, i64 -1
  store i8 %i.vc, ptr %i.wg, align 1, !tbaa !25
  %i.wh = getelementptr inbounds i8, ptr %.019.i, i64 -5
  store i32 %.0.i314, ptr %i.wh, align 4, !tbaa !26
  %i.wi = getelementptr inbounds i8, ptr %.019.i, i64 -2
  br i1 %.not.i.i306, label %emit_gri.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wj = getelementptr inbounds i8, ptr %.019.i, i64 -3 ; 2 uses
  store i8 65, ptr %i.wj, align 1, !tbaa !25
  br label %emit_gri.exit

emit_gri.exit:                                    ; preds = %bb.dy, %bb.dz
  %.046.i.i316 = phi ptr [ %i.wi, %bb.dy ], [ %i.wj, %bb.dz ] ; 5 uses
  br i1 %.not.i295, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %emit_gri.exit
  %i.wk = icmp eq i32 %.0.i185, 37
  br i1 %i.wk, label %.thread.i326, label %bb.eb

.thread.i326:                                     ; preds = %bb.ea
  %i.wl = getelementptr inbounds i8, ptr %.046.i.i316, i64 -4 ; 2 uses
  store i32 52, ptr %i.wl, align 4, !tbaa !26
  br label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.wm = and i32 %.0.i185, 7
  %i.wn = getelementptr inbounds i8, ptr %.046.i.i316, i64 -1 ; 2 uses
  store i8 52, ptr %i.wn, align 1, !tbaa !25
  %i.wo = icmp eq i32 %i.wm, 4
  br i1 %i.wo, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.wp = getelementptr inbounds i8, ptr %.046.i.i316, i64 -2 ; 2 uses
  store i8 36, ptr %i.wp, align 1, !tbaa !25
  br label %bb.ee

bb.ed:                                            ; preds = %emit_gri.exit
  %i.wq = getelementptr inbounds i8, ptr %.046.i.i316, i64 -4
  store i32 52, ptr %i.wq, align 4, !tbaa !26
  %i.wr = getelementptr inbounds i8, ptr %.046.i.i316, i64 -5 ; 2 uses
  store i8 37, ptr %i.wr, align 1, !tbaa !25
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %.thread.i326
  %.031.i318 = phi i32 [ 4, %bb.ed ], [ %.0.i185, %bb.ec ], [ %.0.i185, %bb.eb ], [ 37, %.thread.i326 ] ; 2 uses
  %.130.i319 = phi ptr [ %i.wr, %bb.ed ], [ %i.wp, %bb.ec ], [ %i.wn, %bb.eb ], [ %i.wl, %.thread.i326 ] ; 3 uses
  %.1.i320 = phi i32 [ 0, %bb.ed ], [ 64, %bb.ec ], [ 64, %bb.eb ], [ 0, %.thread.i326 ]
  %i.ws = and i32 %.031.i318, 7
  %i.wt = or disjoint i32 %i.ws, %.1.i320
  %i.wu = or disjoint i32 %i.wt, %i.vi
  %i.wv = trunc nuw nsw i32 %i.wu to i8
  %i.ww = getelementptr inbounds i8, ptr %.130.i319, i64 -1
  store i8 %i.wv, ptr %i.ww, align 1, !tbaa !25
  %i.wx = getelementptr i8, ptr %.130.i319, i64 -2 ; 2 uses
  store i8 -117, ptr %i.wx, align 1, !tbaa !25
  %i.wy = lshr i32 %.031.i318, 3
  %i.wz = and i32 %i.wy, 1
  %i.xa = or disjoint i32 %i.wz, %i.vt            ; 2 uses
  %.not.i.i321 = icmp eq i32 %i.xa, 0
  br i1 %.not.i.i321, label %emit_rmro.exit327, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xb = trunc nuw nsw i32 %i.xa to i8
  %i.xc = or disjoint i8 %i.xb, 64
  %i.xd = getelementptr i8, ptr %.130.i319, i64 -3 ; 2 uses
  store i8 %i.xc, ptr %i.xd, align 1, !tbaa !25
  br label %emit_rmro.exit327

emit_rmro.exit327:                                ; preds = %bb.ee, %bb.ef
  %.046.i.i323 = phi ptr [ %i.wx, %bb.ee ], [ %i.xd, %bb.ef ]
  store ptr %.046.i.i323, ptr %i.dp, align 8, !tbaa !52
  br label %bb.fr

bb.eg:                                            ; preds = %emit_rmrxo.exit
  %i.xe = icmp eq i8 %i.jb, 4
  br i1 %i.xe, label %bb.eh, label %bb.eu

bb.eh:                                            ; preds = %bb.eg
  %.not.i328 = icmp samesign ult i32 %.0176, 128
  br i1 %.not.i328, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.xf = icmp eq i32 %.0176, 37
  br i1 %i.xf, label %.thread.i337, label %bb.ej

.thread.i337:                                     ; preds = %bb.ei
  %i.xg = getelementptr inbounds i8, ptr %.046.i.i313, i64 -4 ; 2 uses
  store i32 12, ptr %i.xg, align 4, !tbaa !26
  br label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.xh = and i32 %.0176, 7
  %i.xi = getelementptr inbounds i8, ptr %.046.i.i313, i64 -1 ; 2 uses
  store i8 12, ptr %i.xi, align 1, !tbaa !25
  %i.xj = icmp eq i32 %i.xh, 4
  br i1 %i.xj, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.xk = getelementptr inbounds i8, ptr %.046.i.i313, i64 -2 ; 2 uses
  store i8 36, ptr %i.xk, align 1, !tbaa !25
  br label %bb.em

bb.el:                                            ; preds = %bb.eh
  %i.xl = getelementptr inbounds i8, ptr %.046.i.i313, i64 -4
  store i32 12, ptr %i.xl, align 4, !tbaa !26
  %i.xm = getelementptr inbounds i8, ptr %.046.i.i313, i64 -5 ; 2 uses
  store i8 37, ptr %i.xm, align 1, !tbaa !25
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %.thread.i337
  %.031.i329 = phi i32 [ 4, %bb.el ], [ %.0176, %bb.ek ], [ %.0176, %bb.ej ], [ 37, %.thread.i337 ] ; 2 uses
  %.130.i330 = phi ptr [ %i.xm, %bb.el ], [ %i.xk, %bb.ek ], [ %i.xi, %bb.ej ], [ %i.xg, %.thread.i337 ] ; 3 uses
  %.1.i331 = phi i32 [ 0, %bb.el ], [ 64, %bb.ek ], [ 64, %bb.ej ], [ 0, %.thread.i337 ]
  %i.xn = and i32 %.031.i329, 7
  %i.xo = or disjoint i32 %i.xn, %.1.i331
  %i.xp = or disjoint i32 %i.xo, %i.vi
  %i.xq = trunc nuw nsw i32 %i.xp to i8
  %i.xr = getelementptr inbounds i8, ptr %.130.i330, i64 -1
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !25
  %i.xs = getelementptr i8, ptr %.130.i330, i64 -2 ; 2 uses
  store i8 35, ptr %i.xs, align 1, !tbaa !25
  %i.xt = lshr i32 %.031.i329, 3
  %i.xu = and i32 %i.xt, 1
  %i.xv = or disjoint i32 %i.xu, %i.vt            ; 2 uses
  %.not.i.i332 = icmp eq i32 %i.xv, 0
  br i1 %.not.i.i332, label %emit_rmro.exit338, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xw = trunc nuw nsw i32 %i.xv to i8
  %i.xx = or disjoint i8 %i.xw, 64
  %i.xy = getelementptr i8, ptr %.130.i330, i64 -3 ; 2 uses
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !25
  br label %emit_rmro.exit338

emit_rmro.exit338:                                ; preds = %bb.em, %bb.en
  %.046.i.i334 = phi ptr [ %i.xs, %bb.em ], [ %i.xy, %bb.en ] ; 5 uses
  br i1 %.not.i295, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %emit_rmro.exit338
  %i.xz = icmp eq i32 %.0.i185, 37
  br i1 %i.xz, label %.thread.i348, label %bb.ep

.thread.i348:                                     ; preds = %bb.eo
  %i.ya = getelementptr inbounds i8, ptr %.046.i.i334, i64 -4 ; 2 uses
  store i32 52, ptr %i.ya, align 4, !tbaa !26
  br label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.yb = and i32 %.0.i185, 7
  %i.yc = getelementptr inbounds i8, ptr %.046.i.i334, i64 -1 ; 2 uses
  store i8 52, ptr %i.yc, align 1, !tbaa !25
  %i.yd = icmp eq i32 %i.yb, 4
  br i1 %i.yd, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.ye = getelementptr inbounds i8, ptr %.046.i.i334, i64 -2 ; 2 uses
  store i8 36, ptr %i.ye, align 1, !tbaa !25
  br label %bb.es

bb.er:                                            ; preds = %emit_rmro.exit338
  %i.yf = getelementptr inbounds i8, ptr %.046.i.i334, i64 -4
  store i32 52, ptr %i.yf, align 4, !tbaa !26
  %i.yg = getelementptr inbounds i8, ptr %.046.i.i334, i64 -5 ; 2 uses
  store i8 37, ptr %i.yg, align 1, !tbaa !25
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep, %.thread.i348
  %.031.i340 = phi i32 [ 4, %bb.er ], [ %.0.i185, %bb.eq ], [ %.0.i185, %bb.ep ], [ 37, %.thread.i348 ] ; 2 uses
  %.130.i341 = phi ptr [ %i.yg, %bb.er ], [ %i.ye, %bb.eq ], [ %i.yc, %bb.ep ], [ %i.ya, %.thread.i348 ] ; 3 uses
  %.1.i342 = phi i32 [ 0, %bb.er ], [ 64, %bb.eq ], [ 64, %bb.ep ], [ 0, %.thread.i348 ]
  %i.yh = and i32 %.031.i340, 7
  %i.yi = or disjoint i32 %i.yh, %.1.i342
  %i.yj = or disjoint i32 %i.yi, %i.vi
  %i.yk = trunc nuw nsw i32 %i.yj to i8
  %i.yl = getelementptr inbounds i8, ptr %.130.i341, i64 -1
  store i8 %i.yk, ptr %i.yl, align 1, !tbaa !25
  %i.ym = getelementptr i8, ptr %.130.i341, i64 -2 ; 2 uses
  store i8 -117, ptr %i.ym, align 1, !tbaa !25
  %i.yn = lshr i32 %.031.i340, 3
  %i.yo = and i32 %i.yn, 1
  %i.yp = or disjoint i32 %i.yo, %i.vt            ; 2 uses
  %.not.i.i343 = icmp eq i32 %i.yp, 0
  br i1 %.not.i.i343, label %emit_rmro.exit349, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.yq = trunc nuw nsw i32 %i.yp to i8
  %i.yr = or disjoint i8 %i.yq, 64
  %i.ys = getelementptr i8, ptr %.130.i341, i64 -3 ; 2 uses
  store i8 %i.yr, ptr %i.ys, align 1, !tbaa !25
  br label %emit_rmro.exit349

emit_rmro.exit349:                                ; preds = %bb.es, %bb.et
  %.046.i.i345 = phi ptr [ %i.ym, %bb.es ], [ %i.ys, %bb.et ]
  store ptr %.046.i.i345, ptr %i.dp, align 8, !tbaa !52
  br label %bb.fr

bb.eu:                                            ; preds = %bb.eg
  br i1 %.not.i295, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.yt = icmp eq i32 %.0.i185, 37
  br i1 %i.yt, label %.thread.i359, label %bb.ew

.thread.i359:                                     ; preds = %bb.ev
  %i.yu = getelementptr inbounds i8, ptr %.046.i.i313, i64 -4 ; 2 uses
  store i32 52, ptr %i.yu, align 4, !tbaa !26
  br label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.yv = and i32 %.0.i185, 7
  %i.yw = getelementptr inbounds i8, ptr %.046.i.i313, i64 -1 ; 2 uses
  store i8 52, ptr %i.yw, align 1, !tbaa !25
  %i.yx = icmp eq i32 %i.yv, 4
  br i1 %i.yx, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.yy = getelementptr inbounds i8, ptr %.046.i.i313, i64 -2 ; 2 uses
  store i8 36, ptr %i.yy, align 1, !tbaa !25
  br label %bb.ez

bb.ey:                                            ; preds = %bb.eu
  %i.yz = getelementptr inbounds i8, ptr %.046.i.i313, i64 -4
  store i32 52, ptr %i.yz, align 4, !tbaa !26
  %i.za = getelementptr inbounds i8, ptr %.046.i.i313, i64 -5 ; 2 uses
  store i8 37, ptr %i.za, align 1, !tbaa !25
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew, %.thread.i359
  %.031.i351 = phi i32 [ 4, %bb.ey ], [ %.0.i185, %bb.ex ], [ %.0.i185, %bb.ew ], [ 37, %.thread.i359 ] ; 2 uses
  %.130.i352 = phi ptr [ %i.za, %bb.ey ], [ %i.yy, %bb.ex ], [ %i.yw, %bb.ew ], [ %i.yu, %.thread.i359 ] ; 3 uses
  %.1.i353 = phi i32 [ 0, %bb.ey ], [ 64, %bb.ex ], [ 64, %bb.ew ], [ 0, %.thread.i359 ]
  %i.zb = and i32 %.031.i351, 7
  %i.zc = or disjoint i32 %i.zb, %.1.i353
  %i.zd = or disjoint i32 %i.zc, %i.vi
  %i.ze = trunc nuw nsw i32 %i.zd to i8
  %i.zf = getelementptr inbounds i8, ptr %.130.i352, i64 -1
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !25
  %i.zg = getelementptr i8, ptr %.130.i352, i64 -2 ; 2 uses
  store i8 35, ptr %i.zg, align 1, !tbaa !25
  %i.zh = lshr i32 %.031.i351, 3
  %i.zi = and i32 %i.zh, 1
  %i.zj = or disjoint i32 %i.zi, %i.vt            ; 2 uses
  %.not.i.i354 = icmp eq i32 %i.zj, 0
  br i1 %.not.i.i354, label %emit_rmro.exit360, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.zk = trunc nuw nsw i32 %i.zj to i8
  %i.zl = or disjoint i8 %i.zk, 64
  %i.zm = getelementptr i8, ptr %.130.i352, i64 -3 ; 2 uses
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !25
  br label %emit_rmro.exit360

emit_rmro.exit360:                                ; preds = %bb.ez, %bb.fa
  %.046.i.i356 = phi ptr [ %i.zg, %bb.ez ], [ %i.zm, %bb.fa ] ; 4 uses
  %i.zn = and i32 %.0, 7                          ; 2 uses
  %i.zo = or disjoint i32 %i.zn, %i.vh
  %i.zp = trunc i32 %i.zo to i8
  %i.zq = or i8 %i.zp, -64                        ; 2 uses
  %i.zr = getelementptr inbounds i8, ptr %.046.i.i356, i64 -1
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !25
  %i.zs = getelementptr i8, ptr %.046.i.i356, i64 -2
  store i8 43, ptr %i.zs, align 1, !tbaa !25
  %i.zt = lshr i32 %.0, 3
  %i.zu = and i32 %i.zt, 1                        ; 2 uses
  %i.zv = or disjoint i32 %i.zu, %i.vt            ; 3 uses
  %.not.i.i361 = icmp eq i32 %i.zv, 0             ; 2 uses
  br i1 %.not.i.i361, label %emit_rr.exit364, label %bb.fb

bb.fb:                                            ; preds = %emit_rmro.exit360
  %i.zw = trunc nuw nsw i32 %i.zv to i8
  %i.zx = or disjoint i8 %i.zw, 64
  %i.zy = getelementptr i8, ptr %.046.i.i356, i64 -3
  store i8 %i.zx, ptr %i.zy, align 1, !tbaa !25
  br label %emit_rr.exit364

emit_rr.exit364:                                  ; preds = %emit_rmro.exit360, %bb.fb
  %i.zz = phi i64 [ -2, %emit_rmro.exit360 ], [ -3, %bb.fb ]
  %i.aaa = getelementptr i8, ptr %.046.i.i356, i64 %i.zz
  %i.aab = getelementptr inbounds i8, ptr %i.aaa, i64 -1 ; 2 uses
  store ptr %i.aab, ptr %i.dp, align 8, !tbaa !52
  store i8 13, ptr %i.aab, align 1, !tbaa !25
  %i.aac = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 3 uses
  %i.aad = trunc nuw nsw i32 %i.zn to i8
  %i.aae = or disjoint i8 %i.aad, -64
  %i.aaf = getelementptr inbounds i8, ptr %i.aac, i64 -1
  store i8 %i.aae, ptr %i.aaf, align 1, !tbaa !25
  %i.aag = getelementptr i8, ptr %i.aac, i64 -2   ; 2 uses
  store i8 -63, ptr %i.aag, align 1, !tbaa !25
  %.not.i.i365 = icmp eq i32 %i.zu, 0
  br i1 %.not.i.i365, label %emit_rr.exit368, label %bb.fc

bb.fc:                                            ; preds = %emit_rr.exit364
  %i.aah = getelementptr i8, ptr %i.aac, i64 -3   ; 2 uses
  store i8 65, ptr %i.aah, align 1, !tbaa !25
  br label %emit_rr.exit368

emit_rr.exit368:                                  ; preds = %emit_rr.exit364, %bb.fc
  %.046.i.i367 = phi ptr [ %i.aag, %emit_rr.exit364 ], [ %i.aah, %bb.fc ] ; 3 uses
  %i.aai = getelementptr inbounds i8, ptr %.046.i.i367, i64 -1
  store i8 %i.zq, ptr %i.aai, align 1, !tbaa !25
  %i.aaj = getelementptr i8, ptr %.046.i.i367, i64 -2 ; 2 uses
  store i8 51, ptr %i.aaj, align 1, !tbaa !25
  br i1 %.not.i.i361, label %emit_rr.exit372, label %bb.fd

bb.fd:                                            ; preds = %emit_rr.exit368
  %i.aak = trunc nuw nsw i32 %i.zv to i8
  %i.aal = or disjoint i8 %i.aak, 64
  %i.aam = getelementptr i8, ptr %.046.i.i367, i64 -3 ; 2 uses
  store i8 %i.aal, ptr %i.aam, align 1, !tbaa !25
  br label %emit_rr.exit372

emit_rr.exit372:                                  ; preds = %emit_rr.exit368, %bb.fd
  %.046.i.i371 = phi ptr [ %i.aaj, %emit_rr.exit368 ], [ %i.aam, %bb.fd ] ; 3 uses
  store ptr %.046.i.i371, ptr %i.dp, align 8, !tbaa !52
  %i.aan = load ptr, ptr %i.iy, align 8, !tbaa !54
  %i.aao = icmp ult ptr %.046.i.i371, %i.aan
  br i1 %i.aao, label %bb.fe, label %checkmclim.exit, !prof !80

bb.fe:                                            ; preds = %emit_rr.exit372
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

checkmclim.exit:                                  ; preds = %emit_rr.exit372
  %i.aap = getelementptr inbounds i8, ptr %.046.i.i371, i64 -1 ; 2 uses
  store ptr %i.aap, ptr %i.dp, align 8, !tbaa !52
  store i8 5, ptr %i.aap, align 1, !tbaa !25
  %i.aaq = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 3 uses
  %i.aar = or disjoint i8 %i.vb, -64              ; 2 uses
  %i.aas = getelementptr inbounds i8, ptr %i.aaq, i64 -1
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !25
  %i.aat = getelementptr i8, ptr %i.aaq, i64 -2   ; 2 uses
  store i8 -63, ptr %i.aat, align 1, !tbaa !25
  br i1 %.not.i.i306, label %emit_rr.exit376, label %bb.ff

bb.ff:                                            ; preds = %checkmclim.exit
  %i.aau = getelementptr i8, ptr %i.aaq, i64 -3   ; 2 uses
  store i8 65, ptr %i.aau, align 1, !tbaa !25
  br label %emit_rr.exit376

emit_rr.exit376:                                  ; preds = %checkmclim.exit, %bb.ff
  %.046.i.i375 = phi ptr [ %i.aat, %checkmclim.exit ], [ %i.aau, %bb.ff ] ; 4 uses
  %i.aav = shl nuw nsw i32 %.0, 3                 ; 2 uses
  %i.aaw = or disjoint i32 %i.aav, %i.fs
  %i.aax = trunc i32 %i.aaw to i8
  %i.aay = or i8 %i.aax, -64                      ; 3 uses
  %i.aaz = getelementptr inbounds i8, ptr %.046.i.i375, i64 -1
  store i8 %i.aay, ptr %i.aaz, align 1, !tbaa !25
  %i.aba = getelementptr i8, ptr %.046.i.i375, i64 -2
  store i8 43, ptr %i.aba, align 1, !tbaa !25
  %i.abb = lshr i32 %.0, 1
  %i.abc = and i32 %i.abb, 260                    ; 2 uses
  %i.abd = or disjoint i32 %i.abc, %i.gb          ; 4 uses
  %.not.i.i377 = icmp eq i32 %i.abd, 0            ; 3 uses
  br i1 %.not.i.i377, label %emit_rr.exit380, label %bb.fg

bb.fg:                                            ; preds = %emit_rr.exit376
  %i.abe = trunc nuw nsw i32 %i.abd to i8
  %i.abf = or disjoint i8 %i.abe, 64
  %i.abg = getelementptr i8, ptr %.046.i.i375, i64 -3
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !25
  br label %emit_rr.exit380

emit_rr.exit380:                                  ; preds = %emit_rr.exit376, %bb.fg
  %i.abh = phi i64 [ -2, %emit_rr.exit376 ], [ -3, %bb.fg ]
  %i.abi = getelementptr i8, ptr %.046.i.i375, i64 %i.abh
  %i.abj = getelementptr inbounds i8, ptr %i.abi, i64 -1 ; 2 uses
  store ptr %i.abj, ptr %i.dp, align 8, !tbaa !52
  store i8 14, ptr %i.abj, align 1, !tbaa !25
  %i.abk = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 3 uses
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 -1
  store i8 %i.aar, ptr %i.abl, align 1, !tbaa !25
  %i.abm = getelementptr i8, ptr %i.abk, i64 -2   ; 2 uses
  store i8 -63, ptr %i.abm, align 1, !tbaa !25
  br i1 %.not.i.i306, label %emit_rr.exit384, label %bb.fh

bb.fh:                                            ; preds = %emit_rr.exit380
  %i.abn = getelementptr i8, ptr %i.abk, i64 -3   ; 2 uses
  store i8 65, ptr %i.abn, align 1, !tbaa !25
  br label %emit_rr.exit384

emit_rr.exit384:                                  ; preds = %emit_rr.exit380, %bb.fh
  %.046.i.i383 = phi ptr [ %i.abm, %emit_rr.exit380 ], [ %i.abn, %bb.fh ] ; 3 uses
  %i.abo = getelementptr inbounds i8, ptr %.046.i.i383, i64 -1
  store i8 %i.aay, ptr %i.abo, align 1, !tbaa !25
  %i.abp = getelementptr i8, ptr %.046.i.i383, i64 -2 ; 2 uses
  store i8 51, ptr %i.abp, align 1, !tbaa !25
  br i1 %.not.i.i377, label %emit_rr.exit388, label %bb.fi

bb.fi:                                            ; preds = %emit_rr.exit384
  %i.abq = trunc nuw nsw i32 %i.abd to i8
  %i.abr = or disjoint i8 %i.abq, 64
  %i.abs = getelementptr i8, ptr %.046.i.i383, i64 -3 ; 2 uses
  store i8 %i.abr, ptr %i.abs, align 1, !tbaa !25
  br label %emit_rr.exit388

emit_rr.exit388:                                  ; preds = %emit_rr.exit384, %bb.fi
  %.046.i.i387 = phi ptr [ %i.abp, %emit_rr.exit384 ], [ %i.abs, %bb.fi ] ; 8 uses
  store ptr %.046.i.i387, ptr %i.dp, align 8, !tbaa !52
  br i1 %i.jd, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %emit_rr.exit388
  %i.abt = or disjoint i32 %i.fs, %i.vh
  %i.abu = trunc i32 %i.abt to i8
  %i.abv = or i8 %i.abu, -64
  %i.abw = getelementptr inbounds i8, ptr %.046.i.i387, i64 -1
  store i8 %i.abv, ptr %i.abw, align 1, !tbaa !25
  %i.abx = getelementptr i8, ptr %.046.i.i387, i64 -2
  store i8 3, ptr %i.abx, align 1, !tbaa !25
  %i.aby = or disjoint i32 %i.gb, %i.vt           ; 2 uses
  %.not.i.i389 = icmp eq i32 %i.aby, 0
  br i1 %.not.i.i389, label %emit_rr.exit392, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.abz = trunc nuw nsw i32 %i.aby to i8
  %i.aca = or disjoint i8 %i.abz, 64
  %i.acb = getelementptr i8, ptr %.046.i.i387, i64 -3
  store i8 %i.aca, ptr %i.acb, align 1, !tbaa !25
  br label %emit_rr.exit392

emit_rr.exit392:                                  ; preds = %bb.fj, %bb.fk
  %i.acc = phi i64 [ -2, %bb.fj ], [ -3, %bb.fk ]
  %i.acd = getelementptr i8, ptr %.046.i.i387, i64 %i.acc
  %i.ace = getelementptr inbounds i8, ptr %i.acd, i64 -1 ; 2 uses
  store ptr %i.ace, ptr %i.dp, align 8, !tbaa !52
  store i8 32, ptr %i.ace, align 1, !tbaa !25
  %i.acf = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 6 uses
  %i.acg = or disjoint i8 %i.vb, -24
  %i.ach = getelementptr inbounds i8, ptr %i.acf, i64 -1
  store i8 %i.acg, ptr %i.ach, align 1, !tbaa !25
  %i.aci = getelementptr i8, ptr %i.acf, i64 -2
  store i8 -63, ptr %i.aci, align 1, !tbaa !25
  %i.acj = trunc nuw nsw i32 %i.gb to i8
  %i.ack = or disjoint i8 %i.acj, 72
  %i.acl = getelementptr i8, ptr %i.acf, i64 -3
  store i8 %i.ack, ptr %i.acl, align 1, !tbaa !25
  %i.acm = getelementptr i8, ptr %i.acf, i64 -4
  store i8 %i.aay, ptr %i.acm, align 1, !tbaa !25
  %i.acn = getelementptr i8, ptr %i.acf, i64 -5   ; 2 uses
  store i8 -117, ptr %i.acn, align 1, !tbaa !25
  br i1 %.not.i.i377, label %emit_rr.exit399, label %bb.fl

bb.fl:                                            ; preds = %emit_rr.exit392
  %i.aco = trunc nuw nsw i32 %i.abd to i8
  %i.acp = or disjoint i8 %i.aco, 64
  %i.acq = getelementptr i8, ptr %i.acf, i64 -6   ; 2 uses
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !25
  br label %emit_rr.exit399

emit_rr.exit399:                                  ; preds = %emit_rr.exit392, %bb.fl
  %.046.i.i398 = phi ptr [ %i.acn, %emit_rr.exit392 ], [ %i.acq, %bb.fl ] ; 3 uses
  %i.acr = shl nuw nsw i32 %.0176, 3
  %i.acs = or disjoint i32 %i.acr, %i.fs
  %i.act = trunc i32 %i.acs to i8
  %i.acu = or i8 %i.act, -64
  %i.acv = getelementptr inbounds i8, ptr %.046.i.i398, i64 -1
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !25
  %i.acw = getelementptr inbounds i8, ptr %.046.i.i398, i64 -5 ; 2 uses
  store i32 2114938470, ptr %i.acw, align 4, !tbaa !26
  %i.acx = getelementptr inbounds i8, ptr %.046.i.i398, i64 -4
  %i.acy = lshr i32 %.0176, 1
  %i.acz = and i32 %i.acy, 4
  %i.ada = or disjoint i32 %i.acz, %i.gb
  %i.adb = trunc nuw nsw i32 %i.ada to i8
  %i.adc = or disjoint i8 %i.adb, 72
  store i8 %i.adc, ptr %i.acx, align 1, !tbaa !25
  store ptr %i.acw, ptr %i.dp, align 8, !tbaa !52
  br label %bb.fr

bb.fm:                                            ; preds = %emit_rr.exit388
  %i.add = and i32 %.0176, 7                      ; 2 uses
  %i.ade = or disjoint i32 %i.aav, %i.add
  %i.adf = trunc i32 %i.ade to i8
  %i.adg = or i8 %i.adf, -64
  %i.adh = getelementptr inbounds i8, ptr %.046.i.i387, i64 -1
  store i8 %i.adg, ptr %i.adh, align 1, !tbaa !25
  %i.adi = getelementptr i8, ptr %.046.i.i387, i64 -2 ; 2 uses
  store i8 -117, ptr %i.adi, align 1, !tbaa !25
  %i.adj = lshr i32 %.0176, 3
  %i.adk = and i32 %i.adj, 1                      ; 2 uses
  %i.adl = or disjoint i32 %i.abc, %i.adk         ; 2 uses
  %.not.i.i403 = icmp eq i32 %i.adl, 0
  br i1 %.not.i.i403, label %emit_rr.exit406, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.adm = trunc nuw nsw i32 %i.adl to i8
  %i.adn = or disjoint i8 %i.adm, 64
  %i.ado = getelementptr i8, ptr %.046.i.i387, i64 -3 ; 2 uses
  store i8 %i.adn, ptr %i.ado, align 1, !tbaa !25
  br label %emit_rr.exit406

emit_rr.exit406:                                  ; preds = %bb.fm, %bb.fn
  %.046.i.i405 = phi ptr [ %i.adi, %bb.fm ], [ %i.ado, %bb.fn ] ; 4 uses
  %i.adp = xor i32 %i.jc, -1
  %i.adq = shl nsw i32 %i.adp, 15
  %i.adr = getelementptr inbounds i8, ptr %.046.i.i405, i64 -4
  store i32 %i.adq, ptr %i.adr, align 4, !tbaa !26
  %i.ads = or disjoint i8 %i.vb, -16
  %i.adt = getelementptr inbounds i8, ptr %.046.i.i405, i64 -5
  store i8 %i.ads, ptr %i.adt, align 1, !tbaa !25
  %i.adu = getelementptr i8, ptr %.046.i.i405, i64 -6 ; 2 uses
  store i8 -127, ptr %i.adu, align 2, !tbaa !25
  br i1 %.not.i.i306, label %emit_gri.exit411, label %bb.fo

bb.fo:                                            ; preds = %emit_rr.exit406
  %i.adv = getelementptr inbounds i8, ptr %.046.i.i405, i64 -7 ; 2 uses
  store i8 65, ptr %i.adv, align 1, !tbaa !25
  br label %emit_gri.exit411

emit_gri.exit411:                                 ; preds = %emit_rr.exit406, %bb.fo
  %.046.i.i410 = phi ptr [ %i.adu, %emit_rr.exit406 ], [ %i.adv, %bb.fo ] ; 2 uses
  store ptr %.046.i.i410, ptr %i.dp, align 8, !tbaa !52
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !47
  %i.ady = and i32 %i.adx, 64
  %.not180 = icmp eq i32 %i.ady, 0
  %i.adz = getelementptr inbounds i8, ptr %.046.i.i410, i64 -1 ; 2 uses
  store ptr %i.adz, ptr %i.dp, align 8, !tbaa !52
  store i8 32, ptr %i.adz, align 1, !tbaa !25
  br i1 %.not180, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %emit_gri.exit411
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef -251927612, i32 noundef %.1.i, i32 noundef %.0176)
  br label %bb.fr

bb.fq:                                            ; preds = %emit_gri.exit411
  %i.aea = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 6 uses
  %i.aeb = or disjoint i8 %i.vb, -24
  %i.aec = getelementptr inbounds i8, ptr %i.aea, i64 -1
  store i8 %i.aeb, ptr %i.aec, align 1, !tbaa !25
  %i.aed = getelementptr i8, ptr %i.aea, i64 -2
  store i8 -63, ptr %i.aed, align 1, !tbaa !25
  %i.aee = trunc nuw nsw i32 %i.gb to i8
  %i.aef = or disjoint i8 %i.aee, 72
  %i.aeg = getelementptr i8, ptr %i.aea, i64 -3
  store i8 %i.aef, ptr %i.aeg, align 1, !tbaa !25
  %i.aeh = or disjoint i32 %i.add, %i.fr
  %i.aei = trunc i32 %i.aeh to i8
  %i.aej = or i8 %i.aei, -64
  %i.aek = getelementptr i8, ptr %i.aea, i64 -4
  store i8 %i.aej, ptr %i.aek, align 1, !tbaa !25
  %i.ael = getelementptr i8, ptr %i.aea, i64 -5
  store i8 -117, ptr %i.ael, align 1, !tbaa !25
  %i.aem = or disjoint i32 %i.adk, %i.fz
  %i.aen = trunc nuw nsw i32 %i.aem to i8
  %i.aeo = or disjoint i8 %i.aen, 72
  %i.aep = getelementptr i8, ptr %i.aea, i64 -6   ; 2 uses
  store i8 %i.aeo, ptr %i.aep, align 1, !tbaa !25
  store ptr %i.aep, ptr %i.dp, align 8, !tbaa !52
  br label %bb.fr

bb.fr:                                            ; preds = %emit_rmro.exit327, %emit_rr.exit399, %bb.fq, %bb.fp, %emit_rmro.exit349, %emit_rmro.exit294
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_fxload(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !25
  %i.c = and i8 %i.b, 31
  %i.d = add nsw i8 %i.c, -13
  %i.e = icmp ult i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -65536, i32 49135    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !25    ; 3 uses
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %.not.i = icmp sgt i8 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83   ; 3 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = shl nuw i32 1, %i.i                      ; 2 uses
  %i.m = or i32 %i.l, %i.k
  store i32 %i.m, ptr %i.j, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !71
  %i.p = or i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 4, !tbaa !71
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.q = icmp samesign ult i8 %i.h, -3
  br i1 %i.q, label %bb.d, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.c
  %.pre = and i32 %i.f, %i.k
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.i, 127                        ; 2 uses
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = and i32 %i.f, %i.k                       ; 2 uses
  %i.u = and i32 %i.t, %i.s
  %.not22.i = icmp eq i32 %i.u, 0
  br i1 %.not22.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge.i_crit_edge ], [ %i.t, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.v = tail call fastcc i32 @ra_evict(ptr noundef nonnull %0, i32 noundef %i.f)
  br label %ra_scratch.exit.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.w = tail call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.pre-phi)
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 7
  br label %ra_scratch.exit.i

ra_scratch.exit.i:                                ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.z = shl nuw i32 1, %.0.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %ra_scratch.exit.i, %bb.d
  %.sink30.i = phi i32 [ %i.z, %ra_scratch.exit.i ], [ %i.s, %bb.d ]
  %.0.i = phi i32 [ %.0.i.i.i, %ra_scratch.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.ac = or i32 %i.ab, %.sink30.i
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !71
  %i.ad = trunc nuw i32 %.0.i to i8
  store i8 %i.ad, ptr %i.g, align 2, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.g ], [ %i.i, %bb.b ] ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25  ; 2 uses
  %.not23.i = icmp eq i8 %i.af, 0
  br i1 %.not23.i, label %ra_dest.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %.val.i = load i8, ptr %i.a, align 4, !tbaa !25
  tail call fastcc void @ra_save(ptr noundef nonnull %0, i8 %.val.i, i8 %i.af, i32 noundef %.1.i)
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = icmp eq i8 %i.ah, 69
  br i1 %i.ai, label %bb.j, label %bb.s

bb.j:                                             ; preds = %ra_dest.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.ak, align 1, !tbaa !87
  %i.al = load i16, ptr %1, align 8, !tbaa !25
  %i.am = icmp eq i16 %i.al, 32767
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !25 ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = zext i16 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = add nsw i32 %i.aq, -4096
  store i32 %i.ar, ptr %i.aj, align 8, !tbaa !86
  br label %asm_fusefref.exit

bb.l:                                             ; preds = %bb.j
  %i.as = zext i16 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr @field_ofs, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25  ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !86
  %i.aw = load i16, ptr %1, align 8, !tbaa !25    ; 4 uses
  %i.ax = icmp sgt i16 %i.aw, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = zext i16 %i.aw to i64                   ; 2 uses
  br i1 %i.ax, label %bb.m, label %.critedge.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = icmp eq i16 %i.aw, 32767
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = or disjoint i32 %i.av, -4096
  store i32 %i.bd, ptr %i.aj, align 8, !tbaa !86
  br label %asm_fusefref.exit

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  %.off.i = add i8 %i.bf, -25
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.p, label %.critedge.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 3256
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bh, %i.bl                    ; 2 uses
  %i.bn = zext i8 %i.au to i64
end_hunk_4
begin_hunk_5_@asm_x87load:bb.a
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %bb.k, %bb.m, %bb.n
  %.029.i = phi ptr [ %i.af, %bb.k ], [ %i.ak, %bb.n ], [ %i.aj, %bb.m ] ; 3 uses
  %.0.i = phi i8 [ 4, %bb.k ], [ -124, %bb.n ], [ 68, %bb.m ]
  %i.al = getelementptr inbounds i8, ptr %.029.i, i64 -1
  store i8 36, ptr %i.al, align 1, !tbaa !25
  %i.am = getelementptr inbounds i8, ptr %.029.i, i64 -2
  store i8 %.0.i, ptr %i.am, align 1, !tbaa !25
  %i.an = getelementptr i8, ptr %.029.i, i64 -3   ; 2 uses
  store i8 -37, ptr %i.an, align 1, !tbaa !25
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !52
  br label %bb.p

bb.o:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ao = tail call fastcc i32 @asm_fuseload(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  tail call fastcc void @emit_mrm(ptr noundef %0, i32 noundef -587202306, i32 noundef 0, i32 noundef %i.ao)
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.e, %bb.d, %emit_rmro.exit, %bb.o
  ret void
}

declare hidden void @lj_vm_floor_sse() #2

declare hidden void @lj_vm_ceil_sse() #2

declare hidden void @lj_vm_trunc_sse() #2

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_intmin_max(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 12, 16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !25    ; 3 uses
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %.not.i = icmp sgt i8 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !83   ; 3 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw i32 1, %i.c                      ; 2 uses
  %i.g = or i32 %i.f, %i.e
  store i32 %i.g, ptr %i.d, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !71
  %i.j = or i32 %i.i, %i.f
  store i32 %i.j, ptr %i.h, align 4, !tbaa !71
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i8 %i.b, -3
  br i1 %i.k, label %bb.d, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.c
  %.pre = and i32 %i.e, 49135
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.c, 127                        ; 2 uses
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = and i32 %i.e, 49135                      ; 2 uses
  %i.o = and i32 %i.n, %i.m
  %.not22.i = icmp eq i32 %i.o, 0
  br i1 %.not22.i, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge.i_crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load <4 x i32>, ptr %0, align 8, !tbaa !26
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.t = load <4 x i32>, ptr %i.p, align 4, !tbaa !26
  %i.u = load <4 x i32>, ptr %i.q, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !26
  %i.z = shufflevector <4 x i32> %i.u, <4 x i32> %i.s, <12 x i32> <i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.aa = shufflevector <4 x i32> %i.t, <4 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <12 x i32> %i.z, <12 x i32> %i.aa, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.ac = tail call i32 @llvm.vector.reduce.umin.v12i32(<12 x i32> %i.ab)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.w)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.y)
  %i.af = and i32 %i.ae, 65535                    ; 5 uses
  %i.ag = icmp samesign ult i32 %i.af, 32768
  br i1 %i.ag, label %ra_evict.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !82 ; 2 uses
  %i.aj = and i32 %i.ai, 49135                    ; 2 uses
  %.not200.i = icmp eq i32 %i.aj, 0
  br i1 %.not200.i, label %ra_evict.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = zext nneg i32 %i.af to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !25
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.ar, %i.ai
  %.not201.i = icmp eq i32 %i.as, 0
  br i1 %.not201.i, label %bb.h, label %ra_evict.exit

bb.h:                                             ; preds = %bb.g
  %i.at = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aj, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !26
  %i.ax = and i32 %i.aw, 65535
  br label %ra_evict.exit

ra_evict.exit:                                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.1134.i = phi i32 [ %i.af, %bb.e ], [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ax, %bb.h ]
  %i.ay = tail call fastcc range(i32 0, 256) i32 @ra_restore(ptr noundef nonnull %0, i32 noundef %.1134.i)
  br label %ra_scratch.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.az = tail call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.pre-phi)
  %i.ba = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 7
  br label %ra_scratch.exit.i

ra_scratch.exit.i:                                ; preds = %bb.i, %ra_evict.exit
  %.0.i.i.i = phi i32 [ %i.bb, %bb.i ], [ %i.ay, %ra_evict.exit ] ; 2 uses
  %i.bc = shl nuw i32 1, %.0.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %ra_scratch.exit.i, %bb.d
  %.sink30.i = phi i32 [ %i.bc, %ra_scratch.exit.i ], [ %i.m, %bb.d ]
  %.0.i = phi i32 [ %.0.i.i.i, %ra_scratch.exit.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !71
  %i.bf = or i32 %i.be, %.sink30.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !71
  %i.bg = trunc nuw i32 %.0.i to i8
  store i8 %i.bg, ptr %i.a, align 2, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.j ], [ %i.c, %bb.b ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25  ; 2 uses
  %.not23.i = icmp eq i8 %i.bi, 0
  br i1 %.not23.i, label %ra_dest.exit, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %1, i64 4
  %.val.i = load i8, ptr %i.bj, align 4, !tbaa !25
  tail call fastcc void @ra_save(ptr noundef nonnull %0, i8 %.val.i, i8 %i.bi, i32 noundef %.1.i)
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.k, %bb.l
  %i.bk = load i16, ptr %1, align 8, !tbaa !25
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !25 ; 2 uses
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = icmp sgt i16 %i.bn, -1                  ; 2 uses
  %spec.select24 = select i1 %i.bp, i32 %i.bl, i32 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = zext nneg i32 %spec.select24 to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !25  ; 2 uses
  %i.bw = zext nneg i8 %i.bv to i32
  %.not.i25 = icmp sgt i8 %i.bv, -1
  br i1 %.not.i25, label %ra_alloc1.exit, label %bb.m

bb.m:                                             ; preds = %ra_dest.exit
  %i.bx = shl nuw i32 1, %.1.i
  %i.by = and i32 %i.bx, 49135
  %i.bz = xor i32 %i.by, 49135
  %i.ca = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %spec.select24, i32 noundef %i.bz)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %ra_dest.exit, %bb.m
  %.0.i26 = phi i32 [ %i.ca, %bb.m ], [ %i.bw, %ra_dest.exit ] ; 3 uses
  %i.cb = shl nuw i32 1, %.0.i26
  %i.cc = xor i32 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !82
  %i.cf = and i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !25
  %i.ci = and i8 %i.ch, 31
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = and i32 %i.ck, 6315993
  %.not = icmp eq i32 %i.cl, 0
  %i.cm = select i1 %.not, i32 0, i32 524800      ; 2 uses
  %i.cn = or disjoint i32 %i.cm, %.1.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52 ; 4 uses
  %i.cq = shl nuw nsw i32 %.1.i, 3
  %i.cr = and i32 %.0.i26, 7
  %i.cs = or disjoint i32 %i.cr, %i.cq
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = or i8 %i.ct, -64                        ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cp, i64 -1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !25
  %i.cw = shl nuw nsw i32 %2, 24
  %i.cx = or disjoint i32 %i.cw, 1074725117
  %i.cy = getelementptr inbounds i8, ptr %i.cp, i64 -5
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !26
  %i.cz = getelementptr inbounds i8, ptr %i.cp, i64 -3
  %i.da = lshr i32 %i.cn, 1
  %i.db = and i32 %i.da, 260
  %i.dc = lshr i32 %.0.i26, 3
  %i.dd = and i32 %i.dc, 1                        ; 2 uses
  %i.de = or disjoint i32 %i.db, %i.dd            ; 2 uses
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %emit_rr.exit, label %bb.n

bb.n:                                             ; preds = %ra_alloc1.exit
  %i.df = lshr i32 %i.cm, 16
  %i.dg = or disjoint i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i8
  %i.di = or disjoint i8 %i.dh, 64
  %i.dj = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 2 uses
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !25
  br label %emit_rr.exit

emit_rr.exit:                                     ; preds = %ra_alloc1.exit, %bb.n
  %.046.i.i = phi ptr [ %i.cz, %ra_alloc1.exit ], [ %i.dj, %bb.n ] ; 4 uses
  store ptr %.046.i.i, ptr %i.co, align 8, !tbaa !52
  %i.dk = load i8, ptr %i.cg, align 4, !tbaa !25
  %i.dl = and i8 %i.dk, 31
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = shl nuw i32 1, %i.dm
  %i.do = and i32 %i.dn, 6315993
  %.not23 = icmp eq i32 %i.do, 0
  %i.dp = select i1 %.not23, i32 0, i32 524800    ; 2 uses
  %i.dq = or disjoint i32 %i.dp, %.1.i
  %i.dr = getelementptr inbounds i8, ptr %.046.i.i, i64 -1
  store i8 %i.cu, ptr %i.dr, align 1, !tbaa !25
  %i.ds = getelementptr i8, ptr %.046.i.i, i64 -2 ; 2 uses
  store i8 59, ptr %i.ds, align 1, !tbaa !25
  %i.dt = lshr i32 %i.dq, 1
  %i.du = and i32 %i.dt, 260
  %i.dv = or disjoint i32 %i.du, %i.dd            ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i27, label %emit_rr.exit29, label %bb.o

bb.o:                                             ; preds = %emit_rr.exit
  %i.dw = lshr i32 %i.dp, 16
  %i.dx = or disjoint i32 %i.dv, %i.dw
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = or disjoint i8 %i.dy, 64
  %i.ea = getelementptr i8, ptr %.046.i.i, i64 -3 ; 2 uses
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !25
  br label %emit_rr.exit29

emit_rr.exit29:                                   ; preds = %emit_rr.exit, %bb.o
  %.046.i.i28 = phi ptr [ %i.ds, %emit_rr.exit ], [ %i.ea, %bb.o ]
  %spec.select = select i1 %i.bp, i32 %i.bo, i32 %i.bl
  store ptr %.046.i.i28, ptr %i.co, align 8, !tbaa !52
  tail call fastcc void @ra_left(ptr noundef %0, i32 noundef %.1.i, i32 noundef %spec.select)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @asm_tvptr(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, 65536) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %union.TValue, align 8              ; 4 uses
  %i.a = and i32 %3, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread99, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !25
  %i.h = and i8 %i.g, 31
  %i.i = icmp eq i8 %i.h, 14
  %i.j = icmp samesign ult i32 %2, 32768          ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %3, 2
  %.not45 = icmp eq i32 %i.k, 0
  %or.cond = and i1 %i.j, %.not45
  br i1 %or.cond, label %bb.ap, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.m = load i8, ptr %i.l, align 2, !tbaa !25    ; 2 uses
  %i.n = zext nneg i8 %i.m to i32
  %.not.i = icmp sgt i8 %i.m, -1
  br i1 %.not.i, label %ra_alloc1.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %2, i32 noundef -65536)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = shl nuw i32 1, %.0.i
  %i.q = xor i32 %i.p, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !82
  %i.t = and i32 %i.s, %i.q
  store i32 %i.t, ptr %i.r, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 6 uses
  %.not.i46 = icmp samesign ult i32 %1, 128
  br i1 %.not.i46, label %bb.f, label %bb.i

bb.f:                                             ; preds = %ra_alloc1.exit
  %i.w = icmp eq i32 %1, 37
  br i1 %i.w, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !26
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.y = and i32 %1, 7
  switch i32 %i.y, label %bb.j [
    i32 5, label %.thread
    i32 4, label %bb.h
  ]

.thread:                                          ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store i8 0, ptr %i.z, align 1, !tbaa !25
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store i8 36, ptr %i.aa, align 1, !tbaa !25
  br label %bb.j

bb.i:                                             ; preds = %ra_alloc1.exit
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 0, ptr %i.ab, align 4, !tbaa !26
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -5 ; 2 uses
  store i8 37, ptr %i.ac, align 1, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %.thread, %bb.i, %bb.h, %.thread.i
  %.031.i = phi i32 [ 4, %bb.i ], [ %1, %bb.h ], [ %1, %bb.g ], [ 37, %.thread.i ], [ %1, %.thread ] ; 2 uses
  %.130.i = phi ptr [ %i.ac, %bb.i ], [ %i.aa, %bb.h ], [ %i.v, %bb.g ], [ %i.x, %.thread.i ], [ %i.z, %.thread ] ; 3 uses
  %.1.i = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.thread.i ], [ 64, %.thread ]
  %i.ad = shl nuw nsw i32 %.0.i, 3
  %i.ae = and i32 %i.ad, 56
  %i.af = and i32 %.031.i, 7
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = or disjoint i32 %i.ag, %.1.i
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = getelementptr inbounds i8, ptr %.130.i, i64 -1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !25
  %i.ak = getelementptr inbounds i8, ptr %.130.i, i64 -5 ; 3 uses
  store i32 286257916, ptr %i.ak, align 4, !tbaa !26
  %i.al = getelementptr inbounds i8, ptr %.130.i, i64 -4 ; 2 uses
  %i.am = lshr i32 %.0.i, 1
  %i.an = and i32 %i.am, 4
  %i.ao = lshr i32 %.031.i, 3
  %i.ap = and i32 %i.ao, 1
  %i.aq = or disjoint i32 %i.ap, %i.an            ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %emit_rmro.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = trunc nuw nsw i32 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 64
  store i8 %i.as, ptr %i.al, align 1, !tbaa !25
  store i8 -14, ptr %i.ak, align 1, !tbaa !25
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %bb.j, %bb.k
  %.046.i.i = phi ptr [ %i.al, %bb.j ], [ %i.ak, %bb.k ]
  store ptr %.046.i.i, ptr %i.u, align 8, !tbaa !52
  br label %.thread99

bb.l:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  call void @lj_ir_kvalue(ptr noundef %i.aw, ptr noundef nonnull %4, ptr noundef nonnull %i.e) #14
  %i.ax = shl nuw i32 1, %1
  %i.ay = and i32 %i.ax, 49135
  %i.az = xor i32 %i.ay, 49135                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.bc = and i32 %i.bb, %i.az                    ; 2 uses
  %.not.i.i48 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i48, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = call fastcc i32 @ra_evict(ptr noundef nonnull %0, i32 noundef %i.az)
  br label %ra_scratch.exit

bb.o:                                             ; preds = %bb.m
  %i.be = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.bc)
  %i.bf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 true)
  %i.bg = xor i32 %i.bf, 7
  br label %ra_scratch.exit

ra_scratch.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi i32 [ %i.bg, %bb.o ], [ %i.bd, %bb.n ] ; 4 uses
  %i.bh = shl nuw i32 1, %.0.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !71
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52 ; 6 uses
  %.not.i49 = icmp samesign ult i32 %1, 128
  br i1 %.not.i49, label %bb.p, label %bb.s

bb.p:                                             ; preds = %ra_scratch.exit
  %i.bn = icmp eq i32 %1, 37
  br i1 %i.bn, label %.thread.i59, label %bb.q

.thread.i59:                                      ; preds = %bb.p
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 2 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !26
  br label %emit_rmro.exit60

bb.q:                                             ; preds = %bb.p
  %i.bp = and i32 %1, 7
  switch i32 %i.bp, label %emit_rmro.exit60 [
    i32 5, label %.thread93
    i32 4, label %bb.r
  ]

.thread93:                                        ; preds = %bb.q
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 2 uses
  store i8 0, ptr %i.bq, align 1, !tbaa !25
  br label %emit_rmro.exit60

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 2 uses
  store i8 36, ptr %i.br, align 1, !tbaa !25
  br label %emit_rmro.exit60

bb.s:                                             ; preds = %ra_scratch.exit
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 -4
  store i32 0, ptr %i.bs, align 4, !tbaa !26
  %i.bt = getelementptr inbounds i8, ptr %i.bm, i64 -5 ; 2 uses
  store i8 37, ptr %i.bt, align 1, !tbaa !25
  br label %emit_rmro.exit60

emit_rmro.exit60:                                 ; preds = %bb.q, %.thread93, %.thread.i59, %bb.r, %bb.s
  %.031.i50 = phi i32 [ 4, %bb.s ], [ %1, %bb.r ], [ %1, %bb.q ], [ 37, %.thread.i59 ], [ %1, %.thread93 ] ; 2 uses
  %.130.i51 = phi ptr [ %i.bt, %bb.s ], [ %i.br, %bb.r ], [ %i.bm, %bb.q ], [ %i.bo, %.thread.i59 ], [ %i.bq, %.thread93 ] ; 3 uses
  %.1.i52 = phi i32 [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %.thread.i59 ], [ 64, %.thread93 ]
  %i.bu = shl nuw nsw i32 %.0.i.i, 3
  %i.bv = and i32 %i.bu, 56
  %i.bw = and i32 %.031.i50, 7
  %i.bx = or disjoint i32 %i.bw, %i.bv
  %i.by = or disjoint i32 %i.bx, %.1.i52
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = getelementptr inbounds i8, ptr %.130.i51, i64 -1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !25
  %i.cb = getelementptr i8, ptr %.130.i51, i64 -2
  store i8 -119, ptr %i.cb, align 1, !tbaa !25
  %i.cc = lshr i32 %.0.i.i, 1
  %i.cd = and i32 %i.cc, 4
  %i.ce = lshr i32 %.031.i50, 3
  %i.cf = and i32 %i.ce, 1
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %i.ci = or disjoint i8 %i.ch, 72
  %i.cj = getelementptr i8, ptr %.130.i51, i64 -3 ; 2 uses
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !25
  store ptr %i.cj, ptr %i.bl, align 8, !tbaa !52
  %i.ck = load i64, ptr %4, align 8, !tbaa !25
  call fastcc void @emit_loadu64(ptr noundef %0, i32 noundef %.0.i.i, i64 noundef %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.thread99

bb.t:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !25  ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i32
  %.not.i61 = icmp sgt i8 %i.cm, -1
  br i1 %.not.i61, label %ra_alloc1.exit63, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = shl nuw i32 1, %1
  %i.cp = and i32 %i.co, 49135
  %i.cq = xor i32 %i.cp, 49135
  %i.cr = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.cq)
  br label %ra_alloc1.exit63

ra_alloc1.exit63:                                 ; preds = %bb.t, %bb.u
  %.0.i62 = phi i32 [ %i.cr, %bb.u ], [ %i.cn, %bb.t ] ; 3 uses
  %i.cs = shl nuw i32 1, %.0.i62
  %i.ct = xor i32 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !82
  %i.cw = and i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !82
  %i.cx = load i8, ptr %i.f, align 4, !tbaa !25
  %i.cy = and i8 %i.cx, 31
  %i.cz = zext nneg i8 %i.cy to i32               ; 2 uses
  %i.da = shl nuw i32 1, %i.cz
  %i.db = and i32 %i.da, 6315993
  %.not43 = icmp eq i32 %i.db, 0
  %i.dc = xor i32 %i.cz, -1
  %i.dd = shl nsw i32 %i.dc, 15
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52 ; 11 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  store i32 %i.dd, ptr %i.dg, align 4, !tbaa !26
  %.not.i.i76 = icmp samesign ult i32 %1, 128     ; 2 uses
  br i1 %.not43, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %ra_alloc1.exit63
  br i1 %.not.i.i76, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp eq i32 %1, 37
  br i1 %i.dh, label %.thread.i74, label %bb.x

.thread.i74:                                      ; preds = %bb.w
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 2 uses
  store i32 4, ptr %i.di, align 4, !tbaa !26
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.dj = and i32 %1, 7
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 -5 ; 2 uses
  store i8 4, ptr %i.dk, align 1, !tbaa !25
  %i.dl = icmp eq i32 %i.dj, 4
  br i1 %i.dl, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 -6 ; 2 uses
  store i8 36, ptr %i.dm, align 2, !tbaa !25
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds i8, ptr %i.df, i64 -8
  store i32 4, ptr %i.dn, align 4, !tbaa !26
  %i.do = getelementptr inbounds i8, ptr %i.df, i64 -9 ; 2 uses
  store i8 37, ptr %i.do, align 1, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %.thread.i74
  %.031.i65 = phi i32 [ 4, %bb.z ], [ %1, %bb.y ], [ %1, %bb.x ], [ 37, %.thread.i74 ] ; 2 uses
  %.130.i66 = phi ptr [ %i.do, %bb.z ], [ %i.dm, %bb.y ], [ %i.dk, %bb.x ], [ %i.di, %.thread.i74 ] ; 3 uses
  %.1.i67 = phi i32 [ 0, %bb.z ], [ 64, %bb.y ], [ 64, %bb.x ], [ 0, %.thread.i74 ]
  %i.dp = and i32 %.031.i65, 7
  %i.dq = or disjoint i32 %.1.i67, %i.dp
  %i.dr = trunc nuw nsw i32 %i.dq to i8
  %i.ds = or disjoint i8 %i.dr, 8
  %i.dt = getelementptr inbounds i8, ptr %.130.i66, i64 -1
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !25
  %i.du = getelementptr i8, ptr %.130.i66, i64 -2 ; 2 uses
  store i8 -127, ptr %i.du, align 1, !tbaa !25
  %i.dv = and i32 %.031.i65, 8
  %.not.i.i68 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i68, label %emit_rmro.exit75, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr i8, ptr %.130.i66, i64 -3 ; 2 uses
  store i8 65, ptr %i.dw, align 1, !tbaa !25
  br label %emit_rmro.exit75

bb.ac:                                            ; preds = %ra_alloc1.exit63
  br i1 %.not.i.i76, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dx = icmp eq i32 %1, 37
  br i1 %i.dx, label %.thread.i.i, label %bb.ae

.thread.i.i:                                      ; preds = %bb.ad
  %i.dy = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 2 uses
  store i32 4, ptr %i.dy, align 4, !tbaa !26
  br label %.thread.i77

bb.ae:                                            ; preds = %bb.ad
  %i.dz = and i32 %1, 7                           ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.df, i64 -5 ; 2 uses
  store i8 4, ptr %i.ea, align 1, !tbaa !25
  %i.eb = icmp eq i32 %i.dz, 4
  br i1 %i.eb, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds i8, ptr %i.df, i64 -6 ; 2 uses
  store i8 36, ptr %i.ec, align 2, !tbaa !25
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds i8, ptr %i.df, i64 -8
  store i32 4, ptr %i.ed, align 4, !tbaa !26
  %i.ee = getelementptr inbounds i8, ptr %i.df, i64 -9 ; 2 uses
  store i8 37, ptr %i.ee, align 1, !tbaa !25
  br label %.thread.i77

.thread.i77:                                      ; preds = %bb.ag, %.thread.i.i
  %.031.i.ph.i = phi i8 [ 5, %.thread.i.i ], [ 4, %bb.ag ]
  %.130.i.ph.i = phi ptr [ %i.dy, %.thread.i.i ], [ %i.ee, %bb.ag ] ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.130.i.ph.i, i64 -1
  store i8 %.031.i.ph.i, ptr %i.ef, align 1, !tbaa !25
  %i.eg = getelementptr i8, ptr %.130.i.ph.i, i64 -2 ; 2 uses
  store i8 -57, ptr %i.eg, align 1, !tbaa !25
  br label %emit_rmro.exit75

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.130.i.i = phi ptr [ %i.ea, %bb.ae ], [ %i.ec, %bb.af ] ; 3 uses
  %i.eh = trunc nuw nsw i32 %i.dz to i8
  %i.ei = or disjoint i8 %i.eh, 64
  %i.ej = getelementptr inbounds i8, ptr %.130.i.i, i64 -1
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !25
  %i.ek = getelementptr i8, ptr %.130.i.i, i64 -2 ; 2 uses
  store i8 -57, ptr %i.ek, align 1, !tbaa !25
  %i.el = and i32 %1, 8
  %.not.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i, label %emit_rmro.exit75, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr i8, ptr %.130.i.i, i64 -3 ; 2 uses
  store i8 65, ptr %i.em, align 1, !tbaa !25
  br label %emit_rmro.exit75

emit_rmro.exit75:                                 ; preds = %bb.ai, %bb.ah, %.thread.i77, %bb.ab, %bb.aa
  %.046.i.i.i.sink = phi ptr [ %i.dw, %bb.ab ], [ %i.du, %bb.aa ], [ %i.ek, %bb.ah ], [ %i.em, %bb.ai ], [ %i.eg, %.thread.i77 ] ; 7 uses
  store ptr %.046.i.i.i.sink, ptr %i.de, align 8, !tbaa !52
  %i.en = load i8, ptr %i.f, align 4, !tbaa !25
  %i.eo = and i8 %i.en, 31
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = shl nuw i32 1, %i.ep
  %i.er = and i32 %i.eq, 6315993
  %.not44 = icmp eq i32 %i.er, 0
  %i.es = select i1 %.not44, i32 0, i32 524800    ; 2 uses
  %i.et = or disjoint i32 %i.es, %.0.i62
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i79 = icmp samesign ult i32 %1, 128
  br i1 %.not.i79, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %emit_rmro.exit75
  %i.ev = icmp eq i32 %1, 37
  br i1 %i.ev, label %.thread.i89, label %bb.ak

.thread.i89:                                      ; preds = %bb.aj
  %i.ew = getelementptr inbounds i8, ptr %.046.i.i.i.sink, i64 -4 ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !26
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ex = and i32 %1, 7
  switch i32 %i.ex, label %bb.an [
    i32 5, label %.thread96
    i32 4, label %bb.al
  ]

.thread96:                                        ; preds = %bb.ak
  %i.ey = getelementptr inbounds i8, ptr %.046.i.i.i.sink, i64 -1 ; 2 uses
  store i8 0, ptr %i.ey, align 1, !tbaa !25
  br label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ez = getelementptr inbounds i8, ptr %.046.i.i.i.sink, i64 -1 ; 2 uses
  store i8 36, ptr %i.ez, align 1, !tbaa !25
  br label %bb.an

bb.am:                                            ; preds = %emit_rmro.exit75
  %i.fa = getelementptr inbounds i8, ptr %.046.i.i.i.sink, i64 -4
  store i32 0, ptr %i.fa, align 4, !tbaa !26
end_hunk_5
begin_hunk_6_@asm_tointg:bb.a
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.m, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1696
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !66 ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24
  %i.cd = shl i32 %i.by, 2
  %i.ce = and i32 %i.cd, 124
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !52 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !59
  %i.cl = icmp eq ptr %i.ci, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.r, !prof !80

bb.o:                                             ; preds = %ra_dest.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.cm, align 4, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 5
  %i.co = ptrtoint ptr %i.cg to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49
  %.not.i19 = icmp eq ptr %i.cu, null
  br i1 %.not.i19, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !56
  %i.cx = icmp eq i8 %i.cw, 37
  br i1 %i.cx, label %bb.q, label %asm_guardcc.exit, !prof !80

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !86
  %i.da = add nsw i32 %i.cz, 2
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !86
  br label %asm_guardcc.exit

bb.r:                                             ; preds = %bb.o, %ra_dest.exit
  %.022.i = phi i8 [ -117, %bb.o ], [ -118, %ra_dest.exit ]
  %.0.i18 = phi ptr [ %i.ci, %bb.o ], [ %i.cg, %ra_dest.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !56
  %i.dd = icmp eq i8 %i.dc, 37
  br i1 %i.dd, label %bb.s, label %bb.t, !prof !80

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !86
  %i.dg = add nsw i32 %i.df, 6
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !86
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dh = ptrtoint ptr %.0.i18 to i64
  %i.di = ptrtoint ptr %i.ci to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds i8, ptr %i.ci, i64 -4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !26
  br label %asm_guardcc.exit

asm_guardcc.exit:                                 ; preds = %bb.p, %bb.q, %bb.t
  %.sink57 = phi i64 [ -5, %bb.t ], [ -1, %bb.q ], [ -1, %bb.p ]
  %.sink = phi i8 [ %.022.i, %bb.t ], [ 0, %bb.q ], [ 0, %bb.p ]
  %.sink26.i = phi i64 [ -6, %bb.t ], [ -2, %bb.q ], [ -2, %bb.p ]
  %.sink.i = phi i8 [ 15, %bb.t ], [ 123, %bb.q ], [ 123, %bb.p ]
  %i.dm = getelementptr inbounds i8, ptr %i.ci, i64 %.sink57
  store i8 %.sink, ptr %i.dm, align 1, !tbaa !25
  %i.dn = getelementptr inbounds i8, ptr %i.ci, i64 %.sink26.i ; 10 uses
  store i8 %.sink.i, ptr %i.dn, align 1, !tbaa !25
  store ptr %i.dn, ptr %i.ch, align 8, !tbaa !52
  %i.do = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1696
  %i.dq = load i32, ptr %i.bx, align 4, !tbaa !66 ; 2 uses
  %i.dr = lshr i32 %i.dq, 5
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !24
  %i.dv = shl i32 %i.dq, 2
  %i.dw = and i32 %i.dv, 124
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 2 uses
  %i.dz = load ptr, ptr %i.cj, align 8, !tbaa !59
  %i.ea = icmp eq ptr %i.dn, %i.dz
  br i1 %i.ea, label %bb.u, label %bb.x, !prof !80

bb.u:                                             ; preds = %asm_guardcc.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.eb, align 4, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !49
  %.not.i24 = icmp eq ptr %i.ej, null
  br i1 %.not.i24, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !56
  %i.em = icmp eq i8 %i.el, 37
  br i1 %i.em, label %bb.w, label %asm_guardcc.exit25, !prof !80

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !86
  %i.ep = add nsw i32 %i.eo, 2
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !86
  br label %asm_guardcc.exit25

bb.x:                                             ; preds = %bb.u, %asm_guardcc.exit
  %.022.i20 = phi i8 [ -124, %bb.u ], [ -123, %asm_guardcc.exit ]
  %.0.i21 = phi ptr [ %i.dn, %bb.u ], [ %i.dy, %asm_guardcc.exit ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !56
  %i.es = icmp eq i8 %i.er, 37
  br i1 %i.es, label %bb.y, label %bb.z, !prof !80

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !86
  %i.ev = add nsw i32 %i.eu, 6
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ew = ptrtoint ptr %.0.i21 to i64
  %i.ex = ptrtoint ptr %i.dn to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds i8, ptr %i.dn, i64 -4
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !26
  br label %asm_guardcc.exit25

asm_guardcc.exit25:                               ; preds = %bb.v, %bb.w, %bb.z
  %.sink60 = phi i64 [ -5, %bb.z ], [ -1, %bb.w ], [ -1, %bb.v ]
  %.sink58 = phi i8 [ %.022.i20, %bb.z ], [ 0, %bb.w ], [ 0, %bb.v ]
  %.sink26.i22 = phi i64 [ -6, %bb.z ], [ -2, %bb.w ], [ -2, %bb.v ]
  %.sink.i23 = phi i8 [ 15, %bb.z ], [ 116, %bb.w ], [ 116, %bb.v ]
  %i.fb = getelementptr inbounds i8, ptr %i.dn, i64 %.sink60
  store i8 %.sink58, ptr %i.fb, align 1, !tbaa !25
  %i.fc = getelementptr inbounds i8, ptr %i.dn, i64 %.sink26.i22 ; 5 uses
  store i8 %.sink.i23, ptr %i.fc, align 1, !tbaa !25
  store ptr %i.fc, ptr %i.ch, align 8, !tbaa !52
  %i.fd = shl nuw nsw i32 %2, 3
  %i.fe = and i32 %.0.i.i, 7                      ; 2 uses
  %i.ff = or disjoint i32 %i.fe, %i.fd
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = or i8 %i.fg, -64
  %i.fi = getelementptr inbounds i8, ptr %i.fc, i64 -1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !25
  %i.fj = getelementptr inbounds i8, ptr %i.fc, i64 -5 ; 3 uses
  store i32 772761340, ptr %i.fj, align 4, !tbaa !26
  %i.fk = getelementptr inbounds i8, ptr %i.fc, i64 -4 ; 2 uses
  %i.fl = lshr i32 %2, 1
  %i.fm = and i32 %i.fl, 4
  %i.fn = lshr i32 %.0.i.i, 3
  %i.fo = and i32 %i.fn, 1                        ; 2 uses
  %i.fp = or disjoint i32 %i.fo, %i.fm            ; 2 uses
  %.not.i.i26 = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i26, label %emit_rr.exit, label %bb.aa

bb.aa:                                            ; preds = %asm_guardcc.exit25
  %i.fq = trunc nuw nsw i32 %i.fp to i8
  %i.fr = or disjoint i8 %i.fq, 64
  store i8 %i.fr, ptr %i.fk, align 1, !tbaa !25
  store i8 102, ptr %i.fj, align 1, !tbaa !25
  br label %emit_rr.exit

emit_rr.exit:                                     ; preds = %asm_guardcc.exit25, %bb.aa
  %.046.i.i = phi ptr [ %i.fk, %asm_guardcc.exit25 ], [ %i.fj, %bb.aa ] ; 3 uses
  %i.fs = shl nuw nsw i32 %.0.i.i, 3              ; 2 uses
  %i.ft = and i32 %.1.i, 7
  %i.fu = or disjoint i32 %i.ft, %i.fs
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = or i8 %i.fv, -64
  %i.fx = getelementptr inbounds i8, ptr %.046.i.i, i64 -1
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !25
  %i.fy = getelementptr inbounds i8, ptr %.046.i.i, i64 -5 ; 3 uses
  store i32 705688316, ptr %i.fy, align 4, !tbaa !26
  %i.fz = getelementptr inbounds i8, ptr %.046.i.i, i64 -4 ; 2 uses
  %i.ga = lshr i32 %.0.i.i, 1
  %i.gb = and i32 %i.ga, 4                        ; 2 uses
  %i.gc = lshr i32 %.1.i, 3
  %i.gd = and i32 %i.gc, 1
  %i.ge = or disjoint i32 %i.gd, %i.gb            ; 2 uses
  %.not.i.i28 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i28, label %emit_rr.exit31, label %bb.ab

bb.ab:                                            ; preds = %emit_rr.exit
  %i.gf = trunc nuw nsw i32 %i.ge to i8
  %i.gg = or disjoint i8 %i.gf, 64
  store i8 %i.gg, ptr %i.fz, align 1, !tbaa !25
  store i8 -14, ptr %i.fy, align 1, !tbaa !25
  br label %emit_rr.exit31

emit_rr.exit31:                                   ; preds = %emit_rr.exit, %bb.ab
  %.046.i.i30 = phi ptr [ %i.fz, %emit_rr.exit ], [ %i.fy, %bb.ab ] ; 3 uses
  %i.gh = or disjoint i32 %i.fe, %i.fs
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = or i8 %i.gi, -64
  %i.gk = getelementptr inbounds i8, ptr %.046.i.i30, i64 -1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !25
  %i.gl = getelementptr inbounds i8, ptr %.046.i.i30, i64 -3 ; 2 uses
  store i16 22287, ptr %i.gl, align 2, !tbaa !69
  %i.gm = or disjoint i32 %i.fo, %i.gb            ; 2 uses
  %.not.i.i32 = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i32, label %emit_rr.exit35, label %bb.ac

bb.ac:                                            ; preds = %emit_rr.exit31
  %i.gn = trunc nuw nsw i32 %i.gm to i8
  %i.go = or disjoint i8 %i.gn, 64
  %i.gp = getelementptr inbounds i8, ptr %.046.i.i30, i64 -4 ; 2 uses
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !25
  br label %emit_rr.exit35

emit_rr.exit35:                                   ; preds = %emit_rr.exit31, %bb.ac
  %.046.i.i34 = phi ptr [ %i.gl, %emit_rr.exit31 ], [ %i.gp, %bb.ac ] ; 5 uses
  store ptr %.046.i.i34, ptr %i.ch, align 8, !tbaa !52
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !54
  %i.gs = icmp ult ptr %.046.i.i34, %i.gr
  br i1 %i.gs, label %bb.ad, label %checkmclim.exit, !prof !80

bb.ad:                                            ; preds = %emit_rr.exit35
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

checkmclim.exit:                                  ; preds = %emit_rr.exit35
  %i.gt = shl nuw nsw i32 %.1.i, 3
  %i.gu = and i32 %2, 7
  %i.gv = or disjoint i32 %i.gt, %i.gu
  %i.gw = trunc i32 %i.gv to i8
  %i.gx = or i8 %i.gw, -64
  %i.gy = getelementptr inbounds i8, ptr %.046.i.i34, i64 -1
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !25
  %i.gz = getelementptr inbounds i8, ptr %.046.i.i34, i64 -5 ; 3 uses
  store i32 739242748, ptr %i.gz, align 4, !tbaa !26
  %i.ha = getelementptr inbounds i8, ptr %.046.i.i34, i64 -4 ; 2 uses
  %i.hb = lshr i32 %.1.i, 1
  %i.hc = and i32 %i.hb, 260
  %i.hd = lshr i32 %2, 3
  %i.he = and i32 %i.hd, 1
  %i.hf = or disjoint i32 %i.hc, %i.he            ; 2 uses
  %.not.i.i36 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i36, label %emit_rr.exit39, label %bb.ae

bb.ae:                                            ; preds = %checkmclim.exit
  %i.hg = trunc nuw nsw i32 %i.hf to i8
  %i.hh = or disjoint i8 %i.hg, 64
  store i8 %i.hh, ptr %i.ha, align 1, !tbaa !25
  store i8 -14, ptr %i.gz, align 1, !tbaa !25
  br label %emit_rr.exit39

emit_rr.exit39:                                   ; preds = %checkmclim.exit, %bb.ae
  %.046.i.i38 = phi ptr [ %i.ha, %checkmclim.exit ], [ %i.gz, %bb.ae ]
  store ptr %.046.i.i38, ptr %i.ch, align 8, !tbaa !52
  ret void
}

declare hidden i32 @lj_ctype_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v12i32(<12 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v16i32(<16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v8i32(<8 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"GCRef", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"p1 _ZTS5IRIns", !15, i64 0}
!17 = !{!"p1 _ZTS8SnapShot", !15, i64 0}
!18 = !{!"p1 int", !15, i64 0}
!19 = !{!"MRef", !12, i64 0}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"GCtrace", !13, i64 0, !8, i64 8, !8, i64 9, !14, i64 10, !9, i64 12, !9, i64 16, !13, i64 24, !16, i64 32, !9, i64 40, !9, i64 44, !17, i64 48, !18, i64 56, !13, i64 64, !19, i64 72, !9, i64 80, !9, i64 84, !20, i64 88, !9, i64 96, !14, i64 100, !14, i64 102, !14, i64 104, !14, i64 106, !14, i64 108, !14, i64 110, !14, i64 112, !8, i64 114, !8, i64 115, !8, i64 116, !8, i64 117}
!22 = !{!21, !20, i64 88}
!23 = !{!21, !9, i64 84}
!24 = !{!20, !20, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!21, !9, i64 12}
!29 = !{!21, !16, i64 32}
!30 = !{!"p1 _ZTS7GCtrace", !15, i64 0}
!31 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!32 = !{!"p1 _ZTS6GCfunc", !15, i64 0}
!33 = !{!"p1 _ZTS7GCproto", !15, i64 0}
!34 = !{!"IRType1", !8, i64 0}
!35 = !{!"FoldState", !8, i64 0, !8, i64 8, !8, i64 24}
!36 = !{!"p1 _ZTS5GCRef", !15, i64 0}
!37 = !{!"ScEvEntry", !19, i64 0, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !34, i64 16, !8, i64 17}
!38 = !{!"jit_State", !21, i64 0, !30, i64 120, !31, i64 128, !18, i64 136, !32, i64 144, !33, i64 152, !18, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !8, i64 180, !8, i64 181, !34, i64 182, !8, i64 183, !35, i64 184, !18, i64 224, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !8, i64 260, !8, i64 264, !8, i64 304, !16, i64 328, !9, i64 336, !9, i64 340, !9, i64 344, !9, i64 348, !17, i64 352, !18, i64 360, !9, i64 368, !9, i64 372, !8, i64 376, !36, i64 384, !9, i64 392, !9, i64 396, !14, i64 400, !8, i64 402, !8, i64 604, !8, i64 1636, !8, i64 1696, !8, i64 1824, !9, i64 2848, !8, i64 2852, !9, i64 2980, !37, i64 2984, !18, i64 3008, !9, i64 3016, !9, i64 3020, !9, i64 3024, !18, i64 3032, !9, i64 3040, !9, i64 3044, !20, i64 3048, !20, i64 3056, !20, i64 3064, !12, i64 3072, !12, i64 3080, !12, i64 3088, !12, i64 3096, !8, i64 3104, !33, i64 3112, !9, i64 3120, !9, i64 3124}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!"p1 _ZTS9jit_State", !15, i64 0}
!41 = !{!"", !9, i64 0, !8, i64 4, !8, i64 5, !8, i64 6}
!42 = !{!"ASMState", !8, i64 0, !20, i64 128, !20, i64 136, !16, i64 144, !40, i64 152, !41, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !12, i64 232, !12, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !30, i64 272, !30, i64 280, !20, i64 288, !20, i64 296, !20, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !20, i64 336, !20, i64 344, !8, i64 352, !8, i64 416}
!43 = !{!38, !16, i64 32}
!44 = !{!42, !40, i64 152}
!45 = !{!42, !30, i64 272}
!46 = !{!38, !31, i64 128}
!47 = !{!42, !9, i64 184}
!48 = !{!42, !9, i64 256}
!49 = !{!42, !20, i64 336}
!50 = !{!42, !9, i64 188}
!51 = !{!42, !20, i64 296}
!52 = !{!42, !20, i64 128}
!53 = !{!42, !20, i64 288}
!54 = !{!42, !20, i64 136}
!55 = !{!38, !20, i64 3064}
!56 = !{!42, !8, i64 164}
!57 = !{!42, !16, i64 144}
!58 = !{!42, !9, i64 200}
!59 = !{!42, !20, i64 320}
!60 = !{!42, !20, i64 328}
!61 = !{!42, !9, i64 264}
!62 = !{!42, !9, i64 252}
!63 = !{!42, !9, i64 248}
!64 = !{!42, !9, i64 216}
!65 = !{!42, !9, i64 212}
!66 = !{!42, !9, i64 220}
!67 = !{!42, !9, i64 228}
!68 = !{!42, !9, i64 204}
!69 = !{!14, !14, i64 0}
!70 = !{!42, !9, i64 192}
!71 = !{!42, !9, i64 172}
!72 = !{!"CCallInfo", !15, i64 0, !9, i64 8}
!73 = !{!72, !9, i64 8}
!74 = !{!42, !9, i64 196}
end_hunk_6
