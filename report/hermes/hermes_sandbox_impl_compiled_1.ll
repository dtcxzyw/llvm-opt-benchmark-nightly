Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  store i32 %i.hmu, ptr %i.hmv, align 1
  br label %bb.adz

bb.adz:                                           ; preds = %bb.ady, %.loopexit54547
  %i.hmw = zext i32 %.4343774 to i64              ; 3 uses
  %.val49943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hmx = getelementptr inbounds nuw i8, ptr %.val49943, i64 %i.hmw
  %i.hmy = getelementptr inbounds nuw i8, ptr %i.hmx, i64 4
  store i32 0, ptr %i.hmy, align 1
  %.val49942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hmz = getelementptr inbounds nuw i8, ptr %.val49942, i64 %i.hmw
  store i32 %.0.copyload.i52297, ptr %i.hmz, align 1
  br label %.loopexit54549

.loopexit54549:                                   ; preds = %bb.adq, %bb.ado, %bb.adz
  %.pre-phi55808.a = phi i64 [ %i.hmw, %bb.adz ], [ %i.hkr, %bb.ado ], [ %i.hle, %bb.adq ]
  %.val49941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hna = getelementptr inbounds nuw i8, ptr %.val49941, i64 %.pre-phi55808.a
  %i.hnb = getelementptr inbounds nuw i8, ptr %i.hna, i64 4
  store i32 %.044096, ptr %i.hnb, align 1
  %.val48467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnc = getelementptr inbounds nuw i8, ptr %.val48467, i64 %i.hgs
  %i.hnd = getelementptr inbounds nuw i8, ptr %i.hnc, i64 36
  %.0.copyload.i52311 = load i32, ptr %i.hnd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52311) #7, !srcloc !19
  %i.hne = zext i32 %.0.copyload.i52311 to i64
  %.val48466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnf = getelementptr inbounds nuw i8, ptr %.val48466, i64 %i.hne
  %i.hng = getelementptr inbounds nuw i8, ptr %i.hnf, i64 28
  %.0.copyload.i52312 = load i32, ptr %i.hng, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52312) #7, !srcloc !19
  %i.hnh = zext i32 %.0.copyload.i52312 to i64
  %.val48465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hni = getelementptr inbounds nuw i8, ptr %.val48465, i64 %i.hnh
  %i.hnj = getelementptr inbounds nuw i8, ptr %i.hni, i64 120
  %.0.copyload.i52313 = load i32, ptr %i.hnj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52313) #7, !srcloc !19
  %.not45829 = icmp eq i32 %.0.copyload.i52313, 2
  br i1 %.not45829, label %bb.aea, label %bb.aed

bb.aea:                                           ; preds = %.loopexit54549
  %.val48464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnk = getelementptr inbounds nuw i8, ptr %.val48464, i64 %i.hjm
  %.0.copyload.i52314 = load i32, ptr %i.hnk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52314) #7, !srcloc !19
  %.val48463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnl = getelementptr inbounds nuw i8, ptr %.val48463, i64 %i.hjl
  %i.hnm = getelementptr inbounds nuw i8, ptr %i.hnl, i64 8
  %.0.copyload.i52315 = load i32, ptr %i.hnm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52315) #7, !srcloc !19
  %.not45830 = icmp ult i32 %.0.copyload.i52314, %.0.copyload.i52315
  br i1 %.not45830, label %bb.aec, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hjh, i32 noundef %i.hjo, i32 noundef 0, i32 noundef 4) #7
  %.val48462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnn = getelementptr inbounds nuw i8, ptr %.val48462, i64 %i.hjm
  %.0.copyload.i52316 = load i32, ptr %i.hnn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52316) #7, !srcloc !19
  br label %bb.aec

bb.aec:                                           ; preds = %bb.aeb, %bb.aea
  %.4543776 = phi i32 [ %.0.copyload.i52316, %bb.aeb ], [ %.0.copyload.i52314, %bb.aea ]
  %.val48461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hno = getelementptr inbounds nuw i8, ptr %.val48461, i64 %i.hjl
  %.0.copyload.i52317 = load i32, ptr %i.hno, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52317) #7, !srcloc !19
  %i.hnp = shl i32 %.4543776, 2
  %i.hnq = add i32 %.0.copyload.i52317, %i.hnp
  %i.hnr = add i32 %.044096, 8
  %i.hns = zext i32 %i.hnq to i64
  %.val49940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnt = getelementptr inbounds nuw i8, ptr %.val49940, i64 %i.hns
  store i32 %i.hnr, ptr %i.hnt, align 1
  %.val48460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnu = getelementptr inbounds nuw i8, ptr %.val48460, i64 %i.hjm
  %.0.copyload.i52318 = load i32, ptr %i.hnu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52318) #7, !srcloc !19
  %i.hnv = add i32 %.0.copyload.i52318, 1
  %.val49939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnw = getelementptr inbounds nuw i8, ptr %.val49939, i64 %i.hjm
  store i32 %i.hnv, ptr %i.hnw, align 1
  br label %bb.aed

