Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastRegion?download=true
inline.NumInlined: 580
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z14rcBuildRegionsP9rcContextR20rcCompactHeightfieldiii:bb.a
  %i.zq = add nsw i32 %i.zp, %i.zn
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.zr
  %i.zt = load i32, ptr %i.zs, align 4
  %i.zu = and i32 %i.zt, 16777215
  %i.zv = add nuw nsw i32 %i.zu, %i.zm
  %i.zw = load ptr, ptr %i.qc, align 8, !tbaa !74 ; 2 uses
  %i.zx = zext nneg i32 %i.zv to i64              ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !75
  %.not120.2.i = icmp eq i8 %i.zz, %i.vn
  br i1 %.not120.2.i, label %bb.bi, label %.thread.2.i

bb.bi:                                            ; preds = %bb.bh
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.zx
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !71 ; 3 uses
  %.not121.2.i = icmp sgt i16 %i.aab, -1
  br i1 %.not121.2.i, label %bb.bj, label %.thread.2.i

bb.bj:                                            ; preds = %bb.bi
  %.not122.2.i = icmp eq i16 %i.aab, 0
  %.not123.2.i = icmp eq i16 %i.aab, %.2122279
  %or.cond.2.i = or i1 %.not122.2.i, %.not123.2.i
  br i1 %or.cond.2.i, label %bb.bk, label %.thread161.i

bb.bk:                                            ; preds = %bb.bj
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.zx
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aae = load i32, ptr %i.aad, align 4
  %i.aaf = lshr i32 %i.aae, 18
  %i.aag = and i32 %i.aaf, 63                     ; 2 uses
  %.not124.2.i = icmp eq i32 %i.aag, 63
  br i1 %.not124.2.i, label %.thread.2.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aah = add nsw i32 %i.wm, -1
  %i.aai = mul nsw i32 %i.aah, %i.vk
  %i.aaj = add nsw i32 %i.aai, %i.zn
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4
  %i.aan = and i32 %i.aam, 16777215
  %i.aao = add nuw nsw i32 %i.aan, %i.aag
  %i.aap = zext nneg i32 %i.aao to i64            ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !75
  %.not125.2.i = icmp eq i8 %i.aar, %i.vn
  br i1 %.not125.2.i, label %bb.bm, label %.thread.2.i

bb.bm:                                            ; preds = %bb.bl
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aap
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !71 ; 2 uses
  %.not126.2.i = icmp eq i16 %i.aat, 0
  %.not127.2.i = icmp eq i16 %i.aat, %.2122279
  %or.cond132.2.i = or i1 %.not126.2.i, %.not127.2.i
  br i1 %or.cond132.2.i, label %.thread.2.i, label %.thread161.i

.thread.2.i:                                      ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %.thread.1.i
  %i.aau = lshr i32 %i.wu, 18
  %i.aav = and i32 %i.aau, 63                     ; 2 uses
  %.not.3.i = icmp eq i32 %i.aav, 63
  br i1 %.not.3.i, label %.thread.3.i, label %bb.bn

bb.bn:                                            ; preds = %.thread.2.i
  %i.aaw = add nsw i32 %i.wm, -1
  %i.aax = load ptr, ptr %i.qb, align 8, !tbaa !72 ; 2 uses
  %i.aay = mul nsw i32 %i.aaw, %i.vk              ; 2 uses
  %i.aaz = add nsw i32 %i.aay, %i.wk
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.aba
  %i.abc = load i32, ptr %i.abb, align 4
  %i.abd = and i32 %i.abc, 16777215
  %i.abe = add nuw nsw i32 %i.abd, %i.aav
  %i.abf = load ptr, ptr %i.qc, align 8, !tbaa !74 ; 2 uses
  %i.abg = zext nneg i32 %i.abe to i64            ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !75
  %.not120.3.i = icmp eq i8 %i.abi, %i.vn
  br i1 %.not120.3.i, label %bb.bo, label %.thread.3.i

bb.bo:                                            ; preds = %bb.bn
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.abg
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !71 ; 3 uses
  %.not121.3.i = icmp sgt i16 %i.abk, -1
  br i1 %.not121.3.i, label %bb.bp, label %.thread.3.i

bb.bp:                                            ; preds = %bb.bo
  %.not122.3.i = icmp eq i16 %i.abk, 0
  %.not123.3.i = icmp eq i16 %i.abk, %.2122279
  %or.cond.3.i = or i1 %.not122.3.i, %.not123.3.i
  br i1 %or.cond.3.i, label %bb.bq, label %.thread161.i

bb.bq:                                            ; preds = %bb.bp
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.abg
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abn = load i32, ptr %i.abm, align 4
  %i.abo = and i32 %i.abn, 63                     ; 2 uses
  %.not124.3.i = icmp eq i32 %i.abo, 63
  br i1 %.not124.3.i, label %.thread.3.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.abp = add nsw i32 %i.wk, -1
  %i.abq = add nsw i32 %i.abp, %i.aay
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4
  %i.abu = and i32 %i.abt, 16777215
  %i.abv = add nuw nsw i32 %i.abu, %i.abo
  %i.abw = zext nneg i32 %i.abv to i64            ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !75
  %.not125.3.i = icmp eq i8 %i.aby, %i.vn
  br i1 %.not125.3.i, label %bb.bs, label %.thread.3.i

bb.bs:                                            ; preds = %bb.br
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.abw
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !71 ; 2 uses
  %.not126.3.i = icmp eq i16 %i.aca, 0
  %.not127.3.i = icmp eq i16 %i.aca, %.2122279
  %or.cond132.3.i = or i1 %.not126.3.i, %.not127.3.i
  br i1 %or.cond132.3.i, label %.thread.3.i, label %.thread161.i

