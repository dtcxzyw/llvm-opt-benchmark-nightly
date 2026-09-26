Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 335
begin_hunk_0_@_ZL16lower1BitShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %i.bx = icmp eq i16 %i.bv, 8
  %or.cond.i.i.i = and i1 %i.bx, %.not.i.i.i353
  %i.by = icmp ult i16 %i.bv, 8
  %or.cond3.i.i.i = or i1 %i.by, %or.cond.i.i.i
  %i.bz = select i1 %i.bw, i16 26, i16 27
  %spec.select.i.i58.i = select i1 %or.cond3.i.i.i, i16 %i.bz, i16 %.sroa.0.0.copyload.i.i.i.i.i
  %i.ca = tail call fastcc { ptr, i32 } @_ZL14widenSubVectorN4llvm3MVTENS_7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %spec.select.i.i58.i, ptr nonnull %4, i32 %5, i1 noundef zeroext false, ptr noundef nonnull readonly align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9, ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %.fca.0.extract17.i = extractvalue { ptr, i32 } %i.ca, 0 ; 2 uses
  %.fca.1.extract18.i = extractvalue { ptr, i32 } %i.ca, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.fca.0.extract17.i, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !469
  %i.cd = zext i32 %.fca.1.extract18.i to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ce, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471
  store ptr %.fca.0.extract17.i, ptr %17, align 8, !tbaa !465
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract18.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !240
  %i.cf = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract10.i = extractvalue { ptr, i32 } %i.cf, 0
  %.fca.1.extract11.i = extractvalue { ptr, i32 } %i.cf, 1
  store ptr %.fca.0.extract10.i, ptr %18, align 8
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract11.i, ptr %.sroa.213.0..sroa_idx.i, align 8
  %i.cg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 710, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #39 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.cg, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.cg, 1
  store ptr %.fca.0.extract6.i, ptr %19, align 8, !tbaa !465
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract7.i, ptr %.sroa.7.0..sroa_idx4.i, align 8, !tbaa !240
  %i.ch = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.ch, 1
  store ptr %.fca.0.extract1.i, ptr %20, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ci = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #39 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ci, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ci, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %.not535 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not535, label %bb.o, label %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread510

bb.o:                                             ; preds = %_ZL25lower1BitShuffleAsKSHIFTRRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_12X86SubtargetERNS_12SelectionDAGE.exit.thread, %_ZL25lower1BitShuffleAsKSHIFTRRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RKNS_12X86SubtargetERNS_12SelectionDAGE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull align 8 dereferenceable(12) %21, i64 12, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !683
  %.not52.i = icmp eq i32 %i.b, 1
  br i1 %.not52.i, label %.split576, label %.split575

