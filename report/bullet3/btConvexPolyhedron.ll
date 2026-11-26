Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexPolyhedron?download=true
inline.NumInlined: 320
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeE6insertERKS0_RKS1_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.cn = sext i32 %i.cl to i64
  %i.co = shl nsw i64 %i.cn, 2
  %i.cp = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.co, i32 noundef 16)
  %.pre.i18 = load i32, ptr %i.cf, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayI20btInternalVertexPairE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI20btInternalVertexPairE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.cq = phi i32 [ %.pre.i18, %bb.k ], [ %i.cg, %bb.j ] ; 5 uses
  %.0.i.i.i19 = phi ptr [ %i.cp, %bb.k ], [ null, %bb.j ] ; 8 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !51 ; 9 uses
  br i1 %i.cr, label %.lr.ph.i.i.i23, label %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i23:                                   ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairE8allocateEi.exit.i.i
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %.0.i.i.i1951 = ptrtoaddr ptr %.0.i.i.i19 to i64
  %wide.trip.count.i.i.i24 = zext nneg i32 %i.cq to i64 ; 5 uses
  %min.iters.check53 = icmp ult i32 %i.cq, 8
  %i.cv = sub i64 %i.cu, %.0.i.i.i1951
  %diff.check55 = icmp ugt i64 %i.cv, -32
  %or.cond66 = select i1 %min.iters.check53, i1 true, i1 %diff.check55
  br i1 %or.cond66, label %scalar.ph52.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.i.i.i23
  %n.vec57 = and i64 %wide.trip.count.i.i.i24, 2147483640 ; 3 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body58 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %index59 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index59 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load60 = load <4 x i32>, ptr %i.cx, align 2, !tbaa !59
  %wide.load61 = load <4 x i32>, ptr %i.cy, align 2, !tbaa !59
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load60, ptr %i.cw, align 2, !tbaa !59
  store <4 x i32> %wide.load61, ptr %i.cz, align 2, !tbaa !59
  %index.next62 = add nuw i64 %index59, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.da, label %middle.block63, label %vector.body58, !llvm.loop !77

middle.block63:                                   ; preds = %vector.body58
  %cmp.n64 = icmp eq i64 %n.vec57, %wide.trip.count.i.i.i24
  br i1 %cmp.n64, label %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph52.preheader

scalar.ph52.preheader:                            ; preds = %.lr.ph.i.i.i23, %middle.block63
  %indvars.iv.i.i.i25.ph = phi i64 [ 0, %.lr.ph.i.i.i23 ], [ %n.vec57, %middle.block63 ] ; 3 uses
  %xtraiter68 = and i64 %wide.trip.count.i.i.i24, 3 ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol

scalar.ph52.prol:                                 ; preds = %scalar.ph52.preheader, %scalar.ph52.prol
  %indvars.iv.i.i.i25.prol = phi i64 [ %indvars.iv.next.i.i.i26.prol, %scalar.ph52.prol ], [ %indvars.iv.i.i.i25.ph, %scalar.ph52.preheader ] ; 3 uses
  %prol.iter70 = phi i64 [ %prol.iter70.next, %scalar.ph52.prol ], [ 0, %scalar.ph52.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i25.prol
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i25.prol
  %i.dd = load i32, ptr %i.dc, align 2, !tbaa !59
  store i32 %i.dd, ptr %i.db, align 2, !tbaa !59
  %indvars.iv.next.i.i.i26.prol = add nuw nsw i64 %indvars.iv.i.i.i25.prol, 1 ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol, !llvm.loop !78

scalar.ph52.prol.loopexit:                        ; preds = %scalar.ph52.prol, %scalar.ph52.preheader
  %indvars.iv.i.i.i25.unr = phi i64 [ %indvars.iv.i.i.i25.ph, %scalar.ph52.preheader ], [ %indvars.iv.next.i.i.i26.prol, %scalar.ph52.prol ]
  %i.de = sub nsw i64 %indvars.iv.i.i.i25.ph, %wide.trip.count.i.i.i24
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph52

scalar.ph52:                                      ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52
  %indvars.iv.i.i.i25 = phi i64 [ %indvars.iv.next.i.i.i26.3, %scalar.ph52 ], [ %indvars.iv.i.i.i25.unr, %scalar.ph52.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i25
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i25
  %i.di = load i32, ptr %i.dh, align 2, !tbaa !59
  store i32 %i.di, ptr %i.dg, align 2, !tbaa !59
  %indvars.iv.next.i.i.i26 = add nuw nsw i64 %indvars.iv.i.i.i25, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i26
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i26
  %i.dl = load i32, ptr %i.dk, align 2, !tbaa !59
  store i32 %i.dl, ptr %i.dj, align 2, !tbaa !59
  %indvars.iv.next.i.i.i26.1 = add nuw nsw i64 %indvars.iv.i.i.i25, 2 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i26.1
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i26.1
  %i.do = load i32, ptr %i.dn, align 2, !tbaa !59
  store i32 %i.do, ptr %i.dm, align 2, !tbaa !59
  %indvars.iv.next.i.i.i26.2 = add nuw nsw i64 %indvars.iv.i.i.i25, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i26.2
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i26.2
  %i.dr = load i32, ptr %i.dq, align 2, !tbaa !59
  store i32 %i.dr, ptr %i.dp, align 2, !tbaa !59
  %indvars.iv.next.i.i.i26.3 = add nuw nsw i64 %indvars.iv.i.i.i25, 4 ; 2 uses
  %exitcond.not.i.i.i27.3 = icmp eq i64 %indvars.iv.next.i.i.i26.3, %wide.trip.count.i.i.i24
  br i1 %exitcond.not.i.i.i27.3, label %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph52, !llvm.loop !79

_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairE8allocateEi.exit.i.i
  %.not.i5.i.i20 = icmp eq ptr %i.ct, null
  br i1 %.not.i5.i.i20, label %_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i

_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i: ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52, %middle.block63, %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !50, !range !28, !noundef !34
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.l, label %_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  %.pre2.pre.pre.i22 = load i32, ptr %i.cf, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.i.i
  %.pre2.i21 = phi i32 [ %i.cq, %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.i.i ], [ %.pre2.pre.pre.i22, %bb.l ], [ %i.cq, %_ZNK20btAlignedObjectArrayI20btInternalVertexPairE4copyEiiPS0_.exit.thread.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.dv, align 8, !tbaa !50
  store ptr %.0.i.i.i19, ptr %i.cs, align 8, !tbaa !51
  store i32 %i.cl, ptr %i.ch, align 8, !tbaa !53
  %.pre = load i32, ptr %i.h, align 8, !tbaa !46
  br label %_ZN20btAlignedObjectArrayI20btInternalVertexPairE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI20btInternalVertexPairE9push_backERKS0_.exit: ; preds = %_ZN20btAlignedObjectArrayI14btInternalEdgeE9push_backERKS0_.exit, %bb.i, %_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i
  %i.dw = phi i32 [ %.pre, %_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i ], [ %i.bx, %bb.i ], [ %i.bx, %_ZN20btAlignedObjectArrayI14btInternalEdgeE9push_backERKS0_.exit ]
  %i.dx = phi i32 [ %.pre2.i21, %_ZN20btAlignedObjectArrayI20btInternalVertexPairE10deallocateEv.exit.i.i ], [ %i.cg, %bb.i ], [ %i.cg, %_ZN20btAlignedObjectArrayI14btInternalEdgeE9push_backERKS0_.exit ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !51
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load i32, ptr %1, align 2, !tbaa !59
  store i32 %i.ec, ptr %i.eb, align 2, !tbaa !59
  %i.ed = add nsw i32 %i.dx, 1
  store i32 %i.ed, ptr %i.cf, align 4, !tbaa !52
  %i.ee = icmp slt i32 %i.i, %i.dw
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairE9push_backERKS0_.exit
  tail call void @_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 2 dereferenceable(4) %1)
  %i.ef = load i16, ptr %1, align 2, !tbaa !57
  %i.eg = sext i16 %i.ef to i32
  %i.eh = load i16, ptr %i.c, align 2, !tbaa !58
  %i.ei = sext i16 %i.eh to i32
  %i.ej = shl nsw i32 %i.ei, 16
  %i.ek = add nsw i32 %i.ej, %i.eg
  %i.el = load i32, ptr %i.h, align 8, !tbaa !46
  %i.em = add nsw i32 %i.el, -1
  %i.en = and i32 %i.ek, %i.em
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN20btAlignedObjectArrayI20btInternalVertexPairE9push_backERKS0_.exit
  %.0 = phi i32 [ %i.en, %bb.m ], [ %i.k, %_ZN20btAlignedObjectArrayI20btInternalVertexPairE9push_backERKS0_.exit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !32
  %i.eq = sext i32 %.0 to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !54
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !32
  %i.ev = sext i32 %i.aj to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ev
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !54
  store i32 %i.aj, ptr %i.er, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK9btHashMapI20btInternalVertexPair14btInternalEdgeE9findIndexERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN18btConvexPolyhedron11initialize2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(172) initializes((104, 120)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27   ; 19 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 4 uses
  br i1 %i.f, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge232:                                   ; preds = %._crit_edge, %bb.a
  %i.k = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ah, %._crit_edge ] ; 4 uses
  %i.l = extractelement <4 x float> %i.k, i64 3
  %i.m = fdiv float 1.000000e+00, %i.l            ; 3 uses
  %i.n = extractelement <4 x float> %i.k, i64 2
  %i.o = fmul float %i.m, %i.n                    ; 6 uses
  store float %i.o, ptr %i.a, align 8, !tbaa !36
  %i.p = extractelement <4 x float> %i.k, i64 1
  %i.q = fmul float %i.m, %i.p                    ; 6 uses
  store float %i.q, ptr %i.b, align 4, !tbaa !36
  %i.r = extractelement <4 x float> %i.k, i64 0
  %i.s = fmul float %i.m, %i.r                    ; 6 uses
  store float %i.s, ptr %i.c, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store float f0x7F7FFFFF, ptr %i.t, align 8, !tbaa !88
  br i1 %i.f, label %.lr.ph237, label %.preheader

.lr.ph237:                                        ; preds = %._crit_edge232
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %wide.trip.count281 = zext nneg i32 %i.e to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph231, %._crit_edge
  %indvars.iv273 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next274, %._crit_edge ] ; 2 uses
  %i.w = phi <4 x float> [ zeroinitializer, %.lr.ph231 ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %indvars.iv273 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !38   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %.not220 = icmp slt i32 %i.z, 3
  br i1 %.not220, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = add nsw i32 %i.z, -1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !54
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.ah = phi <4 x float> [ %i.w, %bb.b ], [ %i.ch, %bb.c ] ; 2 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge232, label %bb.b, !llvm.loop !80

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ai = phi i32 [ %.pre, %.lr.ph ], [ %i.an, %bb.c ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %i.aj = phi <4 x float> [ %i.w, %.lr.ph ], [ %i.ch, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ao ; 2 uses
  %i.aq = load float, ptr %i.af, align 4, !tbaa !36 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36 ; 2 uses
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !36 ; 2 uses
  %i.aw = fsub float %i.aq, %i.av                 ; 2 uses
  %i.ax = fneg float %i.aw
  %i.ay = fadd float %i.aq, %i.as
  %i.az = fadd float %i.ay, %i.av
  %i.ba = fmul float %i.az, f0x3EAAAAAB
  %i.bb = load <2 x float>, ptr %i.ae, align 4, !tbaa !36 ; 4 uses
  %i.bc = load <2 x float>, ptr %i.al, align 4, !tbaa !36 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bb, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop424 = fsub <2 x float> %i.bb, %i.bc
  %i.be = extractelement <2 x float> %foldExtExtBinop424, i64 1 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.ap, align 4, !tbaa !36 ; 2 uses
  %i.bg = fmul float %i.bd, %i.ax
  %i.bh = fsub <2 x float> %i.bb, %i.bf           ; 3 uses
  %i.bi = fneg <2 x float> %i.bh                  ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 1
  %i.bk = fmul float %i.at, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.be, float %i.aw, float %i.bk) ; 2 uses
  %i.bm = extractelement <2 x float> %i.bh, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bm, float %i.bg) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bi, i64 0
  %i.bp = fmul float %i.be, %i.bo
  %i.bq = extractelement <2 x float> %i.bh, i64 1
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bq, float %i.bp) ; 2 uses
  %i.bs = fmul float %i.bn, %i.bn
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bt)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bu)
  %i.bv = fmul float %sqrt.i, 5.000000e-01        ; 3 uses
  %i.bw = fadd <2 x float> %i.bb, %i.bc
  %i.bx = fadd <2 x float> %i.bw, %i.bf
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = fmul float %i.ba, %i.bv
  %i.ca = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cb = fmul <2 x float> %i.bx, splat (float f0x3EAAAAAB)
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ce = fmul <4 x float> %i.cc, %i.cd
  %i.cf = shufflevector <4 x float> %i.ca, <4 x float> %i.ce, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bv, i64 3
  %i.ch = fadd <4 x float> %i.aj, %i.cg           ; 4 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %i.ci, ptr %i.a, align 8, !tbaa !36
  %i.cj = extractelement <4 x float> %i.ch, i64 0
  store float %i.cj, ptr %i.c, align 8, !tbaa !36
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !81

.preheader:                                       ; preds = %bb.f, %._crit_edge232
  %i.ck = phi float [ f0x7F7FFFFF, %._crit_edge232 ], [ %i.dg, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph246, label %._crit_edge247

.lr.ph246:                                        ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %wide.trip.count286 = zext nneg i32 %i.cm to i64
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph237, %bb.f
  %indvars.iv278 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next279, %bb.f ] ; 2 uses
  %i.cq = phi float [ f0x7F7FFFFF, %.lr.ph237 ], [ %i.dg, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %indvars.iv278 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cv = load float, ptr %i.cs, align 4, !tbaa !36
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !36
  %i.cx = load float, ptr %i.cu, align 4, !tbaa !36
  %i.cy = fmul float %i.q, %i.cw
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.o, float %i.cv, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.cx, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.dc = load float, ptr %i.db, align 4, !tbaa !36
  %i.dd = fadd float %i.dc, %i.da
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.dd) ; 3 uses
  %i.df = fcmp olt float %i.de, %i.cq
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.de, ptr %i.t, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dg = phi float [ %i.de, %bb.e ], [ %i.cq, %bb.d ] ; 2 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.preheader, label %bb.d, !llvm.loop !82

._crit_edge247:                                   ; preds = %bb.g, %.preheader
  %.097.lcssa = phi float [ f0x7F7FFFFF, %.preheader ], [ %.198, %bb.g ] ; 2 uses
  %.092.lcssa = phi float [ f0xFF7FFFFF, %.preheader ], [ %.1, %bb.g ] ; 2 uses
  %i.dh = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader ], [ %i.ez, %bb.g ] ; 2 uses
  %i.di = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader ], [ %i.fa, %bb.g ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dk = fadd <2 x float> %i.dh, %i.di
  %i.dl = fadd float %.097.lcssa, %.092.lcssa
  store <2 x float> %i.dk, ptr %i.dj, align 4, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.dl, ptr %i.dm, align 4, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float 0.000000e+00, ptr %i.dn, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.dp = fsub float %.092.lcssa, %.097.lcssa     ; 2 uses
  %i.dq = fsub <2 x float> %i.di, %i.dh           ; 3 uses
  store <2 x float> %i.dq, ptr %i.do, align 4, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.dp, ptr %i.dr, align 4, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float 0.000000e+00, ptr %i.ds, align 8, !tbaa !36
  %i.dt = fdiv float %i.ck, f0x3FDDB3D7           ; 8 uses
  %i.du = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.dv = extractelement <2 x float> %i.dq, i64 1 ; 2 uses
  %i.dw = fcmp olt float %i.du, %i.dv             ; 2 uses
  %..i = select i1 %i.dw, float %i.dv, float %i.du
  %.5.i = zext i1 %i.dw to i32
  %i.dx = fcmp olt float %..i, %i.dp
  %i.dy = select i1 %i.dx, i32 2, i32 %.5.i       ; 2 uses
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !36 ; 2 uses
  %i.ec = fneg float %i.dt
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.eb, float 5.000000e-01, float %i.ec)
  %i.ee = fmul float %i.ed, f0x3A800000
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store float %i.dt, ptr %i.eg, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  store float %i.dt, ptr %i.eh, align 4, !tbaa !36
  store float %i.dt, ptr %i.ef, align 8, !tbaa !36
  %i.ei = fmul float %i.eb, 5.000000e-01          ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz ; 2 uses
  store float %i.ei, ptr %i.ej, align 4, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %.not126.i = icmp sgt i32 %i.e, 0
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %.not126.i.1 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.1 = zext nneg i32 %i.e to i64
  %.not126.i.2 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.2 = zext nneg i32 %i.e to i64
  %.not126.i.3 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.3 = zext nneg i32 %i.e to i64
  %.not126.i.4 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.4 = zext nneg i32 %i.e to i64
  %.not126.i.5 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.5 = zext nneg i32 %i.e to i64
  %.not126.i.6 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.6 = zext nneg i32 %i.e to i64
  %wide.trip.count.i.7 = zext nneg i32 %i.e to i64 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.ek, align 8
  %i.en = load ptr, ptr %i.ek, align 8
  %i.eo = load ptr, ptr %i.ek, align 8
  %i.ep = load ptr, ptr %i.ek, align 8
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = load ptr, ptr %i.ek, align 8
  %i.es = load ptr, ptr %i.ek, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph246, %bb.g
  %indvars.iv283 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next284, %bb.g ] ; 2 uses
  %.092244 = phi float [ f0xFF7FFFFF, %.lr.ph246 ], [ %.1, %bb.g ] ; 2 uses
  %.097241 = phi float [ f0x7F7FFFFF, %.lr.ph246 ], [ %.198, %bb.g ] ; 2 uses
  %i.et = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph246 ], [ %i.ez, %bb.g ] ; 2 uses
  %i.eu = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph246 ], [ %i.fa, %bb.g ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv283 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.ev, align 4, !tbaa !36 ; 4 uses
  %i.ex = fcmp olt <2 x float> %i.ew, %i.et
  %i.ey = fcmp ogt <2 x float> %i.ew, %i.eu
  %i.ez = select <2 x i1> %i.ex, <2 x float> %i.ew, <2 x float> %i.et ; 2 uses
  %i.fa = select <2 x i1> %i.ey, <2 x float> %i.ew, <2 x float> %i.eu ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !36 ; 4 uses
  %i.fd = fcmp olt float %i.fc, %.097241
  %.198 = select i1 %i.fd, float %i.fc, float %.097241 ; 2 uses
  %i.fe = fcmp ogt float %i.fc, %.092244
  %.1 = select i1 %i.fe, float %i.fc, float %.092244 ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge247, label %bb.g, !llvm.loop !83

bb.h:                                             ; preds = %._crit_edge247, %_ZNK18btConvexPolyhedron15testContainmentEv.exit
  %i.ff = phi float [ %i.ei, %._crit_edge247 ], [ %i.ki, %_ZNK18btConvexPolyhedron15testContainmentEv.exit ]
  %.089254 = phi i32 [ 0, %._crit_edge247 ], [ %i.kj, %_ZNK18btConvexPolyhedron15testContainmentEv.exit ]
  %i.fg = load float, ptr %i.ef, align 8          ; 2 uses
  %i.fh = load float, ptr %i.eh, align 4          ; 2 uses
  %i.fi = load float, ptr %i.eg, align 8          ; 2 uses
  %i.fj = fsub float %i.o, %i.fg                  ; 4 uses
  %i.fk = fsub float %i.q, %i.fh                  ; 4 uses
  %i.fl = fsub float %i.s, %i.fi                  ; 4 uses
  %i.fm = fadd float %i.fi, %i.s                  ; 4 uses
  %i.fn = fadd float %i.fh, %i.q                  ; 4 uses
  %i.fo = fadd float %i.o, %i.fg                  ; 4 uses
  br i1 %.not126.i, label %.lr.ph.i, label %._crit_edge.i.7.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.el, i64 %indvars.iv.i ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !36
  %i.fu = load float, ptr %i.fr, align 4, !tbaa !36
  %i.fv = load float, ptr %i.fs, align 4, !tbaa !36
  %i.fw = fmul float %i.fn, %i.fu
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.ft, float %i.fw)
  %i.fy = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fv, float %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !36
  %i.gb = fadd float %i.ga, %i.fy
  %i.gc = fcmp ule float %i.gb, 0.000000e+00
  br i1 %i.gc, label %bb.i, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

