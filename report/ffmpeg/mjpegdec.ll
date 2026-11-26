Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegdec?download=true
inline.NumInlined: 62
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_mjpeg_decode_frame_from_buf:bb.a
  %i.ahe = add nuw nsw i32 %.0595783, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ahe, %.1597
  br i1 %exitcond.not, label %.loopexit743.loopexit, label %bb.fv, !llvm.loop !282

.loopexit743.loopexit:                            ; preds = %.loopexit739
  %.pre = load i32, ptr %i.bd, align 16, !tbaa !86
  br label %.loopexit743

.loopexit743:                                     ; preds = %.loopexit743.loopexit, %.preheader742, %bb.fq
  %i.ahf = phi i32 [ %.pre, %.loopexit743.loopexit ], [ %i.xi, %.preheader742 ], [ %i.xi, %bb.fq ] ; 2 uses
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = icmp slt i64 %indvars.iv.next857, %i.ahg
  br i1 %i.ahh, label %bb.fq, label %.loopexit745, !llvm.loop !283

.loopexit745:                                     ; preds = %.loopexit743, %.preheader744, %bb.fk
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.g, i64 936 ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !63
  %.not658 = icmp eq i32 %i.ahj, 0
  br i1 %.not658, label %.loopexit738, label %bb.gl

bb.gl:                                            ; preds = %.loopexit745
  %i.ahk = load i32, ptr %i.wp, align 8, !tbaa !101 ; 2 uses
  switch i32 %i.ahk, label %bb.gm [
    i32 14, label %bb.gn
    i32 5, label %bb.gn
    i32 13, label %bb.gn
    i32 4, label %bb.gn
    i32 12, label %bb.gn
    i32 0, label %bb.gn
    i32 31, label %bb.gn
    i32 32, label %bb.gn
    i32 79, label %bb.gn
    i32 33, label %bb.gn
    i32 93, label %bb.gn
    i32 71, label %bb.gn
    i32 111, label %bb.gn
  ]

bb.gm:                                            ; preds = %bb.gl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.29, i32 noundef 2734) #10
  call void @abort() #11
  unreachable

bb.gn:                                            ; preds = %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl
  %i.ahl = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.ahk, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not659 = icmp eq i32 %i.ahl, 0
  br i1 %.not659, label %bb.go, label %.critedge

bb.go:                                            ; preds = %bb.gn
  %i.ahm = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.ahn = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 116
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !336
  %i.ahq = call i32 @av_pix_fmt_count_planes(i32 noundef %i.ahp) #10
  %i.ahr = icmp eq i32 %i.ahm, %i.ahq
  br i1 %i.ahr, label %.preheader737, label %bb.gp

.preheader737:                                    ; preds = %bb.go
  %i.ahs = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.aht = icmp sgt i32 %i.ahs, 0
  br i1 %i.aht, label %.lr.ph799, label %.loopexit738

bb.gp:                                            ; preds = %bb.go
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.29, i32 noundef 2739) #10
  call void @abort() #11
  unreachable

.lr.ph799:                                        ; preds = %.preheader737, %.loopexit736
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %.loopexit736 ], [ 0, %.preheader737 ] ; 7 uses
  %i.ahu = load i32, ptr %i.bk, align 16, !tbaa !80 ; 2 uses
  %i.ahv = load i32, ptr %i.bl, align 4, !tbaa !81 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %indvars.iv864 ; 4 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !63 ; 3 uses
  %.not660 = icmp eq i8 %i.ahx, 0
  br i1 %.not660, label %.loopexit736, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph799
  %i.ahy = trunc i64 %indvars.iv864 to i32
  %i.ahz = add i32 %i.ahy, -1
  %or.cond9 = icmp ult i32 %i.ahz, 2
  br i1 %or.cond9, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.aia = load i32, ptr %i.b, align 4, !tbaa !55
  %i.aib = sub nsw i32 0, %i.ahu
  %i.aic = ashr i32 %i.aib, %i.aia
  %i.aid = sub nsw i32 0, %i.aic
  %i.aie = load i32, ptr %i.c, align 4, !tbaa !55
  %i.aif = sub nsw i32 0, %i.ahv
  %i.aig = ashr i32 %i.aif, %i.aie
  %i.aih = sub nsw i32 0, %i.aig
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.0592 = phi i32 [ %i.ahu, %bb.gq ], [ %i.aid, %bb.gr ]
  %.0591 = phi i32 [ %i.ahv, %bb.gq ], [ %i.aih, %bb.gr ] ; 2 uses
  %.0592.fr = freeze i32 %.0592                   ; 5 uses
  %i.aii = add nsw i32 %.0591, -1                 ; 5 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv864 ; 4 uses
  %.not661792 = icmp eq i32 %i.aii, 0
  br i1 %.not661792, label %.loopexit736, label %.lr.ph797

