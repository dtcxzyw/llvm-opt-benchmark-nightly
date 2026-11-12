Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DivisionByConstantInfo?download=true
inline.NumInlined: 185
inline.NumDeleted: 50
begin_hunk_0_@_ZN4llvm28SignedDivisionByConstantInfo3getERKNS_5APIntE:bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef 0, i1 noundef zeroext false) #8
  %.pr.i = load i32, ptr %i.d, align 8, !tbaa !9, !alias.scope !24
  %i.j = add i32 %i.c, -1                         ; 2 uses
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = icmp ult i32 %.pr.i, 65
  br i1 %i.n, label %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i, label %bb.c

_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i:          ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %.pre.i = load i64, ptr %3, align 8, !tbaa !10, !alias.scope !24
  %i.o = or i64 %.pre.i, %i.m
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i
  %i.p = phi i64 [ %i.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i ], [ %i.o, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i ]
  store i64 %i.p, ptr %3, align 8, !tbaa !10, !alias.scope !24
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit

bb.c:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !10, !alias.scope !24
  %i.r = lshr i32 %i.j, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = or i64 %i.u, %i.m
  store i64 %i.v, ptr %i.t, align 8, !tbaa !12
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit

_ZN4llvm5APInt17getSignedMinValueEj.exit:         ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 1, ptr %i.w, align 8, !tbaa !9
  store i64 0, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.x = load i32, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.y = add i32 %i.x, -1                         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.x, ptr %i.z, align 8, !tbaa !9, !alias.scope !25
  %i.aa = icmp ult i32 %i.x, 65
  br i1 %i.aa, label %.thread, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %_ZN4llvm5APInt17getSignedMinValueEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  %.pr.i11 = load i32, ptr %i.z, align 8, !tbaa !9, !alias.scope !25 ; 2 uses
  %i.ab = icmp ult i32 %.pr.i11, 65
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.ac = icmp eq i32 %i.y, %.pr.i11
  br i1 %i.ac, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %6, align 8, !tbaa !10, !alias.scope !25
  br label %_ZN4llvm5APIntD2Ev.exit

.thread:                                          ; preds = %bb.d, %_ZN4llvm5APInt17getSignedMinValueEj.exit
  %.sink = phi ptr [ %1, %_ZN4llvm5APInt17getSignedMinValueEj.exit ], [ %6, %bb.d ]
  %.pre = load i64, ptr %.sink, align 8, !tbaa !10
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = lshr i64 %.pre, %i.ad
  store i64 %i.ae, ptr %6, align 8, !tbaa !10, !alias.scope !25
  br label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %i.y) #8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.f, %.thread, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.af = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %3) #8, !noalias !26 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !9, !noalias !26 ; 3 uses
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !9, !alias.scope !26
  %i.ai = load i64, ptr %6, align 8, !noalias !26 ; 2 uses
  store i64 %i.ai, ptr %5, align 8, !alias.scope !26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 %i.ah, ptr %i.aj, align 8, !tbaa !9
  %i.ak = icmp ult i32 %i.ah, 65
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  store i64 %i.ai, ptr %9, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %5) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.al = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIEm(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1) #8, !noalias !27 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !9, !noalias !27
  store i32 %i.an, ptr %i.am, align 8, !tbaa !9, !alias.scope !27
  %i.ao = load i64, ptr %9, align 8, !noalias !27
  store i64 %i.ao, ptr %8, align 8, !alias.scope !27
  store i32 0, ptr %i.aj, align 8, !tbaa !9, !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !9, !noalias !28 ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 65
  br i1 %i.ar, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.as = load i64, ptr %10, align 8, !tbaa !10, !noalias !28
  %i.at = xor i64 %i.as, -1
  %i.au = sub nsw i32 0, %i.aq
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = icmp eq i32 %i.aq, 0
  %spec.select.i.i.i = select i1 %i.ay, i64 0, i64 %i.ax, !prof !13
  %i.az = and i64 %spec.select.i.i.i, %i.at
  store i64 %i.az, ptr %10, align 8, !tbaa !10, !noalias !28
  br label %_ZN4llvm5APIntD2Ev.exit12

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !28
  br label %_ZN4llvm5APIntD2Ev.exit12

_ZN4llvm5APIntD2Ev.exit12:                        ; preds = %bb.i, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i
  %i.ba = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !28 ; 0 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %8) #8, !noalias !28 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.ap, align 8, !tbaa !9, !noalias !28
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !9, !alias.scope !28
  %i.be = load i64, ptr %10, align 8, !noalias !28
  store i64 %i.be, ptr %7, align 8, !alias.scope !28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.bf = load i32, ptr %i.am, align 8, !tbaa !9
  %i.bg = icmp ugt i32 %i.bf, 64
  br i1 %i.bg, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit13

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit12
  %i.bh = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #9
  br label %_ZN4llvm5APIntD2Ev.exit13

_ZN4llvm5APIntD2Ev.exit13:                        ; preds = %_ZN4llvm5APIntD2Ev.exit12, %bb.j, %bb.k
  %i.bj = load i32, ptr %i.aj, align 8, !tbaa !9
  %i.bk = icmp ugt i32 %i.bj, 64
  br i1 %i.bk, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit14

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit13
  %i.bl = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm5APIntD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #9
  br label %_ZN4llvm5APIntD2Ev.exit14

