Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonGenInsert?download=true
inline.NumInlined: 3242
inline.NumDeleted: 1563
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_116HexagonGenInsert20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.aty = zext i32 %.0.i.i.i.i107.i.i to i64     ; 2 uses
  %i.atz = lshr i64 %i.aty, 5
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.atz
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !85, !noalias !691
  %i.auc = and i32 %.0.i.i.i.i107.i.i, 31
  %i.aud = lshr i32 %i.aub, %i.auc
  %i.aue = trunc i32 %i.aud to i1
  br i1 %i.aue, label %.lr.ph.i.i.i.i106.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i, !prof !184

.lr.ph.i.i.i.i106.i.i:                            ; preds = %bb.hr, %bb.hs
  %i.auf = phi i64 [ %i.aty, %bb.hs ], [ %i.atq, %bb.hr ] ; 2 uses
  %.020.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i107.i.i, %bb.hs ], [ %.019.i.i.i.i.i.i, %bb.hr ]
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.auf
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !85, !noalias !691
  %i.aui = icmp eq i32 %.sroa.0129.0254.i.i, %i.auh
  br i1 %i.aui, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i, label %bb.hs, !prof !57

_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i: ; preds = %.lr.ph.i.i.i.i106.i.i, %bb.hs, %bb.hr
  %.pn463.i.i = phi i64 [ %i.aqa, %bb.hr ], [ %i.aqa, %bb.hs ], [ %i.auf, %.lr.ph.i.i.i.i106.i.i ]
  %.pn.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %.pn463.i.i
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4
  %i.auj = load i32, ptr %.in.i.i, align 4, !tbaa !223 ; 2 uses
  %i.auk = mul i32 %.sroa.6.0253.i.i, 37
  %.019.i.i.i.i108.i.i = and i32 %i.auk, %i.apz   ; 3 uses
  %i.aul = zext i32 %.019.i.i.i.i108.i.i to i64   ; 2 uses
  %i.aum = lshr i64 %i.aul, 5
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.aum
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !85, !noalias !692
  %i.aup = and i32 %.019.i.i.i.i108.i.i, 31
  %i.auq = lshr i32 %i.auo, %i.aup
  %i.aur = trunc i32 %i.auq to i1
  br i1 %i.aur, label %.lr.ph.i.i.i.i110.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i, !prof !183

bb.ht:                                            ; preds = %.lr.ph.i.i.i.i110.i.i
  %i.aus = add nuw i32 %.020.i.i.i.i111.i.i, 1
  %.0.i.i.i.i112.i.i = and i32 %i.aus, %i.apz     ; 3 uses
  %i.aut = zext i32 %.0.i.i.i.i112.i.i to i64     ; 2 uses
  %i.auu = lshr i64 %i.aut, 5
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.auu
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !85, !noalias !692
  %i.aux = and i32 %.0.i.i.i.i112.i.i, 31
  %i.auy = lshr i32 %i.auw, %i.aux
  %i.auz = trunc i32 %i.auy to i1
  br i1 %i.auz, label %.lr.ph.i.i.i.i110.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i, !prof !184

.lr.ph.i.i.i.i110.i.i:                            ; preds = %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i, %bb.ht
  %i.ava = phi i64 [ %i.aut, %bb.ht ], [ %i.aul, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i ] ; 2 uses
  %.020.i.i.i.i111.i.i = phi i32 [ %.0.i.i.i.i112.i.i, %bb.ht ], [ %.019.i.i.i.i108.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i ]
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.ava
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !85, !noalias !692
  %i.avd = icmp eq i32 %.sroa.6.0253.i.i, %i.avc
  br i1 %i.avd, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i, label %bb.ht, !prof !57

_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i: ; preds = %.lr.ph.i.i.i.i110.i.i, %bb.ht, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i
  %.pn466.i.i = phi i64 [ %i.aqa, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit.thread367.i.i ], [ %i.ava, %.lr.ph.i.i.i.i110.i.i ], [ %i.aqa, %bb.ht ]
  %.pn465.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %.pn466.i.i
  %.in464.i.i = getelementptr inbounds nuw i8, ptr %.pn465.i.i, i64 4
  %i.ave = load i32, ptr %.in464.i.i, align 4, !tbaa !223
  %i.avf = load i32, ptr %i.atk, align 4, !tbaa !689 ; 4 uses
  %i.avg = mul i32 %i.avf, 37
  %.019.i.i.i.i114.i.i = and i32 %i.avg, %i.apz   ; 3 uses
  %i.avh = zext i32 %.019.i.i.i.i114.i.i to i64   ; 2 uses
  %i.avi = lshr i64 %i.avh, 5
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.avi
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !85, !noalias !693
  %i.avl = and i32 %.019.i.i.i.i114.i.i, 31
  %i.avm = lshr i32 %i.avk, %i.avl
  %i.avn = trunc i32 %i.avm to i1
  br i1 %i.avn, label %.lr.ph.i.i.i.i116.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i, !prof !183

bb.hu:                                            ; preds = %.lr.ph.i.i.i.i116.i.i
  %i.avo = add nuw i32 %.020.i.i.i.i117.i.i, 1
  %.0.i.i.i.i118.i.i = and i32 %i.avo, %i.apz     ; 3 uses
  %i.avp = zext i32 %.0.i.i.i.i118.i.i to i64     ; 2 uses
  %i.avq = lshr i64 %i.avp, 5
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.avq
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !85, !noalias !693
  %i.avt = and i32 %.0.i.i.i.i118.i.i, 31
  %i.avu = lshr i32 %i.avs, %i.avt
  %i.avv = trunc i32 %i.avu to i1
  br i1 %i.avv, label %.lr.ph.i.i.i.i116.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i, !prof !184

