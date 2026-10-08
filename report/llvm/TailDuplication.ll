Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TailDuplication?download=true
inline.NumInlined: 2181
inline.NumDeleted: 1168
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4llvm4bolt15TailDuplication23isOverwrittenBeforeUsedERNS0_16BinaryBasicBlockEj:bb.a
_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit58: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.je = getelementptr inbounds nuw i8, ptr %.0128, i64 8 ; 2 uses
  %i.jf = load ptr, ptr %i.iv, align 8, !tbaa !22
  %i.jg = load i32, ptr %i.iw, align 8, !tbaa !53
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jh
  %.not39 = icmp eq ptr %i.je, %i.ji
  br i1 %.not39, label %_ZNK4llvm15SmallPtrSetImplIPNS_4bolt16BinaryBasicBlockEE5countEPKS2_.exit.thread95.backedge, label %.lr.ph130, !llvm.loop !603

.thread110:                                       ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_4bolt16BinaryBasicBlockEE5countEPKS2_.exit.thread95, %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit
  %i.jj = load i8, ptr %i.aa, align 8, !tbaa !27, !range !28, !noundef !29
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread110
  %i.jl = load ptr, ptr %8, align 8, !tbaa !30
  call void @free(ptr noundef %i.jl) #22
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.thread110, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.jm = load ptr, ptr %7, align 8, !tbaa !217   ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i59, label %_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.jn = load ptr, ptr %i.l, align 8, !tbaa !226 ; 2 uses
  %i.jo = load ptr, ptr %i.q, align 8, !tbaa !232 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = icmp ult ptr %i.jn, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i ], [ %i.jn, %bb.ac ] ; 3 uses
  %i.jr = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !218
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef 512) #24
  %i.js = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.jt = icmp ult ptr %.06.i.i.i.i, %i.jo
  br i1 %i.jt, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !604

_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !217
  br label %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.ac
  %i.ju = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i ], [ %i.jm, %bb.ac ]
  %i.jv = load i64, ptr %i.g, align 8, !tbaa !216
  %i.jw = shl i64 %i.jv, 3
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jw) #24
  br label %_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit

_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i1 %.not37
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt15TailDuplication24constantAndCopyPropagateERNS0_16BinaryBasicBlockERSt6vectorIPS2_SaIS5_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %4 = alloca %"class.llvm::BitVector", align 8   ; 11 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %6 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %7 = alloca %"class.llvm::BitVector", align 8   ; 18 uses
  %8 = alloca %"class.llvm::BitVector", align 8   ; 17 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 17 uses
  %10 = alloca %"class.llvm::BitVector", align 8  ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !209, !nonnull !29, !align !210 ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.a, align 8, !tbaa !224
  %i.g = call ptr @_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8, !tbaa !228    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228
  %.not298 = icmp eq ptr %i.h, %i.j
  br i1 %.not298, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1568 ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1576 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.b

._crit_edge302:                                   ; preds = %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph301, %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit
  %.sroa.0253.0299 = phi ptr [ %i.h, %.lr.ph301 ], [ %.sroa.0253.1, %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit ] ; 11 uses
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(536) %i.aw, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0253.0299) #22
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 128
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit, !llvm.loop !611

bb.d:                                             ; preds = %bb.b
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !234
  %i.bd = load i32, ptr %.sroa.0253.0299, align 8, !tbaa !645
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !648
  %i.bf = zext i32 %i.bd to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !650 ; 2 uses
  %i.bk = and i64 %i.bj, 8192
  %.not274 = icmp eq i64 %i.bk, 0                 ; 3 uses
  br i1 %.not274, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !652
  %i.bp = icmp eq i8 %i.bo, 2
  br i1 %i.bp, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = and i64 %i.bj, 16384
  %.not275 = icmp eq i64 %i.bq, 0
  br i1 %.not275, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !652
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 128
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit, !llvm.loop !611

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.bx = phi ptr [ %i.bs, %bb.g ], [ %i.bm, %bb.e ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !236 ; 6 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !218   ; 2 uses
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !218 ; 2 uses
  %.not276.not285 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not276.not285, label %.thread361, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 128
  %i.ce = trunc i32 %i.ca to i16                  ; 3 uses
  %i.cf = and i32 %i.ca, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = lshr i32 %i.ca, 6
  %i.cj = zext nneg i32 %i.ci to i64
  br label %bb.j

.loopexit:                                        ; preds = %bb.m, %bb.l
  %.372.ph = phi i1 [ %.069287, %bb.l ], [ %.271264, %bb.m ] ; 2 uses
  %.4.ph = phi i1 [ %.063288, %bb.l ], [ %.not.lcssa.i.i108, %bb.m ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0248.0286, i64 8 ; 2 uses
  %.not276.not = icmp eq ptr %i.ck, %i.cc
  br i1 %.not276.not, label %._crit_edge292, label %bb.j

bb.j:                                             ; preds = %.lr.ph291, %.loopexit
  %.063288 = phi i1 [ true, %.lr.ph291 ], [ %.4.ph, %.loopexit ] ; 2 uses
  %.069287 = phi i1 [ true, %.lr.ph291 ], [ %.372.ph, %.loopexit ] ; 2 uses
  %.sroa.0248.0286 = phi ptr [ %i.cb, %.lr.ph291 ], [ %i.ck, %.loopexit ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.0248.0286, align 8, !tbaa !224 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, %1
  br i1 %i.cm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !228
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %storemerge = phi ptr [ %i.cn, %bb.k ], [ %i.cd, %bb.j ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !228
  %i.cq = icmp ult ptr %storemerge, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.loopexit

bb.m:                                             ; preds = %_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0244.0277, i64 128 ; 2 uses
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !228
  %i.ct = icmp ult ptr %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph, label %.loopexit, !llvm.loop !612

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.1279 = phi i1 [ %.not.lcssa.i.i108, %bb.m ], [ %.063288, %bb.l ] ; 4 uses
  %.170278 = phi i1 [ %.271264, %bb.m ], [ %.069287, %bb.l ] ; 3 uses
  %.sroa.0244.0277 = phi ptr [ %i.cr, %bb.m ], [ %storemerge, %bb.l ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !51 ; 2 uses
  %i.cx = add i32 %i.cw, 63                       ; 2 uses
  %i.cy = lshr i32 %i.cx, 6                       ; 3 uses
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  store ptr %i.o, ptr %10, align 8, !tbaa !22
  store i32 6, ptr %i.q, align 4, !tbaa !52
  %i.da = icmp ugt i32 %i.cx, 447
  br i1 %i.da, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %.lr.ph
  store i32 0, ptr %i.p, align 8, !tbaa !53
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %10, ptr noundef nonnull %i.o, i64 noundef %i.cz, i64 noundef 8) #22
  %i.db = load ptr, ptr %10, align 8, !tbaa !22
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %.lr.ph
  %.not.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit.i, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.db, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.o, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !55
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i

_ZN4llvm9BitVectorC2Ejb.exit.i:                   ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.cy, ptr %i.p, align 8, !tbaa !53
  store i32 %i.cw, ptr %i.r, align 8, !tbaa !62
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1048
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(536) %i.dc, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277, ptr noundef nonnull align 8 dereferenceable(68) %10) #22, !inline_history !229
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 920
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef nonnull align 8 dereferenceable(68) ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(536) %i.dg, i16 noundef zeroext %i.ce, i1 noundef zeroext true) #22, !inline_history !229 ; 2 uses
  %i.dl = load i32, ptr %i.p, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !53
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.dl) ; 2 uses
  %.not15.not.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !22 ; 3 uses
  br i1 %.not15.not.i.i, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !22
  %i.dp = zext i32 %.sroa.speculated.i.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.i.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !55
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !55
  %i.du = and i64 %i.dt, %i.dr
  %.not11.not.i.not.i = icmp eq i64 %i.du, 0      ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %i.dp
  %or.cond.not = select i1 %.not11.not.i.not.i, i1 %.not.not.i.i, i1 false
  br i1 %or.cond.not, label %bb.n, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i, !llvm.loop !1

_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i:       ; preds = %bb.n, %_ZN4llvm9BitVectorC2Ejb.exit.i
  %.not.lcssa.i.i.not = phi i1 [ true, %_ZN4llvm9BitVectorC2Ejb.exit.i ], [ %.not11.not.i.not.i, %bb.n ] ; 2 uses
  %i.dv = icmp eq ptr %.pre.i, %i.o
  br i1 %i.dv, label %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i
  call void @free(ptr noundef %.pre.i) #22
  br label %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit

_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit: ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.1.not = xor i1 %.1279, true
  %brmerge = select i1 %.not.lcssa.i.i.not, i1 true, i1 %.1.not
  br i1 %brmerge, label %.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !32  ; 3 uses
  %i.dx = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !17 ; 2 uses
  br i1 %.not274, label %bb.q, label %.split

.split:                                           ; preds = %bb.p
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !236
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 792
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(536) %i.dw, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277, i32 noundef %i.ca, i64 noundef %i.ea) #22
  %spec.select272 = select i1 %i.ed, i1 %.170278, i1 false
  br label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ee = load i32, ptr %i.dy, align 8, !tbaa !236
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 800
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(536) %i.dw, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277, i32 noundef %i.ca, i32 noundef %i.ee) #22
  %spec.select273 = select i1 %i.eh, i1 %.170278, i1 false
  br label %.thread266