.lr.ph797:                                        ; preds = %bb.gs
  %i.aik = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.aik, i64 %indvars.iv864
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !66 ; 2 uses
  %i.ain = load i32, ptr %i.aij, align 4, !tbaa !55 ; 4 uses
  %i.aio = mul nsw i32 %i.ain, %i.aii
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds i8, ptr %i.aim, i64 %i.aip ; 3 uses
  %i.air = sext i32 %.0592.fr to i64              ; 3 uses
  %i.ais = icmp sgt i32 %.0592.fr, 0
  br i1 %i.ais, label %.lr.ph797.split.us.preheader, label %.lr.ph797.split.preheader

.lr.ph797.split.preheader:                        ; preds = %.lr.ph797
  %.not662.peel = icmp eq i8 %i.ahx, 2
  br i1 %.not662.peel, label %.loopexit735.peel, label %bb.gt

bb.gt:                                            ; preds = %.lr.ph797.split.preheader
  %i.ait = zext i8 %i.ahx to i32                  ; 2 uses
  %i.aiu = mul nsw i32 %i.aii, %i.ait
  %i.aiv = add nuw nsw i32 %i.ait, 1
  %i.aiw = sdiv i32 %i.aiu, %i.aiv
  %i.aix = mul nsw i32 %i.ain, %i.aiw
  %i.aiy = sext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds i8, ptr %i.aim, i64 %i.aiy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aiq, ptr align 1 %i.aiz, i64 %i.air, i1 false)
  %.pre904 = load i32, ptr %i.aij, align 4, !tbaa !55
  br label %.loopexit735.peel

.loopexit735.peel:                                ; preds = %bb.gt, %.lr.ph797.split.preheader
  %i.aja = phi i32 [ %i.ain, %.lr.ph797.split.preheader ], [ %.pre904, %bb.gt ] ; 2 uses
  %i.ajb = add nsw i32 %.0591, -2                 ; 2 uses
  %.not661.peel = icmp eq i32 %i.ajb, 0
  br i1 %.not661.peel, label %.loopexit736, label %.lr.ph797.split.peel.next

.lr.ph797.split.peel.next:                        ; preds = %.loopexit735.peel
  %i.ajc = sext i32 %i.aja to i64
  %i.ajd = sub nsw i64 0, %i.ajc
  %i.aje = getelementptr inbounds i8, ptr %i.aiq, i64 %i.ajd
  %.pre906 = load ptr, ptr %i.be, align 8, !tbaa !47
  %.pre908 = load i8, ptr %i.ahw, align 1, !tbaa !63
  br label %.lr.ph797.split

.lr.ph797.split.us.preheader:                     ; preds = %.lr.ph797
  %wide.trip.count = zext nneg i32 %.0592.fr to i64 ; 8 uses
  %min.iters.check1096 = icmp ult i32 %.0592.fr, 8
  %min.iters.check1100 = icmp ult i32 %.0592.fr, 32
  %i.ajf = and i64 %wide.trip.count, 24
  %n.vec1102 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n1111 = icmp eq i64 %n.vec1102, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ajf, 0
  %n.vec1112 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n1117 = icmp eq i64 %n.vec1112, %wide.trip.count
  %xtraiter1344 = and i64 %wide.trip.count, 1
  %lcmp.mod1345.not = icmp eq i64 %xtraiter1344, 0
  %i.ajg = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph797.split.us

