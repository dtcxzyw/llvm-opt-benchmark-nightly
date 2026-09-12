Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a

bb.eg:                                            ; preds = %bb.ek, %.lr.ph165.i
  %i.akh = phi i32 [ %i.aka, %.lr.ph165.i ], [ %i.akr, %bb.ek ]
  %indvars.iv.i284 = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i285, %bb.ek ] ; 3 uses
  %.0111162.i = phi i32 [ %i.ajz, %.lr.ph165.i ], [ %.2113.i, %bb.ek ] ; 3 uses
  %.1115161.i = phi i32 [ %i.akg, %.lr.ph165.i ], [ %.3117.i, %bb.ek ] ; 3 uses
  %i.aki = load ptr, ptr %i.ajc, align 16, !tbaa !60 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %indvars.iv.i284
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !49
  %.not138.i = icmp eq i8 %i.akk, 0
  br i1 %.not138.i, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %.not139.i = icmp eq i32 %.0111162.i, 0
  br i1 %.not139.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.akl = xor i32 %.1115161.i, 1
  %i.akm = call fastcc i32 @vp4_get_mb_count(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %4)
  %.pre.i286 = load ptr, ptr %i.ajc, align 16, !tbaa !60
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.akn = phi ptr [ %i.aki, %bb.eh ], [ %.pre.i286, %bb.ei ]
  %.2116.i = phi i32 [ %.1115161.i, %bb.eh ], [ %i.akl, %bb.ei ] ; 2 uses
  %.1112.i = phi i32 [ %.0111162.i, %bb.eh ], [ %i.akm, %bb.ei ]
  %i.ako = trunc nuw nsw i32 %.2116.i to i8
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akn, i64 %indvars.iv.i284
  store i8 %i.ako, ptr %i.akp, align 1, !tbaa !49
  %i.akq = add nsw i32 %.1112.i, -1
  %.pre197.i = load i32, ptr %i.aiv, align 16, !tbaa !69
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg
  %i.akr = phi i32 [ %i.akh, %bb.eg ], [ %.pre197.i, %bb.ej ] ; 2 uses
  %.3117.i = phi i32 [ %.1115161.i, %bb.eg ], [ %.2116.i, %bb.ej ]
  %.2113.i = phi i32 [ %.0111162.i, %bb.eg ], [ %i.akq, %bb.ej ] ; 2 uses
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %i.aks = sext i32 %i.akr to i64
  %i.akt = icmp slt i64 %indvars.iv.next.i285, %i.aks
  br i1 %i.akt, label %bb.eg, label %._crit_edge166.i, !llvm.loop !117

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
  %i.alr = load ptr, ptr %i.akw, align 16, !tbaa !60
  %i.als = add nsw i32 %.3170.us.i, 1             ; 3 uses
  %i.alt = sext i32 %.3170.us.i to i64
  %i.alu = getelementptr inbounds i8, ptr %i.alr, i64 %i.alt
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !49
  switch i8 %i.alv, label %bb.ep [
    i8 2, label %bb.eq
    i8 1, label %bb.eo
  ]

bb.eo:                                            ; preds = %bb.en
  %i.alw = zext nneg i32 %.3147169.us.i to i64
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr @block_pattern_vlc, i64 %i.alw
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !71
  %i.alz = load i32, ptr %i.t, align 8, !tbaa !48 ; 3 uses
  %i.ama = lshr i32 %i.alz, 3
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aou, i64 %i.amb
  %i.amd = load i32, ptr %i.amc, align 1, !tbaa !49
  %i.ame = tail call i32 @llvm.bswap.i32(i32 %i.amd)
  %i.amf = and i32 %i.alz, 7
  %i.amg = shl i32 %i.ame, %i.amf
  %i.amh = lshr i32 %i.amg, 27
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.ami ; 2 uses
  %i.amk = load i16, ptr %i.amj, align 2, !tbaa !49 ; 2 uses
  %i.aml = zext i16 %i.amk to i32
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 2
  %i.amn = load i16, ptr %i.amm, align 2, !tbaa !49
  %i.amo = sext i16 %i.amn to i32
  %i.amp = add i32 %i.alz, %i.amo
  %i.amq = tail call i32 @llvm.umin.i32(i32 %i.aot, i32 %i.amp)
  store i32 %i.amq, ptr %i.t, align 8, !tbaa !48
  %i.amr = sext i16 %i.amk to i64
  %i.ams = getelementptr inbounds i8, ptr @vp4_block_pattern_table_selector, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !49
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
  %i.anf = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.ang = sext i32 %i.anb to i64
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.anf, i64 %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 2
  store i8 %i.ane, ptr %i.ani, align 2, !tbaa !68
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
  %i.anq = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.anr = sext i32 %i.ann to i64
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.anq, i64 %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 2
  store i8 %i.anp, ptr %i.ant, align 2, !tbaa !68
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  br i1 %.not135.us.i, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.anu = or disjoint i32 %i.amx, 1              ; 2 uses
  %.not136.us.2.i = icmp slt i32 %i.anu, %i.alh
  br i1 %.not136.us.2.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.anv = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.anw = mul nuw nsw i32 %i.anu, %i.alf
  %i.anx = add i32 %i.anw, %i.amw
  %i.any = add i32 %i.anx, %i.anv
  %i.anz = and i32 %.0101.us.i, 2
  %.not137.us.2.i = icmp eq i32 %i.anz, 0
  %i.aoa = select i1 %.not137.us.2.i, i8 8, i8 0
  %i.aob = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.aoc = sext i32 %i.any to i64
  %i.aod = getelementptr inbounds [4 x i8], ptr %i.aob, i64 %i.aoc
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 2
  store i8 %i.aoa, ptr %i.aoe, align 2, !tbaa !68
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  br i1 %.not135.us.1.i, label %bb.ey, label %.loopexit.us.i