._crit_edge.i:                                    ; preds = %bb.i
  br i1 %.not126.i.1, label %.lr.ph.i.1, label %._crit_edge.i.7.loopexit

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %bb.j
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %bb.j ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.em, i64 %indvars.iv.i.1 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 36
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gh = load float, ptr %i.ge, align 4, !tbaa !36
  %i.gi = load float, ptr %i.gf, align 4, !tbaa !36
  %i.gj = load float, ptr %i.gg, align 4, !tbaa !36
  %i.gk = fmul float %i.fn, %i.gi
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.gh, float %i.gk)
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.gj, float %i.gl)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 44
  %i.go = load float, ptr %i.gn, align 4, !tbaa !36
  %i.gp = fadd float %i.go, %i.gm
  %i.gq = fcmp ule float %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.j, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.j:                                             ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !0

._crit_edge.i.1:                                  ; preds = %bb.j
  br i1 %.not126.i.2, label %.lr.ph.i.2, label %._crit_edge.i.7.loopexit

.lr.ph.i.2:                                       ; preds = %._crit_edge.i.1, %bb.k
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %bb.k ], [ 0, %._crit_edge.i.1 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %i.en, i64 %indvars.iv.i.2 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.gv = load float, ptr %i.gs, align 4, !tbaa !36
  %i.gw = load float, ptr %i.gt, align 4, !tbaa !36
  %i.gx = load float, ptr %i.gu, align 4, !tbaa !36
  %i.gy = fmul float %i.fk, %i.gw
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.gv, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.gx, float %i.gz)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 44
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !36
  %i.hd = fadd float %i.hc, %i.ha
  %i.he = fcmp ule float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.k, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.k:                                             ; preds = %.lr.ph.i.2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %wide.trip.count.i.2
  br i1 %exitcond.not.i.2, label %._crit_edge.i.2, label %.lr.ph.i.2, !llvm.loop !0