_ZN4llvm5APIntD2Ev.exit14:                        ; preds = %_ZN4llvm5APIntD2Ev.exit13, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.bn = load i32, ptr %i.b, align 8, !tbaa !9
  %i.bo = add i32 %i.bn, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 1, ptr %i.bp, align 8, !tbaa !9
  store i64 0, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i32 1, ptr %i.bq, align 8, !tbaa !9
  store i64 0, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i32 1, ptr %i.br, align 8, !tbaa !9
  store i64 0, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 1, ptr %i.bs, align 8, !tbaa !9
  store i64 0, ptr %14, align 8, !tbaa !10
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12) #8
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %14) #8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %_ZN4llvm5APIntD2Ev.exit14
  %.0 = phi i32 [ %i.bo, %_ZN4llvm5APIntD2Ev.exit14 ], [ %i.bu, %.critedge.backedge ]
  %i.bu = add i32 %.0, 1                          ; 2 uses
  %i.bv = load i32, ptr %i.bp, align 8, !tbaa !9  ; 4 uses
  %i.bw = icmp ult i32 %i.bv, 65
  br i1 %i.bw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.n

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %.critedge
  %i.bx = icmp eq i32 %i.bv, 1
  %i.by = load i64, ptr %11, align 8
  %i.bz = shl i64 %i.by, 1
  %storemerge.i = select i1 %i.bx, i64 0, i64 %i.bz
  %i.ca = sub nsw i32 0, %i.bv
  %i.cb = and i32 %i.ca, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 -1, %i.cc
  %i.ce = icmp eq i32 %i.bv, 0
  %.04.i.i = select i1 %i.ce, i64 0, i64 %i.cd, !prof !13
  %i.cf = and i64 %storemerge.i, %.04.i.i
  store i64 %i.cf, ptr %11, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit

bb.n:                                             ; preds = %.critedge
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %11, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.n
  %i.cg = load i32, ptr %i.bq, align 8, !tbaa !9  ; 4 uses
  %i.ch = icmp ult i32 %i.cg, 65
  br i1 %i.ch, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i15, label %bb.o

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i15:       ; preds = %_ZN4llvm5APIntlSEj.exit
  %i.ci = icmp eq i32 %i.cg, 1
  %i.cj = load i64, ptr %12, align 8
  %i.ck = shl i64 %i.cj, 1
  %storemerge.i16 = select i1 %i.ci, i64 0, i64 %i.ck
  %i.cl = sub nsw i32 0, %i.cg
  %i.cm = and i32 %i.cl, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = lshr i64 -1, %i.cn
  %i.cp = icmp eq i32 %i.cg, 0
  %.04.i.i17 = select i1 %i.cp, i64 0, i64 %i.co, !prof !13
  %i.cq = and i64 %storemerge.i16, %.04.i.i17
  store i64 %i.cq, ptr %12, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit18

bb.o:                                             ; preds = %_ZN4llvm5APIntlSEj.exit
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit18

_ZN4llvm5APIntlSEj.exit18:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i15, %bb.o
  %i.cr = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %7) #10
  %i.cs = icmp sgt i32 %i.cr, -1
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm5APIntlSEj.exit18
  %i.ct = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %11) #8 ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %7) #8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvm5APIntlSEj.exit18
  %i.cv = load i32, ptr %i.br, align 8, !tbaa !9  ; 4 uses
  %i.cw = icmp ult i32 %i.cv, 65
  br i1 %i.cw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i19, label %bb.r

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i19:       ; preds = %bb.q
  %i.cx = icmp eq i32 %i.cv, 1
  %i.cy = load i64, ptr %13, align 8
  %i.cz = shl i64 %i.cy, 1
  %storemerge.i20 = select i1 %i.cx, i64 0, i64 %i.cz
  %i.da = sub nsw i32 0, %i.cv
  %i.db = and i32 %i.da, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = lshr i64 -1, %i.dc
  %i.de = icmp eq i32 %i.cv, 0
  %.04.i.i21 = select i1 %i.de, i64 0, i64 %i.dd, !prof !13
  %i.df = and i64 %storemerge.i20, %.04.i.i21
  store i64 %i.df, ptr %13, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit22

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit22

_ZN4llvm5APIntlSEj.exit22:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i19, %bb.r
  %i.dg = load i32, ptr %i.bs, align 8, !tbaa !9  ; 4 uses
  %i.dh = icmp ult i32 %i.dg, 65
  br i1 %i.dh, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i23, label %bb.s

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i23:       ; preds = %_ZN4llvm5APIntlSEj.exit22
  %i.di = icmp eq i32 %i.dg, 1
  %i.dj = load i64, ptr %14, align 8
  %i.dk = shl i64 %i.dj, 1
  %storemerge.i24 = select i1 %i.di, i64 0, i64 %i.dk
  %i.dl = sub nsw i32 0, %i.dg
  %i.dm = and i32 %i.dl, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = lshr i64 -1, %i.dn
  %i.dp = icmp eq i32 %i.dg, 0
  %.04.i.i25 = select i1 %i.dp, i64 0, i64 %i.do, !prof !13
  %i.dq = and i64 %storemerge.i24, %.04.i.i25
  store i64 %i.dq, ptr %14, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit26

bb.s:                                             ; preds = %_ZN4llvm5APIntlSEj.exit22
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit26

_ZN4llvm5APIntlSEj.exit26:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i23, %bb.s
  %i.dr = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %4) #10
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm5APIntlSEj.exit26
  %i.dt = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %13) #8 ; 0 uses
  %i.du = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %4) #8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm5APIntlSEj.exit26
  %i.dv = load i32, ptr %i.a, align 8, !tbaa !9
  %i.dw = icmp ult i32 %i.dv, 65
  br i1 %i.dw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dx = load i32, ptr %i.bt, align 8, !tbaa !9  ; 2 uses
  %i.dy = icmp ult i32 %i.dx, 65
  br i1 %i.dy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = load i64, ptr %4, align 8, !tbaa !10
  store i64 %i.dz, ptr %2, align 8, !tbaa !10
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !9
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %4) #8
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.w, %bb.x
  %i.ea = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %14) #8 ; 0 uses
  %i.eb = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %2) #10
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.critedge.backedge, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.ed = load i32, ptr %i.bp, align 8, !tbaa !9
  %i.ee = icmp ult i32 %i.ed, 65
  br i1 %i.ee, label %.split, label %_ZNK4llvm5APInteqERKS0_.exit