.lr.ph797.split.us:                               ; preds = %.lr.ph797.split.us.preheader, %..loopexit735_crit_edge.us
  %i.ajh = phi i32 [ %i.aml, %..loopexit735_crit_edge.us ], [ %i.ain, %.lr.ph797.split.us.preheader ] ; 2 uses
  %.0590795.us = phi i32 [ %i.amp, %..loopexit735_crit_edge.us ], [ %i.aii, %.lr.ph797.split.us.preheader ] ; 4 uses
  %.0593793.us = phi ptr [ %i.amo, %..loopexit735_crit_edge.us ], [ %i.aiq, %.lr.ph797.split.us.preheader ] ; 8 uses
  %.0593793.us1094 = ptrtoaddr ptr %.0593793.us to i64 ; 2 uses
  %i.aji = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aji, i64 %indvars.iv864
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !66 ; 3 uses
  %i.ajl = ptrtoaddr ptr %i.ajk to i64            ; 2 uses
  %i.ajm = load i8, ptr %i.ahw, align 1, !tbaa !63 ; 2 uses
  %i.ajn = zext i8 %i.ajm to i32                  ; 3 uses
  %i.ajo = mul nsw i32 %.0590795.us, %i.ajn
  %i.ajp = add nuw nsw i32 %i.ajn, 1              ; 2 uses
  %i.ajq = sdiv i32 %i.ajo, %i.ajp
  %i.ajr = mul i32 %i.ajh, %i.ajq                 ; 2 uses
  %i.ajs = sext i32 %i.ajr to i64                 ; 2 uses
  %i.ajt = getelementptr inbounds i8, ptr %i.ajk, i64 %i.ajs ; 6 uses
  %i.aju = add nsw i32 %.0590795.us, 1
  %i.ajv = mul nsw i32 %i.aju, %i.ajn
  %i.ajw = sdiv i32 %i.ajv, %i.ajp
  %i.ajx = mul i32 %i.ajw, %i.ajh                 ; 2 uses
  %i.ajy = sext i32 %i.ajx to i64                 ; 2 uses
  %i.ajz = getelementptr inbounds i8, ptr %i.ajk, i64 %i.ajy ; 5 uses
  %.not662.us = icmp eq i8 %i.ajm, 2
  br i1 %.not662.us, label %iter.check, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph797.split.us
  %i.aka = icmp eq i32 %i.ajr, %i.ajx
  %i.akb = icmp eq i32 %.0590795.us, %i.aii
  %or.cond675.us = or i1 %i.aka, %i.akb
  br i1 %or.cond675.us, label %bb.gv, label %iter.check

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0593793.us, ptr align 1 %i.ajt, i64 %i.air, i1 false)
  br label %..loopexit735_crit_edge.us

iter.check:                                       ; preds = %bb.gu, %.lr.ph797.split.us
  br i1 %min.iters.check1096, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1097

vector.memcheck1097:                              ; preds = %iter.check
  %i.akc = add i64 %i.ajl, %i.ajs
  %i.akd = sub i64 %i.akc, %.0593793.us1094
  %diff.check = icmp ugt i64 %i.akd, -32
  %i.ake = add i64 %i.ajl, %i.ajy
  %i.akf = sub i64 %i.ake, %.0593793.us1094
  %diff.check1098 = icmp ugt i64 %i.akf, -32
  %conflict.rdx1099 = or i1 %diff.check, %diff.check1098
  br i1 %conflict.rdx1099, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1097
  br i1 %min.iters.check1100, label %vec.epilog.ph, label %vector.body1103

