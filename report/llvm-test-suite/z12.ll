Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z12?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@MinSize:bb.a
  br i1 %.not1629, label %._crit_edge2008, label %.preheader1828, !llvm.loop !61

._crit_edge2008:                                  ; preds = %bb.tr, %._crit_edge1995
  %.lcssa2003 = phi i32 [ %.lcssa1990, %._crit_edge1995 ], [ %i.dgz, %bb.tr ] ; 2 uses
  %.17542001.lcssa = phi i32 [ %.17531988.lcssa, %._crit_edge1995 ], [ %.17542000, %bb.tr ] ; 2 uses
  store i32 %.17542001.lcssa, ptr %i.b, align 4
  store i32 %.lcssa2003, ptr %i.c, align 4
  store i32 %.17542001.lcssa, ptr %i.dgh, align 4, !tbaa !8
  store i32 %.lcssa2003, ptr %i.dgj, align 4, !tbaa !8
  br label %.thread1799

bb.ts:                                            ; preds = %bb.a
  %i.dhb = icmp eq i32 %1, 1
  br i1 %i.dhb, label %bb.tu, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.dhc = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dhd = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dhc, ptr noundef nonnull @.str.27) #8 ; 0 uses
  br label %bb.tu

bb.tu:                                            ; preds = %bb.tt, %bb.ts
  %i.dhe = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.dhf = load i8, ptr %i.dhe, align 1, !tbaa !8
  %i.dhg = icmp eq i8 %i.dhf, 0
  br i1 %i.dhg, label %bb.tv, label %.thread1799

bb.tv:                                            ; preds = %bb.tu
  %i.dhh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dhi = load ptr, ptr %i.dhh, align 8, !tbaa !8 ; 2 uses
  %.not1618 = icmp eq ptr %i.dhi, %0
  br i1 %.not1618, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %bb.tv
  %i.dhj = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dhk = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dhj, ptr noundef nonnull @.str.28) #8 ; 0 uses
  %.122018.pre = load ptr, ptr %i.dhh, align 8, !tbaa !8
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  %.122018 = phi ptr [ %.122018.pre, %bb.tw ], [ %i.dhi, %bb.tv ] ; 2 uses
  %.not16192019 = icmp eq ptr %.122018, %0
  %.pre2161 = sext i32 %1 to i64                  ; 6 uses
  br i1 %.not16192019, label %._crit_edge2022, label %.preheader1826

.preheader1826:                                   ; preds = %bb.tx, %bb.ub
  %.122021 = phi ptr [ %.12, %bb.ub ], [ %.122018, %bb.tx ] ; 2 uses
  %.175520152020 = phi i32 [ %.17552014, %bb.ub ], [ 0, %bb.tx ] ; 2 uses
  %i.dhl = phi i32 [ %i.dia, %bb.ub ], [ 0, %bb.tx ] ; 2 uses
  br label %bb.ty

bb.ty:                                            ; preds = %.preheader1826, %bb.ty
  %.12.pn = phi ptr [ %.34, %bb.ty ], [ %.122021, %.preheader1826 ]
  %.34.in = getelementptr inbounds nuw i8, ptr %.12.pn, i64 16
  %.34 = load ptr, ptr %.34.in, align 8, !tbaa !8 ; 4 uses
  %i.dhm = getelementptr inbounds nuw i8, ptr %.34, i64 32
  %i.dhn = load i8, ptr %i.dhm, align 8, !tbaa !8 ; 2 uses
  switch i8 %i.dhn, label %.loopexit1827 [
    i8 0, label %bb.ty
    i8 1, label %bb.tz
  ]

bb.tz:                                            ; preds = %bb.ty
  %i.dho = getelementptr inbounds nuw i8, ptr %.34, i64 32
  %i.dhp = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dhq = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dhp, ptr noundef nonnull @.str.29) #8 ; 0 uses
  %.pre2140 = load i8, ptr %i.dho, align 8, !tbaa !8
  br label %.loopexit1827

