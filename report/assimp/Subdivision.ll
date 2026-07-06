inline.NumInlined: 871
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  %i.ayl = icmp ne i32 %i.ayk, 0
  %i.aym = select i1 %.not.i458.2, i1 %i.ayl, i1 false
  br i1 %i.aym, label %bb.cp, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.cp:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.ayn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axz) #18
          to label %bb.cq unwind label %bb.ck     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.arv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2:  ; preds = %bb.cq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ayn, i8 0, i64 %i.axz, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.2, %bb.cq
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.apq, i64 64
  store ptr %i.ayn, ptr %i.ayo, align 8
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.app, i64 72
  %i.ayq = load ptr, ptr %i.ayp, align 8
  %.not.i458.3 = icmp ne ptr %i.ayq, null
  %i.ayr = load i32, ptr %i.asf, align 4
  %i.ays = icmp ne i32 %i.ayr, 0
  %i.ayt = select i1 %.not.i458.3, i1 %i.ays, i1 false
  br i1 %i.ayt, label %bb.cr, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.cr:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.ayu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axz) #18
          to label %bb.cs unwind label %bb.ck     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.arv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3:  ; preds = %bb.cs
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ayu, i8 0, i64 %i.axz, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.3, %bb.cs
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.apq, i64 72
  store ptr %i.ayu, ptr %i.ayv, align 8
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.app, i64 80
  %i.ayx = load ptr, ptr %i.ayw, align 8
  %.not.i458.4 = icmp ne ptr %i.ayx, null
  %i.ayy = load i32, ptr %i.asf, align 4
  %i.ayz = icmp ne i32 %i.ayy, 0
  %i.aza = select i1 %.not.i458.4, i1 %i.ayz, i1 false
  br i1 %i.aza, label %bb.ct, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.ct:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.azb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axz) #18
          to label %bb.cu unwind label %bb.ck     ; 2 uses

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.arv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4:  ; preds = %bb.cu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.azb, i8 0, i64 %i.axz, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.4, %bb.cu
  %i.azc = getelementptr inbounds nuw i8, ptr %i.apq, i64 80
  store ptr %i.azb, ptr %i.azc, align 8
  %i.azd = getelementptr inbounds nuw i8, ptr %i.app, i64 88
  %i.aze = load ptr, ptr %i.azd, align 8
  %.not.i458.5 = icmp ne ptr %i.aze, null
  %i.azf = load i32, ptr %i.asf, align 4
  %i.azg = icmp ne i32 %i.azf, 0
  %i.azh = select i1 %.not.i458.5, i1 %i.azg, i1 false
  br i1 %i.azh, label %bb.cv, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.cv:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.azi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axz) #18
          to label %bb.cw unwind label %bb.ck     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.arv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5:  ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.azi, i8 0, i64 %i.axz, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.5, %bb.cw
  %i.azj = getelementptr inbounds nuw i8, ptr %i.apq, i64 88
  store ptr %i.azi, ptr %i.azj, align 8
  %i.azk = getelementptr inbounds nuw i8, ptr %i.app, i64 96
  %i.azl = load ptr, ptr %i.azk, align 8
  %.not.i458.6 = icmp ne ptr %i.azl, null
  %i.azm = load i32, ptr %i.asf, align 4
  %i.azn = icmp ne i32 %i.azm, 0
  %i.azo = select i1 %.not.i458.6, i1 %i.azn, i1 false
  br i1 %i.azo, label %bb.cx, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.cx:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.azp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axz) #18
          to label %bb.cy unwind label %bb.ck     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.arv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6:  ; preds = %bb.cy
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.azp, i8 0, i64 %i.axz, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.6, %bb.cy
  %i.azq = getelementptr inbounds nuw i8, ptr %i.apq, i64 96
  store ptr %i.azp, ptr %i.azq, align 8
  %i.azr = getelementptr inbounds nuw i8, ptr %i.app, i64 104
  %i.azs = load ptr, ptr %i.azr, align 8
  %.not.i458.7 = icmp ne ptr %i.azs, null
  %i.azt = load i32, ptr %i.asf, align 4
  %i.azu = icmp ne i32 %i.azt, 0
  %i.azv = select i1 %.not.i458.7, i1 %i.azu, i1 false
  br i1 %i.azv, label %bb.cz, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