bb.aed:                                           ; preds = %.loopexit54549, %.preheader54608, %bb.aec
  %.val48459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnx = getelementptr inbounds nuw i8, ptr %.val48459, i64 %i.hjy
  %i.hny = getelementptr inbounds nuw i8, ptr %i.hnx, i64 4
  %.0.copyload.i52319 = load i32, ptr %i.hny, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52319) #7, !srcloc !19
  %.not45831 = icmp eq i32 %.0.copyload.i52319, %i.hjx
  br i1 %.not45831, label %.loopexit54609, label %.preheader54608

.loopexit54609:                                   ; preds = %bb.aed, %.preheader55238
  %.val48458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hnz = getelementptr inbounds nuw i8, ptr %.val48458, i64 %i.hju
  %i.hoa = getelementptr inbounds nuw i8, ptr %i.hnz, i64 4
  %.0.copyload.i52320 = load i32, ptr %i.hoa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52320) #7, !srcloc !19
  %.not45832 = icmp eq i32 %.0.copyload.i52320, %i.hjs
  br i1 %.not45832, label %bb.aee, label %.preheader55238

bb.aee:                                           ; preds = %.loopexit54609
  %.val48457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hob = getelementptr inbounds nuw i8, ptr %.val48457, i64 %i.hjm
  %.0.copyload.i52321 = load i32, ptr %i.hob, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52321) #7, !srcloc !19
  %.not45833 = icmp eq i32 %.0.copyload.i52321, 0
  br i1 %.not45833, label %.loopexit54650, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  %.val48456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hoc = getelementptr inbounds nuw i8, ptr %.val48456, i64 %i.hdw
  %.0.copyload.i52322 = load i32, ptr %i.hoc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52322) #7, !srcloc !19
  %i.hod = add i32 %.0.copyload.i52322, 1084
  %.val48455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hoe = getelementptr inbounds nuw i8, ptr %.val48455, i64 %i.hjl
  %.0.copyload.i52323 = load i32, ptr %i.hoe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52323) #7, !srcloc !19
  %i.hof = shl i32 %.0.copyload.i52321, 2
  %i.hog = add i32 %.0.copyload.i52323, %i.hof
  %i.hoh = add i32 %.0.copyload.i52322, 1100      ; 2 uses
  %i.hoi = zext i32 %i.hoh to i64                 ; 3 uses
  %.val48454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hoj = getelementptr inbounds nuw i8, ptr %.val48454, i64 %i.hoi
  %i.hok = getelementptr inbounds nuw i8, ptr %i.hoj, i64 8
  %.0.copyload.i52324 = load i32, ptr %i.hok, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52324) #7, !srcloc !19
  %i.hol = icmp ult i32 %.0.copyload.i52324, -2147483647
  %i.hom = select i1 %i.hol, i32 0, i32 %.0.copyload.i52324 ; 2 uses
  %.val48453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hon = getelementptr inbounds nuw i8, ptr %.val48453, i64 %i.hoi
  %.0.copyload.i52325 = load i32, ptr %i.hon, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52325) #7, !srcloc !19
  %i.hoo = add i32 %.0.copyload.i52324, -1        ; 2 uses
  %i.hop = icmp slt i32 %i.hoo, 0
  br i1 %i.hop, label %._crit_edge57413, label %.lr.ph57412

bb.aeg:                                           ; preds = %.lr.ph57412
  %i.hoq = add nsw i32 %i.hos, -1
  %i.hor = icmp slt i32 %i.hos, 1
  br i1 %i.hor, label %._crit_edge57413, label %.lr.ph57412

.lr.ph57412:                                      ; preds = %bb.aef, %bb.aeg
  %i.hos = phi i32 [ %i.hoq, %bb.aeg ], [ %i.hoo, %bb.aef ] ; 5 uses
  %.544430557410 = phi i32 [ %i.hos, %bb.aeg ], [ %.0.copyload.i52324, %bb.aef ]
  %i.hot = lshr i32 %i.hos, 3
  %i.hou = and i32 %i.hot, 268435452
  %i.hov = add i32 %i.hou, %.0.copyload.i52325
  %i.how = zext i32 %i.hov to i64
  %.val48452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hox = getelementptr inbounds nuw i8, ptr %.val48452, i64 %i.how
  %.0.copyload.i52326 = load i32, ptr %i.hox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52326) #7, !srcloc !19
  %i.hoy = and i32 %i.hos, 31
  %i.hoz = shl nuw i32 1, %i.hoy
  %i.hpa = and i32 %.0.copyload.i52326, %i.hoz
  %.not45834 = icmp eq i32 %i.hpa, 0
  br i1 %.not45834, label %._crit_edge57413, label %bb.aeg