.thread:                                          ; preds = %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit
  %.170.mux = select i1 %.not.lcssa.i.i.not, i1 %.170278, i1 false ; 2 uses
  br i1 %.not274, label %.thread266, label %.critedge

.thread266:                                       ; preds = %bb.q, %.thread
  %.271268 = phi i1 [ %.170.mux, %.thread ], [ %spec.select273, %bb.q ]
  %i.ei = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.el = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !51 ; 2 uses
  %i.eo = add i32 %i.en, 63                       ; 2 uses
  %i.ep = lshr i32 %i.eo, 6                       ; 3 uses
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !22
  store i32 6, ptr %i.u, align 4, !tbaa !52
  %i.er = icmp ugt i32 %i.eo, 447
  br i1 %i.er, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i94, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i78

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i94:        ; preds = %.thread266
  store i32 0, ptr %i.t, align 8, !tbaa !53
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %9, ptr noundef nonnull %i.s, i64 noundef %i.eq, i64 noundef 8) #22
  %i.es = load ptr, ptr %9, align 8, !tbaa !22
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i80

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i78:    ; preds = %.thread266
  %.not.i.i.i79 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i.i79, label %_ZN4llvm9BitVectorC2Ejb.exit.i83, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i80

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i80:      ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i78, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i94
  %.sink.i81 = phi ptr [ %i.es, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i94 ], [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i78 ]
  %.idx.i.i.i.i.i.i.i.i82 = shl nuw nsw i64 %i.eq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i81, i8 0, i64 %.idx.i.i.i.i.i.i.i.i82, i1 false), !tbaa !55
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i83

_ZN4llvm9BitVectorC2Ejb.exit.i83:                 ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i80, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i78
  store i32 %i.ep, ptr %i.t, align 8, !tbaa !53
  store i32 %i.en, ptr %i.v, align 8, !tbaa !62
  %i.et = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1032
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(536) %i.et, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277, ptr noundef nonnull align 8 dereferenceable(68) %9) #22, !inline_history !653
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 232
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(536) %i.ex, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277) #22, !inline_history !231
  br i1 %i.fb, label %bb.r, label %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit

bb.r:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fc = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !51 ; 2 uses
  %i.ff = add i32 %i.fe, 63                       ; 2 uses
  %i.fg = lshr i32 %i.ff, 6                       ; 3 uses
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !22
  store i32 6, ptr %i.y, align 4, !tbaa !52
  %i.fi = icmp ugt i32 %i.ff, 447
  br i1 %i.fi, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i129, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i122

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i129:       ; preds = %bb.r
  store i32 0, ptr %i.x, align 8, !tbaa !53
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %6, ptr noundef nonnull %i.w, i64 noundef %i.fh, i64 noundef 8) #22
  %i.fj = load ptr, ptr %6, align 8, !tbaa !22
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i124

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i122:   ; preds = %bb.r
  %.not.i.i.i123 = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i123, label %_ZN4llvm9BitVectorC2Ejb.exit.i127, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i124

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i124:     ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i122, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i129
  %.sink.i125 = phi ptr [ %i.fj, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i129 ], [ %i.w, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i122 ]
  %.idx.i.i.i.i.i.i.i.i126 = shl nuw nsw i64 %i.fh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i125, i8 0, i64 %.idx.i.i.i.i.i.i.i.i126, i1 false), !tbaa !55
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i127

_ZN4llvm9BitVectorC2Ejb.exit.i127:                ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i124, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i122
  store i32 %i.fg, ptr %i.x, align 8, !tbaa !53
  store i32 %i.fe, ptr %i.z, align 8, !tbaa !62
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 936
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(536) %i.fk, ptr noundef nonnull align 8 dereferenceable(68) %6) #22, !inline_history !231
  %i.fo = load ptr, ptr %6, align 8, !tbaa !22    ; 4 uses
  %i.fp = load i32, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %.idx.i.i = shl nuw nsw i64 %i.fq, 3            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.idx.i.i ; 2 uses
  %.not9.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i128.preheader

.lr.ph.i.i128.preheader:                          ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i127
  %i.fs = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ft = lshr exact i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check439 = icmp ult i64 %i.fs, 24
  br i1 %min.iters.check439, label %.lr.ph.i.i128.preheader454, label %vector.ph440

vector.ph440:                                     ; preds = %.lr.ph.i.i128.preheader
  %n.vec441 = and i64 %i.fu, 4611686018427387900  ; 3 uses
  %i.fv = shl i64 %n.vec441, 3
  %i.fw = getelementptr i8, ptr %i.fo, i64 %i.fv
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %vector.ph440
  %index443 = phi i64 [ 0, %vector.ph440 ], [ %index.next447, %vector.body442 ] ; 2 uses
  %i.fx = shl i64 %index443, 3
  %next.gep444 = getelementptr i8, ptr %i.fo, i64 %i.fx ; 3 uses
  %i.fy = getelementptr i8, ptr %next.gep444, i64 16 ; 2 uses
  %wide.load445 = load <2 x i64>, ptr %next.gep444, align 8, !tbaa !55
  %wide.load446 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !55
  %i.fz = xor <2 x i64> %wide.load445, splat (i64 -1)
  %i.ga = xor <2 x i64> %wide.load446, splat (i64 -1)
  store <2 x i64> %i.fz, ptr %next.gep444, align 8, !tbaa !55
  store <2 x i64> %i.ga, ptr %i.fy, align 8, !tbaa !55
  %index.next447 = add nuw i64 %index443, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next447, %n.vec441
  br i1 %i.gb, label %middle.block448, label %vector.body442, !llvm.loop !613