bb.ey:                                            ; preds = %bb.ex
  %i.aof = or disjoint i32 %i.amx, 1              ; 2 uses
  %.not136.us.3.i = icmp slt i32 %i.aof, %i.alh
  br i1 %.not136.us.3.i, label %bb.ez, label %.loopexit.us.i

bb.ez:                                            ; preds = %bb.ey
  %i.aog = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.aoh = mul nuw nsw i32 %i.aof, %i.alf
  %i.aoi = add i32 %i.aoh, %i.anj
  %i.aoj = add i32 %i.aoi, %i.aog
  %i.aok = and i32 %.0101.us.i, 1
  %.not137.us.3.i = icmp eq i32 %i.aok, 0
  %i.aol = select i1 %.not137.us.3.i, i8 8, i8 0
  %i.aom = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.aon = sext i32 %i.aoj to i64
  %i.aoo = getelementptr inbounds [4 x i8], ptr %i.aom, i64 %i.aon
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 2
  store i8 %i.aol, ptr %i.aop, align 2, !tbaa !68
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.em
  %.5.us.i = phi i32 [ %.3147169.us.i, %bb.em ], [ %.4148.us.i, %bb.ez ], [ %.4148.us.i, %bb.ey ], [ %.4148.us.i, %bb.ex ] ; 4 uses
  %.4.us.i = phi i32 [ %.3170.us.i, %bb.em ], [ %i.als, %bb.ez ], [ %i.als, %bb.ey ], [ %i.als, %bb.ex ] ; 4 uses
  %i.aoq = add nuw nsw i32 %.0102171.us.i, 1      ; 2 uses
  %exitcond.not.i280 = icmp eq i32 %i.aoq, 4
  br i1 %exitcond.not.i280, label %bb.fa, label %bb.em, !llvm.loop !118

bb.fa:                                            ; preds = %.loopexit.us.i
  %i.aor = add nuw nsw i32 %.0103174.us.i, 1      ; 2 uses
  %exitcond191.not.i = icmp eq i32 %i.aor, %i.akz
  br i1 %exitcond191.not.i, label %._crit_edge175.us.i, label %.preheader.us.i, !llvm.loop !119

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
  br i1 %exitcond192.not.i, label %._crit_edge181.i, label %.preheader152.us.i, !llvm.loop !120

._crit_edge181.i:                                 ; preds = %._crit_edge175.us.i, %.preheader152.lr.ph.i, %bb.el
  %.1145.lcssa.i = phi i32 [ %.0144185.i, %bb.el ], [ %.0144185.i, %.preheader152.lr.ph.i ], [ %.5.us.i, %._crit_edge175.us.i ]
  %.1.lcssa.i = phi i32 [ %.0105187.i, %bb.el ], [ %.0105187.i, %.preheader152.lr.ph.i ], [ %.4.us.i, %._crit_edge175.us.i ]
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next194.i, 3
  br i1 %exitcond196.not.i, label %vp4_unpack_macroblocks.exit, label %bb.el, !llvm.loop !121

vp4_unpack_macroblocks.exit:                      ; preds = %._crit_edge181.i, %unpack_superblocks.exit
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %.not.i287 = icmp eq i32 %.pr, 0
  br i1 %.not.i287, label %bb.fc, label %.preheader166.i

.preheader166.i:                                  ; preds = %vp4_unpack_macroblocks.exit.thread346, %vp4_unpack_macroblocks.exit
  %i.aow = load i32, ptr %i.rf, align 4, !tbaa !59 ; 3 uses
  %i.aox = icmp sgt i32 %i.aow, 0
  br i1 %i.aox, label %.lr.ph.i288, label %.loopexit363

.lr.ph.i288:                                      ; preds = %.preheader166.i
  %i.aoy = load ptr, ptr %i.az, align 8, !tbaa !53 ; 9 uses
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
  store i8 1, ptr %i.apb, align 2, !tbaa !68
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 6
  store i8 1, ptr %i.apd, align 2, !tbaa !68
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 10
  store i8 1, ptr %i.apf, align 2, !tbaa !68
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 14
  store i8 1, ptr %i.aph, align 2, !tbaa !68
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 18
  store i8 1, ptr %i.apj, align 2, !tbaa !68
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 22
  store i8 1, ptr %i.apl, align 2, !tbaa !68
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 26
  store i8 1, ptr %i.apn, align 2, !tbaa !68
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i290
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 30
  store i8 1, ptr %i.app, align 2, !tbaa !68
  %indvars.iv.next.i291.7 = add nuw nsw i64 %indvars.iv.i290, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit363.loopexit750.unr-lcssa, label %bb.fb, !llvm.loop !122

bb.fc:                                            ; preds = %vp4_unpack_macroblocks.exit
  %i.apq = load i32, ptr %i.t, align 8, !tbaa !48 ; 3 uses
  %i.apr = load i32, ptr %i.s, align 8, !tbaa !47 ; 9 uses
  %i.aps = load ptr, ptr %4, align 8, !tbaa !45   ; 9 uses
  %i.apt = lshr i32 %i.apq, 3
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.apu
  %i.apw = load i32, ptr %i.apv, align 1, !tbaa !49
  %i.apx = tail call i32 @llvm.bswap.i32(i32 %i.apw)
  %i.apy = and i32 %i.apq, 7
  %i.apz = shl i32 %i.apx, %i.apy
  %i.aqa = lshr i32 %i.apz, 29                    ; 3 uses
  %i.aqb = add i32 %i.apq, 3
  %i.aqc = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.aqb) ; 4 uses
  store i32 %i.aqc, ptr %i.t, align 8, !tbaa !48
  %i.aqd = icmp eq i32 %i.aqa, 0
  br i1 %i.aqd, label %.preheader165.preheader.i, label %bb.fd