.thread.3.i:                                      ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %.thread.2.i
  br i1 %.not.i243, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i, label %bb.bt

.thread161.i:                                     ; preds = %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax
  %i.acb = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.wr
  store i16 0, ptr %i.acb, align 2, !tbaa !71
  br label %.loopexit.i244

bb.bt:                                            ; preds = %.thread.3.i
  %i.acc = add nsw i32 %i.wk, -1                  ; 3 uses
  %i.acd = load ptr, ptr %i.qb, align 8, !tbaa !72
  %i.ace = mul nsw i32 %i.wm, %i.vk
  %i.acf = add nsw i32 %i.ace, %i.acc
  %i.acg = sext i32 %i.acf to i64
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4
  %i.acj = and i32 %i.aci, 16777215
  %i.ack = add nuw nsw i32 %i.acj, %i.wv          ; 3 uses
  %i.acl = load ptr, ptr %i.qc, align 8, !tbaa !74
  %i.acm = zext nneg i32 %i.ack to i64            ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !75
  %.not130.i = icmp eq i8 %i.aco, %i.vn
  br i1 %.not130.i, label %bb.bu, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

bb.bu:                                            ; preds = %bb.bt
  %i.acp = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.acp, i64 %i.acm
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !71
  %.not131.i = icmp ult i16 %i.acr, %i.uw
  br i1 %.not131.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.acs = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.acm ; 2 uses
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !71
  %i.acu = icmp eq i16 %i.act, 0
  br i1 %i.acu, label %bb.bw, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

bb.bw:                                            ; preds = %bb.bv
  store i16 %.2122279, ptr %i.acs, align 2, !tbaa !71
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.acm
  store i16 0, ptr %i.acv, align 2, !tbaa !71
  %.not205.i = icmp sgt i64 %.val168.i, %i.wb
  br i1 %.not205.i, label %bb.by, label %bb.bx, !prof !109

bb.bx:                                            ; preds = %bb.bw
  store i64 %.val168.i, ptr %6, align 8, !tbaa !116
  %i.acw = getelementptr inbounds nuw [12 x i8], ptr %i.wh, i64 %i.wp ; 3 uses
  store i32 %i.acc, ptr %i.acw, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx139.i = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx139.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx141.i = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store i32 %i.ack, ptr %.sroa.6.0..sroa_idx141.i, align 4, !tbaa !87
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

bb.by:                                            ; preds = %bb.bw
  %i.acx = add nsw i64 %i.wb, 1
  %i.acy = icmp sgt i64 %i.wb, 4611686018427387902
  %i.acz = shl nsw i64 %i.wb, 1
  %..i.i135.i = tail call i64 @llvm.smax.i64(i64 %i.acz, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.acx)
  %.0.i.i136.i = select i1 %i.acy, i64 9223372036854775807, i64 %..i.i135.i, !prof !109 ; 7 uses
  %i.ada = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.i) ; 8 uses
  %i.adb = getelementptr inbounds [12 x i8], ptr %i.ada, i64 %i.wp ; 3 uses
  store i32 %i.acc, ptr %i.adb, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx.i246, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  store i32 %i.ack, ptr %.sroa.6.0..sroa_idx.i247, align 4, !tbaa !87
  store i64 %.val168.i, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.wc) #8
  store ptr %i.ada, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i: ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu, %bb.bt, %.thread.3.i
  %i.adc = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.vy, %bb.bx ], [ %i.vy, %bb.bt ], [ %i.vy, %bb.bv ], [ %i.vy, %bb.bu ], [ %i.vy, %.thread.3.i ] ; 5 uses
  %i.add = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.vz, %bb.bx ], [ %i.vz, %bb.bt ], [ %i.vz, %bb.bv ], [ %i.vz, %bb.bu ], [ %i.vz, %.thread.3.i ] ; 5 uses
  %i.ade = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.wa, %bb.bx ], [ %i.wa, %bb.bt ], [ %i.wa, %bb.bv ], [ %i.wa, %bb.bu ], [ %i.wa, %.thread.3.i ] ; 11 uses
  %i.adf = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.wb, %bb.bx ], [ %i.wb, %bb.bt ], [ %i.wb, %bb.bv ], [ %i.wb, %bb.bu ], [ %i.wb, %.thread.3.i ] ; 4 uses
  %i.adg = phi ptr [ %i.ada, %bb.by ], [ %i.wc, %bb.bx ], [ %i.wc, %bb.bt ], [ %i.wc, %bb.bv ], [ %i.wc, %bb.bu ], [ %i.wc, %.thread.3.i ] ; 6 uses
  %i.adh = phi i64 [ %.0.i.i136.i, %bb.by ], [ %i.wb, %bb.bx ], [ %i.wd, %bb.bt ], [ %i.wd, %bb.bv ], [ %i.wd, %bb.bu ], [ %i.wd, %.thread.3.i ] ; 4 uses
  %.val168.i278 = phi i64 [ %.val168.i, %bb.by ], [ %.val168.i, %bb.bx ], [ %i.wp, %bb.bt ], [ %i.wp, %bb.bv ], [ %i.wp, %bb.bu ], [ %i.wp, %.thread.3.i ] ; 9 uses
  %i.adi = phi ptr [ %i.ada, %bb.by ], [ %i.we, %bb.bx ], [ %i.we, %bb.bt ], [ %i.we, %bb.bv ], [ %i.we, %bb.bu ], [ %i.we, %.thread.3.i ] ; 5 uses
  %i.adj = phi ptr [ %i.ada, %bb.by ], [ %i.wf, %bb.bx ], [ %i.wf, %bb.bt ], [ %i.wf, %bb.bv ], [ %i.wf, %bb.bu ], [ %i.wf, %.thread.3.i ] ; 5 uses
  %i.adk = phi ptr [ %i.ada, %bb.by ], [ %i.wg, %bb.bx ], [ %i.wg, %bb.bt ], [ %i.wg, %bb.bv ], [ %i.wg, %bb.bu ], [ %i.wg, %.thread.3.i ] ; 8 uses
  %i.adl = phi ptr [ %i.ada, %bb.by ], [ %i.wh, %bb.bx ], [ %i.wh, %bb.bt ], [ %i.wh, %bb.bv ], [ %i.wh, %bb.bu ], [ %i.wh, %.thread.3.i ] ; 4 uses
  %.val134174.i = phi ptr [ %i.ada, %bb.by ], [ %i.wh, %bb.bx ], [ %.val134.i, %bb.bt ], [ %.val134.i, %bb.bv ], [ %.val134.i, %bb.bu ], [ %.val134.i, %.thread.3.i ] ; 4 uses
  %i.adm = load i32, ptr %i.wt, align 4
  %i.adn = lshr i32 %i.adm, 6
  %i.ado = and i32 %i.adn, 63                     ; 2 uses
  %.not129.1.i = icmp eq i32 %i.ado, 63
  br i1 %.not129.1.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i, label %bb.bz