.lr.ph.i.i.i.i116.i.i:                            ; preds = %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i, %bb.hu
  %i.avw = phi i64 [ %i.avp, %bb.hu ], [ %i.avh, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i ] ; 2 uses
  %.020.i.i.i.i117.i.i = phi i32 [ %.0.i.i.i.i118.i.i, %bb.hu ], [ %.019.i.i.i.i114.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i ]
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.avw
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !85, !noalias !693
  %i.avz = icmp eq i32 %i.avf, %i.avy
  br i1 %i.avz, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i, label %bb.hu, !prof !57

_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i: ; preds = %.lr.ph.i.i.i.i116.i.i, %bb.hu, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i
  %.pn470.i.i = phi i64 [ %i.aqa, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit113.thread369.i.i ], [ %i.avw, %.lr.ph.i.i.i.i116.i.i ], [ %i.aqa, %bb.hu ]
  %.pn469.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %.pn470.i.i
  %.in468.i.i = getelementptr inbounds nuw i8, ptr %.pn469.i.i, i64 4
  %i.awa = load i32, ptr %.in468.i.i, align 4, !tbaa !223 ; 2 uses
  %.in467.i.i = getelementptr inbounds nuw i8, ptr %i.atk, i64 4
  %i.awb = load i32, ptr %.in467.i.i, align 4, !tbaa !690 ; 4 uses
  %i.awc = mul i32 %i.awb, 37
  %.019.i.i.i.i120.i.i = and i32 %i.awc, %i.apz   ; 3 uses
  %i.awd = zext i32 %.019.i.i.i.i120.i.i to i64   ; 2 uses
  %i.awe = lshr i64 %i.awd, 5
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.awe
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !85, !noalias !694
  %i.awh = and i32 %.019.i.i.i.i120.i.i, 31
  %i.awi = lshr i32 %i.awg, %i.awh
  %i.awj = trunc i32 %i.awi to i1
  br i1 %i.awj, label %.lr.ph.i.i.i.i122.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i, !prof !183

bb.hv:                                            ; preds = %.lr.ph.i.i.i.i122.i.i
  %i.awk = add nuw i32 %.020.i.i.i.i123.i.i, 1
  %.0.i.i.i.i124.i.i = and i32 %i.awk, %i.apz     ; 3 uses
  %i.awl = zext i32 %.0.i.i.i.i124.i.i to i64     ; 2 uses
  %i.awm = lshr i64 %i.awl, 5
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.awm
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !85, !noalias !694
  %i.awp = and i32 %.0.i.i.i.i124.i.i, 31
  %i.awq = lshr i32 %i.awo, %i.awp
  %i.awr = trunc i32 %i.awq to i1
  br i1 %i.awr, label %.lr.ph.i.i.i.i122.i.i, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i, !prof !184

.lr.ph.i.i.i.i122.i.i:                            ; preds = %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i, %bb.hv
  %i.aws = phi i64 [ %i.awl, %bb.hv ], [ %i.awd, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i ] ; 2 uses
  %.020.i.i.i.i123.i.i = phi i32 [ %.0.i.i.i.i124.i.i, %bb.hv ], [ %.019.i.i.i.i120.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i ]
  %i.awt = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.aws
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !85, !noalias !694
  %i.awv = icmp eq i32 %i.awb, %i.awu
  br i1 %i.awv, label %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i, label %bb.hv, !prof !57

_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i: ; preds = %.lr.ph.i.i.i.i122.i.i, %bb.hv, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i
  %i.aww = phi i64 [ %i.aqa, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit119.thread373.i.i ], [ %i.aws, %.lr.ph.i.i.i.i122.i.i ], [ %i.aqa, %bb.hv ]
  %i.awx = icmp ugt i32 %i.auj, %i.awa
  br i1 %i.awx, label %bb.id, label %bb.hw

bb.hw:                                            ; preds = %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i
  %i.awy = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.aww
  %i.awz = icmp eq i32 %i.auj, %i.awa
  br i1 %i.awz, label %bb.hx, label %bb.ic

