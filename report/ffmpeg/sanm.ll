Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sanm?download=true
inline.NumInlined: 57
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 76
begin_hunk_0_@process_frame_obj:bb.a
  store i8 %.sink192.i.i.6, ptr %i.bem, align 1, !tbaa !48
  %i.ben = getelementptr inbounds nuw i8, ptr %.4181.i.i.6, i64 15
  store i8 %.sink191.i.i.6, ptr %i.ben, align 1, !tbaa !48
  %.5.i.i.6 = getelementptr inbounds nuw i8, ptr %.4181.i.i.6, i64 16 ; 2 uses
  %i.beo = add nuw nsw i32 %.1182.i.i.6, 1        ; 2 uses
  %exitcond185.not.i.i.6 = icmp eq i32 %i.beo, 16
  br i1 %exitcond185.not.i.i.6, label %.preheader.i129.i.7, label %bb.db, !llvm.loop !116

.preheader.i129.i.7:                              ; preds = %bb.de
  %i.bep = add nuw nsw i32 %i.g, 14               ; 4 uses
  %i.beq = trunc i32 %i.bep to i8                 ; 8 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.di, %.preheader.i129.i.7
  %.1182.i.i.7 = phi i32 [ 0, %.preheader.i129.i.7 ], [ %i.bfv, %bb.di ] ; 2 uses
  %.4181.i.i.7 = phi ptr [ %.5.i.i.6, %.preheader.i129.i.7 ], [ %.5.i.i.7, %bb.di ] ; 18 uses
  %i.ber = add nuw nsw i32 %.1182.i.i.7, %i.g     ; 5 uses
  %i.bes = add nuw nsw i32 %i.ber, %i.bep
  %i.bet = lshr i32 %i.bes, 1                     ; 5 uses
  %i.beu = icmp eq i32 %i.bet, %i.bep
  %i.bev = icmp eq i32 %i.bet, %i.ber
  %or.cond174.i.i.7 = or i1 %i.beu, %i.bev
  br i1 %or.cond174.i.i.7, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bew = add nuw nsw i32 %i.bet, %i.ber
  %i.bex = lshr i32 %i.bew, 1
  %i.bey = add nuw nsw i32 %i.bet, %i.bep
  %i.bez = lshr i32 %i.bey, 1
  %i.bfa = trunc i32 %i.bez to i8                 ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 3
  %i.bfc = trunc i32 %i.bet to i8                 ; 3 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 4
  store i8 %i.bfc, ptr %i.bfb, align 1, !tbaa !48
  %i.bfe = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 5
  store i8 %i.beq, ptr %i.bfd, align 1, !tbaa !48
  %i.bff = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 6
  store i8 %i.beq, ptr %i.bfe, align 1, !tbaa !48
  store i8 %i.bfa, ptr %i.bff, align 1, !tbaa !48
  %i.bfg = trunc i32 %i.bex to i8                 ; 2 uses
  %i.bfh = trunc i32 %i.ber to i8
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.bfi = trunc i32 %i.ber to i8                 ; 4 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bfj, i8 %i.beq, i64 4, i1 false)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.sink198.i.7 = phi i8 [ %i.bfi, %bb.dh ], [ %i.bfa, %bb.dg ] ; 2 uses
  %.sink197.i.7 = phi i8 [ %i.bfi, %bb.dh ], [ %i.bfc, %bb.dg ] ; 3 uses
  %.sink195.i.7 = phi i8 [ %i.beq, %bb.dh ], [ %i.bfa, %bb.dg ]
  %.sink195.i.i.7 = phi i8 [ %i.bfi, %bb.dh ], [ %i.bfg, %bb.dg ]
  %.sink194.i.i.7 = phi i8 [ %i.beq, %bb.dh ], [ %i.bfc, %bb.dg ]
  %.sink192.i.i.7 = phi i8 [ %i.beq, %bb.dh ], [ %i.bfg, %bb.dg ]
  %.sink191.i.i.7 = phi i8 [ %i.bfi, %bb.dh ], [ %i.bfh, %bb.dg ]
  store i8 %i.beq, ptr %.4181.i.i.7, align 1, !tbaa !48
  %i.bfk = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 1
  store i8 %i.beq, ptr %i.bfk, align 1, !tbaa !48
  %i.bfl = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 2
  store i8 %.sink198.i.7, ptr %i.bfl, align 1, !tbaa !48
  %i.bfm = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 7
  store i8 %.sink197.i.7, ptr %i.bfm, align 1, !tbaa !48
  %i.bfn = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 8
  store i8 %.sink198.i.7, ptr %i.bfn, align 1, !tbaa !48
  %i.bfo = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 9
  store i8 %.sink195.i.7, ptr %i.bfo, align 1, !tbaa !48
  %i.bfp = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 10
  store i8 %.sink197.i.7, ptr %i.bfp, align 1, !tbaa !48
  %i.bfq = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 11
  store i8 %.sink195.i.i.7, ptr %i.bfq, align 1, !tbaa !48
  %i.bfr = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 12
  store i8 %.sink194.i.i.7, ptr %i.bfr, align 1, !tbaa !48
  %i.bfs = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 13
  store i8 %.sink197.i.7, ptr %i.bfs, align 1, !tbaa !48
  %i.bft = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 14
  store i8 %.sink192.i.i.7, ptr %i.bft, align 1, !tbaa !48
  %i.bfu = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 15
  store i8 %.sink191.i.i.7, ptr %i.bfu, align 1, !tbaa !48
  %.5.i.i.7 = getelementptr inbounds nuw i8, ptr %.4181.i.i.7, i64 16
  %i.bfv = add nuw nsw i32 %.1182.i.i.7, 1        ; 2 uses
  %exitcond185.not.i.i.7 = icmp eq i32 %i.bfv, 16
  br i1 %exitcond185.not.i.i.7, label %codec33_gen_tiles.exit.i, label %bb.df, !llvm.loop !116

