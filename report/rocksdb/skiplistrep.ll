inline.NumInlined: 973
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE6InsertILb0EEEbPKcPNS5_6SpliceEb:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !171
  %i.bo = icmp slt i32 %i.bn, 0                   ; 2 uses
  %brmerge.not = and i1 %i.bo, %3
  br i1 %brmerge.not, label %bb.j, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread.loopexit.split.loop.exit

bb.j:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ag
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !159
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %bb.k ], [ %i.ag, %bb.j ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv152
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !159
  %i.bu = icmp eq ptr %i.bt, %i.br
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1
  br i1 %i.bu, label %bb.k, label %.loopexit126.loopexit, !llvm.loop !173

.loopexit126.loopexit:                            ; preds = %bb.k
  %i.bv = trunc nsw i64 %indvars.iv152 to i32
  br label %.loopexit126

.loopexit126.loopexit150:                         ; preds = %bb.h
  %i.bw = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit126

.loopexit126:                                     ; preds = %.loopexit126.loopexit150, %.loopexit126.loopexit, %bb.d
  %.3 = phi i32 [ %i.ap, %bb.d ], [ %i.bv, %.loopexit126.loopexit ], [ %i.bw, %.loopexit126.loopexit150 ] ; 3 uses
  %i.bx = icmp slt i32 %.3, %.1120
  br i1 %i.bx, label %bb.c, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread, !llvm.loop !174

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread.loopexit.split.loop.exit: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110
  %.091134.mux.le = select i1 %i.bo, i32 %.1120, i32 %.091134
  br label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread.loopexit.split.loop.exit, %bb.i, %.loopexit126, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread, %bb.b
  %.4 = phi i32 [ %.1120, %bb.b ], [ %.091134.mux.le, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread.loopexit.split.loop.exit ], [ %.091134, %bb.i ], [ %.3, %.loopexit126 ], [ %.1120, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread ] ; 4 uses
  %i.by = icmp sgt i32 %.4, 0
  br i1 %i.by, label %.lr.ph.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit

.lr.ph.i:                                         ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = zext nneg i32 %.4 to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i ] ; 6 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !87 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !159 ; 2 uses
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !88 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !159 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.ck = sub nsw i64 1, %indvars.iv.i            ; 4 uses
  %.not.i111 = icmp eq i64 %indvars.iv.next.i, 0
  %i.cl = sub nsw i64 2, %indvars.iv.i
  br i1 %.not.i111, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.l, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i
  %.020.us.i.i = phi ptr [ %i.cn, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i ], [ %i.ce, %bb.l ] ; 4 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.020.us.i.i, i64 %i.ck
  %i.cn = load atomic ptr, ptr %i.cm acquire, align 8 ; 8 uses
  %.not.us.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.us.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %bb.m

bb.m:                                             ; preds = %.split.us.i.i
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ck
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.cp, i32 0, i32 1, i32 1)
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cl
  %i.cr = load atomic ptr, ptr %i.cq acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.cr, i32 0, i32 1, i32 1)
  %i.cs = icmp eq ptr %i.cn, %i.ch
  br i1 %i.cs, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i: ; preds = %bb.m
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !175
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.split.us.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i

.split.i.i:                                       ; preds = %bb.l, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i
  %.020.i.i = phi ptr [ %i.db, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i ], [ %i.ce, %bb.l ] ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.020.i.i, i64 %i.ck
  %i.db = load atomic ptr, ptr %i.da acquire, align 8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %bb.n