.preheader165.preheader.i:                        ; preds = %bb.fc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !tbaa !29
  %i.aqe = lshr i32 %i.aqc, 3
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqf
  %i.aqh = load i32, ptr %i.aqg, align 1, !tbaa !49
  %i.aqi = tail call i32 @llvm.bswap.i32(i32 %i.aqh)
  %i.aqj = and i32 %i.aqc, 7
  %i.aqk = shl i32 %i.aqi, %i.aqj
  %i.aql = lshr i32 %i.aqk, 29
  %i.aqm = add i32 %i.aqc, 3
  %i.aqn = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.aqm) ; 4 uses
  store i32 %i.aqn, ptr %i.t, align 8, !tbaa !48
  %i.aqo = zext nneg i32 %i.aql to i64
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aqo
  store i32 0, ptr %i.aqp, align 4, !tbaa !29
  %i.aqq = lshr i32 %i.aqn, 3
  %i.aqr = zext nneg i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.aqr
  %i.aqt = load i32, ptr %i.aqs, align 1, !tbaa !49
  %i.aqu = tail call i32 @llvm.bswap.i32(i32 %i.aqt)
  %i.aqv = and i32 %i.aqn, 7
  %i.aqw = shl i32 %i.aqu, %i.aqv
  %i.aqx = lshr i32 %i.aqw, 29
  %i.aqy = add i32 %i.aqn, 3
  %i.aqz = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.aqy) ; 4 uses
  store i32 %i.aqz, ptr %i.t, align 8, !tbaa !48
  %i.ara = zext nneg i32 %i.aqx to i64
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ara
  store i32 1, ptr %i.arb, align 4, !tbaa !29
  %i.arc = lshr i32 %i.aqz, 3
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.ard
  %i.arf = load i32, ptr %i.are, align 1, !tbaa !49
  %i.arg = tail call i32 @llvm.bswap.i32(i32 %i.arf)
  %i.arh = and i32 %i.aqz, 7
  %i.ari = shl i32 %i.arg, %i.arh
  %i.arj = lshr i32 %i.ari, 29
  %i.ark = add i32 %i.aqz, 3
  %i.arl = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.ark) ; 4 uses
  store i32 %i.arl, ptr %i.t, align 8, !tbaa !48
  %i.arm = zext nneg i32 %i.arj to i64
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.arm
  store i32 2, ptr %i.arn, align 4, !tbaa !29
  %i.aro = lshr i32 %i.arl, 3
  %i.arp = zext nneg i32 %i.aro to i64
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.arp
  %i.arr = load i32, ptr %i.arq, align 1, !tbaa !49
  %i.ars = tail call i32 @llvm.bswap.i32(i32 %i.arr)
  %i.art = and i32 %i.arl, 7
  %i.aru = shl i32 %i.ars, %i.art
  %i.arv = lshr i32 %i.aru, 29
  %i.arw = add i32 %i.arl, 3
  %i.arx = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.arw) ; 4 uses
  store i32 %i.arx, ptr %i.t, align 8, !tbaa !48
  %i.ary = zext nneg i32 %i.arv to i64
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ary
  store i32 3, ptr %i.arz, align 4, !tbaa !29
  %i.asa = lshr i32 %i.arx, 3
  %i.asb = zext nneg i32 %i.asa to i64
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.asb
  %i.asd = load i32, ptr %i.asc, align 1, !tbaa !49
  %i.ase = tail call i32 @llvm.bswap.i32(i32 %i.asd)
  %i.asf = and i32 %i.arx, 7
  %i.asg = shl i32 %i.ase, %i.asf
  %i.ash = lshr i32 %i.asg, 29
  %i.asi = add i32 %i.arx, 3
  %i.asj = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.asi) ; 4 uses
  store i32 %i.asj, ptr %i.t, align 8, !tbaa !48
  %i.ask = zext nneg i32 %i.ash to i64
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ask
  store i32 4, ptr %i.asl, align 4, !tbaa !29
  %i.asm = lshr i32 %i.asj, 3
  %i.asn = zext nneg i32 %i.asm to i64
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.asn
  %i.asp = load i32, ptr %i.aso, align 1, !tbaa !49
  %i.asq = tail call i32 @llvm.bswap.i32(i32 %i.asp)
  %i.asr = and i32 %i.asj, 7
  %i.ass = shl i32 %i.asq, %i.asr
  %i.ast = lshr i32 %i.ass, 29
  %i.asu = add i32 %i.asj, 3
  %i.asv = tail call i32 @llvm.umin.i32(i32 %i.apr, i32 %i.asu) ; 4 uses
  store i32 %i.asv, ptr %i.t, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@vp3_decode_frame:bb.a
  %i.dad = phi ptr [ %i.dac, %bb.km ], [ %i.dab, %bb.kl ]
  %i.dae = add nuw nsw i32 %.0199426, 1           ; 4 uses
  br label %bb.ks

