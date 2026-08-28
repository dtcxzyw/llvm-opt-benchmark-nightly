Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !51
  %i.ajw = load i32, ptr %i.s, align 8, !tbaa !49
  %i.ajx = icmp slt i32 %.val.i, %i.ajw
  %i.ajy = zext i1 %i.ajx to i32
  %spec.select.i143.i = add nsw i32 %.val.i, %i.ajy
  store i32 %spec.select.i143.i, ptr %i.t, align 8, !tbaa !50
  %i.ajz = call fastcc i32 @vp4_get_mb_count(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %4) ; 2 uses
  %i.aka = load i32, ptr %i.aiv, align 16, !tbaa !105 ; 2 uses
  %i.akb = icmp sgt i32 %i.aka, 0
  br i1 %i.akb, label %.lr.ph165.i, label %._crit_edge166.i

.lr.ph165.i:                                      ; preds = %bb.ef
  %i.akc = zext i8 %i.ajv to i32
  %i.akd = and i32 %.val.i, 7
  %i.ake = shl nuw nsw i32 %i.akc, %i.akd
  %i.akf = lshr i32 %i.ake, 7
  %i.akg = and i32 %i.akf, 1
  br label %bb.eg

._crit_edge166.i:                                 ; preds = %bb.ek, %bb.ef
  %.0111.lcssa.i = phi i32 [ %i.ajz, %bb.ef ], [ %.2113.i, %bb.ek ]
  %.not129.i = icmp eq i32 %.0111.lcssa.i, 0
  br i1 %.not129.i, label %._crit_edge.thread.i, label %.sink.split

bb.eg:                                            ; preds = %bb.ek, %.lr.ph165.i
  %i.akh = phi i32 [ %i.aka, %.lr.ph165.i ], [ %i.akr, %bb.ek ]
  %indvars.iv.i284 = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i285, %bb.ek ] ; 3 uses
  %.0111162.i = phi i32 [ %i.ajz, %.lr.ph165.i ], [ %.2113.i, %bb.ek ] ; 3 uses
  %.1115161.i = phi i32 [ %i.akg, %.lr.ph165.i ], [ %.3117.i, %bb.ek ] ; 3 uses
  %i.aki = load ptr, ptr %i.ajc, align 16, !tbaa !90 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %indvars.iv.i284
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !51
  %.not138.i = icmp eq i8 %i.akk, 0
  br i1 %.not138.i, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %.not139.i = icmp eq i32 %.0111162.i, 0
  br i1 %.not139.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.akl = xor i32 %.1115161.i, 1
  %i.akm = call fastcc i32 @vp4_get_mb_count(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %4)
  %.pre.i286 = load ptr, ptr %i.ajc, align 16, !tbaa !90
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.akn = phi ptr [ %i.aki, %bb.eh ], [ %.pre.i286, %bb.ei ]
  %.2116.i = phi i32 [ %.1115161.i, %bb.eh ], [ %i.akl, %bb.ei ] ; 2 uses
  %.1112.i = phi i32 [ %.0111162.i, %bb.eh ], [ %i.akm, %bb.ei ]
  %i.ako = trunc nuw nsw i32 %.2116.i to i8
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akn, i64 %indvars.iv.i284
  store i8 %i.ako, ptr %i.akp, align 1, !tbaa !51
  %i.akq = add nsw i32 %.1112.i, -1
  %.pre197.i = load i32, ptr %i.aiv, align 16, !tbaa !105
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg
  %i.akr = phi i32 [ %i.akh, %bb.eg ], [ %.pre197.i, %bb.ej ] ; 2 uses
  %.3117.i = phi i32 [ %.1115161.i, %bb.eg ], [ %.2116.i, %bb.ej ]
  %.2113.i = phi i32 [ %.0111162.i, %bb.eg ], [ %i.akq, %bb.ej ] ; 2 uses
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %i.aks = sext i32 %i.akr to i64
  %i.akt = icmp slt i64 %indvars.iv.next.i285, %i.aks
  br i1 %i.akt, label %bb.eg, label %._crit_edge166.i, !llvm.loop !107