bb.hx:                                            ; preds = %bb.hw, %.thread.i
  %i.axa = phi i32 [ %i.ato, %.thread.i ], [ %i.awb, %bb.hw ] ; 3 uses
  %i.axb = phi i32 [ %i.atl, %.thread.i ], [ %i.ave, %bb.hw ] ; 2 uses
  %i.axc = phi i32 [ %i.atm, %.thread.i ], [ %i.avf, %bb.hw ] ; 3 uses
  %.pn.i155 = phi ptr [ %i.apv, %.thread.i ], [ %i.awy, %bb.hw ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i155, i64 4
  %i.axd = load i32, ptr %.in.i, align 4, !tbaa !223 ; 2 uses
  %i.axe = icmp ugt i32 %i.axb, %i.axd
  br i1 %i.axe, label %bb.id, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.axf = icmp eq i32 %i.axb, %i.axd
  br i1 %i.axf, label %bb.hz, label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  %i.axg = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %i.axh = load i16, ptr %i.axg, align 4, !tbaa !695 ; 2 uses
  %i.axi = icmp ugt i16 %.sroa.7.0252.i.i, %i.axh
  br i1 %i.axi, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.axj = icmp eq i16 %.sroa.7.0252.i.i, %i.axh
  br i1 %i.axj, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.axk = getelementptr inbounds nuw i8, ptr %i.atk, i64 10
  %i.axl = load i16, ptr %i.axk, align 2, !tbaa !696
  %.not66.i.i = icmp ult i16 %.sroa.8.0251.i.i, %i.axl
  br i1 %.not66.i.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hy, %bb.hw
  %i.axm = phi i32 [ %i.axa, %bb.ib ], [ %i.axa, %bb.ia ], [ %i.axa, %bb.hy ], [ %i.awb, %bb.hw ]
  %i.axn = phi i32 [ %i.axc, %bb.ib ], [ %i.axc, %bb.ia ], [ %i.axc, %bb.hy ], [ %i.avf, %bb.hw ]
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.atk, i64 8
  %.sroa.7.0.copyload135.i.i = load i16, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !220
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.atk, i64 10
  %.sroa.8.0.copyload138.i.i = load i16, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !tbaa !220
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.hz, %bb.hx, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i
  %.sroa.8.1.i.i = phi i16 [ %.sroa.8.0251.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i ], [ %.sroa.8.0251.i.i, %bb.hx ], [ %.sroa.8.0251.i.i, %bb.hz ], [ %.sroa.8.0.copyload138.i.i, %bb.ic ], [ %.sroa.8.0251.i.i, %bb.ib ] ; 2 uses
  %.sroa.7.1.i.i = phi i16 [ %.sroa.7.0252.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i ], [ %.sroa.7.0252.i.i, %bb.hx ], [ %.sroa.7.0252.i.i, %bb.hz ], [ %.sroa.7.0.copyload135.i.i, %bb.ic ], [ %.sroa.7.0252.i.i, %bb.ib ] ; 2 uses
  %.sroa.6.1.i.i = phi i32 [ %.sroa.6.0253.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i ], [ %.sroa.6.0253.i.i, %bb.hx ], [ %.sroa.6.0253.i.i, %bb.hz ], [ %i.axm, %bb.ic ], [ %.sroa.6.0253.i.i, %bb.ib ] ; 2 uses
  %.sroa.0129.1.i.i = phi i32 [ %.sroa.0129.0254.i.i, %_ZNK12_GLOBAL__N_116RegisterOrderingixEj.exit125.i.i ], [ %.sroa.0129.0254.i.i, %bb.hx ], [ %.sroa.0129.0254.i.i, %bb.hz ], [ %i.axn, %bb.ic ], [ %.sroa.0129.0254.i.i, %bb.ib ] ; 2 uses
  %indvars.iv.next.i.i144 = add nuw nsw i64 %indvars.iv.i.i143, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i144, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge258.i.i, label %bb.hq, !llvm.loop !396

bb.ie:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i148, %"_ZN4llvm8erase_ifISt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESaIS6_EEZNS3_16HexagonGenInsert16pruneCoveredSetsEjE3$_0EEvRT_T0_.exit.i.i"
  %.val70.i.i = load ptr, ptr %i.aet, align 8, !tbaa !88 ; 2 uses
  %.val71.i.i = load ptr, ptr %i.aey, align 8, !tbaa !89 ; 2 uses
  %i.axo = ptrtoint ptr %.val71.i.i to i64
  %i.axp = ptrtoint ptr %.val70.i.i to i64
  %i.axq = sub i64 %i.axo, %i.axp
  %i.axr = sdiv exact i64 %i.axq, 88
  %i.axs = trunc i64 %i.axr to i32                ; 2 uses
  %.not.i.i113 = icmp eq i32 %i.axs, 0
  br i1 %.not.i.i113, label %_ZN12_GLOBAL__N_116HexagonGenInsert16pruneCoveredSetsEj.exit.i, label %.lr.ph268.i.i

.lr.ph268.i.i:                                    ; preds = %bb.ie, %bb.iy
  %.val5.i.i132.i = phi ptr [ %.val5.i.i132489.i, %bb.iy ], [ %.val71.i.i, %bb.ie ] ; 5 uses
  %.val.i131.i = phi ptr [ %.val86328.i.i, %bb.iy ], [ %.val70.i.i, %bb.ie ] ; 3 uses
  %.053266.i.i = phi i32 [ %.1.i.i, %bb.iy ], [ %i.axs, %bb.ie ] ; 3 uses
  %.054264.i.i = phi i32 [ %.155.i.i, %bb.iy ], [ 0, %bb.ie ] ; 3 uses
  %i.axt = zext i32 %.054264.i.i to i64           ; 2 uses
  %i.axu = getelementptr inbounds nuw [88 x i8], ptr %.val.i131.i, i64 %i.axt ; 4 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.axw = getelementptr i8, ptr %i.axu, i64 24
  %wide.trip.count326.i.i = zext i32 %.053266.i.i to i64
  br label %bb.if

bb.if:                                            ; preds = %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i, %.lr.ph268.i.i
  %indvars.iv323.i.i = phi i64 [ 0, %.lr.ph268.i.i ], [ %indvars.iv.next324.i.i, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i ] ; 4 uses
  %.not67.i.i = icmp eq i64 %indvars.iv323.i.i, %i.axt
  br i1 %.not67.i.i, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.axx = getelementptr inbounds nuw [88 x i8], ptr %.val.i131.i, i64 %indvars.iv323.i.i ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %.val89.i.i = load ptr, ptr %i.axy, align 8
  %i.axz = getelementptr i8, ptr %i.axx, i64 24
  %.val90.i.i = load i32, ptr %i.axz, align 8, !tbaa !54 ; 2 uses
  %.val91.i.i = load ptr, ptr %i.axv, align 8     ; 2 uses
  %.val92.i.i = load i32, ptr %i.axw, align 8, !tbaa !54 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %.val90.i.i, i32 %.val92.i.i) ; 3 uses
  %.not20.i.i.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %.not20.i.i.i.i.i, label %.preheader.i.i.i.i.i138, label %.lr.ph.i.i.i.i.i114