middle.block448:                                  ; preds = %vector.body442
  %cmp.n449 = icmp eq i64 %i.fu, %n.vec441
  br i1 %cmp.n449, label %._crit_edge.i.i, label %.lr.ph.i.i128.preheader454

.lr.ph.i.i128.preheader454:                       ; preds = %.lr.ph.i.i128.preheader, %middle.block448
  %.010.i.i.ph = phi ptr [ %i.fo, %.lr.ph.i.i128.preheader ], [ %i.fw, %middle.block448 ]
  br label %.lr.ph.i.i128

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i128, %middle.block448, %_ZN4llvm9BitVectorC2Ejb.exit.i127
  %i.gc = load i32, ptr %i.z, align 8, !tbaa !62  ; 4 uses
  %i.gd = and i32 %i.gc, 63                       ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9BitVector4flipEv.exit.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl nsw i64 -1, %i.ge
  %i.gg = xor i64 %i.gf, -1
  %i.gh = getelementptr inbounds i8, ptr %i.fr, i64 -8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !55
  %i.gj = and i64 %i.gi, %i.gg
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !55
  br label %_ZN4llvm9BitVector4flipEv.exit.i

.lr.ph.i.i128:                                    ; preds = %.lr.ph.i.i128.preheader454, %.lr.ph.i.i128
  %.010.i.i = phi ptr [ %i.gm, %.lr.ph.i.i128 ], [ %.010.i.i.ph, %.lr.ph.i.i128.preheader454 ] ; 3 uses
  %i.gk = load i64, ptr %.010.i.i, align 8, !tbaa !55
  %i.gl = xor i64 %i.gk, -1
  store i64 %i.gl, ptr %.010.i.i, align 8, !tbaa !55
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, %i.fr
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i128, !llvm.loop !614

_ZN4llvm9BitVector4flipEv.exit.i:                 ; preds = %bb.s, %._crit_edge.i.i
  %i.gn = load i32, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %i.go = icmp ult i32 %i.gn, %i.gc
  br i1 %i.go, label %bb.t, label %_ZN4llvm9BitVector6resizeEjb.exit.i

bb.t:                                             ; preds = %_ZN4llvm9BitVector4flipEv.exit.i
  %i.gp = and i32 %i.gn, 63                       ; 2 uses
  %.not.i.i.i184 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i184, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i, label %bb.u

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i: ; preds = %bb.t
  %.pre.i.i = load i32, ptr %i.t, align 8, !tbaa !53 ; 2 uses
  %.pre6.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nsw i64 -1, %i.gq
  %i.gs = xor i64 %i.gr, -1
  %i.gt = load ptr, ptr %9, align 8, !tbaa !22
  %i.gu = load i32, ptr %i.t, align 8, !tbaa !53  ; 2 uses
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -8 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !55
  %i.gz = and i64 %i.gy, %i.gs
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !55
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i:   ; preds = %bb.u, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre6.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i ], [ %i.gv, %bb.u ] ; 2 uses
  %i.ha = phi i32 [ %.pre.i.i, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i ], [ %i.gu, %bb.u ] ; 4 uses
  store i32 %i.gc, ptr %i.v, align 8, !tbaa !62
  %i.hb = add i32 %i.gc, 63
  %i.hc = lshr i32 %i.hb, 6                       ; 5 uses
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.he = icmp eq i32 %i.hc, %i.ha
  br i1 %i.he, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i
  %i.hf = icmp ult i32 %i.hc, %i.ha
  br i1 %i.hf, label %.sink.split.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hg = sub nuw nsw i64 %i.hd, %.pre-phi.i.i    ; 2 uses
  %i.hh = load i32, ptr %i.u, align 4, !tbaa !52
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.hc, %i.hh
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i, !prof !65
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt15TailDuplication24constantAndCopyPropagateERNS0_16BinaryBasicBlockERSt6vectorIPS2_SaIS5_EE:bb.a
  %i.hn = phi i32 [ %.sink.i.i.i, %.sink.split.i.i.i ], [ %i.ha, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i ]
  %.not.i.i.i.i186 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i.i186, label %_ZN4llvm9BitVector6resizeEjb.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i
  %i.ho = zext nneg i32 %.pre-phi to i64
  %i.hp = shl nsw i64 -1, %i.ho
  %i.hq = xor i64 %i.hp, -1
  %i.hr = load ptr, ptr %9, align 8, !tbaa !22
  %i.hs = zext i32 %i.hn to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -8 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !55
  %i.hw = and i64 %i.hv, %i.hq
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !55
  br label %_ZN4llvm9BitVector6resizeEjb.exit.i

_ZN4llvm9BitVector6resizeEjb.exit.i:              ; preds = %bb.y, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, %_ZN4llvm9BitVector4flipEv.exit.i
  %i.hx = load i32, ptr %i.x, align 8, !tbaa !53  ; 3 uses
  %.not9.i = icmp eq i32 %i.hx, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !22    ; 10 uses
  br i1 %.not9.i, label %_ZN4llvm9BitVectoroRERKS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm9BitVector6resizeEjb.exit.i
  %i.hy = load ptr, ptr %9, align 8, !tbaa !22    ; 8 uses
  %i.hz = zext i32 %i.hx to i64                   ; 6 uses
  %min.iters.check425 = icmp ult i32 %i.hx, 4
  br i1 %min.iters.check425, label %scalar.ph424.preheader, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph.i
  %i.ia = shl nuw nsw i64 %i.hz, 3                ; 2 uses
  %scevgep419 = getelementptr i8, ptr %i.hy, i64 %i.ia
  %scevgep420 = getelementptr i8, ptr %.pre, i64 %i.ia
  %bound0421 = icmp ult ptr %i.hy, %scevgep420
  %bound1422 = icmp ult ptr %.pre, %scevgep419
  %found.conflict423 = and i1 %bound0421, %bound1422
  br i1 %found.conflict423, label %scalar.ph424.preheader, label %vector.ph426

vector.ph426:                                     ; preds = %vector.memcheck418
  %n.vec427 = and i64 %i.hz, 4294967292           ; 3 uses
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next434, %vector.body428 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index429 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load430 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !55, !alias.scope !654
  %wide.load431 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !55, !alias.scope !654
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %index429 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %wide.load432 = load <2 x i64>, ptr %i.id, align 8, !tbaa !55, !alias.scope !655, !noalias !654
  %wide.load433 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !55, !alias.scope !655, !noalias !654
  %i.if = or <2 x i64> %wide.load432, %wide.load430
  %i.ig = or <2 x i64> %wide.load433, %wide.load431
  store <2 x i64> %i.if, ptr %i.id, align 8, !tbaa !55, !alias.scope !655, !noalias !654
  store <2 x i64> %i.ig, ptr %i.ie, align 8, !tbaa !55, !alias.scope !655, !noalias !654
  %index.next434 = add nuw i64 %index429, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next434, %n.vec427
  br i1 %i.ih, label %middle.block435, label %vector.body428, !llvm.loop !618