.loopexit1827:                                    ; preds = %bb.ty, %bb.tz
  %i.dhr = phi i8 [ %.pre2140, %bb.tz ], [ %i.dhn, %bb.ty ]
  %.off1774 = add i8 %i.dhr, -43
  %switch1775 = icmp ult i8 %.off1774, 4
  br i1 %switch1775, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %.loopexit1827
  %i.dhs = tail call ptr @MinSize(ptr noundef nonnull %.34, i32 noundef %1, ptr noundef %2) ; 2 uses
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dhs, i64 48
  %i.dhu = getelementptr inbounds [4 x i8], ptr %i.dht, i64 %.pre2161
  %i.dhv = load i32, ptr %i.dhu, align 4, !tbaa !8
  %.1755 = tail call i32 @llvm.smax.i32(i32 %.175520152020, i32 %i.dhv)
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhs, i64 56
  %i.dhx = getelementptr inbounds [4 x i8], ptr %i.dhw, i64 %.pre2161
  %i.dhy = load i32, ptr %i.dhx, align 4, !tbaa !8
  %i.dhz = tail call i32 @llvm.smax.i32(i32 %i.dhl, i32 %i.dhy)
  br label %bb.ub

bb.ub:                                            ; preds = %.loopexit1827, %bb.ua
  %i.dia = phi i32 [ %i.dhl, %.loopexit1827 ], [ %i.dhz, %bb.ua ] ; 2 uses
  %.17552014 = phi i32 [ %.175520152020, %.loopexit1827 ], [ %.1755, %bb.ua ] ; 2 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %.122021, i64 8
  %.12 = load ptr, ptr %i.dib, align 8, !tbaa !8  ; 2 uses
  %.not1619 = icmp eq ptr %.12, %0
  br i1 %.not1619, label %._crit_edge2022, label %.preheader1826, !llvm.loop !62

._crit_edge2022:                                  ; preds = %bb.ub, %bb.tx
  %.lcssa2017 = phi i32 [ 0, %bb.tx ], [ %i.dia, %bb.ub ] ; 2 uses
  %.17552015.lcssa = phi i32 [ 0, %bb.tx ], [ %.17552014, %bb.ub ] ; 2 uses
  store i32 %.17552015.lcssa, ptr %i.b, align 4
  store i32 %.lcssa2017, ptr %i.c, align 4
  %i.dic = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.did = getelementptr inbounds [4 x i8], ptr %i.dic, i64 %.pre2161 ; 3 uses
  store i32 %.17552015.lcssa, ptr %i.did, align 4, !tbaa !8
  %i.die = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dif = getelementptr inbounds [4 x i8], ptr %i.die, i64 %.pre2161 ; 3 uses
  store i32 %.lcssa2017, ptr %i.dif, align 4, !tbaa !8
  store i8 1, ptr %i.dhe, align 1, !tbaa !8
  %.132027 = load ptr, ptr %i.dhh, align 8, !tbaa !8 ; 2 uses
  %.not16202028 = icmp eq ptr %.132027, %0
  br i1 %.not16202028, label %.thread1799, label %.preheader

.preheader:                                       ; preds = %._crit_edge2022, %bb.uf
  %.132029 = phi ptr [ %.13, %bb.uf ], [ %.132027, %._crit_edge2022 ] ; 2 uses
  br label %bb.uc

bb.uc:                                            ; preds = %.preheader, %bb.uc
  %.13.pn = phi ptr [ %.35, %bb.uc ], [ %.132029, %.preheader ]
  %.35.in = getelementptr inbounds nuw i8, ptr %.13.pn, i64 16
  %.35 = load ptr, ptr %.35.in, align 8, !tbaa !8 ; 4 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %.35, i64 32
  %i.dih = load i8, ptr %i.dig, align 8, !tbaa !8 ; 2 uses
  switch i8 %i.dih, label %.loopexit [
    i8 0, label %bb.uc
    i8 1, label %bb.ud
  ]