bb.n:                                             ; preds = %.split.i.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ck
  %i.dd = load atomic ptr, ptr %i.dc acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.dd, i32 0, i32 1, i32 1)
  %i.de = icmp eq ptr %i.db, %i.ch
  br i1 %i.de, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i: ; preds = %bb.n
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !175
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %.split.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i, %bb.m, %.split.us.i.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i, %bb.n, %.split.i.i
  %.us-phi.i.i = phi ptr [ %.020.i.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i ], [ %.020.i.i, %.split.i.i ], [ %.020.i.i, %bb.n ], [ %.020.us.i.i, %.split.us.i.i ], [ %.020.us.i.i, %bb.m ], [ %.020.us.i.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i ]
  %.us-phi32.i.i = phi ptr [ %i.db, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i ], [ %i.db, %bb.n ], [ null, %.split.i.i ], [ %i.cn, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i ], [ %i.cn, %bb.m ], [ null, %.split.us.i.i ]
  store ptr %.us-phi.i.i, ptr %i.ci, align 8, !tbaa !159
  store ptr %.us-phi32.i.i, ptr %i.cj, align 8, !tbaa !159
  %i.dm = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.dm, label %bb.l, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit, !llvm.loop !176

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, %.preheader128, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread
  %.4176 = phi i32 [ 0, %.preheader128 ], [ %.4, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit110.thread ], [ %.4, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i ]
  %.not104140 = icmp slt i32 %.0.copyload.i, 1
  br i1 %.not104140, label %.loopexit, label %.lr.ph143

.lr.ph143:                                        ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = sext i32 %.4176 to i64
  %wide.trip.count = zext nneg i32 %.0.copyload.i to i64 ; 6 uses
  br label %bb.o

iter.check:                                       ; preds = %.critedge106
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !87 ; 3 uses
  %wide.trip.count161 = zext nneg i32 %.0.copyload.i to i64
  %min.iters.check = icmp ult i32 %.0.copyload.i, 4
  br i1 %min.iters.check, label %.critedge108.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check186 = icmp ult i32 %.0.copyload.i, 16
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %broadcast.splat = shufflevector <4 x ptr> %broadcast.splatinsert, <4 x ptr> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  store <4 x ptr> %broadcast.splat, ptr %i.du, align 8, !tbaa !159
  store <4 x ptr> %broadcast.splat, ptr %i.dv, align 8, !tbaa !159
  store <4 x ptr> %broadcast.splat, ptr %i.dw, align 8, !tbaa !159
  store <4 x ptr> %broadcast.splat, ptr %i.dx, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %.critedge108.preheader, label %vec.epilog.ph, !prof !180

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert188 = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %broadcast.splat189 = shufflevector <4 x ptr> %broadcast.splatinsert188, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index190
  store <4 x ptr> %broadcast.splat189, ptr %i.dz, align 8, !tbaa !159
  %index.next191 = add nuw i64 %index190, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next191, %n.vec187
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %n.vec187, %wide.trip.count
  br i1 %cmp.n192, label %.loopexit, label %.critedge108.preheader

.critedge108.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv158.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec187, %vec.epilog.middle.block ]
  br label %.critedge108

bb.o:                                             ; preds = %.lr.ph143, %.critedge106
  %indvars.iv155 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next156, %.critedge106 ] ; 10 uses
  %.not100 = icmp slt i64 %indvars.iv155, %i.dq
  br i1 %.not100, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv155
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !159
  %5 = sub nsw i64 0, %indvars.iv155              ; 3 uses
  %6 = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %5
  %i.ee = load atomic ptr, ptr %6 acquire, align 8
  %i.ef = load ptr, ptr %i.do, align 8, !tbaa !88
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv155 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !159
  %.not101 = icmp eq ptr %i.ee, %i.eh
  br i1 %.not101, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv155 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !159
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %bb.q
  %.015.i = phi ptr [ %i.ek, %bb.q ], [ %i.el, %.thread.i ] ; 2 uses
  %7 = getelementptr inbounds [8 x i8], ptr %.015.i, i64 %5
  %i.el = load atomic ptr, ptr %7 acquire, align 8 ; 5 uses
  %.not.i112 = icmp eq ptr %i.el, null
  br i1 %.not.i112, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  %8 = getelementptr inbounds [8 x i8], ptr %i.el, i64 %5
  %i.em = load atomic ptr, ptr %8 acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.em, i32 0, i32 1, i32 1)
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !182
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.r, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit: ; preds = %bb.r, %.thread.i
  store ptr %.015.i, ptr %i.ej, align 8, !tbaa !159
  store ptr %i.el, ptr %i.eg, align 8, !tbaa !159
  br label %bb.s

