Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm11HvxSelector16scalarizeShuffleENS_8ArrayRefIiEERKNS_5SDLocENS_3MVTENS_7SDValueES7_PNS_6SDNodeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.bg = load ptr, ptr %0, align 8, !tbaa !244, !nonnull !74, !align !75 ; 2 uses
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2456
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call { ptr, i32 } %i.bk(ptr noundef nonnull align 8 dereferenceable(518456) %i.bg, ptr %.fca.0.extract75, i32 %.fca.1.extract76, ptr noundef nonnull align 8 dereferenceable(920) %i.bh) #23 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.bl, 0 ; 2 uses
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.bl, 1 ; 2 uses
  %i.bm = load i32, ptr %i.k, align 8, !tbaa !32  ; 2 uses
  %i.bn = load i32, ptr %i.l, align 4, !tbaa !33
  %.not.i155 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i155, label %bb.m, label %bb.l, !prof !35

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr %.fca.0.extract65, i32 %.fca.1.extract66)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = zext i32 %i.bm to i64
  %i.bp = load ptr, ptr %11, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  store ptr %.fca.0.extract65, ptr %i.bq, align 1
  %.sroa.32.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %.fca.1.extract66, ptr %.sroa.32.0..sroa_idx.i156, align 1
  %i.br = load i32, ptr %i.k, align 8, !tbaa !32
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.m, %bb.l, %bb.f, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %.0228, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.w
  br i1 %.not, label %._crit_edge, label %bb.c