._crit_edge.i.2:                                  ; preds = %bb.k
  br i1 %.not126.i.3, label %.lr.ph.i.3, label %._crit_edge.i.7.loopexit

.lr.ph.i.3:                                       ; preds = %._crit_edge.i.2, %bb.l
  %indvars.iv.i.3 = phi i64 [ %indvars.iv.next.i.3, %bb.l ], [ 0, %._crit_edge.i.2 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [48 x i8], ptr %i.eo, i64 %indvars.iv.i.3 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 36
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hj = load float, ptr %i.hg, align 4, !tbaa !36
  %i.hk = load float, ptr %i.hh, align 4, !tbaa !36
  %i.hl = load float, ptr %i.hi, align 4, !tbaa !36
  %i.hm = fmul float %i.fk, %i.hk
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.hj, float %i.hm)
  %i.ho = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.hl, float %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 44
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !36
  %i.hr = fadd float %i.hq, %i.ho
  %i.hs = fcmp ule float %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.l, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.l:                                             ; preds = %.lr.ph.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i.3
  br i1 %exitcond.not.i.3, label %._crit_edge.i.3, label %.lr.ph.i.3, !llvm.loop !0

._crit_edge.i.3:                                  ; preds = %bb.l
  br i1 %.not126.i.4, label %.lr.ph.i.4, label %._crit_edge.i.7.loopexit

.lr.ph.i.4:                                       ; preds = %._crit_edge.i.3, %bb.m
  %indvars.iv.i.4 = phi i64 [ %indvars.iv.next.i.4, %bb.m ], [ 0, %._crit_edge.i.3 ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %indvars.iv.i.4 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 36
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !36
  %i.hy = load float, ptr %i.hv, align 4, !tbaa !36
  %i.hz = load float, ptr %i.hw, align 4, !tbaa !36
  %i.ia = fmul float %i.fn, %i.hy
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.hx, float %i.ia)
  %i.ic = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.hz, float %i.ib)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 44
  %i.ie = load float, ptr %i.id, align 4, !tbaa !36
  %i.if = fadd float %i.ie, %i.ic
  %i.ig = fcmp ule float %i.if, 0.000000e+00
  br i1 %i.ig, label %bb.m, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.m:                                             ; preds = %.lr.ph.i.4
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, %wide.trip.count.i.4
  br i1 %exitcond.not.i.4, label %._crit_edge.i.4, label %.lr.ph.i.4, !llvm.loop !0

._crit_edge.i.4:                                  ; preds = %bb.m
  br i1 %.not126.i.5, label %.lr.ph.i.5, label %._crit_edge.i.7.loopexit

.lr.ph.i.5:                                       ; preds = %._crit_edge.i.4, %bb.n
  %indvars.iv.i.5 = phi i64 [ %indvars.iv.next.i.5, %bb.n ], [ 0, %._crit_edge.i.4 ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [48 x i8], ptr %i.eq, i64 %indvars.iv.i.5 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 36
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.il = load float, ptr %i.ii, align 4, !tbaa !36
  %i.im = load float, ptr %i.ij, align 4, !tbaa !36
  %i.in = load float, ptr %i.ik, align 4, !tbaa !36
  %i.io = fmul float %i.fn, %i.im
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.il, float %i.io)
  %i.iq = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.in, float %i.ip)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 44
  %i.is = load float, ptr %i.ir, align 4, !tbaa !36
  %i.it = fadd float %i.is, %i.iq
  %i.iu = fcmp ule float %i.it, 0.000000e+00
  br i1 %i.iu, label %bb.n, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.n:                                             ; preds = %.lr.ph.i.5
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, %wide.trip.count.i.5
  br i1 %exitcond.not.i.5, label %._crit_edge.i.5, label %.lr.ph.i.5, !llvm.loop !0

._crit_edge.i.5:                                  ; preds = %bb.n
  br i1 %.not126.i.6, label %.lr.ph.i.6, label %._crit_edge.i.7.loopexit

.lr.ph.i.6:                                       ; preds = %._crit_edge.i.5, %bb.o
  %indvars.iv.i.6 = phi i64 [ %indvars.iv.next.i.6, %bb.o ], [ 0, %._crit_edge.i.5 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [48 x i8], ptr %i.er, i64 %indvars.iv.i.6 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.iz = load float, ptr %i.iw, align 4, !tbaa !36
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !36
  %i.jb = load float, ptr %i.iy, align 4, !tbaa !36
  %i.jc = fmul float %i.fk, %i.ja
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.iz, float %i.jc)
  %i.je = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.jb, float %i.jd)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 44
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !36
  %i.jh = fadd float %i.jg, %i.je
  %i.ji = fcmp ule float %i.jh, 0.000000e+00
  br i1 %i.ji, label %bb.o, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.o:                                             ; preds = %.lr.ph.i.6
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.next.i.6, %wide.trip.count.i.6
  br i1 %exitcond.not.i.6, label %._crit_edge.i.6, label %.lr.ph.i.6, !llvm.loop !0

._crit_edge.i.6:                                  ; preds = %bb.o
  br i1 %i.f, label %.lr.ph.i.7, label %._crit_edge.i.7.loopexit

.lr.ph.i.7:                                       ; preds = %._crit_edge.i.6, %bb.p
  %indvars.iv.i.7 = phi i64 [ %indvars.iv.next.i.7, %bb.p ], [ 0, %._crit_edge.i.6 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %indvars.iv.i.7 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 36
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jn = load float, ptr %i.jk, align 4, !tbaa !36
  %i.jo = load float, ptr %i.jl, align 4, !tbaa !36
  %i.jp = load float, ptr %i.jm, align 4, !tbaa !36
  %i.jq = fmul float %i.fk, %i.jo
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.jn, float %i.jq)
  %i.js = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.jp, float %i.jr)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 44
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !36
  %i.jv = fadd float %i.ju, %i.js
  %i.jw = fcmp ule float %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.p, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.p:                                             ; preds = %.lr.ph.i.7
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i.7
  br i1 %exitcond.not.i.7, label %._crit_edge.i.7, label %.lr.ph.i.7, !llvm.loop !0

._crit_edge.i.7.loopexit:                         ; preds = %bb.h, %._crit_edge.i, %._crit_edge.i.1, %._crit_edge.i.2, %._crit_edge.i.3, %._crit_edge.i.4, %._crit_edge.i.5, %._crit_edge.i.6
  %.pre322 = zext nneg i32 %i.e to i64
  br label %._crit_edge.i.7