bb.cz:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.azw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.axz) #18
          to label %bb.da unwind label %bb.ck     ; 2 uses

bb.da:                                            ; preds = %bb.cz
  br i1 %i.arv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7:  ; preds = %bb.da
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.azw, i8 0, i64 %i.axz, i1 false)
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.7:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.loopexit.7, %bb.da
  %i.azx = getelementptr inbounds nuw i8, ptr %i.apq, i64 104
  store ptr %i.azw, ptr %i.azx, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

._crit_edge3334:                                  ; preds = %._crit_edge3327, %_ZNK6aiMesh15HasVertexColorsEj.exit.thread
  %i.azy = add nuw i64 %.03493335, 1              ; 2 uses
  %exitcond3854.not = icmp eq i64 %i.azy, %2
  br i1 %exitcond3854.not, label %._crit_edge3337, label %bb.bg, !llvm.loop !56

bb.db:                                            ; preds = %.lr.ph3333, %._crit_edge3327
  %i.azz = phi i32 [ %i.axu, %.lr.ph3333 ], [ %i.baf, %._crit_edge3327 ]
  %indvars.iv3851 = phi i64 [ 0, %.lr.ph3333 ], [ %indvars.iv.next3852, %._crit_edge3327 ] ; 3 uses
  %.03393332 = phi i32 [ 0, %.lr.ph3333 ], [ %.1340.lcssa, %._crit_edge3327 ] ; 2 uses
  %.03413331 = phi i32 [ 0, %.lr.ph3333 ], [ %.1342.lcssa, %._crit_edge3327 ] ; 2 uses
  %i.baa = load ptr, ptr %i.axv, align 8
  %i.bab = getelementptr inbounds nuw [16 x i8], ptr %i.baa, i64 %indvars.iv3851 ; 5 uses
  %i.bac = load i32, ptr %i.bab, align 8
  %.not3356 = icmp eq i32 %i.bac, 0
  br i1 %.not3356, label %._crit_edge3327, label %.lr.ph3326

.lr.ph3326:                                       ; preds = %bb.db
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bab, i64 8 ; 5 uses
  %i.bae = trunc nuw i64 %indvars.iv3851 to i32
  br label %bb.dc

._crit_edge3327.loopexit:                         ; preds = %bb.el
  %.pre3926 = load i32, ptr %i.apy, align 8
  br label %._crit_edge3327

._crit_edge3327:                                  ; preds = %._crit_edge3327.loopexit, %bb.db
  %i.baf = phi i32 [ %i.azz, %bb.db ], [ %.pre3926, %._crit_edge3327.loopexit ] ; 2 uses
  %.1342.lcssa = phi i32 [ %.03413331, %bb.db ], [ %i.cku, %._crit_edge3327.loopexit ]
  %.1340.lcssa = phi i32 [ %.03393332, %bb.db ], [ %i.baj, %._crit_edge3327.loopexit ]
  %indvars.iv.next3852 = add nuw nsw i64 %indvars.iv3851, 1 ; 2 uses
  %i.bag = zext i32 %i.baf to i64
  %i.bah = icmp samesign ult i64 %indvars.iv.next3852, %i.bag
  br i1 %i.bah, label %bb.db, label %._crit_edge3334, !llvm.loop !57

