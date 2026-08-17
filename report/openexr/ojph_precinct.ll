inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  br i1 %.not546.3, label %.split540.us, label %.lr.ph531.us.us.3

.lr.ph531.us.us.3:                                ; preds = %.lr.ph535.us.3, %._crit_edge532.split.us.us.us.3
  %.0196533.us.us.3 = phi i32 [ %i.ahp, %._crit_edge532.split.us.us.us.3 ], [ 0, %.lr.ph535.us.3 ] ; 2 uses
  %i.agh = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 464
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !57
  %i.agk = load i32, ptr %i.agb, align 8, !tbaa !59
  %i.agl = load i32, ptr %i.agg, align 4, !tbaa !58
  %i.agm = add i32 %i.agl, %.0196533.us.us.3
  %i.agn = mul i32 %i.agm, %i.aga
  %i.ago = add i32 %i.agn, %i.agk
  %i.agp = zext i32 %i.ago to i64
  %i.agq = getelementptr inbounds nuw [32 x i8], ptr %i.agj, i64 %i.agp
  br label %bb.ek

bb.ek:                                            ; preds = %bb.eo, %.lr.ph531.us.us.3
  %.0194529.us.us.us.3 = phi i32 [ 0, %.lr.ph531.us.us.3 ], [ %i.ahn, %bb.eo ]
  %.0195528.us.us.us.3 = phi ptr [ %i.agq, %.lr.ph531.us.us.3 ], [ %i.aho, %bb.eo ] ; 5 uses
  %i.agr = load i32, ptr %.0195528.us.us.us.3, align 8, !tbaa !33
  %i.ags = getelementptr inbounds nuw i8, ptr %.0195528.us.us.us.3, i64 4 ; 3 uses
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !33
  %i.agu = add i32 %i.agt, %i.agr                 ; 2 uses
  %i.agv = load i32, ptr %4, align 4, !tbaa !33
  %.not215.us.us.us.3 = icmp eq i32 %i.agv, 0
  br i1 %.not215.us.us.us.3, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not216.us.us.us.3 = icmp eq i32 %i.agu, 0
  br i1 %.not216.us.us.us.3, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.agw = load ptr, ptr %5, align 8, !tbaa !109
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 32
  %i.agy = load ptr, ptr %i.agx, align 8
  %i.agz = call noundef i64 %i.agy(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.aha = load i32, ptr %i.q, align 4, !tbaa !119
  %i.ahb = call i32 @llvm.umin.i32(i32 %i.agu, i32 %i.aha)
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = load ptr, ptr %5, align 8, !tbaa !109
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  %i.ahf = load ptr, ptr %i.ahe, align 8
  %i.ahg = call noundef i32 %i.ahf(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.ahc, i32 noundef 1) ; 0 uses
  %i.ahh = load ptr, ptr %5, align 8, !tbaa !109
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 32
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = call noundef i64 %i.ahj(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.neg.us.us.us.3 = sub i64 %i.agz, %i.ahk
  %.neg217.us.us.us.3 = trunc i64 %.neg.us.us.us.3 to i32
  store i32 0, ptr %i.ags, align 4, !tbaa !33
  store i32 0, ptr %.0195528.us.us.us.3, align 8, !tbaa !33
  %i.ahl = load i32, ptr %i.q, align 4, !tbaa !119
  %i.ahm = add i32 %i.ahl, %.neg217.us.us.us.3
  store i32 %i.ahm, ptr %i.q, align 4, !tbaa !119
  br label %bb.eo

bb.en:                                            ; preds = %bb.ek
  store i32 0, ptr %i.ags, align 4, !tbaa !33
  store i32 0, ptr %.0195528.us.us.us.3, align 8, !tbaa !33
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el
  %i.ahn = add nuw i32 %.0194529.us.us.us.3, 1    ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.0195528.us.us.us.3, i64 32
  %exitcond566.3.not = icmp eq i32 %i.ahn, %i.agd
  br i1 %exitcond566.3.not, label %._crit_edge532.split.us.us.us.3, label %bb.ek, !llvm.loop !150

._crit_edge532.split.us.us.us.3:                  ; preds = %bb.eo
  %i.ahp = add nuw i32 %.0196533.us.us.3, 1       ; 2 uses
  %exitcond567.3.not = icmp eq i32 %i.ahp, %i.agf
  br i1 %exitcond567.3.not, label %.split540.us, label %.lr.ph531.us.us.3, !llvm.loop !151

.lr.ph535.us:                                     ; preds = %bb.dw
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not546 = icmp eq i32 %i.acc, 0
  br i1 %.not546, label %.loopexit.us, label %.lr.ph531.us.us

.lr.ph531.us.us:                                  ; preds = %.lr.ph535.us, %._crit_edge532.split.us.us.us
  %.0196533.us.us = phi i32 [ %i.aiz, %._crit_edge532.split.us.us.us ], [ 0, %.lr.ph535.us ] ; 2 uses
  %i.ahr = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 104
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !57
  %i.ahu = load i32, ptr %i.bl, align 8, !tbaa !59
  %i.ahv = load i32, ptr %i.ahq, align 4, !tbaa !58
  %i.ahw = add i32 %i.ahv, %.0196533.us.us
  %i.ahx = mul i32 %i.ahw, %i.aca
  %i.ahy = add i32 %i.ahx, %i.ahu
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [32 x i8], ptr %i.aht, i64 %i.ahz
  br label %bb.ep

bb.ep:                                            ; preds = %bb.et, %.lr.ph531.us.us
  %.0194529.us.us.us = phi i32 [ 0, %.lr.ph531.us.us ], [ %i.aix, %bb.et ]
  %.0195528.us.us.us = phi ptr [ %i.aia, %.lr.ph531.us.us ], [ %i.aiy, %bb.et ] ; 5 uses
  %i.aib = load i32, ptr %.0195528.us.us.us, align 8, !tbaa !33
  %i.aic = getelementptr inbounds nuw i8, ptr %.0195528.us.us.us, i64 4 ; 3 uses
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !33
  %i.aie = add i32 %i.aid, %i.aib                 ; 2 uses
  %i.aif = load i32, ptr %4, align 4, !tbaa !33
  %.not215.us.us.us = icmp eq i32 %i.aif, 0
  br i1 %.not215.us.us.us, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.not216.us.us.us = icmp eq i32 %i.aie, 0
  br i1 %.not216.us.us.us, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aig = load ptr, ptr %5, align 8, !tbaa !109
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 32
  %i.aii = load ptr, ptr %i.aih, align 8
  %i.aij = call noundef i64 %i.aii(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.aik = load i32, ptr %i.q, align 4, !tbaa !119
  %i.ail = call i32 @llvm.umin.i32(i32 %i.aie, i32 %i.aik)
  %i.aim = zext i32 %i.ail to i64
  %i.ain = load ptr, ptr %5, align 8, !tbaa !109
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 24
  %i.aip = load ptr, ptr %i.aio, align 8
  %i.aiq = call noundef i32 %i.aip(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.aim, i32 noundef 1) ; 0 uses
  %i.air = load ptr, ptr %5, align 8, !tbaa !109
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 32
  %i.ait = load ptr, ptr %i.ais, align 8
  %i.aiu = call noundef i64 %i.ait(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.neg.us.us.us = sub i64 %i.aij, %i.aiu
  %.neg217.us.us.us = trunc i64 %.neg.us.us.us to i32
  store i32 0, ptr %i.aic, align 4, !tbaa !33
  store i32 0, ptr %.0195528.us.us.us, align 8, !tbaa !33
  %i.aiv = load i32, ptr %i.q, align 4, !tbaa !119
  %i.aiw = add i32 %i.aiv, %.neg217.us.us.us
  store i32 %i.aiw, ptr %i.q, align 4, !tbaa !119
  br label %bb.et

bb.es:                                            ; preds = %bb.ep
  store i32 0, ptr %i.aic, align 4, !tbaa !33
  store i32 0, ptr %.0195528.us.us.us, align 8, !tbaa !33
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq
  %i.aix = add nuw i32 %.0194529.us.us.us, 1      ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0195528.us.us.us, i64 32
  %exitcond566.not = icmp eq i32 %i.aix, %i.acc
  br i1 %exitcond566.not, label %._crit_edge532.split.us.us.us, label %bb.ep, !llvm.loop !150

._crit_edge532.split.us.us.us:                    ; preds = %bb.et
  %i.aiz = add nuw i32 %.0196533.us.us, 1         ; 2 uses
  %exitcond567.not = icmp eq i32 %i.aiz, %i.ace
  br i1 %exitcond567.not, label %.loopexit.us.loopexit, label %.lr.ph531.us.us, !llvm.loop !151

.split:                                           ; preds = %bb.dv, %.loopexit
  %indvars.iv562 = phi i64 [ %indvars.iv.next563, %.loopexit ], [ 0, %bb.dv ] ; 4 uses
  %i.aja = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.ajb = getelementptr inbounds nuw [120 x i8], ptr %i.aja, i64 %indvars.iv562 ; 2 uses
  %i.ajc = load i8, ptr %i.ajb, align 8, !tbaa !18, !range !28, !noundef !29
  %i.ajd = trunc nuw i8 %i.ajc to i1
  br i1 %i.ajd, label %.loopexit, label %bb.eu

bb.eu:                                            ; preds = %.split
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 56
  %i.ajf = load i32, ptr %i.aje, align 8, !tbaa !56
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv562 ; 4 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !30 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 12
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !31 ; 2 uses
  %.not543 = icmp eq i32 %i.ajk, 0
  br i1 %.not543, label %.loopexit, label %.lr.ph535

.lr.ph535:                                        ; preds = %bb.eu
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajg, i64 4
  %.not544 = icmp eq i32 %i.aji, 0
  br i1 %.not544, label %.loopexit, label %.lr.ph531

.lr.ph531:                                        ; preds = %.lr.ph535, %._crit_edge532.split
  %.0196533 = phi i32 [ %i.ajx, %._crit_edge532.split ], [ 0, %.lr.ph535 ] ; 2 uses
  %i.ajm = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.ajn = getelementptr inbounds nuw [120 x i8], ptr %i.ajm, i64 %indvars.iv562
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 104
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !57
  %i.ajq = load i32, ptr %i.ajg, align 8, !tbaa !59
  %i.ajr = load i32, ptr %i.ajl, align 4, !tbaa !58
  %i.ajs = add i32 %i.ajr, %.0196533
  %i.ajt = mul i32 %i.ajs, %i.ajf
  %i.aju = add i32 %i.ajt, %i.ajq
  %i.ajv = zext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw [32 x i8], ptr %i.ajp, i64 %i.ajv
  br label %bb.ev

._crit_edge532.split:                             ; preds = %bb.fb
  %i.ajx = add nuw i32 %.0196533, 1               ; 2 uses
  %exitcond561.not = icmp eq i32 %i.ajx, %i.ajk
  br i1 %exitcond561.not, label %.loopexit, label %.lr.ph531, !llvm.loop !151

bb.ev:                                            ; preds = %.lr.ph531, %bb.fb
  %.0194529 = phi i32 [ 0, %.lr.ph531 ], [ %i.ald, %bb.fb ]
  %.0195528 = phi ptr [ %i.ajw, %.lr.ph531 ], [ %i.ale, %bb.fb ] ; 6 uses
  %i.ajy = load i32, ptr %.0195528, align 8, !tbaa !33
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0195528, i64 4 ; 3 uses
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !33
  %i.akb = add i32 %i.aka, %i.ajy                 ; 5 uses
  %i.akc = load i32, ptr %4, align 4, !tbaa !33
  %.not215 = icmp eq i32 %i.akc, 0
  br i1 %.not215, label %bb.fa, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.not216 = icmp eq i32 %i.akb, 0
  br i1 %.not216, label %bb.fb, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.akd = getelementptr inbounds nuw i8, ptr %.0195528, i64 24 ; 3 uses
  %i.ake = add i32 %i.akb, 24
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %i.ake, ptr noundef nonnull align 8 dereferenceable(8) %i.akd)
  %i.akf = load i32, ptr %i.q, align 4, !tbaa !119
  %..i = call i32 @llvm.umin.i32(i32 range(i32 1, 0) %i.akb, i32 %i.akf) ; 2 uses
  %i.akg = load ptr, ptr %7, align 8, !tbaa !118  ; 2 uses
  %i.akh = load ptr, ptr %i.akd, align 8, !tbaa !8
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !96
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = zext i32 %..i to i64
  %i.akm = load ptr, ptr %i.akg, align 8, !tbaa !109
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 16
  %i.ako = load ptr, ptr %i.akn, align 8
  %i.akp = call noundef i64 %i.ako(ptr noundef nonnull align 8 dereferenceable(8) %i.akg, ptr noundef nonnull %i.akk, i64 noundef %i.akl), !inline_history !152 ; 2 uses
  %i.akq = trunc i64 %i.akp to i32                ; 4 uses
  %i.akr = icmp ugt i32 %i.akb, %i.akq
  br i1 %i.akr, label %bb.ey, label %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit

bb.ey:                                            ; preds = %bb.ex
  %i.aks = load ptr, ptr %i.akd, align 8, !tbaa !8
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !96
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.akw = and i64 %i.akp, 4294967295
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.akw
  %i.aky = sub nuw i32 %i.akb, %i.akq
  %i.akz = zext i32 %i.aky to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.akx, i8 0, i64 %i.akz, i1 false)
  br label %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit

_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit: ; preds = %bb.ex, %bb.ey
  %i.ala = load i32, ptr %i.q, align 4, !tbaa !119
  %i.alb = sub i32 %i.ala, %i.akq
  store i32 %i.alb, ptr %i.q, align 4, !tbaa !119
  %i.alc = icmp eq i32 %..i, %i.akq
  br i1 %i.alc, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit
  store i32 0, ptr %i.ajz, align 4, !tbaa !33
  store i32 0, ptr %.0195528, align 8, !tbaa !33
  store i32 0, ptr %4, align 4, !tbaa !33
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ev
  store i32 0, ptr %i.ajz, align 4, !tbaa !33
  store i32 0, ptr %.0195528, align 8, !tbaa !33
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ew, %_ZN4ojph5localL13bb_read_chunkEPNS0_12bit_read_bufEjRPNS_11coded_listsEPNS_21mem_elastic_allocatorE.exit, %bb.ez, %bb.fa
  %i.ald = add nuw i32 %.0194529, 1               ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.0195528, i64 32
  %exitcond560.not = icmp eq i32 %i.ald, %i.aji
  br i1 %exitcond560.not, label %._crit_edge532.split, label %bb.ev, !llvm.loop !150

.loopexit:                                        ; preds = %._crit_edge532.split, %bb.eu, %.lr.ph535, %.split
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 4
  br i1 %exitcond565.not, label %.split540.us, label %.split, !llvm.loop !153

.split540.us:                                     ; preds = %.loopexit, %._crit_edge532.split.us.us.us.3, %.lr.ph535.us.3, %bb.ej, %.loopexit.us.2, %bb.dn
  %i.alf = load i32, ptr %i.q, align 4, !tbaa !119
  store i32 %i.alf, ptr %4, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4ojph5localL12bb_terminateEPNS0_12bit_read_bufEb(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !121, !range !28, !noundef !29
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !119
  %.not.i.not = icmp eq i32 %i.g, 0
  br i1 %.not.i.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !33
  %i.h = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !154
  %.not12.i = icmp eq i64 %i.l, 1
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.m, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !120
  %i.p = load i8, ptr %i.c, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i = sub nuw nsw i8 8, %i.p
  %i.q = zext nneg i8 %narrow13.i to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !115
  %i.s = icmp eq i32 %i.n, 255
  %i.t = zext i1 %i.s to i8
  store i8 %i.t, ptr %i.c, align 8, !tbaa !121
  %i.u = load i32, ptr %i.f, align 4, !tbaa !119
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.f, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 7, ptr %i.x, align 4, !tbaa !115
  store i8 0, ptr %i.c, align 8, !tbaa !121
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit: ; preds = %bb.f, %bb.e, %bb.a
  br i1 %1, label %bb.g, label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

bb.g:                                             ; preds = %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !119
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ab = load ptr, ptr %0, align 8, !tbaa !118   ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !155
  %.not.i6 = icmp eq i64 %i.af, 2
  br i1 %.not.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.ag, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !119
  %i.ai = add i32 %i.ah, -2
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !119
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !44
  %i.ak = icmp ne i8 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp ne i8 %i.am, -110
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.18, ptr %i.ao, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit: ; preds = %bb.l, %bb.g, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !115
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umin.v8i8(<8 x i8>, <8 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4ojph11coded_listsE", !10, i64 0}
end_hunk_0