bb.ud:                                            ; preds = %bb.uc
  %i.dii = getelementptr inbounds nuw i8, ptr %.35, i64 32
  %i.dij = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dik = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dij, ptr noundef nonnull @.str.29) #8 ; 0 uses
  %.pre2141 = load i8, ptr %i.dii, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.uc, %bb.ud
  %i.dil = phi i8 [ %.pre2141, %bb.ud ], [ %i.dih, %bb.uc ]
  %.off1776 = add i8 %i.dil, -43
  %switch1777 = icmp ult i8 %.off1776, 4
  br i1 %switch1777, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %.loopexit
  %i.dim = tail call ptr @MinSize(ptr noundef nonnull %.35, i32 noundef %1, ptr noundef %2) ; 2 uses
  %i.din = load i32, ptr %i.did, align 4, !tbaa !8
  %i.dio = getelementptr inbounds nuw i8, ptr %i.dim, i64 48
  %i.dip = getelementptr inbounds [4 x i8], ptr %i.dio, i64 %.pre2161
  %i.diq = load i32, ptr %i.dip, align 4, !tbaa !8
  %.1756 = tail call i32 @llvm.smax.i32(i32 %i.din, i32 %i.diq)
  store i32 %.1756, ptr %i.did, align 4, !tbaa !8
  %i.dir = load i32, ptr %i.dif, align 4, !tbaa !8
  %i.dis = getelementptr inbounds nuw i8, ptr %i.dim, i64 56
  %i.dit = getelementptr inbounds [4 x i8], ptr %i.dis, i64 %.pre2161
  %i.diu = load i32, ptr %i.dit, align 4, !tbaa !8
  %i.div = tail call i32 @llvm.smax.i32(i32 %i.dir, i32 %i.diu)
  store i32 %i.div, ptr %i.dif, align 4, !tbaa !8
  br label %bb.uf

bb.uf:                                            ; preds = %.loopexit, %bb.ue
  %i.diw = getelementptr inbounds nuw i8, ptr %.132029, i64 8
  %.13 = load ptr, ptr %i.diw, align 8, !tbaa !8  ; 2 uses
  %.not1620 = icmp eq ptr %.13, %0
  br i1 %.not1620, label %.thread1799, label %.preheader, !llvm.loop !63

bb.ug:                                            ; preds = %bb.a, %bb.a
  %i.dix = icmp eq i32 %1, 1
  br i1 %i.dix, label %.thread1799, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.diy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.diz = load ptr, ptr %i.diy, align 8, !tbaa !8
  br label %bb.ui

bb.ui:                                            ; preds = %bb.ui, %bb.uh
  %.pn1617 = phi ptr [ %i.diz, %bb.uh ], [ %.36, %bb.ui ]
  %.36.in = getelementptr inbounds nuw i8, ptr %.pn1617, i64 16
  %.36 = load ptr, ptr %.36.in, align 8, !tbaa !8 ; 6 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %.36, i64 32
  %i.djb = load i8, ptr %i.dja, align 8, !tbaa !8
  %i.djc = icmp eq i8 %i.djb, 0
  br i1 %i.djc, label %bb.ui, label %select.unfold, !llvm.loop !64

select.unfold:                                    ; preds = %bb.ui
  %i.djd = getelementptr inbounds nuw i8, ptr %.36, i64 32
  %i.dje = getelementptr inbounds nuw i8, ptr %.36, i64 64
  %i.djf = call ptr @OpenIncGraphicFile(ptr noundef nonnull %i.dje, i8 noundef zeroext %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.djd, ptr noundef nonnull %i.h) #8 ; 7 uses
  %.not2485 = icmp eq ptr %i.djf, null
  br i1 %.not2485, label %bb.um, label %.preheader2397.preheader

.preheader2397.preheader:                         ; preds = %select.unfold
  %i.djg = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.djf, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.i) #8
  %i.djh = add i32 %i.djg, 1
  %or.cond242554 = icmp ult i32 %i.djh, 2
  br i1 %or.cond242554, label %.preheader2397._crit_edge, label %.lr.ph2556