bb.kn:                                            ; preds = %._crit_edge381.i
  %i.daf = load i32, ptr %i.cyo, align 4, !tbaa !73
  %i.dag = shl i32 32, %i.daf
  %i.dah = mul nsw i32 %i.dag, %i.dae
  %i.dai = load i32, ptr %i.cym, align 4, !tbaa !76 ; 3 uses
  %..i = call i32 @llvm.smin.i32(i32 %i.dah, i32 %i.dai)
  %i.daj = add nsw i32 %..i, -16                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.dak = load ptr, ptr %i.m, align 16, !tbaa !51 ; 2 uses
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 664
  %i.dam = load i32, ptr %i.dal, align 8, !tbaa !52
  %i.dan = and i32 %i.dam, 1
  %.not.i.i = icmp eq i32 %i.dan, 0
  br i1 %.not.i.i, label %bb.ko, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.kn
  %i.dao = load i32, ptr %i.cyn, align 16, !tbaa !77
  %.not36.i.i = icmp eq i32 %i.dao, 0
  %i.dap = sub nsw i32 %i.dai, %i.daj
  %i.daq = select i1 %.not36.i.i, i32 %i.daj, i32 %i.dap ; 2 uses
  %i.dar = icmp eq i32 %i.daq, %i.dai
  %i.das = add nsw i32 %i.daq, -1
  %i.dat = select i1 %i.dar, i32 2147483647, i32 %i.das
  call void @ff_progress_frame_report(ptr noundef nonnull %i.lq, i32 noundef %i.dat) #11
  %.pre41.i.i = load ptr, ptr %i.m, align 16, !tbaa !51
  br label %bb.ko

bb.ko:                                            ; preds = %._crit_edge.i.i, %bb.kn
  %i.dau = phi ptr [ %.pre41.i.i, %._crit_edge.i.i ], [ %i.dak, %bb.kn ] ; 2 uses
  %i.dav = getelementptr inbounds nuw i8, ptr %i.dau, i64 184
  %i.daw = load ptr, ptr %i.dav, align 8, !tbaa !80 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.daw, null
  br i1 %.not37.i.i, label %render_slice.exit, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.dax = load i32, ptr %i.czs, align 4, !tbaa !78 ; 2 uses
  %i.day = sub nsw i32 %i.daj, %i.dax
  store i32 %i.daj, ptr %i.czs, align 4, !tbaa !78
  %i.daz = load i32, ptr %i.cyn, align 16, !tbaa !77
  %.not38.i.i = icmp eq i32 %i.daz, 0
  br i1 %.not38.i.i, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.dba = load i32, ptr %i.cym, align 4, !tbaa !76
  %i.dbb = sub i32 %i.dba, %i.daj
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.035.i.i = phi i32 [ %i.dax, %bb.kp ], [ %i.dbb, %bb.kq ] ; 3 uses
  %i.dbc = load i32, ptr %i.cyo, align 4, !tbaa !73
  %i.dbd = ashr i32 %.035.i.i, %i.dbc             ; 2 uses
  %i.dbe = load ptr, ptr %i.lq, align 8, !tbaa !58 ; 4 uses
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dbe, i64 64
  %i.dbg = load i32, ptr %i.dbf, align 8, !tbaa !29
  %i.dbh = mul nsw i32 %i.dbg, %.035.i.i
  store i32 %i.dbh, ptr %i.b, align 16, !tbaa !29
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbe, i64 68
  %i.dbj = load i32, ptr %i.dbi, align 4, !tbaa !29
  %i.dbk = mul nsw i32 %i.dbj, %i.dbd
  store i32 %i.dbk, ptr %i.cyk, align 4, !tbaa !29
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbe, i64 72
  %i.dbm = load i32, ptr %i.dbl, align 8, !tbaa !29
  %i.dbn = mul nsw i32 %i.dbm, %i.dbd
  store i32 %i.dbn, ptr %i.cyl, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep.i.i, i8 0, i64 20, i1 false), !tbaa !29
  call void %i.daw(ptr noundef nonnull %i.dau, ptr noundef %i.dbe, ptr noundef nonnull %i.b, i32 noundef %.035.i.i, i32 noundef 3, i32 noundef %i.day) #11, !inline_history !131
  br label %render_slice.exit

bb.ks:                                            ; preds = %._crit_edge381.i, %.preheader326.i
  %indvars.iv436.i = phi i64 [ 0, %.preheader326.i ], [ %indvars.iv.next437.i, %._crit_edge381.i ] ; 14 uses
  %.0242392.i = phi i32 [ -559038737, %.preheader326.i ], [ %.1243.lcssa.i, %._crit_edge381.i ] ; 4 uses
  %.0247391.i = phi i32 [ -559038737, %.preheader326.i ], [ %.1248.lcssa.i, %._crit_edge381.i ] ; 4 uses
  %i.dbo = load ptr, ptr %i.lq, align 8, !tbaa !58 ; 2 uses
  %i.dbp = getelementptr inbounds nuw [8 x i8], ptr %i.dbo, i64 %indvars.iv436.i
  %i.dbq = load ptr, ptr %i.dbp, align 8, !tbaa !43
  %i.dbr = getelementptr inbounds nuw [4 x i8], ptr %i.cyp, i64 %indvars.iv436.i
  %i.dbs = load i32, ptr %i.dbr, align 4, !tbaa !29
  %i.dbt = sext i32 %i.dbs to i64                 ; 3 uses
  %i.dbu = getelementptr inbounds i8, ptr %i.dbq, i64 %i.dbt ; 5 uses
  %i.dbv = getelementptr inbounds nuw [8 x i8], ptr %i.daa, i64 %indvars.iv436.i
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !43 ; 2 uses
  %i.dbx = getelementptr inbounds i8, ptr %i.dbw, i64 %i.dbt
  %i.dby = getelementptr inbounds nuw [8 x i8], ptr %i.dad, i64 %indvars.iv436.i
  %i.dbz = load ptr, ptr %i.dby, align 8, !tbaa !43 ; 2 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dbo, i64 64
  %i.dcb = getelementptr inbounds nuw [4 x i8], ptr %i.dca, i64 %indvars.iv436.i
  %i.dcc = load i32, ptr %i.dcb, align 4, !tbaa !29
  %i.dcd = sext i32 %i.dcc to i64                 ; 2 uses
  %i.dce = load i32, ptr %i.cxd, align 8, !tbaa !81 ; 2 uses
  %.not317.i = icmp ne i64 %indvars.iv436.i, 0    ; 5 uses
  br i1 %.not317.i, label %.thread305.i, label %bb.kt