._crit_edge57413:                                 ; preds = %.lr.ph57412, %bb.aeg, %bb.aef
  %.144097 = phi i32 [ %i.hom, %bb.aef ], [ %.544430557410, %.lr.ph57412 ], [ %i.hom, %bb.aeg ] ; 6 uses
  %i.hpb = add i32 %.144097, %.0.copyload.i52321  ; 7 uses
  %i.hpc = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i52324, i32 %i.hpb)
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.hoh, i32 noundef %i.hpc, i32 noundef 1) #7
  %i.hpd = lshr i32 %.144097, 5                   ; 2 uses
  %i.hpe = lshr i32 %i.hpb, 5
  %i.hpf = icmp eq i32 %i.hpd, %i.hpe
  %.val48451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hpg = getelementptr inbounds nuw i8, ptr %.val48451, i64 %i.hoi
  %.0.copyload.i52327 = load i32, ptr %i.hpg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52327) #7
  %i.hph = shl nuw nsw i32 %i.hpd, 2
  %i.hpi = add i32 %.0.copyload.i52327, %i.hph    ; 2 uses
  br i1 %i.hpf, label %bb.aeh, label %bb.aei

bb.aeh:                                           ; preds = %._crit_edge57413
  %i.hpj = and i32 %i.hpb, 31
  %i.hpk = shl nuw i32 1, %i.hpj
  %i.hpl = and i32 %.144097, 31
  %i.hpm = shl nsw i32 -1, %i.hpl
  %i.hpn = add i32 %i.hpk, %i.hpm
  %i.hpo = xor i32 %i.hpn, -1
  br label %bb.aek

bb.aei:                                           ; preds = %._crit_edge57413
  %i.hpp = zext i32 %i.hpi to i64                 ; 2 uses
  %.val48449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hpq = getelementptr inbounds nuw i8, ptr %.val48449, i64 %i.hpp
  %.0.copyload.i52329 = load i32, ptr %i.hpq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52329) #7, !srcloc !19
  %i.hpr = and i32 %.144097, 31
  %i.hps = shl nsw i32 -1, %i.hpr
  %i.hpt = xor i32 %i.hps, -1
  %i.hpu = and i32 %.0.copyload.i52329, %i.hpt
  %.val49938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hpv = getelementptr inbounds nuw i8, ptr %.val49938, i64 %i.hpp
  store i32 %i.hpu, ptr %i.hpv, align 1
  %i.hpw = add i32 %.144097, 31
  %i.hpx = and i32 %i.hpw, -32                    ; 2 uses
  %i.hpy = add i32 %i.hpx, 32                     ; 2 uses
  %.not45835 = icmp ugt i32 %i.hpy, %i.hpb
  br i1 %.not45835, label %.loopexit54652, label %.preheader54651

.preheader54651:                                  ; preds = %bb.aei, %.preheader54651
  %.5544306 = phi i32 [ %i.hqd, %.preheader54651 ], [ %i.hpy, %bb.aei ] ; 3 uses
  %.554430655653 = add i32 %.5544306, -32
  %i.hpz = lshr exact i32 %.554430655653, 3
  %i.hqa = add i32 %i.hpz, %.0.copyload.i52327
  %i.hqb = zext i32 %i.hqa to i64
  %.val49937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hqc = getelementptr inbounds nuw i8, ptr %.val49937, i64 %i.hqb
  store i32 0, ptr %i.hqc, align 1
  %i.hqd = add i32 %.5544306, 32                  ; 2 uses
  %.not45836 = icmp ugt i32 %i.hqd, %i.hpb
  br i1 %.not45836, label %.loopexit54652, label %.preheader54651

.loopexit54652:                                   ; preds = %.preheader54651, %bb.aei
  %.5644307 = phi i32 [ %i.hpx, %bb.aei ], [ %.5544306, %.preheader54651 ] ; 2 uses
  %.not45837 = icmp ult i32 %.5644307, %i.hpb
  br i1 %.not45837, label %bb.aej, label %bb.ael

bb.aej:                                           ; preds = %.loopexit54652
  %i.hqe = lshr i32 %.5644307, 3
  %i.hqf = add i32 %i.hqe, %.0.copyload.i52327
  %i.hqg = and i32 %i.hpb, 31
  %i.hqh = shl nsw i32 -1, %i.hqg
  br label %bb.aek