._crit_edge.i.7:                                  ; preds = %bb.p, %._crit_edge.i.7.loopexit
  %wide.trip.count.i168.pre-phi = phi i64 [ %.pre322, %._crit_edge.i.7.loopexit ], [ %wide.trip.count.i.7, %bb.p ] ; 8 uses
  %i.jx = fsub float %i.ck, %i.dt
  %i.jy = fmul float %i.jx, f0x3A800000           ; 2 uses
  %i.jz = shl nuw nsw i32 1, %i.dy
  %i.ka = and i32 %i.jz, 3                        ; 2 uses
  %i.kb = shl nuw nsw i32 1, %i.ka
  %i.kc = and i32 %i.kb, 3
  %i.kd = zext nneg i32 %i.ka to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.kd ; 3 uses
  %i.kf = zext nneg i32 %i.kc to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.kf ; 4 uses
  %.pre321 = load float, ptr %i.kg, align 4, !tbaa !36
  %i.kh = load ptr, ptr %i.ek, align 8            ; 8 uses
  br label %bb.q

_ZNK18btConvexPolyhedron15testContainmentEv.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7
  %i.ki = fsub float %i.ff, %i.ee                 ; 2 uses
  store float %i.ki, ptr %i.ej, align 4, !tbaa !36
  %i.kj = add nuw nsw i32 %.089254, 1             ; 2 uses
  %exitcond298.not = icmp eq i32 %i.kj, 1024
  br i1 %exitcond298.not, label %.critedge, label %bb.h, !llvm.loop !84

.critedge:                                        ; preds = %_ZNK18btConvexPolyhedron15testContainmentEv.exit
  store float %i.dt, ptr %i.eg, align 8, !tbaa !36
  store float %i.dt, ptr %i.eh, align 4, !tbaa !36
  store float %i.dt, ptr %i.ef, align 8, !tbaa !36
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge.i.7, %.critedge109
  %i.kk = phi float [ %.pre321, %._crit_edge.i.7 ], [ %i.ko, %.critedge109 ]
  %.0260 = phi i32 [ 0, %._crit_edge.i.7 ], [ %i.pg, %.critedge109 ]
  %i.kl = load float, ptr %i.ke, align 4, !tbaa !36 ; 2 uses
  %i.km = fadd float %i.jy, %i.kl
  store float %i.km, ptr %i.ke, align 4, !tbaa !36
  %i.kn = load float, ptr %i.kg, align 4, !tbaa !36
  %i.ko = fadd float %i.jy, %i.kn                 ; 2 uses
  store float %i.ko, ptr %i.kg, align 4, !tbaa !36
  %i.kp = load float, ptr %i.ef, align 8          ; 2 uses
  %i.kq = load float, ptr %i.eh, align 4          ; 2 uses
  %i.kr = load float, ptr %i.eg, align 8          ; 2 uses
  %i.ks = fsub float %i.o, %i.kp                  ; 4 uses
  %i.kt = fsub float %i.q, %i.kq                  ; 4 uses
  %i.ku = fsub float %i.s, %i.kr                  ; 4 uses
  %i.kv = fadd float %i.s, %i.kr                  ; 4 uses
  %i.kw = fadd float %i.q, %i.kq                  ; 4 uses
  %i.kx = fadd float %i.o, %i.kp                  ; 4 uses
  br i1 %i.f, label %.lr.ph.i164.us, label %.critedge109

.lr.ph.i164.us:                                   ; preds = %bb.q, %bb.r
  %indvars.iv.i169.us = phi i64 [ %indvars.iv.next.i170.us, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 36
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.lc = load float, ptr %i.kz, align 4, !tbaa !36
  %i.ld = load float, ptr %i.la, align 4, !tbaa !36
  %i.le = load float, ptr %i.lb, align 4, !tbaa !36
  %i.lf = fmul float %i.kw, %i.ld
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.lc, float %i.lf)
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.le, float %i.lg)
  %i.li = getelementptr inbounds nuw i8, ptr %i.ky, i64 44
  %i.lj = load float, ptr %i.li, align 4, !tbaa !36
  %i.lk = fadd float %i.lj, %i.lh
  %i.ll = fcmp ule float %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.r, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.r:                                             ; preds = %.lr.ph.i164.us
  %indvars.iv.next.i170.us = add nuw nsw i64 %indvars.iv.i169.us, 1 ; 2 uses
  %exitcond.not.i171.us = icmp eq i64 %indvars.iv.next.i170.us, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us, label %.lr.ph.i164.us.1, label %.lr.ph.i164.us, !llvm.loop !0

.lr.ph.i164.us.1:                                 ; preds = %bb.r, %bb.s
  %indvars.iv.i169.us.1 = phi i64 [ %indvars.iv.next.i170.us.1, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.lm = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.1 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 36
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.lq = load float, ptr %i.ln, align 4, !tbaa !36
  %i.lr = load float, ptr %i.lo, align 4, !tbaa !36
  %i.ls = load float, ptr %i.lp, align 4, !tbaa !36
  %i.lt = fmul float %i.kw, %i.lr
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.lq, float %i.lt)
  %i.lv = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.ls, float %i.lu)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 44
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !36
  %i.ly = fadd float %i.lx, %i.lv
  %i.lz = fcmp ule float %i.ly, 0.000000e+00
  br i1 %i.lz, label %bb.s, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.s:                                             ; preds = %.lr.ph.i164.us.1
  %indvars.iv.next.i170.us.1 = add nuw nsw i64 %indvars.iv.i169.us.1, 1 ; 2 uses
  %exitcond.not.i171.us.1 = icmp eq i64 %indvars.iv.next.i170.us.1, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.1, label %.lr.ph.i164.us.2, label %.lr.ph.i164.us.1, !llvm.loop !0

.lr.ph.i164.us.2:                                 ; preds = %bb.s, %bb.t
  %indvars.iv.i169.us.2 = phi i64 [ %indvars.iv.next.i170.us.2, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ma = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.2 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 36
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %i.me = load float, ptr %i.mb, align 4, !tbaa !36
  %i.mf = load float, ptr %i.mc, align 4, !tbaa !36
  %i.mg = load float, ptr %i.md, align 4, !tbaa !36
  %i.mh = fmul float %i.kt, %i.mf
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.me, float %i.mh)
  %i.mj = tail call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.mg, float %i.mi)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 44
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !36
  %i.mm = fadd float %i.ml, %i.mj
  %i.mn = fcmp ule float %i.mm, 0.000000e+00
  br i1 %i.mn, label %bb.t, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.t:                                             ; preds = %.lr.ph.i164.us.2
  %indvars.iv.next.i170.us.2 = add nuw nsw i64 %indvars.iv.i169.us.2, 1 ; 2 uses
  %exitcond.not.i171.us.2 = icmp eq i64 %indvars.iv.next.i170.us.2, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.2, label %.lr.ph.i164.us.3, label %.lr.ph.i164.us.2, !llvm.loop !0