middle.block435:                                  ; preds = %vector.body428
  %cmp.n436 = icmp eq i64 %n.vec427, %i.hz
  br i1 %cmp.n436, label %_ZN4llvm9BitVectoroRERKS0_.exit, label %scalar.ph424.preheader

scalar.ph424.preheader:                           ; preds = %vector.memcheck418, %.lr.ph.i, %middle.block435
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck418 ], [ 0, %.lr.ph.i ], [ %n.vec427, %middle.block435 ] ; 3 uses
  %xtraiter = and i64 %i.hz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph424.prol.loopexit, label %scalar.ph424.prol

scalar.ph424.prol:                                ; preds = %scalar.ph424.preheader, %scalar.ph424.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph424.prol ], [ %indvars.iv.i.ph, %scalar.ph424.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph424.prol ], [ 0, %scalar.ph424.preheader ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i.prol
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !55
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.i.prol ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !55
  %i.im = or i64 %i.il, %i.ij
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !55
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph424.prol.loopexit, label %scalar.ph424.prol, !llvm.loop !619

scalar.ph424.prol.loopexit:                       ; preds = %scalar.ph424.prol, %scalar.ph424.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph424.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph424.prol ]
  %i.in = sub nsw i64 %indvars.iv.i.ph, %i.hz
  %i.io = icmp ugt i64 %i.in, -4
  br i1 %i.io, label %_ZN4llvm9BitVectoroRERKS0_.exit, label %scalar.ph424

scalar.ph424:                                     ; preds = %scalar.ph424.prol.loopexit, %scalar.ph424
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph424 ], [ %indvars.iv.i.unr, %scalar.ph424.prol.loopexit ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !55
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.i ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !55
  %i.it = or i64 %i.is, %i.iq
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next.i
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !55
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next.i ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !55
  %i.iy = or i64 %i.ix, %i.iv
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !55
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next.i.1
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !55
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !55
  %i.jd = or i64 %i.jc, %i.ja
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !55
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next.i.2
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !55
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !55
  %i.ji = or i64 %i.jh, %i.jf
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !55
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.not.i183.3 = icmp eq i64 %indvars.iv.next.i.3, %i.hz
  br i1 %.not.i183.3, label %_ZN4llvm9BitVectoroRERKS0_.exit, label %scalar.ph424, !llvm.loop !620

_ZN4llvm9BitVectoroRERKS0_.exit:                  ; preds = %scalar.ph424.prol.loopexit, %scalar.ph424, %middle.block435, %_ZN4llvm9BitVector6resizeEjb.exit.i
  %i.jj = icmp eq ptr %.pre, %i.w
  br i1 %i.jj, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm9BitVectoroRERKS0_.exit
  call void @free(ptr noundef %.pre) #22
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.z, %_ZN4llvm9BitVectoroRERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit

_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i83, %_ZN4llvm9BitVectorD2Ev.exit.i
  %i.jk = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 392
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = call noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(536) %i.jk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277) #22, !inline_history !653
  br i1 %i.jo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit
  %i.jp = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 984
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(536) %i.jp, ptr noundef nonnull align 8 dereferenceable(68) %9) #22, !inline_history !653
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit
  %i.jt = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.ju = trunc i32 %i.ek to i16
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !17
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 920
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = call noundef nonnull align 8 dereferenceable(68) ptr %i.jx(ptr noundef nonnull align 8 dereferenceable(536) %i.jt, i16 noundef zeroext %i.ju, i1 noundef zeroext false) #22, !inline_history !653 ; 2 uses
  %i.jz = load i32, ptr %i.t, align 8, !tbaa !53
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !53
  %.sroa.speculated.i.i84 = call i32 @llvm.umin.i32(i32 %i.kb, i32 %i.jz) ; 2 uses
  %.not15.not.i.i85 = icmp eq i32 %.sroa.speculated.i.i84, 0
  %.pre.i86 = load ptr, ptr %9, align 8, !tbaa !22 ; 3 uses
  br i1 %.not15.not.i.i85, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i90, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %bb.ab
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !22
  %i.kd = zext i32 %.sroa.speculated.i.i84 to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next.i.i92 = add nuw nsw i64 %indvars.iv.i.i88, 1 ; 2 uses
  %.not.not.i.i93 = icmp eq i64 %indvars.iv.next.i.i92, %i.kd
  br i1 %.not.not.i.i93, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i90, label %bb.ad, !llvm.loop !1

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i87
  %indvars.iv.i.i88 = phi i64 [ 0, %.lr.ph.i.i87 ], [ %indvars.iv.next.i.i92, %bb.ac ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.pre.i86, i64 %indvars.iv.i.i88
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !55
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.i.i88
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !55
  %i.ki = and i64 %i.kh, %i.kf
  %.not11.not.i.not.i89 = icmp eq i64 %i.ki, 0
  br i1 %.not11.not.i.not.i89, label %bb.ac, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i90

_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i90:     ; preds = %bb.ad, %bb.ac, %bb.ab
  %.not.lcssa.i.i91 = phi i1 [ %.1279, %bb.ab ], [ false, %bb.ad ], [ %.1279, %bb.ac ]
  %i.kj = icmp eq ptr %.pre.i86, %i.s
  br i1 %i.kj, label %_ZNK4llvm4bolt15TailDuplication24regIsPossiblyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i90
  call void @free(ptr noundef %.pre.i86) #22
  br label %_ZNK4llvm4bolt15TailDuplication24regIsPossiblyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit

_ZNK4llvm4bolt15TailDuplication24regIsPossiblyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit: ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i90, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.critedge

.critedge:                                        ; preds = %.split, %.thread, %_ZNK4llvm4bolt15TailDuplication24regIsPossiblyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit
  %.271264 = phi i1 [ %.271268, %_ZNK4llvm4bolt15TailDuplication24regIsPossiblyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit ], [ %.170.mux, %.thread ], [ %spec.select272, %.split ] ; 3 uses
  %.2 = phi i1 [ %.not.lcssa.i.i91, %_ZNK4llvm4bolt15TailDuplication24regIsPossiblyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit ], [ %.1279, %.thread ], [ true, %.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.kk = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !51 ; 2 uses
  %i.kn = add i32 %i.km, 63                       ; 2 uses
  %i.ko = lshr i32 %i.kn, 6                       ; 3 uses
  %i.kp = zext nneg i32 %i.ko to i64              ; 2 uses
  store ptr %i.aa, ptr %8, align 8, !tbaa !22
  store i32 6, ptr %i.ac, align 4, !tbaa !52
  %i.kq = icmp ugt i32 %i.kn, 447
  br i1 %i.kq, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i111, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i95

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i111:       ; preds = %.critedge
  store i32 0, ptr %i.ab, align 8, !tbaa !53
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %8, ptr noundef nonnull %i.aa, i64 noundef %i.kp, i64 noundef 8) #22
  %i.kr = load ptr, ptr %8, align 8, !tbaa !22
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i97

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i95:    ; preds = %.critedge
  %.not.i.i.i96 = icmp eq i32 %i.ko, 0
  br i1 %.not.i.i.i96, label %_ZN4llvm9BitVectorC2Ejb.exit.i100, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i97

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i97:      ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i95, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i111
  %.sink.i98 = phi ptr [ %i.kr, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i111 ], [ %i.aa, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i95 ]
  %.idx.i.i.i.i.i.i.i.i99 = shl nuw nsw i64 %i.kp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i98, i8 0, i64 %.idx.i.i.i.i.i.i.i.i99, i1 false), !tbaa !55
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i100