bb.dc:                                            ; preds = %.lr.ph3326, %bb.el
  %indvars.iv3848 = phi i64 [ 0, %.lr.ph3326 ], [ %indvars.iv.next3849, %bb.el ] ; 9 uses
  %.13403323 = phi i32 [ %.03393332, %.lr.ph3326 ], [ %i.baj, %bb.el ] ; 2 uses
  %.13423322 = phi i32 [ %.03413331, %.lr.ph3326 ], [ %i.cku, %bb.el ] ; 6 uses
  %i.bai = load ptr, ptr %i.arq, align 8
  %i.baj = add i32 %.13403323, 1                  ; 2 uses
  %i.bak = zext i32 %.13403323 to i64
  %i.bal = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %i.bak ; 2 uses
  store i32 4, ptr %i.bal, align 8
  %i.bam = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.dd unwind label %bb.dp     ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bal, i64 8 ; 4 uses
  store ptr %i.bam, ptr %i.ban, align 8
  %i.bao = load i32, ptr %i.axw, align 4
  %i.bap = add i32 %i.bao, %i.bae
  %i.baq = zext i32 %i.bap to i64
  %i.bar = getelementptr inbounds nuw [272 x i8], ptr %.sroa.01941.0, i64 %i.baq
  %i.bas = add i32 %.13423322, 1                  ; 2 uses
  store i32 %.13423322, ptr %i.bam, align 4
  call void @_ZNK6Assimp6Vertex8SortBackEP6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %i.bar, ptr noundef nonnull %i.apq, i32 noundef %.13423322)
  %i.bat = load i32, ptr %i.axx, align 4          ; 4 uses
  %i.bau = load ptr, ptr %i.bad, align 8          ; 4 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.bau, i64 %indvars.iv3848
  %i.baw = load i32, ptr %i.bav, align 4
  %i.bax = add i32 %i.baw, %i.bat
  %i.bay = zext i32 %i.bax to i64                 ; 3 uses
  %i.baz = load ptr, ptr %6, align 8              ; 4 uses
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.baz, i64 %i.bay
  %i.bbb = load i32, ptr %i.bba, align 4          ; 2 uses
  %i.bbc = load i32, ptr %i.bab, align 8
  %i.bbd = add i32 %i.bbc, -1
  %i.bbe = zext i32 %i.bbd to i64
  %i.bbf = icmp eq i64 %indvars.iv3848, %i.bbe
  %indvars.iv.next3849 = add nuw nsw i64 %indvars.iv3848, 1 ; 3 uses
  %i.bbg = select i1 %i.bbf, i64 0, i64 %indvars.iv.next3849
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.bau, i64 %i.bbg
  %i.bbi = load i32, ptr %i.bbh, align 4
  %i.bbj = add i32 %i.bbi, %i.bat
  %i.bbk = zext i32 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.baz, i64 %i.bbk
  %i.bbm = load i32, ptr %i.bbl, align 4          ; 2 uses
  %spec.select2276 = call i32 @llvm.umin.i32(i32 %i.bbb, i32 %i.bbm)
  %spec.select2277 = call i32 @llvm.umax.i32(i32 %i.bbb, i32 %i.bbm)
  %i.bbn = zext i32 %spec.select2277 to i64
  %i.bbo = zext i32 %spec.select2276 to i64
  %i.bbp = shl nuw i64 %i.bbo, 32
  %i.bbq = or disjoint i64 %i.bbp, %i.bbn         ; 5 uses
  %i.bbr = load i64, ptr %i.bd, align 8           ; 2 uses
  %i.bbs = urem i64 %i.bbq, %i.bbr                ; 3 uses
  %i.bbt = load ptr, ptr %9, align 8
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr %i.bbt, i64 %i.bbs
  %i.bbv = load ptr, ptr %i.bbu, align 8          ; 2 uses
  %.not.i.i.i.i460 = icmp eq ptr %i.bbv, null
  br i1 %.not.i.i.i.i460, label %.loopexit.i.i466, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.bbw = load ptr, ptr %i.bbv, align 8          ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 8
  %i.bby = load i64, ptr %i.bbx, align 8
  %i.bbz = icmp eq i64 %i.bbq, %i.bby
  br i1 %i.bbz, label %.loopexit2292, label %.lr.ph.i.i.i.i461