vector.body1103:                                  ; preds = %vector.main.loop.iter.check, %vector.body1103
  %index1104 = phi i64 [ %index.next1109, %vector.body1103 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %index1104 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %wide.load1105 = load <16 x i8>, ptr %i.akg, align 1, !tbaa !63
  %wide.load1106 = load <16 x i8>, ptr %i.akh, align 1, !tbaa !63
  %i.aki = zext <16 x i8> %wide.load1105 to <16 x i16>
  %i.akj = zext <16 x i8> %wide.load1106 to <16 x i16>
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %index1104 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 16
  %wide.load1107 = load <16 x i8>, ptr %i.akk, align 1, !tbaa !63
  %wide.load1108 = load <16 x i8>, ptr %i.akl, align 1, !tbaa !63
  %i.akm = zext <16 x i8> %wide.load1107 to <16 x i16>
  %i.akn = zext <16 x i8> %wide.load1108 to <16 x i16>
  %i.ako = add nuw nsw <16 x i16> %i.akm, %i.aki
  %i.akp = add nuw nsw <16 x i16> %i.akn, %i.akj
  %i.akq = lshr <16 x i16> %i.ako, splat (i16 1)
  %i.akr = lshr <16 x i16> %i.akp, splat (i16 1)
  %i.aks = trunc nuw <16 x i16> %i.akq to <16 x i8>
  %i.akt = trunc nuw <16 x i16> %i.akr to <16 x i8>
  %i.aku = getelementptr inbounds nuw i8, ptr %.0593793.us, i64 %index1104 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 16
  store <16 x i8> %i.aks, ptr %i.aku, align 1, !tbaa !63
  store <16 x i8> %i.akt, ptr %i.akv, align 1, !tbaa !63
  %index.next1109 = add nuw i64 %index1104, 32    ; 2 uses
  %i.akw = icmp eq i64 %index.next1109, %n.vec1102
  br i1 %i.akw, label %middle.block1110, label %vector.body1103, !llvm.loop !284

middle.block1110:                                 ; preds = %vector.body1103
  br i1 %cmp.n1111, label %..loopexit735_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1110
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !337

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1102, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1116, %vec.epilog.vector.body ] ; 4 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %index1113
  %wide.load1114 = load <8 x i8>, ptr %i.akx, align 1, !tbaa !63
  %i.aky = zext <8 x i8> %wide.load1114 to <8 x i16>
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %index1113
  %wide.load1115 = load <8 x i8>, ptr %i.akz, align 1, !tbaa !63
  %i.ala = zext <8 x i8> %wide.load1115 to <8 x i16>
  %i.alb = add nuw nsw <8 x i16> %i.ala, %i.aky
  %i.alc = lshr <8 x i16> %i.alb, splat (i16 1)
  %i.ald = trunc nuw <8 x i16> %i.alc to <8 x i8>
  %i.ale = getelementptr inbounds nuw i8, ptr %.0593793.us, i64 %index1113
  store <8 x i8> %i.ald, ptr %i.ale, align 1, !tbaa !63
  %index.next1116 = add nuw i64 %index1113, 8     ; 2 uses
  %i.alf = icmp eq i64 %index.next1116, %n.vec1112
  br i1 %i.alf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !285

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1117, label %..loopexit735_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck1097, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv860.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck1097 ], [ %n.vec1102, %vec.epilog.iter.check ], [ %n.vec1112, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod1345.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %indvars.iv860.ph
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !63
  %i.ali = zext i8 %i.alh to i16
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %indvars.iv860.ph
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !63
  %i.all = zext i8 %i.alk to i16
  %i.alm = add nuw nsw i16 %i.all, %i.ali
  %i.aln = lshr i16 %i.alm, 1
  %i.alo = trunc nuw i16 %i.aln to i8
  %i.alp = getelementptr inbounds nuw i8, ptr %.0593793.us, i64 %indvars.iv860.ph
  store i8 %i.alo, ptr %i.alp, align 1, !tbaa !63
  %indvars.iv.next861.prol = or disjoint i64 %indvars.iv860.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next861.prol, %vec.epilog.scalar.ph.prol ]
  %i.alq = icmp eq i64 %indvars.iv860.ph, %i.ajg
  br i1 %i.alq, label %..loopexit735_crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.1, %vec.epilog.scalar.ph ], [ %indvars.iv860.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %indvars.iv860
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !63
  %i.alt = zext i8 %i.als to i16
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %indvars.iv860
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !63
  %i.alw = zext i8 %i.alv to i16
  %i.alx = add nuw nsw i16 %i.alw, %i.alt
  %i.aly = lshr i16 %i.alx, 1
  %i.alz = trunc nuw i16 %i.aly to i8
  %i.ama = getelementptr inbounds nuw i8, ptr %.0593793.us, i64 %indvars.iv860
  store i8 %i.alz, ptr %i.ama, align 1, !tbaa !63
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %indvars.iv.next861
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !63
  %i.amd = zext i8 %i.amc to i16
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %indvars.iv.next861
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !63
  %i.amg = zext i8 %i.amf to i16
  %i.amh = add nuw nsw i16 %i.amg, %i.amd
  %i.ami = lshr i16 %i.amh, 1
  %i.amj = trunc nuw i16 %i.ami to i8
  %i.amk = getelementptr inbounds nuw i8, ptr %.0593793.us, i64 %indvars.iv.next861
  store i8 %i.amj, ptr %i.amk, align 1, !tbaa !63
  %indvars.iv.next861.1 = add nuw nsw i64 %indvars.iv860, 2 ; 2 uses
  %exitcond863.not.1 = icmp eq i64 %indvars.iv.next861.1, %wide.trip.count
  br i1 %exitcond863.not.1, label %..loopexit735_crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !286

..loopexit735_crit_edge.us:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block1110, %vec.epilog.middle.block, %bb.gv
  %i.aml = load i32, ptr %i.aij, align 4, !tbaa !55 ; 2 uses
  %i.amm = sext i32 %i.aml to i64
  %i.amn = sub nsw i64 0, %i.amm
  %i.amo = getelementptr inbounds i8, ptr %.0593793.us, i64 %i.amn
  %i.amp = add nsw i32 %.0590795.us, -1           ; 2 uses
  %.not661.us = icmp eq i32 %i.amp, 0
  br i1 %.not661.us, label %.loopexit736, label %.lr.ph797.split.us, !llvm.loop !287

.lr.ph797.split:                                  ; preds = %.lr.ph797.split.peel.next, %.loopexit735
  %i.amq = phi i32 [ %i.anh, %.loopexit735 ], [ %i.aja, %.lr.ph797.split.peel.next ] ; 4 uses
  %i.amr = phi i8 [ %i.ani, %.loopexit735 ], [ %.pre908, %.lr.ph797.split.peel.next ] ; 3 uses
  %i.ams = phi ptr [ %i.anj, %.loopexit735 ], [ %.pre906, %.lr.ph797.split.peel.next ] ; 3 uses
  %.0590795 = phi i32 [ %i.ann, %.loopexit735 ], [ %i.ajb, %.lr.ph797.split.peel.next ] ; 3 uses
  %.0593793 = phi ptr [ %i.anm, %.loopexit735 ], [ %i.aje, %.lr.ph797.split.peel.next ] ; 2 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.ams, i64 %indvars.iv864
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !66
  %i.amv = zext i8 %i.amr to i32                  ; 3 uses
  %i.amw = mul nsw i32 %.0590795, %i.amv
  %i.amx = add nuw nsw i32 %i.amv, 1              ; 2 uses
  %i.amy = sdiv i32 %i.amw, %i.amx
  %i.amz = mul nsw i32 %i.amq, %i.amy             ; 2 uses
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds i8, ptr %i.amu, i64 %i.ana
  %.not662 = icmp eq i8 %i.amr, 2
  br i1 %.not662, label %.loopexit735, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph797.split
  %i.anc = add nsw i32 %.0590795, 1
  %i.and = mul nsw i32 %i.anc, %i.amv
  %i.ane = sdiv i32 %i.and, %i.amx
  %i.anf = mul nsw i32 %i.ane, %i.amq
  %i.ang = icmp eq i32 %i.amz, %i.anf
  br i1 %i.ang, label %bb.gx, label %.loopexit735

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0593793, ptr align 1 %i.anb, i64 %i.air, i1 false)
  %.pre905 = load ptr, ptr %i.be, align 8, !tbaa !47
  %.pre907 = load i8, ptr %i.ahw, align 1, !tbaa !63
  %.pre909 = load i32, ptr %i.aij, align 4, !tbaa !55
  br label %.loopexit735