bb.aek:                                           ; preds = %bb.aej, %bb.aeh
  %.5744308 = phi i32 [ %i.hpi, %bb.aeh ], [ %i.hqf, %bb.aej ]
  %.443133 = phi i32 [ %i.hpo, %bb.aeh ], [ %i.hqh, %bb.aej ]
  %i.hqi = zext i32 %.5744308 to i64              ; 2 uses
  %.val48448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hqj = getelementptr inbounds nuw i8, ptr %.val48448, i64 %i.hqi
  %.0.copyload.i52330 = load i32, ptr %i.hqj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52330) #7, !srcloc !19
  %i.hqk = and i32 %.0.copyload.i52330, %.443133
  %.val49936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hql = getelementptr inbounds nuw i8, ptr %.val49936, i64 %i.hqi
  store i32 %i.hqk, ptr %i.hql, align 1
  br label %bb.ael

bb.ael:                                           ; preds = %.loopexit54652, %bb.aek
  %i.hqm = zext i32 %.0.copyload.i52322 to i64    ; 2 uses
  %i.hqn = add i32 %i.hjg, -4
  br label %bb.aem

bb.aem:                                           ; preds = %bb.aes, %bb.ael
  %.344000 = phi i32 [ %.144097, %bb.ael ], [ %i.hrv, %bb.aes ] ; 2 uses
  %.4643777 = phi i32 [ %.0.copyload.i52323, %bb.ael ], [ %i.hrw, %bb.aes ] ; 2 uses
  %i.hqo = zext i32 %.4643777 to i64
  %.val48447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hqp = getelementptr inbounds nuw i8, ptr %.val48447, i64 %i.hqo
  %.0.copyload.i52331 = load i32, ptr %i.hqp, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52331) #7, !srcloc !19
  %.val49935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hqq = getelementptr inbounds nuw i8, ptr %.val49935, i64 %i.hjl
  %i.hqr = getelementptr inbounds nuw i8, ptr %i.hqq, i64 28
  store i32 %.0.copyload.i52331, ptr %i.hqr, align 1
  %.not45838 = icmp eq i32 %.0.copyload.i52331, 0
  br i1 %.not45838, label %bb.aes, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  %.val48446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hqs = getelementptr inbounds nuw i8, ptr %.val48446, i64 %i.hqm
  %i.hqt = getelementptr inbounds nuw i8, ptr %i.hqs, i64 1096
  %.0.copyload.i52332 = load i32, ptr %i.hqt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52332) #7, !srcloc !19
  %.not45839 = icmp eq i32 %.0.copyload.i52332, 0
  br i1 %.not45839, label %bb.aer, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  %.val48445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hqu = getelementptr inbounds nuw i8, ptr %.val48445, i64 %i.hqm
  %i.hqv = getelementptr inbounds nuw i8, ptr %i.hqu, i64 1084
  %.0.copyload.i52333 = load i32, ptr %i.hqv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52333) #7, !srcloc !19
  %i.hqw = add i32 %.0.copyload.i52332, -1        ; 2 uses
  %i.hqx = lshr i32 %.0.copyload.i52331, 4
  %i.hqy = lshr i32 %.0.copyload.i52331, 9
  %i.hqz = xor i32 %i.hqx, %i.hqy
  %i.hra = and i32 %i.hqw, %i.hqz                 ; 2 uses
  %i.hrb = shl nuw nsw i32 %i.hra, 3
  %i.hrc = add i32 %.0.copyload.i52333, %i.hrb    ; 2 uses
  %i.hrd = zext i32 %i.hrc to i64                 ; 2 uses
  %.val48444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hre = getelementptr inbounds nuw i8, ptr %.val48444, i64 %i.hrd
  %.0.copyload.i52334 = load i32, ptr %i.hre, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52334) #7, !srcloc !19
  %i.hrf = icmp eq i32 %.0.copyload.i52331, %.0.copyload.i52334
  br i1 %i.hrf, label %.loopexit54607, label %.preheader54606

.preheader54606:                                  ; preds = %bb.aeo, %bb.aeq
  %.5844309 = phi i32 [ %i.hrk, %bb.aeq ], [ 0, %bb.aeo ] ; 3 uses
  %.9743931 = phi i32 [ %i.hrp, %bb.aeq ], [ %i.hrc, %bb.aeo ] ; 2 uses
  %.1143600 = phi i32 [ %i.hrn, %bb.aeq ], [ %i.hra, %bb.aeo ]
  %.843381 = phi i32 [ %i.hrm, %bb.aeq ], [ 1, %bb.aeo ] ; 2 uses
  %.943349 = phi i32 [ %.0.copyload.i52335, %bb.aeq ], [ %.0.copyload.i52334, %bb.aeo ] ; 2 uses
  %i.hrg = icmp eq i32 %.943349, -4
  %.not45842 = icmp eq i32 %.5844309, 0           ; 2 uses
  br i1 %i.hrg, label %bb.aep, label %bb.aeq

bb.aep:                                           ; preds = %.preheader54606
  %i.hrh = select i1 %.not45842, i32 %.9743931, i32 %.5844309
  br label %bb.aer