_ZN4llvm9BitVectorC2Ejb.exit.i100:                ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i97, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i95
  store i32 %i.ko, ptr %i.ab, align 8, !tbaa !53
  store i32 %i.km, ptr %i.ad, align 8, !tbaa !62
  %i.ks = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !17
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1032
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(536) %i.ks, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277, ptr noundef nonnull align 8 dereferenceable(68) %8) #22, !inline_history !653
  %i.kw = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !17
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 232
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef zeroext i1 %i.kz(ptr noundef nonnull align 8 dereferenceable(536) %i.kw, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277) #22, !inline_history !231
  br i1 %i.la, label %bb.af, label %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit146

bb.af:                                            ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.lb = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !51 ; 2 uses
  %i.le = add i32 %i.ld, 63                       ; 2 uses
  %i.lf = lshr i32 %i.le, 6                       ; 3 uses
  %i.lg = zext nneg i32 %i.lf to i64              ; 2 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !22
  store i32 6, ptr %i.ag, align 4, !tbaa !52
  %i.lh = icmp ugt i32 %i.le, 447
  br i1 %i.lh, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i145, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i130

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i145:       ; preds = %bb.af
  store i32 0, ptr %i.af, align 8, !tbaa !53
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull %i.ae, i64 noundef %i.lg, i64 noundef 8) #22
  %i.li = load ptr, ptr %5, align 8, !tbaa !22
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i132

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i130:   ; preds = %bb.af
  %.not.i.i.i131 = icmp eq i32 %i.lf, 0
  br i1 %.not.i.i.i131, label %_ZN4llvm9BitVectorC2Ejb.exit.i135, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i132

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i132:     ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i130, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i145
  %.sink.i133 = phi ptr [ %i.li, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i145 ], [ %i.ae, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i130 ]
  %.idx.i.i.i.i.i.i.i.i134 = shl nuw nsw i64 %i.lg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i133, i8 0, i64 %.idx.i.i.i.i.i.i.i.i134, i1 false), !tbaa !55
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i135

_ZN4llvm9BitVectorC2Ejb.exit.i135:                ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i132, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i130
  store i32 %i.lf, ptr %i.af, align 8, !tbaa !53
  store i32 %i.ld, ptr %i.ah, align 8, !tbaa !62
  %i.lj = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !17
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 936
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(536) %i.lj, ptr noundef nonnull align 8 dereferenceable(68) %5) #22, !inline_history !231
  %i.ln = load ptr, ptr %5, align 8, !tbaa !22    ; 4 uses
  %i.lo = load i32, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.lp = zext i32 %i.lo to i64
  %.idx.i.i136 = shl nuw nsw i64 %i.lp, 3         ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.idx.i.i136 ; 2 uses
  %.not9.i.i137 = icmp eq i32 %i.lo, 0
  br i1 %.not9.i.i137, label %._crit_edge.i.i141, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i135
  %i.lr = add nsw i64 %.idx.i.i136, -8            ; 2 uses
  %i.ls = lshr exact i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %min.iters.check406 = icmp ult i64 %i.lr, 24
  br i1 %min.iters.check406, label %.lr.ph.i.i138.preheader453, label %vector.ph407

vector.ph407:                                     ; preds = %.lr.ph.i.i138.preheader
  %n.vec408 = and i64 %i.lt, 4611686018427387900  ; 3 uses
  %i.lu = shl i64 %n.vec408, 3
  %i.lv = getelementptr i8, ptr %i.ln, i64 %i.lu
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph407
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next414, %vector.body409 ] ; 2 uses
  %i.lw = shl i64 %index410, 3
  %next.gep411 = getelementptr i8, ptr %i.ln, i64 %i.lw ; 3 uses
  %i.lx = getelementptr i8, ptr %next.gep411, i64 16 ; 2 uses
  %wide.load412 = load <2 x i64>, ptr %next.gep411, align 8, !tbaa !55
  %wide.load413 = load <2 x i64>, ptr %i.lx, align 8, !tbaa !55
  %i.ly = xor <2 x i64> %wide.load412, splat (i64 -1)
  %i.lz = xor <2 x i64> %wide.load413, splat (i64 -1)
  store <2 x i64> %i.ly, ptr %next.gep411, align 8, !tbaa !55
  store <2 x i64> %i.lz, ptr %i.lx, align 8, !tbaa !55
  %index.next414 = add nuw i64 %index410, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next414, %n.vec408
  br i1 %i.ma, label %middle.block415, label %vector.body409, !llvm.loop !621

middle.block415:                                  ; preds = %vector.body409
  %cmp.n416 = icmp eq i64 %i.lt, %n.vec408
  br i1 %cmp.n416, label %._crit_edge.i.i141, label %.lr.ph.i.i138.preheader453

.lr.ph.i.i138.preheader453:                       ; preds = %.lr.ph.i.i138.preheader, %middle.block415
  %.010.i.i139.ph = phi ptr [ %i.ln, %.lr.ph.i.i138.preheader ], [ %i.lv, %middle.block415 ]
  br label %.lr.ph.i.i138

._crit_edge.i.i141:                               ; preds = %.lr.ph.i.i138, %middle.block415, %_ZN4llvm9BitVectorC2Ejb.exit.i135
  %i.mb = load i32, ptr %i.ah, align 8, !tbaa !62 ; 4 uses
  %i.mc = and i32 %i.mb, 63                       ; 5 uses
  %.not.i.i.i.i142 = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i.i.i142, label %_ZN4llvm9BitVector4flipEv.exit.i143, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i141
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl nsw i64 -1, %i.md
  %i.mf = xor i64 %i.me, -1
  %i.mg = getelementptr inbounds i8, ptr %i.lq, i64 -8 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !55
  %i.mi = and i64 %i.mh, %i.mf
  store i64 %i.mi, ptr %i.mg, align 8, !tbaa !55
  br label %_ZN4llvm9BitVector4flipEv.exit.i143

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader453, %.lr.ph.i.i138
  %.010.i.i139 = phi ptr [ %i.ml, %.lr.ph.i.i138 ], [ %.010.i.i139.ph, %.lr.ph.i.i138.preheader453 ] ; 3 uses
  %i.mj = load i64, ptr %.010.i.i139, align 8, !tbaa !55
  %i.mk = xor i64 %i.mj, -1
  store i64 %i.mk, ptr %.010.i.i139, align 8, !tbaa !55
  %i.ml = getelementptr inbounds nuw i8, ptr %.010.i.i139, i64 8 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.ml, %i.lq
  br i1 %.not.i.i140, label %._crit_edge.i.i141, label %.lr.ph.i.i138, !llvm.loop !622