.thread305.i:                                     ; preds = %bb.ks
  %i.dcf = load i32, ptr %i.cxe, align 16, !tbaa !74
  %i.dcg = icmp ne i32 %i.dcf, 0
  %i.dch = zext i1 %i.dcg to i32
  %i.dci = ashr i32 %i.dce, %i.dch
  %i.dcj = load i32, ptr %i.cym, align 4, !tbaa !76
  %i.dck = load i32, ptr %i.cyo, align 4, !tbaa !73
  %i.dcl = icmp ne i32 %i.dck, 0
  %i.dcm = zext i1 %i.dcl to i32
  %i.dcn = ashr i32 %i.dcj, %i.dcm
  br label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.dco = load i32, ptr %i.cym, align 4, !tbaa !76
  %i.dcp = load i32, ptr %i.cyo, align 4, !tbaa !73 ; 2 uses
  %i.dcq = icmp ne i32 %i.dcp, 0
  %i.dcr = zext i1 %i.dcq to i32
  %i.dcs = shl nuw i32 %.0199426, %i.dcr          ; 2 uses
  %.not397.i = icmp eq i32 %i.dcp, 0
  %i.dct = select i1 %.not397.i, i32 1, i32 2
  %i.dcu = add i32 %i.dcs, %i.dct
  %i.dcv = load ptr, ptr %i.m, align 16, !tbaa !51
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcv, i64 664
  %i.dcx = load i32, ptr %i.dcw, align 8, !tbaa !52
  %i.dcy = trunc i32 %i.dcx to i1
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %.thread305.i
  %.in318.i = phi ptr [ %i.cxi, %.thread305.i ], [ %i.cxm, %bb.kt ]
  %.in319.i = phi ptr [ %i.cxh, %.thread305.i ], [ %i.cxl, %bb.kt ]
  %.in320.i = phi ptr [ %i.cxg, %.thread305.i ], [ %i.cxk, %bb.kt ]
  %i.dcz = phi i32 [ %i.dae, %.thread305.i ], [ %i.dcu, %bb.kt ] ; 3 uses
  %.in321.i = phi ptr [ %i.cxf, %.thread305.i ], [ %i.cxj, %bb.kt ]
  %i.dda = phi i32 [ %i.dcn, %.thread305.i ], [ %i.dco, %bb.kt ] ; 2 uses
  %i.ddb = phi i32 [ %i.dci, %.thread305.i ], [ %i.dce, %bb.kt ] ; 2 uses
  %i.ddc = phi i32 [ %.0199426, %.thread305.i ], [ %i.dcs, %bb.kt ] ; 3 uses
  %i.ddd = phi i1 [ false, %.thread305.i ], [ %i.dcy, %bb.kt ]
  %i.dde = load ptr, ptr %.in321.i, align 8, !tbaa !43 ; 2 uses
  %i.ddf = load i32, ptr %.in320.i, align 4, !tbaa !29 ; 2 uses
  %i.ddg = load i32, ptr %.in319.i, align 4, !tbaa !29 ; 2 uses
  %i.ddh = load i32, ptr %.in318.i, align 4, !tbaa !29 ; 2 uses
  %.in.i324 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %indvars.iv436.i
  %i.ddi = load i32, ptr %.in.i324, align 4, !tbaa !29
  %i.ddj = load i32, ptr %i.cyn, align 16, !tbaa !77
  %.not271.i = icmp eq i32 %i.ddj, 0
  %i.ddk = sub nsw i64 0, %i.dcd
  %spec.select.i325 = select i1 %.not271.i, i64 %i.ddk, i64 %i.dcd ; 23 uses
  %i.ddl = icmp slt i32 %i.ddc, %i.dcz
  br i1 %i.ddl, label %.preheader325.lr.ph.i, label %._crit_edge381.i

.preheader325.lr.ph.i:                            ; preds = %bb.ku
  %i.ddm = icmp sgt i32 %i.ddf, 0
  %i.ddn = trunc i64 %spec.select.i325 to i32
  %i.ddo = call i64 @llvm.smin.i64(i64 %spec.select.i325, i64 0)
  %.0232.idx.i = mul nsw i64 %i.ddo, -8           ; 2 uses
  %i.ddp = select i1 %.not317.i, i32 3, i32 1     ; 3 uses
  %i.ddq = select i1 %.not317.i, i32 8, i32 16    ; 2 uses
  %i.ddr = sub nsw i64 0, %spec.select.i325       ; 2 uses
  %i.dds = shl nsw i64 %spec.select.i325, 1
  %i.ddt = mul nsw i64 %spec.select.i325, 3
  %i.ddu = shl nsw i64 %spec.select.i325, 2
  %i.ddv = mul nsw i64 %spec.select.i325, 5
  %i.ddw = mul nsw i64 %spec.select.i325, 6
  %i.ddx = mul nsw i64 %spec.select.i325, 7
  %i.ddy = shl nsw i64 %spec.select.i325, 3
  %i.ddz = getelementptr inbounds nuw [512 x i8], ptr %i.cye, i64 %indvars.iv436.i ; 2 uses
  %i.dea = getelementptr inbounds nuw [128 x i8], ptr %i.cyf, i64 %indvars.iv436.i
  %invariant.gep.i326 = getelementptr inbounds nuw [128 x i8], ptr %i.cyi, i64 %indvars.iv436.i ; 2 uses
  %i.deb = add nsw i32 %i.ddh, -1                 ; 2 uses
  br i1 %i.ddm, label %.preheader325.us.preheader.i, label %.preheader325.lr.ph.split.i