codec33_gen_tiles.exit.i:                         ; preds = %bb.di, %.preheader.i.i
  store i16 %i.lo, ptr %i.lm, align 8, !tbaa !52
  br label %bb.dj

bb.dj:                                            ; preds = %codec33_gen_tiles.exit.i, %bb.av
  %.not121.i264 = icmp eq i16 %i.y, 0             ; 3 uses
  br i1 %.not121.i264, label %codec4_load_tiles.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bfw = icmp ugt i16 %i.y, 256
  br i1 %i.bfw, label %old_codec45.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bfx = shl nuw nsw i16 %i.y, 3
  %i.bfy = zext nneg i16 %i.bfx to i32            ; 2 uses
  %i.bfz = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.bga = load ptr, ptr %1, align 8, !tbaa !54
  %i.bgb = ptrtoint ptr %i.bfz to i64
  %i.bgc = ptrtoint ptr %i.bga to i64
  %i.bgd = sub i64 %i.bgb, %i.bgc
  %i.bge = trunc i64 %i.bgd to i32
  %i.bgf = icmp ult i32 %i.bge, %i.bfy
  br i1 %i.bgf, label %old_codec45.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dl
  %i.bgg = getelementptr inbounds nuw i8, ptr %0, i64 95168
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.018.i.i = phi i32 [ %i.bfy, %.lr.ph.preheader.i.i ], [ %i.bgq, %.lr.ph.i.i ]
  %.01317.i.i = phi ptr [ %i.bgg, %.lr.ph.preheader.i.i ], [ %i.bgz, %.lr.ph.i.i ] ; 5 uses
  %i.bgh = load ptr, ptr %1, align 8, !tbaa !57   ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 1
  store ptr %i.bgi, ptr %1, align 8, !tbaa !57
  %i.bgj = load i8, ptr %i.bgh, align 1, !tbaa !48 ; 2 uses
  %i.bgk = lshr i8 %i.bgj, 4
  %i.bgl = add i8 %i.bgk, %i.f
  %i.bgm = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 1
  store i8 %i.bgl, ptr %.01317.i.i, align 1, !tbaa !48
  %i.bgn = and i8 %i.bgj, 15
  %i.bgo = add i8 %i.bgn, %i.f
  %i.bgp = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 2
  store i8 %i.bgo, ptr %i.bgm, align 1, !tbaa !48
  %i.bgq = add nsw i32 %.018.i.i, -2              ; 2 uses
  %i.bgr = load ptr, ptr %1, align 8, !tbaa !57   ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 1
  store ptr %i.bgs, ptr %1, align 8, !tbaa !57
  %i.bgt = load i8, ptr %i.bgr, align 1, !tbaa !48 ; 2 uses
  %i.bgu = lshr i8 %i.bgt, 4
  %i.bgv = add i8 %i.bgu, %i.f
  %i.bgw = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 3
  store i8 %i.bgv, ptr %i.bgp, align 1, !tbaa !48
  %i.bgx = and i8 %i.bgt, 15
  %i.bgy = add i8 %i.bgx, %i.f
  %i.bgz = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 4
  store i8 %i.bgy, ptr %i.bgw, align 1, !tbaa !48
  %.not.i.i.1 = icmp eq i32 %i.bgq, 0
  br i1 %.not.i.i.1, label %codec4_load_tiles.exit.i, label %.lr.ph.i.i, !llvm.loop !117