.split:                                           ; preds = %bb.y
  %i.ef = load i64, ptr %11, align 8, !tbaa !10
  %i.eg = load i64, ptr %2, align 8, !tbaa !10
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.z, label %.critedge2

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.y
  %i.ei = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %2) #10
  br i1 %i.ei, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %.split, %_ZNK4llvm5APInteqERKS0_.exit
  %i.ej = load i32, ptr %i.bq, align 8, !tbaa !9  ; 2 uses
  %i.ek = icmp ult i32 %i.ej, 65
  br i1 %i.ek, label %.split37, label %_ZNK4llvm5APInt6isZeroEv.exit

.split37:                                         ; preds = %bb.z
  %i.el = load i64, ptr %12, align 8, !tbaa !10
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.critedge.backedge, label %.critedge2

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.z
  %i.en = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %12) #10
  %i.eo = icmp eq i32 %i.en, %i.ej
  br i1 %i.eo, label %.critedge.backedge, label %.critedge2

.critedge.backedge:                               ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %_ZN4llvm5APIntaSERKS0_.exit, %.split37
  br label %.critedge

.critedge2:                                       ; preds = %.split37, %.split, %_ZNK4llvm5APInteqERKS0_.exit, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.ep = load i32, ptr %i.w, align 8, !tbaa !9
  %i.eq = icmp ult i32 %i.ep, 65
  br i1 %i.eq, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge2
  %i.er = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.er) #9
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %.critedge2, %bb.aa, %bb.ab
  %i.et = load i64, ptr %13, align 8
  store i64 %i.et, ptr %0, align 8
  %i.eu = load i32, ptr %i.br, align 8, !tbaa !9
  store i32 %i.eu, ptr %i.w, align 8, !tbaa !9
  store i32 0, ptr %i.br, align 8, !tbaa !9
  %i.ev = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #8 ; 0 uses
  %i.ew = load i32, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  %i.ey = and i32 %i.ex, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = icmp ult i32 %i.ew, 65
  %i.fc = load ptr, ptr %1, align 8
  %i.fd = lshr i32 %i.ex, 6
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fe
  %.in.i.i.i = select i1 %i.fb, ptr %1, ptr %i.ff
  %i.fg = load i64, ptr %.in.i.i.i, align 8, !tbaa !10
  %i.fh = and i64 %i.fa, %i.fg
  %.not = icmp eq i64 %i.fh, 0
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  %i.fi = load i32, ptr %i.w, align 8, !tbaa !9   ; 3 uses
  %i.fj = icmp ult i32 %i.fi, 65
  br i1 %i.fj, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.ad

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %bb.ac
  %i.fk = load i64, ptr %0, align 8, !tbaa !10
  %i.fl = xor i64 %i.fk, -1
  %i.fm = sub nsw i32 0, %i.fi
  %i.fn = and i32 %i.fm, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = lshr i64 -1, %i.fo
  %i.fq = icmp eq i32 %i.fi, 0
  %spec.select.i.i = select i1 %i.fq, i64 0, i64 %i.fp, !prof !13
  %i.fr = and i64 %spec.select.i.i, %i.fl
  store i64 %i.fr, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvm5APInt6negateEv.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  br label %_ZN4llvm5APInt6negateEv.exit

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.ad
  %i.fs = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #8 ; 0 uses
  %.pre38 = load i32, ptr %i.b, align 8, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm5APInt6negateEv.exit, %_ZN4llvm5APIntaSEOS0_.exit
  %i.ft = phi i32 [ %.pre38, %_ZN4llvm5APInt6negateEv.exit ], [ %i.ew, %_ZN4llvm5APIntaSEOS0_.exit ]
  %i.fu = sub i32 %i.bu, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !30
  %i.fw = load i32, ptr %i.bs, align 8, !tbaa !9
  %i.fx = icmp ugt i32 %i.fw, 64
  br i1 %i.fx, label %bb.af, label %_ZN4llvm5APIntD2Ev.exit28

bb.af:                                            ; preds = %bb.ae
  %i.fy = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_ZN4llvm5APIntD2Ev.exit28, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #9
  br label %_ZN4llvm5APIntD2Ev.exit28

_ZN4llvm5APIntD2Ev.exit28:                        ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  %i.ga = load i32, ptr %i.br, align 8, !tbaa !9
  %i.gb = icmp ugt i32 %i.ga, 64
  br i1 %i.gb, label %bb.ah, label %_ZN4llvm5APIntD2Ev.exit29

bb.ah:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit28
  %i.gc = load ptr, ptr %13, align 8, !tbaa !10   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.gc) #9
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %_ZN4llvm5APIntD2Ev.exit28, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.ge = load i32, ptr %i.bq, align 8, !tbaa !9
  %i.gf = icmp ugt i32 %i.ge, 64
  br i1 %i.gf, label %bb.aj, label %_ZN4llvm5APIntD2Ev.exit30

bb.aj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit29
  %i.gg = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN4llvm5APIntD2Ev.exit30, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #9
  br label %_ZN4llvm5APIntD2Ev.exit30