bb.n:                                             ; preds = %._crit_edge
  %i.bu = zext i32 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.ae, ptr %10, align 8, !tbaa !249
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bu, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !250
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %10) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.bv, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.bv, 1
  %i.bw = load ptr, ptr %0, align 8, !tbaa !244, !nonnull !74, !align !75 ; 2 uses
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !235
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2456
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call { ptr, i32 } %i.ca(ptr noundef nonnull align 8 dereferenceable(518456) %i.bw, ptr %.fca.0.extract54, i32 %.fca.1.extract55, ptr noundef nonnull align 8 dereferenceable(920) %i.bx) #23 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.cb, 1
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.cd = load ptr, ptr %11, align 8, !tbaa !31
  %i.ce = load i32, ptr %i.f, align 8, !tbaa !243
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.cg, ptr %9, align 8, !tbaa !249
  %.sroa.26.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cf, ptr %.sroa.26.0..sroa_idx.i158, align 8, !tbaa !250
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cc, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %9) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.ch, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.ch, 1
  %i.ci = load ptr, ptr %0, align 8, !tbaa !244, !nonnull !74, !align !75 ; 2 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !235
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2456
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call { ptr, i32 } %i.cm(ptr noundef nonnull align 8 dereferenceable(518456) %i.ci, ptr %.fca.0.extract36, i32 %.fca.1.extract37, ptr noundef nonnull align 8 dereferenceable(920) %i.cj) #23 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.cn, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.cn, 1
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %.fca.0.extract44, ptr %17, align 8, !tbaa !40
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.fca.0.extract26, ptr %i.cp, align 8, !tbaa !40
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %.fca.1.extract27, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !34
  store ptr %17, ptr %16, align 8, !tbaa !247
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 2, ptr %i.cq, align 8, !tbaa !248
  %i.cr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.co, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.cs = load i32, ptr %i.k, align 8, !tbaa !32
  %i.ct = zext i32 %i.cs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ae, ptr %8, align 8, !tbaa !249
  %.sroa.26.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ct, ptr %.sroa.26.0..sroa_idx.i159, align 8, !tbaa !250
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.128") align 8 %8) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.cu, 1
  %i.cv = load ptr, ptr %0, align 8, !tbaa !244, !nonnull !74, !align !75 ; 2 uses
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !235
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2456
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call { ptr, i32 } %i.cz(ptr noundef nonnull align 8 dereferenceable(518456) %i.cv, ptr %.fca.0.extract9, i32 %.fca.1.extract10, ptr noundef nonnull align 8 dereferenceable(920) %i.cw) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.da, %bb.o ] ; 2 uses
  %.sroa.6177.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0176.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  store ptr %.sroa.0176.0, ptr %18, align 8, !tbaa !40
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.6177.0, ptr %.sroa.6177.0..sroa_idx, align 8, !tbaa !34
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.db, i32 noundef 587, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #23
  %.fca.0.extract = extractvalue { ptr, i32 } %i.dc, 0 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !82, !nonnull !74, !align !75
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !141
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.dg, ptr noundef %7, ptr noundef %.fca.0.extract) #23
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.fca.0.extract) #23
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !141
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.dh, ptr noundef %7) #23
  call void @_ZN4llvm11HvxSelector6selectEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %.fca.0.extract)
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !73, !nonnull !74, !align !75
  call void @_ZN4llvm12SelectionDAG15RemoveDeadNodesEv(ptr noundef nonnull align 8 dereferenceable(920) %i.di) #23
  %i.dj = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.j
  br i1 %i.dk, label %_ZN4llvm11SmallVectorINS_7SDValueELj128EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.dj) #23
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj128EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj128EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 true
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef.128") align 8) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11HvxSelector17completeToPerfectENS_8ArrayRefIjEEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.130") align 8 %0, ptr nofree readonly captures(none) %1, i64 %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !33
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.d = icmp ugt i64 %2, 8
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 4) #23
  %.pre8.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !32
  %i.e = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !31
  br label %bb.b

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i:  ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i
  %i.f = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i ], [ %i.a, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.e, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pre8.i5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 4 %1, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !32
  br label %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, %bb.b
  %i.h = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.i = trunc i64 %2 to i32
  %i.j = add i32 %i.h, %i.i
  store i32 %i.j, ptr %i.b, align 8, !tbaa !32
  %.not27 = icmp eq i32 %3, 0
  br i1 %.not27, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit
  %i.k = load ptr, ptr %0, align 8, !tbaa !31     ; 12 uses
  %i.l = zext i32 %3 to i64                       ; 2 uses
  %invariant.op = sub i32 1, %3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph29, %bb.h
  %indvar = phi i32 [ 0, %.lr.ph29 ], [ %indvar.next, %bb.h ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next.pre-phi, %bb.h ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34   ; 8 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.n)
  %or.cond = icmp eq i32 %i.o, 1
  br i1 %or.cond, label %._crit_edge33, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

._crit_edge33:                                    ; preds = %bb.c
  %.pre34 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.h

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %bb.c
  %i.p = sub i32 0, %i.n
  %i.q = and i32 %i.n, %i.p                       ; 2 uses
  %i.r = add nuw nsw i64 %indvars.iv, 1           ; 3 uses
  %.not2225 = icmp eq i64 %i.r, %i.l
  br i1 %.not2225, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread
  %i.s = trunc i64 %i.r to i32                    ; 4 uses
  %i.t = xor i32 %i.n, %i.q                       ; 11 uses
  %4 = xor i32 %indvar, -1
  %5 = add i32 %3, %4                             ; 3 uses
  %min.iters.check = icmp ult i32 %5, 8
  %.reass = add i32 %indvar, %invariant.op
  %i.u = icmp ult i32 %.reass, %i.s
  %or.cond55 = select i1 %min.iters.check, i1 true, i1 %i.u
  br i1 %or.cond55, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %5, -8                         ; 3 uses
  %i.v = add i32 %n.vec, %i.s
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue53, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %pred.store.continue53 ] ; 2 uses
  %i.w = add i32 %index, %i.s                     ; 8 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !34
  %wide.load39 = load <4 x i32>, ptr %i.z, align 4, !tbaa !34
  %i.aa = icmp eq <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %i.ab = icmp eq <4 x i32> %wide.load39, %broadcast.splat ; 4 uses
  %i.ac = extractelement <4 x i1> %i.aa, i64 0
  br i1 %i.ac, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %i.t, ptr %i.y, align 4, !tbaa !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ad = extractelement <4 x i1> %i.aa, i64 1
  br i1 %i.ad, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue
  %i.ae = add i32 %i.w, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.af
  store i32 %i.t, ptr %i.ag, align 4, !tbaa !34
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue
  %i.ah = extractelement <4 x i1> %i.aa, i64 2
  br i1 %i.ah, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  %i.ai = add i32 %i.w, 2
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aj
  store i32 %i.t, ptr %i.ak, align 4, !tbaa !34
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.al = extractelement <4 x i1> %i.aa, i64 3
  br i1 %i.al, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.am = add i32 %i.w, 3
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.an
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !34
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.ap = extractelement <4 x i1> %i.ab, i64 0
  br i1 %i.ap, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.aq = add i32 %i.w, 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  store i32 %i.t, ptr %i.as, align 4, !tbaa !34
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.at = extractelement <4 x i1> %i.ab, i64 1
  br i1 %i.at, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.au = add i32 %i.w, 5
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.av
  store i32 %i.t, ptr %i.aw, align 4, !tbaa !34
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.ax = extractelement <4 x i1> %i.ab, i64 2
  br i1 %i.ax, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.ay = add i32 %i.w, 6
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.az
  store i32 %i.t, ptr %i.ba, align 4, !tbaa !34
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bb = extractelement <4 x i1> %i.ab, i64 3
  br i1 %i.bb, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.bc = add i32 %i.w, 7
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bd
  store i32 %i.t, ptr %i.be, align 4, !tbaa !34
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.bf = icmp eq i32 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !693