codec4_load_tiles.exit.i:                         ; preds = %.lr.ph.i.i, %bb.dj
  %i.bha = icmp ugt i8 %i.c, 32
  %i.bhb = add nsw i32 %i.d, -29
  %spec.select.i265 = select i1 %i.bha, i32 %i.bhb, i32 %i.d
  %i.bhc = icmp ne i32 %spec.select.i265, 5
  %i.bhd = and i32 %i.lh, 65535
  %i.bhe = and i32 %i.lf, 65535                   ; 5 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %0, i64 91072
  %i.bhg = and i64 %i.lj, 65535                   ; 8 uses
  %i.bhh = zext nneg i32 %i.bhd to i64            ; 5 uses
  %i.bhi = sext i16 %i.gb to i64
  %i.bhj = zext nneg i16 %.fr to i64
  %i.bhk = zext nneg i16 %i.m to i64
  %i.bhl = sext i16 %i.fz to i64
  %i.bhm = zext nneg i32 %i.bhe to i64            ; 2 uses
  %i.bhn = tail call i32 @llvm.umax.i32(i32 %i.q, i32 4)
  %i.bho = add nsw i32 %i.bhn, -1
  %i.bhp = lshr i32 %i.bho, 2
  br label %bb.dm

bb.dm:                                            ; preds = %.split152.us.i, %codec4_load_tiles.exit.i
  %indvars.iv187.i = phi i64 [ 0, %codec4_load_tiles.exit.i ], [ %indvars.iv.next188.i, %.split152.us.i ] ; 2 uses
  %i.bhq = add nsw i64 %indvars.iv187.i, %i.bhl   ; 13 uses
  %i.bhr = add nsw i64 %i.bhq, 4
  %i.bhs = icmp slt i64 %i.bhq, -4
  %.not124.i = icmp sge i64 %i.bhq, %i.bhm
  %i.bht = icmp samesign ult i64 %i.bhr, %i.bhm
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.bhq ; 4 uses
  br i1 %i.bhs, label %.split150.us.i, label %.split150.preheader.i

.split150.preheader.i:                            ; preds = %bb.dm
  %i.bhv = trunc nsw i64 %i.bhq to i32
  %i.bhw = icmp ugt i32 %i.bhe, %i.bhv            ; 4 uses
  %i.bhx = add nsw i64 %i.bhq, 1                  ; 5 uses
  %i.bhy = trunc nsw i64 %i.bhx to i32
  %i.bhz = icmp ugt i32 %i.bhe, %i.bhy            ; 4 uses
  %i.bia = add nsw i64 %i.bhq, 2                  ; 5 uses
  %i.bib = trunc nsw i64 %i.bia to i32
  %i.bic = icmp ugt i32 %i.bhe, %i.bib            ; 4 uses
  %i.bid = add nsw i64 %i.bhq, 3                  ; 5 uses
  %i.bie = trunc nsw i64 %i.bid to i32
  %i.bif = icmp ugt i32 %i.bhe, %i.bie            ; 4 uses
  br label %.split150.i

.split150.us.i:                                   ; preds = %bb.dm
  %i.big = load ptr, ptr %i.r, align 8, !tbaa !55 ; 2 uses
  br i1 %.not121.i264, label %.split150.us.split.us.i, label %.split150.us.split.preheader.i

