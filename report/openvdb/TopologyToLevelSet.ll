Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/TopologyToLevelSet?download=true
inline.NumInlined: 30230
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 158
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 518
begin_hunk_0_@_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE21evalActiveBoundingBoxERNS0_4math9CoordBBoxEb:bb.a
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %i.m, %.sroa.09.sroa.10.0.extract.trunc
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %i.h, %i.p
  %or.cond55 = select i1 %or.cond, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp slt i32 %i.s, %i.c
  %or.cond58 = select i1 %or.cond55, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp slt i32 %i.v, %i.f
  %or.cond95 = select i1 %or.cond58, i1 true, i1 %i.w
  br i1 %or.cond95, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !278
  %.not = icmp slt i32 %i.y, %i.i
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, label %bb.h

_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !608 ; 2 uses
  %.not59 = icmp eq i32 %i.aa, 512
  br i1 %.not59, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  br i1 %2, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !631 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %.sroa.09.sroa.10.066 = phi i32 [ 2147483647, %.lr.ph ], [ %i.aj, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %.sroa.09.sroa.0.065 = phi i32 [ 2147483647, %.lr.ph ], [ %i.ai, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %.sroa.16.064 = phi i32 [ 2147483647, %.lr.ph ], [ %i.ak, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %.sroa.23.063 = phi i64 [ -9223372034707292160, %.lr.ph ], [ %.sroa.23.16.insert.insert, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ] ; 2 uses
  %.sroa.37.062 = phi i32 [ -2147483648, %.lr.ph ], [ %i.an, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ]
  %i.ad = phi i32 [ %i.aa, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ] ; 4 uses
  %i.ae = lshr i32 %i.ad, 6                       ; 2 uses
  %i.af = lshr i32 %i.ad, 3
  %i.ag = and i32 %i.af, 7                        ; 2 uses
  %i.ah = and i32 %i.ad, 7                        ; 2 uses
  %i.ai = call i32 @llvm.smin.i32(i32 %i.ae, i32 %.sroa.09.sroa.0.065) ; 2 uses
  %i.aj = call i32 @llvm.smin.i32(i32 %i.ag, i32 %.sroa.09.sroa.10.066) ; 2 uses
  %i.ak = call i32 @llvm.smin.i32(i32 %i.ah, i32 %.sroa.16.064) ; 2 uses
  %.sroa.23.12.extract.trunc25 = trunc i64 %.sroa.23.063 to i32
  %i.al = call i32 @llvm.smax.i32(i32 %.sroa.23.12.extract.trunc25, i32 %i.ae) ; 2 uses
  %.sroa.23.12.insert.ext = zext nneg i32 %i.al to i64
  %.sroa.23.16.extract.shift35 = lshr i64 %.sroa.23.063, 32
  %.sroa.23.16.extract.trunc36 = trunc nuw i64 %.sroa.23.16.extract.shift35 to i32
  %i.am = call i32 @llvm.smax.i32(i32 %.sroa.23.16.extract.trunc36, i32 %i.ag) ; 2 uses
  %.sroa.23.16.insert.ext = zext nneg i32 %i.am to i64
  %.sroa.23.16.insert.shift = shl nuw nsw i64 %.sroa.23.16.insert.ext, 32
  %.sroa.23.16.insert.insert = or disjoint i64 %.sroa.23.16.insert.shift, %.sroa.23.12.insert.ext
  %i.an = call i32 @llvm.smax.i32(i32 %.sroa.37.062, i32 %i.ah) ; 2 uses
  %i.ao = add i32 %i.ad, 1                        ; 4 uses
  %i.ap = lshr i32 %i.ao, 6                       ; 3 uses
  %i.aq = icmp ugt i32 %i.ao, 511
  br i1 %i.aq, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = and i32 %i.ao, 63
  %i.as = zext nneg i32 %i.ap to i64              ; 8 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !378 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ay = shl nsw i64 -1, %i.av
  %i.az = and i64 %i.au, %i.ay                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %exitcond.not.i.i.i.i109 = icmp eq i32 %i.ap, 7
  br i1 %exitcond.not.i.i.i.i109, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph111
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111.1

.lr.ph111.1:                                      ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.as, 2 ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.1
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph111.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111.2

.lr.ph111.2:                                      ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.as, 3 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.bd, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph111.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111.3

.lr.ph111.3:                                      ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.as, 4 ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.3
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph111.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111.4

.lr.ph111.4:                                      ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.as, 5 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.4
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.bh, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph111.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111.5

.lr.ph111.5:                                      ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.as, 6 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.5
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.bj, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph111.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.lr.ph111.6

.lr.ph111.6:                                      ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.as, 7 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.6
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.bl, 0
  br i1 %.not22.i.i.i.i.6, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.lr.ph111:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.as, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !378 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !29

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph111.6, %.lr.ph111.5, %.lr.ph111.4, %.lr.ph111.3, %.lr.ph111.2, %.lr.ph111.1, %.lr.ph111
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph111 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph111.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph111.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph111.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph111.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph111.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph111.6 ]
  %.lcssa = phi i64 [ %i.bn, %.lr.ph111 ], [ %i.bb, %.lr.ph111.1 ], [ %i.bd, %.lr.ph111.2 ], [ %i.bf, %.lr.ph111.3 ], [ %i.bh, %.lr.ph111.4 ], [ %i.bj, %.lr.ph111.5 ], [ %i.bl, %.lr.ph111.6 ]
  %i.bo = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.e
  %.016.lcssa.i.i.i.i = phi i32 [ %i.ap, %bb.e ], [ %i.bo, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.bp = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.d, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bs, %.critedge.i.i.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  %.not60 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not60, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, label %bb.c, !llvm.loop !3878

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread: ; preds = %bb.c, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph111.6, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !278 ; 2 uses
  %i.bu = add nsw i32 %i.bt, %i.ai
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !278 ; 2 uses
  %i.bw = add nsw i32 %i.bv, %i.aj
  %i.bx = load i32, ptr %i.g, align 8, !tbaa !278 ; 2 uses
  %i.by = add nsw i32 %i.bx, %i.ak
  %i.bz = add nsw i32 %i.bt, %i.al
  %.sroa.23.12.insert.ext29 = zext i32 %i.bz to i64
  %i.ca = add nsw i32 %i.bv, %i.am
  %.sroa.23.16.insert.ext41 = zext i32 %i.ca to i64
  %.sroa.23.16.insert.shift42 = shl nuw i64 %.sroa.23.16.insert.ext41, 32
  %.sroa.23.16.insert.insert44 = or disjoint i64 %.sroa.23.16.insert.shift42, %.sroa.23.12.insert.ext29
  %i.cb = add nsw i32 %i.bx, %i.an
  br label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread, %bb.b
  %.sroa.37.1 = phi i32 [ %i.cb, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %i.i, %bb.b ]
  %.sroa.23.1 = phi i64 [ %.sroa.23.16.insert.insert44, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.b ]
  %.sroa.16.1 = phi i32 [ %i.by, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %i.h, %bb.b ]
  %.sroa.09.sroa.0.1 = phi i32 [ %i.bu, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %.sroa.09.sroa.0.0.extract.trunc, %bb.b ]
  %.sroa.09.sroa.10.1 = phi i32 [ %i.bw, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit.thread ], [ %.sroa.09.sroa.10.0.extract.trunc, %bb.b ]
  %i.cc = load i32, ptr %1, align 4, !tbaa !278
  %i.cd = call i32 @llvm.smin.i32(i32 %.sroa.09.sroa.0.1, i32 %i.cc)
  store i32 %i.cd, ptr %1, align 4, !tbaa !278
  %i.ce = load i32, ptr %i.l, align 4, !tbaa !278
  %i.cf = call i32 @llvm.smin.i32(i32 %.sroa.09.sroa.10.1, i32 %i.ce)
  store i32 %i.cf, ptr %i.l, align 4, !tbaa !278
  %i.cg = load i32, ptr %i.o, align 4, !tbaa !278
  %i.ch = call i32 @llvm.smin.i32(i32 %.sroa.16.1, i32 %i.cg)
  store i32 %i.ch, ptr %i.o, align 4, !tbaa !278
  %4 = load <2 x i32>, ptr %i.r, align 4, !tbaa !278
  %5 = bitcast i64 %.sroa.23.1 to <2 x i32>
  %6 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %4, <2 x i32> %5)
  store <2 x i32> %6, ptr %i.r, align 4, !tbaa !278
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !278
  %i.ck = call i32 @llvm.smax.i32(i32 %i.cj, i32 %.sroa.37.1)
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !278
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1320   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !318
  store i8 0, ptr %i.b, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #21 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !319    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !305
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !280
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !319    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !305
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind noalias writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !378  ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %.critedge.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !378  ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.1.i.i, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !378  ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.2.i.i, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !378  ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i, label %bb.e, label %.critedge.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !378  ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i, label %bb.f, label %.critedge.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !378  ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i, label %bb.g, label %.critedge.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !378  ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i, label %bb.h, label %.critedge.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !378  ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i, label %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %.0712.lcssa.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = or disjoint i32 %.0712.lcssa.i.i, %i.s
  br label %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit

_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit: ; preds = %bb.h, %.critedge.thread.i.i
  %i.u = phi i32 [ %i.t, %.critedge.thread.i.i ], [ 512, %bb.h ]
  store ptr %1, ptr %0, align 8, !tbaa !1322
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load atomic i32, ptr %i.w seq_cst, align 8
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i.i.i: ; preds = %bb.i, %_ZNK7openvdb5v13_04util8NodeMaskILj3EE7beginOnEv.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !305    ; 2 uses
  %i.z = icmp eq ptr %i.y, null
end_hunk_0