_ZN4llvm5APIntD2Ev.exit30:                        ; preds = %_ZN4llvm5APIntD2Ev.exit29, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.gi = load i32, ptr %i.bp, align 8, !tbaa !9
  %i.gj = icmp ugt i32 %i.gi, 64
  br i1 %i.gj, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit31

bb.al:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit30
  %i.gk = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN4llvm5APIntD2Ev.exit31, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.gk) #9
end_hunk_0
begin_hunk_1_@_ZN4llvm30UnsignedDivisionByConstantInfo3getERKNS_5APIntEjbb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.bs = load i32, ptr %i.h, align 8, !tbaa !9   ; 2 uses
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !9
  %i.bt = icmp ult i32 %i.bs, 65
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit
  %i.bu = load i64, ptr %6, align 8, !tbaa !10
  store i64 %i.bu, ptr %13, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.n:                                             ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %6) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.m, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.bv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1) #8, !noalias !72 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !9, !noalias !72
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !9, !alias.scope !72
  %i.by = load i64, ptr %13, align 8, !noalias !72
  store i64 %i.by, ptr %12, align 8, !alias.scope !72
  store i32 0, ptr %i.br, align 8, !tbaa !9, !noalias !72
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(12) %1) #8, !noalias !73 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.bw, align 8, !tbaa !9, !noalias !73
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !9, !alias.scope !73
  %i.cc = load i64, ptr %12, align 8, !noalias !73
  store i64 %i.cc, ptr %11, align 8, !alias.scope !73
  store i32 0, ptr %i.bw, align 8, !tbaa !9, !noalias !73
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !9, !noalias !74 ; 3 uses
  %i.cf = icmp ult i32 %i.ce, 65
  br i1 %i.cf, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.o

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.cg = load i64, ptr %10, align 8, !tbaa !10, !noalias !74
  %i.ch = xor i64 %i.cg, -1
  %i.ci = sub nsw i32 0, %i.ce
  %i.cj = and i32 %i.ci, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 -1, %i.ck
  %i.cm = icmp eq i32 %i.ce, 0
  %spec.select.i.i.i41 = select i1 %i.cm, i64 0, i64 %i.cl, !prof !13
  %i.cn = and i64 %spec.select.i.i.i41, %i.ch
  store i64 %i.cn, ptr %10, align 8, !tbaa !10, !noalias !74
  br label %_ZN4llvm5APIntD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !74
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.o, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i
  %i.co = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !74 ; 0 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %6) #8, !noalias !74 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !9, !noalias !74
  store i32 %i.cr, ptr %i.cq, align 8, !tbaa !9, !alias.scope !74
  %i.cs = load i64, ptr %10, align 8, !noalias !74
  store i64 %i.cs, ptr %9, align 8, !alias.scope !74
  store i32 0, ptr %i.cd, align 8, !tbaa !9, !noalias !74
  %i.ct = load i32, ptr %i.ca, align 8, !tbaa !9
  %i.cu = icmp ugt i32 %i.ct, 64
  br i1 %i.cu, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit42

bb.p:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.cv = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4llvm5APIntD2Ev.exit42, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #9
  br label %_ZN4llvm5APIntD2Ev.exit42

_ZN4llvm5APIntD2Ev.exit42:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.p, %bb.q
  %i.cx = load i32, ptr %i.bw, align 8, !tbaa !9
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit43

bb.r:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit42
  %i.cz = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN4llvm5APIntD2Ev.exit43, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #9
  br label %_ZN4llvm5APIntD2Ev.exit43

_ZN4llvm5APIntD2Ev.exit43:                        ; preds = %_ZN4llvm5APIntD2Ev.exit42, %bb.r, %bb.s
  %i.db = load i32, ptr %i.br, align 8, !tbaa !9
  %i.dc = icmp ugt i32 %i.db, 64
  br i1 %i.dc, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit44

bb.t:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit43
  %i.dd = load ptr, ptr %13, align 8, !tbaa !10   ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4llvm5APIntD2Ev.exit44, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #9
  br label %_ZN4llvm5APIntD2Ev.exit44

_ZN4llvm5APIntD2Ev.exit44:                        ; preds = %_ZN4llvm5APIntD2Ev.exit43, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.df = load i32, ptr %i.e, align 8, !tbaa !9
  %i.dg = add i32 %i.df, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i32 1, ptr %i.dh, align 8, !tbaa !9
  store i64 0, ptr %14, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 1, ptr %i.di, align 8, !tbaa !9
  store i64 0, ptr %15, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 1, ptr %i.dj, align 8, !tbaa !9
  store i64 0, ptr %16, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !9
  store i64 0, ptr %17, align 8, !tbaa !10
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %15) #8
  call void @_ZN4llvm5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %17) #8
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %_ZN4llvm5APIntD2Ev.exit44
  %.038 = phi i32 [ %i.dg, %_ZN4llvm5APIntD2Ev.exit44 ], [ %i.dr, %.critedge2.backedge ] ; 2 uses
  %i.dr = add i32 %.038, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.ds = load i32, ptr %i.cq, align 8, !tbaa !9  ; 2 uses
  store i32 %i.ds, ptr %i.dl, align 8, !tbaa !9
  %i.dt = icmp ult i32 %i.ds, 65
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge2
  %i.du = load i64, ptr %9, align 8, !tbaa !10
  store i64 %i.du, ptr %19, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit45

bb.w:                                             ; preds = %.critedge2
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(12) %9) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit45