bb.bz:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i
  %i.adp = add nsw i32 %i.wm, 1                   ; 3 uses
  %i.adq = load ptr, ptr %i.qb, align 8, !tbaa !72
  %i.adr = mul nsw i32 %i.adp, %i.vk
  %i.ads = add nsw i32 %i.adr, %i.wk
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.adq, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4
  %i.adw = and i32 %i.adv, 16777215
  %i.adx = add nuw nsw i32 %i.adw, %i.ado         ; 3 uses
  %i.ady = load ptr, ptr %i.qc, align 8, !tbaa !74
  %i.adz = zext nneg i32 %i.adx to i64            ; 4 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !75
  %.not130.1.i = icmp eq i8 %i.aeb, %i.vn
  br i1 %.not130.1.i, label %bb.ca, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

bb.ca:                                            ; preds = %bb.bz
  %i.aec = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %i.aec, i64 %i.adz
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !71
  %.not131.1.i = icmp ult i16 %i.aee, %i.uw
  br i1 %.not131.1.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.adz ; 2 uses
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !71
  %i.aeh = icmp eq i16 %i.aeg, 0
  br i1 %i.aeh, label %bb.cc, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

bb.cc:                                            ; preds = %bb.cb
  store i16 %.2122279, ptr %i.aef, align 2, !tbaa !71
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.adz
  store i16 0, ptr %i.aei, align 2, !tbaa !71
  %i.aej = icmp slt i64 %.val168.i278, %i.ade
  br i1 %i.aej, label %bb.ce, label %bb.cd, !prof !107

bb.cd:                                            ; preds = %bb.cc
  %i.aek = add nsw i64 %i.ade, 1
  %i.ael = icmp sgt i64 %i.ade, 4611686018427387902
  %i.aem = shl nsw i64 %i.ade, 1
  %..i.i135.1.i = tail call i64 @llvm.smax.i64(i64 %i.aem, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.aek)
  %.0.i.i136.1.i = select i1 %i.ael, i64 9223372036854775807, i64 %..i.i135.1.i, !prof !109 ; 7 uses
  %i.aen = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.1.i) ; 8 uses
  %i.aeo = getelementptr inbounds [12 x i8], ptr %i.aen, i64 %.val168.i278 ; 3 uses
  store i32 %i.wk, ptr %i.aeo, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  store i32 %i.adp, ptr %.sroa.5.0..sroa_idx.1.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  store i32 %i.adx, ptr %.sroa.6.0..sroa_idx.1.i, align 4, !tbaa !87
  %i.aep = add nuw nsw i64 %.val168.i278, 1       ; 2 uses
  store i64 %i.aep, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.1.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.adg) #8
  store ptr %i.aen, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