.lr.ph.i.i.i.i.i114:                              ; preds = %bb.ig
  %i.aya = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  br label %bb.ih

.preheader.i.i.i.i.i138:                          ; preds = %bb.ii, %bb.ig
  %.not1122.not.i.i.i.i.i = icmp ugt i32 %.val92.i.i, %.val90.i.i
  br i1 %.not1122.not.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.i.i

bb.ih:                                            ; preds = %bb.ii, %.lr.ph.i.i.i.i.i114
  %indvars.iv.i.i.i.i.i115 = phi i64 [ 0, %.lr.ph.i.i.i.i.i114 ], [ %indvars.iv.next.i.i.i.i.i137, %bb.ii ] ; 3 uses
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %.val91.i.i, i64 %indvars.iv.i.i.i.i.i115
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !47
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %.val89.i.i, i64 %indvars.iv.i.i.i.i.i115
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !47
  %i.ayf = xor i64 %i.aye, -1
  %i.ayg = and i64 %i.ayc, %i.ayf
  %.not13.i.i.i.i.i = icmp eq i64 %i.ayg, 0
  br i1 %.not13.i.i.i.i.i, label %bb.ii, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i

bb.ii:                                            ; preds = %bb.ih
  %indvars.iv.next.i.i.i.i.i137 = add nuw nsw i64 %indvars.iv.i.i.i.i.i115, 1 ; 2 uses
  %.not.i.i.i126.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i137, %i.aya
  br i1 %.not.i.i.i126.i.i, label %.preheader.i.i.i.i.i138, label %bb.ih, !llvm.loop !397

bb.ij:                                            ; preds = %.lr.ph24.i.i.i.i.i
  %i.ayh = add i32 %.123.i.i.i.i.i, 1             ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.ayh, %.val92.i.i
  br i1 %.not11.i.i.i.i.i, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.i.i, label %.lr.ph24.i.i.i.i.i, !llvm.loop !398

.lr.ph24.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i138, %bb.ij
  %.123.i.i.i.i.i = phi i32 [ %i.ayh, %bb.ij ], [ %.sroa.speculated.i.i.i.i.i, %.preheader.i.i.i.i.i138 ] ; 2 uses
  %i.ayi = zext i32 %.123.i.i.i.i.i to i64
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %.val91.i.i, i64 %i.ayi
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !47
  %.not12.not.i.i.i.i.i = icmp eq i64 %i.ayk, 0
  br i1 %.not12.not.i.i.i.i.i, label %bb.ij, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i

_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i: ; preds = %bb.ih, %.lr.ph24.i.i.i.i.i, %bb.if
  %indvars.iv.next324.i.i = add nuw nsw i64 %indvars.iv323.i.i, 1 ; 2 uses
  %exitcond327.not.i.i = icmp eq i64 %indvars.iv.next324.i.i, %wide.trip.count326.i.i
  br i1 %exitcond327.not.i.i, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i, label %bb.if, !llvm.loop !399

_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.i.i: ; preds = %.preheader.i.i.i.i.i138, %bb.ij
  %45 = trunc nuw i64 %indvars.iv323.i.i to i32
  %i.ayl = icmp eq i32 %.053266.i.i, %45
  br i1 %i.ayl, label %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i, label %46

_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i: ; preds = %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.i.i, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.i.i
  %i.aym = add i32 %.054264.i.i, 1
  br label %bb.iy, !llvm.loop !400

46:                                               ; preds = %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.i.i
  %47 = getelementptr inbounds nuw i8, ptr %i.axu, i64 88 ; 3 uses
  %.not.i.i133.i = icmp eq ptr %47, %.val5.i.i132.i
  br i1 %.not.i.i133.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %46
  %i.ayn = ptrtoint ptr %.val5.i.i132.i to i64
  %i.ayo = ptrtoint ptr %47 to i64
  %i.ayp = sub i64 %i.ayn, %i.ayo                 ; 2 uses
  %i.ayq = icmp sgt i64 %i.ayp, 0
  br i1 %i.ayq, label %.lr.ph.preheader.i.i.i.i.i.i.i134.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i134.i:              ; preds = %bb.ik
  %i.ayr = udiv exact i64 %i.ayp, 88
  br label %bb.il