._crit_edge.thread.i:                             ; preds = %._crit_edge166.i, %._crit_edge.i283, %bb.ea
  %i.aku = getelementptr inbounds nuw i8, ptr %i.m, i64 920
  %i.akv = getelementptr inbounds nuw i8, ptr %i.m, i64 928
  %i.akw = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.akx = getelementptr inbounds nuw i8, ptr %i.m, i64 944
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge181.i, %._crit_edge.thread.i
  %indvars.iv193.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %indvars.iv.next194.i, %._crit_edge181.i ] ; 3 uses
  %.0105187.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.1.lcssa.i, %._crit_edge181.i ] ; 3 uses
  %.0144185.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.1145.lcssa.i, %._crit_edge181.i ] ; 3 uses
  %i.aky = icmp ne i64 %indvars.iv193.i, 0        ; 5 uses
  %.in.v.i278 = select i1 %i.aky, i64 860, i64 848
  %.in.i279 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in.v.i278
  %i.akz = load i32, ptr %.in.i279, align 4, !tbaa !29 ; 2 uses
  %.in130.v.i = select i1 %i.aky, i64 864, i64 852
  %.in130.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in130.v.i
  %i.ala = load i32, ptr %.in130.i, align 4, !tbaa !29 ; 2 uses
  %.in131.v.i = select i1 %i.aky, i64 904, i64 892
  %.in131.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in131.v.i
  %i.alb = load i32, ptr %.in131.i, align 4, !tbaa !29
  %.in132.v.i = select i1 %i.aky, i64 908, i64 896
  %.in132.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in132.v.i
  %i.alc = load i32, ptr %.in132.i, align 4, !tbaa !29
  %i.ald = zext i1 %i.aky to i64                  ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ald
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !29 ; 6 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.ald
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !29 ; 3 uses
  %i.ali = icmp sgt i32 %i.ala, 0
  br i1 %i.ali, label %.preheader152.lr.ph.i, label %._crit_edge181.i

.preheader152.lr.ph.i:                            ; preds = %bb.el
  %i.alj = icmp sgt i32 %i.akz, 0
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv193.i ; 4 uses
  br i1 %i.alj, label %.preheader152.us.i, label %._crit_edge181.i

.preheader152.us.i:                               ; preds = %.preheader152.lr.ph.i, %._crit_edge175.us.i
  %.0104180.us.i = phi i32 [ %i.aov, %._crit_edge175.us.i ], [ 0, %.preheader152.lr.ph.i ] ; 2 uses
  %.1179.us.i = phi i32 [ %.4.us.i, %._crit_edge175.us.i ], [ %.0105187.i, %.preheader152.lr.ph.i ]
  %.1145178.us.i = phi i32 [ %.5.us.i, %._crit_edge175.us.i ], [ %.0144185.i, %.preheader152.lr.ph.i ]
  %i.all = shl nuw nsw i32 %.0104180.us.i, 1
  br label %.preheader.us.i

bb.em:                                            ; preds = %.preheader.us.i, %.loopexit.us.i
  %.0102171.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.aoq, %.loopexit.us.i ] ; 3 uses
  %.3170.us.i = phi i32 [ %.2173.us.i, %.preheader.us.i ], [ %.4.us.i, %.loopexit.us.i ] ; 3 uses
  %.3147169.us.i = phi i32 [ %.2146172.us.i, %.preheader.us.i ], [ %.5.us.i, %.loopexit.us.i ] ; 4 uses
  %i.alm = lshr i32 %.0102171.us.i, 1             ; 2 uses
  %i.aln = add nuw nsw i32 %i.alm, %i.aos         ; 2 uses
  %i.alo = add nuw nsw i32 %i.alm, %i.all
  %i.alp = and i32 %.0102171.us.i, 1
  %i.alq = xor i32 %i.alo, %i.alp                 ; 2 uses
  %.not133.us.i = icmp slt i32 %i.aln, %i.alb
  %.not134.us.i = icmp slt i32 %i.alq, %i.alc
  %or.cond.us.i = select i1 %.not133.us.i, i1 %.not134.us.i, i1 false
  br i1 %or.cond.us.i, label %bb.en, label %.loopexit.us.i

bb.en:                                            ; preds = %bb.em
  %i.alr = load ptr, ptr %i.akw, align 16, !tbaa !90
  %i.als = add nsw i32 %.3170.us.i, 1             ; 3 uses
  %i.alt = sext i32 %.3170.us.i to i64
  %i.alu = getelementptr inbounds i8, ptr %i.alr, i64 %i.alt
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !51
  switch i8 %i.alv, label %bb.ep [
    i8 2, label %bb.eq
    i8 1, label %bb.eo
  ]