bb.aeq:                                           ; preds = %.preheader54606
  %i.hri = icmp eq i32 %.943349, -8
  %i.hrj = select i1 %i.hri, i1 %.not45842, i1 false
  %i.hrk = select i1 %i.hrj, i32 %.9743931, i32 %.5844309
  %i.hrl = add i32 %.843381, %.1143600
  %i.hrm = add i32 %.843381, 1
  %i.hrn = and i32 %i.hrl, %i.hqw                 ; 2 uses
  %i.hro = shl i32 %i.hrn, 3
  %i.hrp = add i32 %i.hro, %.0.copyload.i52333    ; 2 uses
  %i.hrq = zext i32 %i.hrp to i64                 ; 2 uses
  %.val48443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hrr = getelementptr inbounds nuw i8, ptr %.val48443, i64 %i.hrq
  %.0.copyload.i52335 = load i32, ptr %i.hrr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52335) #7, !srcloc !19
  %.not45841 = icmp eq i32 %.0.copyload.i52331, %.0.copyload.i52335
  br i1 %.not45841, label %.loopexit54607, label %.preheader54606

bb.aer:                                           ; preds = %bb.aen, %bb.aep
  %.244098 = phi i32 [ %i.hrh, %bb.aep ], [ 0, %bb.aen ]
  %i.hrs = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hod, i32 noundef %.244098, i32 noundef %i.hqn) #7
  %.pre55806 = zext i32 %i.hrs to i64
  br label %.loopexit54607

.loopexit54607:                                   ; preds = %bb.aeq, %bb.aeo, %bb.aer
  %.pre-phi55807 = phi i64 [ %.pre55806, %bb.aer ], [ %i.hrd, %bb.aeo ], [ %i.hrq, %bb.aeq ]
  %.val49934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hrt = getelementptr inbounds nuw i8, ptr %.val49934, i64 %.pre-phi55807
  %i.hru = getelementptr inbounds nuw i8, ptr %i.hrt, i64 4
  store i32 %.344000, ptr %i.hru, align 1
  br label %bb.aes

bb.aes:                                           ; preds = %.loopexit54607, %bb.aem
  %i.hrv = add i32 %.344000, 1
  %i.hrw = add i32 %.4643777, 4                   ; 2 uses
  %.not45843 = icmp eq i32 %i.hrw, %i.hog
  br i1 %.not45843, label %.loopexit54650, label %bb.aem

.loopexit54650:                                   ; preds = %bb.aes, %bb.aee, %bb.adm
  %.val48442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hrx = getelementptr inbounds nuw i8, ptr %.val48442, i64 %i.hjl
  %.0.copyload.i52336 = load i32, ptr %i.hrx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52336) #7, !srcloc !19
  %.not45844 = icmp eq i32 %i.hjo, %.0.copyload.i52336
  br i1 %.not45844, label %bb.aeu, label %bb.aet

bb.aet:                                           ; preds = %.loopexit54650
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52336) #7
  br label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet, %.loopexit54650
  store i32 %i.hjg, ptr %i.a, align 8, !tbaa !17
  %.val51137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hry = getelementptr inbounds nuw i8, ptr %.val51137, i64 %i.cqr
  %.0.copyload.i52337 = load i8, ptr %i.hry, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i52337) #7, !srcloc !21
  %.not45845 = icmp eq i8 %.0.copyload.i52337, 0
  br i1 %.not45845, label %bb.aev, label %bb.aew

bb.aev:                                           ; preds = %bb.aeu
  %.val50898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hrz = getelementptr inbounds nuw i8, ptr %.val50898, i64 %i.hdt
  store i64 10485760, ptr %i.hrz, align 1
  %.val49933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hsa = getelementptr inbounds nuw i8, ptr %.val49933, i64 %i.nc
  %i.hsb = getelementptr inbounds nuw i8, ptr %i.hsa, i64 1696
  store i32 250, ptr %i.hsb, align 1
  br label %bb.aew

bb.aew:                                           ; preds = %bb.aev, %bb.aeu
  %i.hsc = tail call i32 @w2c_hermes_hermes0x3A0x3APostOrderAnalysis0x3A0x3APostOrderAnalysis0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hec, i32 noundef %.4643982) ; 0 uses
  %.val50897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hsd = getelementptr inbounds nuw i8, ptr %.val50897, i64 %i.hed
  store i64 68719476736, ptr %i.hsd, align 1
  %.val49932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hse = getelementptr inbounds nuw i8, ptr %.val49932, i64 %i.hee
  store i32 %i.hdi, ptr %i.hse, align 1
  %.val48441 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hsf = getelementptr inbounds nuw i8, ptr %.val48441, i64 %i.gdy
  %.0.copyload.i52338 = load i32, ptr %i.hsf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52338) #7, !srcloc !19
  %.val48440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hsg = getelementptr inbounds nuw i8, ptr %.val48440, i64 %i.gdu
  %.0.copyload.i52339 = load i32, ptr %i.hsg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52339) #7, !srcloc !19
  %i.hsh = sub i32 %.0.copyload.i52338, %.0.copyload.i52339 ; 2 uses
  %i.hsi = ashr i32 %i.hsh, 2                     ; 2 uses
  %i.hsj = icmp ugt i32 %i.hsh, 64
  br i1 %i.hsj, label %bb.aex, label %bb.aey