bb.il:                                            ; preds = %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i134.i
  %.014.i.i.i.i.i.i.i.i = phi i64 [ %i.azw, %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i ], [ %i.ayr, %.lr.ph.preheader.i.i.i.i.i.i.i134.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i139 = phi ptr [ %i.azv, %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i ], [ %i.axu, %.lr.ph.preheader.i.i.i.i.i.i.i134.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.azu, %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i ], [ %47, %.lr.ph.preheader.i.i.i.i.i.i.i134.i ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i.i.i.i139, ptr noundef nonnull readonly align 8 dereferenceable(88) %.0910.i.i.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !221
  %i.ays = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i139, i64 16 ; 4 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ayv = load i32, ptr %i.ayu, align 8, !tbaa !54 ; 6 uses
  %i.ayw = zext i32 %i.ayv to i64                 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i139, i64 24 ; 3 uses
  %i.ayy = load i32, ptr %i.ayx, align 8, !tbaa !54 ; 4 uses
  %i.ayz = zext i32 %i.ayy to i64                 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i135.i = icmp ult i32 %i.ayy, %i.ayv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i135.i, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %bb.il
  %.not29.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayv, 0
  br i1 %.not29.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aza = load ptr, ptr %i.ays, align 8, !tbaa !35 ; 2 uses
  %i.azb = load ptr, ptr %i.ayt, align 8, !tbaa !35 ; 2 uses
  %.not31.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayv, 1
  br i1 %.not31.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ip, label %bb.io, !prof !203

bb.io:                                            ; preds = %bb.in
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ayw, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.azb, ptr align 8 %i.aza, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i

bb.ip:                                            ; preds = %bb.in
  %i.azc = load i64, ptr %i.aza, align 8, !tbaa !47
  store i64 %i.azc, ptr %i.azb, align 8, !tbaa !47
  br label %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %bb.il
  %i.azd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i139, i64 28
  %i.aze = load i32, ptr %i.azd, align 4, !tbaa !56
  %i.azf = icmp ult i32 %i.aze, %i.ayv
  br i1 %i.azf, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  store i32 0, ptr %i.ayx, align 8, !tbaa !54
  %i.azg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i139, i64 32
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ayt, ptr noundef nonnull %i.azg, i64 noundef %i.ayw, i64 noundef 8) #19
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayy, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.azh = load ptr, ptr %i.ays, align 8, !tbaa !35 ; 2 uses
  %i.azi = load ptr, ptr %i.ayt, align 8, !tbaa !35 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayy, 1
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.iv, label %bb.iu, !prof !203

bb.iu:                                            ; preds = %bb.it
  %.idx32.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ayz, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.azi, ptr align 8 %i.azh, i64 %.idx32.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.iv:                                            ; preds = %bb.it
  %i.azj = load i64, ptr %i.azh, align 8, !tbaa !47
  store i64 %i.azj, ptr %i.azi, align 8, !tbaa !47
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.iv, %bb.iu, %bb.is, %bb.ir
  %.022.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ir ], [ 0, %bb.is ], [ %i.ayz, %bb.iu ], [ 1, %bb.iv ] ; 4 uses
  %i.azk = load i32, ptr %i.ayu, align 8, !tbaa !54
  %i.azl = zext i32 %i.azk to i64                 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.022.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.azl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azm = load ptr, ptr %i.ays, align 8, !tbaa !35
  %.idx35.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 %.idx35.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azo = load ptr, ptr %i.ayt, align 8, !tbaa !35
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %i.azo, i64 %.022.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azq = sub nsw i64 %i.azl, %.022.i.i.i.i.i.i.i.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.azq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.azp, ptr align 8 %i.azn, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i

_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.iw, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ip, %bb.io, %bb.im
  store i32 %i.ayv, ptr %i.ayx, align 8, !tbaa !54
  %i.azr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 80
  %i.azs = load i32, ptr %i.azr, align 8, !tbaa !202
  %i.azt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i139, i64 80
  store i32 %i.azs, ptr %i.azt, align 8, !tbaa !202
  %i.azu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 88
  %i.azv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i139, i64 88
  %i.azw = add nsw i64 %.014.i.i.i.i.i.i.i.i, -1
  %i.azx = icmp sgt i64 %.014.i.i.i.i.i.i.i.i, 1
  br i1 %i.azx, label %bb.il, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i, !llvm.loop !8

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i: ; preds = %_ZNSt4pairIN12_GLOBAL__N_18IFRecordENS0_11RegisterSetEEaSEOS3_.exit.i.i.i.i.i.i.i.i
  %.pre.i.i136.i = load ptr, ptr %i.aey, align 8, !tbaa !89
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i, %bb.ik, %46
  %i.azy = phi ptr [ %.pre.i.i136.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i.i ], [ %.val5.i.i132.i, %bb.ik ], [ %.val5.i.i132.i, %46 ] ; 3 uses
  %i.azz = getelementptr inbounds i8, ptr %i.azy, i64 -88 ; 2 uses
  store ptr %i.azz, ptr %i.aey, align 8, !tbaa !89
  %i.baa = getelementptr inbounds i8, ptr %i.azy, i64 -72
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !35 ; 2 uses
  %i.bac = getelementptr inbounds i8, ptr %i.azy, i64 -56
  %i.bad = icmp eq ptr %i.bab, %i.bac
  br i1 %i.bad, label %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i, label %bb.ix

bb.ix:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i
  call void @free(ptr noundef %i.bab) #19
  %.val69.i.pre.i = load ptr, ptr %i.aey, align 8, !tbaa !89
  br label %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i