bb.df:                                            ; preds = %bb.dg
  %i.bca = icmp eq i64 %i.bbq, %i.bcd
  br i1 %i.bca, label %.loopexit2292, label %.lr.ph.i.i.i.i461, !llvm.loop !31

.lr.ph.i.i.i.i461:                                ; preds = %bb.de, %bb.df
  %.020.i.i.i.i462 = phi ptr [ %i.bcb, %bb.df ], [ %i.bbw, %bb.de ]
  %i.bcb = load ptr, ptr %.020.i.i.i.i462, align 8 ; 4 uses
  %.not18.i.i.i.i463 = icmp eq ptr %i.bcb, null
  br i1 %.not18.i.i.i.i463, label %.loopexit.i.i466, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i461
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8
  %i.bcd = load i64, ptr %i.bcc, align 8          ; 2 uses
  %i.bce = urem i64 %i.bcd, %i.bbr
  %.not19.i.i.i.i464 = icmp eq i64 %i.bce, %i.bbs
  br i1 %.not19.i.i.i.i464, label %bb.df, label %..loopexit_crit_edge21.i.i.i.i465, !llvm.loop !31

..loopexit_crit_edge21.i.i.i.i465:                ; preds = %bb.dg
  br label %.loopexit.i.i466, !llvm.loop !31

.loopexit.i.i466:                                 ; preds = %.lr.ph.i.i.i.i461, %..loopexit_crit_edge21.i.i.i.i465, %bb.dd
  %i.bcf = invoke noalias noundef nonnull dereferenceable(568) ptr @_Znwm(i64 noundef 568) #18
          to label %.noexc470 unwind label %bb.dq ; 5 uses

.noexc470:                                        ; preds = %.loopexit.i.i466
  store ptr null, ptr %i.bcf, align 8
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  store i64 %i.bbq, ptr %i.bcg, align 8
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(548) %i.bch, i8 0, i64 548, i1 false)
  %i.bci = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.bbs, i64 noundef %i.bbq, ptr noundef nonnull %i.bcf, i64 noundef 1)
          to label %.noexc470..loopexit2292_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i467

.noexc470..loopexit2292_crit_edge:                ; preds = %.noexc470
  %.pre3915 = load i32, ptr %i.axx, align 4       ; 2 uses
  %.pre3916 = load ptr, ptr %i.bad, align 8       ; 2 uses
  %.phi.trans.insert3917 = getelementptr inbounds nuw [4 x i8], ptr %.pre3916, i64 %indvars.iv3848
  %.pre3918 = load i32, ptr %.phi.trans.insert3917, align 4
  %.pre3919 = load ptr, ptr %6, align 8
  %.pre3928 = add i32 %.pre3918, %.pre3915
  %.pre3929 = zext i32 %.pre3928 to i64
  br label %.loopexit2292

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i467: ; preds = %.noexc470
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bcf, i64 noundef 568) #20
  br label %.body471

.loopexit2292:                                    ; preds = %bb.df, %.noexc470..loopexit2292_crit_edge, %bb.de
  %.pre-phi3930 = phi i64 [ %.pre3929, %.noexc470..loopexit2292_crit_edge ], [ %i.bay, %bb.de ], [ %i.bay, %bb.df ]
  %i.bck = phi ptr [ %.pre3919, %.noexc470..loopexit2292_crit_edge ], [ %i.baz, %bb.de ], [ %i.baz, %bb.df ] ; 2 uses
  %i.bcl = phi ptr [ %.pre3916, %.noexc470..loopexit2292_crit_edge ], [ %i.bau, %bb.de ], [ %i.bau, %bb.df ]
  %i.bcm = phi i32 [ %.pre3915, %.noexc470..loopexit2292_crit_edge ], [ %i.bat, %bb.de ], [ %i.bat, %bb.df ]
  %.pn.i.i468 = phi ptr [ %i.bci, %.noexc470..loopexit2292_crit_edge ], [ %i.bbw, %bb.de ], [ %i.bcb, %bb.df ]
  %.1.i.i469 = getelementptr inbounds nuw i8, ptr %.pn.i.i468, i64 16
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %.pre-phi3930
  %i.bco = load i32, ptr %i.bcn, align 4          ; 2 uses
  %.not373 = icmp eq i64 %indvars.iv3848, 0
  %i.bcp = trunc nuw i64 %indvars.iv3848 to i32
  br i1 %.not373, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.loopexit2292
  %i.bcq = load i32, ptr %i.bab, align 8
  br label %bb.di