.loopexit735:                                     ; preds = %.lr.ph797.split, %bb.gw, %bb.gx
  %i.anh = phi i32 [ %i.amq, %.lr.ph797.split ], [ %i.amq, %bb.gw ], [ %.pre909, %bb.gx ] ; 2 uses
  %i.ani = phi i8 [ 2, %.lr.ph797.split ], [ %i.amr, %bb.gw ], [ %.pre907, %bb.gx ]
  %i.anj = phi ptr [ %i.ams, %.lr.ph797.split ], [ %i.ams, %bb.gw ], [ %.pre905, %bb.gx ]
  %i.ank = sext i32 %i.anh to i64
  %i.anl = sub nsw i64 0, %i.ank
  %i.anm = getelementptr inbounds i8, ptr %.0593793, i64 %i.anl
  %i.ann = add nsw i32 %.0590795, -1              ; 2 uses
  %.not661 = icmp eq i32 %i.ann, 0
  br i1 %.not661, label %.loopexit736, label %.lr.ph797.split, !llvm.loop !288

.loopexit736:                                     ; preds = %.loopexit735, %..loopexit735_crit_edge.us, %.loopexit735.peel, %bb.gs, %.lr.ph799
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %i.ano = load i32, ptr %i.bd, align 16, !tbaa !86
  %i.anp = sext i32 %i.ano to i64
  %i.anq = icmp slt i64 %indvars.iv.next865, %i.anp
  br i1 %i.anq, label %.lr.ph799, label %.loopexit738, !llvm.loop !289

.loopexit738:                                     ; preds = %.loopexit736, %.preheader737, %.loopexit745
  %i.anr = load i32, ptr %i.ah, align 16, !tbaa !65
  %.not663 = icmp eq i32 %i.anr, 0
  br i1 %.not663, label %.loopexit, label %bb.gy

bb.gy:                                            ; preds = %.loopexit738
  %i.ans = load i32, ptr %i.am, align 16, !tbaa !100
  %.not664 = icmp eq i32 %i.ans, 0
  br i1 %.not664, label %bb.gz, label %.loopexit

bb.gz:                                            ; preds = %bb.gy
  %i.ant = load i32, ptr %i.ao, align 4, !tbaa !99
  %.not665 = icmp eq i32 %i.ant, 0
  br i1 %.not665, label %bb.ha, label %.loopexit

bb.ha:                                            ; preds = %bb.gz
  %i.anu = load i32, ptr %i.wp, align 8, !tbaa !101
  %i.anv = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.anu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not666 = icmp eq i32 %i.anv, 0
  br i1 %.not666, label %bb.hb, label %.critedge

end_hunk_0