_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i: ; preds = %bb.ix, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i
  %.val69.i.i = phi ptr [ %i.azz, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i ], [ %.val69.i.pre.i, %bb.ix ] ; 2 uses
  %.val68.i.i = load ptr, ptr %i.aet, align 8, !tbaa !88 ; 2 uses
  %i.bae = ptrtoint ptr %.val69.i.i to i64
  %i.baf = ptrtoint ptr %.val68.i.i to i64
  %i.bag = sub i64 %i.bae, %i.baf
  %i.bah = sdiv exact i64 %i.bag, 88
  %i.bai = trunc i64 %i.bah to i32
  br label %bb.iy

bb.iy:                                            ; preds = %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i
  %.val5.i.i132489.i = phi ptr [ %.val5.i.i132.i, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i ], [ %.val69.i.i, %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i ]
  %.val86328.i.i = phi ptr [ %.val.i131.i, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i ], [ %.val68.i.i, %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i ]
  %.155.i.i = phi i32 [ %i.aym, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i ], [ %.054264.i.i, %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i ] ; 2 uses
  %.1.i.i = phi i32 [ %.053266.i.i, %_ZNK12_GLOBAL__N_111RegisterSet8includesERKS0_.exit.thread.thread.i.i ], [ %i.bai, %_ZNSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit.i ] ; 2 uses
  %i.baj = icmp ult i32 %.155.i.i, %.1.i.i
  br i1 %i.baj, label %.lr.ph268.i.i, label %_ZN12_GLOBAL__N_116HexagonGenInsert16pruneCoveredSetsEj.exit.i

_ZN12_GLOBAL__N_116HexagonGenInsert16pruneCoveredSetsEj.exit.i: ; preds = %bb.iy, %bb.ie
  %i.bak = add i64 %.pn757.i, 32
  %i.bal = ashr exact i64 %i.bak, 5               ; 3 uses
  %.not.i.i25.i = icmp ult i64 %i.bal, %i.acl
  br i1 %.not.i.i25.i, label %bb.iz, label %._crit_edge.i116

bb.iz:                                            ; preds = %_ZN12_GLOBAL__N_116HexagonGenInsert16pruneCoveredSetsEj.exit.i
  %i.bam = lshr i64 %i.bal, 5                     ; 3 uses
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i89, i64 %i.bam
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !85
  %i.bap = trunc nuw i64 %i.bal to i32
  %i.baq = and i32 %i.bap, 31
  %i.bar = shl nsw i32 -1, %i.baq
  %i.bas = and i32 %i.bao, %i.bar                 ; 2 uses
  %i.bat = icmp eq i32 %i.bas, 0
  br i1 %i.bat, label %.lr.ph.i.i.i135.preheader, label %_ZN4llvm16DenseMapIteratorIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESaIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EELb0EEppEv.exit.i130

.lr.ph.i.i.i135.preheader:                        ; preds = %bb.iz
  %i.bau = add nuw nsw i64 %i.bam, 1              ; 2 uses
  %i.bav = icmp eq i64 %i.bau, %i.acn
  br i1 %i.bav, label %._crit_edge.i116, label %.lr.ph1903.a

.lr.ph.i.i.i135:                                  ; preds = %.lr.ph1903.a
  %i.baw = add i64 %i.bay, 1                      ; 2 uses
  %i.bax = icmp eq i64 %i.baw, %i.acn
  br i1 %i.bax, label %._crit_edge.i116, label %.lr.ph1903.a, !llvm.loop !351

.lr.ph1903.a:                                     ; preds = %.lr.ph.i.i.i135.preheader, %.lr.ph.i.i.i135
  %i.bay = phi i64 [ %i.baw, %.lr.ph.i.i.i135 ], [ %i.bau, %.lr.ph.i.i.i135.preheader ] ; 3 uses
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i89, i64 %i.bay
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !85 ; 2 uses
  %i.bbb = icmp eq i32 %i.bba, 0
  br i1 %i.bbb, label %.lr.ph.i.i.i135, label %_ZN4llvm16DenseMapIteratorIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESaIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EELb0EEppEv.exit.i130, !llvm.loop !351

_ZN4llvm16DenseMapIteratorIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESaIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EELb0EEppEv.exit.i130: ; preds = %.lr.ph1903.a, %bb.iz
  %.012.lcssa.i.i.i131 = phi i64 [ %i.bam, %bb.iz ], [ %i.bay, %.lr.ph1903.a ]
  %.0.lcssa.i.i.i132 = phi i32 [ %i.bas, %bb.iz ], [ %i.bba, %.lr.ph1903.a ]
  %i.bbc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i132, i1 true)
  %.idx.i.i.i133 = shl i64 %.012.lcssa.i.i.i131, 10
  %i.bbd = shl nuw nsw i32 %i.bbc, 5
  %.idx756.i.a = zext nneg i32 %i.bbd to i64
  %i.bbe = or disjoint i64 %.idx.i.i.i133, %.idx756.i.a ; 2 uses
  %.not.i134 = icmp eq i64 %i.bbe, %.idx755.i
  br i1 %.not.i134, label %._crit_edge.i116, label %bb.dc