bb.eo:                                            ; preds = %bb.en
  %i.alw = zext nneg i32 %.3147169.us.i to i64
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr @block_pattern_vlc, i64 %i.alw
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !108
  %i.alz = load i32, ptr %i.t, align 8, !tbaa !50 ; 3 uses
  %i.ama = lshr i32 %i.alz, 3
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aou, i64 %i.amb
  %i.amd = load i32, ptr %i.amc, align 1, !tbaa !51
  %i.ame = tail call i32 @llvm.bswap.i32(i32 %i.amd)
  %i.amf = and i32 %i.alz, 7
  %i.amg = shl i32 %i.ame, %i.amf
  %i.amh = lshr i32 %i.amg, 27
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.ami ; 2 uses
  %i.amk = load i16, ptr %i.amj, align 2, !tbaa !51 ; 2 uses
  %i.aml = zext i16 %i.amk to i32
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 2
  %i.amn = load i16, ptr %i.amm, align 2, !tbaa !51
  %i.amo = sext i16 %i.amn to i32
  %i.amp = add i32 %i.alz, %i.amo
  %i.amq = tail call i32 @llvm.umin.i32(i32 %i.aot, i32 %i.amp)
  store i32 %i.amq, ptr %i.t, align 8, !tbaa !50
  %i.amr = sext i16 %i.amk to i64
  %i.ams = getelementptr inbounds i8, ptr @vp4_block_pattern_table_selector, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !51
  %i.amu = zext i8 %i.amt to i32
  %i.amv = add nuw nsw i32 %i.aml, 1
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %.4148.us.i = phi i32 [ %.3147169.us.i, %bb.ep ], [ %.3147169.us.i, %bb.en ], [ %i.amu, %bb.eo ] ; 3 uses
  %.0101.us.i = phi i32 [ 0, %bb.ep ], [ 15, %bb.en ], [ %i.amv, %bb.eo ] ; 4 uses
  %i.amw = shl nuw nsw i32 %i.aln, 1              ; 4 uses
  %i.amx = shl nuw nsw i32 %i.alq, 1              ; 5 uses
  %.not135.us.i = icmp slt i32 %i.amw, %i.alf     ; 2 uses
  %.not136.us.i = icmp slt i32 %i.amx, %i.alh     ; 2 uses
  %or.cond.i281 = select i1 %.not135.us.i, i1 %.not136.us.i, i1 false
  br i1 %or.cond.i281, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.amy = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.amz = mul nuw nsw i32 %i.amx, %i.alf
  %i.ana = add i32 %i.amz, %i.amw
  %i.anb = add i32 %i.ana, %i.amy
  %i.anc = trunc i32 %.0101.us.i to i8
  %i.and = and i8 %i.anc, 8
  %i.ane = xor i8 %i.and, 8
  %i.anf = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.ang = sext i32 %i.anb to i64
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.anf, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 2
  store i8 %i.ane, ptr %i.ani, align 2, !tbaa !102
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.anj = or disjoint i32 %i.amw, 1              ; 3 uses
  %.not135.us.1.i = icmp slt i32 %i.anj, %i.alf   ; 2 uses
  %or.cond218.i = select i1 %.not135.us.1.i, i1 %.not136.us.i, i1 false
  br i1 %or.cond218.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ank = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.anl = mul nuw nsw i32 %i.amx, %i.alf
  %i.anm = add i32 %i.anl, %i.anj
  %i.ann = add i32 %i.anm, %i.ank
  %i.ano = and i32 %.0101.us.i, 4
  %.not137.us.1.i = icmp eq i32 %i.ano, 0
  %i.anp = select i1 %.not137.us.1.i, i8 8, i8 0
  %i.anq = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.anr = sext i32 %i.ann to i64
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.anq, i64 %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 2
  store i8 %i.anp, ptr %i.ant, align 2, !tbaa !102
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  br i1 %.not135.us.i, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.anu = or disjoint i32 %i.amx, 1              ; 2 uses
  %.not136.us.2.i = icmp slt i32 %i.anu, %i.alh
  br i1 %.not136.us.2.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.anv = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.anw = mul nsw i32 %i.anu, %i.alf
  %i.anx = add i32 %i.anw, %i.amw
  %i.any = add i32 %i.anx, %i.anv
  %i.anz = and i32 %.0101.us.i, 2
  %.not137.us.2.i = icmp eq i32 %i.anz, 0
  %i.aoa = select i1 %.not137.us.2.i, i8 8, i8 0
  %i.aob = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.aoc = sext i32 %i.any to i64
  %i.aod = getelementptr inbounds [4 x i8], ptr %i.aob, i64 %i.aoc
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 2
  store i8 %i.aoa, ptr %i.aoe, align 2, !tbaa !102
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  br i1 %.not135.us.1.i, label %bb.ey, label %.loopexit.us.i

bb.ey:                                            ; preds = %bb.ex
  %i.aof = or disjoint i32 %i.amx, 1              ; 2 uses
  %.not136.us.3.i = icmp slt i32 %i.aof, %i.alh
  br i1 %.not136.us.3.i, label %bb.ez, label %.loopexit.us.i