_ZN4llvm9BitVector4flipEv.exit.i143:              ; preds = %bb.ag, %._crit_edge.i.i141
  %i.mm = load i32, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  %i.mn = icmp ult i32 %i.mm, %i.mb
  br i1 %i.mn, label %bb.ah, label %_ZN4llvm9BitVector6resizeEjb.exit.i188

bb.ah:                                            ; preds = %_ZN4llvm9BitVector4flipEv.exit.i143
  %i.mo = and i32 %i.mm, 63                       ; 2 uses
  %.not.i.i.i194 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i.i194, label %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i210, label %bb.ai

._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i210: ; preds = %bb.ah
  %.pre.i.i212 = load i32, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %.pre6.i.i213 = zext i32 %.pre.i.i212 to i64
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i195

bb.ai:                                            ; preds = %bb.ah
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = shl nsw i64 -1, %i.mp
  %i.mr = xor i64 %i.mq, -1
  %i.ms = load ptr, ptr %8, align 8, !tbaa !22
  %i.mt = load i32, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %i.mu = zext i32 %i.mt to i64                   ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mu
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !55
  %i.my = and i64 %i.mx, %i.mr
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !55
  br label %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i195

_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i195: ; preds = %bb.ai, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i210
  %.pre-phi.i.i196 = phi i64 [ %.pre6.i.i213, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i210 ], [ %i.mu, %bb.ai ] ; 2 uses
  %i.mz = phi i32 [ %.pre.i.i212, %._ZN4llvm9BitVector15set_unused_bitsEb.exit_crit_edge.i.i210 ], [ %i.mt, %bb.ai ] ; 4 uses
  store i32 %i.mb, ptr %i.ad, align 8, !tbaa !62
  %i.na = add i32 %i.mb, 63
  %i.nb = lshr i32 %i.na, 6                       ; 5 uses
  %i.nc = zext nneg i32 %i.nb to i64              ; 2 uses
  %i.nd = icmp eq i32 %i.nb, %i.mz
  br i1 %i.nd, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i205, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i.i195
  %i.ne = icmp ult i32 %i.nb, %i.mz
  br i1 %i.ne, label %.sink.split.i.i.i202, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nf = sub nuw nsw i64 %i.nc, %.pre-phi.i.i196 ; 2 uses
  %i.ng = load i32, ptr %i.ac, align 4, !tbaa !52
  %.not.i.i.i.i.i.i197 = icmp ugt i32 %i.nb, %i.ng
  br i1 %.not.i.i.i.i.i.i197, label %bb.al, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i.i198, !prof !65

bb.al:                                            ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@_ZN4llvm4bolt15TailDuplication24constantAndCopyPropagateERNS0_16BinaryBasicBlockERSt6vectorIPS2_SaIS5_EE:bb.a
scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i217, %middle.block
  %indvars.iv.i218.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i217 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter461 = and i64 %i.tw, 3                 ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i218.prol = phi i64 [ %indvars.iv.next.i219.prol, %scalar.ph.prol ], [ %indvars.iv.i218.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter463 = phi i64 [ %prol.iter463.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %.pre304, i64 %indvars.iv.i218.prol
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !55
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i218.prol ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !55
  %i.uj = or i64 %i.ui, %i.ug
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !55
  %indvars.iv.next.i219.prol = add nuw nsw i64 %indvars.iv.i218.prol, 1 ; 2 uses
  %prol.iter463.next = add i64 %prol.iter463, 1   ; 2 uses
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461
  br i1 %prol.iter463.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !635

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i218.unr = phi i64 [ %indvars.iv.i218.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i219.prol, %scalar.ph.prol ]
  %i.uk = sub nsw i64 %indvars.iv.i218.ph, %i.tw
  %i.ul = icmp ugt i64 %i.uk, -4
  br i1 %i.ul, label %_ZN4llvm9BitVectoroRERKS0_.exit241, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i218 = phi i64 [ %indvars.iv.next.i219.3, %scalar.ph ], [ %indvars.iv.i218.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %.pre304, i64 %indvars.iv.i218
  %i.un = load i64, ptr %i.um, align 8, !tbaa !55
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i218 ; 2 uses
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !55
  %i.uq = or i64 %i.up, %i.un
  store i64 %i.uq, ptr %i.uo, align 8, !tbaa !55
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %.pre304, i64 %indvars.iv.next.i219
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !55
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next.i219 ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !55
  %i.uv = or i64 %i.uu, %i.us
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !55
  %indvars.iv.next.i219.1 = add nuw nsw i64 %indvars.iv.i218, 2 ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %.pre304, i64 %indvars.iv.next.i219.1
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !55
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next.i219.1 ; 2 uses
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !55
  %i.va = or i64 %i.uz, %i.ux
  store i64 %i.va, ptr %i.uy, align 8, !tbaa !55
  %indvars.iv.next.i219.2 = add nuw nsw i64 %indvars.iv.i218, 3 ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %.pre304, i64 %indvars.iv.next.i219.2
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !55
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next.i219.2 ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !55
  %i.vf = or i64 %i.ve, %i.vc
  store i64 %i.vf, ptr %i.vd, align 8, !tbaa !55
  %indvars.iv.next.i219.3 = add nuw nsw i64 %indvars.iv.i218, 4 ; 2 uses
  %.not.i220.3 = icmp eq i64 %indvars.iv.next.i219.3, %i.tw
  br i1 %.not.i220.3, label %_ZN4llvm9BitVectoroRERKS0_.exit241, label %scalar.ph, !llvm.loop !636

_ZN4llvm9BitVectoroRERKS0_.exit241:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm9BitVector6resizeEjb.exit.i215
  %i.vg = icmp eq ptr %.pre304, %i.am
  br i1 %i.vg, label %_ZN4llvm9BitVectorD2Ev.exit.i180, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm9BitVectoroRERKS0_.exit241
  call void @free(ptr noundef %.pre304) #22
  br label %_ZN4llvm9BitVectorD2Ev.exit.i180

_ZN4llvm9BitVectorD2Ev.exit.i180:                 ; preds = %bb.bb, %_ZN4llvm9BitVectoroRERKS0_.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit182

_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit182: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i118, %_ZN4llvm9BitVectorD2Ev.exit.i180
  %i.vh = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !17
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 392
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = call noundef zeroext i1 %i.vk(ptr noundef nonnull align 8 dereferenceable(536) %i.vh, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277) #22, !inline_history !230
  br i1 %i.vl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit182
  %i.vm = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !17
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 984
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef nonnull align 8 dereferenceable(536) %i.vm, ptr noundef nonnull align 8 dereferenceable(68) %7) #22, !inline_history !230
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNK4llvm4bolt15TailDuplication18getCallerSavedRegsERKNS_6MCInstERNS_9BitVectorERNS0_13BinaryContextE.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.vq = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !51 ; 2 uses
  %i.vt = add i32 %i.vs, 63                       ; 2 uses
  %i.vu = lshr i32 %i.vt, 6                       ; 3 uses
  %i.vv = zext nneg i32 %i.vu to i64              ; 2 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !22
  store i32 6, ptr %i.as, align 4, !tbaa !52
  %i.vw = icmp ugt i32 %i.vt, 447
  br i1 %i.vw, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i164, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i147

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i164:       ; preds = %bb.bd
  store i32 0, ptr %i.ar, align 8, !tbaa !53
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %4, ptr noundef nonnull %i.aq, i64 noundef %i.vv, i64 noundef 8) #22
  %i.vx = load ptr, ptr %4, align 8, !tbaa !22
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i149

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i147:   ; preds = %bb.bd
  %.not.i.i.i148 = icmp eq i32 %i.vu, 0
  br i1 %.not.i.i.i148, label %_ZN4llvm9BitVectorC2Ejb.exit.i152, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i149

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i149:     ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i147, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i164
  %.sink.i150 = phi ptr [ %i.vx, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i164 ], [ %i.aq, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i147 ]
  %.idx.i.i.i.i.i.i.i.i151 = shl nuw nsw i64 %i.vv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i150, i8 0, i64 %.idx.i.i.i.i.i.i.i.i151, i1 false), !tbaa !55
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i152