_ZN4llvm5APIntC2ERKS0_.exit45:                    ; preds = %bb.v, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.dv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(12) %15) #8, !noalias !75 ; 0 uses
  %i.dw = load i32, ptr %i.dl, align 8, !tbaa !9, !noalias !75 ; 2 uses
  store i32 %i.dw, ptr %i.dm, align 8, !tbaa !9, !alias.scope !75
  %i.dx = load i64, ptr %19, align 8, !noalias !75 ; 3 uses
  store i64 %i.dx, ptr %18, align 8, !alias.scope !75
  store i32 0, ptr %i.dl, align 8, !tbaa !9, !noalias !75
  %i.dy = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %18) #10
  %i.dz = icmp sgt i32 %i.dy, -1
  %i.ea = icmp ult i32 %i.dw, 65
  %i.eb = icmp eq i64 %i.dx, 0
  %or.cond168 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond168, label %_ZN4llvm5APIntD2Ev.exit47, label %_ZN4llvm5APIntD2Ev.exit46

_ZN4llvm5APIntD2Ev.exit46:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit45
  %i.ec = inttoptr i64 %i.dx to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.ec) #9
  %.pr.pre = load i32, ptr %i.dl, align 8, !tbaa !9
  %i.ed = icmp ugt i32 %.pr.pre, 64
  br i1 %i.ed, label %bb.x, label %_ZN4llvm5APIntD2Ev.exit47

bb.x:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit46
  %i.ee = load ptr, ptr %19, align 8, !tbaa !10   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN4llvm5APIntD2Ev.exit47, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #9
  br label %_ZN4llvm5APIntD2Ev.exit47

_ZN4llvm5APIntD2Ev.exit47:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit45, %_ZN4llvm5APIntD2Ev.exit46, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  %i.eg = load i32, ptr %i.dh, align 8, !tbaa !9  ; 7 uses
  %i.eh = icmp ult i32 %i.eg, 65                  ; 2 uses
  br i1 %i.dz, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit47
  br i1 %i.eh, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.aa

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.z
  %i.ei = icmp eq i32 %i.eg, 1
  %i.ej = load i64, ptr %14, align 8
  %i.ek = shl i64 %i.ej, 1
  %storemerge.i = select i1 %i.ei, i64 0, i64 %i.ek
  %i.el = sub nsw i32 0, %i.eg
  %i.em = and i32 %i.el, 63
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = lshr i64 -1, %i.en
  %i.ep = icmp eq i32 %i.eg, 0
  %.04.i.i = select i1 %i.ep, i64 0, i64 %i.eo, !prof !13
  %i.eq = and i64 %storemerge.i, %.04.i.i
  store i64 %i.eq, ptr %14, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.aa
  %i.er = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %14) #8 ; 0 uses
  %i.es = load i32, ptr %i.di, align 8, !tbaa !9  ; 4 uses
  %i.et = icmp ult i32 %i.es, 65
  br i1 %i.et, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i48, label %bb.ab

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i48:       ; preds = %_ZN4llvm5APIntlSEj.exit
  %i.eu = icmp eq i32 %i.es, 1
  %i.ev = load i64, ptr %15, align 8
  %i.ew = shl i64 %i.ev, 1
  %storemerge.i49 = select i1 %i.eu, i64 0, i64 %i.ew
  %i.ex = sub nsw i32 0, %i.es
  %i.ey = and i32 %i.ex, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = icmp eq i32 %i.es, 0
  %.04.i.i50 = select i1 %i.fb, i64 0, i64 %i.fa, !prof !13
  %i.fc = and i64 %storemerge.i49, %.04.i.i50
  store i64 %i.fc, ptr %15, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit51

bb.ab:                                            ; preds = %_ZN4llvm5APIntlSEj.exit
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit51

_ZN4llvm5APIntlSEj.exit51:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i48, %bb.ab
  %i.fd = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %9) #8 ; 0 uses
  br label %_ZN4llvm5APIntlSEj.exit59

bb.ac:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit47
  br i1 %i.eh, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i52, label %bb.ad

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i52:       ; preds = %bb.ac
  %i.fe = icmp eq i32 %i.eg, 1
  %i.ff = load i64, ptr %14, align 8
  %i.fg = shl i64 %i.ff, 1
  %storemerge.i53 = select i1 %i.fe, i64 0, i64 %i.fg
  %i.fh = sub nsw i32 0, %i.eg
  %i.fi = and i32 %i.fh, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = lshr i64 -1, %i.fj
  %i.fl = icmp eq i32 %i.eg, 0
  %.04.i.i54 = select i1 %i.fl, i64 0, i64 %i.fk, !prof !13
  %i.fm = and i64 %storemerge.i53, %.04.i.i54
  store i64 %i.fm, ptr %14, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit55

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit55

_ZN4llvm5APIntlSEj.exit55:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i52, %bb.ad
  %i.fn = load i32, ptr %i.di, align 8, !tbaa !9  ; 4 uses
  %i.fo = icmp ult i32 %i.fn, 65
  br i1 %i.fo, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i56, label %bb.ae

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i56:       ; preds = %_ZN4llvm5APIntlSEj.exit55
  %i.fp = icmp eq i32 %i.fn, 1
  %i.fq = load i64, ptr %15, align 8
  %i.fr = shl i64 %i.fq, 1
  %storemerge.i57 = select i1 %i.fp, i64 0, i64 %i.fr
  %i.fs = sub nsw i32 0, %i.fn
  %i.ft = and i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 -1, %i.fu
  %i.fw = icmp eq i32 %i.fn, 0
  %.04.i.i58 = select i1 %i.fw, i64 0, i64 %i.fv, !prof !13
  %i.fx = and i64 %storemerge.i57, %.04.i.i58
  store i64 %i.fx, ptr %15, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit59