.split575:                                        ; preds = %bb.o
  %i.ck = load i32, ptr %i.aj, align 8, !tbaa !643
  %.fr21.i.i = freeze i32 %i.ck
  %i.cl = icmp ult i32 %.fr21.i.i, 65             ; 7 uses
  %i.cm = load ptr, ptr %7, align 8               ; 8 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 6 uses
  %.in.i.i.us14.i.i = select i1 %i.cl, ptr %7, ptr %i.cm
  %i.co = load i64, ptr %.in.i.i.us14.i.i, align 8, !tbaa !357
  %i.cp = and i64 %i.co, 1
  %.not.us15.i.i = icmp eq i64 %i.cp, 0           ; 2 uses
  %i.cq = add i32 %i.b, -1                        ; 2 uses
  %broadcast.splatinsert733 = insertelement <16 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat734 = shufflevector <16 x i64> %broadcast.splatinsert733, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i", %.split575
  %indvar = phi i32 [ %indvar.next, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i" ], [ 0, %.split575 ] ; 4 uses
  %indvars.iv597 = phi i32 [ %indvars.iv.next598, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i" ], [ %i.cq, %.split575 ] ; 2 uses
  %.02253.i = phi i32 [ %i.ff, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i" ], [ 1, %.split575 ] ; 12 uses
  %i.cr = sub i32 %i.b, %.02253.i                 ; 5 uses
  %i.cs = and i32 %i.cr, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = lshr i32 %i.cr, 6
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw
  %.in.i.i5.i.i = select i1 %i.cl, ptr %7, ptr %i.cx
  br i1 %.not.us15.i.i, label %.lr.ph.split.i.1.i, label %.lr.ph16.i.i

.lr.ph16.i.i:                                     ; preds = %.lr.ph.split.us.i.i
  %exitcond34.not.i.i711 = icmp eq i32 %.02253.i, 1 ; 2 uses
  br i1 %i.cl, label %.lr.ph16.split.us.i.i.preheader, label %.lr.ph16.split.i.i.preheader

.lr.ph16.split.i.i.preheader:                     ; preds = %.lr.ph16.i.i
  br i1 %exitcond34.not.i.i711, label %.lr.ph.i.i.i356.preheader, label %.lr.ph710, !llvm.loop !4277

.lr.ph710:                                        ; preds = %.lr.ph16.split.i.i.preheader
  br label %bb.q, !llvm.loop !4277

.lr.ph16.split.us.i.i.preheader:                  ; preds = %.lr.ph16.i.i
  br i1 %exitcond34.not.i.i711, label %.lr.ph.i.i.i356.preheader, label %.lr.ph712, !llvm.loop !4277

.lr.ph712:                                        ; preds = %.lr.ph16.split.us.i.i.preheader
  br label %bb.p, !llvm.loop !4277

.lr.ph16.split.us.i.i:                            ; preds = %bb.p
  %i.cy = add nuw i32 %i.cz, 1                    ; 2 uses
  %exitcond34.not.i.i = icmp eq i32 %i.cy, %.02253.i
  br i1 %exitcond34.not.i.i, label %.lr.ph16.split.i.i..lr.ph.i.preheader.i.i.loopexit698_crit_edge, label %bb.p, !llvm.loop !4277

bb.p:                                             ; preds = %.lr.ph712, %.lr.ph16.split.us.i.i
  %i.cz = phi i32 [ 1, %.lr.ph712 ], [ %i.cy, %.lr.ph16.split.us.i.i ] ; 2 uses
  %i.da = and i32 %i.cz, 63
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.cn
  %.not.us.us.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.us.us.i.i, label %.lr.ph.split.i.1.i, label %.lr.ph16.split.us.i.i, !llvm.loop !4277

bb.q:                                             ; preds = %.lr.ph710, %.lr.ph16.split.i.i
  %i.de = phi i32 [ 1, %.lr.ph710 ], [ %i.dn, %.lr.ph16.split.i.i ] ; 3 uses
  %i.df = and i32 %i.de, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = lshr i32 %i.de, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !357
  %i.dm = and i64 %i.dl, %i.dh
  %.not.us.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i, label %.lr.ph.split.i.1.i, label %.lr.ph16.split.i.i, !llvm.loop !4277

.lr.ph16.split.i.i:                               ; preds = %bb.q
  %i.dn = add nuw i32 %i.de, 1                    ; 2 uses
  %exitcond33.not.i.i = icmp eq i32 %i.dn, %.02253.i
  br i1 %exitcond33.not.i.i, label %.lr.ph16.split.i.i..lr.ph.i.preheader.i.i.loopexit698_crit_edge, label %bb.q, !llvm.loop !4277

.lr.ph16.split.i.i..lr.ph.i.preheader.i.i.loopexit698_crit_edge: ; preds = %.lr.ph16.split.i.i, %.lr.ph16.split.us.i.i
  br label %.lr.ph.i.i.i356.preheader, !llvm.loop !4277

.lr.ph.i.i.i356.preheader:                        ; preds = %.lr.ph16.split.i.i.preheader, %.lr.ph16.split.i.i..lr.ph.i.preheader.i.i.loopexit698_crit_edge, %.lr.ph16.split.us.i.i.preheader
  br label %.lr.ph.i.i.i356

.lr.ph.i.i.i356:                                  ; preds = %.lr.ph.i.i.i356.preheader, %bb.r
  %.01116.i.i.i = phi i32 [ %i.du, %bb.r ], [ %.02253.i, %.lr.ph.i.i.i356.preheader ] ; 2 uses
  %.01315.i.i.i = phi i32 [ %i.dv, %bb.r ], [ 0, %.lr.ph.i.i.i356.preheader ] ; 2 uses
  %i.do = zext i32 %.01116.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !240 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, -1
  %i.ds = icmp eq i32 %i.dq, %.01315.i.i.i
  %i.dt = or i1 %i.dr, %i.ds
  br i1 %i.dt, label %bb.r, label %.lr.ph.split.i.1.i

bb.r:                                             ; preds = %.lr.ph.i.i.i356
  %i.du = add i32 %.01116.i.i.i, 1                ; 2 uses
  %i.dv = add nuw nsw i32 %.01315.i.i.i, 1
  %.not.i.i.i357 = icmp eq i32 %i.du, %i.b
  br i1 %.not.i.i.i357, label %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit, label %.lr.ph.i.i.i356, !llvm.loop !21

.lr.ph.split.i.1.i:                               ; preds = %bb.q, %bb.p, %.lr.ph.i.i.i356, %.lr.ph.split.us.i.i
  %i.dw = load i64, ptr %.in.i.i5.i.i, align 8, !tbaa !357
  %i.dx = and i64 %i.dw, %i.cu
  %.not6.i.1.i = icmp eq i64 %i.dx, 0
  br i1 %.not6.i.1.i, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i", label %.lr.ph7.i.1.i

.lr.ph7.i.1.i:                                    ; preds = %.lr.ph.split.i.1.i
  %exitcond32.not.i.1.i715 = icmp eq i32 %.02253.i, 1 ; 2 uses
  br i1 %i.cl, label %.lr.ph7.split.us.i.1.i.preheader, label %.lr.ph7.split.i.1.i.preheader

.lr.ph7.split.i.1.i.preheader:                    ; preds = %.lr.ph7.i.1.i
  br i1 %exitcond32.not.i.1.i715, label %.lr.ph.i.i.1.i.preheader, label %.lr.ph714, !llvm.loop !4277

.lr.ph714:                                        ; preds = %.lr.ph7.split.i.1.i.preheader
  br label %bb.s, !llvm.loop !4277

.lr.ph7.split.us.i.1.i.preheader:                 ; preds = %.lr.ph7.i.1.i
  br i1 %exitcond32.not.i.1.i715, label %.lr.ph.i.i.1.i.preheader, label %.lr.ph716, !llvm.loop !4277

.lr.ph716:                                        ; preds = %.lr.ph7.split.us.i.1.i.preheader
  %min.iters.check728 = icmp ult i32 %indvar, 16
  br i1 %min.iters.check728, label %scalar.ph727.preheader, label %vector.ph729, !llvm.loop !4277

vector.ph729:                                     ; preds = %.lr.ph716
  %n.vec730 = and i32 %indvar, -16                ; 3 uses
  %i.dy = or disjoint i32 %n.vec730, 1
  %broadcast.splatinsert731 = insertelement <16 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat732 = shufflevector <16 x i32> %broadcast.splatinsert731, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body735

vector.body735:                                   ; preds = %vector.body.interim, %vector.ph729
  %index736 = phi i32 [ 0, %vector.ph729 ], [ %index.next737, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, %vector.ph729 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.dz = add nsw <16 x i32> %vec.ind, %broadcast.splat732
  %i.ea = and <16 x i32> %i.dz, splat (i32 63)
  %i.eb = zext nneg <16 x i32> %i.ea to <16 x i64>
  %i.ec = shl nuw <16 x i64> splat (i64 1), %i.eb
  %i.ed = and <16 x i64> %i.ec, %broadcast.splat734
  %.fr761 = freeze <16 x i64> %i.ed
  %i.ee = icmp eq <16 x i64> %.fr761, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %.not762 = icmp eq i16 %i.ef, 0
  br i1 %.not762, label %vector.body.interim, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i"

vector.body.interim:                              ; preds = %vector.body735
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next737 = add nuw i32 %index736, 16      ; 2 uses
  %i.eg = icmp eq i32 %index.next737, %n.vec730
  br i1 %i.eg, label %middle.block738, label %vector.body735, !llvm.loop !4278

middle.block738:                                  ; preds = %vector.body.interim
  %cmp.n739 = icmp eq i32 %indvar, %n.vec730
  br i1 %cmp.n739, label %.lr.ph7.split.i.1.i..lr.ph.i.preheader.i.1.i.loopexit694_crit_edge, label %scalar.ph727.preheader, !llvm.loop !4277

scalar.ph727.preheader:                           ; preds = %.lr.ph716, %middle.block738
  %.ph779 = phi i32 [ 1, %.lr.ph716 ], [ %i.dy, %middle.block738 ]
  br label %scalar.ph727

.lr.ph7.split.i.1.i:                              ; preds = %bb.s
  %i.eh = add nuw i32 %i.ei, 1                    ; 2 uses
  %exitcond.not.i.1.i = icmp eq i32 %i.eh, %.02253.i
  br i1 %exitcond.not.i.1.i, label %.lr.ph7.split.i.1.i..lr.ph.i.preheader.i.1.i.loopexit694_crit_edge, label %bb.s, !llvm.loop !4277

bb.s:                                             ; preds = %.lr.ph714, %.lr.ph7.split.i.1.i
  %i.ei = phi i32 [ 1, %.lr.ph714 ], [ %i.eh, %.lr.ph7.split.i.1.i ] ; 2 uses
  %i.ej = add nsw i32 %i.ei, %i.cr                ; 2 uses
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = lshr i32 %i.ej, 6
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !357
  %i.er = and i64 %i.eq, %i.em
  %.not.i.1.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.1.i, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i", label %.lr.ph7.split.i.1.i, !llvm.loop !4277

.lr.ph7.split.us.i.1.i:                           ; preds = %scalar.ph727
  %i.es = add nuw i32 %i.et, 1                    ; 2 uses
  %exitcond32.not.i.1.i = icmp eq i32 %i.es, %.02253.i
  br i1 %exitcond32.not.i.1.i, label %.lr.ph7.split.i.1.i..lr.ph.i.preheader.i.1.i.loopexit694_crit_edge, label %scalar.ph727, !llvm.loop !4279

scalar.ph727:                                     ; preds = %scalar.ph727.preheader, %.lr.ph7.split.us.i.1.i
  %i.et = phi i32 [ %i.es, %.lr.ph7.split.us.i.1.i ], [ %.ph779, %scalar.ph727.preheader ] ; 2 uses
  %i.eu = add nsw i32 %i.et, %i.cr
  %i.ev = and i32 %i.eu, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ex, %i.cn
  %.not.us10.i.1.i = icmp eq i64 %i.ey, 0
  br i1 %.not.us10.i.1.i, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i", label %.lr.ph7.split.us.i.1.i, !llvm.loop !4277

.lr.ph7.split.i.1.i..lr.ph.i.preheader.i.1.i.loopexit694_crit_edge: ; preds = %.lr.ph7.split.i.1.i, %.lr.ph7.split.us.i.1.i, %middle.block738
  br label %.lr.ph.i.i.1.i.preheader, !llvm.loop !4277

.lr.ph.i.i.1.i.preheader:                         ; preds = %.lr.ph7.split.i.1.i.preheader, %.lr.ph7.split.i.1.i..lr.ph.i.preheader.i.1.i.loopexit694_crit_edge, %.lr.ph7.split.us.i.1.i.preheader
  br label %.lr.ph.i.i.1.i

.lr.ph.i.i.1.i:                                   ; preds = %.lr.ph.i.i.1.i.preheader, %bb.t
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %bb.t ], [ 0, %.lr.ph.i.i.1.i.preheader ] ; 2 uses
  %.01315.i.i.1.i = phi i32 [ %i.fe, %bb.t ], [ %.02253.i, %.lr.ph.i.i.1.i.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv594
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !240 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  %i.fc = icmp eq i32 %i.fa, %.01315.i.i.1.i
  %i.fd = or i1 %i.fb, %i.fc
  br i1 %i.fd, label %bb.t, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i"

bb.t:                                             ; preds = %.lr.ph.i.i.1.i
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.01315.i.i.1.i, 1
  %lftr.wideiv607 = trunc i64 %indvars.iv.next595 to i32
  %exitcond608 = icmp eq i32 %indvars.iv597, %lftr.wideiv607
  br i1 %exitcond608, label %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit, label %.lr.ph.i.i.1.i, !llvm.loop !21

"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i": ; preds = %bb.s, %vector.body735, %scalar.ph727, %.lr.ph.i.i.1.i, %.lr.ph.split.i.1.i
  %i.ff = add nuw nsw i32 %.02253.i, 1            ; 2 uses
  %.not.i355 = icmp eq i32 %i.ff, %i.b
  %indvars.iv.next598 = add i32 %indvars.iv597, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.i355, label %.lr.ph.split.us.i.i.1.preheader, label %.lr.ph.split.us.i.i, !llvm.loop !4280

.lr.ph.split.us.i.i.1.preheader:                  ; preds = %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i"
  %broadcast.splatinsert749 = insertelement <16 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat750 = shufflevector <16 x i64> %broadcast.splatinsert749, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.split.us.i.i.1

_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit: ; preds = %bb.r, %bb.t, %bb.z, %bb.ab
  %.0334.idx573590.sroa.phi = phi ptr [ %.0334.idx573590.sroa.gep799, %bb.z ], [ %27, %bb.t ], [ %.0334.idx573590.sroa.gep798, %bb.ab ], [ %27, %bb.r ] ; 2 uses
  %.02253.i587 = phi i32 [ %.02253.i.1, %bb.z ], [ %.02253.i, %bb.t ], [ %.02253.i.1, %bb.ab ], [ %.02253.i, %bb.r ] ; 2 uses
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.t ], [ true, %bb.ab ], [ false, %bb.r ]
  %.0473 = phi i32 [ 709, %bb.z ], [ 710, %bb.t ], [ 710, %bb.ab ], [ 709, %bb.r ]
  %.sroa.4186.0.copyload550.in = getelementptr inbounds nuw i8, ptr %.0334.idx573590.sroa.phi, i64 8
  %.sroa.4186.0.copyload550 = load i32, ptr %.sroa.4186.0.copyload550.in, align 8, !tbaa !240 ; 2 uses
  %.sroa.0185.0.copyload552 = load ptr, ptr %.0334.idx573590.sroa.phi, align 8, !tbaa !465 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0185.0.copyload552, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !469
  %i.fj = zext i32 %.sroa.4186.0.copyload550 to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fj
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.fk, align 8, !tbaa !345 ; 3 uses
  %i.fl = add i16 %.sroa.0.0.copyload.i.i.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.fl, 53
  br i1 %spec.select.i.i.i.i, label %bb.u, label %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit

bb.u:                                             ; preds = %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit: ; preds = %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 411
  %.val.i = load i8, ptr %i.fm, align 1
  %i.fn = zext i16 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.fo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 -2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !339 ; 2 uses
  %i.fr = trunc nuw i8 %.val.i to i1              ; 2 uses
  %.not.i.i = xor i1 %i.fr, true
  %i.fs = icmp eq i16 %i.fq, 8
  %or.cond.i.i = and i1 %i.fs, %.not.i.i
  %i.ft = icmp ult i16 %i.fq, 8
  %or.cond3.i.i = or i1 %i.ft, %or.cond.i.i
  %i.fu = select i1 %i.fr, i16 26, i16 27
  %spec.select.i.i = select i1 %or.cond3.i.i, i16 %i.fu, i16 %.sroa.0.0.copyload.i.i.i.i
  %i.fv = tail call fastcc { ptr, i32 } @_ZL14widenSubVectorN4llvm3MVTENS_7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %spec.select.i.i, ptr nonnull %.sroa.0185.0.copyload552, i32 %.sroa.4186.0.copyload550, i1 noundef zeroext false, ptr noundef nonnull readonly align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9, ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %.fca.0.extract173 = extractvalue { ptr, i32 } %i.fv, 0 ; 3 uses
  %.fca.1.extract174 = extractvalue { ptr, i32 } %i.fv, 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.fca.0.extract173, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !469
  %i.fy = zext i32 %.fca.1.extract174 to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fy
  %.sroa.0.0.copyload.i.i.i358 = load i16, ptr %i.fz, align 8, !tbaa !345 ; 5 uses
  %i.ga = icmp ne i16 %.sroa.0.0.copyload.i.i.i358, %3
  %or.cond526 = select i1 %i.fg, i1 %i.ga, i1 false
  br i1 %or.cond526, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit
  %i.gb = add i16 %.sroa.0.0.copyload.i.i.i358, -163
  %spec.select.i.i359 = icmp ult i16 %i.gb, 53
  br i1 %spec.select.i.i359, label %bb.w, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.v
  %i.gc = zext i16 %.sroa.0.0.copyload.i.i.i358 to i64
  %i.gd = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 -2
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !339
  %i.gg = zext i16 %i.gf to i32
  store ptr %.fca.0.extract173, ptr %28, align 8, !tbaa !465
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract174, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !240
  %i.gh = sub nsw i32 %i.gg, %i.b                 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract163 = extractvalue { ptr, i32 } %i.gj, 0
  %.fca.1.extract164 = extractvalue { ptr, i32 } %i.gj, 1
  store ptr %.fca.0.extract163, ptr %29, align 8
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract164, ptr %.sroa.2166.0..sroa_idx, align 8
  %i.gk = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 709, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.copyload.i.i.i358, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #39 ; 2 uses
  %.fca.0.extract159 = extractvalue { ptr, i32 } %i.gk, 0
  %.fca.1.extract160 = extractvalue { ptr, i32 } %i.gk, 1
  %i.gl = add nsw i32 %i.gh, %.02253.i587
  br label %bb.ac

.lr.ph.split.us.i.i.1:                            ; preds = %.lr.ph.split.us.i.i.1.preheader, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1"
  %indvar741 = phi i32 [ %indvar.next742, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1" ], [ 0, %.lr.ph.split.us.i.i.1.preheader ] ; 4 uses
  %indvars.iv597.1 = phi i32 [ %indvars.iv.next598.1, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1" ], [ %i.cq, %.lr.ph.split.us.i.i.1.preheader ] ; 2 uses
  %.02253.i.1 = phi i32 [ %i.jb, %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1" ], [ 1, %.lr.ph.split.us.i.i.1.preheader ] ; 12 uses
  %i.gm = sub i32 %i.b, %.02253.i.1               ; 5 uses
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %i.gq = lshr i32 %i.gm, 6
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.gr
  %.in.i.i5.i.i.1 = select i1 %i.cl, ptr %7, ptr %i.gs
  br i1 %.not.us15.i.i, label %.lr.ph.split.i.1.i.1, label %.lr.ph16.i.i.1

.lr.ph16.i.i.1:                                   ; preds = %.lr.ph.split.us.i.i.1
  %exitcond34.not.i.i.1719 = icmp eq i32 %.02253.i.1, 1 ; 2 uses
  br i1 %i.cl, label %.lr.ph16.split.us.i.i.1.preheader, label %.lr.ph16.split.i.i.1.preheader

.lr.ph16.split.i.i.1.preheader:                   ; preds = %.lr.ph16.i.i.1
  br i1 %exitcond34.not.i.i.1719, label %.lr.ph.i.i.i356.1.preheader, label %.lr.ph718, !llvm.loop !4277

.lr.ph718:                                        ; preds = %.lr.ph16.split.i.i.1.preheader
  br label %bb.x, !llvm.loop !4277

.lr.ph16.split.us.i.i.1.preheader:                ; preds = %.lr.ph16.i.i.1
  br i1 %exitcond34.not.i.i.1719, label %.lr.ph.i.i.i356.1.preheader, label %.lr.ph720, !llvm.loop !4277

.lr.ph720:                                        ; preds = %.lr.ph16.split.us.i.i.1.preheader
  br label %bb.y, !llvm.loop !4277

.lr.ph16.split.i.i.1:                             ; preds = %bb.x
  %i.gt = add nuw i32 %i.gu, 1                    ; 2 uses
  %exitcond33.not.i.i.1 = icmp eq i32 %i.gt, %.02253.i.1
  br i1 %exitcond33.not.i.i.1, label %.lr.ph16.split.i.i.1..lr.ph.i.preheader.i.i.1.loopexit690_crit_edge, label %bb.x, !llvm.loop !4277

bb.x:                                             ; preds = %.lr.ph718, %.lr.ph16.split.i.i.1
  %i.gu = phi i32 [ 1, %.lr.ph718 ], [ %i.gt, %.lr.ph16.split.i.i.1 ] ; 3 uses
  %i.gv = and i32 %i.gu, 63
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = lshr i32 %i.gu, 6
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !357
  %i.hc = and i64 %i.hb, %i.gx
  %.not.us.i.i.1 = icmp eq i64 %i.hc, 0
  br i1 %.not.us.i.i.1, label %.lr.ph.split.i.1.i.1, label %.lr.ph16.split.i.i.1, !llvm.loop !4277

.lr.ph16.split.us.i.i.1:                          ; preds = %bb.y
  %i.hd = add nuw i32 %i.he, 1                    ; 2 uses
  %exitcond34.not.i.i.1 = icmp eq i32 %i.hd, %.02253.i.1
  br i1 %exitcond34.not.i.i.1, label %.lr.ph16.split.i.i.1..lr.ph.i.preheader.i.i.1.loopexit690_crit_edge, label %bb.y, !llvm.loop !4277

bb.y:                                             ; preds = %.lr.ph720, %.lr.ph16.split.us.i.i.1
  %i.he = phi i32 [ 1, %.lr.ph720 ], [ %i.hd, %.lr.ph16.split.us.i.i.1 ] ; 2 uses
  %i.hf = and i32 %i.he, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl nuw i64 1, %i.hg
  %i.hi = and i64 %i.hh, %i.cn
  %.not.us.us.i.i.1 = icmp eq i64 %i.hi, 0
  br i1 %.not.us.us.i.i.1, label %.lr.ph.split.i.1.i.1, label %.lr.ph16.split.us.i.i.1, !llvm.loop !4277

.lr.ph16.split.i.i.1..lr.ph.i.preheader.i.i.1.loopexit690_crit_edge: ; preds = %.lr.ph16.split.i.i.1, %.lr.ph16.split.us.i.i.1
  br label %.lr.ph.i.i.i356.1.preheader, !llvm.loop !4277

.lr.ph.i.i.i356.1.preheader:                      ; preds = %.lr.ph16.split.i.i.1.preheader, %.lr.ph16.split.i.i.1..lr.ph.i.preheader.i.i.1.loopexit690_crit_edge, %.lr.ph16.split.us.i.i.1.preheader
  br label %.lr.ph.i.i.i356.1

.lr.ph.i.i.i356.1:                                ; preds = %.lr.ph.i.i.i356.1.preheader, %bb.z
  %.01116.i.i.i.1 = phi i32 [ %i.hp, %bb.z ], [ %.02253.i.1, %.lr.ph.i.i.i356.1.preheader ] ; 2 uses
  %.01315.i.i.i.1 = phi i32 [ %i.hq, %bb.z ], [ %i.b, %.lr.ph.i.i.i356.1.preheader ] ; 2 uses
  %i.hj = zext i32 %.01116.i.i.i.1 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !240 ; 2 uses
  %i.hm = icmp eq i32 %i.hl, -1
  %i.hn = icmp eq i32 %i.hl, %.01315.i.i.i.1
  %i.ho = or i1 %i.hm, %i.hn
  br i1 %i.ho, label %bb.z, label %.lr.ph.split.i.1.i.1

bb.z:                                             ; preds = %.lr.ph.i.i.i356.1
  %i.hp = add i32 %.01116.i.i.i.1, 1              ; 2 uses
  %i.hq = add nsw i32 %.01315.i.i.i.1, 1
  %.not.i.i.i357.1 = icmp eq i32 %i.hp, %i.b
  br i1 %.not.i.i.i357.1, label %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit, label %.lr.ph.i.i.i356.1, !llvm.loop !21

.lr.ph.split.i.1.i.1:                             ; preds = %bb.x, %bb.y, %.lr.ph.i.i.i356.1, %.lr.ph.split.us.i.i.1
  %i.hr = load i64, ptr %.in.i.i5.i.i.1, align 8, !tbaa !357
  %i.hs = and i64 %i.hr, %i.gp
  %.not6.i.1.i.1 = icmp eq i64 %i.hs, 0
  br i1 %.not6.i.1.i.1, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", label %.lr.ph7.i.1.i.1

.lr.ph7.i.1.i.1:                                  ; preds = %.lr.ph.split.i.1.i.1
  %exitcond32.not.i.1.i.1723 = icmp eq i32 %.02253.i.1, 1 ; 2 uses
  br i1 %i.cl, label %.lr.ph7.split.us.i.1.i.1.preheader, label %.lr.ph7.split.i.1.i.1.preheader

.lr.ph7.split.i.1.i.1.preheader:                  ; preds = %.lr.ph7.i.1.i.1
  br i1 %exitcond32.not.i.1.i.1723, label %.lr.ph.i.preheader.i.1.i.1, label %.lr.ph722, !llvm.loop !4277

.lr.ph722:                                        ; preds = %.lr.ph7.split.i.1.i.1.preheader
  br label %bb.aa, !llvm.loop !4277

.lr.ph7.split.us.i.1.i.1.preheader:               ; preds = %.lr.ph7.i.1.i.1
  br i1 %exitcond32.not.i.1.i.1723, label %.lr.ph.i.preheader.i.1.i.1, label %.lr.ph724, !llvm.loop !4277

.lr.ph724:                                        ; preds = %.lr.ph7.split.us.i.1.i.1.preheader
  %min.iters.check744 = icmp ult i32 %indvar741, 16
  br i1 %min.iters.check744, label %scalar.ph743.preheader, label %vector.ph745, !llvm.loop !4277

vector.ph745:                                     ; preds = %.lr.ph724
  %n.vec746 = and i32 %indvar741, -16             ; 3 uses
  %i.ht = or disjoint i32 %n.vec746, 1
  %broadcast.splatinsert747 = insertelement <16 x i32> poison, i32 %i.gm, i64 0
  %broadcast.splat748 = shufflevector <16 x i32> %broadcast.splatinsert747, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body751

vector.body751:                                   ; preds = %vector.body.interim756, %vector.ph745
  %index752 = phi i32 [ 0, %vector.ph745 ], [ %index.next754, %vector.body.interim756 ]
  %vec.ind753 = phi <16 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, %vector.ph745 ], [ %vec.ind.next755, %vector.body.interim756 ] ; 2 uses
  %i.hu = add nsw <16 x i32> %vec.ind753, %broadcast.splat748
  %i.hv = and <16 x i32> %i.hu, splat (i32 63)
  %i.hw = zext nneg <16 x i32> %i.hv to <16 x i64>
  %i.hx = shl nuw <16 x i64> splat (i64 1), %i.hw
  %i.hy = and <16 x i64> %i.hx, %broadcast.splat750
  %.fr763 = freeze <16 x i64> %i.hy
  %i.hz = icmp eq <16 x i64> %.fr763, zeroinitializer
  %i.ia = bitcast <16 x i1> %i.hz to i16
  %.not764 = icmp eq i16 %i.ia, 0
  br i1 %.not764, label %vector.body.interim756, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1"

vector.body.interim756:                           ; preds = %vector.body751
  %vec.ind.next755 = add <16 x i32> %vec.ind753, splat (i32 16)
  %index.next754 = add nuw i32 %index752, 16      ; 2 uses
  %i.ib = icmp eq i32 %index.next754, %n.vec746
  br i1 %i.ib, label %middle.block757, label %vector.body751, !llvm.loop !4281

middle.block757:                                  ; preds = %vector.body.interim756
  %cmp.n758 = icmp eq i32 %indvar741, %n.vec746
  br i1 %cmp.n758, label %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, label %scalar.ph743.preheader, !llvm.loop !4277

scalar.ph743.preheader:                           ; preds = %.lr.ph724, %middle.block757
  %.ph767 = phi i32 [ 1, %.lr.ph724 ], [ %i.ht, %middle.block757 ]
  br label %scalar.ph743

.lr.ph7.split.i.1.i.1:                            ; preds = %bb.aa
  %i.ic = add nuw i32 %i.id, 1                    ; 2 uses
  %exitcond.not.i.1.i.1 = icmp eq i32 %i.ic, %.02253.i.1
  br i1 %exitcond.not.i.1.i.1, label %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, label %bb.aa, !llvm.loop !4277

bb.aa:                                            ; preds = %.lr.ph722, %.lr.ph7.split.i.1.i.1
  %i.id = phi i32 [ 1, %.lr.ph722 ], [ %i.ic, %.lr.ph7.split.i.1.i.1 ] ; 2 uses
  %i.ie = add nsw i32 %i.id, %i.gm                ; 2 uses
  %i.if = and i32 %i.ie, 63
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = lshr i32 %i.ie, 6
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !357
  %i.im = and i64 %i.il, %i.ih
  %.not.i.1.i.1 = icmp eq i64 %i.im, 0
  br i1 %.not.i.1.i.1, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", label %.lr.ph7.split.i.1.i.1, !llvm.loop !4277

.lr.ph7.split.us.i.1.i.1:                         ; preds = %scalar.ph743
  %i.in = add nuw i32 %i.io, 1                    ; 2 uses
  %exitcond32.not.i.1.i.1 = icmp eq i32 %i.in, %.02253.i.1
  br i1 %exitcond32.not.i.1.i.1, label %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, label %scalar.ph743, !llvm.loop !4282

scalar.ph743:                                     ; preds = %scalar.ph743.preheader, %.lr.ph7.split.us.i.1.i.1
  %i.io = phi i32 [ %i.in, %.lr.ph7.split.us.i.1.i.1 ], [ %.ph767, %scalar.ph743.preheader ] ; 2 uses
  %i.ip = add nsw i32 %i.io, %i.gm
  %i.iq = and i32 %i.ip, 63
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = shl nuw i64 1, %i.ir
  %i.it = and i64 %i.is, %i.cn
  %.not.us10.i.1.i.1 = icmp eq i64 %i.it, 0
  br i1 %.not.us10.i.1.i.1, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", label %.lr.ph7.split.us.i.1.i.1, !llvm.loop !4277

.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge: ; preds = %.lr.ph7.split.i.1.i.1, %.lr.ph7.split.us.i.1.i.1, %middle.block757
  br label %.lr.ph.i.preheader.i.1.i.1, !llvm.loop !4277

.lr.ph.i.preheader.i.1.i.1:                       ; preds = %.lr.ph7.split.i.1.i.1.preheader, %.lr.ph7.split.i.1.i.1..lr.ph.i.preheader.i.1.i.1.loopexit686_crit_edge, %.lr.ph7.split.us.i.1.i.1.preheader
  %i.iu = add i32 %.02253.i.1, %i.b
  br label %.lr.ph.i.i.1.i.1

.lr.ph.i.i.1.i.1:                                 ; preds = %bb.ab, %.lr.ph.i.preheader.i.1.i.1
  %indvars.iv594.1 = phi i64 [ %indvars.iv.next595.1, %bb.ab ], [ 0, %.lr.ph.i.preheader.i.1.i.1 ] ; 2 uses
  %.01315.i.i.1.i.1 = phi i32 [ %i.ja, %bb.ab ], [ %i.iu, %.lr.ph.i.preheader.i.1.i.1 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv594.1
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !240 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, -1
  %i.iy = icmp eq i32 %i.iw, %.01315.i.i.1.i.1
  %i.iz = or i1 %i.ix, %i.iy
  br i1 %i.iz, label %bb.ab, label %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1"

bb.ab:                                            ; preds = %.lr.ph.i.i.1.i.1
  %indvars.iv.next595.1 = add nuw nsw i64 %indvars.iv594.1, 1 ; 2 uses
  %i.ja = add nsw i32 %.01315.i.i.1.i.1, 1
  %lftr.wideiv605 = trunc i64 %indvars.iv.next595.1 to i32
  %exitcond606 = icmp eq i32 %indvars.iv597.1, %lftr.wideiv605
  br i1 %exitcond606, label %_ZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntE.exit, label %.lr.ph.i.i.1.i.1, !llvm.loop !21

"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1": ; preds = %bb.aa, %vector.body751, %scalar.ph743, %.lr.ph.i.i.1.i.1, %.lr.ph.split.i.1.i.1
  %i.jb = add nuw nsw i32 %.02253.i.1, 1          ; 2 uses
  %.not.i355.1 = icmp eq i32 %i.jb, %i.b
  %indvars.iv.next598.1 = add i32 %indvars.iv597.1, -1
  %indvar.next742 = add i32 %indvar741, 1
  br i1 %.not.i355.1, label %.split576, label %.lr.ph.split.us.i.i.1, !llvm.loop !4280

bb.ac:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit
  %.sroa.0433.0 = phi ptr [ %.fca.0.extract159, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.fca.0.extract173, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit ]
  %.sroa.9.0 = phi i32 [ %.fca.1.extract160, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.fca.1.extract174, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit ]
  %.0335 = phi i32 [ %i.gl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.02253.i587, %_ZL15widenMaskVectorN4llvm7SDValueEbRKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE.exit ]
  store ptr %.sroa.0433.0, ptr %30, align 8, !tbaa !465
  %.sroa.9.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx436, align 8, !tbaa !240
  %i.jc = sext i32 %.0335 to i64
  %i.jd = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract151 = extractvalue { ptr, i32 } %i.jd, 0
  %.fca.1.extract152 = extractvalue { ptr, i32 } %i.jd, 1
  store ptr %.fca.0.extract151, ptr %31, align 8
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract152, ptr %.sroa.2154.0..sroa_idx, align 8
  %i.je = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef %.0473, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.copyload.i.i.i358, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #39 ; 2 uses
  %.fca.0.extract147 = extractvalue { ptr, i32 } %i.je, 0
  %.fca.1.extract148 = extractvalue { ptr, i32 } %i.je, 1
  store ptr %.fca.0.extract147, ptr %32, align 8, !tbaa !465
  %.sroa.9.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract148, ptr %.sroa.9.0..sroa_idx438, align 8, !tbaa !240
  %i.jf = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract142 = extractvalue { ptr, i32 } %i.jf, 0
  %.fca.1.extract143 = extractvalue { ptr, i32 } %i.jf, 1
  store ptr %.fca.0.extract142, ptr %33, align 8
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract143, ptr %.sroa.2145.0..sroa_idx, align 8
  %i.jg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #39 ; 2 uses
  %.fca.0.extract138 = extractvalue { ptr, i32 } %i.jg, 0
  %.fca.1.extract139 = extractvalue { ptr, i32 } %i.jg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39
  br label %_ZNK4llvm12X86Subtarget10useBWIRegsEv.exit.thread510

.split576:                                        ; preds = %"_ZZL24match1BitShuffleAsKSHIFTRjN4llvm8ArrayRefIiEEiRKNS0_5APIntEENK3$_0clEib.exit.thread.1.i.1", %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39
  br i1 %.0.lcssa.i.i.i639649, label %bb.ad, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.ad:                                            ; preds = %.split576
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !468
  %i.jj = icmp eq i32 %i.ji, 222
  br i1 %i.jj, label %bb.ae, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !476 ; 2 uses
  %.not.i.i360 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i360, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.ae
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !477
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.af, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.af:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !638 ; 5 uses
  %.sroa.0419.0.copyload = load ptr, ptr %i.jq, align 8, !tbaa !465 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %.sroa.0135.0.copyload = load ptr, ptr %i.jr, align 8, !tbaa !465
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  %.sroa.4136.0.copyload = load i32, ptr %.sroa.4136.0..sroa_idx, align 8, !tbaa !240
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 80
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !472
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !861
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #39
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0419.0.copyload, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !469
  %i.jy = zext i32 %.sroa.6.0.copyload to i64
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.jy ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.jz, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i, ptr %34, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ka, align 8
  %i.kb = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  %i.kc = icmp ugt i64 %i.kb, 31
  br i1 %i.kc, label %.critedge345, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kd = call fastcc noundef zeroext i1 @_ZL22isBroadcastShuffleMaskN4llvm8ArrayRefIiEE(ptr %1, i64 %2)
  br i1 %i.kd, label %.critedge345, label %bb.ah

.critedge345:                                     ; preds = %bb.ag, %bb.af
  %.sroa.0126.0.copyload = load i16, ptr %34, align 8, !tbaa !345 ; 2 uses
  %.sroa.2128.0.copyload = load ptr, ptr %i.ka, align 8, !tbaa !471 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.ke = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.0126.0.copyload, ptr %.sroa.2128.0.copyload) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %.fca.0.extract116 = extractvalue { ptr, i32 } %i.ke, 0
  %.fca.1.extract117 = extractvalue { ptr, i32 } %i.ke, 1
  store ptr %.fca.0.extract116, ptr %35, align 8
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract117, ptr %.sroa.2119.0..sroa_idx, align 8
  store ptr %1, ptr %36, align 8, !tbaa !661
  %.sroa.13.0..sroa_idx479 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %2, ptr %.sroa.13.0..sroa_idx479, align 8, !tbaa !672
  %i.kf = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0126.0.copyload, ptr %.sroa.2128.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nonnull %.sroa.0419.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %36) #39 ; 2 uses
  %.fca.0.extract112 = extractvalue { ptr, i32 } %i.kf, 0
  %.fca.1.extract113 = extractvalue { ptr, i32 } %i.kf, 1
  %.sroa.0109.0.copyload = load i16, ptr %34, align 8, !tbaa !345 ; 2 uses
  %.sroa.2111.0.copyload = load ptr, ptr %i.ka, align 8, !tbaa !471 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0109.0.copyload, ptr %.sroa.2111.0.copyload) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  %.fca.0.extract99 = extractvalue { ptr, i32 } %i.kg, 0
  %.fca.1.extract100 = extractvalue { ptr, i32 } %i.kg, 1
  store ptr %.fca.0.extract99, ptr %38, align 8
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract100, ptr %.sroa.2102.0..sroa_idx, align 8
  store ptr %1, ptr %39, align 8, !tbaa !661
  %.sroa.13.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %2, ptr %.sroa.13.0..sroa_idx480, align 8, !tbaa !672
  %i.kh = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %.sroa.0109.0.copyload, ptr %.sroa.2111.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.sroa.0135.0.copyload, i32 %.sroa.4136.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %39) #39 ; 2 uses
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.kh, 0
  %.fca.1.extract96 = extractvalue { ptr, i32 } %i.kh, 1
  store ptr %.fca.0.extract95, ptr %37, align 8
end_hunk_0