._crit_edge380.i:                                 ; preds = %.lr.ph379.i, %._crit_edge.i116
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.val2.i26.i = load ptr, ptr %i.l, align 8, !tbaa !83, !noalias !697 ; 5 uses
  %.val1.i27.i = load ptr, ptr %i.ou, align 8, !tbaa !84, !noalias !697 ; 8 uses
  %.val.i28.i = load i32, ptr %i.ov, align 4, !tbaa !82, !noalias !697 ; 6 uses
  %.val3.i29.i = load i32, ptr %i.m, align 8, !tbaa !81, !noalias !697
  %i.bbf = icmp eq i32 %.val3.i29.i, 0
  %i.bbg = zext i32 %.val.i28.i to i64            ; 3 uses
  %.idx759.i = shl nuw nsw i64 %i.bbg, 5          ; 2 uses
  %.not.i.not.i.i30.i = icmp eq i32 %.val.i28.i, 0
  %or.cond233.i = select i1 %i.bbf, i1 true, i1 %.not.i.not.i.i30.i
  br i1 %or.cond233.i, label %._crit_edge384.i, label %bb.ja

bb.ja:                                            ; preds = %._crit_edge380.i
  %i.bbh = add nuw nsw i64 %i.bbg, 31
  %i.bbi = lshr i64 %i.bbh, 5                     ; 4 uses
  %i.bbj = load i32, ptr %.val1.i27.i, align 4, !tbaa !85, !noalias !698 ; 2 uses
  %i.bbk = icmp eq i32 %i.bbj, 0
  br i1 %i.bbk, label %.lr.ph.i.i.i36.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i

.lr.ph.i.i.i36.i.preheader:                       ; preds = %bb.ja
  %i.bbl = icmp eq i64 %i.bbi, 1
  br i1 %i.bbl, label %._crit_edge384.i, label %.lr.ph1904.a

.lr.ph.i.i.i36.i:                                 ; preds = %.lr.ph1904.a
  %i.bbm = add nuw nsw i64 %i.bbo, 1              ; 2 uses
  %i.bbn = icmp eq i64 %i.bbm, %i.bbi
  br i1 %i.bbn, label %._crit_edge384.i, label %.lr.ph1904.a, !llvm.loop !351

.lr.ph1904.a:                                     ; preds = %.lr.ph.i.i.i36.i.preheader, %.lr.ph.i.i.i36.i
  %i.bbo = phi i64 [ %i.bbm, %.lr.ph.i.i.i36.i ], [ 1, %.lr.ph.i.i.i36.i.preheader ] ; 3 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i27.i, i64 %i.bbo
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !85, !noalias !698 ; 2 uses
  %i.bbr = icmp eq i32 %i.bbq, 0
  br i1 %i.bbr, label %.lr.ph.i.i.i36.i, label %._crit_edge.i.loopexit.i.i38.i, !llvm.loop !351

._crit_edge.i.loopexit.i.i38.i:                   ; preds = %.lr.ph1904.a
  %i.bbs = shl i64 %i.bbo, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i: ; preds = %._crit_edge.i.loopexit.i.i38.i, %bb.ja
  %.012.lcssa.i.i.i32.i = phi i64 [ 0, %bb.ja ], [ %i.bbs, %._crit_edge.i.loopexit.i.i38.i ]
  %.0.lcssa.i.i.i33.i = phi i32 [ %i.bbj, %bb.ja ], [ %i.bbq, %._crit_edge.i.loopexit.i.i38.i ]
  %i.bbt = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i33.i, i1 true)
  %i.bbu = shl nuw nsw i32 %i.bbt, 5
  %.idx758.i.a = zext nneg i32 %i.bbu to i64
  %i.bbv = or disjoint i64 %.012.lcssa.i.i.i32.i, %.idx758.i.a ; 2 uses
  %.not236381.i = icmp eq i64 %i.bbv, %.idx759.i
  br i1 %.not236381.i, label %._crit_edge384.i, label %.lr.ph383.i

.lr.ph379.i:                                      ; preds = %.lr.ph379.i, %.lr.ph379.preheader.i
  %.0377.i = phi i32 [ %i.bbx, %.lr.ph379.i ], [ 0, %.lr.ph379.preheader.i ] ; 2 uses
  %.sroa.0222.0376.i = phi ptr [ %i.bbw, %.lr.ph379.i ], [ %i.adp, %.lr.ph379.preheader.i ]
  %i.bbw = getelementptr inbounds i8, ptr %.sroa.0222.0376.i, i64 -8 ; 3 uses
  %i.bbx = add nuw i32 %.0377.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bby = load ptr, ptr %i.bbw, align 8, !tbaa !187
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 24
  %i.bca = load i32, ptr %i.bbz, align 8, !tbaa !263
  store i32 %i.bca, ptr %i.c, align 4, !tbaa !85
  %i.bcb = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bcb, 0
  %i.bcc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 4
  store i32 %.0377.i, ptr %i.bcc, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %.not235.i = icmp eq ptr %i.bbw, %i.adm
  br i1 %.not235.i, label %._crit_edge380.i, label %.lr.ph379.i

