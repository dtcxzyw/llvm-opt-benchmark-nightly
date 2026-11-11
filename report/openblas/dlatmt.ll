Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatmt?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dlatmt_:bb.a
  %i.aru = sub i32 %i.afo, %i.art
  %i.arv = zext i32 %i.aru to i64
  %i.arw = shl nuw nsw i64 %i.arv, 3
  %i.arx = add nuw nsw i64 %i.arw, 8
  %i.ary = trunc nuw nsw i64 %indvars.iv1747.epil.init to i32
  %i.arz = mul i32 %i.afn, %i.ary
  %i.asa = add i32 %i.afm, %i.arz
  %i.asb = sext i32 %i.asa to i64
  %i.asc = shl nsw i64 %i.asb, 3
  %scevgep1740.epil = getelementptr i8, ptr %scevgep1739, i64 %i.asc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1740.epil, i8 0, i64 %i.arx, i1 false), !tbaa !58
  br label %.loopexit1284

.loopexit1284.loopexit1942.unr-lcssa:             ; preds = %.lr.ph1544
  %lcmp.mod2000.not = icmp eq i64 %xtraiter1998, 0
  br i1 %lcmp.mod2000.not, label %.loopexit1284, label %.lr.ph1544.epil.preheader

.lr.ph1544.epil.preheader:                        ; preds = %.loopexit1284.loopexit1942.unr-lcssa, %.lr.ph1544.preheader
  %indvar1729.epil.init = phi i64 [ 0, %.lr.ph1544.preheader ], [ %indvar.next1730.3, %.loopexit1284.loopexit1942.unr-lcssa ]
  %lcmp.mod2001 = icmp ne i64 %xtraiter1998, 0
  call void @llvm.assume(i1 %lcmp.mod2001)
  br label %.lr.ph1544.epil

.lr.ph1544.epil:                                  ; preds = %.lr.ph1544.epil, %.lr.ph1544.epil.preheader
  %indvar1729.epil = phi i64 [ %indvar1729.epil.init, %.lr.ph1544.epil.preheader ], [ %indvar.next1730.epil, %.lr.ph1544.epil ] ; 3 uses
  %epil.iter1999 = phi i64 [ 0, %.lr.ph1544.epil.preheader ], [ %epil.iter1999.next, %.lr.ph1544.epil ]
  %i.asd = trunc nuw nsw i64 %indvar1729.epil to i32
  %i.ase = mul i32 %i.ab, %i.asd
  %i.asf = add i32 %i.agp, %i.ase
  %i.asg = sext i32 %i.asf to i64
  %i.ash = shl nsw i64 %i.asg, 3
  %scevgep1728.epil = getelementptr i8, ptr %scevgep1727, i64 %i.ash
  %i.asi = shl nuw nsw i64 %indvar1729.epil, 3
  %i.asj = add nuw nsw i64 %i.asi, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1728.epil, i8 0, i64 %i.asj, i1 false), !tbaa !58
  %indvar.next1730.epil = add nuw nsw i64 %indvar1729.epil, 1
  %epil.iter1999.next = add i64 %epil.iter1999, 1 ; 2 uses
  %epil.iter1999.cmp.not = icmp eq i64 %epil.iter1999.next, %xtraiter1998
  br i1 %epil.iter1999.cmp.not, label %.loopexit1284, label %.lr.ph1544.epil, !llvm.loop !52