bb.s:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit, %bb.p, %bb.o
  %i.eu = icmp eq i64 %indvars.iv155, 0
  br i1 %i.eu, label %bb.t, label %.critedge106

bb.t:                                             ; preds = %bb.s
  %i.ev = load ptr, ptr %i.do, align 8, !tbaa !88
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !159 ; 2 uses
  %.not102 = icmp eq ptr %i.ew, null
  br i1 %.not102, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %.loopexit, label %.critedge, !prof !34

.critedge:                                        ; preds = %bb.u, %bb.t
  %i.fe = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !159 ; 2 uses
  %i.fg = load ptr, ptr %i.dp, align 8, !tbaa !82
  %.not103 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not103, label %.critedge106, label %.critedge105

.critedge105:                                     ; preds = %.critedge
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call noundef i32 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.fn = icmp sgt i32 %i.fm, -1
  br i1 %i.fn, label %.loopexit, label %.critedge106, !prof !34

.critedge106:                                     ; preds = %.critedge, %bb.s, %.critedge105
  %i.fo = load ptr, ptr %i.do, align 8, !tbaa !88
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv155
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !159
  %9 = sub nsw i64 0, %indvars.iv155              ; 2 uses
  %10 = getelementptr inbounds [8 x i8], ptr %i.a, i64 %9
  store atomic ptr %i.fq, ptr %10 monotonic, align 8
  %i.fr = load ptr, ptr %i.dn, align 8, !tbaa !87
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv155
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !159
  %11 = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %9
  store atomic ptr %i.a, ptr %11 release, align 8
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond.not, label %iter.check, label %bb.o, !llvm.loop !183

.critedge108:                                     ; preds = %.critedge108.preheader, %.critedge108
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.critedge108 ], [ %indvars.iv158.ph, %.critedge108.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv158
  store ptr %i.a, ptr %i.fu, align 8, !tbaa !159
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.loopexit, label %.critedge108, !llvm.loop !184

.loopexit:                                        ; preds = %bb.u, %.critedge105, %.critedge108, %middle.block, %vec.epilog.middle.block, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit
  %.not104130 = phi i1 [ true, %middle.block ], [ true, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit ], [ true, %.critedge108 ], [ true, %vec.epilog.middle.block ], [ false, %.critedge105 ], [ false, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.not104130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE6InsertILb1EEEbPKcPNS5_6SpliceEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 12 uses
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, i64 } %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %1) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  store ptr %i.g, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  store i64 %i.i, ptr %i.h, align 8
  %.0.copyload.i = load i32, ptr %i.a, align 8    ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 8 ; 3 uses
  %i.l = icmp sgt i32 %.0.copyload.i, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN7rocksdb13RelaxedAtomicIiE14CasWeakRelaxedERii.exit
  %.0116133 = phi i32 [ %i.o, %_ZN7rocksdb13RelaxedAtomicIiE14CasWeakRelaxedERii.exit ], [ %i.k, %bb.a ]
  %i.m = cmpxchg weak ptr %i.j, i32 %.0116133, i32 %.0.copyload.i monotonic monotonic, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %._crit_edge, label %_ZN7rocksdb13RelaxedAtomicIiE14CasWeakRelaxedERii.exit