.lr.ph.i164.us.3:                                 ; preds = %bb.t, %bb.u
  %indvars.iv.i169.us.3 = phi i64 [ %indvars.iv.next.i170.us.3, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.3 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 36
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %i.ms = load float, ptr %i.mp, align 4, !tbaa !36
  %i.mt = load float, ptr %i.mq, align 4, !tbaa !36
  %i.mu = load float, ptr %i.mr, align 4, !tbaa !36
  %i.mv = fmul float %i.kt, %i.mt
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.ms, float %i.mv)
  %i.mx = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.mu, float %i.mw)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 44
  %i.mz = load float, ptr %i.my, align 4, !tbaa !36
  %i.na = fadd float %i.mz, %i.mx
  %i.nb = fcmp ule float %i.na, 0.000000e+00
  br i1 %i.nb, label %bb.u, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.u:                                             ; preds = %.lr.ph.i164.us.3
  %indvars.iv.next.i170.us.3 = add nuw nsw i64 %indvars.iv.i169.us.3, 1 ; 2 uses
  %exitcond.not.i171.us.3 = icmp eq i64 %indvars.iv.next.i170.us.3, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.3, label %.lr.ph.i164.us.4, label %.lr.ph.i164.us.3, !llvm.loop !0

.lr.ph.i164.us.4:                                 ; preds = %bb.u, %bb.v
  %indvars.iv.i169.us.4 = phi i64 [ %indvars.iv.next.i170.us.4, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.4 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 36
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 40
  %i.ng = load float, ptr %i.nd, align 4, !tbaa !36
  %i.nh = load float, ptr %i.ne, align 4, !tbaa !36
  %i.ni = load float, ptr %i.nf, align 4, !tbaa !36
  %i.nj = fmul float %i.kw, %i.nh
  %i.nk = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ng, float %i.nj)
  %i.nl = tail call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.ni, float %i.nk)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 44
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !36
  %i.no = fadd float %i.nn, %i.nl
  %i.np = fcmp ule float %i.no, 0.000000e+00
  br i1 %i.np, label %bb.v, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.v:                                             ; preds = %.lr.ph.i164.us.4
  %indvars.iv.next.i170.us.4 = add nuw nsw i64 %indvars.iv.i169.us.4, 1 ; 2 uses
  %exitcond.not.i171.us.4 = icmp eq i64 %indvars.iv.next.i170.us.4, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.4, label %.lr.ph.i164.us.5, label %.lr.ph.i164.us.4, !llvm.loop !0

.lr.ph.i164.us.5:                                 ; preds = %bb.v, %bb.w
  %indvars.iv.i169.us.5 = phi i64 [ %indvars.iv.next.i170.us.5, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.5 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 36
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %i.nu = load float, ptr %i.nr, align 4, !tbaa !36
  %i.nv = load float, ptr %i.ns, align 4, !tbaa !36
  %i.nw = load float, ptr %i.nt, align 4, !tbaa !36
  %i.nx = fmul float %i.kw, %i.nv
  %i.ny = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.nu, float %i.nx)
  %i.nz = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.nw, float %i.ny)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nq, i64 44
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !36
  %i.oc = fadd float %i.ob, %i.nz
  %i.od = fcmp ule float %i.oc, 0.000000e+00
  br i1 %i.od, label %bb.w, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.w:                                             ; preds = %.lr.ph.i164.us.5
  %indvars.iv.next.i170.us.5 = add nuw nsw i64 %indvars.iv.i169.us.5, 1 ; 2 uses
  %exitcond.not.i171.us.5 = icmp eq i64 %indvars.iv.next.i170.us.5, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.5, label %.lr.ph.i164.us.6, label %.lr.ph.i164.us.5, !llvm.loop !0

.lr.ph.i164.us.6:                                 ; preds = %bb.w, %bb.x
  %indvars.iv.i169.us.6 = phi i64 [ %indvars.iv.next.i170.us.6, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.6 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.oi = load float, ptr %i.of, align 4, !tbaa !36
  %i.oj = load float, ptr %i.og, align 4, !tbaa !36
  %i.ok = load float, ptr %i.oh, align 4, !tbaa !36
  %i.ol = fmul float %i.kt, %i.oj
  %i.om = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.oi, float %i.ol)
  %i.on = tail call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.ok, float %i.om)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 44
  %i.op = load float, ptr %i.oo, align 4, !tbaa !36
  %i.oq = fadd float %i.op, %i.on
  %i.or = fcmp ule float %i.oq, 0.000000e+00
  br i1 %i.or, label %bb.x, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.x:                                             ; preds = %.lr.ph.i164.us.6
  %indvars.iv.next.i170.us.6 = add nuw nsw i64 %indvars.iv.i169.us.6, 1 ; 2 uses
  %exitcond.not.i171.us.6 = icmp eq i64 %indvars.iv.next.i170.us.6, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.6, label %.lr.ph.i164.us.7, label %.lr.ph.i164.us.6, !llvm.loop !0

.lr.ph.i164.us.7:                                 ; preds = %bb.x, %bb.y
  %indvars.iv.i169.us.7 = phi i64 [ %indvars.iv.next.i170.us.7, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.os = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i169.us.7 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 36
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  %i.ow = load float, ptr %i.ot, align 4, !tbaa !36
  %i.ox = load float, ptr %i.ou, align 4, !tbaa !36
  %i.oy = load float, ptr %i.ov, align 4, !tbaa !36
  %i.oz = fmul float %i.kt, %i.ox
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ow, float %i.oz)
  %i.pb = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.oy, float %i.pa)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 44
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !36
  %i.pe = fadd float %i.pd, %i.pb
  %i.pf = fcmp ule float %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.y, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.y:                                             ; preds = %.lr.ph.i164.us.7
  %indvars.iv.next.i170.us.7 = add nuw nsw i64 %indvars.iv.i169.us.7, 1 ; 2 uses
  %exitcond.not.i171.us.7 = icmp eq i64 %indvars.iv.next.i170.us.7, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.7, label %.critedge109, label %.lr.ph.i164.us.7, !llvm.loop !0

_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us: ; preds = %.lr.ph.i164.us, %.lr.ph.i164.us.1, %.lr.ph.i164.us.2, %.lr.ph.i164.us.3, %.lr.ph.i164.us.4, %.lr.ph.i164.us.5, %.lr.ph.i164.us.6, %.lr.ph.i164.us.7
  store float %i.kl, ptr %i.ke, align 4, !tbaa !36
  store float %i.kk, ptr %i.kg, align 4, !tbaa !36
  br label %.loopexit

.critedge109:                                     ; preds = %bb.y, %bb.q
  %i.pg = add nuw nsw i32 %.0260, 1               ; 2 uses
  %exitcond320.not = icmp eq i32 %i.pg, 1024
  br i1 %exitcond320.not, label %.loopexit, label %bb.q, !llvm.loop !85

.loopexit:                                        ; preds = %.critedge109, %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !range !28
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i8, ptr %i.j, align 8, !range !28
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #14
  unreachable