select.unfold.jt4:                                ; preds = %bb.ul
  %i.dji = load float, ptr %i.d, align 4, !tbaa !72
  %i.djj = load float, ptr %i.e, align 4, !tbaa !72
  %i.djk = load float, ptr %i.f, align 4, !tbaa !72
  %i.djl = load float, ptr %i.g, align 4, !tbaa !72
  %i.djm = insertelement <4 x float> poison, float %i.dji, i64 0
  %i.djn = insertelement <4 x float> %i.djm, float %i.djj, i64 1
  %i.djo = insertelement <4 x float> %i.djn, float %i.djk, i64 2
  %i.djp = insertelement <4 x float> %i.djo, float %i.djl, i64 3
  %i.djq = fptosi <4 x float> %i.djp to <4 x i32> ; 5 uses
  %i.djr = load ptr, ptr %i.diy, align 8, !tbaa !8
  br label %bb.uq

select.unfold.jt0:                                ; preds = %bb.uk, %bb.uj, %.critedge2557
  %i.djs = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.djf, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.i) #8
  %i.djt = add i32 %i.djs, 1
  %or.cond24 = icmp ult i32 %i.djt, 2
  br i1 %or.cond24, label %.preheader2397._crit_edge, label %.critedge2557

.lr.ph2556:                                       ; preds = %.preheader2397.preheader
  %i.dju = call i32 @StringBeginsWith(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.31) #8
  %.not1610 = icmp eq i32 %i.dju, 0
  br i1 %.not1610, label %select.unfold.jt2, label %.critedge2557

.critedge2557:                                    ; preds = %.lr.ph2556, %select.unfold.jt0
  %i.djv = load i8, ptr %i.i, align 16, !tbaa !8
  %i.djw = icmp eq i8 %i.djv, 37
  br i1 %i.djw, label %bb.uj, label %select.unfold.jt0

bb.uj:                                            ; preds = %.critedge2557
  %i.djx = call i32 @StringBeginsWith(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.32) #8
  %.not1611 = icmp eq i32 %i.djx, 0
  br i1 %.not1611, label %select.unfold.jt0, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.djy = call i32 @StringContains(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.33) #8
  %.not1612 = icmp eq i32 %i.djy, 0
  br i1 %.not1612, label %bb.ul, label %select.unfold.jt0

bb.ul:                                            ; preds = %bb.uk
  %i.djz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #8
  %i.dka = icmp eq i32 %i.djz, 4
  br i1 %i.dka, label %select.unfold.jt4, label %select.unfold.jt3

bb.um:                                            ; preds = %select.unfold
  %i.dkb = load i8, ptr %i.j, align 8, !tbaa !8
  %i.dkc = icmp eq i8 %i.dkb, 94
  %i.dkd = select i1 %i.dkc, ptr @.str.36, ptr @.str.37
  %i.dke = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dke, i64 64
  %i.dkg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 5, ptr noundef nonnull @.str.35, i32 noundef 2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dkd, ptr noundef nonnull %i.dkf) #8 ; 0 uses
  %i.dkh = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.dkh, align 1, !tbaa !8
  %i.dki = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dki, i8 0, i64 16, i1 false)
  br label %bb.ut

.preheader2397._crit_edge:                        ; preds = %select.unfold.jt0, %.preheader2397.preheader
  %i.dkj = load i8, ptr %i.j, align 8, !tbaa !8
  %i.dkk = icmp eq i8 %i.dkj, 94
  %i.dkl = select i1 %i.dkk, ptr @.str.36, ptr @.str.37
  %i.dkm = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 64
  %i.dko = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 6, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dkl, ptr noundef nonnull %i.dkn) #8 ; 0 uses
  %i.dkp = getelementptr inbounds nuw i8, ptr %.36, i64 48
  %i.dkq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dkp, i8 0, i64 16, i1 false)
  %i.dkr = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dkq, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.dkr, align 1, !tbaa !8
  %i.dks = call i32 @fclose(ptr noundef nonnull %i.djf) ; 0 uses
  %i.dkt = load i32, ptr %i.h, align 4, !tbaa !7
  %.not1616 = icmp eq i32 %i.dkt, 0
  br i1 %.not1616, label %bb.ut, label %bb.un