.loopexit1284:                                    ; preds = %._crit_edge1512, %.unr-lcssa, %.epilog-lcssa, %.loopexit1284.loopexit1942.unr-lcssa, %.lr.ph1544.epil, %.loopexit1284.loopexit.unr-lcssa, %.lr.ph1549.epil, %.epil.preheader2004, %._crit_edge1506, %bb.dh, %bb.de
  %.251036 = phi i32 [ %spec.select1187.lcssa, %.epilog-lcssa ], [ %.181029, %.loopexit1284.loopexit.unr-lcssa ], [ %.181029, %bb.de ], [ %.181029, %bb.dh ], [ %.181029, %._crit_edge1506 ], [ %spec.select1189.lcssa, %.unr-lcssa ], [ %.181029, %.loopexit1284.loopexit1942.unr-lcssa ], [ %.181029, %.epil.preheader2004 ], [ %.181029, %.lr.ph1549.epil ], [ %.181029, %.lr.ph1544.epil ], [ %.181029, %._crit_edge1512 ]
  %.24 = phi i32 [ %spec.select1188.lcssa, %.epilog-lcssa ], [ %.17, %.loopexit1284.loopexit.unr-lcssa ], [ %.17, %bb.de ], [ %.17, %bb.dh ], [ %.17, %._crit_edge1506 ], [ %spec.select1190.lcssa, %.unr-lcssa ], [ %.17, %.loopexit1284.loopexit1942.unr-lcssa ], [ %.17, %.epil.preheader2004 ], [ %.17, %.lr.ph1549.epil ], [ %.17, %.lr.ph1544.epil ], [ %.17, %._crit_edge1512 ]
  %or.cond19 = or i1 %i.bi, %i.bj
  br i1 %or.cond19, label %.loopexit1284.thread, label %bb.dy

.loopexit1284.thread:                             ; preds = %bb.do, %bb.dj, %.loopexit1284
  %.241839 = phi i32 [ %.24, %.loopexit1284 ], [ 0, %bb.dj ], [ 0, %bb.do ] ; 2 uses
  %.2510361838 = phi i32 [ %.251036, %.loopexit1284 ], [ 1, %bb.dj ], [ 1, %bb.do ] ; 7 uses
  %i.ask = load i32, ptr %0, align 4, !tbaa !56   ; 5 uses
  %.not11701576 = icmp sgt i32 %.2510361838, %i.ask
  br i1 %.not11701576, label %.thread1201, label %.lr.ph1580

.lr.ph1580:                                       ; preds = %.loopexit1284.thread
  %i.asl = load i32, ptr %14, align 4, !tbaa !56  ; 4 uses
  %i.asm = shl nsw i64 %i.ac, 3
  %scevgep1777 = getelementptr i8, ptr %13, i64 %i.asm ; 6 uses
  %.not11711571.peel.not = icmp slt i32 %.241839, %i.asl
  br i1 %.not11711571.peel.not, label %.lr.ph1574.peel, label %._crit_edge1575.peel

.lr.ph1574.peel:                                  ; preds = %.lr.ph1580
  %i.asn = add nsw i32 %.241839, 1                ; 2 uses
  %i.aso = mul nsw i32 %.2510361838, %i.ab
  %i.asp = add i32 %i.asn, %i.aso
  %i.asq = sext i32 %i.asp to i64
  %i.asr = shl nsw i64 %i.asq, 3
  %scevgep1778.peel = getelementptr i8, ptr %scevgep1777, i64 %i.asr
  %i.ass = sub i32 %i.asl, %i.asn
  %i.ast = zext i32 %i.ass to i64
  %i.asu = shl nuw nsw i64 %i.ast, 3
  %i.asv = add nuw nsw i64 %i.asu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.peel, i8 0, i64 %i.asv, i1 false), !tbaa !58
  br label %._crit_edge1575.peel

._crit_edge1575.peel:                             ; preds = %.lr.ph1574.peel, %.lr.ph1580
  %exitcond1783.peel.not = icmp eq i32 %.2510361838, %i.ask
  br i1 %exitcond1783.peel.not, label %.thread1201, label %.peel.next

.peel.next:                                       ; preds = %._crit_edge1575.peel
  %.not11711571 = icmp slt i32 %i.asl, 1          ; 3 uses
  %i.asw = add nsw i32 %i.asl, -1
  %i.asx = zext nneg i32 %i.asw to i64
  %i.asy = shl nuw nsw i64 %i.asx, 3
  %i.asz = add nuw nsw i64 %i.asy, 8              ; 5 uses
  %i.ata = sub i32 %i.ask, %.2510361838
  %xtraiter2013 = and i32 %i.ata, 3               ; 2 uses
  %lcmp.mod2014.not = icmp eq i32 %xtraiter2013, 0
  br i1 %lcmp.mod2014.not, label %.prol.loopexit2012, label %.prol.preheader2011