middle.block:                                     ; preds = %pred.store.continue53
  %cmp.n = icmp eq i32 %5, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %.026.ph = phi i32 [ %i.v, %middle.block ], [ %i.s, %.lr.ph.preheader ] ; 5 uses
  %i.bg = sub i32 %3, %.026.ph
  %.neg = add i32 %.026.ph, 1
  %xtraiter = and i32 %i.bg, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader54
  %i.bh = zext i32 %.026.ph to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.bk = icmp eq i32 %i.bj, %i.n
  br i1 %i.bk, label %bb.d, label %.lr.ph.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %i.t, ptr %i.bi, align 4, !tbaa !34
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.0.prol = add i32 %.026.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader54
  %.026.unr = phi i32 [ %.026.ph, %.lr.ph.preheader54 ], [ %.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.bl = icmp eq i32 %3, %.neg
  br i1 %i.bl, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.g, %middle.block, %_ZN4llvm13isPowerOf2_32Ej.exit.thread
  store i32 %i.q, ptr %i.m, align 4, !tbaa !34
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.g
  %.026 = phi i32 [ %.0.1, %bb.g ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bm = zext i32 %.026 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %i.bp = icmp eq i32 %i.bo, %i.n
  br i1 %i.bp, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  store i32 %i.t, ptr %i.bn, align 4, !tbaa !34
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %.0 = add i32 %.026, 1
  %i.bq = zext i32 %.0 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !34
  %i.bt = icmp eq i32 %i.bs, %i.n
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  store i32 %i.t, ptr %i.br, align 4, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %.0.1 = add i32 %.026, 2                        ; 2 uses
  %.not22.1 = icmp eq i32 %.0.1, %3
  br i1 %.not22.1, label %._crit_edge, label %.lr.ph, !llvm.loop !694

bb.h:                                             ; preds = %._crit_edge33, %._crit_edge
  %indvars.iv.next.pre-phi = phi i64 [ %.pre34, %._crit_edge33 ], [ %i.r, %._crit_edge ] ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next.pre-phi, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %.not, label %._crit_edge30, label %bb.c, !llvm.loop !3

._crit_edge30:                                    ; preds = %bb.h, %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm11HvxSelector10getConst32EjRKNS_5SDLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.c = zext i32 %1 to i64
  %i.d = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #23
  ret { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm11HvxSelector16getSignedConst32EiRKNS_5SDLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #1 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN4llvm11HvxSelector7perfectEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE:bb.a
pred.store.if584:                                 ; preds = %pred.store.continue583
  store i32 0, ptr %next.gep571, align 4, !tbaa !34
  br label %pred.store.continue585

pred.store.continue585:                           ; preds = %pred.store.if584, %pred.store.continue583
  %i.ii = extractelement <4 x i1> %i.ib, i64 2
  br i1 %i.ii, label %pred.store.if586, label %pred.store.continue587

pred.store.if586:                                 ; preds = %pred.store.continue585
  store i32 0, ptr %next.gep572, align 4, !tbaa !34
  br label %pred.store.continue587

pred.store.continue587:                           ; preds = %pred.store.if586, %pred.store.continue585
  %i.ij = extractelement <4 x i1> %i.ib, i64 3
  br i1 %i.ij, label %pred.store.if588, label %pred.store.continue589

pred.store.if588:                                 ; preds = %pred.store.continue587
  store i32 0, ptr %next.gep573, align 4, !tbaa !34
  br label %pred.store.continue589

pred.store.continue589:                           ; preds = %pred.store.if588, %pred.store.continue587
  %index.next590 = add nuw i64 %index566, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next590, %n.vec562
  br i1 %i.ik, label %middle.block591, label %vector.body565, !llvm.loop !965

middle.block591:                                  ; preds = %pred.store.continue589
  %cmp.n592 = icmp eq i64 %i.ho, %n.vec562
  br i1 %cmp.n592, label %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i, label %.lr.ph.i.i.i.preheader685

.lr.ph.i.i.i.preheader685:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block591
  %.08.i.i.i.ph = phi ptr [ %i.en, %.lr.ph.i.i.i.preheader ], [ %i.hq, %middle.block591 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader685, %bb.t
  %.08.i.i.i = phi ptr [ %i.in, %bb.t ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader685 ] ; 3 uses
  %i.il = load i32, ptr %.08.i.i.i, align 4, !tbaa !34
  %i.im = icmp eq i32 %i.il, %i.gx
  br i1 %i.im, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i
  store i32 0, ptr %.08.i.i.i, align 4, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4 ; 2 uses
  %.not.i.i38.i = icmp eq ptr %i.in, %i.hl
  br i1 %.not.i.i38.i, label %_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !966

_ZN4llvm7replaceIRNS_11SmallVectorIjLj8EEEjEEvOT_RKT0_S8_.exit.i: ; preds = %bb.t, %middle.block591, %bb.r, %.critedge.i
  %.not30.i = icmp eq i32 %.lcssa.i, %i.em
  br i1 %.not30.i, label %._crit_edge25.i, label %bb.p, !llvm.loop !967

_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit: ; preds = %._crit_edge13.i, %._crit_edge25.i, %bb.o
  %.pr = load i32, ptr %i.de, align 8, !tbaa !32  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1005
  %i.io = load ptr, ptr %11, align 8, !tbaa !31   ; 6 uses
  %i.ip = zext i32 %.pr to i64                    ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.ip, 2             ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx4.i
  %i.ir = lshr i64 %i.ip, 2                       ; 2 uses
  %.not.i154 = icmp eq i64 %i.ir, 0
  br i1 %.not.i154, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit
  %i.is = and i64 %.idx4.i, 17179869168
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.io, i64 %i.is
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.ir, %.lr.ph.i.i.i.i ], [ %i.jf, %bb.y ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i ], [ %i.je, %bb.y ] ; 9 uses
  %i.it = load i32, ptr %.02946.i.i.i.i, align 4, !tbaa !34
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.iv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !34
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !34
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit511, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !34
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit513, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.je = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.jf = add nsw i64 %.047.i.i.i.i, -1
  %i.jg = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.jg, label %bb.u, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !968

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.y
  %i.jh = and i32 %.pr, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit
  %.pre-phi56.i.i.i.i = phi i32 [ %i.jh, %._crit_edge.loopexit.i.i.i.i ], [ %.pr, %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.io, %_ZN4llvm11HvxSelector21getPerfectCompletionsEN12_GLOBAL__N_111ShuffleMaskEj.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.thread [
    i32 3, label %bb.z
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ji = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !34
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.aa
  %.1.i.i.i.i = phi ptr [ %i.jk, %bb.aa ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.jl = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !34
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.ab
  %.2.i.i.i.i = phi ptr [ %i.jn, %bb.ab ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.jo = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !34
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.v
  %i.jq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit511: ; preds = %bb.w
  %i.jr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit513: ; preds = %bb.x
  %i.js = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit: ; preds = %bb.u, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit511, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit513, %bb.z, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.z ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.js, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit513 ], [ %i.jr, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit511 ], [ %i.jq, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.u ]
  %.not304 = icmp eq ptr %.028.i.i.i.i, %i.iq
  br i1 %.not304, label %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !1007
  store i32 268435456, ptr %i.jt, align 8, !tbaa !293, !alias.scope !1007
  br label %bb.cf

_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ju, ptr %12, align 8, !tbaa !31, !alias.scope !1006
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i32 0, ptr %i.jv, align 8, !tbaa !32, !alias.scope !1006
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 8, ptr %i.jw, align 4, !tbaa !33, !alias.scope !1006
  %i.jx = icmp ugt i32 %.pr, 8
  br i1 %i.jx, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.thread
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.ju, i64 noundef %i.ip, i64 noundef 4) #23
  %.pre8.pre.i.i.i = load i32, ptr %i.jv, align 8, !tbaa !32, !alias.scope !1006
  %i.jy = zext i32 %.pre8.pre.i.i.i to i64
  %.pre.i165 = load ptr, ptr %12, align 8, !tbaa !31, !alias.scope !1006
  br label %bb.ad

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157: ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIjLj8EEEiEEbOT_RKT0_.exit.thread
  %.not.i.i.i.i158 = icmp eq i32 %.pr, 0
  br i1 %.not.i.i.i.i158, label %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i
  %i.jz = phi ptr [ %.pre.i165, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i ], [ %i.ju, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157 ]
  %.pre8.i5.i.i = phi i64 [ %i.jy, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157 ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.pre8.i5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr readonly align 4 %i.io, i64 %.idx4.i, i1 false)
  %.pre.i.i.i159 = load i32, ptr %i.jv, align 8, !tbaa !32, !alias.scope !1006
  %i.kb = add i32 %.pre.i.i.i159, %.pr
  br label %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i

_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i: ; preds = %bb.ad, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157
  %i.kc = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i157 ], [ %i.kb, %bb.ad ]
  store i32 %i.kc, ptr %i.jv, align 8, !tbaa !32, !alias.scope !1006
  %i.kd = load ptr, ptr %12, align 8, !tbaa !31, !alias.scope !1006 ; 12 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i
  %indvar = phi i32 [ %indvar.next, %bb.aj ], [ 0, %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i ] ; 3 uses
  %indvars.iv.i160 = phi i64 [ %indvars.iv.next.pre-phi.i, %bb.aj ], [ 0, %_ZN4llvm11SmallVectorIjLj8EEC2IjvEENS_8ArrayRefIT_EE.exit.i ] ; 3 uses
  %i.ke = add i32 %i.e, %indvar
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i160 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !34 ; 8 uses
  %i.kh = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kg)
  %or.cond.i = icmp eq i32 %i.kh, 1
  br i1 %or.cond.i, label %._crit_edge33.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

._crit_edge33.i:                                  ; preds = %bb.ae
  %.pre34.i = add nuw nsw i64 %indvars.iv.i160, 1
  br label %bb.aj

_ZN4llvm13isPowerOf2_32Ej.exit.thread.i:          ; preds = %bb.ae
  %i.ki = sub i32 0, %i.kg
  %i.kj = and i32 %i.kg, %i.ki                    ; 2 uses
  %i.kk = add nuw nsw i64 %indvars.iv.i160, 1     ; 3 uses
  %.not2225.i = icmp eq i64 %i.kk, %i.l
  br i1 %.not2225.i, label %._crit_edge.i163, label %.lr.ph.preheader.i161

.lr.ph.preheader.i161:                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i
  %i.kl = trunc i64 %i.kk to i32                  ; 6 uses
  %i.km = xor i32 %i.kj, %i.kg                    ; 11 uses
  %25 = add i32 %i.e, %indvar
  %26 = sub i32 30, %25                           ; 3 uses
  %min.iters.check595 = icmp ult i32 %26, 8
  br i1 %min.iters.check595, label %.lr.ph.i162.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i161
  %reass.sub = sub i32 %i.kl, %i.ke
  %i.kn = add i32 %reass.sub, 29
  %i.ko = icmp ult i32 %i.kn, %i.kl
  br i1 %i.ko, label %.lr.ph.i162.preheader, label %vector.ph596

vector.ph596:                                     ; preds = %vector.scevcheck
  %n.vec597 = and i32 %26, -8                     ; 3 uses
  %i.kp = add i32 %n.vec597, %i.kl
  %broadcast.splatinsert598 = insertelement <4 x i32> poison, i32 %i.kg, i64 0
  %broadcast.splat599 = shufflevector <4 x i32> %broadcast.splatinsert598, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %pred.store.continue619, %vector.ph596
  %index601 = phi i32 [ 0, %vector.ph596 ], [ %index.next620, %pred.store.continue619 ] ; 2 uses
  %i.kq = add i32 %index601, %i.kl                ; 8 uses
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.kr ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load602 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !34
  %wide.load603 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !34
  %i.ku = icmp eq <4 x i32> %wide.load602, %broadcast.splat599 ; 4 uses
  %i.kv = icmp eq <4 x i32> %wide.load603, %broadcast.splat599 ; 4 uses
  %i.kw = extractelement <4 x i1> %i.ku, i64 0
  br i1 %i.kw, label %pred.store.if604, label %pred.store.continue605

pred.store.if604:                                 ; preds = %vector.body600
  store i32 %i.km, ptr %i.ks, align 4, !tbaa !34
  br label %pred.store.continue605

pred.store.continue605:                           ; preds = %pred.store.if604, %vector.body600
  %i.kx = extractelement <4 x i1> %i.ku, i64 1
  br i1 %i.kx, label %pred.store.if606, label %pred.store.continue607

pred.store.if606:                                 ; preds = %pred.store.continue605
  %i.ky = add i32 %i.kq, 1
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.kz
  store i32 %i.km, ptr %i.la, align 4, !tbaa !34
  br label %pred.store.continue607

pred.store.continue607:                           ; preds = %pred.store.if606, %pred.store.continue605
  %i.lb = extractelement <4 x i1> %i.ku, i64 2
  br i1 %i.lb, label %pred.store.if608, label %pred.store.continue609

pred.store.if608:                                 ; preds = %pred.store.continue607
  %i.lc = add i32 %i.kq, 2
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.ld
  store i32 %i.km, ptr %i.le, align 4, !tbaa !34
  br label %pred.store.continue609

pred.store.continue609:                           ; preds = %pred.store.if608, %pred.store.continue607
  %i.lf = extractelement <4 x i1> %i.ku, i64 3
  br i1 %i.lf, label %pred.store.if610, label %pred.store.continue611

pred.store.if610:                                 ; preds = %pred.store.continue609
  %i.lg = add i32 %i.kq, 3
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.lh
  store i32 %i.km, ptr %i.li, align 4, !tbaa !34
  br label %pred.store.continue611

pred.store.continue611:                           ; preds = %pred.store.if610, %pred.store.continue609
  %i.lj = extractelement <4 x i1> %i.kv, i64 0
  br i1 %i.lj, label %pred.store.if612, label %pred.store.continue613

pred.store.if612:                                 ; preds = %pred.store.continue611
  %i.lk = add i32 %i.kq, 4
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.ll
  store i32 %i.km, ptr %i.lm, align 4, !tbaa !34
  br label %pred.store.continue613

pred.store.continue613:                           ; preds = %pred.store.if612, %pred.store.continue611
  %i.ln = extractelement <4 x i1> %i.kv, i64 1
  br i1 %i.ln, label %pred.store.if614, label %pred.store.continue615

pred.store.if614:                                 ; preds = %pred.store.continue613
  %i.lo = add i32 %i.kq, 5
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.lp
  store i32 %i.km, ptr %i.lq, align 4, !tbaa !34
  br label %pred.store.continue615

pred.store.continue615:                           ; preds = %pred.store.if614, %pred.store.continue613
  %i.lr = extractelement <4 x i1> %i.kv, i64 2
  br i1 %i.lr, label %pred.store.if616, label %pred.store.continue617

pred.store.if616:                                 ; preds = %pred.store.continue615
  %i.ls = add i32 %i.kq, 6
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.lt
  store i32 %i.km, ptr %i.lu, align 4, !tbaa !34
  br label %pred.store.continue617

pred.store.continue617:                           ; preds = %pred.store.if616, %pred.store.continue615
  %i.lv = extractelement <4 x i1> %i.kv, i64 3
  br i1 %i.lv, label %pred.store.if618, label %pred.store.continue619

pred.store.if618:                                 ; preds = %pred.store.continue617
  %i.lw = add i32 %i.kq, 7
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.lx
  store i32 %i.km, ptr %i.ly, align 4, !tbaa !34
  br label %pred.store.continue619

pred.store.continue619:                           ; preds = %pred.store.if618, %pred.store.continue617
  %index.next620 = add nuw i32 %index601, 8       ; 2 uses
  %i.lz = icmp eq i32 %index.next620, %n.vec597
  br i1 %i.lz, label %middle.block621, label %vector.body600, !llvm.loop !971

middle.block621:                                  ; preds = %pred.store.continue619
  %cmp.n622 = icmp eq i32 %26, %n.vec597
  br i1 %cmp.n622, label %._crit_edge.i163, label %.lr.ph.i162.preheader

.lr.ph.i162.preheader:                            ; preds = %vector.scevcheck, %.lr.ph.preheader.i161, %middle.block621
  %.026.i.ph = phi i32 [ %i.kl, %vector.scevcheck ], [ %i.kl, %.lr.ph.preheader.i161 ], [ %i.kp, %middle.block621 ] ; 5 uses
  %i.ma = add i32 %i.e, %.026.i.ph
  %i.mb = add i32 %i.e, %.026.i.ph
  %i.mc = and i32 %i.ma, 1
  %lcmp.mod704.not.not = icmp eq i32 %i.mc, 0
  br i1 %lcmp.mod704.not.not, label %.lr.ph.i162.prol, label %.lr.ph.i162.prol.loopexit

.lr.ph.i162.prol:                                 ; preds = %.lr.ph.i162.preheader
  %i.md = zext i32 %.026.i.ph to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !34
  %i.mg = icmp eq i32 %i.mf, %i.kg
  br i1 %i.mg, label %bb.af, label %.lr.ph.i162.prol.loopexit.unr-lcssa

bb.af:                                            ; preds = %.lr.ph.i162.prol
  store i32 %i.km, ptr %i.me, align 4, !tbaa !34
  br label %.lr.ph.i162.prol.loopexit.unr-lcssa

.lr.ph.i162.prol.loopexit.unr-lcssa:              ; preds = %bb.af, %.lr.ph.i162.prol
  %.0.i.prol = add i32 %.026.i.ph, 1
  br label %.lr.ph.i162.prol.loopexit

.lr.ph.i162.prol.loopexit:                        ; preds = %.lr.ph.i162.prol.loopexit.unr-lcssa, %.lr.ph.i162.preheader
  %.026.i.unr = phi i32 [ %.026.i.ph, %.lr.ph.i162.preheader ], [ %.0.i.prol, %.lr.ph.i162.prol.loopexit.unr-lcssa ]
  %i.mh = icmp eq i32 %i.mb, 30
  br i1 %i.mh, label %._crit_edge.i163, label %.lr.ph.i162

._crit_edge.i163:                                 ; preds = %.lr.ph.i162.prol.loopexit, %bb.ai, %middle.block621, %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !34
  br label %bb.aj

.lr.ph.i162:                                      ; preds = %.lr.ph.i162.prol.loopexit, %bb.ai
  %.026.i = phi i32 [ %.0.i.1, %bb.ai ], [ %.026.i.unr, %.lr.ph.i162.prol.loopexit ] ; 3 uses
  %i.mi = zext i32 %.026.i to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !34
  %i.ml = icmp eq i32 %i.mk, %i.kg
  br i1 %i.ml, label %bb.ag, label %.lr.ph.i162.1

bb.ag:                                            ; preds = %.lr.ph.i162
  store i32 %i.km, ptr %i.mj, align 4, !tbaa !34
  br label %.lr.ph.i162.1

.lr.ph.i162.1:                                    ; preds = %bb.ag, %.lr.ph.i162
  %.0.i = add i32 %.026.i, 1
  %i.mm = zext i32 %.0.i to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.mm ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !34
  %i.mp = icmp eq i32 %i.mo, %i.kg
  br i1 %i.mp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i162.1
  store i32 %i.km, ptr %i.mn, align 4, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i162.1
  %.0.i.1 = add i32 %.026.i, 2                    ; 2 uses
  %.not22.i.1 = icmp eq i32 %.0.i.1, %i.f
  br i1 %.not22.i.1, label %._crit_edge.i163, label %.lr.ph.i162, !llvm.loop !972

bb.aj:                                            ; preds = %._crit_edge.i163, %._crit_edge33.i
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre34.i, %._crit_edge33.i ], [ %i.kk, %._crit_edge.i163 ] ; 2 uses
  %.not.i164 = icmp eq i64 %indvars.iv.next.pre-phi.i, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.i164, label %_ZN4llvm11HvxSelector17completeToPerfectENS_8ArrayRefIjEEj.exit, label %bb.ae, !llvm.loop !3

_ZN4llvm11HvxSelector17completeToPerfectENS_8ArrayRefIjEEj.exit: ; preds = %bb.aj
  %.pre389 = load ptr, ptr %9, align 8, !tbaa !31 ; 8 uses
  %.pre389625 = ptrtoaddr ptr %.pre389 to i64
  %i.mq = load ptr, ptr %12, align 8, !tbaa !31   ; 5 uses
  %min.iters.check627 = icmp ult i32 %i.f, 8
  %i.mr = ptrtoaddr ptr %i.mq to i64
  %i.ms = sub i64 %i.mr, %.pre389625
  %diff.check = icmp ugt i64 %i.ms, -32
  %or.cond = select i1 %min.iters.check627, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph626.preheader, label %vector.ph628

vector.ph628:                                     ; preds = %_ZN4llvm11HvxSelector17completeToPerfectENS_8ArrayRefIjEEj.exit
  %n.vec629 = and i64 %i.l, 4294967288            ; 3 uses
  br label %vector.body630
end_hunk_1