bb.un:                                            ; preds = %.preheader2397._crit_edge
  %i.dku = call i32 @remove(ptr noundef nonnull @.str.39) #8 ; 0 uses
  br label %bb.ut

select.unfold.jt2:                                ; preds = %.lr.ph2556
  %i.dkv = load i8, ptr %i.j, align 8, !tbaa !8
  %i.dkw = icmp eq i8 %i.dkv, 94
  %i.dkx = select i1 %i.dkw, ptr @.str.36, ptr @.str.37
  %i.dky = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dky, i64 64
  %i.dla = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 7, ptr noundef nonnull @.str.40, i32 noundef 2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dkx, ptr noundef nonnull %i.dkz) #8 ; 0 uses
  %i.dlb = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.dlb, align 1, !tbaa !8
  %i.dlc = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dlc, i8 0, i64 16, i1 false)
  %i.dld = call i32 @fclose(ptr noundef nonnull %i.djf) ; 0 uses
  %i.dle = load i32, ptr %i.h, align 4, !tbaa !7
  %.not1615 = icmp eq i32 %i.dle, 0
  br i1 %.not1615, label %bb.ut, label %bb.uo

bb.uo:                                            ; preds = %select.unfold.jt2
  %i.dlf = call i32 @remove(ptr noundef nonnull @.str.39) #8 ; 0 uses
  br label %bb.ut

select.unfold.jt3:                                ; preds = %bb.ul
  %i.dlg = load i8, ptr %i.j, align 8, !tbaa !8
  %i.dlh = icmp eq i8 %i.dlg, 94
  %i.dli = select i1 %i.dlh, ptr @.str.36, ptr @.str.37
  %i.dlj = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlj, i64 64
  %i.dll = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 12, i32 noundef 8, ptr noundef nonnull @.str.41, i32 noundef 2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dli, ptr noundef nonnull %i.dlk) #8 ; 0 uses
  %i.dlm = getelementptr inbounds nuw i8, ptr %.36, i64 48
  %i.dln = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dlm, i8 0, i64 16, i1 false)
  %i.dlo = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dln, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.dlo, align 1, !tbaa !8
  %i.dlp = call i32 @fclose(ptr noundef nonnull %i.djf) ; 0 uses
  %i.dlq = load i32, ptr %i.h, align 4, !tbaa !7
  %.not1614 = icmp eq i32 %i.dlq, 0
  br i1 %.not1614, label %bb.ut, label %bb.up

bb.up:                                            ; preds = %select.unfold.jt3
  %i.dlr = call i32 @remove(ptr noundef nonnull @.str.39) #8 ; 0 uses
  br label %bb.ut

bb.uq:                                            ; preds = %bb.uq, %select.unfold.jt4
  %.pn = phi ptr [ %i.djr, %select.unfold.jt4 ], [ %.37, %bb.uq ]
  %.37.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.37 = load ptr, ptr %.37.in, align 8, !tbaa !8 ; 3 uses
  %i.dls = getelementptr inbounds nuw i8, ptr %.37, i64 32
  %i.dlt = load i8, ptr %i.dls, align 8, !tbaa !8
  %i.dlu = icmp eq i8 %i.dlt, 0
  br i1 %i.dlu, label %bb.uq, label %bb.ur, !llvm.loop !65