.prol.preheader2011:                              ; preds = %.peel.next, %._crit_edge1575.prol
  %.89731578.in.prol = phi i32 [ %.89731578.prol, %._crit_edge1575.prol ], [ %.2510361838, %.peel.next ]
  %prol.iter2015 = phi i32 [ %prol.iter2015.next, %._crit_edge1575.prol ], [ 0, %.peel.next ]
  %.89731578.prol = add i32 %.89731578.in.prol, 1 ; 3 uses
  br i1 %.not11711571, label %._crit_edge1575.prol, label %.lr.ph1574.prol

.lr.ph1574.prol:                                  ; preds = %.prol.preheader2011
  %i.atb = mul nsw i32 %.89731578.prol, %i.ab
  %i.atc = add i32 %i.atb, 1
  %i.atd = sext i32 %i.atc to i64
  %i.ate = shl nsw i64 %i.atd, 3
  %scevgep1778.prol = getelementptr i8, ptr %scevgep1777, i64 %i.ate
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.prol, i8 0, i64 %i.asz, i1 false), !tbaa !58
  br label %._crit_edge1575.prol

._crit_edge1575.prol:                             ; preds = %.lr.ph1574.prol, %.prol.preheader2011
  %prol.iter2015.next = add i32 %prol.iter2015, 1 ; 2 uses
  %prol.iter2015.cmp.not = icmp eq i32 %prol.iter2015.next, %xtraiter2013
  br i1 %prol.iter2015.cmp.not, label %.prol.loopexit2012, label %.prol.preheader2011, !llvm.loop !53

.prol.loopexit2012:                               ; preds = %._crit_edge1575.prol, %.peel.next
  %.89731578.in.unr = phi i32 [ %.2510361838, %.peel.next ], [ %.89731578.prol, %._crit_edge1575.prol ]
  %i.atf = sub i32 %.2510361838, %i.ask
  %i.atg = icmp ugt i32 %i.atf, -4
  br i1 %i.atg, label %.thread1201, label %.peel.next.new

.peel.next.new:                                   ; preds = %.prol.loopexit2012, %._crit_edge1575.3
  %.89731578.in = phi i32 [ %.89731578.3, %._crit_edge1575.3 ], [ %.89731578.in.unr, %.prol.loopexit2012 ] ; 4 uses
  br i1 %.not11711571, label %._crit_edge1575.2, label %.lr.ph1574

.lr.ph1574:                                       ; preds = %.peel.next.new
  %.89731578 = add i32 %.89731578.in, 1
  %i.ath = mul nsw i32 %.89731578, %i.ab
  %i.ati = add i32 %i.ath, 1
  %i.atj = sext i32 %i.ati to i64
  %i.atk = shl nsw i64 %i.atj, 3
  %scevgep1778 = getelementptr i8, ptr %scevgep1777, i64 %i.atk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778, i8 0, i64 %i.asz, i1 false), !tbaa !58
  %.89731578.1 = add i32 %.89731578.in, 2
  %i.atl = mul nsw i32 %.89731578.1, %i.ab
  %i.atm = add i32 %i.atl, 1
  %i.atn = sext i32 %i.atm to i64
  %i.ato = shl nsw i64 %i.atn, 3
  %scevgep1778.1 = getelementptr i8, ptr %scevgep1777, i64 %i.ato
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.1, i8 0, i64 %i.asz, i1 false), !tbaa !58
  %.89731578.2 = add i32 %.89731578.in, 3
  %i.atp = mul nsw i32 %.89731578.2, %i.ab
  %i.atq = add i32 %i.atp, 1
  %i.atr = sext i32 %i.atq to i64
  %i.ats = shl nsw i64 %i.atr, 3
  %scevgep1778.2 = getelementptr i8, ptr %scevgep1777, i64 %i.ats
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.2, i8 0, i64 %i.asz, i1 false), !tbaa !58
  br label %._crit_edge1575.2

._crit_edge1575.2:                                ; preds = %.peel.next.new, %.lr.ph1574
  %.89731578.3 = add i32 %.89731578.in, 4         ; 3 uses
  br i1 %.not11711571, label %._crit_edge1575.3, label %.lr.ph1574.3