bb.aex:                                           ; preds = %bb.aew
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.fvv, i32 noundef %i.hdi, i32 noundef %i.hsi, i32 noundef 4) #7
  %.val48439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hsk = getelementptr inbounds nuw i8, ptr %.val48439, i64 %i.hed
  %.0.copyload.i52340 = load i32, ptr %i.hsk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52340) #7, !srcloc !19
  br label %bb.aey

bb.aey:                                           ; preds = %bb.aex, %bb.aew
  %.3443659 = phi i32 [ %.0.copyload.i52340, %bb.aex ], [ 0, %bb.aew ] ; 2 uses
  %.not45846 = icmp eq i32 %.0.copyload.i52339, %.0.copyload.i52338
  br i1 %.not45846, label %.loopexit54649, label %bb.aez

bb.aez:                                           ; preds = %bb.aey
  %.val48438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hsl = getelementptr inbounds nuw i8, ptr %.val48438, i64 %i.hee
  %.0.copyload.i52341 = load i32, ptr %i.hsl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52341) #7, !srcloc !19
  %i.hsm = shl i32 %.3443659, 2
  %i.hsn = add i32 %.0.copyload.i52341, %i.hsm
  br label %bb.afa

bb.afa:                                           ; preds = %bb.afa, %bb.aez
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3ALimitAllocArray0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.val401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %.0.copyload.i411, ptr %i.ad, align 1
  %.val403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.j
  store i64 0, ptr %i.ae, align 1
  %.val402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.k
  store i64 0, ptr %i.af, align 1
  %.val400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.k
  store i32 %.0348, ptr %i.ag, align 1
  %.val391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.0.copyload.i412 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i412) #7, !srcloc !19
  %.val399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.k
  store i32 %.0.copyload.i412, ptr %i.aj, align 1
  %.val390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.t
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %.0.copyload.i413 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i413) #7, !srcloc !19
  %.val398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 %.0.copyload.i413, ptr %i.an, align 1
  %.val389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.t
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %.0.copyload.i414 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i414) #7, !srcloc !19
  %.val397 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.j
  store i32 %.0.copyload.i414, ptr %i.aq, align 1
  %.val388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %.0.copyload.i415 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i415) #7, !srcloc !19
  %.val396 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i32 %.0.copyload.i415, ptr %i.au, align 1
  %.val387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.w
  %.0.copyload.i416 = load i32, ptr %i.av, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i416) #7, !srcloc !19
  %i.aw = icmp ult i32 %.0.copyload.i416, 2
  br i1 %i.aw, label %.loopexit444, label %.preheader445

.preheader445:                                    ; preds = %bb.e
  %i.ax = add nuw nsw i64 %i.t, 40                ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader445, %bb.k
  %.0346 = phi i32 [ %i.cn, %bb.k ], [ 1, %.preheader445 ] ; 5 uses
  %.0343 = phi i32 [ %i.ay, %bb.k ], [ -1, %.preheader445 ]
  %i.ay = add i32 %.0343, 1                       ; 3 uses
  %.val386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.ax
  %.0.copyload.i417 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i417) #7, !srcloc !19
  %i.ba = shl i32 %.0346, 3                       ; 6 uses
  %i.bb = add i32 %.0.copyload.i417, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %.val385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.bc
  %.0.copyload.i418 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i418) #7, !srcloc !19
  %i.be = zext i32 %.0.copyload.i418 to i64
  %.val406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.be
  %.0.copyload.i419 = load i8, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i419) #7, !srcloc !21
  %.not361 = icmp eq i8 %.0.copyload.i419, 115
  br i1 %.not361, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.ax
  %.0.copyload.i420 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i420) #7, !srcloc !19
  %i.bh = add i32 %.0.copyload.i420, %i.ba
  %i.bi = zext i32 %i.bh to i64
  %.val383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.bi
  %.0.copyload.i421 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i421) #7, !srcloc !19
  %i.bk = zext i32 %.0.copyload.i421 to i64
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.bk
  %.0.copyload.i422 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i422) #7, !srcloc !21
  %.not362 = icmp eq i8 %.0.copyload.i422, 112
  br i1 %.not362, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.ax
  %.0.copyload.i423 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i423) #7, !srcloc !19
  %i.bn = add i32 %.0.copyload.i423, %i.ba
  %i.bo = zext i32 %i.bn to i64
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.bo
  %.0.copyload.i424 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #7, !srcloc !19
  %i.bq = uitofp i32 %i.ay to double
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.m
  %.0.copyload.i.i = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %i.bs = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i, double noundef %i.bq)
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreOwnPropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AIRBuilder0x3A0x3APropEnumerable0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i424, i32 noundef %i.z, i32 noundef %i.bs)
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0348, i32 noundef %.0346)
  %i.bt = add i32 %.0.copyload.i416, -1
  %.not363 = icmp ult i32 %.0346, %i.bt
  br i1 %.not363, label %.preheader.preheader, label %.loopexit444