bb.ae:                                            ; preds = %_ZN4llvm5APIntlSEj.exit55
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit59

_ZN4llvm5APIntlSEj.exit59:                        ; preds = %bb.ae, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i56, %_ZN4llvm5APIntlSEj.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.fy = load i32, ptr %i.dk, align 8, !tbaa !9  ; 2 uses
  store i32 %i.fy, ptr %i.dn, align 8, !tbaa !9
  %i.fz = icmp ult i32 %i.fy, 65
  br i1 %i.fz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm5APIntlSEj.exit59
  %i.ga = load i64, ptr %17, align 8, !tbaa !10
  store i64 %i.ga, ptr %21, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit60

bb.ag:                                            ; preds = %_ZN4llvm5APIntlSEj.exit59
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %17) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit60

_ZN4llvm5APIntC2ERKS0_.exit60:                    ; preds = %bb.af, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.gb = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef 1) #8, !noalias !76 ; 0 uses
  %i.gc = load i32, ptr %i.dn, align 8, !tbaa !9, !noalias !76
  store i32 %i.gc, ptr %i.do, align 8, !tbaa !9, !alias.scope !76
  %i.gd = load i64, ptr %21, align 8, !noalias !76
  store i64 %i.gd, ptr %20, align 8, !alias.scope !76
  store i32 0, ptr %i.dn, align 8, !tbaa !9, !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  %i.ge = load i32, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  store i32 %i.ge, ptr %i.dp, align 8, !tbaa !9
  %i.gf = icmp ult i32 %i.ge, 65
  br i1 %i.gf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit60
  %i.gg = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.gg, ptr %23, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit61

bb.ai:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit60
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit61

_ZN4llvm5APIntC2ERKS0_.exit61:                    ; preds = %bb.ah, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.gh = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(12) %17) #8, !noalias !77 ; 0 uses
  %i.gi = load i32, ptr %i.dp, align 8, !tbaa !9, !noalias !77 ; 2 uses
  store i32 %i.gi, ptr %i.dq, align 8, !tbaa !9, !alias.scope !77
  %i.gj = load i64, ptr %23, align 8, !noalias !77 ; 3 uses
  store i64 %i.gj, ptr %22, align 8, !alias.scope !77
  store i32 0, ptr %i.dp, align 8, !tbaa !9, !noalias !77
  %i.gk = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(12) %22) #10
  %i.gl = icmp sgt i32 %i.gk, -1
  %i.gm = icmp ult i32 %i.gi, 65
  %i.gn = icmp eq i64 %i.gj, 0
  %or.cond169 = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %or.cond169, label %_ZN4llvm5APIntD2Ev.exit63, label %_ZN4llvm5APIntD2Ev.exit62

_ZN4llvm5APIntD2Ev.exit62:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit61
  %i.go = inttoptr i64 %i.gj to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.go) #9
  %.pr108.pre = load i32, ptr %i.dp, align 8, !tbaa !9
  %i.gp = icmp ugt i32 %.pr108.pre, 64
  br i1 %i.gp, label %bb.aj, label %_ZN4llvm5APIntD2Ev.exit63

bb.aj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit62
  %i.gq = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN4llvm5APIntD2Ev.exit63, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gq) #9
  br label %_ZN4llvm5APIntD2Ev.exit63

_ZN4llvm5APIntD2Ev.exit63:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit61, %_ZN4llvm5APIntD2Ev.exit62, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  %i.gs = load i32, ptr %i.do, align 8, !tbaa !9
  %i.gt = icmp ugt i32 %i.gs, 64
  br i1 %i.gt, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit64

bb.al:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit63
  %i.gu = load ptr, ptr %20, align 8, !tbaa !10   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN4llvm5APIntD2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.gu) #9
  br label %_ZN4llvm5APIntD2Ev.exit64

_ZN4llvm5APIntD2Ev.exit64:                        ; preds = %_ZN4llvm5APIntD2Ev.exit63, %bb.al, %bb.am
  %i.gw = load i32, ptr %i.dn, align 8, !tbaa !9
  %i.gx = icmp ugt i32 %i.gw, 64
  br i1 %i.gx, label %bb.an, label %_ZN4llvm5APIntD2Ev.exit65

bb.an:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit64
  %i.gy = load ptr, ptr %21, align 8, !tbaa !10   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZN4llvm5APIntD2Ev.exit65, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.gy) #9
  br label %_ZN4llvm5APIntD2Ev.exit65

_ZN4llvm5APIntD2Ev.exit65:                        ; preds = %_ZN4llvm5APIntD2Ev.exit64, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br i1 %i.gl, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit65
  %i.ha = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %8) #10
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.c, align 8, !tbaa !66
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hc = load i32, ptr %i.dj, align 8, !tbaa !9  ; 4 uses
  %i.hd = icmp ult i32 %i.hc, 65
  br i1 %i.hd, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i66, label %bb.as

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i66:       ; preds = %bb.ar
  %i.he = icmp eq i32 %i.hc, 1
  %i.hf = load i64, ptr %16, align 8
  %i.hg = shl i64 %i.hf, 1
  %storemerge.i67 = select i1 %i.he, i64 0, i64 %i.hg
  %i.hh = sub nsw i32 0, %i.hc
  %i.hi = and i32 %i.hh, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 -1, %i.hj
  %i.hl = icmp eq i32 %i.hc, 0
  %.04.i.i68 = select i1 %i.hl, i64 0, i64 %i.hk, !prof !13
  %i.hm = and i64 %storemerge.i67, %.04.i.i68
  store i64 %i.hm, ptr %16, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit69

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit69