.lr.ph1574.3:                                     ; preds = %._crit_edge1575.2
  %i.att = mul nsw i32 %.89731578.3, %i.ab
  %i.atu = add i32 %i.att, 1
  %i.atv = sext i32 %i.atu to i64
  %i.atw = shl nsw i64 %i.atv, 3
  %scevgep1778.3 = getelementptr i8, ptr %scevgep1777, i64 %i.atw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1778.3, i8 0, i64 %i.asz, i1 false), !tbaa !58
  br label %._crit_edge1575.3

._crit_edge1575.3:                                ; preds = %.lr.ph1574.3, %._crit_edge1575.2
  %exitcond1783.not.3 = icmp eq i32 %.89731578.3, %i.ask
  br i1 %exitcond1783.not.3, label %.thread1201, label %.peel.next.new, !llvm.loop !54

bb.dy:                                            ; preds = %.loopexit1284
  br i1 %i.bc, label %bb.dz, label %.thread1201

bb.dz:                                            ; preds = %bb.dy
  %i.atx = load i32, ptr %i.z, align 4, !tbaa !56 ; 4 uses
  %i.aty = load i32, ptr %i.y, align 4, !tbaa !56
  %i.atz = add i32 %i.atx, 2                      ; 2 uses
  %i.aua = add i32 %i.atz, %i.aty                 ; 2 uses
  %i.aub = load i32, ptr %1, align 4, !tbaa !56   ; 2 uses
  %.not11661564 = icmp slt i32 %i.aub, 1
  br i1 %.not11661564, label %.thread1201, label %.lr.ph1568

.lr.ph1568:                                       ; preds = %bb.dz
  %i.auc = load i32, ptr %0, align 4, !tbaa !56   ; 2 uses
  %i.aud = add nsw i32 %i.atx, 1
  %i.aue = add i32 %i.atz, %i.auc
  %i.auf = load i32, ptr %14, align 4, !tbaa !56  ; 2 uses
  %i.aug = shl nsw i64 %i.ac, 3
  %scevgep1753 = getelementptr i8, ptr %13, i64 %i.aug ; 2 uses
  %i.auh = add i32 %i.ab, 1
  %i.aui = add i32 %i.atx, %i.auc
  %i.auj = add i32 %i.aui, 1
  %wide.trip.count1775 = zext nneg i32 %i.aub to i64
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph1568, %._crit_edge1563
  %indvars.iv1771 = phi i64 [ 0, %.lr.ph1568 ], [ %indvars.iv.next1772, %._crit_edge1563 ] ; 3 uses
  %.9.neg1566 = phi i32 [ -1, %.lr.ph1568 ], [ %.9.neg, %._crit_edge1563 ] ; 2 uses
  %.91565 = phi i32 [ 1, %.lr.ph1568 ], [ %i.avg, %._crit_edge1563 ] ; 2 uses
  %i.auk = trunc i64 %indvars.iv1771 to i32       ; 2 uses
  %i.aul = sub i32 %i.auj, %i.auk
  %smin1760 = call i32 @llvm.smin.i32(i32 %i.aul, i32 %i.aua)
  %smax1761 = call i32 @llvm.smax.i32(i32 %smin1760, i32 1) ; 2 uses
  %i.aum = trunc nuw nsw i64 %indvars.iv1771 to i32
  %i.aun = mul i32 %i.ab, %i.aum                  ; 2 uses
  %i.auo = add i32 %i.ab, %i.aun
  %i.aup = add i32 %smax1761, %i.auo
  %i.auq = sext i32 %i.aup to i64
  %i.aur = shl nsw i64 %i.auq, 3
  %scevgep1762 = getelementptr i8, ptr %scevgep1753, i64 %i.aur
  %i.aus = sub nsw i32 %i.auf, %smax1761
  %i.aut = zext i32 %i.aus to i64
  %i.auu = shl nuw nsw i64 %i.aut, 3
  %i.auv = add nuw nsw i64 %i.auu, 8
  %i.auw = add i32 %i.aud, %.9.neg1566
  %.not11671554 = icmp slt i32 %i.auw, 1
  br i1 %.not11671554, label %._crit_edge1558, label %.lr.ph1557