.preheader.preheader:                             ; preds = %bb.h
  %i.bu = add i32 %.0.copyload.i416, -3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %.1344 = phi i32 [ %i.cj, %bb.j ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.ax
  %.0.copyload.i425 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i425) #7, !srcloc !19
  %i.bw = add i32 %.0.copyload.i425, %i.ba
  %i.bx = zext i32 %i.bw to i64
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.bx
  %.0.copyload.i426 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i426) #7, !srcloc !19
  %i.bz = zext i32 %.0.copyload.i426 to i64
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.bz
  %.0.copyload.i427 = load i8, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i427) #7, !srcloc !21
  %.not364 = icmp eq i8 %.0.copyload.i427, 115
  br i1 %.not364, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.ax
  %.0.copyload.i428 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #7, !srcloc !19
  %i.cc = add i32 %.0.copyload.i428, %i.ba
  %i.cd = zext i32 %i.cc to i64
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.cd
  %.0.copyload.i429 = load i32, ptr %i.ce, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #7, !srcloc !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.ax
  %.0.copyload.i430 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #7, !srcloc !19
  %i.cg = add i32 %.0.copyload.i430, %i.ba
  %i.ch = zext i32 %i.cg to i64
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.ch
  %.0.copyload.i431 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i431) #7, !srcloc !19
  %i.cj = add i32 %.1344, 1                       ; 2 uses
  %i.ck = uitofp i32 %i.cj to double
  %.val.i432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i432, i64 %i.m
  %.0.copyload.i.i433 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i433) #7, !srcloc !19
  %i.cm = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i433, double noundef %i.ck)
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreOwnPropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AIRBuilder0x3A0x3APropEnumerable0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i431, i32 noundef %i.z, i32 noundef %i.cm)
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0348, i32 noundef %.0346)
  %exitcond462.not = icmp eq i32 %.1344, %i.bu
  br i1 %exitcond462.not, label %.loopexit444, label %.preheader

bb.k:                                             ; preds = %bb.g
  %i.cn = add nuw i32 %.0346, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, %.0.copyload.i416
  br i1 %exitcond.not, label %.loopexit444, label %bb.f

.loopexit444:                                     ; preds = %bb.k, %bb.j, %bb.h, %bb.e
  %.2 = phi i32 [ %.1, %bb.e ], [ 1, %bb.j ], [ 1, %bb.h ], [ %.1, %bb.k ]
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.w
  %.0.copyload.i434 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #7, !srcloc !19
  %i.cp = icmp eq i32 %.0.copyload.i434, 1
  br i1 %i.cp, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.loopexit444
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.w
  %.0.copyload.i435 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i435) #7, !srcloc !19
  %i.cr = add i32 %.0.copyload.i435, -2           ; 2 uses
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.o
  %.0.copyload.i436 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i436) #7, !srcloc !19
  %i.ct = icmp ult i32 %i.cr, %.0.copyload.i436
  br i1 %i.ct, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %.1347 = phi i32 [ %i.dd, %bb.m ], [ %i.cr, %bb.l ] ; 3 uses
  %.1347463 = add i32 %.1347, 1                   ; 2 uses
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %.0.copyload.i437 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i437) #7, !srcloc !19
  %i.cw = shl i32 %.1347463, 3
  %i.cx = add i32 %.0.copyload.i437, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.cy
  %.0.copyload.i438 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #7, !srcloc !19
  %i.da = uitofp i32 %.1347 to double
  %.val.i439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i439, i64 %i.m
  %.0.copyload.i.i440 = load i32, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i440) #7, !srcloc !19
  %i.dc = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i440, double noundef %i.da)
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreOwnPropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AIRBuilder0x3A0x3APropEnumerable0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i438, i32 noundef %i.z, i32 noundef %i.dc)
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0348, i32 noundef %.1347463)
  %i.dd = add i32 %.1347, -1                      ; 2 uses
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.o
  %.0.copyload.i441 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i441) #7, !srcloc !19
  %.not365 = icmp ult i32 %i.dd, %.0.copyload.i441
  br i1 %.not365, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.m, %.preheader447, %bb.l, %.loopexit444, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.t, %bb.c ], [ 0, %.preheader447 ], [ %i.t, %bb.l ], [ %i.t, %.loopexit444 ], [ %i.t, %bb.d ], [ %i.t, %bb.m ]
  %.3 = phi i32 [ %.1, %bb.c ], [ %.1, %.preheader447 ], [ 1, %bb.l ], [ %.2, %.loopexit444 ], [ %.1, %bb.d ], [ 1, %bb.m ] ; 2 uses
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val368, i64 %.pre-phi
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.0.copyload.i442 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i442) #7, !srcloc !19
  %.not366 = icmp eq i32 %.0.copyload.i442, %i.s
  br i1 %.not366, label %.loopexit448, label %.preheader447