_ZN4llvm5APIntlSEj.exit69:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i66, %bb.as
  %i.hn = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %16) #8 ; 0 uses
  %i.ho = load i32, ptr %i.dk, align 8, !tbaa !9  ; 4 uses
  %i.hp = icmp ult i32 %i.ho, 65
  br i1 %i.hp, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i70, label %bb.at

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i70:       ; preds = %_ZN4llvm5APIntlSEj.exit69
  %i.hq = icmp eq i32 %i.ho, 1
  %i.hr = load i64, ptr %17, align 8
  %i.hs = shl i64 %i.hr, 1
  %storemerge.i71 = select i1 %i.hq, i64 0, i64 %i.hs
  %i.ht = sub nsw i32 0, %i.ho
  %i.hu = and i32 %i.ht, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = lshr i64 -1, %i.hv
  %i.hx = icmp eq i32 %i.ho, 0
  %.04.i.i72 = select i1 %i.hx, i64 0, i64 %i.hw, !prof !13
  %i.hy = and i64 %storemerge.i71, %.04.i.i72
  store i64 %i.hy, ptr %17, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit73

bb.at:                                            ; preds = %_ZN4llvm5APIntlSEj.exit69
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit73

_ZN4llvm5APIntlSEj.exit73:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i70, %bb.at
  %i.hz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %17) #8 ; 0 uses
  %i.ia = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %1) #8 ; 0 uses
  br label %bb.az

bb.au:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit65
  %i.ib = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %7) #10
  %i.ic = icmp sgt i32 %i.ib, -1
  br i1 %i.ic, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.c, align 8, !tbaa !66
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.id = load i32, ptr %i.dj, align 8, !tbaa !9  ; 4 uses
  %i.ie = icmp ult i32 %i.id, 65
  br i1 %i.ie, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i74, label %bb.ax

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i74:       ; preds = %bb.aw
  %i.if = icmp eq i32 %i.id, 1
  %i.ig = load i64, ptr %16, align 8
  %i.ih = shl i64 %i.ig, 1
  %storemerge.i75 = select i1 %i.if, i64 0, i64 %i.ih
  %i.ii = sub nsw i32 0, %i.id
  %i.ij = and i32 %i.ii, 63
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = lshr i64 -1, %i.ik
  %i.im = icmp eq i32 %i.id, 0
  %.04.i.i76 = select i1 %i.im, i64 0, i64 %i.il, !prof !13
  %i.in = and i64 %storemerge.i75, %.04.i.i76
  store i64 %i.in, ptr %16, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit77

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit77

_ZN4llvm5APIntlSEj.exit77:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i74, %bb.ax
  %i.io = load i32, ptr %i.dk, align 8, !tbaa !9  ; 4 uses
  %i.ip = icmp ult i32 %i.io, 65
  br i1 %i.ip, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i78, label %bb.ay

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i78:       ; preds = %_ZN4llvm5APIntlSEj.exit77
  %i.iq = icmp eq i32 %i.io, 1
  %i.ir = load i64, ptr %17, align 8
  %i.is = shl i64 %i.ir, 1
  %storemerge.i79 = select i1 %i.iq, i64 0, i64 %i.is
  %i.it = sub nsw i32 0, %i.io
  %i.iu = and i32 %i.it, 63
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = lshr i64 -1, %i.iv
  %i.ix = icmp eq i32 %i.io, 0
  %.04.i.i80 = select i1 %i.ix, i64 0, i64 %i.iw, !prof !13
  %i.iy = and i64 %storemerge.i79, %.04.i.i80
  store i64 %i.iy, ptr %17, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit81

bb.ay:                                            ; preds = %_ZN4llvm5APIntlSEj.exit77
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit81

_ZN4llvm5APIntlSEj.exit81:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i78, %bb.ay
  %i.iz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %17) #8 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm5APIntlSEj.exit81, %_ZN4llvm5APIntlSEj.exit73
  %i.ja = load i32, ptr %i.a, align 8, !tbaa !9
  %i.jb = icmp ult i32 %i.ja, 65
  br i1 %i.jb, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jc = load i32, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  %i.jd = icmp ult i32 %i.jc, 65
  br i1 %i.jd, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.je = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.je, ptr %5, align 8, !tbaa !10
  store i32 %i.jc, ptr %i.a, align 8, !tbaa !9
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.bc:                                            ; preds = %bb.ba, %bb.az
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.bb, %bb.bc
  %i.jf = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmmEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #8 ; 0 uses
  %i.jg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %17) #8 ; 0 uses
  %i.jh = load i32, ptr %i.e, align 8, !tbaa !9   ; 6 uses
  %i.ji = shl i32 %i.jh, 1
  %i.jj = icmp ult i32 %i.dr, %i.ji
  br i1 %i.jj, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.jk = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %5) #10
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %.critedge2.backedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jm = load i32, ptr %i.dh, align 8, !tbaa !9
  %i.jn = icmp ult i32 %i.jm, 65
  br i1 %i.jn, label %.split, label %_ZNK4llvm5APInteqERKS0_.exit

.split:                                           ; preds = %bb.be
  %i.jo = load i64, ptr %14, align 8, !tbaa !10
  %i.jp = load i64, ptr %5, align 8, !tbaa !10
  %i.jq = icmp eq i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.bf, label %.critedge

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.be
  %i.jr = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %5) #10
  br i1 %i.jr, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %.split, %_ZNK4llvm5APInteqERKS0_.exit
  %i.js = load i32, ptr %i.di, align 8, !tbaa !9  ; 2 uses
  %i.jt = icmp ult i32 %i.js, 65
  br i1 %i.jt, label %.split109, label %_ZNK4llvm5APInt6isZeroEv.exit