.preheader325.us.preheader.i:                     ; preds = %.preheader325.lr.ph.i
  %i.dec = trunc nuw nsw i64 %indvars.iv436.i to i32
  br label %.preheader325.us.i

.preheader325.us.i:                               ; preds = %bb.my, %.preheader325.us.preheader.i
  %.0238380.us.i = phi i32 [ %i.dom, %bb.my ], [ %i.ddc, %.preheader325.us.preheader.i ] ; 3 uses
  %.1243379.us.i = phi i32 [ %.7.us.i, %bb.my ], [ %.0242392.i, %.preheader325.us.preheader.i ]
  %.1248378.us.i = phi i32 [ %.7254.us.i, %bb.my ], [ %.0247391.i, %.preheader325.us.preheader.i ]
  %i.ded = shl nsw i32 %.0238380.us.i, 2          ; 3 uses
  br label %.preheader.us.i329

bb.kv:                                            ; preds = %.preheader.us.i329, %bb.mu
  %indvars.iv.i330 = phi i64 [ 0, %.preheader.us.i329 ], [ %indvars.iv.next.i331, %bb.mu ] ; 2 uses
  %.3245372.us.i = phi i32 [ %.2244375.us.i, %.preheader.us.i329 ], [ %.7.us.i, %bb.mu ] ; 5 uses
  %.3250371.us.i = phi i32 [ %.2249374.us.i, %.preheader.us.i329 ], [ %.7254.us.i, %bb.mu ] ; 5 uses
  %i.dee = getelementptr inbounds nuw [2 x i8], ptr @hilbert_offset, i64 %indvars.iv.i330 ; 2 uses
  %i.def = load i8, ptr %i.dee, align 2, !tbaa !49
  %i.deg = zext i8 %i.def to i32
  %i.deh = add nuw nsw i32 %i.don, %i.deg         ; 3 uses
  %i.dei = getelementptr inbounds nuw i8, ptr %i.dee, i64 1
  %i.dej = load i8, ptr %i.dei, align 1, !tbaa !49
  %i.dek = zext i8 %i.dej to i32
  %i.del = add nsw i32 %i.ded, %i.dek             ; 4 uses
  %i.dem = mul nsw i32 %i.del, %i.ddg
  %i.den = add nsw i32 %i.dem, %i.deh             ; 3 uses
  %.not274.us.i = icmp slt i32 %i.deh, %i.ddg
  %.not275.us.i = icmp slt i32 %i.del, %i.ddh
  %or.cond288.us.i = select i1 %.not274.us.i, i1 %.not275.us.i, i1 false
  br i1 %or.cond288.us.i, label %bb.kw, label %bb.mu

bb.kw:                                            ; preds = %bb.kv
  %i.deo = add nsw i32 %i.den, %i.ddi
  %i.dep = shl nsw i32 %i.del, 3                  ; 3 uses
  %i.deq = shl nuw nsw i32 %i.deh, 3              ; 3 uses
  %i.der = mul i32 %i.dep, %i.ddn
  %i.des = add i32 %i.der, %i.deq                 ; 2 uses
  %.pre440.i = load ptr, ptr %i.az, align 8, !tbaa !53 ; 3 uses
  %i.det = sext i32 %i.deo to i64                 ; 4 uses
  br i1 %i.ddd, label %bb.kx, label %._crit_edge.i332

bb.kx:                                            ; preds = %bb.kw
  %i.deu = getelementptr inbounds [4 x i8], ptr %.pre440.i, i64 %i.det
  %i.dev = getelementptr inbounds nuw i8, ptr %i.deu, i64 2
  %i.dew = load i8, ptr %i.dev, align 2, !tbaa !68 ; 2 uses
  %.not276.us.i = icmp eq i8 %i.dew, 1
  br i1 %.not276.us.i, label %._crit_edge.i332, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.dex = sext i32 %i.den to i64
  %i.dey = getelementptr inbounds [2 x i8], ptr %i.dde, i64 %i.dex
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dey, i64 1
  %i.dfa = load i8, ptr %i.dez, align 1, !tbaa !49
  %i.dfb = sext i8 %i.dfa to i32                  ; 2 uses
  %i.dfc = shl nsw i32 %i.del, 4
  %i.dfd = load i32, ptr %i.cyo, align 4, !tbaa !73
  %i.dfe = ashr i32 %i.dfc, %i.dfd
  %i.dff = and i32 %i.dfb, 1
  %.off.i.us.i = add i8 %i.dew, -5
  %switch.i.us.i = icmp ult i8 %.off.i.us.i, 2
  %.0.v.i.us.i = select i1 %switch.i.us.i, i64 40, i64 56
  %.0.i.us.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.v.i.us.i
  %i.dfg = ashr i32 %i.dfb, 1
  %i.dfh = add nsw i32 %i.dfe, %i.dfg             ; 2 uses
  %i.dfi = call i32 @llvm.abs.i32(i32 %i.dfh, i1 true)
  %i.dfj = or disjoint i32 %i.dff, 8
  %i.dfk = add i32 %i.dfj, %i.dfh
  %..i.us.i = call i32 @llvm.smax.i32(i32 %i.dfi, i32 %i.dfk)
  call void @ff_progress_frame_await(ptr noundef nonnull %.0.i.us.i, i32 noundef %..i.us.i) #11
  %.pre.i336 = load ptr, ptr %i.az, align 8, !tbaa !53
  br label %._crit_edge.i332