.loopexit448:                                     ; preds = %.loopexit, %bb.b
  %.4 = phi i32 [ %.0, %bb.b ], [ %.3, %.loopexit ] ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.0.copyload.i443 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #7, !srcloc !19
  %.not367 = icmp eq i32 %.0.copyload.i443, %i.h
  br i1 %.not367, label %.loopexit450, label %bb.b

.loopexit450:                                     ; preds = %.loopexit448, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ %.4, %.loopexit448 ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3A0x7EIRPrinter0x280x29(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.b
  store i32 263264, ptr %i.c, align 1
  %i.d = add i32 %1, 52
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val33, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.d, i32 noundef %.0.copyload.i) #7
  %i.g = add i32 %1, 36
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.0.copyload.i35 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i35) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.g, i32 noundef %.0.copyload.i35) #7
  %i.j = add i32 %1, 20
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.0.copyload.i36 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.j, i32 noundef %.0.copyload.i36) #7
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintTypeLabel0x28hermes0x3A0x3AType0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 21 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.b
  %.0.copyload.i = load i16, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i) #7, !srcloc !24
  %.not = icmp eq i16 %.0.copyload.i, 1023
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %1 to i64
  %.val182 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.0.copyload.i193 = load i32, ptr %i.f, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i193) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i193 to i64        ; 3 uses
  %.val181 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i194 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i194) #7, !srcloc !19
  %i.j = add nuw nsw i64 %i.g, 12                 ; 4 uses
  %.val180 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.j
  %.0.copyload.i195 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i195) #7, !srcloc !19
  %i.l = sub i32 %.0.copyload.i194, %.0.copyload.i195
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i193, i32 noundef 66334, i32 noundef 3) #7 ; 2 uses
  %.pre = zext i32 %i.n to i64                    ; 2 uses
  %.pre208 = add nuw nsw i64 %.pre, 12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val191, i64 66334
  %.0.copyload.i196 = load i16, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i196) #7, !srcloc !24
  %i.p = zext i32 %.0.copyload.i195 to i64        ; 2 uses
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.p
  store i16 %.0.copyload.i196, ptr %i.q, align 1
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val188, i64 66336
  %.0.copyload.i197 = load i8, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i197) #7, !srcloc !21
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 %.0.copyload.i197, ptr %i.t, align 1
  %.val179 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.j
  %.0.copyload.i198 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #7, !srcloc !19
  %i.v = add i32 %.0.copyload.i198, 3
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.j
  store i32 %i.v, ptr %i.w, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi209 = phi i64 [ %i.j, %bb.d ], [ %.pre208, %bb.c ] ; 6 uses
  %.pre-phi = phi i64 [ %i.g, %bb.d ], [ %.pre, %bb.c ] ; 2 uses
  %.0163 = phi i32 [ %.0.copyload.i193, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.q, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %bb.e ] ; 4 uses
  %.0 = phi i32 [ %.1, %bb.q ], [ 1, %bb.e ]      ; 4 uses
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.b
  %.0.copyload.i199 = load i16, ptr %i.x, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i199) #7, !srcloc !24
  %i.y = zext i16 %.0.copyload.i199 to i32
  %i.z = icmp eq i64 %indvars.iv, 7
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i16 %.0.copyload.i199, label %bb.h [
    i16 256, label %bb.q
    i16 512, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.y
  %.not169 = icmp eq i32 %i.ac, 0
  br i1 %.not169, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not170 = icmp eq i32 %.0, 0
  br i1 %.not170, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.val178 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val178, i64 %.pre-phi209
  %.0.copyload.i200 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #7, !srcloc !19
  %.val177 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val177, i64 %.pre-phi
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i201 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #7, !srcloc !19
  %i.ag = icmp eq i32 %.0.copyload.i200, %.0.copyload.i201
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0163, i32 noundef 16393, i32 noundef 1) #7 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = zext i32 %.0.copyload.i200 to i64
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ai
  store i8 124, ptr %i.aj, align 1
  %.val176 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val176, i64 %.pre-phi209
  %.0.copyload.i202 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #7, !srcloc !19
  %i.al = add i32 %.0.copyload.i202, 1
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val184, i64 %.pre-phi209
  store i32 %i.al, ptr %i.am, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
end_hunk_1