bb.ce:                                            ; preds = %bb.cc
  %i.aeq = add nuw nsw i64 %.val168.i278, 1       ; 2 uses
  store i64 %i.aeq, ptr %6, align 8, !tbaa !116
  %i.aer = getelementptr inbounds [12 x i8], ptr %i.adk, i64 %.val168.i278 ; 3 uses
  store i32 %i.wk, ptr %i.aer, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx139.1.i = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  store i32 %i.adp, ptr %.sroa.5.0..sroa_idx139.1.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx141.1.i = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  store i32 %i.adx, ptr %.sroa.6.0..sroa_idx141.1.i, align 4, !tbaa !87
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i: ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i
  %i.aes = phi i64 [ %i.adc, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.adc, %bb.cb ], [ %i.adc, %bb.ca ], [ %i.adc, %bb.bz ], [ %i.adc, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 5 uses
  %i.aet = phi i64 [ %i.add, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.add, %bb.cb ], [ %i.add, %bb.ca ], [ %i.add, %bb.bz ], [ %i.add, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 12 uses
  %i.aeu = phi i64 [ %i.ade, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.ade, %bb.cb ], [ %i.ade, %bb.ca ], [ %i.ade, %bb.bz ], [ %i.ade, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.aev = phi i64 [ %i.ade, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.adf, %bb.cb ], [ %i.adf, %bb.ca ], [ %i.adf, %bb.bz ], [ %i.adf, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.aew = phi ptr [ %i.adg, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adg, %bb.cb ], [ %i.adg, %bb.ca ], [ %i.adg, %bb.bz ], [ %i.adg, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 6 uses
  %i.aex = phi i64 [ %i.ade, %bb.ce ], [ %.0.i.i136.1.i, %bb.cd ], [ %i.adh, %bb.cb ], [ %i.adh, %bb.ca ], [ %i.adh, %bb.bz ], [ %i.adh, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %.val168.i279 = phi i64 [ %i.aeq, %bb.ce ], [ %i.aep, %bb.cd ], [ %.val168.i278, %bb.cb ], [ %.val168.i278, %bb.ca ], [ %.val168.i278, %bb.bz ], [ %.val168.i278, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 9 uses
  %i.aey = phi ptr [ %i.adi, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adi, %bb.cb ], [ %i.adi, %bb.ca ], [ %i.adi, %bb.bz ], [ %i.adi, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 5 uses
  %i.aez = phi ptr [ %i.adj, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adj, %bb.cb ], [ %i.adj, %bb.ca ], [ %i.adj, %bb.bz ], [ %i.adj, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 9 uses
  %i.afa = phi ptr [ %i.adk, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adk, %bb.cb ], [ %i.adk, %bb.ca ], [ %i.adk, %bb.bz ], [ %i.adk, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.afb = phi ptr [ %i.adk, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.adl, %bb.cb ], [ %i.adl, %bb.ca ], [ %i.adl, %bb.bz ], [ %i.adl, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %.val134173.i = phi ptr [ %i.adk, %bb.ce ], [ %i.aen, %bb.cd ], [ %.val134174.i, %bb.cb ], [ %.val134174.i, %bb.ca ], [ %.val134174.i, %bb.bz ], [ %.val134174.i, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.i ] ; 4 uses
  %i.afc = load i32, ptr %i.wt, align 4
  %i.afd = lshr i32 %i.afc, 12
  %i.afe = and i32 %i.afd, 63                     ; 2 uses
  %.not129.2.i = icmp eq i32 %i.afe, 63
  br i1 %.not129.2.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i
  %i.aff = add nsw i32 %i.wk, 1                   ; 3 uses
  %i.afg = load ptr, ptr %i.qb, align 8, !tbaa !72
  %i.afh = mul nsw i32 %i.wm, %i.vk
  %i.afi = add nsw i32 %i.afh, %i.aff
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.afg, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4
  %i.afm = and i32 %i.afl, 16777215
  %i.afn = add nuw nsw i32 %i.afm, %i.afe         ; 3 uses
  %i.afo = load ptr, ptr %i.qc, align 8, !tbaa !74
  %i.afp = zext nneg i32 %i.afn to i64            ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afp
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !75
  %.not130.2.i = icmp eq i8 %i.afr, %i.vn
  br i1 %.not130.2.i, label %bb.cg, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

bb.cg:                                            ; preds = %bb.cf
  %i.afs = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.aft = getelementptr inbounds nuw [2 x i8], ptr %i.afs, i64 %i.afp
  %i.afu = load i16, ptr %i.aft, align 2, !tbaa !71
  %.not131.2.i = icmp ult i16 %i.afu, %i.uw
  br i1 %.not131.2.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.afp ; 2 uses
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !71
  %i.afx = icmp eq i16 %i.afw, 0
  br i1 %i.afx, label %bb.ci, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

bb.ci:                                            ; preds = %bb.ch
  store i16 %.2122279, ptr %i.afv, align 2, !tbaa !71
  %i.afy = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.afp
  store i16 0, ptr %i.afy, align 2, !tbaa !71
  %i.afz = icmp slt i64 %.val168.i279, %i.aet
  br i1 %i.afz, label %bb.ck, label %bb.cj, !prof !107

bb.cj:                                            ; preds = %bb.ci
  %i.aga = add nsw i64 %i.aet, 1
  %i.agb = icmp sgt i64 %i.aet, 4611686018427387902
  %i.agc = shl nsw i64 %i.aet, 1
  %..i.i135.2.i = tail call i64 @llvm.smax.i64(i64 %i.agc, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.aga)
  %.0.i.i136.2.i = select i1 %i.agb, i64 9223372036854775807, i64 %..i.i135.2.i, !prof !109 ; 7 uses
  %i.agd = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.2.i) ; 8 uses
  %i.age = getelementptr inbounds [12 x i8], ptr %i.agd, i64 %.val168.i279 ; 3 uses
  store i32 %i.aff, ptr %i.age, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx.2.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  store i32 %i.afn, ptr %.sroa.6.0..sroa_idx.2.i, align 4, !tbaa !87
  %i.agf = add nuw nsw i64 %.val168.i279, 1       ; 2 uses
  store i64 %i.agf, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.2.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.aew) #8
  store ptr %i.agd, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

bb.ck:                                            ; preds = %bb.ci
  %i.agg = add nuw nsw i64 %.val168.i279, 1       ; 2 uses
  store i64 %i.agg, ptr %6, align 8, !tbaa !116
  %i.agh = getelementptr inbounds [12 x i8], ptr %i.aez, i64 %.val168.i279 ; 3 uses
  store i32 %i.aff, ptr %i.agh, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx139.2.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  store i32 %i.wm, ptr %.sroa.5.0..sroa_idx139.2.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx141.2.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  store i32 %i.afn, ptr %.sroa.6.0..sroa_idx141.2.i, align 4, !tbaa !87
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i: ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cg, %bb.cf, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i
  %i.agi = phi i64 [ %i.aes, %bb.ck ], [ %.0.i.i136.2.i, %bb.cj ], [ %i.aes, %bb.ch ], [ %i.aes, %bb.cg ], [ %i.aes, %bb.cf ], [ %i.aes, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 13 uses
  %i.agj = phi i64 [ %i.aet, %bb.ck ], [ %.0.i.i136.2.i, %bb.cj ], [ %i.aet, %bb.ch ], [ %i.aet, %bb.cg ], [ %i.aet, %bb.cf ], [ %i.aet, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %i.agk = phi i64 [ %i.aet, %bb.ck ], [ %.0.i.i136.2.i, %bb.cj ], [ %i.aeu, %bb.ch ], [ %i.aeu, %bb.cg ], [ %i.aeu, %bb.cf ], [ %i.aeu, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %i.agl = phi i64 [ %i.aet, %bb.ck ], [ %.0.i.i136.2.i, %bb.cj ], [ %i.aev, %bb.ch ], [ %i.aev, %bb.cg ], [ %i.aev, %bb.cf ], [ %i.aev, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %i.agm = phi ptr [ %i.aew, %bb.ck ], [ %i.agd, %bb.cj ], [ %i.aew, %bb.ch ], [ %i.aew, %bb.cg ], [ %i.aew, %bb.cf ], [ %i.aew, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 6 uses
  %i.agn = phi i64 [ %i.aet, %bb.ck ], [ %.0.i.i136.2.i, %bb.cj ], [ %i.aex, %bb.ch ], [ %i.aex, %bb.cg ], [ %i.aex, %bb.cf ], [ %i.aex, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %.val168.i280 = phi i64 [ %i.agg, %bb.ck ], [ %i.agf, %bb.cj ], [ %.val168.i279, %bb.ch ], [ %.val168.i279, %bb.cg ], [ %.val168.i279, %bb.cf ], [ %.val168.i279, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 9 uses
  %i.ago = phi ptr [ %i.aey, %bb.ck ], [ %i.agd, %bb.cj ], [ %i.aey, %bb.ch ], [ %i.aey, %bb.cg ], [ %i.aey, %bb.cf ], [ %i.aey, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 10 uses
  %i.agp = phi ptr [ %i.aez, %bb.ck ], [ %i.agd, %bb.cj ], [ %i.aez, %bb.ch ], [ %i.aez, %bb.cg ], [ %i.aez, %bb.cf ], [ %i.aez, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %i.agq = phi ptr [ %i.aez, %bb.ck ], [ %i.agd, %bb.cj ], [ %i.afa, %bb.ch ], [ %i.afa, %bb.cg ], [ %i.afa, %bb.cf ], [ %i.afa, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %i.agr = phi ptr [ %i.aez, %bb.ck ], [ %i.agd, %bb.cj ], [ %i.afb, %bb.ch ], [ %i.afb, %bb.cg ], [ %i.afb, %bb.cf ], [ %i.afb, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %.val134172.i = phi ptr [ %i.aez, %bb.ck ], [ %i.agd, %bb.cj ], [ %.val134173.i, %bb.ch ], [ %.val134173.i, %bb.cg ], [ %.val134173.i, %bb.cf ], [ %.val134173.i, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.1.i ] ; 4 uses
  %i.ags = load i32, ptr %i.wt, align 4
  %i.agt = lshr i32 %i.ags, 18
  %i.agu = and i32 %i.agt, 63                     ; 2 uses
  %.not129.3.i = icmp eq i32 %i.agu, 63
  br i1 %.not129.3.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i, label %bb.cl

bb.cl:                                            ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i
  %i.agv = add nsw i32 %i.wm, -1                  ; 3 uses
  %i.agw = load ptr, ptr %i.qb, align 8, !tbaa !72
  %i.agx = mul nsw i32 %i.agv, %i.vk
  %i.agy = add nsw i32 %i.agx, %i.wk
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4
  %i.ahc = and i32 %i.ahb, 16777215
  %i.ahd = add nuw nsw i32 %i.ahc, %i.agu         ; 3 uses
  %i.ahe = load ptr, ptr %i.qc, align 8, !tbaa !74
  %i.ahf = zext nneg i32 %i.ahd to i64            ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahf
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !75
  %.not130.3.i = icmp eq i8 %i.ahh, %i.vn
  br i1 %.not130.3.i, label %bb.cm, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i

bb.cm:                                            ; preds = %bb.cl
  %i.ahi = load ptr, ptr %i.qd, align 8, !tbaa !67
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %i.ahf
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !71
  %.not131.3.i = icmp ult i16 %i.ahk, %i.uw
  br i1 %.not131.3.i, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ahl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ahf ; 2 uses
  %i.ahm = load i16, ptr %i.ahl, align 2, !tbaa !71
  %i.ahn = icmp eq i16 %i.ahm, 0
  br i1 %i.ahn, label %bb.co, label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i

bb.co:                                            ; preds = %bb.cn
  store i16 %.2122279, ptr %i.ahl, align 2, !tbaa !71
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ahf
  store i16 0, ptr %i.aho, align 2, !tbaa !71
  %i.ahp = icmp slt i64 %.val168.i280, %i.agi
  br i1 %i.ahp, label %bb.cq, label %bb.cp, !prof !107

bb.cp:                                            ; preds = %bb.co
  %i.ahq = add nsw i64 %i.agi, 1
  %i.ahr = icmp sgt i64 %i.agi, 4611686018427387902
  %i.ahs = shl nsw i64 %i.agi, 1
  %..i.i135.3.i = tail call i64 @llvm.smax.i64(i64 %i.ahs, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.ahq)
  %.0.i.i136.3.i = select i1 %i.ahr, i64 9223372036854775807, i64 %..i.i135.3.i, !prof !109 ; 7 uses
  %i.aht = call fastcc noundef ptr @_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.i.i136.3.i) ; 8 uses
  %i.ahu = getelementptr inbounds [12 x i8], ptr %i.aht, i64 %.val168.i280 ; 3 uses
  store i32 %i.wk, ptr %i.ahu, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4
  store i32 %i.agv, ptr %.sroa.5.0..sroa_idx.3.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  store i32 %i.ahd, ptr %.sroa.6.0..sroa_idx.3.i, align 4, !tbaa !87
  %i.ahv = add nuw nsw i64 %.val168.i280, 1       ; 2 uses
  store i64 %i.ahv, ptr %6, align 8, !tbaa !116
  store i64 %.0.i.i136.3.i, ptr %i.bo, align 8, !tbaa !115
  tail call void @_Z6rcFreePv(ptr noundef %i.agm) #8
  store ptr %i.aht, ptr %i.qe, align 8, !tbaa !114
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i

bb.cq:                                            ; preds = %bb.co
  %i.ahw = add nuw nsw i64 %.val168.i280, 1       ; 2 uses
  store i64 %i.ahw, ptr %6, align 8, !tbaa !116
  %i.ahx = getelementptr inbounds [12 x i8], ptr %i.ago, i64 %.val168.i280 ; 3 uses
  store i32 %i.wk, ptr %i.ahx, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx139.3.i = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4
  store i32 %i.agv, ptr %.sroa.5.0..sroa_idx139.3.i, align 4, !tbaa !87
  %.sroa.6.0..sroa_idx141.3.i = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  store i32 %i.ahd, ptr %.sroa.6.0..sroa_idx141.3.i, align 4, !tbaa !87
  br label %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i

_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i: ; preds = %bb.cq, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i
  %i.ahy = phi i64 [ %i.agi, %bb.cq ], [ %.0.i.i136.3.i, %bb.cp ], [ %i.agi, %bb.cn ], [ %i.agi, %bb.cm ], [ %i.agi, %bb.cl ], [ %i.agi, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.ahz = phi i64 [ %i.agi, %bb.cq ], [ %.0.i.i136.3.i, %bb.cp ], [ %i.agj, %bb.cn ], [ %i.agj, %bb.cm ], [ %i.agj, %bb.cl ], [ %i.agj, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aia = phi i64 [ %i.agi, %bb.cq ], [ %.0.i.i136.3.i, %bb.cp ], [ %i.agk, %bb.cn ], [ %i.agk, %bb.cm ], [ %i.agk, %bb.cl ], [ %i.agk, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aib = phi i64 [ %i.agi, %bb.cq ], [ %.0.i.i136.3.i, %bb.cp ], [ %i.agl, %bb.cn ], [ %i.agl, %bb.cm ], [ %i.agl, %bb.cl ], [ %i.agl, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aic = phi ptr [ %i.agm, %bb.cq ], [ %i.aht, %bb.cp ], [ %i.agm, %bb.cn ], [ %i.agm, %bb.cm ], [ %i.agm, %bb.cl ], [ %i.agm, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aid = phi i64 [ %i.agi, %bb.cq ], [ %.0.i.i136.3.i, %bb.cp ], [ %i.agn, %bb.cn ], [ %i.agn, %bb.cm ], [ %i.agn, %bb.cl ], [ %i.agn, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %.val168.i281 = phi i64 [ %i.ahw, %bb.cq ], [ %i.ahv, %bb.cp ], [ %.val168.i280, %bb.cn ], [ %.val168.i280, %bb.cm ], [ %.val168.i280, %bb.cl ], [ %.val168.i280, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aie = phi ptr [ %i.ago, %bb.cq ], [ %i.aht, %bb.cp ], [ %i.ago, %bb.cn ], [ %i.ago, %bb.cm ], [ %i.ago, %bb.cl ], [ %i.ago, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aif = phi ptr [ %i.ago, %bb.cq ], [ %i.aht, %bb.cp ], [ %i.agp, %bb.cn ], [ %i.agp, %bb.cm ], [ %i.agp, %bb.cl ], [ %i.agp, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aig = phi ptr [ %i.ago, %bb.cq ], [ %i.aht, %bb.cp ], [ %i.agq, %bb.cn ], [ %i.agq, %bb.cm ], [ %i.agq, %bb.cl ], [ %i.agq, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aih = phi ptr [ %i.ago, %bb.cq ], [ %i.aht, %bb.cp ], [ %i.agr, %bb.cn ], [ %i.agr, %bb.cm ], [ %i.agr, %bb.cl ], [ %i.agr, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %.val134177.i = phi ptr [ %i.ago, %bb.cq ], [ %i.aht, %bb.cp ], [ %.val134172.i, %bb.cn ], [ %.val134172.i, %bb.cm ], [ %.val134172.i, %bb.cl ], [ %.val134172.i, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.2.i ]
  %i.aii = add nsw i32 %.0115167.i, 1
  br label %.loopexit.i244

.loopexit.i244:                                   ; preds = %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i, %.thread161.i
  %i.aij = phi i64 [ %i.vy, %.thread161.i ], [ %i.ahy, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %i.aik = phi i64 [ %i.vz, %.thread161.i ], [ %i.ahz, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %i.ail = phi i64 [ %i.wa, %.thread161.i ], [ %i.aia, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %i.aim = phi i64 [ %i.wb, %.thread161.i ], [ %i.aib, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %i.ain = phi ptr [ %i.wc, %.thread161.i ], [ %i.aic, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %i.aio = phi i64 [ %i.wd, %.thread161.i ], [ %i.aid, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %.val.i245 = phi i64 [ %i.wp, %.thread161.i ], [ %.val168.i281, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 2 uses
  %i.aip = phi ptr [ %i.we, %.thread161.i ], [ %i.aie, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 4 uses
  %i.aiq = phi ptr [ %i.wf, %.thread161.i ], [ %i.aif, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ]
  %i.air = phi ptr [ %i.wg, %.thread161.i ], [ %i.aig, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ]
  %i.ais = phi ptr [ %i.wh, %.thread161.i ], [ %i.aih, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ]
  %.val134176.i = phi ptr [ %.val134.i, %.thread161.i ], [ %.val134177.i, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ]
  %.1116.i = phi i32 [ %.0115167.i, %.thread161.i ], [ %i.aii, %_ZN12rcVectorBaseIN12_GLOBAL__N_115LevelStackEntryEL11rcAllocHint1EE9push_backERKS1_.exit137.3.i ] ; 2 uses
  %i.ait = icmp sgt i64 %.val.i245, 0
  br i1 %i.ait, label %bb.au, label %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit

_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit: ; preds = %.loopexit.i244
  %i.aiu = icmp sgt i32 %.1116.i, 0
  br i1 %i.aiu, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit
  %i.aiv = icmp eq i16 %.2122279, -1
  br i1 %i.aiv, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aiw = add nuw i16 %.2122279, 1
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.5) #8
  br label %.loopexit

bb.cu:                                            ; preds = %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit, %bb.cs, %bb.as, %bb.ar
  %i.aix = phi i64 [ %i.ux, %bb.ar ], [ %i.ux, %bb.as ], [ %i.aij, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.aij, %bb.cs ] ; 2 uses
  %i.aiy = phi i64 [ %i.uy, %bb.ar ], [ %i.uy, %bb.as ], [ %i.aik, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.aik, %bb.cs ] ; 2 uses
  %i.aiz = phi i64 [ %i.uz, %bb.ar ], [ %i.uz, %bb.as ], [ %i.ail, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.ail, %bb.cs ] ; 2 uses
  %i.aja = phi i64 [ %i.va, %bb.ar ], [ %i.va, %bb.as ], [ %i.aim, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.aim, %bb.cs ] ; 2 uses
  %i.ajb = phi ptr [ %i.vb, %bb.ar ], [ %i.vb, %bb.as ], [ %i.ain, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.ain, %bb.cs ] ; 2 uses
  %i.ajc = phi ptr [ %i.vc, %bb.ar ], [ %i.vc, %bb.as ], [ %i.aip, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.aip, %bb.cs ] ; 2 uses
  %i.ajd = phi i64 [ %i.vd, %bb.ar ], [ %i.vd, %bb.as ], [ %i.aio, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.aio, %bb.cs ] ; 2 uses
  %.4124.ph = phi i16 [ %.2122279, %bb.ar ], [ %.2122279, %bb.as ], [ %.2122279, %_ZL11floodRegioniiittR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEE.exit ], [ %i.aiw, %bb.cs ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.val
  br i1 %exitcond.not, label %.loopexit, label %bb.ar

.loopexit:                                        ; preds = %bb.cu, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239, %bb.ct
  %i.aje = phi i64 [ %i.aij, %bb.ct ], [ %i.qg, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.aix, %bb.cu ]
  %i.ajf = phi i64 [ %i.aik, %bb.ct ], [ %i.qh, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.aiy, %bb.cu ]
  %i.ajg = phi i64 [ %i.ail, %bb.ct ], [ %i.qi, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.aiz, %bb.cu ]
  %i.ajh = phi i64 [ %i.aim, %bb.ct ], [ %i.qj, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.aja, %bb.cu ]
  %i.aji = phi ptr [ %i.ain, %bb.ct ], [ %i.qk, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.ajb, %bb.cu ]
  %i.ajj = phi ptr [ %i.aip, %bb.ct ], [ %i.ql, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.ajc, %bb.cu ]
  %i.ajk = phi i64 [ %i.aio, %bb.ct ], [ %i.qm, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %i.ajd, %bb.cu ]
  %.not138274 = phi i1 [ true, %bb.ct ], [ false, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ false, %bb.cu ]
  %.5125 = phi i16 [ -1, %bb.ct ], [ %.1121, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit239 ], [ %.4124.ph, %bb.cu ]
  %i.ajl = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ajm = trunc nuw i8 %i.ajl to i1
  br i1 %i.ajm, label %bb.cv, label %_ZN13rcScopedTimerD2Ev.exit248

bb.cv:                                            ; preds = %.loopexit
  %i.ajn = load ptr, ptr %0, align 8, !tbaa !21
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 48
  %i.ajp = load ptr, ptr %i.ajo, align 8
  tail call void %i.ajp(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 23) #8, !call_target !80, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit248

_ZN13rcScopedTimerD2Ev.exit248:                   ; preds = %.loopexit, %bb.cv
  br i1 %.not138274, label %_ZN13rcScopedTimerD2Ev.exit251, label %bb.aa

bb.cw:                                            ; preds = %bb.aa
  call fastcc void @_ZL13expandRegionsitR20rcCompactHeightfieldPtS1_R12rcTempVectorIN12_GLOBAL__N_115LevelStackEntryEEb(i32 noundef 64, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.n, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true)
  %i.ajq = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ajr = trunc nuw i8 %i.ajq to i1
  br i1 %i.ajr, label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit249

_ZN9rcContext9stopTimerE12rcTimerLabel.exit:      ; preds = %bb.cw
  %i.ajs = load ptr, ptr %0, align 8, !tbaa !21
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 48
  %i.aju = load ptr, ptr %i.ajt, align 8
  tail call void %i.aju(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 21) #8, !call_target !80, !inline_history !229
  %.pre298 = load i8, ptr %i.a, align 1, !tbaa !17, !range !18
  %i.ajv = trunc nuw i8 %.pre298 to i1
  br i1 %i.ajv, label %bb.cx, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit249

bb.cx:                                            ; preds = %_ZN9rcContext9stopTimerE12rcTimerLabel.exit
  %i.ajw = load ptr, ptr %0, align 8, !tbaa !21
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8
  tail call void %i.ajy(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 24) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit249

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit249: ; preds = %bb.cw, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  store i16 %.1121, ptr %i.ajz, align 2, !tbaa !82
  %i.aka = call fastcc noundef zeroext i1 @_ZL21mergeAndFilterRegionsP9rcContextiiRtR20rcCompactHeightfieldPtR12rcTempVectorIiE(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 2 dereferenceable(2) %i.ajz, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.aka, label %bb.cy, label %.critedge

bb.cy:                                            ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit249
  %i.akb = load i64, ptr %7, align 8, !tbaa !105  ; 2 uses
  %i.akc = icmp sgt i64 %i.akb, 0
  br i1 %i.akc, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i64 noundef %i.akb) #8
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.akd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !86
  call void @_Z6rcFreePv(ptr noundef %i.ake) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.akf = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.akg = trunc nuw i8 %i.akf to i1
  br i1 %i.akg, label %bb.db, label %_ZN13rcScopedTimerD2Ev.exit250

bb.db:                                            ; preds = %bb.da
  %i.akh = load ptr, ptr %0, align 8, !tbaa !21
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 48
  %i.akj = load ptr, ptr %i.aki, align 8
  call void %i.akj(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 24) #8, !call_target !80, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit250

_ZN13rcScopedTimerD2Ev.exit250:                   ; preds = %bb.da, %bb.db
  %i.akk = load i32, ptr %i.j, align 8, !tbaa !68 ; 3 uses
  %i.akl = icmp sgt i32 %i.akk, 0
  br i1 %i.akl, label %.lr.ph284, label %_ZN13rcScopedTimerD2Ev.exit251

.lr.ph284:                                        ; preds = %_ZN13rcScopedTimerD2Ev.exit250
  %i.akm = load ptr, ptr %i.qf, align 8, !tbaa !73 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.akk to i64  ; 2 uses
  %xtraiter696 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.akn = icmp ult i32 %i.akk, 8
  br i1 %i.akn, label %.epil.preheader, label %.lr.ph284.new

.lr.ph284.new:                                    ; preds = %.lr.ph284
  %unroll_iter699 = and i64 %wide.trip.count, 2147483640
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.lr.ph284.new
  %indvars.iv289 = phi i64 [ 0, %.lr.ph284.new ], [ %indvars.iv.next290.7, %bb.dc ] ; 10 uses
  %niter700 = phi i64 [ 0, %.lr.ph284.new ], [ %niter700.next.7, %bb.dc ]
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv289
  %i.akp = load i16, ptr %i.ako, align 2, !tbaa !71
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv289
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 2
  store i16 %i.akp, ptr %i.akr, align 2, !tbaa !95
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290
  %i.akt = load i16, ptr %i.aks, align 2, !tbaa !71
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 2
  store i16 %i.akt, ptr %i.akv, align 2, !tbaa !95
  %indvars.iv.next290.1 = or disjoint i64 %indvars.iv289, 2 ; 2 uses
  %i.akw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290.1
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !71
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290.1
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 2
  store i16 %i.akx, ptr %i.akz, align 2, !tbaa !95
  %indvars.iv.next290.2 = or disjoint i64 %indvars.iv289, 3 ; 2 uses
  %i.ala = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290.2
  %i.alb = load i16, ptr %i.ala, align 2, !tbaa !71
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290.2
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 2
  store i16 %i.alb, ptr %i.ald, align 2, !tbaa !95
  %indvars.iv.next290.3 = or disjoint i64 %indvars.iv289, 4 ; 2 uses
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290.3
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !71
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290.3
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 2
  store i16 %i.alf, ptr %i.alh, align 2, !tbaa !95
  %indvars.iv.next290.4 = or disjoint i64 %indvars.iv289, 5 ; 2 uses
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290.4
  %i.alj = load i16, ptr %i.ali, align 2, !tbaa !71
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290.4
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 2
  store i16 %i.alj, ptr %i.all, align 2, !tbaa !95
  %indvars.iv.next290.5 = or disjoint i64 %indvars.iv289, 6 ; 2 uses
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290.5
  %i.aln = load i16, ptr %i.alm, align 2, !tbaa !71
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290.5
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 2
  store i16 %i.aln, ptr %i.alp, align 2, !tbaa !95
  %indvars.iv.next290.6 = or disjoint i64 %indvars.iv289, 7 ; 2 uses
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next290.6
  %i.alr = load i16, ptr %i.alq, align 2, !tbaa !71
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv.next290.6
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 2
  store i16 %i.alr, ptr %i.alt, align 2, !tbaa !95
  %indvars.iv.next290.7 = add nuw nsw i64 %indvars.iv289, 8 ; 2 uses
  %niter700.next.7 = add i64 %niter700, 8         ; 2 uses
  %niter700.ncmp.7 = icmp eq i64 %niter700.next.7, %unroll_iter699
  br i1 %niter700.ncmp.7, label %_ZN13rcScopedTimerD2Ev.exit251.loopexit.unr-lcssa, label %bb.dc

.critedge:                                        ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit249
  %i.alu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !86
  call void @_Z6rcFreePv(ptr noundef %i.alv) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.alw = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.dd, label %_ZN13rcScopedTimerD2Ev.exit251

bb.dd:                                            ; preds = %.critedge
  %i.aly = load ptr, ptr %0, align 8, !tbaa !21
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 48
end_hunk_0