_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayI20btInternalVertexPairED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !28
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #14
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI14btInternalEdgeED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !28
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.z, i1 false
  br i1 %or.cond.i.i6, label %bb.h, label %_ZN20btAlignedObjectArrayIiED2Ev.exit7

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #14
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit7:           ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %6) local_unnamed_addr #6 align 2 {
bb.a:
  %.sroa.0.i = alloca [4 x float], align 4        ; 4 uses
  store float f0x7F7FFFFF, ptr %3, align 4, !tbaa !36
  store float f0xFF7FFFFF, ptr %4, align 4, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load float, ptr %4, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi float [ %.pre, %._crit_edge.loopexit ], [ f0xFF7FFFFF, %bb.a ] ; 2 uses
  %i.p = load float, ptr %3, align 4, !tbaa !36   ; 2 uses
  %i.q = fcmp ogt float %i.p, %i.o
  br i1 %i.q, label %bb.g, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load <2 x float>, ptr %i.g, align 4
  %i.w = load float, ptr %i.h, align 4, !tbaa !36
  %i.x = load float, ptr %i.f, align 4, !tbaa !36
  %i.y = load float, ptr %i.i, align 4, !tbaa !36
  %i.z = load float, ptr %i.j, align 4, !tbaa !36
  %i.aa = load float, ptr %i.s, align 4, !tbaa !36 ; 2 uses
  %i.ab = load float, ptr %i.t, align 4, !tbaa !36 ; 2 uses
  %i.ac = load <2 x float>, ptr %1, align 4, !tbaa !36 ; 2 uses
  %i.ad = load float, ptr %i.u, align 4, !tbaa !36 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.e, align 4, !tbaa !36 ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.ai)
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> %i.v, float %i.w, i64 1
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.am)
  %i.ar = fmul float %i.ab, %i.y
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.x, float %i.ar)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.z, float %i.as)
  %i.au = load <2 x float>, ptr %i.k, align 4, !tbaa !36
  %i.av = fadd <2 x float> %i.aq, %i.au           ; 4 uses
  %i.aw = load float, ptr %i.l, align 4, !tbaa !36
  %i.ax = fadd float %i.at, %i.aw                 ; 2 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0 ; 2 uses
  %i.ay = load float, ptr %2, align 4, !tbaa !36
  %i.az = load float, ptr %i.m, align 4, !tbaa !36
  %i.ba = extractelement <2 x float> %i.av, i64 1
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = extractelement <2 x float> %i.av, i64 0
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ay, float %i.bb)
  %i.be = load float, ptr %i.n, align 4, !tbaa !36
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.be, float %i.bd) ; 4 uses
  %i.bg = load float, ptr %3, align 4, !tbaa !36
  %i.bh = fcmp olt float %i.bf, %i.bg
  br i1 %i.bh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.bf, ptr %3, align 4, !tbaa !36
  store <2 x float> %i.av, ptr %5, align 4, !tbaa !60
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = load float, ptr %4, align 4, !tbaa !36
  %i.bj = fcmp ogt float %i.bf, %i.bi
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.bf, ptr %4, align 4, !tbaa !36
  store <2 x float> %i.av, ptr %6, align 4, !tbaa !60
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.7.0..sroa_idx26, align 4, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !89

bb.g:                                             ; preds = %._crit_edge
  store float %i.o, ptr %3, align 4, !tbaa !36
  store float %i.p, ptr %4, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 2 dereferenceable(4) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38   ; 5 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !38
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i.i58 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i.i58
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !54
  %wide.load59 = load <4 x i32>, ptr %i.t, align 4, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !54
  store <4 x i32> %wide.load59, ptr %i.u, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  store i32 %i.y, ptr %i.w, align 4, !tbaa !54
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !91

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !54
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !54
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !54
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !54
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !54
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !92

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !37, !range !28, !noundef !34
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aq, align 8, !tbaa !37
  store ptr %.0.i.i.i, ptr %i.n, align 8, !tbaa !32
  store i32 %i.b, ptr %i.f, align 8, !tbaa !39
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.ar = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = sext i32 %i.d to i64
  %wide.trip.count.i = sext i32 %i.b to i64
  %i.au = shl nsw i64 %i.at, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.au
  %i.av = shl nsw i64 %wide.trip.count.i, 2       ; 3 uses
  %i.aw = sub nsw i64 %i.av, %i.au
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aw, i1 false), !tbaa !54
  store i32 %i.b, ptr %i.c, align 4, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38 ; 3 uses
  %i.az = icmp sgt i32 %i.b, %i.ay
  br i1 %i.az, label %bb.f, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39

bb.f:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !39
  %i.bc = icmp slt i32 %i.bb, %i.b
  br i1 %i.bc, label %bb.g, label %..lr.ph.i20_crit_edge

..lr.ph.i20_crit_edge:                            ; preds = %bb.f
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre52 = load ptr, ptr %.phi.trans.insert51, align 8, !tbaa !32
  br label %.lr.ph.i20

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i26 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i26, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.av, i32 noundef 16)
  %.pre.i27 = load i32, ptr %i.ax, align 4, !tbaa !38
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28: ; preds = %bb.h, %bb.g
  %i.be = phi i32 [ %.pre.i27, %bb.h ], [ %i.ay, %bb.g ] ; 3 uses
  %.0.i.i.i29 = phi ptr [ %i.bd, %bb.h ], [ null, %bb.g ] ; 9 uses
  %i.bf = icmp sgt i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32 ; 9 uses
  br i1 %i.bf, label %.lr.ph.i.i.i34, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30

.lr.ph.i.i.i34:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %.0.i.i.i2963 = ptrtoaddr ptr %.0.i.i.i29 to i64
  %wide.trip.count.i.i.i35 = zext nneg i32 %i.be to i64 ; 5 uses
  %min.iters.check65 = icmp ult i32 %i.be, 8
  %i.bj = sub i64 %i.bi, %.0.i.i.i2963
  %diff.check67 = icmp ugt i64 %i.bj, -32
  %or.cond78 = select i1 %min.iters.check65, i1 true, i1 %diff.check67
  br i1 %or.cond78, label %scalar.ph64.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i.i.i34
  %n.vec69 = and i64 %wide.trip.count.i.i.i35, 2147483640 ; 3 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %index71 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index71 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load72 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !54
  %wide.load73 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load72, ptr %i.bk, align 4, !tbaa !54
  store <4 x i32> %wide.load73, ptr %i.bn, align 4, !tbaa !54
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.bo, label %middle.block75, label %vector.body70, !llvm.loop !93

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %n.vec69, %wide.trip.count.i.i.i35
  br i1 %cmp.n76, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64.preheader

scalar.ph64.preheader:                            ; preds = %.lr.ph.i.i.i34, %middle.block75
  %indvars.iv.i.i.i36.ph = phi i64 [ 0, %.lr.ph.i.i.i34 ], [ %n.vec69, %middle.block75 ] ; 3 uses
  %xtraiter79 = and i64 %wide.trip.count.i.i.i35, 3 ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol

scalar.ph64.prol:                                 ; preds = %scalar.ph64.preheader, %scalar.ph64.prol
  %indvars.iv.i.i.i36.prol = phi i64 [ %indvars.iv.next.i.i.i37.prol, %scalar.ph64.prol ], [ %indvars.iv.i.i.i36.ph, %scalar.ph64.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %scalar.ph64.prol ], [ 0, %scalar.ph64.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i36.prol
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i36.prol
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !54
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !54
  %indvars.iv.next.i.i.i37.prol = add nuw nsw i64 %indvars.iv.i.i.i36.prol, 1 ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol, !llvm.loop !94

scalar.ph64.prol.loopexit:                        ; preds = %scalar.ph64.prol, %scalar.ph64.preheader
  %indvars.iv.i.i.i36.unr = phi i64 [ %indvars.iv.i.i.i36.ph, %scalar.ph64.preheader ], [ %indvars.iv.next.i.i.i37.prol, %scalar.ph64.prol ]
  %i.bs = sub nsw i64 %indvars.iv.i.i.i36.ph, %wide.trip.count.i.i.i35
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64
  %indvars.iv.i.i.i36 = phi i64 [ %indvars.iv.next.i.i.i37.3, %scalar.ph64 ], [ %indvars.iv.i.i.i36.unr, %scalar.ph64.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i36
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !54
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !54
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i36, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !54
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !54
  %indvars.iv.next.i.i.i37.1 = add nuw nsw i64 %indvars.iv.i.i.i36, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37.1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.1
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !54
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !54
  %indvars.iv.next.i.i.i37.2 = add nuw nsw i64 %indvars.iv.i.i.i36, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37.2
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !54
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !54
  %indvars.iv.next.i.i.i37.3 = add nuw nsw i64 %indvars.iv.i.i.i36, 4 ; 2 uses
  %exitcond.not.i.i.i38.3 = icmp eq i64 %indvars.iv.next.i.i.i37.3, %wide.trip.count.i.i.i35
  br i1 %exitcond.not.i.i.i38.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64, !llvm.loop !95

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28
  %.not.i5.i.i31 = icmp eq ptr %i.bh, null
  br i1 %.not.i5.i.i31, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32: ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64, %middle.block75, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !37, !range !28, !noundef !34
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bh)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cj, align 8, !tbaa !37
  store ptr %.0.i.i.i29, ptr %i.bg, align 8, !tbaa !32
  store i32 %i.b, ptr %i.ba, align 8, !tbaa !39
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %..lr.ph.i20_crit_edge, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33
  %i.ck = phi ptr [ %.pre52, %..lr.ph.i20_crit_edge ], [ %.0.i.i.i29, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33 ]
  %i.cl = sext i32 %i.ay to i64
  %i.cm = shl nsw i64 %i.cl, 2                    ; 2 uses
  %scevgep47 = getelementptr i8, ptr %i.ck, i64 %i.cm
  %i.cn = sub nsw i64 %i.av, %i.cm
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep47, i8 0, i64 %i.cn, i1 false), !tbaa !54
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39:  ; preds = %.lr.ph.i20, %.lr.ph.i
  store i32 %i.b, ptr %i.ax, align 4, !tbaa !38
  %i.co = icmp sgt i32 %i.b, 0
  br i1 %i.co, label %.lr.ph44, label %.preheader

.lr.ph44:                                         ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39
  %i.cp = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.cq = zext nneg i32 %i.b to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 -1, i64 %i.cr, i1 false), !tbaa !54
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32
  %i.cu = zext nneg i32 %i.b to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 -1, i64 %i.cv, i1 false), !tbaa !54
  br label %.preheader

.preheader:                                       ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39, %.lr.ph44
  %i.cw = icmp sgt i32 %i.d, 0
  br i1 %i.cw, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !51
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph46, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !57
  %i.de = sext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !58
  %i.dh = sext i16 %i.dg to i32
  %i.di = shl nsw i32 %i.dh, 16
  %i.dj = add nsw i32 %i.di, %i.de
  %i.dk = load i32, ptr %i.a, align 8, !tbaa !46
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = and i32 %i.dj, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !54
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !54
  %i.dr = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !96

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS9btVector3", !14, i64 0}
!16 = !{!"bool", !7, i64 0}
!17 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !13, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !16, i64 24}
!18 = !{!17, !16, i64 24}
!19 = !{!17, !15, i64 16}
!20 = !{!17, !8, i64 4}
!21 = !{!17, !8, i64 8}
!22 = !{!"_ZTS18btAlignedAllocatorI6btFaceLj16EE"}
!23 = !{!"p1 _ZTS6btFace", !14, i64 0}
!24 = !{!"_ZTS20btAlignedObjectArrayI6btFaceE", !22, i64 0, !8, i64 4, !8, i64 8, !23, i64 16, !16, i64 24}
!25 = !{!24, !16, i64 24}
!26 = !{!24, !23, i64 16}
!27 = !{!24, !8, i64 4}
!28 = !{i8 0, i8 2}
!29 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!30 = !{!"p1 int", !14, i64 0}
!31 = !{!"_ZTS20btAlignedObjectArrayIiE", !29, i64 0, !8, i64 4, !8, i64 8, !30, i64 16, !16, i64 24}
!32 = !{!31, !30, i64 16}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{}
!35 = !{!"float", !7, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!31, !16, i64 24}
!38 = !{!31, !8, i64 4}
!39 = !{!31, !8, i64 8}
!40 = !{!"_ZTS18btAlignedAllocatorI14btInternalEdgeLj16EE"}
!41 = !{!"p1 _ZTS14btInternalEdge", !14, i64 0}
!42 = !{!"_ZTS20btAlignedObjectArrayI14btInternalEdgeE", !40, i64 0, !8, i64 4, !8, i64 8, !41, i64 16, !16, i64 24}
!43 = !{!42, !16, i64 24}
!44 = !{!42, !41, i64 16}
!45 = !{!42, !8, i64 4}
!46 = !{!42, !8, i64 8}
!47 = !{!"_ZTS18btAlignedAllocatorI20btInternalVertexPairLj16EE"}
!48 = !{!"p1 _ZTS20btInternalVertexPair", !14, i64 0}
!49 = !{!"_ZTS20btAlignedObjectArrayI20btInternalVertexPairE", !47, i64 0, !8, i64 4, !8, i64 8, !48, i64 16, !16, i64 24}
!50 = !{!49, !16, i64 24}
!51 = !{!49, !48, i64 16}
!52 = !{!49, !8, i64 4}
!53 = !{!49, !8, i64 8}
!54 = !{!8, !8, i64 0}
!55 = !{!"short", !7, i64 0}
!56 = !{!"_ZTS20btInternalVertexPair", !55, i64 0, !55, i64 2}
!57 = !{!56, !55, i64 0}
!58 = !{!56, !55, i64 2}
!59 = !{!55, !55, i64 0}
!60 = !{!7, !7, i64 0}
!61 = !{i64 0, i64 16, !60}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!24, !8, i64 8}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = !{!"_ZTS14btInternalEdge", !55, i64 0, !55, i64 2}
!72 = !{!71, !55, i64 2}
!73 = !{!71, !55, i64 0}
!74 = distinct !{!74, !33, !62, !63}
!75 = distinct !{!75, !64}
!76 = distinct !{!76, !33, !62}
!77 = distinct !{!77, !33, !62, !63}
!78 = distinct !{!78, !64}
!79 = distinct !{!79, !33, !62}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = !{!"_ZTS9btVector3", !7, i64 0}
!87 = !{!"_ZTS18btConvexPolyhedron", !17, i64 8, !24, i64 40, !17, i64 72, !86, i64 104, !86, i64 120, !35, i64 136, !86, i64 140, !86, i64 156}
!88 = !{!87, !35, i64 136}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33, !62, !63}
!91 = distinct !{!91, !64}
!92 = distinct !{!92, !33, !62}
!93 = distinct !{!93, !33, !62, !63}
!94 = distinct !{!94, !64}
!95 = distinct !{!95, !33, !62}
!96 = distinct !{!96, !33}
end_hunk_0