bb.di:                                            ; preds = %.loopexit2292, %bb.dh
  %.in = phi i32 [ %i.bcq, %bb.dh ], [ %i.bcp, %.loopexit2292 ]
  %i.bcr = add i32 %.in, -1
  %i.bcs = zext i32 %i.bcr to i64
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcl, i64 %i.bcs
  %i.bcu = load i32, ptr %i.bct, align 4
  %i.bcv = add i32 %i.bcu, %i.bcm
  %i.bcw = zext i32 %i.bcv to i64
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %i.bcw
  %i.bcy = load i32, ptr %i.bcx, align 4          ; 2 uses
  %spec.select2278 = call i32 @llvm.umin.i32(i32 %i.bco, i32 %i.bcy)
  %spec.select2279 = call i32 @llvm.umax.i32(i32 %i.bco, i32 %i.bcy)
  %i.bcz = zext i32 %spec.select2279 to i64
  %i.bda = zext i32 %spec.select2278 to i64
  %i.bdb = shl nuw i64 %i.bda, 32
  %i.bdc = or disjoint i64 %i.bdb, %i.bcz         ; 5 uses
  %i.bdd = load i64, ptr %i.bd, align 8           ; 2 uses
  %i.bde = urem i64 %i.bdc, %i.bdd                ; 3 uses
  %i.bdf = load ptr, ptr %9, align 8
  %i.bdg = getelementptr inbounds nuw [8 x i8], ptr %i.bdf, i64 %i.bde
  %i.bdh = load ptr, ptr %i.bdg, align 8          ; 2 uses
  %.not.i.i.i.i474 = icmp eq ptr %i.bdh, null
  br i1 %.not.i.i.i.i474, label %.loopexit.i.i480, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.bdi = load ptr, ptr %i.bdh, align 8          ; 3 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  %i.bdk = load i64, ptr %i.bdj, align 8
  %i.bdl = icmp eq i64 %i.bdc, %i.bdk
  br i1 %i.bdl, label %.loopexit2291, label %.lr.ph.i.i.i.i475

bb.dk:                                            ; preds = %bb.dl
  %i.bdm = icmp eq i64 %i.bdc, %i.bdp
  br i1 %i.bdm, label %.loopexit2291, label %.lr.ph.i.i.i.i475, !llvm.loop !31

.lr.ph.i.i.i.i475:                                ; preds = %bb.dj, %bb.dk
  %.020.i.i.i.i476 = phi ptr [ %i.bdn, %bb.dk ], [ %i.bdi, %bb.dj ]
  %i.bdn = load ptr, ptr %.020.i.i.i.i476, align 8 ; 4 uses
  %.not18.i.i.i.i477 = icmp eq ptr %i.bdn, null
  br i1 %.not18.i.i.i.i477, label %.loopexit.i.i480, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i.i.i475
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 8
  %i.bdp = load i64, ptr %i.bdo, align 8          ; 2 uses
  %i.bdq = urem i64 %i.bdp, %i.bdd
  %.not19.i.i.i.i478 = icmp eq i64 %i.bdq, %i.bde
  br i1 %.not19.i.i.i.i478, label %bb.dk, label %..loopexit_crit_edge21.i.i.i.i479, !llvm.loop !31