_ZN4llvm9BitVectorC2Ejb.exit.i152:                ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i149, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i147
  store i32 %i.vu, ptr %i.ar, align 8, !tbaa !53
  store i32 %i.vs, ptr %i.at, align 8, !tbaa !62
  %i.vy = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !17
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1048
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef nonnull align 8 dereferenceable(536) %i.vy, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277, ptr noundef nonnull align 8 dereferenceable(68) %4) #22, !inline_history !229
  %i.wc = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !17
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 920
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = call noundef nonnull align 8 dereferenceable(68) ptr %i.wf(ptr noundef nonnull align 8 dereferenceable(536) %i.wc, i16 noundef zeroext %i.ce, i1 noundef zeroext true) #22, !inline_history !229 ; 2 uses
  %i.wh = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !53
  %.sroa.speculated.i.i153 = call i32 @llvm.umin.i32(i32 %i.wj, i32 %i.wh) ; 2 uses
  %.not15.not.i.i154 = icmp eq i32 %.sroa.speculated.i.i153, 0
  %.pre.i155 = load ptr, ptr %4, align 8, !tbaa !22 ; 3 uses
  br i1 %.not15.not.i.i154, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i159, label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i152
  %i.wk = load ptr, ptr %i.wg, align 8, !tbaa !22
  %i.wl = zext i32 %.sroa.speculated.i.i153 to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i156
  %indvars.iv.i.i157 = phi i64 [ 0, %.lr.ph.i.i156 ], [ %indvars.iv.next.i.i162, %bb.be ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i155, i64 %indvars.iv.i.i157
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !55
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.i.i157
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !55
  %i.wq = and i64 %i.wp, %i.wn
  %.not11.not.i.not.i158.not = icmp ne i64 %i.wq, 0 ; 2 uses
  %indvars.iv.next.i.i162 = add nuw nsw i64 %indvars.iv.i.i157, 1 ; 2 uses
  %.not.not.i.i163 = icmp eq i64 %indvars.iv.next.i.i162, %i.wl
  %or.cond451 = select i1 %.not11.not.i.not.i158.not, i1 true, i1 %.not.not.i.i163
  br i1 %or.cond451, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i159, label %bb.be, !llvm.loop !1

_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i159:    ; preds = %bb.be, %_ZN4llvm9BitVectorC2Ejb.exit.i152
  %.not.lcssa.i.i160 = phi i1 [ false, %_ZN4llvm9BitVectorC2Ejb.exit.i152 ], [ %.not11.not.i.not.i158.not, %bb.be ]
  %i.wr = icmp eq ptr %.pre.i155, %i.aq
  br i1 %i.wr, label %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i159
  call void @free(ptr noundef %.pre.i155) #22
  br label %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165

_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165: ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.i159, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pre16.i = load ptr, ptr %7, align 8, !tbaa !22 ; 3 uses
  br i1 %.not.lcssa.i.i160, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.pre16.i, i64 %i.cj
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !55
  %i.wu = and i64 %i.wt, %i.ch
  %.not.i = icmp eq i64 %i.wu, 0
  br i1 %.not.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.wv = load ptr, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !17
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 48
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = call noundef zeroext i1 %i.wy(ptr noundef nonnull align 8 dereferenceable(536) %i.wv, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0244.0277) #22, !inline_history !230
  %i.xa = xor i1 %i.wz, true
  %.pre.i119 = load ptr, ptr %7, align 8, !tbaa !22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165
  %i.xb = phi ptr [ %.pre16.i, %bb.bg ], [ %.pre16.i, %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165 ], [ %.pre.i119, %bb.bh ] ; 2 uses
  %i.xc = phi i1 [ false, %bb.bg ], [ false, %_ZNK4llvm4bolt15TailDuplication9regIsUsedERKNS_6MCInstEjRNS0_13BinaryContextE.exit165 ], [ %i.xa, %bb.bh ]
  %i.xd = icmp eq ptr %i.xb, %i.ai
  br i1 %i.xd, label %_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef %i.xb) #22
  br label %_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit

_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.xc, label %._crit_edge292, label %bb.m

._crit_edge292:                                   ; preds = %.loopexit, %_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit
  %.372356 = phi i1 [ %.271264, %_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit ], [ %.372.ph, %.loopexit ]
  %.not276.not.lcssa.ph = phi i1 [ false, %_ZNK4llvm4bolt15TailDuplication26regIsDefinitelyOverwrittenERKNS_6MCInstEjRNS0_13BinaryContextE.exit ], [ true, %.loopexit ]
  br i1 %.372356, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %._crit_edge292
  br i1 %.not276.not.lcssa.ph, label %.thread361, label %bb.bl