bb.ez:                                            ; preds = %bb.ey
  %i.aog = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.aoh = mul nsw i32 %i.aof, %i.alf
  %i.aoi = add i32 %i.aoh, %i.anj
  %i.aoj = add i32 %i.aoi, %i.aog
  %i.aok = and i32 %.0101.us.i, 1
  %.not137.us.3.i = icmp eq i32 %i.aok, 0
  %i.aol = select i1 %.not137.us.3.i, i8 8, i8 0
  %i.aom = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.aon = sext i32 %i.aoj to i64
  %i.aoo = getelementptr inbounds [4 x i8], ptr %i.aom, i64 %i.aon
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 2
  store i8 %i.aol, ptr %i.aop, align 2, !tbaa !102
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.em
  %.5.us.i = phi i32 [ %.3147169.us.i, %bb.em ], [ %.4148.us.i, %bb.ez ], [ %.4148.us.i, %bb.ey ], [ %.4148.us.i, %bb.ex ] ; 4 uses
  %.4.us.i = phi i32 [ %.3170.us.i, %bb.em ], [ %i.als, %bb.ez ], [ %i.als, %bb.ey ], [ %i.als, %bb.ex ] ; 4 uses
  %i.aoq = add nuw nsw i32 %.0102171.us.i, 1      ; 2 uses
  %exitcond.not.i280 = icmp eq i32 %i.aoq, 4
  br i1 %exitcond.not.i280, label %bb.fa, label %bb.em, !llvm.loop !110

bb.fa:                                            ; preds = %.loopexit.us.i
  %i.aor = add nuw nsw i32 %.0103174.us.i, 1      ; 2 uses
  %exitcond191.not.i = icmp eq i32 %i.aor, %i.akz
  br i1 %exitcond191.not.i, label %._crit_edge175.us.i, label %.preheader.us.i, !llvm.loop !111

.preheader.us.i:                                  ; preds = %bb.fa, %.preheader152.us.i
  %.0103174.us.i = phi i32 [ 0, %.preheader152.us.i ], [ %i.aor, %bb.fa ] ; 2 uses
  %.2173.us.i = phi i32 [ %.1179.us.i, %.preheader152.us.i ], [ %.4.us.i, %bb.fa ]
  %.2146172.us.i = phi i32 [ %.1145178.us.i, %.preheader152.us.i ], [ %.5.us.i, %bb.fa ]
  %i.aos = shl nuw nsw i32 %.0103174.us.i, 1
  %i.aot = load i32, ptr %i.s, align 8
  %i.aou = load ptr, ptr %4, align 8
  br label %bb.em

._crit_edge175.us.i:                              ; preds = %bb.fa
  %i.aov = add nuw nsw i32 %.0104180.us.i, 1      ; 2 uses
  %exitcond192.not.i = icmp eq i32 %i.aov, %i.ala
  br i1 %exitcond192.not.i, label %._crit_edge181.i, label %.preheader152.us.i, !llvm.loop !112

._crit_edge181.i:                                 ; preds = %._crit_edge175.us.i, %.preheader152.lr.ph.i, %bb.el
  %.1145.lcssa.i = phi i32 [ %.0144185.i, %bb.el ], [ %.0144185.i, %.preheader152.lr.ph.i ], [ %.5.us.i, %._crit_edge175.us.i ]
  %.1.lcssa.i = phi i32 [ %.0105187.i, %bb.el ], [ %.0105187.i, %.preheader152.lr.ph.i ], [ %.4.us.i, %._crit_edge175.us.i ]
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next194.i, 3
  br i1 %exitcond196.not.i, label %vp4_unpack_macroblocks.exit, label %bb.el, !llvm.loop !113

vp4_unpack_macroblocks.exit:                      ; preds = %._crit_edge181.i, %unpack_superblocks.exit
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %.not.i287 = icmp eq i32 %.pr, 0
  br i1 %.not.i287, label %bb.fc, label %.preheader166.i

.preheader166.i:                                  ; preds = %vp4_unpack_macroblocks.exit.thread346, %vp4_unpack_macroblocks.exit
  %i.aow = load i32, ptr %i.rf, align 4, !tbaa !89 ; 3 uses
  %i.aox = icmp sgt i32 %i.aow, 0
  br i1 %i.aox, label %.lr.ph.i288, label %.loopexit363

.lr.ph.i288:                                      ; preds = %.preheader166.i
  %i.aoy = load ptr, ptr %i.az, align 8, !tbaa !60 ; 9 uses
  %wide.trip.count.i289 = zext nneg i32 %i.aow to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i289, 7    ; 3 uses
  %i.aoz = icmp ult i32 %i.aow, 8
  br i1 %i.aoz, label %.epil.preheader, label %.lr.ph.i288.new