._crit_edge.i332:                                 ; preds = %bb.ky, %bb.kx, %bb.kw
  %i.dfl = phi ptr [ %.pre440.i, %bb.kx ], [ %.pre.i336, %bb.ky ], [ %.pre440.i, %bb.kw ]
  %i.dfm = getelementptr inbounds [4 x i8], ptr %i.dfl, i64 %i.det
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfm, i64 2
  %i.dfo = load i8, ptr %i.dfn, align 2, !tbaa !68 ; 2 uses
  switch i8 %i.dfo, label %bb.la [
    i8 8, label %bb.kz
    i8 5, label %bb.lb
    i8 6, label %bb.lb
  ]

bb.kz:                                            ; preds = %._crit_edge.i332
  %i.dfp = load ptr, ptr %i.cxn, align 16, !tbaa !166
  %i.dfq = sext i32 %i.des to i64                 ; 2 uses
  %i.dfr = getelementptr inbounds i8, ptr %i.dbu, i64 %i.dfq
  %i.dfs = getelementptr inbounds i8, ptr %i.dbx, i64 %i.dfq
  call void %i.dfp(ptr noundef %i.dfr, ptr noundef %i.dfs, i64 noundef %spec.select.i325, i32 noundef 8) #11, !inline_history !132
  br label %bb.mu

bb.la:                                            ; preds = %._crit_edge.i332
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %._crit_edge.i332, %._crit_edge.i332
  %i.dft = phi ptr [ %i.dbw, %bb.la ], [ %i.dbz, %._crit_edge.i332 ], [ %i.dbz, %._crit_edge.i332 ]
  %i.dfu = getelementptr inbounds i8, ptr %i.dft, i64 %i.dbt
  %i.dfv = sext i32 %i.des to i64                 ; 5 uses
  %i.dfw = getelementptr inbounds i8, ptr %i.dfu, i64 %i.dfv ; 4 uses
  switch i8 %i.dfo, label %bb.lc [
    i8 5, label %bb.lu
    i8 1, label %bb.lu
    i8 0, label %bb.lu
  ]

bb.lc:                                            ; preds = %bb.lb
  %i.dfx = sext i32 %i.den to i64
  %i.dfy = getelementptr inbounds [2 x i8], ptr %i.dde, i64 %i.dfx ; 2 uses
  %i.dfz = load i8, ptr %i.dfy, align 1, !tbaa !49 ; 3 uses
  %i.dga = sext i8 %i.dfz to i32                  ; 5 uses
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dfy, i64 1
  %i.dgc = load i8, ptr %i.dgb, align 1, !tbaa !49 ; 3 uses
  %i.dgd = sext i8 %i.dgc to i32                  ; 5 uses
  %.pre441.i = load i32, ptr %i.rj, align 4, !tbaa !54
  %i.dge = icmp sgt i32 %.pre441.i, 1             ; 2 uses
  %or.cond.i335 = select i1 %.not317.i, i1 %i.dge, i1 false
  br i1 %or.cond.i335, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.dgf = ashr i32 %i.dga, 1
  %i.dgg = and i32 %i.dga, 1
  %i.dgh = or i32 %i.dgf, %i.dgg
  %i.dgi = ashr i32 %i.dgd, 1
  %i.dgj = and i32 %i.dgd, 1
  %i.dgk = or i32 %i.dgi, %i.dgj
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.4251.us.i = phi i32 [ %i.dgh, %bb.ld ], [ %i.dga, %bb.lc ] ; 5 uses
  %.4246.us.i = phi i32 [ %i.dgk, %bb.ld ], [ %i.dgd, %bb.lc ] ; 5 uses
  %i.dgl = ashr i32 %.4251.us.i, 1                ; 2 uses
  %i.dgm = add nsw i32 %i.dgl, %i.deq             ; 5 uses
  %i.dgn = ashr i32 %.4246.us.i, 1                ; 2 uses
  %i.dgo = add nsw i32 %i.dgn, %i.dep             ; 5 uses
  %i.dgp = and i32 %.4251.us.i, 1
  %i.dgq = sext i32 %i.dgl to i64
  %i.dgr = getelementptr inbounds i8, ptr %i.dfw, i64 %i.dgq
  %i.dgs = shl nsw i32 %.4246.us.i, 1
  %i.dgt = and i32 %i.dgs, 2
  %i.dgu = or disjoint i32 %i.dgt, %i.dgp         ; 3 uses
  %i.dgv = sext i32 %i.dgn to i64
  %i.dgw = mul nsw i64 %spec.select.i325, %i.dgv
  %i.dgx = getelementptr inbounds i8, ptr %i.dgr, i64 %i.dgw ; 4 uses
  br i1 %i.dge, label %bb.lf, label %.thread307.us.i

bb.lf:                                            ; preds = %bb.le
  %i.dgy = load ptr, ptr %i.ly, align 16, !tbaa !159
  %.0232.us.i = getelementptr inbounds nuw i8, ptr %i.dgy, i64 %.0232.idx.i ; 10 uses
  %i.dgz = load i32, ptr %i.cxd, align 8, !tbaa !81 ; 2 uses
  br i1 %.not317.i, label %bb.lg, label %.thread.i.us.i