_ZN7rocksdb13RelaxedAtomicIiE14CasWeakRelaxedERii.exit: ; preds = %.lr.ph
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 3 uses
  %i.p = icmp sgt i32 %.0.copyload.i, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7rocksdb13RelaxedAtomicIiE14CasWeakRelaxedERii.exit, %.lr.ph, %bb.a
  %.1117 = phi i32 [ %i.k, %bb.a ], [ %.0.copyload.i, %.lr.ph ], [ %i.o, %_ZN7rocksdb13RelaxedAtomicIiE14CasWeakRelaxedERii.exit ] ; 8 uses
  %i.q = load i32, ptr %2, align 8, !tbaa !84
  %i.r = icmp slt i32 %i.q, %.1117
  br i1 %i.r, label %bb.b, label %.preheader128

.preheader128:                                    ; preds = %._crit_edge
  %i.s = icmp sgt i32 %.1117, 0
  br i1 %i.s, label %.lr.ph137, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit

.lr.ph137:                                        ; preds = %.preheader128
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.aa = sext i32 %.1117 to i64                  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aa
  store ptr null, ptr %i.ae, align 8, !tbaa !159
  store i32 %.1117, ptr %2, align 8, !tbaa !84
  br label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread

bb.c:                                             ; preds = %.lr.ph137, %.loopexit126
  %.088136 = phi i32 [ 0, %.lr.ph137 ], [ %.391, %.loopexit126 ] ; 4 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.ag = sext i32 %.088136 to i64                ; 9 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !159
  %i.aj = sub nsw i64 0, %i.ag
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ag
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !159 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.ao
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i32 %.088136, 1
  br label %.loopexit126

bb.e:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ag
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !159 ; 3 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !82
  %.not99 = icmp eq ptr %i.as, %i.at
  br i1 %.not99, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit: ; preds = %bb.f
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !171
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit._crit_edge, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit._crit_edge: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.ag
  %.pre170 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !159
  br label %bb.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread: ; preds = %bb.f, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit
  br i1 %3, label %bb.g, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread

bb.g:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !87  ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ag
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !159
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.bg = icmp eq ptr %i.bf, %i.bd
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.bg, label %bb.h, label %.loopexit126.loopexit157, !llvm.loop !185

bb.i:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit._crit_edge, %bb.e
  %i.bh = phi ptr [ %.pre170, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit._crit_edge ], [ %i.ao, %bb.e ] ; 2 uses
  %.not.i106 = icmp eq ptr %i.bh, null
  br i1 %.not.i106, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107: ; preds = %bb.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !171
  %i.bo = icmp slt i32 %i.bn, 0                   ; 2 uses
  %brmerge.not = and i1 %i.bo, %3
  br i1 %brmerge.not, label %bb.j, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread.loopexit.split.loop.exit

bb.j:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ag
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !159
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %bb.k ], [ %i.ag, %bb.j ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv160
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !159
  %i.bu = icmp eq ptr %i.bt, %i.br
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, 1
  br i1 %i.bu, label %bb.k, label %.loopexit126.loopexit, !llvm.loop !186

.loopexit126.loopexit:                            ; preds = %bb.k
  %i.bv = trunc nsw i64 %indvars.iv160 to i32
  br label %.loopexit126

.loopexit126.loopexit157:                         ; preds = %bb.h
  %i.bw = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit126

.loopexit126:                                     ; preds = %.loopexit126.loopexit157, %.loopexit126.loopexit, %bb.d
  %.391 = phi i32 [ %i.ap, %bb.d ], [ %i.bv, %.loopexit126.loopexit ], [ %i.bw, %.loopexit126.loopexit157 ] ; 3 uses
  %i.bx = icmp slt i32 %.391, %.1117
  br i1 %i.bx, label %bb.c, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread, !llvm.loop !187

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread.loopexit.split.loop.exit: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107
  %.088136.mux.le = select i1 %i.bo, i32 %.1117, i32 %.088136
  br label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread.loopexit.split.loop.exit, %bb.i, %.loopexit126, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread, %bb.b
  %.4 = phi i32 [ %.1117, %bb.b ], [ %.088136.mux.le, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread.loopexit.split.loop.exit ], [ %.088136, %bb.i ], [ %.391, %.loopexit126 ], [ %.1117, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.thread ] ; 2 uses
  %i.by = icmp sgt i32 %.4, 0
  br i1 %i.by, label %.lr.ph.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit

.lr.ph.i:                                         ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = zext nneg i32 %.4 to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i ] ; 6 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !87 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !159 ; 2 uses
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !88 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !159 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.ck = sub nsw i64 1, %indvars.iv.i            ; 4 uses
  %.not.i108 = icmp eq i64 %indvars.iv.next.i, 0
  %i.cl = sub nsw i64 2, %indvars.iv.i
  br i1 %.not.i108, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.l, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i
  %.020.us.i.i = phi ptr [ %i.cn, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i ], [ %i.ce, %bb.l ] ; 4 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.020.us.i.i, i64 %i.ck
  %i.cn = load atomic ptr, ptr %i.cm acquire, align 8 ; 8 uses
  %.not.us.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.us.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %bb.m