.thread361:                                       ; preds = %bb.i, %bb.bk
  %i.xe = load ptr, ptr %i.m, align 8, !tbaa !238
  %i.xf = load ptr, ptr %2, align 8, !tbaa !239   ; 2 uses
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = getelementptr i8, ptr %i.xf, i64 %i.xi
  %i.xk = getelementptr i8, ptr %i.xj, i64 -8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !224
  %i.xm = call noundef zeroext i1 @_ZNK4llvm4bolt15TailDuplication23isOverwrittenBeforeUsedERNS0_16BinaryBasicBlockEj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(192) %i.xl, i32 noundef %i.ca)
  br i1 %i.xm, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.thread361, %bb.bk
  %i.xn = load i64, ptr %i.av, align 8, !tbaa !240
  %i.xo = load <2 x i64>, ptr %i.au, align 8, !tbaa !55
  %i.xp = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.xn, i64 1
  %i.xq = add <2 x i64> %i.xo, %i.xp
  store <2 x i64> %i.xq, ptr %i.au, align 8, !tbaa !55
  call void @_ZN4llvm4bolt16BinaryBasicBlock16adjustNumPseudosERKNS_6MCInstEi(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0253.0299, i32 noundef -1) #22
  %i.xr = load ptr, ptr %1, align 8, !tbaa !228   ; 2 uses
  %i.xs = ptrtoint ptr %.sroa.0253.0299 to i64
  %i.xt = ptrtoint ptr %i.xr to i64
  %i.xu = sub i64 %i.xs, %i.xt
  %i.xv = getelementptr inbounds i8, ptr %i.xr, i64 %i.xu ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 128 ; 3 uses
  %i.xx = load ptr, ptr %i.i, align 8, !tbaa !228 ; 4 uses
  %.not.i.i.i121 = icmp eq ptr %i.xw, %i.xx
  br i1 %.not.i.i.i121, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = ptrtoint ptr %i.xw to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %i.yb = ashr exact i64 %i.ya, 7                 ; 2 uses
  %i.yc = icmp sgt i64 %i.yb, 0
  br i1 %i.yc, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bm, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.yi, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yb, %bb.bm ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.yh, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.xv, %bb.bm ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.yg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.xw, %bb.bm ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.0811.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.0910.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.yd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 16
  %i.ye = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 16
  %i.yf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.yd, ptr noundef nonnull align 8 dereferenceable(112) %i.ye) ; 0 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 128
  %i.yh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 128
  %i.yi = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.yj = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.yj, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, !llvm.loop !637

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !241
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, %bb.bm, %bb.bl
  %i.yk = phi ptr [ %.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.xx, %bb.bm ], [ %i.xx, %bb.bl ] ; 3 uses
  %i.yl = getelementptr inbounds i8, ptr %i.yk, i64 -128
  store ptr %i.yl, ptr %i.i, align 8, !tbaa !241
  %i.ym = getelementptr inbounds i8, ptr %i.yk, i64 -112
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !22 ; 2 uses
  %i.yo = getelementptr inbounds i8, ptr %i.yk, i64 -96
  %i.yp = icmp eq ptr %i.yn, %i.yo
  br i1 %i.yp, label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  call void @free(ptr noundef %i.yn) #22
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit

bb.bo:                                            ; preds = %.thread361, %._crit_edge292
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0253.0299, i64 128
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit

_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit: ; preds = %bb.bn, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, %bb.bo, %bb.h, %bb.c
  %.sroa.0253.1 = phi ptr [ %i.bb, %bb.c ], [ %i.bw, %bb.h ], [ %i.yq, %bb.bo ], [ %i.xv, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %i.xv, %bb.bn ] ; 2 uses
  %i.yr = load ptr, ptr %i.i, align 8, !tbaa !228
  %.not = icmp eq ptr %.sroa.0253.1, %i.yr
  br i1 %.not, label %._crit_edge302, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(192) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.c = load i32, ptr %i.b, align 4, !tbaa !242  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.e = load i32, ptr %i.d, align 4, !tbaa !242  ; 2 uses
  %i.f = icmp ugt i32 %i.c, %i.e
  %i.g = select i1 %i.f, i32 1, i32 -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1288
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL28TailDuplicationMinimumOffsetE, i64 120), align 8
  %i.l = zext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.016 = phi i64 [ 0, %bb.b ], [ %i.w, %bb.d ]
  %.pn = phi i32 [ %i.e, %bb.b ], [ %.015, %bb.d ]
  %.015 = add i32 %.pn, %i.g                      ; 3 uses
  %.not = icmp eq i32 %.015, %i.c                 ; 3 uses
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext i32 %.015 to i64
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.s = load i32, ptr %i.r, align 4, !tbaa !243
  %i.t = load i32, ptr %i.q, align 8, !tbaa !244
  %i.u = sub i32 %i.s, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %.016, %i.v              ; 2 uses
  %i.x = icmp samesign ugt i64 %i.w, %i.l
  br i1 %i.x, label %.critedge, label %bb.c, !llvm.loop !2

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %.not, %bb.d ], [ %.not, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt15TailDuplication17moderateDuplicateERNS0_16BinaryBasicBlockES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.560") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %3) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !240
  %i.c = add i64 %i.b, 1
  %i.d = icmp ult i64 %i.c, 2
  %i.e = icmp eq ptr %2, %3
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE9push_backEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.g = load i32, ptr %i.f, align 4, !tbaa !242  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.i = load i32, ptr %i.h, align 4, !tbaa !242  ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  %i.k = select i1 %i.j, i32 1, i32 -1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1288
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL28TailDuplicationMinimumOffsetE, i64 120), align 8
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.016.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.d ]
  %.pn.i = phi i32 [ %i.i, %bb.b ], [ %.015.i, %bb.d ]
  %.015.i = add i32 %.pn.i, %i.k                  ; 3 uses
  %.not.i15 = icmp eq i32 %.015.i, %i.g
  br i1 %.not.i15, label %_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE9push_backEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %.015.i to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !224  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  %i.w = load i32, ptr %i.v, align 4, !tbaa !243
  %i.x = load i32, ptr %i.u, align 8, !tbaa !244
  %i.y = sub i32 %i.w, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %.016.i, %i.z           ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.aa, %i.p
  br i1 %i.ab, label %_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_.exit, label %bb.c, !llvm.loop !2

_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !243
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !244
  %i.ag = sub i32 %i.ae, %i.af
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33TailDuplicationMaximumDuplicationE, i64 120), align 8, !tbaa !250
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE9push_backEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %.not.not19 = icmp eq i32 %i.am, 0
  br i1 %.not.not19, label %_ZNKSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = add i32 %i.g, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.aq, %i.ao
  br i1 %.not.not, label %_ZNKSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.g, !llvm.loop !3

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.020 = phi ptr [ %i.ak, %.lr.ph ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = load ptr, ptr %.020, align 8, !tbaa !224
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 164
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242
  %i.au = icmp eq i32 %i.at, %i.ap
  br i1 %i.au, label %_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE9push_backEOS3_.exit, label %bb.f

_ZNKSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 3 uses
  store ptr %3, ptr %i.ax, align 8, !tbaa !224
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !239
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !238
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !251
  br label %_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %bb.g, %_ZNKSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.a, %_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt15TailDuplication19aggressiveDuplicateERNS0_16BinaryBasicBlockES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.560") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %3) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !240
  %i.c = add i64 %i.b, 1
  %i.d = icmp ult i64 %i.c, 2
  %i.e = icmp eq ptr %2, %3
  %or.cond42 = or i1 %i.e, %i.d
  br i1 %or.cond42, label %_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.g = load i32, ptr %i.f, align 4, !tbaa !242  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.i = load i32, ptr %i.h, align 4, !tbaa !242  ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  %i.k = select i1 %i.j, i32 1, i32 -1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1288
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL28TailDuplicationMinimumOffsetE, i64 120), align 8
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.016.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.d ]
  %.pn.i = phi i32 [ %i.i, %bb.b ], [ %.015.i, %bb.d ]
  %.015.i = add i32 %.pn.i, %i.k                  ; 3 uses
  %.not.i12 = icmp eq i32 %.015.i, %i.g
  br i1 %.not.i12, label %_ZNK4llvm4bolt15TailDuplication13isInCacheLineERKNS0_16BinaryBasicBlockES4_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %.015.i to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !224  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
end_hunk_2