.lr.ph1557:                                       ; preds = %bb.ea
  %i.aux = sub i32 %i.atx, %i.auk
  %i.auy = zext i32 %i.aux to i64
  %i.auz = shl nuw nsw i64 %i.auy, 3
  %i.ava = add i32 %i.auh, %i.aun
  %i.avb = sext i32 %i.ava to i64
  %i.avc = shl nsw i64 %i.avb, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep1753, i64 %i.avc
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1754, i8 0, i64 %i.auz, i1 false), !tbaa !58
  br label %._crit_edge1558

._crit_edge1558:                                  ; preds = %.lr.ph1557, %bb.ea
  %i.avd = add i32 %i.aue, %.9.neg1566
  %i.ave = call i32 @llvm.smin.i32(i32 %i.aua, i32 %i.avd)
  %i.avf = call i32 @llvm.smax.i32(i32 %i.ave, i32 1)
  %.not11691559 = icmp sgt i32 %i.avf, %i.auf
  br i1 %.not11691559, label %._crit_edge1563, label %.lr.ph1562

.lr.ph1562:                                       ; preds = %._crit_edge1558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1762, i8 0, i64 %i.auv, i1 false), !tbaa !58
  br label %._crit_edge1563

._crit_edge1563:                                  ; preds = %.lr.ph1562, %._crit_edge1558
  %i.avg = add nuw nsw i32 %.91565, 1
  %.9.neg = xor i32 %.91565, -1
  %indvars.iv.next1772 = add nuw nsw i64 %indvars.iv1771, 1 ; 2 uses
  %exitcond1776.not = icmp eq i64 %indvars.iv.next1772, %wide.trip.count1775
  br i1 %exitcond1776.not, label %.thread1201, label %bb.ea, !llvm.loop !55

.thread1201:                                      ; preds = %._crit_edge1563, %.prol.loopexit2012, %._crit_edge1575.3, %._crit_edge1575.peel, %bb.dz, %.loopexit1284.thread, %bb.dq, %.loopexit1290, %bb.dy, %bb.a, %bb.b, %bb.dc, %bb.aq, %bb.al, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlatm7_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlarnd_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare void @dlarot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagge_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagsy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !59}
!9 = distinct !{!9, !60}
!10 = distinct !{!10, !59}
!11 = distinct !{!11, !59}
!12 = distinct !{!12, !59}
!13 = distinct !{!13, !59}
!14 = distinct !{!14, !59}
!15 = distinct !{!15, !59}
!16 = distinct !{!16, !59}
!17 = distinct !{!17, !59}
!18 = distinct !{!18, !59}
!19 = distinct !{!19, !59}
!20 = distinct !{!20, !59}
!21 = distinct !{!21, !59}
!22 = distinct !{!22, !59}
!23 = distinct !{!23, !59}
!24 = distinct !{!24, !59}
!25 = distinct !{!25, !60}
!26 = distinct !{!26, !59}
!27 = distinct !{!27, !59}
!28 = distinct !{!28, !59}
!29 = distinct !{!29, !59}
!30 = distinct !{!30, !59}
!31 = distinct !{!31, !59}
!32 = distinct !{!32, !59}
!33 = distinct !{!33, !59}
!34 = distinct !{!34, !59}
!35 = distinct !{!35, !60}
!36 = distinct !{!36, !59}
!37 = distinct !{!37, !59}
!38 = distinct !{!38, !59}
!39 = distinct !{!39, !60}
!40 = distinct !{!40, !59}
!41 = distinct !{!41, !60}
!42 = distinct !{!42, !59}
!43 = distinct !{!43, !59}
!44 = distinct !{!44, !59, !61, !62}
!45 = distinct !{!45, !59, !61, !62}
!46 = distinct !{!46, !59, !61}
!47 = distinct !{!47, !59}
!48 = distinct !{!48, !59, !61, !62}
!49 = distinct !{!49, !59, !61, !62}
!50 = distinct !{!50, !59, !61}
!51 = distinct !{!51, !59}
!52 = distinct !{!52, !60}
!53 = distinct !{!53, !60}
!54 = distinct !{!54, !59, !64}
!55 = distinct !{!55, !59}
!56 = !{!5, !5, i64 0}
!57 = !{!"double", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
end_hunk_0