bb.m:                                             ; preds = %.split.us.i.i
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ck
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.cp, i32 0, i32 1, i32 1)
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cl
  %i.cr = load atomic ptr, ptr %i.cq acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.cr, i32 0, i32 1, i32 1)
  %i.cs = icmp eq ptr %i.cn, %i.ch
  br i1 %i.cs, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i: ; preds = %bb.m
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !175
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.split.us.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i

.split.i.i:                                       ; preds = %bb.l, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i
  %.020.i.i = phi ptr [ %i.db, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i ], [ %i.ce, %bb.l ] ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.020.i.i, i64 %i.ck
  %i.db = load atomic ptr, ptr %i.da acquire, align 8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %bb.n

bb.n:                                             ; preds = %.split.i.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ck
  %i.dd = load atomic ptr, ptr %i.dc acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.dd, i32 0, i32 1, i32 1)
  %i.de = icmp eq ptr %i.db, %i.ch
  br i1 %i.de, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i: ; preds = %bb.n
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !175
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %.split.i.i, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i, %bb.m, %.split.us.i.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i, %bb.n, %.split.i.i
  %.us-phi.i.i = phi ptr [ %.020.i.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i ], [ %.020.i.i, %.split.i.i ], [ %.020.i.i, %bb.n ], [ %.020.us.i.i, %.split.us.i.i ], [ %.020.us.i.i, %bb.m ], [ %.020.us.i.i, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i ]
  %.us-phi32.i.i = phi ptr [ %i.db, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.i.i ], [ %i.db, %bb.n ], [ null, %.split.i.i ], [ %i.cn, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit.us.i.i ], [ %i.cn, %bb.m ], [ null, %.split.us.i.i ]
  store ptr %.us-phi.i.i, ptr %i.ci, align 8, !tbaa !159
  store ptr %.us-phi32.i.i, ptr %i.cj, align 8, !tbaa !159
  %i.dm = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.dm, label %bb.l, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit, !llvm.loop !176

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit: ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb1EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.i, %.preheader128, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKNS_5SliceEPNS5_4NodeE.exit107.thread
  %.not103145 = icmp slt i32 %.0.copyload.i, 1
  br i1 %.not103145, label %.loopexit, label %.preheader122.lr.ph

.preheader122.lr.ph:                              ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext nneg i32 %.0.copyload.i to i64 ; 6 uses
  br label %.preheader122

.preheader122:                                    ; preds = %.preheader122.lr.ph, %.split.us
  %indvars.iv163 = phi i64 [ 0, %.preheader122.lr.ph ], [ %indvars.iv.next164, %.split.us ] ; 11 uses
  %.087146 = phi i1 [ true, %.preheader122.lr.ph ], [ %.us-phi142, %.split.us ] ; 2 uses
  %i.dq = icmp eq i64 %indvars.iv163, 0
  %5 = sub nsw i64 0, %indvars.iv163              ; 8 uses
  %6 = getelementptr inbounds [8 x i8], ptr %i.a, i64 %5 ; 3 uses
  br i1 %i.dq, label %.preheader122.split.us, label %.preheader122.split