.lr.ph.i288.new:                                  ; preds = %.lr.ph.i288
  %unroll_iter = and i64 %wide.trip.count.i289, 2147483640
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %.lr.ph.i288.new
  %indvars.iv.i290 = phi i64 [ 0, %.lr.ph.i288.new ], [ %indvars.iv.next.i291.7, %bb.fb ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i288.new ], [ %niter.next.7, %bb.fb ]
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 2
  store i8 1, ptr %i.apb, align 2, !tbaa !102
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 6
  store i8 1, ptr %i.apd, align 2, !tbaa !102
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 10
  store i8 1, ptr %i.apf, align 2, !tbaa !102
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 14
  store i8 1, ptr %i.aph, align 2, !tbaa !102
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 18
  store i8 1, ptr %i.apj, align 2, !tbaa !102
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 22
  store i8 1, ptr %i.apl, align 2, !tbaa !102
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 26
  store i8 1, ptr %i.apn, align 2, !tbaa !102
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 30
  store i8 1, ptr %i.app, align 2, !tbaa !102
  %indvars.iv.next.i291.7 = add nuw nsw i64 %indvars.iv.i290, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit363.loopexit750.unr-lcssa, label %bb.fb, !llvm.loop !114

bb.fc:                                            ; preds = %vp4_unpack_macroblocks.exit
  %i.apq = load i32, ptr %i.t, align 8, !tbaa !50 ; 3 uses
  %i.apr = load i32, ptr %i.s, align 8, !tbaa !49 ; 9 uses
  %i.aps = load ptr, ptr %4, align 8, !tbaa !46   ; 9 uses
  %i.apt = lshr i32 %i.apq, 3
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.apu
  %i.apw = load i32, ptr %i.apv, align 1, !tbaa !51
  %i.apx = tail call i32 @llvm.bswap.i32(i32 %i.apw)
  %i.apy = and i32 %i.apq, 7
  %i.apz = shl i32 %i.apx, %i.apy
  %i.aqa = lshr i32 %i.apz, 29                    ; 3 uses
  %i.aqb = add i32 %i.apq, 3
  %i.aqc = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.aqb) ; 4 uses
  store i32 %i.aqc, ptr %i.t, align 8, !tbaa !50
  %i.aqd = icmp eq i32 %i.aqa, 0
  br i1 %i.aqd, label %.preheader165.preheader.i, label %bb.fd

.preheader165.preheader.i:                        ; preds = %bb.fc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !tbaa !29
  %i.aqe = lshr i32 %i.aqc, 3
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqf
  %i.aqh = load i32, ptr %i.aqg, align 1, !tbaa !51
  %i.aqi = tail call i32 @llvm.bswap.i32(i32 %i.aqh)
  %i.aqj = and i32 %i.aqc, 7
  %i.aqk = shl i32 %i.aqi, %i.aqj
  %i.aql = lshr i32 %i.aqk, 29
  %i.aqm = add i32 %i.aqc, 3
  %i.aqn = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.aqm) ; 4 uses
  store i32 %i.aqn, ptr %i.t, align 8, !tbaa !50
  %i.aqo = zext nneg i32 %i.aql to i64
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aqo
  store i32 0, ptr %i.aqp, align 4, !tbaa !29
  %i.aqq = lshr i32 %i.aqn, 3
  %i.aqr = zext nneg i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqr
  %i.aqt = load i32, ptr %i.aqs, align 1, !tbaa !51
  %i.aqu = tail call i32 @llvm.bswap.i32(i32 %i.aqt)
  %i.aqv = and i32 %i.aqn, 7
  %i.aqw = shl i32 %i.aqu, %i.aqv
  %i.aqx = lshr i32 %i.aqw, 29
  %i.aqy = add i32 %i.aqn, 3
  %i.aqz = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.aqy) ; 4 uses
  store i32 %i.aqz, ptr %i.t, align 8, !tbaa !50
  %i.ara = zext nneg i32 %i.aqx to i64
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ara
  store i32 1, ptr %i.arb, align 4, !tbaa !29
  %i.arc = lshr i32 %i.aqz, 3
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.ard
  %i.arf = load i32, ptr %i.are, align 1, !tbaa !51
  %i.arg = tail call i32 @llvm.bswap.i32(i32 %i.arf)
  %i.arh = and i32 %i.aqz, 7
  %i.ari = shl i32 %i.arg, %i.arh
end_hunk_0