._crit_edge384.loopexit.i:                        ; preds = %_ZN4llvm16DenseMapIteratorIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS3_11RegisterSetEESaIS6_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EELb0EEppEv.exit83.i, %_ZN12_GLOBAL__N_116HexagonGenInsert15pruneUsesTooFarEjRKNS_11UnsignedMapERN4llvm8DenseMapISt4pairIjjEjNS4_12DenseMapInfoIS7_vEENS4_6detail12DenseMapPairIS7_jEEEE.exit.i, %.lr.ph.i.i81.i.preheader, %.lr.ph.i.i81.i
  %.val18.i.i.pre.i = load ptr, ptr %i.ou, align 8, !tbaa !84
  %.val.i.i43.pre.i = load i32, ptr %i.ov, align 4, !tbaa !82
  %.val19.i.i.pre.i = load ptr, ptr %i.l, align 8, !tbaa !83
  br label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %.lr.ph.i.i.i36.i, %.lr.ph.i.i.i36.i.preheader, %._crit_edge384.loopexit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i, %._crit_edge380.i
  %.val19.i.i.i = phi ptr [ %.val19.i.i.pre.i, %._crit_edge384.loopexit.i ], [ %.val2.i26.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i ], [ %.val2.i26.i, %._crit_edge380.i ], [ %.val2.i26.i, %.lr.ph.i.i.i36.i.preheader ], [ %.val2.i26.i, %.lr.ph.i.i.i36.i ]
  %.val.i.i43.i = phi i32 [ %.val.i.i43.pre.i, %._crit_edge384.loopexit.i ], [ %.val.i28.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i ], [ %.val.i28.i, %._crit_edge380.i ], [ %.val.i28.i, %.lr.ph.i.i.i36.i.preheader ], [ %.val.i28.i, %.lr.ph.i.i.i36.i ] ; 3 uses
  %.val18.i.i.i = phi ptr [ %.val18.i.i.pre.i, %._crit_edge384.loopexit.i ], [ %.val1.i27.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorISt4pairIN12_GLOBAL__N_18IFRecordENS4_11RegisterSetEESaIS7_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS9_EEEEjS9_SB_SE_E5beginEv.exit39.i ], [ %.val1.i27.i, %._crit_edge380.i ], [ %.val1.i27.i, %.lr.ph.i.i.i36.i.preheader ], [ %.val1.i27.i, %.lr.ph.i.i.i36.i ] ; 2 uses
  %.not23.i.i.i = icmp eq i32 %.val.i.i43.i, 0
  br i1 %.not23.i.i.i, label %_ZN12_GLOBAL__N_116HexagonGenInsert15pruneEmptyListsEv.exit.i, label %.lr.ph.i.i44.i

.lr.ph.i.i44.i:                                   ; preds = %._crit_edge384.i
  %i.bcd = zext i32 %.val.i.i43.i to i64          ; 2 uses
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.thread.i.i, %.lr.ph.i.i44.i
  %indvars.iv.i.ph.i.i = phi i64 [ %indvars.iv.next.i2.i.i, %.thread.i.i ], [ 0, %.lr.ph.i.i44.i ]
  %.01624.i.ph.i.i = phi i1 [ true, %.thread.i.i ], [ false, %.lr.ph.i.i44.i ]
  br label %bb.jb

._crit_edge.i.i46.i:                              ; preds = %bb.je
  br i1 %.01624.i.ph.i.i, label %._crit_edge.i.thread.i.i, label %_ZN12_GLOBAL__N_116HexagonGenInsert15pruneEmptyListsEv.exit.i

bb.jb:                                            ; preds = %bb.je, %.outer.i.i
  %indvars.iv.i.i.i121 = phi i64 [ %indvars.iv.next.i.i.i122, %bb.je ], [ %indvars.iv.i.ph.i.i, %.outer.i.i ] ; 5 uses
  %i.bce = lshr i64 %indvars.iv.i.i.i121, 5       ; 2 uses
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %.val18.i.i.i, i64 %i.bce
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !85 ; 2 uses
  %i.bch = trunc nuw i64 %indvars.iv.i.i.i121 to i32
  %i.bci = and i32 %i.bch, 31                     ; 2 uses
  %i.bcj = lshr i32 %i.bcg, %i.bci
  %i.bck = trunc i32 %i.bcj to i1
  br i1 %i.bck, label %bb.jc, label %bb.je

bb.jc:                                            ; preds = %bb.jb
  %i.bcl = getelementptr inbounds nuw [32 x i8], ptr %.val19.i.i.i, i64 %indvars.iv.i.i.i121 ; 3 uses
  %i.bcm = getelementptr i8, ptr %i.bcl, i64 8
  %.val20.i.i.i = load ptr, ptr %i.bcm, align 8, !tbaa !195 ; 4 uses
  %i.bcn = getelementptr i8, ptr %i.bcl, i64 16
  %.val21.i.i.i = load ptr, ptr %i.bcn, align 8, !tbaa !195
  %i.bco = icmp eq ptr %.val20.i.i.i, %.val21.i.i.i
  br i1 %i.bco, label %_ZSt8_DestroyIPSt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEEEvT_S6_.exit.i.i.i47.i, label %bb.je

_ZSt8_DestroyIPSt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEEEvT_S6_.exit.i.i.i47.i: ; preds = %bb.jc
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %.val18.i.i.i, i64 %i.bce ; 2 uses
  %.not.i.i2.i.i.i.i123 = icmp eq ptr %.val20.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i123, label %.thread.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN12_GLOBAL__N_18IFRecordENS1_11RegisterSetEEEvT_S6_.exit.i.i.i47.i
  %i.bcq = getelementptr i8, ptr %i.bcl, i64 24
  %.val1.i.i.i.i124 = load ptr, ptr %i.bcq, align 8, !tbaa !90
  %i.bcr = ptrtoint ptr %.val1.i.i.i.i124 to i64
  %i.bcs = ptrtoint ptr %.val20.i.i.i to i64
end_hunk_0