bb.ur:                                            ; preds = %bb.uq
  %i.dlv = getelementptr inbounds nuw i8, ptr %.37, i64 48
  store <4 x i32> %i.djq, ptr %i.dlv, align 8, !tbaa !8
  %shift = shufflevector <4 x i32> %i.djq, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %shift, %i.djq
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %5 = mul nsw i32 %4, 20
  %6 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 8388607)
  %8 = lshr i32 %7, 1                             ; 2 uses
  %i.dlw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %8, ptr %9, align 8, !tbaa !8
  store i32 %8, ptr %i.dlw, align 8, !tbaa !8
  %shift2559 = shufflevector <4 x i32> %i.djq, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop2560 = sub nsw <4 x i32> %shift2559, %i.djq
  %10 = extractelement <4 x i32> %foldExtExtBinop2560, i64 1
  %11 = mul nsw i32 %10, 20
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 8388607) ; 2 uses
  store i32 %13, ptr %i.b, align 4, !tbaa !7
  %14 = lshr i32 %13, 1                           ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %14, ptr %15, align 4, !tbaa !8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %14, ptr %16, align 4, !tbaa !8
  %i.dlx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.dlx, align 1, !tbaa !8
  %i.dly = call i32 @fclose(ptr noundef nonnull %i.djf) ; 0 uses
  %i.dlz = load i32, ptr %i.h, align 4, !tbaa !7
  %.not1613 = icmp eq i32 %i.dlz, 0
  br i1 %.not1613, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.dma = call i32 @remove(ptr noundef nonnull @.str.39) #8 ; 0 uses
  br label %bb.ut

bb.ut:                                            ; preds = %bb.ur, %bb.us, %select.unfold.jt3, %bb.up, %select.unfold.jt2, %bb.uo, %.preheader2397._crit_edge, %bb.un, %bb.um
  %i.dmb = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.dmc = call i32 @DisposeObject(ptr noundef %i.dmb) #8 ; 0 uses
  br label %.thread1799

bb.uu:                                            ; preds = %bb.a
  %i.dmd = zext i8 %i.k to i32
  %i.dme = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dmf = tail call ptr @Image(i32 noundef %i.dmd) #8
  %i.dmg = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef %i.dme, ptr noundef nonnull @.str.43, ptr noundef %i.dmf) #8 ; 0 uses
  br label %.thread1799

.thread1799:                                      ; preds = %.preheader1836, %bb.uf, %._crit_edge2022, %bb.kn, %bb.ko, %bb.ug, %bb.tu, %bb.tg, %._crit_edge2008, %bb.rw, %bb.rv, %bb.td, %bb.tc, %bb.ll, %bb.lm, %bb.lg, %bb.lh, %bb.kx, %bb.ky, %bb.kp, %bb.kb, %bb.ka, %bb.jq, %bb.jg, %bb.jm, %bb.iy, %bb.iz, %bb.il, %bb.iu, %bb.it, %bb.hn, %bb.hw, %bb.hv, %bb.ha, %bb.he, %bb.hf, %bb.hc, %bb.b, %bb.c, %bb.uu, %bb.ut, %bb.lp, %bb.if, %bb.ic, %bb.hz, %bb.hk, %bb.gy, %bb.gm, %bb.db, %bb.cw, %bb.ct, %bb.bt, %bb.aj, %bb.ai, %bb.s
  %.31444 = phi ptr [ %0, %bb.uu ], [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %bb.s ], [ %0, %bb.ai ], [ %0, %bb.aj ], [ %.01441, %bb.bt ], [ %0, %bb.ct ], [ %0, %bb.cw ], [ %0, %bb.db ], [ %0, %bb.gy ], [ %0, %bb.ha ], [ %0, %bb.hc ], [ %0, %bb.he ], [ %0, %bb.hf ], [ %i.anf, %bb.gm ], [ %0, %bb.hk ], [ %0, %bb.hv ], [ %0, %bb.hw ], [ %0, %bb.hn ], [ %0, %bb.hz ], [ %0, %bb.ic ], [ %0, %bb.if ], [ %0, %bb.it ], [ %0, %bb.iu ], [ %0, %bb.il ], [ %0, %bb.iy ], [ %0, %bb.iz ], [ %0, %bb.jg ], [ %0, %bb.jm ], [ %0, %bb.ka ], [ %0, %bb.jq ], [ %0, %bb.kb ], [ %0, %bb.ut ], [ %0, %bb.kp ], [ %0, %bb.kx ], [ %0, %bb.ky ], [ %0, %bb.lg ], [ %0, %bb.lh ], [ %0, %bb.ll ], [ %0, %bb.lm ], [ %0, %bb.lp ], [ %.21443, %bb.rw ], [ %.21443, %bb.rv ], [ %.21443, %bb.tc ], [ %.21443, %bb.td ], [ %0, %._crit_edge2008 ], [ %0, %bb.tg ], [ %0, %._crit_edge2022 ], [ %0, %bb.tu ], [ %0, %bb.ug ], [ %0, %bb.ko ], [ %0, %bb.kn ], [ %0, %bb.uf ], [ %0, %.preheader1836 ] ; 3 uses
  %i.dmh = getelementptr inbounds nuw i8, ptr %.31444, i64 48
  %i.dmi = sext i32 %1 to i64                     ; 2 uses
  %i.dmj = getelementptr inbounds [4 x i8], ptr %i.dmh, i64 %i.dmi
  %i.dmk = load i32, ptr %i.dmj, align 4, !tbaa !8
  %i.dml = icmp sgt i32 %i.dmk, -1
  br i1 %i.dml, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %.thread1799
  %i.dmm = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dmn = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dmm, ptr noundef nonnull @.str.44) #8 ; 0 uses
  br label %bb.uw