.split150.us.split.preheader.i:                   ; preds = %.split150.us.i
  %.pre199.pre.i = load ptr, ptr %1, align 8, !tbaa !54
  %.pre.i274 = ptrtoint ptr %i.big to i64         ; 2 uses
  br label %.split150.us.split.i

.split150.us.split.us.i:                          ; preds = %.split150.us.i
  %i.bih = ptrtoint ptr %i.big to i64             ; 2 uses
  %.promoted.i276 = load ptr, ptr %1, align 8, !tbaa !57 ; 4 uses
  %4 = trunc i64 %i.bih to i32                    ; 2 uses
  %5 = ptrtoaddr ptr %.promoted.i276 to i64
  %i.bii = trunc i64 %5 to i32                    ; 2 uses
  %i.bij = sub i32 %4, %i.bii
  %i.bik = tail call i32 @llvm.smin.i32(i32 %i.bij, i32 0)
  %i.bil = add i32 %i.bik, %i.bii
  %i.bim = sub i32 %4, %i.bil
  %i.bin = tail call i32 @llvm.umin.i32(i32 %i.bhp, i32 %i.bim) ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bin, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split150.us.split.us.i
  %narrow = add nuw nsw i32 %i.bin, 1
  %i.bio = zext nneg i32 %narrow to i64           ; 2 uses
  %i.bip = and i64 %i.bio, 3                      ; 2 uses
  %i.biq = icmp eq i64 %i.bip, 0
  %i.bir = select i1 %i.biq, i64 4, i64 %i.bip
  %n.vec = sub nsw i64 %i.bio, %i.bir             ; 3 uses
  %i.bis = getelementptr i8, ptr %.promoted.i276, i64 %n.vec
  %i.bit = trunc i64 %n.vec to i32
  %i.biu = shl i32 %i.bit, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i276, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.biv = icmp eq i64 %index.next, %n.vec
  br i1 %i.biv, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %i.biw = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.biw, ptr %1, align 8, !tbaa !57
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split150.us.split.us.i, %middle.block
  %.ph595 = phi ptr [ %.promoted.i276, %.split150.us.split.us.i ], [ %i.bis, %middle.block ]
  %.099149.us.us.i.ph = phi i32 [ 0, %.split150.us.split.us.i ], [ %i.biu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.dn
  %i.bix = phi ptr [ %i.bjc, %bb.dn ], [ %.ph595, %scalar.ph.preheader ] ; 2 uses
  %.099149.us.us.i = phi i32 [ %i.bjd, %bb.dn ], [ %.099149.us.us.i.ph, %scalar.ph.preheader ]
  %i.biy = ptrtoint ptr %i.bix to i64
  %i.biz = sub i64 %i.bih, %i.biy
  %i.bja = trunc i64 %i.biz to i32
  %i.bjb = icmp slt i32 %i.bja, 1
  br i1 %i.bjb, label %old_codec45.exit, label %bb.dn

bb.dn:                                            ; preds = %scalar.ph
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bix, i64 1 ; 2 uses
  store ptr %i.bjc, ptr %1, align 8, !tbaa !57
  %i.bjd = add nuw nsw i32 %.099149.us.us.i, 4    ; 2 uses
  %i.bje = icmp samesign ult i32 %i.bjd, %i.q
  br i1 %i.bje, label %scalar.ph, label %.split152.us.i, !llvm.loop !119

.split150.us.split.i:                             ; preds = %bb.dr, %.split150.us.split.preheader.i
  %.pre199.i = phi ptr [ %i.bjr, %bb.dr ], [ %.pre199.pre.i, %.split150.us.split.preheader.i ] ; 3 uses
  %.099149.us.i = phi i32 [ %i.bjs, %bb.dr ], [ 0, %.split150.us.split.preheader.i ]
  %.0102148.us.i = phi i8 [ %.1103.us.i, %bb.dr ], [ 0, %.split150.us.split.preheader.i ] ; 2 uses
  %i.bjf = icmp eq i8 %.0102148.us.i, 0
  br i1 %i.bjf, label %bb.do, label %.split150.us.split._crit_edge.i

.split150.us.split._crit_edge.i:                  ; preds = %.split150.us.split.i
  %i.bjg = add nsw i8 %.0102148.us.i, -1
  br label %bb.dq

bb.do:                                            ; preds = %.split150.us.split.i
  %i.bjh = ptrtoint ptr %.pre199.i to i64
  %i.bji = sub i64 %.pre.i274, %i.bjh
  %i.bjj = trunc i64 %i.bji to i32
  %i.bjk = icmp slt i32 %i.bjj, 1
  br i1 %i.bjk, label %old_codec45.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bjl = getelementptr inbounds nuw i8, ptr %.pre199.i, i64 1 ; 2 uses
  store ptr %i.bjl, ptr %1, align 8, !tbaa !57
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.split150.us.split._crit_edge.i
  %i.bjm = phi ptr [ %.pre199.i, %.split150.us.split._crit_edge.i ], [ %i.bjl, %bb.dp ] ; 2 uses
  %.1103.us.i = phi i8 [ %i.bjg, %.split150.us.split._crit_edge.i ], [ 7, %bb.dp ]
  %i.bjn = ptrtoint ptr %i.bjm to i64
  %i.bjo = sub i64 %.pre.i274, %i.bjn
  %i.bjp = trunc i64 %i.bjo to i32
  %i.bjq = icmp slt i32 %i.bjp, 1
  br i1 %i.bjq, label %old_codec45.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjm, i64 1 ; 2 uses
  store ptr %i.bjr, ptr %1, align 8, !tbaa !57
  %i.bjs = add nuw nsw i32 %.099149.us.i, 4       ; 2 uses
  %i.bjt = icmp samesign ult i32 %i.bjs, %i.q
  br i1 %i.bjt, label %.split150.us.split.i, label %.split152.us.i, !llvm.loop !120

.split150.i:                                      ; preds = %.loopexit.i272, %.split150.preheader.i
  %indvars.iv.i266 = phi i64 [ 0, %.split150.preheader.i ], [ %indvars.iv.next.i273, %.loopexit.i272 ] ; 2 uses
  %.0102148.i = phi i8 [ 0, %.split150.preheader.i ], [ %.2104.i, %.loopexit.i272 ] ; 3 uses
  %.0105147.i = phi i8 [ 0, %.split150.preheader.i ], [ %.2107.i, %.loopexit.i272 ] ; 2 uses
  %i.bju = add nsw i64 %indvars.iv.i266, %i.bhi   ; 12 uses
  br i1 %.not121.i264, label %bb.dw, label %bb.ds

bb.ds:                                            ; preds = %.split150.i
  %i.bjv = icmp eq i8 %.0102148.i, 0
  br i1 %i.bjv, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.bjw = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.bjx = load ptr, ptr %1, align 8, !tbaa !54   ; 3 uses
  %i.bjy = ptrtoint ptr %i.bjw to i64
  %i.bjz = ptrtoint ptr %i.bjx to i64
  %i.bka = sub i64 %i.bjy, %i.bjz
  %i.bkb = trunc i64 %i.bka to i32
  %i.bkc = icmp slt i32 %i.bkb, 1
  br i1 %i.bkc, label %old_codec45.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjx, i64 1
  store ptr %i.bkd, ptr %1, align 8, !tbaa !57
  %i.bke = load i8, ptr %i.bjx, align 1, !tbaa !48
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.ds
  %.1106.i = phi i8 [ %i.bke, %bb.du ], [ %.0105147.i, %bb.ds ] ; 2 uses
  %.1103.i = phi i8 [ 8, %bb.du ], [ %.0102148.i, %bb.ds ]
  %.1106.lobit.i = lshr i8 %.1106.i, 7
  %i.bkf = zext nneg i8 %.1106.lobit.i to i32
  %i.bkg = shl i8 %.1106.i, 1
  %i.bkh = add nsw i8 %.1103.i, -1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.split150.i
  %.2107.i = phi i8 [ %i.bkg, %bb.dv ], [ %.0105147.i, %.split150.i ]
  %.2104.i = phi i8 [ %i.bkh, %bb.dv ], [ %.0102148.i, %.split150.i ]
  %.0.i267 = phi i32 [ %i.bkf, %bb.dv ], [ 0, %.split150.i ] ; 2 uses
  %i.bki = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.bkj = load ptr, ptr %1, align 8, !tbaa !54   ; 3 uses
  %i.bkk = ptrtoint ptr %i.bki to i64
  %i.bkl = ptrtoint ptr %i.bkj to i64
  %i.bkm = sub i64 %i.bkk, %i.bkl
  %i.bkn = trunc i64 %i.bkm to i32
  %i.bko = icmp slt i32 %i.bkn, 1
  br i1 %i.bko, label %old_codec45.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkj, i64 1
  store ptr %i.bkp, ptr %1, align 8, !tbaa !57
  %i.bkq = load i8, ptr %i.bkj, align 1, !tbaa !48 ; 2 uses
  %i.bkr = icmp eq i32 %.0.i267, 0
  %i.bks = icmp eq i8 %i.bkq, -128
  %or.cond.not165.not239.i = select i1 %i.bkr, i1 %i.bks, i1 false
  %or.cond4.not162.not236.i = select i1 %or.cond.not165.not239.i, i1 %i.bhc, i1 false
  %.not123.i268 = icmp sge i64 %i.bju, %i.bhh
  %i.bkt = icmp slt i64 %i.bju, -4
  %i.bku = or i1 %.not123.i268, %i.bkt
  %i.bkv = select i1 %or.cond4.not162.not236.i, i1 true, i1 %i.bku
  %or.cond.i269 = select i1 %i.bkv, i1 true, i1 %.not124.i
  br i1 %or.cond.i269, label %.loopexit.i272, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bkw = zext i8 %i.bkq to i64
  %i.bkx = add nsw i64 %i.bju, 4
  %i.bky = zext nneg i32 %.0.i267 to i64
  %i.bkz = getelementptr inbounds nuw [4096 x i8], ptr %i.bhf, i64 %i.bky
  %i.bla = getelementptr inbounds nuw [16 x i8], ptr %i.bkz, i64 %i.bkw ; 20 uses
  %i.blb = or i64 %i.bju, %i.bhq
  %or.cond6.i = icmp sgt i64 %i.blb, -1
  %i.blc = icmp samesign ult i64 %i.bkx, %i.bhh
  %or.cond125.i270 = select i1 %or.cond6.i, i1 %i.blc, i1 false
  %or.cond126.i = select i1 %or.cond125.i270, i1 %i.bht, i1 false
  br i1 %or.cond126.i, label %.preheader133.preheader.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.dy
  %i.bld = icmp sgt i64 %i.bju, -1
  %i.ble = mul nuw nsw i64 %i.bju, %i.bhg
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ble ; 4 uses
  br i1 %i.bld, label %.preheader.split.us.split.preheader.i, label %.split.us.i271

.preheader133.preheader.i:                        ; preds = %bb.dy
  %i.blg = and i64 %i.bju, 4294967295             ; 4 uses
  %i.blh = mul nuw nsw i64 %i.blg, %i.bhg
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.blh
  %i.blj = load i32, ptr %i.bla, align 1
  store i32 %i.blj, ptr %i.bli, align 1
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bla, i64 4
  %i.bll = add nuw nsw i64 %i.blg, 1
  %i.blm = mul nuw nsw i64 %i.bll, %i.bhg
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.blm
  %i.blo = load i32, ptr %i.blk, align 1
  store i32 %i.blo, ptr %i.bln, align 1
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bla, i64 8
  %i.blq = add nuw nsw i64 %i.blg, 2
  %i.blr = mul nuw nsw i64 %i.blq, %i.bhg
  %i.bls = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.blr
  %i.blt = load i32, ptr %i.blp, align 1
  store i32 %i.blt, ptr %i.bls, align 1
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bla, i64 12
  %i.blv = add nuw nsw i64 %i.blg, 3
  %i.blw = mul nuw nsw i64 %i.blv, %i.bhg
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %i.blw
  %i.bly = load i32, ptr %i.blu, align 1
  store i32 %i.bly, ptr %i.blx, align 1
end_hunk_0