bb.lg:                                            ; preds = %bb.lf
  %i.dha = load i32, ptr %i.cxe, align 16, !tbaa !74
  %i.dhb = icmp ne i32 %i.dha, 0
  %i.dhc = zext i1 %i.dhb to i32
  %i.dhd = ashr i32 %i.dgz, %i.dhc
  %i.dhe = load i32, ptr %i.cyo, align 4, !tbaa !73
  %i.dhf = icmp ne i32 %i.dhe, 0
  %i.dhg = zext i1 %i.dhf to i32
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.lg, %bb.lf
  %.rhs.trunc.i.us.i = phi i8 [ 4, %bb.lg ], [ 2, %bb.lf ] ; 2 uses
  %i.dhh = phi i32 [ %i.dhd, %bb.lg ], [ %i.dgz, %bb.lf ] ; 3 uses
  %i.dhi = phi i32 [ %i.dhg, %bb.lg ], [ 0, %bb.lf ]
  %i.dhj = load i32, ptr %i.cym, align 4, !tbaa !76
  %i.dhk = ashr i32 %i.dhj, %i.dhi                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dhl = sdiv i8 %i.dfz, %.rhs.trunc.i.us.i
  %.sext.i.us.i = sext i8 %i.dhl to i32           ; 2 uses
  %i.dhm = sdiv i8 %i.dgc, %.rhs.trunc.i.us.i
  %.sext122.i.us.i = sext i8 %i.dhm to i32        ; 2 uses
  %i.dhn = and i32 %i.ddp, %i.dga                 ; 2 uses
  %i.dho = and i32 %i.ddp, %i.dgd                 ; 2 uses
  %i.dhp = or i32 %i.dgd, %i.dga
  %i.dhq = and i32 %i.dhp, %i.ddp
  %or.cond.not.i.us.i = icmp eq i32 %i.dhq, 0
  br i1 %or.cond.not.i.us.i, label %bb.ln, label %bb.lh

bb.lh:                                            ; preds = %.thread.i.us.i
  %.not113.i.us.i = icmp eq i32 %i.dho, 0
  %.not112.i.us.i = icmp eq i32 %i.dhn, 0
  %.inv.i.us.i = icmp sgt i8 %i.dfz, 0
  %i.dhr = or i1 %.inv.i.us.i, %.not112.i.us.i
  %.098.v.i.us.i = select i1 %i.dhr, i32 -1, i32 -2
  %i.dhs = add nsw i32 %.098.v.i.us.i, %i.deq
  %.098.i.us.i = add i32 %i.dhs, %.sext.i.us.i    ; 2 uses
  %.inv116.i.us.i = icmp sgt i8 %i.dgc, 0
  %i.dht = or i1 %.inv116.i.us.i, %.not113.i.us.i
  %.097.v.i.us.i = select i1 %i.dht, i32 -1, i32 -2
  %i.dhu = add i32 %.097.v.i.us.i, %i.dep
  %.097.i.us.i = add i32 %i.dhu, %.sext122.i.us.i ; 2 uses
  %i.dhv = add nsw i32 %.098.i.us.i, %i.ddq       ; 2 uses
  %i.dhw = icmp slt i32 %i.dhv, 0
  br i1 %i.dhw, label %.thread311.us.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.dhx = add nsw i32 %.097.i.us.i, %i.ddq       ; 2 uses
  %i.dhy = icmp slt i32 %i.dhv, %i.dhh
  %i.dhz = icmp sgt i32 %i.dhx, -1
  %or.cond3.not125.i.us.i = select i1 %i.dhy, i1 %i.dhz, i1 false
  %.not117.i.us.i = icmp slt i32 %i.dhx, %i.dhk
  %or.cond.i.us.i = select i1 %or.cond3.not125.i.us.i, i1 %.not117.i.us.i, i1 false
  br i1 %or.cond.i.us.i, label %bb.lj, label %.thread311.us.i

bb.lj:                                            ; preds = %bb.li
  %i.dia = sub i32 6, %.098.i.us.i
  %i.dib = and i32 %i.dia, 7
  %i.dic = add nuw nsw i32 %i.dib, 2              ; 2 uses
  %i.did = sub i32 6, %.097.i.us.i
  %i.die = and i32 %i.did, 7
  %i.dif = add nuw nsw i32 %i.die, 2              ; 2 uses
  %i.dig = load ptr, ptr %i.cxp, align 16, !tbaa !167
  %i.dih = getelementptr inbounds i8, ptr %i.dgx, i64 %i.ddr
  %i.dii = getelementptr inbounds i8, ptr %i.dih, i64 -1
  %i.dij = add nsw i32 %i.dgm, -1
  %i.dik = add nsw i32 %i.dgo, -1
  call void %i.dig(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dii, i64 noundef 12, i64 noundef range(i64 -2147483648, 2147483649) %spec.select.i325, i32 noundef 12, i32 noundef 12, i32 noundef %i.dij, i32 noundef %i.dik, i32 noundef %i.dhh, i32 noundef %i.dhk) #11, !inline_history !133
  %i.dil = or disjoint i32 %i.dhn, 8
  %.not118.i.us.i = icmp samesign ugt i32 %i.dic, %i.dil
  br i1 %.not118.i.us.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.dim = zext nneg i32 %i.dic to i64
  %i.din = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dim
  call void @ff_vp3dsp_h_loop_filter_12(ptr noundef nonnull %i.din, i64 noundef 12, ptr noundef nonnull %i.cxo) #11
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.dio = or disjoint i32 %i.dho, 8
  %.not119.i.us.i = icmp samesign ugt i32 %i.dif, %i.dio
  br i1 %.not119.i.us.i, label %bb.ls, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.dip = mul nuw nsw i32 %i.dif, 12
end_hunk_1