bb.uw:                                            ; preds = %bb.uv, %.thread1799
  %i.dmo = getelementptr inbounds nuw i8, ptr %.31444, i64 56
  %i.dmp = getelementptr inbounds [4 x i8], ptr %i.dmo, i64 %i.dmi
  %i.dmq = load i32, ptr %i.dmp, align 4, !tbaa !8
  %i.dmr = icmp sgt i32 %i.dmq, -1
  br i1 %i.dmr, label %bb.uy, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.dms = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.dmt = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dms, ptr noundef nonnull @.str.45) #8 ; 0 uses
  br label %bb.uy

bb.uy:                                            ; preds = %bb.ux, %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.31444
}

declare void @FontWordSize(ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CrossMake(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BreakObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RotateSize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -32768, 32768) i32 @KernLength(i32 noundef range(i32 0, 4096) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @finfo, align 8, !tbaa !75
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2945 ; 2 uses
  %i.m = zext i8 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.u = zext i8 %i.o to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !86   ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.aa = zext i16 %i.w to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8   ; 2 uses
  %i.ad = icmp ugt i8 %i.ac, %i.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !73

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq i8 %i.ac, %i.r
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !86
  %i.ao = sext i16 %i.an to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %i.ao, %bb.e ], [ 0, %bb.d ]
  ret i32 %.021
}

declare void @EnlargeToConstraint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EchoLength(i32 noundef) local_unnamed_addr #2

declare i32 @FindShift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OpenIncGraphicFile(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @StringContains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"p1 _ZTS3rec", !9, i64 0}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = !{!12, !12, i64 0}
!67 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!68 = !{!67, !6, i64 0}
!69 = !{!67, !6, i64 4}
!70 = !{!67, !6, i64 8}
!71 = !{!"float", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = distinct !{!73, !11}
!74 = !{!"p1 _ZTS8font_rec", !9, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTS7metrics", !9, i64 0}
!77 = !{!"p1 omnipotent char", !9, i64 0}
!78 = !{!"p1 short", !9, i64 0}
!79 = !{!"p1 _ZTS13composite_rec", !9, i64 0}
!80 = !{!"short", !5, i64 0}
!81 = !{!"font_rec", !76, i64 0, !77, i64 8, !78, i64 16, !79, i64 24, !6, i64 32, !12, i64 40, !12, i64 48, !80, i64 56, !80, i64 58, !78, i64 64, !77, i64 72, !77, i64 80, !78, i64 88}
!82 = !{!81, !12, i64 40}
!83 = !{!"p1 _ZTS6mapvec", !9, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!81, !78, i64 64}
!86 = !{!80, !80, i64 0}
!87 = !{!81, !77, i64 72}
!88 = !{!81, !78, i64 88}
!89 = !{!81, !77, i64 80}
end_hunk_0
