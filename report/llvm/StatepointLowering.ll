Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StatepointLowering?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1659
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm14SmallBitVector6resizeEjb:bb.a

bb.p:                                             ; preds = %bb.o
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nsw i64 -1, %i.dl
  %i.dn = xor i64 %i.dm, -1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ca
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !103
  %i.dr = and i64 %i.dq, %i.dn
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !103
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, %bb.o, %bb.p
  %i.ds = load i64, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.dt = lshr i64 %i.ds, 1
  %i.du = lshr i64 %i.ds, 58                      ; 3 uses
  %i.dv = shl nsw i64 -1, %i.du
  %i.dw = xor i64 %i.dv, -1
  %i.dx = and i64 %i.dt, %i.dw
  %.not26 = icmp eq i64 %i.du, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVector9referenceaSEb.exit, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.dy = ptrtoint ptr %i.bx to i64
  store i64 %i.dy, ptr %0, align 8, !tbaa !53
  br label %_ZN4llvm9BitVector6resizeEjb.exit

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %_ZN4llvm9BitVector9referenceaSEb.exit
  %.027 = phi i64 [ %i.ek, %_ZN4llvm9BitVector9referenceaSEb.exit ], [ 0, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 4 uses
  %i.dz = lshr i64 %i.dx, %.027
  %i.ea = trunc i64 %i.dz to i1
  %i.eb = lshr i64 %.027, 6
  %i.ec = and i64 %i.eb, 67108863
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ec ; 3 uses
  %i.ee = shl nuw i64 1, %.027                    ; 2 uses
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !103
  %i.eg = or i64 %i.ef, %i.ee
  br label %_ZN4llvm9BitVector9referenceaSEb.exit

bb.r:                                             ; preds = %.lr.ph
  %i.eh = xor i64 %i.ee, -1
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !103
  %i.ej = and i64 %i.ei, %i.eh
  br label %_ZN4llvm9BitVector9referenceaSEb.exit

_ZN4llvm9BitVector9referenceaSEb.exit:            ; preds = %bb.q, %bb.r
  %storemerge = phi i64 [ %i.ej, %bb.r ], [ %i.eg, %bb.q ]
  store i64 %storemerge, ptr %i.ed, align 8, !tbaa !103
  %i.ek = add nuw nsw i64 %.027, 1                ; 2 uses
  %.not = icmp eq i64 %i.ek, %i.du
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !578

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %bb.i, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm23StatepointLoweringState5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %i.b, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42   ; 3 uses
  %i.g = icmp ult i32 %i.d, %i.f
  %i.h = icmp ugt i32 %i.f, 64
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = zext i32 %i.f to i64
  %i.l = add nuw nsw i64 %i.k, 31
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.n, i1 false)
  store i32 0, ptr %i.a, align 8, !tbaa !41
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53   ; 3 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN4llvm14SmallBitVector5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit
  %i.r = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %_ZN4llvm14SmallBitVector5clearEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.t) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 72) #19
  br label %_ZN4llvm14SmallBitVector5clearEv.exit

_ZN4llvm14SmallBitVector5clearEv.exit:            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit, %bb.e, %_ZN4llvm9BitVectorD2Ev.exit.i
  store i64 1, ptr %i.o, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm23StatepointLoweringState17allocateStackSlotENS_3EVTERNS_19SelectionDAGBuilderE(ptr noundef nonnull align 8 dereferenceable(136) %0, i16 %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108, !nonnull !34, !align !94 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !305  ; 4 uses
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i16 %1 to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.j, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT12getStoreSizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  br label %_ZNK4llvm3EVT12getStoreSizeEv.exit

_ZNK4llvm3EVT12getStoreSizeEv.exit:               ; preds = %bb.b, %bb.c
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.l = add i64 %.fca.0.extract.i, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.n, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT12getStoreSizeEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.9) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT12getStoreSizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53   ; 8 uses
  %i.q = trunc i64 %i.p to i1                     ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.r = lshr i64 %i.p, 58
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.s = inttoptr i64 %i.p to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !102
  %i.v = zext i32 %i.u to i64
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit

_ZNK4llvm14SmallBitVector4sizeEv.exit:            ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.r, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted = load i32, ptr %i.x, align 8, !tbaa !52 ; 3 uses
  %i.y = zext i32 %.promoted to i64               ; 3 uses
  %i.z = icmp samesign ugt i64 %i.w, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit
  %i.aa = lshr i64 %i.p, 1                        ; 2 uses
  %i.ab = lshr i64 %i.p, 58
  %i.ac = shl nsw i64 -1, %i.ab
  %i.ad = xor i64 %i.ac, -1                       ; 2 uses
  %i.ae = and i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 928 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ai = and i64 %i.m, 4294967295                ; 2 uses
  br i1 %i.q, label %.split.us, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph, %.critedge.us
  %i.aj = phi i64 [ %i.ba, %.critedge.us ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.ak = phi i32 [ %i.az, %.critedge.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.al = lshr i64 %i.ae, %i.aj
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %.critedge.us, label %bb.g

bb.g:                                             ; preds = %.split.us
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !93, !nonnull !34, !align !94
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 464
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aj
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !306 ; 2 uses
  %i.as = load i32, ptr %i.ah, align 8, !tbaa !326
  %i.at = add i32 %i.as, %i.ar
  %i.au = zext i32 %i.at to i64
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !327
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !330
  %.not.us = icmp eq i64 %i.ay, %i.ai
  br i1 %.not.us, label %.split38.us, label %.critedge.us

.critedge.us:                                     ; preds = %bb.g, %.split.us
  %i.az = add nuw i32 %i.ak, 1                    ; 3 uses
  store i32 %i.az, ptr %i.x, align 8, !tbaa !52
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %5 = icmp samesign ugt i64 %i.w, %i.ba
  br i1 %5, label %.split.us, label %._crit_edge, !llvm.loop !579

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bb = inttoptr i64 %i.p to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  br label %_ZNK4llvm14SmallBitVector4testEj.exit

_ZNK4llvm14SmallBitVector4testEj.exit:            ; preds = %.lr.ph.split, %.critedge
  %i.bd = phi i64 [ %i.y, %.lr.ph.split ], [ %i.cr, %.critedge ] ; 2 uses
  %i.be = phi i32 [ %.promoted, %.lr.ph.split ], [ %i.cq, %.critedge ] ; 4 uses
  %i.bf = lshr i32 %i.be, 6
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = and i32 %i.be, 63
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !103
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bj, %i.bl
  %.not32 = icmp eq i64 %i.bm, 0
  br i1 %.not32, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !93, !nonnull !34, !align !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 464
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bd
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !306 ; 2 uses
  %i.bs = load i32, ptr %i.ah, align 8, !tbaa !326
  %i.bt = add i32 %i.bs, %i.br
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.ag, align 8, !tbaa !327
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !330
  %.not = icmp eq i64 %i.by, %i.ai
  br i1 %.not, label %.split38.us, label %.critedge

.split38.us:                                      ; preds = %bb.h, %bb.g
  %.us-phi = phi i32 [ %i.ar, %bb.g ], [ %i.br, %bb.h ]
  %.us-phi39 = phi i32 [ %i.ak, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %.us-phi40 = phi i64 [ %i.aj, %bb.g ], [ %i.bd, %bb.h ]
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split38.us
  %i.bz = shl nuw i64 1, %.us-phi40
  %i.ca = or i64 %i.bz, %i.aa
  %i.cb = and i64 %i.ca, %i.ad
  %i.cc = shl nuw i64 %i.cb, 1
  %i.cd = and i64 %i.p, -288230376151711743
  %i.ce = or i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.o, align 8, !tbaa !53
  br label %_ZN4llvm14SmallBitVector3setEj.exit

bb.j:                                             ; preds = %.split38.us
  %i.cf = inttoptr i64 %i.p to ptr
  %i.cg = and i32 %.us-phi39, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = lshr i32 %.us-phi39, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !37
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !103
  %i.co = or i64 %i.cn, %i.ci
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !103
  br label %_ZN4llvm14SmallBitVector3setEj.exit

_ZN4llvm14SmallBitVector3setEj.exit:              ; preds = %bb.i, %bb.j
  %i.cp = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef %.us-phi, i16 %1, ptr %2, i1 noundef zeroext false) #18 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.cp, 0
  br label %bb.o

.critedge:                                        ; preds = %bb.h, %_ZNK4llvm14SmallBitVector4testEj.exit
  %i.cq = add nuw i32 %i.be, 1                    ; 3 uses
  store i32 %i.cq, ptr %i.x, align 8, !tbaa !52
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %6 = icmp samesign ugt i64 %i.w, %i.cr
  br i1 %6, label %_ZNK4llvm14SmallBitVector4testEj.exit, label %._crit_edge, !llvm.loop !579

._crit_edge:                                      ; preds = %.critedge, %.critedge.us, %_ZNK4llvm14SmallBitVector4sizeEv.exit
  %i.cs = call { ptr, i32 } @_ZN4llvm12SelectionDAG20CreateStackTemporaryENS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i16 %1, ptr %2, i32 noundef 1) #18 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cs, 0 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !332 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !326
  %i.cy = add i32 %i.cx, %i.cu
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !327
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.da, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 19
  store i8 1, ptr %i.dc, align 1, !tbaa !580
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 928
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !93, !nonnull !34, !align !94 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 464 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 472 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !95 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 476
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !104
  %.not.i = icmp ult i32 %i.dh, %i.dj
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !333

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i32 noundef %i.cu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.l:                                             ; preds = %._crit_edge
  %i.dk = zext i32 %i.dh to i64
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !37
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  store i32 %i.cu, ptr %i.dm, align 1
  %i.dn = load i32, ptr %i.dg, align 8, !tbaa !95
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dg, align 8, !tbaa !95
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.k, %bb.l
  %i.dp = load i64, ptr %i.o, align 8, !tbaa !53  ; 3 uses
  %i.dq = trunc i64 %i.dp to i1
  br i1 %i.dq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.dr = lshr i64 %i.dp, 58
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit29

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.dt = inttoptr i64 %i.dp to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !102
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit29

_ZNK4llvm14SmallBitVector4sizeEv.exit29:          ; preds = %bb.m, %bb.n
  %i.dw = phi i32 [ %i.ds, %bb.m ], [ %i.dv, %bb.n ]
  %i.dx = add i32 %i.dw, 1
  call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.dx, i1 noundef zeroext true)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm14SmallBitVector3setEj.exit, %_ZNK4llvm14SmallBitVector4sizeEv.exit29
  %.sroa.030.0 = phi ptr [ %.fca.0.extract6, %_ZN4llvm14SmallBitVector3setEj.exit ], [ %.fca.0.extract, %_ZNK4llvm14SmallBitVector4sizeEv.exit29 ]
  %.pn = phi { ptr, i32 } [ %i.cp, %_ZN4llvm14SmallBitVector3setEj.exit ], [ %i.cs, %_ZNK4llvm14SmallBitVector4sizeEv.exit29 ]
  %.sroa.431.0 = extractvalue { ptr, i32 } %.pn, 1
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.030.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.431.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i16, ptr, i1 noundef zeroext) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG20CreateStackTemporaryENS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm19SelectionDAGBuilder17LowerAsSTATEPOINTERNS0_22StatepointLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(5184) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %3 = alloca %"struct.std::pair.546", align 8    ; 6 uses
  %4 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %5 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.llvm::SmallSet", align 8    ; 16 uses
  %7 = alloca %"struct.std::pair.389", align 8    ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"struct.std::pair.389", align 8    ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SmallSetVector", align 8 ; 18 uses
  %12 = alloca %"class.llvm::DenseMap.473", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %13 = alloca %class.anon, align 8               ; 4 uses
  %14 = alloca %class.anon.475, align 8           ; 11 uses
  %15 = alloca %class.anon.476, align 8           ; 7 uses
  %16 = alloca %"class.llvm::SmallVector.242", align 8 ; 9 uses
  %17 = alloca %"class.llvm::SmallVector.275", align 8 ; 10 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %21 = alloca %"class.llvm::SmallVector.240", align 8 ; 20 uses
  %22 = alloca %"class.llvm::SmallVector.242", align 8 ; 9 uses
  %23 = alloca %"class.llvm::SmallVector.244", align 8 ; 12 uses
  %24 = alloca %"class.llvm::DenseMap.249", align 8 ; 25 uses
  %25 = alloca %"class.llvm::SmallVector.28", align 8 ; 15 uses
  %26 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %27 = alloca %"class.llvm::ArrayRef.282", align 8 ; 3 uses
  %28 = alloca %"class.llvm::SmallVector.283", align 8 ; 28 uses
  %29 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %30 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %31 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %32 = alloca %"class.llvm::SmallVector.285", align 8 ; 14 uses
  %33 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %34 = alloca %"class.llvm::ArrayRef.282", align 8 ; 3 uses
  %35 = alloca %"class.llvm::DenseMap.292", align 8 ; 9 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %37 = alloca %"struct.llvm::RegsForValue", align 8 ; 12 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %39 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %40 = alloca %"class.llvm::SmallVector.28", align 8 ; 15 uses
  %41 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %42 = alloca %"class.llvm::ArrayRef.282", align 8 ; 3 uses
  %43 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.h, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42   ; 3 uses
  %i.m = icmp ult i32 %i.j, %i.l
  %i.n = icmp ugt i32 %i.l, 64
  %or.cond.i.i = and i1 %i.m, %i.n
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(136) %i.f)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.t, i1 false)
  store i32 0, ptr %i.g, align 8, !tbaa !41
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 0, ptr %i.u, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !53   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %_ZN4llvm23StatepointLoweringState18startNewStatepointERNS_19SelectionDAGBuilderE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit.i
  %i.y = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_ZN4llvm23StatepointLoweringState18startNewStatepointERNS_19SelectionDAGBuilderE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !37  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm9BitVectorD2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.aa) #18
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i:                  ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 72) #19
  br label %_ZN4llvm23StatepointLoweringState18startNewStatepointERNS_19SelectionDAGBuilderE.exit

_ZN4llvm23StatepointLoweringState18startNewStatepointERNS_19SelectionDAGBuilderE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_7SDValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E5clearEv.exit.i, %bb.e, %_ZN4llvm9BitVectorD2Ev.exit.i.i
  store i64 1, ptr %i.v, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93, !nonnull !34, !align !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !95
  tail call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef %i.ag, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.ah, ptr %21, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 12 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 4 uses
  store i32 10, ptr %i.aj, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
end_hunk_0