.split109:                                        ; preds = %bb.bf
  %i.ju = load i64, ptr %15, align 8, !tbaa !10
  %i.jv = icmp eq i64 %i.ju, 0
  br i1 %i.jv, label %.critedge2.backedge, label %.critedge

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.bf
  %i.jw = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #10
  %i.jx = icmp eq i32 %i.jw, %i.js
  br i1 %i.jx, label %.critedge2.backedge, label %.critedge

.critedge2.backedge:                              ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %bb.bd, %.split109
  br label %.critedge2

.critedge:                                        ; preds = %.split109, %.split, %_ZN4llvm5APIntaSERKS0_.exit, %_ZNK4llvm5APInteqERKS0_.exit, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.jy = load i8, ptr %i.c, align 8, !tbaa !66, !range !78, !noundef !79
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.bg, label %bb.bq

bb.bg:                                            ; preds = %.critedge
  %i.ka = icmp ult i32 %i.jh, 65                  ; 2 uses
  %i.kb = load ptr, ptr %1, align 8               ; 2 uses
  %.in.i.i = select i1 %i.ka, ptr %1, ptr %i.kb
  %i.kc = load i64, ptr %.in.i.i, align 8, !tbaa !10
  %i.kd = and i64 %i.kc, 1
  %.not115 = icmp eq i64 %i.kd, 0
  %or.cond = and i1 %3, %.not115
  %i.ke = ptrtoint ptr %i.kb to i64               ; 2 uses
  br i1 %or.cond, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ka, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.thread.i:             ; preds = %bb.bh
  %i.kf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ke, i1 false)
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %..i = call i32 @llvm.umin.i32(i32 %i.jh, i32 %i.kg)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.kh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i32 %i.jh, ptr %i.kh, align 8, !tbaa !9, !alias.scope !80
  store i64 %i.ke, ptr %24, align 8, !tbaa !10, !alias.scope !81
  br label %bb.bi

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.bh
  %i.ki = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.kj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i32 %i.jh, ptr %i.kj, align 8, !tbaa !9, !alias.scope !81
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  %.pr.i84 = load i32, ptr %i.kj, align 8, !tbaa !9, !alias.scope !81 ; 2 uses
  %i.kk = icmp ult i32 %.pr.i84, 65
  br i1 %i.kk, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i
  %i.kl = phi ptr [ %i.kh, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %i.kj, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 2 uses
  %.0.i83112 = phi i32 [ %..i, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %i.ki, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 4 uses
  %i.km = phi i32 [ %i.jh, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %.pr.i84, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.kn = icmp eq i32 %.0.i83112, %i.km
  br i1 %i.kn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i64 0, ptr %24, align 8, !tbaa !10, !alias.scope !81
  br label %_ZNK4llvm5APInt4lshrEj.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ko = load i64, ptr %24, align 8, !tbaa !10, !alias.scope !81
  %i.kp = zext nneg i32 %.0.i83112 to i64
  %i.kq = lshr i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %24, align 8, !tbaa !10, !alias.scope !81
  br label %_ZNK4llvm5APInt4lshrEj.exit

bb.bl:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %24, i32 noundef %i.ki) #8
  br label %_ZNK4llvm5APInt4lshrEj.exit

_ZNK4llvm5APInt4lshrEj.exit:                      ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.kr = phi ptr [ %i.kl, %bb.bj ], [ %i.kl, %bb.bk ], [ %i.kj, %bb.bl ]
  %.0.i83111 = phi i32 [ %.0.i83112, %bb.bj ], [ %.0.i83112, %bb.bk ], [ %i.ki, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.ks = add i32 %.0.i83111, %2
  call void @_ZN4llvm30UnsignedDivisionByConstantInfo3getERKNS_5APIntEjbb(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::UnsignedDivisionByConstantInfo") align 8 %25, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 noundef %i.ks, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.kt = load i32, ptr %i.b, align 8, !tbaa !9
  %i.ku = icmp ult i32 %i.kt, 65
  br i1 %i.ku, label %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNK4llvm5APInt4lshrEj.exit
  %i.kv = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.kv) #9
  br label %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit

_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit: ; preds = %bb.bn, %bb.bm, %_ZNK4llvm5APInt4lshrEj.exit
  %i.kx = load i64, ptr %25, align 8
  store i64 %i.kx, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !9
  store i32 %i.kz, ptr %i.b, align 8, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.c, ptr noundef nonnull align 8 dereferenceable(13) %i.la, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i83111, ptr %i.lb, align 8, !tbaa !82
  %i.lc = load i32, ptr %i.kr, align 8, !tbaa !9
  %i.ld = icmp ugt i32 %i.lc, 64
  br i1 %i.ld, label %bb.bo, label %_ZN4llvm5APIntD2Ev.exit85

bb.bo:                                            ; preds = %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit
  %i.le = load ptr, ptr %24, align 8, !tbaa !10   ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %_ZN4llvm5APIntD2Ev.exit85, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdaPv(ptr noundef nonnull %i.le) #9
  br label %_ZN4llvm5APIntD2Ev.exit85

_ZN4llvm5APIntD2Ev.exit85:                        ; preds = %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  br label %bb.cg

bb.bq:                                            ; preds = %bb.bg, %.critedge
  %i.lg = load i32, ptr %i.b, align 8, !tbaa !9
  %i.lh = icmp ult i32 %i.lg, 65
  br i1 %i.lh, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.li = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.li) #9
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %bb.bq, %bb.br, %bb.bs
  %i.lk = load i64, ptr %16, align 8
end_hunk_1