.preheader122.split.us:                           ; preds = %.preheader122, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.us
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !159 ; 2 uses
  %.not100.us = icmp eq ptr %i.ds, null
  br i1 %.not100.us, label %.critedge.us, label %bb.o

bb.o:                                             ; preds = %.preheader122.split.us
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef i32 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %.loopexit, label %.critedge.us, !prof !34

.critedge.us:                                     ; preds = %bb.o, %.preheader122.split.us
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !87
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !159 ; 2 uses
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !82
  %.not101.us = icmp eq ptr %i.eb, %i.ec
  br i1 %.not101.us, label %.critedge105.us, label %.critedge104.us

.critedge104.us:                                  ; preds = %.critedge.us
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef i32 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %.loopexit, label %.critedge105.us, !prof !34

.critedge105.us:                                  ; preds = %.critedge104.us, %.critedge.us
  %i.ek = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !159
  store atomic ptr %i.el, ptr %6 monotonic, align 8
  %i.em = load ptr, ptr %i.do, align 8, !tbaa !87
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !159
  %i.eo = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !159
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %5
  %i.eq = cmpxchg ptr %7, ptr %i.ep, ptr %i.a acq_rel acquire, align 8
  %i.er = extractvalue { ptr, i1 } %i.eq, 1
  br i1 %i.er, label %.split.us, label %bb.p

bb.p:                                             ; preds = %.critedge105.us
  %i.es = load ptr, ptr %i.do, align 8, !tbaa !87 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.eu = load ptr, ptr %i.dn, align 8, !tbaa !88
  br label %bb.q

bb.q:                                             ; preds = %.thread.i.us, %bb.p
  %.015.i.us = phi ptr [ %i.et, %bb.p ], [ %i.ev, %.thread.i.us ] ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.015.i.us, i64 %5
  %i.ev = load atomic ptr, ptr %8 acquire, align 8 ; 5 uses
  %.not.i109.us = icmp eq ptr %i.ev, null
  br i1 %.not.i109.us, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.us, label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.q
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %5
  %i.ew = load atomic ptr, ptr %9 acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 1, i32 1)
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !182
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.q, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.us

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit.us: ; preds = %.thread.i.us, %bb.q
  store ptr %.015.i.us, ptr %i.es, align 8, !tbaa !159
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !159
  br label %.preheader122.split.us, !llvm.loop !188

.preheader122.split:                              ; preds = %.preheader122
  %i.fe = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv163
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !159
  store atomic ptr %i.fg, ptr %6 monotonic, align 8
  %i.fh = load ptr, ptr %i.do, align 8, !tbaa !87
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv163
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !159
  %i.fk = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv163
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !159
  %10 = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %5
  %i.fn = cmpxchg ptr %10, ptr %i.fm, ptr %i.a acq_rel acquire, align 8
  %i.fo = extractvalue { ptr, i1 } %i.fn, 1
  br i1 %i.fo, label %.split.us, label %.lr.ph143

.lr.ph143:                                        ; preds = %.preheader122.split, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !87
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv163 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !159
  %i.fs = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv163
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %.lr.ph143
  %.015.i = phi ptr [ %i.fr, %.lr.ph143 ], [ %i.fu, %.thread.i ] ; 2 uses
  %11 = getelementptr inbounds [8 x i8], ptr %.015.i, i64 %5
  %i.fu = load atomic ptr, ptr %11 acquire, align 8 ; 5 uses
  %.not.i109 = icmp eq ptr %i.fu, null
  br i1 %.not.i109, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  %12 = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %5
  %i.fv = load atomic ptr, ptr %12 acquire, align 8
  call void @llvm.prefetch.p0(ptr %i.fv, i32 0, i32 1, i32 1)
  %i.fw = load ptr, ptr %i.b, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !48
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !182
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %bb.r, label %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit

_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit: ; preds = %bb.r, %.thread.i
  store ptr %.015.i, ptr %i.fq, align 8, !tbaa !159
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !159
  %i.gd = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv163
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !159
  store atomic ptr %i.gf, ptr %6 monotonic, align 8
  %i.gg = load ptr, ptr %i.do, align 8, !tbaa !87
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv163
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !159
  %i.gj = load ptr, ptr %i.dn, align 8, !tbaa !88
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv163
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !159
  %13 = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %5
  %i.gm = cmpxchg ptr %13, ptr %i.gl, ptr %i.a acq_rel acquire, align 8
  %i.gn = extractvalue { ptr, i1 } %i.gm, 1
  br i1 %i.gn, label %.split.us, label %.lr.ph143, !llvm.loop !188

.split.us:                                        ; preds = %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit, %.critedge105.us, %.preheader122.split
  %.us-phi142 = phi i1 [ %.087146, %.critedge105.us ], [ %.087146, %.preheader122.split ], [ false, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindSpliceForLevelILb0EEEvRKNS_5SliceEPNS5_4NodeESB_iPSB_SC_.exit ] ; 2 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.preheader122, !llvm.loop !189

.thread:                                          ; preds = %.split.us
  br i1 %.us-phi142, label %iter.check, label %bb.s

iter.check:                                       ; preds = %.thread
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !87 ; 3 uses
  %wide.trip.count168 = zext nneg i32 %.0.copyload.i to i64
  %min.iters.check = icmp ult i32 %.0.copyload.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check198 = icmp ult i32 %.0.copyload.i, 16
  br i1 %min.iters.check198, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gq = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %broadcast.splat = shufflevector <4 x ptr> %broadcast.splatinsert, <4 x ptr> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  store <4 x ptr> %broadcast.splat, ptr %i.gr, align 8, !tbaa !159
  store <4 x ptr> %broadcast.splat, ptr %i.gs, align 8, !tbaa !159
  store <4 x ptr> %broadcast.splat, ptr %i.gt, align 8, !tbaa !159
  store <4 x ptr> %broadcast.splat, ptr %i.gu, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !180

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec199 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert200 = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %broadcast.splat201 = shufflevector <4 x ptr> %broadcast.splatinsert200, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index202 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next203, %vec.epilog.vector.body ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index202
  store <4 x ptr> %broadcast.splat201, ptr %i.gw, align 8, !tbaa !159
  %index.next203 = add nuw i64 %index202, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next203, %n.vec199
  br i1 %i.gx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !191

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count
  br i1 %cmp.n204, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv165.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec199, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %vec.epilog.scalar.ph ], [ %indvars.iv165.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv165
  store ptr %i.a, ptr %i.gy, align 8, !tbaa !159
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !192

bb.s:                                             ; preds = %.thread
  store i32 0, ptr %2, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge104.us, %bb.o, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit, %bb.s
  %.not103131 = phi i1 [ true, %middle.block ], [ true, %bb.s ], [ true, %_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE21RecomputeSpliceLevelsERKNS_5SliceEPNS5_6SpliceEi.exit ], [ true, %vec.epilog.scalar.ph ], [ true, %vec.epilog.middle.block ], [ false, %bb.o ], [ false, %.critedge104.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.not103131
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE8ContainsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %3 = alloca %"class.std::function.28", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  invoke void @_ZNK7rocksdb14InlineSkipListIRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualEPKcPPNS5_4NodeEbbRKSt8functionIFNS_6StatusES7_bEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull %i.a, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124, !nonnull !125, !align !126 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %1, ptr noundef nonnull %i.h)
          to label %bb.f unwind label %bb.j, !inline_history !193

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.x) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.k:                                             ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.06 = phi i1 [ false, %bb.k ], [ true, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.z) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.06
end_hunk_0