..loopexit_crit_edge21.i.i.i.i479:                ; preds = %bb.dl
  br label %.loopexit.i.i480, !llvm.loop !31

.loopexit.i.i480:                                 ; preds = %.lr.ph.i.i.i.i475, %..loopexit_crit_edge21.i.i.i.i479, %bb.di
  %i.bdr = invoke noalias noundef nonnull dereferenceable(568) ptr @_Znwm(i64 noundef 568) #18
          to label %.noexc484 unwind label %bb.dr ; 5 uses

.noexc484:                                        ; preds = %.loopexit.i.i480
  store ptr null, ptr %i.bdr, align 8
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  store i64 %i.bdc, ptr %i.bds, align 8
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(548) %i.bdt, i8 0, i64 548, i1 false)
  %i.bdu = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.bde, i64 noundef %i.bdc, ptr noundef nonnull %i.bdr, i64 noundef 1)
          to label %.loopexit2291 unwind label %_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i481

_ZNSt10_HashtableImSt4pairIKmN22CatmullClarkSubdivider4EdgeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i481: ; preds = %.noexc484
  %i.bdv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bdr, i64 noundef 568) #20
  br label %.body471

.loopexit2291:                                    ; preds = %bb.dk, %.noexc484, %bb.dj
  %.pn.i.i482 = phi ptr [ %i.bdu, %.noexc484 ], [ %i.bdi, %bb.dj ], [ %i.bdn, %bb.dk ]
  %.1.i.i483 = getelementptr inbounds nuw i8, ptr %.pn.i.i482, i64 16
  %i.bdw = add i32 %.13423322, 2                  ; 2 uses
  %i.bdx = load ptr, ptr %i.ban, align 8
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 12
  store i32 %i.bas, ptr %i.bdy, align 4
  call void @_ZNK6Assimp6Vertex8SortBackEP6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %.1.i.i469, ptr noundef nonnull %i.apq, i32 noundef %i.bas)
  %i.bdz = add i32 %.13423322, 3                  ; 2 uses
  %i.bea = load ptr, ptr %i.ban, align 8
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 4
  store i32 %i.bdw, ptr %i.beb, align 4
  call void @_ZNK6Assimp6Vertex8SortBackEP6aiMeshj(ptr noundef nonnull align 4 dereferenceable(272) %.1.i.i483, ptr noundef nonnull %i.apq, i32 noundef %i.bdw)
  %i.bec = load i32, ptr %i.axx, align 4
  %i.bed = load ptr, ptr %i.bad, align 8
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %i.bed, i64 %indvars.iv3848
  %i.bef = load i32, ptr %i.bee, align 4
  %i.beg = add i32 %i.bef, %i.bec
  %i.beh = zext i32 %i.beg to i64
  %i.bei = load ptr, ptr %6, align 8
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.bei, i64 %i.beh
  %i.bek = load i32, ptr %i.bej, align 4          ; 6 uses
  %i.bel = zext i32 %i.bek to i64                 ; 3 uses
  %i.bem = getelementptr inbounds nuw [276 x i8], ptr %.sroa.01858.0, i64 %i.bel ; 44 uses
  %i.ben = load i8, ptr %i.bem, align 4, !range !58, !noundef !59
  %i.beo = trunc nuw i8 %i.ben to i1
  br i1 %i.beo, label %bb.el, label %bb.dm

bb.dm:                                            ; preds = %.loopexit2291
  store i8 1, ptr %i.bem, align 4
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.bel
  %i.beq = load i32, ptr %i.bep, align 4
  %i.ber = zext i32 %i.beq to i64
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01886.0, i64 %i.ber
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01876.02260, i64 %i.bel
  %i.beu = load i32, ptr %i.bet, align 4          ; 3 uses
  %i.bev = icmp ult i32 %i.beu, 3
end_hunk_0
