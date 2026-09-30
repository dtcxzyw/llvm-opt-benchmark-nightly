Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DivisionByConstantInfo?download=true
inline.NumInlined: 185
inline.NumDeleted: 50
begin_hunk_0_@_ZN4llvm28SignedDivisionByConstantInfo3getERKNS_5APIntE:bb.a
  %i.n = icmp ult i32 %.pr.i, 65
  br i1 %i.n, label %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i, label %bb.c

_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i:          ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %.pre.i = load i64, ptr %3, align 8, !tbaa !10, !alias.scope !26
  %i.o = or i64 %.pre.i, %i.m
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i
  %i.p = phi i64 [ %i.i, %_ZN4llvm5APIntC2Ejmbb.exit.thread.i ], [ %i.o, %_ZN4llvm5APIntC2Ejmbb.exit._crit_edge.i ]
  store i64 %i.p, ptr %3, align 8, !tbaa !10, !alias.scope !26
  br label %_ZN4llvm5APInt17getSignedMinValueEj.exit

bb.c:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !10, !alias.scope !26
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
  store i32 %i.x, ptr %i.z, align 8, !tbaa !9, !alias.scope !27
  %i.aa = icmp ult i32 %i.x, 65
  br i1 %i.aa, label %.thread, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %_ZN4llvm5APInt17getSignedMinValueEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  %.pr.i11 = load i32, ptr %i.z, align 8, !tbaa !9, !alias.scope !27 ; 2 uses
  %i.ab = icmp ult i32 %.pr.i11, 65
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.ac = icmp eq i32 %i.y, %.pr.i11
  br i1 %i.ac, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %6, align 8, !tbaa !10, !alias.scope !27
  br label %_ZN4llvm5APIntD2Ev.exit

.thread:                                          ; preds = %bb.d, %_ZN4llvm5APInt17getSignedMinValueEj.exit
  %.sink = phi ptr [ %1, %_ZN4llvm5APInt17getSignedMinValueEj.exit ], [ %6, %bb.d ]
  %.pre = load i64, ptr %.sink, align 8, !tbaa !10
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = lshr i64 %.pre, %i.ad
  store i64 %i.ae, ptr %6, align 8, !tbaa !10, !alias.scope !27
  br label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %i.y) #8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.f, %.thread, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.af = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %3) #8, !noalias !28 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !9, !noalias !28 ; 3 uses
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !9, !alias.scope !28
  %i.ai = load i64, ptr %6, align 8, !noalias !28 ; 2 uses
  store i64 %i.ai, ptr %5, align 8, !alias.scope !28
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.al = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIEm(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1) #8, !noalias !29 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !9, !noalias !29
  store i32 %i.an, ptr %i.am, align 8, !tbaa !9, !alias.scope !29
  %i.ao = load i64, ptr %9, align 8, !noalias !29
  store i64 %i.ao, ptr %8, align 8, !alias.scope !29
  store i32 0, ptr %i.aj, align 8, !tbaa !9, !noalias !29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !9, !noalias !30 ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 65
  br i1 %i.ar, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.as = load i64, ptr %10, align 8, !tbaa !10, !noalias !30
  %i.at = xor i64 %i.as, -1
  %i.au = sub nsw i32 0, %i.aq
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = icmp eq i32 %i.aq, 0
  %spec.select.i.i.i = select i1 %i.ay, i64 0, i64 %i.ax, !prof !13
  %i.az = and i64 %spec.select.i.i.i, %i.at
  store i64 %i.az, ptr %10, align 8, !tbaa !10, !noalias !30
  br label %_ZN4llvm5APIntD2Ev.exit12

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !30
  br label %_ZN4llvm5APIntD2Ev.exit12

_ZN4llvm5APIntD2Ev.exit12:                        ; preds = %bb.i, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i
  %i.ba = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !30 ; 0 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %8) #8, !noalias !30 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.ap, align 8, !tbaa !9, !noalias !30
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !9, !alias.scope !30
  %i.be = load i64, ptr %10, align 8, !noalias !30
  store i64 %i.be, ptr %7, align 8, !alias.scope !30
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
  %15 = and i64 %storemerge.i, %i.cd
  %16 = select i1 %i.ce, i64 0, i64 %15, !prof !13
  store i64 %16, ptr %11, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit

bb.n:                                             ; preds = %.critedge
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %11, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.n
  %i.cf = load i32, ptr %i.bq, align 8, !tbaa !9  ; 4 uses
  %i.cg = icmp ult i32 %i.cf, 65
  br i1 %i.cg, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i15, label %bb.o

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i15:       ; preds = %_ZN4llvm5APIntlSEj.exit
  %i.ch = icmp eq i32 %i.cf, 1
  %i.ci = load i64, ptr %12, align 8
  %i.cj = shl i64 %i.ci, 1
  %storemerge.i16 = select i1 %i.ch, i64 0, i64 %i.cj
  %i.ck = sub nsw i32 0, %i.cf
  %i.cl = and i32 %i.ck, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = lshr i64 -1, %i.cm
  %i.co = icmp eq i32 %i.cf, 0
  %17 = and i64 %storemerge.i16, %i.cn
  %18 = select i1 %i.co, i64 0, i64 %17, !prof !13
  store i64 %18, ptr %12, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit18

bb.o:                                             ; preds = %_ZN4llvm5APIntlSEj.exit
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit18

_ZN4llvm5APIntlSEj.exit18:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i15, %bb.o
  %i.cp = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %7) #10
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm5APIntlSEj.exit18
  %i.cr = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %11) #8 ; 0 uses
  %i.cs = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %7) #8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4llvm5APIntlSEj.exit18
  %i.ct = load i32, ptr %i.br, align 8, !tbaa !9  ; 4 uses
  %i.cu = icmp ult i32 %i.ct, 65
  br i1 %i.cu, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i19, label %bb.r

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i19:       ; preds = %bb.q
  %i.cv = icmp eq i32 %i.ct, 1
  %i.cw = load i64, ptr %13, align 8
  %i.cx = shl i64 %i.cw, 1
  %storemerge.i20 = select i1 %i.cv, i64 0, i64 %i.cx
  %i.cy = sub nsw i32 0, %i.ct
  %i.cz = and i32 %i.cy, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 -1, %i.da
  %i.dc = icmp eq i32 %i.ct, 0
  %19 = and i64 %storemerge.i20, %i.db
  %20 = select i1 %i.dc, i64 0, i64 %19, !prof !13
  store i64 %20, ptr %13, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit22

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit22

_ZN4llvm5APIntlSEj.exit22:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i19, %bb.r
  %i.dd = load i32, ptr %i.bs, align 8, !tbaa !9  ; 4 uses
  %i.de = icmp ult i32 %i.dd, 65
  br i1 %i.de, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i23, label %bb.s

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i23:       ; preds = %_ZN4llvm5APIntlSEj.exit22
  %i.df = icmp eq i32 %i.dd, 1
  %i.dg = load i64, ptr %14, align 8
  %i.dh = shl i64 %i.dg, 1
  %storemerge.i24 = select i1 %i.df, i64 0, i64 %i.dh
  %i.di = sub nsw i32 0, %i.dd
  %i.dj = and i32 %i.di, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = lshr i64 -1, %i.dk
  %i.dm = icmp eq i32 %i.dd, 0
  %21 = and i64 %storemerge.i24, %i.dl
  %22 = select i1 %i.dm, i64 0, i64 %21, !prof !13
  store i64 %22, ptr %14, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit26

bb.s:                                             ; preds = %_ZN4llvm5APIntlSEj.exit22
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit26

_ZN4llvm5APIntlSEj.exit26:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i23, %bb.s
  %i.dn = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %4) #10
  %i.do = icmp sgt i32 %i.dn, -1
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm5APIntlSEj.exit26
  %i.dp = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %13) #8 ; 0 uses
  %i.dq = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %4) #8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm5APIntlSEj.exit26
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !9
  %i.ds = icmp ult i32 %i.dr, 65
  br i1 %i.ds, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dt = load i32, ptr %i.bt, align 8, !tbaa !9  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 65
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = load i64, ptr %4, align 8, !tbaa !10
  store i64 %i.dv, ptr %2, align 8, !tbaa !10
  store i32 %i.dt, ptr %i.a, align 8, !tbaa !9
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %4) #8
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.w, %bb.x
  %i.dw = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %14) #8 ; 0 uses
  %i.dx = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %2) #10
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %.critedge.backedge, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.dz = load i32, ptr %i.bp, align 8, !tbaa !9
  %i.ea = icmp ult i32 %i.dz, 65
  br i1 %i.ea, label %.split, label %_ZNK4llvm5APInteqERKS0_.exit

.split:                                           ; preds = %bb.y
  %i.eb = load i64, ptr %11, align 8, !tbaa !10
  %i.ec = load i64, ptr %2, align 8, !tbaa !10
  %i.ed = icmp eq i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.z, label %.critedge2

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.y
  %i.ee = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %2) #10
  br i1 %i.ee, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %.split, %_ZNK4llvm5APInteqERKS0_.exit
  %i.ef = load i32, ptr %i.bq, align 8, !tbaa !9  ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 65
  br i1 %i.eg, label %.split37, label %_ZNK4llvm5APInt6isZeroEv.exit

.split37:                                         ; preds = %bb.z
  %i.eh = load i64, ptr %12, align 8, !tbaa !10
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.critedge.backedge, label %.critedge2

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.z
  %i.ej = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %12) #10
  %i.ek = icmp eq i32 %i.ej, %i.ef
  br i1 %i.ek, label %.critedge.backedge, label %.critedge2

.critedge.backedge:                               ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %_ZN4llvm5APIntaSERKS0_.exit, %.split37
  br label %.critedge, !llvm.loop !25

.critedge2:                                       ; preds = %.split37, %.split, %_ZNK4llvm5APInteqERKS0_.exit, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.el = load i32, ptr %i.w, align 8, !tbaa !9
  %i.em = icmp ult i32 %i.el, 65
  br i1 %i.em, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge2
  %i.en = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.en) #9
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %.critedge2, %bb.aa, %bb.ab
  %i.ep = load i64, ptr %13, align 8
  store i64 %i.ep, ptr %0, align 8
  %i.eq = load i32, ptr %i.br, align 8, !tbaa !9
  store i32 %i.eq, ptr %i.w, align 8, !tbaa !9
  store i32 0, ptr %i.br, align 8, !tbaa !9
  %i.er = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #8 ; 0 uses
  %i.es = load i32, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.et = add i32 %i.es, -1                       ; 2 uses
  %i.eu = and i32 %i.et, 63
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = icmp ult i32 %i.es, 65
  %i.ey = load ptr, ptr %1, align 8
  %i.ez = lshr i32 %i.et, 6
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fa
  %.in.i.i.i = select i1 %i.ex, ptr %1, ptr %i.fb
  %i.fc = load i64, ptr %.in.i.i.i, align 8, !tbaa !10
  %i.fd = and i64 %i.ew, %i.fc
  %.not = icmp eq i64 %i.fd, 0
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  %i.fe = load i32, ptr %i.w, align 8, !tbaa !9   ; 3 uses
  %i.ff = icmp ult i32 %i.fe, 65
  br i1 %i.ff, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.ad

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %bb.ac
  %i.fg = load i64, ptr %0, align 8, !tbaa !10
  %i.fh = xor i64 %i.fg, -1
  %i.fi = sub nsw i32 0, %i.fe
  %i.fj = and i32 %i.fi, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = lshr i64 -1, %i.fk
  %i.fm = icmp eq i32 %i.fe, 0
  %spec.select.i.i = select i1 %i.fm, i64 0, i64 %i.fl, !prof !13
  %i.fn = and i64 %spec.select.i.i, %i.fh
  store i64 %i.fn, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvm5APInt6negateEv.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  br label %_ZN4llvm5APInt6negateEv.exit

_ZN4llvm5APInt6negateEv.exit:                     ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.ad
  %i.fo = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #8 ; 0 uses
  %.pre38 = load i32, ptr %i.b, align 8, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm5APInt6negateEv.exit, %_ZN4llvm5APIntaSEOS0_.exit
  %i.fp = phi i32 [ %.pre38, %_ZN4llvm5APInt6negateEv.exit ], [ %i.es, %_ZN4llvm5APIntaSEOS0_.exit ]
  %i.fq = sub i32 %i.bu, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !32
  %i.fs = load i32, ptr %i.bs, align 8, !tbaa !9
  %i.ft = icmp ugt i32 %i.fs, 64
  br i1 %i.ft, label %bb.af, label %_ZN4llvm5APIntD2Ev.exit28

bb.af:                                            ; preds = %bb.ae
  %i.fu = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZN4llvm5APIntD2Ev.exit28, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.fu) #9
  br label %_ZN4llvm5APIntD2Ev.exit28

_ZN4llvm5APIntD2Ev.exit28:                        ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  %i.fw = load i32, ptr %i.br, align 8, !tbaa !9
  %i.fx = icmp ugt i32 %i.fw, 64
  br i1 %i.fx, label %bb.ah, label %_ZN4llvm5APIntD2Ev.exit29

bb.ah:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit28
  %i.fy = load ptr, ptr %13, align 8, !tbaa !10   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #9
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %_ZN4llvm5APIntD2Ev.exit28, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.ga = load i32, ptr %i.bq, align 8, !tbaa !9
  %i.gb = icmp ugt i32 %i.ga, 64
  br i1 %i.gb, label %bb.aj, label %_ZN4llvm5APIntD2Ev.exit30

bb.aj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit29
  %i.gc = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_ZN4llvm5APIntD2Ev.exit30, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gc) #9
  br label %_ZN4llvm5APIntD2Ev.exit30

_ZN4llvm5APIntD2Ev.exit30:                        ; preds = %_ZN4llvm5APIntD2Ev.exit29, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.ge = load i32, ptr %i.bp, align 8, !tbaa !9
  %i.gf = icmp ugt i32 %i.ge, 64
  br i1 %i.gf, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit31

bb.al:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit30
  %i.gg = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN4llvm5APIntD2Ev.exit31, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #9
end_hunk_0
begin_hunk_1_@_ZN4llvm30UnsignedDivisionByConstantInfo3getERKNS_5APIntEjbb:bb.a

bb.m:                                             ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit
  %i.bu = load i64, ptr %6, align 8, !tbaa !10
  store i64 %i.bu, ptr %13, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.n:                                             ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %6) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.m, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.bv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 1) #8, !noalias !74 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !9, !noalias !74
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !9, !alias.scope !74
  %i.by = load i64, ptr %13, align 8, !noalias !74
  store i64 %i.by, ptr %12, align 8, !alias.scope !74
  store i32 0, ptr %i.br, align 8, !tbaa !9, !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.bz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(12) %1) #8, !noalias !75 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.bw, align 8, !tbaa !9, !noalias !75
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !9, !alias.scope !75
  %i.cc = load i64, ptr %12, align 8, !noalias !75
  store i64 %i.cc, ptr %11, align 8, !alias.scope !75
  store i32 0, ptr %i.bw, align 8, !tbaa !9, !noalias !75
  call void @_ZNK4llvm5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !9, !noalias !76 ; 3 uses
  %i.cf = icmp ult i32 %i.ce, 65
  br i1 %i.cf, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.o

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.cg = load i64, ptr %10, align 8, !tbaa !10, !noalias !76
  %i.ch = xor i64 %i.cg, -1
  %i.ci = sub nsw i32 0, %i.ce
  %i.cj = and i32 %i.ci, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 -1, %i.ck
  %i.cm = icmp eq i32 %i.ce, 0
  %spec.select.i.i.i41 = select i1 %i.cm, i64 0, i64 %i.cl, !prof !13
  %i.cn = and i64 %spec.select.i.i.i41, %i.ch
  store i64 %i.cn, ptr %10, align 8, !tbaa !10, !noalias !76
  br label %_ZN4llvm5APIntD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !76
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.o, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i
  %i.co = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %10) #8, !noalias !76 ; 0 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %6) #8, !noalias !76 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !9, !noalias !76
  store i32 %i.cr, ptr %i.cq, align 8, !tbaa !9, !alias.scope !76
  %i.cs = load i64, ptr %10, align 8, !noalias !76
  store i64 %i.cs, ptr %9, align 8, !alias.scope !76
  store i32 0, ptr %i.cd, align 8, !tbaa !9, !noalias !76
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
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.dv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(12) %15) #8, !noalias !77 ; 0 uses
  %i.dw = load i32, ptr %i.dl, align 8, !tbaa !9, !noalias !77 ; 2 uses
  store i32 %i.dw, ptr %i.dm, align 8, !tbaa !9, !alias.scope !77
  %i.dx = load i64, ptr %19, align 8, !noalias !77 ; 3 uses
  store i64 %i.dx, ptr %18, align 8, !alias.scope !77
  store i32 0, ptr %i.dl, align 8, !tbaa !9, !noalias !77
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
  %30 = and i64 %storemerge.i, %i.eo
  %31 = select i1 %i.ep, i64 0, i64 %30, !prof !13
  store i64 %31, ptr %14, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.aa
  %i.eq = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %14) #8 ; 0 uses
  %i.er = load i32, ptr %i.di, align 8, !tbaa !9  ; 4 uses
  %i.es = icmp ult i32 %i.er, 65
  br i1 %i.es, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i48, label %bb.ab

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i48:       ; preds = %_ZN4llvm5APIntlSEj.exit
  %i.et = icmp eq i32 %i.er, 1
  %i.eu = load i64, ptr %15, align 8
  %i.ev = shl i64 %i.eu, 1
  %storemerge.i49 = select i1 %i.et, i64 0, i64 %i.ev
  %i.ew = sub nsw i32 0, %i.er
  %i.ex = and i32 %i.ew, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = lshr i64 -1, %i.ey
  %i.fa = icmp eq i32 %i.er, 0
  %32 = and i64 %storemerge.i49, %i.ez
  %33 = select i1 %i.fa, i64 0, i64 %32, !prof !13
  store i64 %33, ptr %15, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit51

bb.ab:                                            ; preds = %_ZN4llvm5APIntlSEj.exit
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit51

_ZN4llvm5APIntlSEj.exit51:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i48, %bb.ab
  %i.fb = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %9) #8 ; 0 uses
  br label %_ZN4llvm5APIntlSEj.exit59

bb.ac:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit47
  br i1 %i.eh, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i52, label %bb.ad

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i52:       ; preds = %bb.ac
  %i.fc = icmp eq i32 %i.eg, 1
  %i.fd = load i64, ptr %14, align 8
  %i.fe = shl i64 %i.fd, 1
  %storemerge.i53 = select i1 %i.fc, i64 0, i64 %i.fe
  %i.ff = sub nsw i32 0, %i.eg
  %i.fg = and i32 %i.ff, 63
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = lshr i64 -1, %i.fh
  %i.fj = icmp eq i32 %i.eg, 0
  %34 = and i64 %storemerge.i53, %i.fi
  %35 = select i1 %i.fj, i64 0, i64 %34, !prof !13
  store i64 %35, ptr %14, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit55

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %14, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit55

_ZN4llvm5APIntlSEj.exit55:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i52, %bb.ad
  %i.fk = load i32, ptr %i.di, align 8, !tbaa !9  ; 4 uses
  %i.fl = icmp ult i32 %i.fk, 65
  br i1 %i.fl, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i56, label %bb.ae

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i56:       ; preds = %_ZN4llvm5APIntlSEj.exit55
  %i.fm = icmp eq i32 %i.fk, 1
  %i.fn = load i64, ptr %15, align 8
  %i.fo = shl i64 %i.fn, 1
  %storemerge.i57 = select i1 %i.fm, i64 0, i64 %i.fo
  %i.fp = sub nsw i32 0, %i.fk
  %i.fq = and i32 %i.fp, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = lshr i64 -1, %i.fr
  %i.ft = icmp eq i32 %i.fk, 0
  %36 = and i64 %storemerge.i57, %i.fs
  %37 = select i1 %i.ft, i64 0, i64 %36, !prof !13
  store i64 %37, ptr %15, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit59

bb.ae:                                            ; preds = %_ZN4llvm5APIntlSEj.exit55
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit59

_ZN4llvm5APIntlSEj.exit59:                        ; preds = %bb.ae, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i56, %_ZN4llvm5APIntlSEj.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.fu = load i32, ptr %i.dk, align 8, !tbaa !9  ; 2 uses
  store i32 %i.fu, ptr %i.dn, align 8, !tbaa !9
  %i.fv = icmp ult i32 %i.fu, 65
  br i1 %i.fv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm5APIntlSEj.exit59
  %i.fw = load i64, ptr %17, align 8, !tbaa !10
  store i64 %i.fw, ptr %21, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit60

bb.ag:                                            ; preds = %_ZN4llvm5APIntlSEj.exit59
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %17) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit60

_ZN4llvm5APIntC2ERKS0_.exit60:                    ; preds = %bb.af, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.fx = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef 1) #8, !noalias !78 ; 0 uses
  %i.fy = load i32, ptr %i.dn, align 8, !tbaa !9, !noalias !78
  store i32 %i.fy, ptr %i.do, align 8, !tbaa !9, !alias.scope !78
  %i.fz = load i64, ptr %21, align 8, !noalias !78
  store i64 %i.fz, ptr %20, align 8, !alias.scope !78
  store i32 0, ptr %i.dn, align 8, !tbaa !9, !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  %i.ga = load i32, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  store i32 %i.ga, ptr %i.dp, align 8, !tbaa !9
  %i.gb = icmp ult i32 %i.ga, 65
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit60
  %i.gc = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.gc, ptr %23, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2ERKS0_.exit61

bb.ai:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit60
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit61

_ZN4llvm5APIntC2ERKS0_.exit61:                    ; preds = %bb.ah, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.gd = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(12) %17) #8, !noalias !79 ; 0 uses
  %i.ge = load i32, ptr %i.dp, align 8, !tbaa !9, !noalias !79 ; 2 uses
  store i32 %i.ge, ptr %i.dq, align 8, !tbaa !9, !alias.scope !79
  %i.gf = load i64, ptr %23, align 8, !noalias !79 ; 3 uses
  store i64 %i.gf, ptr %22, align 8, !alias.scope !79
  store i32 0, ptr %i.dp, align 8, !tbaa !9, !noalias !79
  %i.gg = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(12) %22) #10
  %i.gh = icmp sgt i32 %i.gg, -1
  %i.gi = icmp ult i32 %i.ge, 65
  %i.gj = icmp eq i64 %i.gf, 0
  %or.cond169 = select i1 %i.gi, i1 true, i1 %i.gj
  br i1 %or.cond169, label %_ZN4llvm5APIntD2Ev.exit63, label %_ZN4llvm5APIntD2Ev.exit62

_ZN4llvm5APIntD2Ev.exit62:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit61
  %i.gk = inttoptr i64 %i.gf to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.gk) #9
  %.pr108.pre = load i32, ptr %i.dp, align 8, !tbaa !9
  %i.gl = icmp ugt i32 %.pr108.pre, 64
  br i1 %i.gl, label %bb.aj, label %_ZN4llvm5APIntD2Ev.exit63

bb.aj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit62
  %i.gm = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN4llvm5APIntD2Ev.exit63, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #9
  br label %_ZN4llvm5APIntD2Ev.exit63

_ZN4llvm5APIntD2Ev.exit63:                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit61, %_ZN4llvm5APIntD2Ev.exit62, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  %i.go = load i32, ptr %i.do, align 8, !tbaa !9
  %i.gp = icmp ugt i32 %i.go, 64
  br i1 %i.gp, label %bb.al, label %_ZN4llvm5APIntD2Ev.exit64

bb.al:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit63
  %i.gq = load ptr, ptr %20, align 8, !tbaa !10   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN4llvm5APIntD2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.gq) #9
  br label %_ZN4llvm5APIntD2Ev.exit64

_ZN4llvm5APIntD2Ev.exit64:                        ; preds = %_ZN4llvm5APIntD2Ev.exit63, %bb.al, %bb.am
  %i.gs = load i32, ptr %i.dn, align 8, !tbaa !9
  %i.gt = icmp ugt i32 %i.gs, 64
  br i1 %i.gt, label %bb.an, label %_ZN4llvm5APIntD2Ev.exit65

bb.an:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit64
  %i.gu = load ptr, ptr %21, align 8, !tbaa !10   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %_ZN4llvm5APIntD2Ev.exit65, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.gu) #9
  br label %_ZN4llvm5APIntD2Ev.exit65

_ZN4llvm5APIntD2Ev.exit65:                        ; preds = %_ZN4llvm5APIntD2Ev.exit64, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br i1 %i.gh, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit65
  %i.gw = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %8) #10
  %i.gx = icmp sgt i32 %i.gw, -1
  br i1 %i.gx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.c, align 8, !tbaa !68
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gy = load i32, ptr %i.dj, align 8, !tbaa !9  ; 4 uses
  %i.gz = icmp ult i32 %i.gy, 65
  br i1 %i.gz, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i66, label %bb.as

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i66:       ; preds = %bb.ar
  %i.ha = icmp eq i32 %i.gy, 1
  %i.hb = load i64, ptr %16, align 8
  %i.hc = shl i64 %i.hb, 1
  %storemerge.i67 = select i1 %i.ha, i64 0, i64 %i.hc
  %i.hd = sub nsw i32 0, %i.gy
  %i.he = and i32 %i.hd, 63
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = lshr i64 -1, %i.hf
  %i.hh = icmp eq i32 %i.gy, 0
  %38 = and i64 %storemerge.i67, %i.hg
  %39 = select i1 %i.hh, i64 0, i64 %38, !prof !13
  store i64 %39, ptr %16, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit69

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit69

_ZN4llvm5APIntlSEj.exit69:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i66, %bb.as
  %i.hi = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %16) #8 ; 0 uses
  %i.hj = load i32, ptr %i.dk, align 8, !tbaa !9  ; 4 uses
  %i.hk = icmp ult i32 %i.hj, 65
  br i1 %i.hk, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i70, label %bb.at

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i70:       ; preds = %_ZN4llvm5APIntlSEj.exit69
  %i.hl = icmp eq i32 %i.hj, 1
  %i.hm = load i64, ptr %17, align 8
  %i.hn = shl i64 %i.hm, 1
  %storemerge.i71 = select i1 %i.hl, i64 0, i64 %i.hn
  %i.ho = sub nsw i32 0, %i.hj
  %i.hp = and i32 %i.ho, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = lshr i64 -1, %i.hq
  %i.hs = icmp eq i32 %i.hj, 0
  %40 = and i64 %storemerge.i71, %i.hr
  %41 = select i1 %i.hs, i64 0, i64 %40, !prof !13
  store i64 %41, ptr %17, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit73

bb.at:                                            ; preds = %_ZN4llvm5APIntlSEj.exit69
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit73

_ZN4llvm5APIntlSEj.exit73:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i70, %bb.at
  %i.ht = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %17) #8 ; 0 uses
  %i.hu = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(12) %1) #8 ; 0 uses
  br label %bb.az

bb.au:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit65
  %i.hv = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %7) #10
  %i.hw = icmp sgt i32 %i.hv, -1
  br i1 %i.hw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.c, align 8, !tbaa !68
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hx = load i32, ptr %i.dj, align 8, !tbaa !9  ; 4 uses
  %i.hy = icmp ult i32 %i.hx, 65
  br i1 %i.hy, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i74, label %bb.ax

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i74:       ; preds = %bb.aw
  %i.hz = icmp eq i32 %i.hx, 1
  %i.ia = load i64, ptr %16, align 8
  %i.ib = shl i64 %i.ia, 1
  %storemerge.i75 = select i1 %i.hz, i64 0, i64 %i.ib
  %i.ic = sub nsw i32 0, %i.hx
  %i.id = and i32 %i.ic, 63
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = lshr i64 -1, %i.ie
  %i.ig = icmp eq i32 %i.hx, 0
  %42 = and i64 %storemerge.i75, %i.if
  %43 = select i1 %i.ig, i64 0, i64 %42, !prof !13
  store i64 %43, ptr %16, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit77

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit77

_ZN4llvm5APIntlSEj.exit77:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i74, %bb.ax
  %i.ih = load i32, ptr %i.dk, align 8, !tbaa !9  ; 4 uses
  %i.ii = icmp ult i32 %i.ih, 65
  br i1 %i.ii, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i78, label %bb.ay

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i78:       ; preds = %_ZN4llvm5APIntlSEj.exit77
  %i.ij = icmp eq i32 %i.ih, 1
  %i.ik = load i64, ptr %17, align 8
  %i.il = shl i64 %i.ik, 1
  %storemerge.i79 = select i1 %i.ij, i64 0, i64 %i.il
  %i.im = sub nsw i32 0, %i.ih
  %i.in = and i32 %i.im, 63
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = lshr i64 -1, %i.io
  %i.iq = icmp eq i32 %i.ih, 0
  %44 = and i64 %storemerge.i79, %i.ip
  %45 = select i1 %i.iq, i64 0, i64 %44, !prof !13
  store i64 %45, ptr %17, align 8, !tbaa !10
  br label %_ZN4llvm5APIntlSEj.exit81

bb.ay:                                            ; preds = %_ZN4llvm5APIntlSEj.exit77
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %17, i32 noundef 1) #8
  br label %_ZN4llvm5APIntlSEj.exit81

_ZN4llvm5APIntlSEj.exit81:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i78, %bb.ay
  %i.ir = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12) %17) #8 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm5APIntlSEj.exit81, %_ZN4llvm5APIntlSEj.exit73
  %i.is = load i32, ptr %i.a, align 8, !tbaa !9
  %i.it = icmp ult i32 %i.is, 65
  br i1 %i.it, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.iu = load i32, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  %i.iv = icmp ult i32 %i.iu, 65
  br i1 %i.iv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.iw = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.iw, ptr %5, align 8, !tbaa !10
  store i32 %i.iu, ptr %i.a, align 8, !tbaa !9
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.bc:                                            ; preds = %bb.ba, %bb.az
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.bb, %bb.bc
  %i.ix = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmmEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #8 ; 0 uses
  %i.iy = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %17) #8 ; 0 uses
  %i.iz = load i32, ptr %i.e, align 8, !tbaa !9   ; 6 uses
  %i.ja = shl i32 %i.iz, 1
  %i.jb = icmp ult i32 %i.dr, %i.ja
  br i1 %i.jb, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.jc = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %5) #10
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %.critedge2.backedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.je = load i32, ptr %i.dh, align 8, !tbaa !9
  %i.jf = icmp ult i32 %i.je, 65
  br i1 %i.jf, label %.split, label %_ZNK4llvm5APInteqERKS0_.exit

.split:                                           ; preds = %bb.be
  %i.jg = load i64, ptr %14, align 8, !tbaa !10
  %i.jh = load i64, ptr %5, align 8, !tbaa !10
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.bf, label %.critedge

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %bb.be
  %i.jj = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %5) #10
  br i1 %i.jj, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %.split, %_ZNK4llvm5APInteqERKS0_.exit
  %i.jk = load i32, ptr %i.di, align 8, !tbaa !9  ; 2 uses
  %i.jl = icmp ult i32 %i.jk, 65
  br i1 %i.jl, label %.split109, label %_ZNK4llvm5APInt6isZeroEv.exit

.split109:                                        ; preds = %bb.bf
  %i.jm = load i64, ptr %15, align 8, !tbaa !10
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %.critedge2.backedge, label %.critedge

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.bf
  %i.jo = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #10
  %i.jp = icmp eq i32 %i.jo, %i.jk
  br i1 %i.jp, label %.critedge2.backedge, label %.critedge

.critedge2.backedge:                              ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %bb.bd, %.split109
  br label %.critedge2, !llvm.loop !56

.critedge:                                        ; preds = %.split109, %.split, %_ZN4llvm5APIntaSERKS0_.exit, %_ZNK4llvm5APInteqERKS0_.exit, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.jq = load i8, ptr %i.c, align 8, !tbaa !68, !range !80, !noundef !81
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bg, label %bb.bq

bb.bg:                                            ; preds = %.critedge
  %i.js = icmp ult i32 %i.iz, 65                  ; 2 uses
  %i.jt = load ptr, ptr %1, align 8               ; 2 uses
  %.in.i.i = select i1 %i.js, ptr %1, ptr %i.jt
  %i.ju = load i64, ptr %.in.i.i, align 8, !tbaa !10
  %i.jv = and i64 %i.ju, 1
  %.not115 = icmp eq i64 %i.jv, 0
  %or.cond = and i1 %3, %.not115
  %i.jw = ptrtoint ptr %i.jt to i64               ; 2 uses
  br i1 %or.cond, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.js, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.thread.i:             ; preds = %bb.bh
  %i.jx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jw, i1 false)
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %..i = call i32 @llvm.umin.i32(i32 %i.iz, i32 %i.jy)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.jz = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i32 %i.iz, ptr %i.jz, align 8, !tbaa !9, !alias.scope !82
  store i64 %i.jw, ptr %24, align 8, !tbaa !10, !alias.scope !83
  br label %bb.bi

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.bh
  %i.ka = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.kb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i32 %i.iz, ptr %i.kb, align 8, !tbaa !9, !alias.scope !83
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %24, ptr noundef nonnull align 8 dereferenceable(12) %1) #8
  %.pr.i84 = load i32, ptr %i.kb, align 8, !tbaa !9, !alias.scope !83 ; 2 uses
  %i.kc = icmp ult i32 %.pr.i84, 65
  br i1 %i.kc, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i
  %i.kd = phi ptr [ %i.jz, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %i.kb, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 2 uses
  %.0.i83112 = phi i32 [ %..i, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %i.ka, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 4 uses
  %i.ke = phi i32 [ %i.iz, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %.pr.i84, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.kf = icmp eq i32 %.0.i83112, %i.ke
  br i1 %i.kf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i64 0, ptr %24, align 8, !tbaa !10, !alias.scope !83
  br label %_ZNK4llvm5APInt4lshrEj.exit

bb.bk:                                            ; preds = %bb.bi
  %i.kg = load i64, ptr %24, align 8, !tbaa !10, !alias.scope !83
  %i.kh = zext nneg i32 %.0.i83112 to i64
  %i.ki = lshr i64 %i.kg, %i.kh
  store i64 %i.ki, ptr %24, align 8, !tbaa !10, !alias.scope !83
  br label %_ZNK4llvm5APInt4lshrEj.exit

bb.bl:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %24, i32 noundef %i.ka) #8
  br label %_ZNK4llvm5APInt4lshrEj.exit

_ZNK4llvm5APInt4lshrEj.exit:                      ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.kj = phi ptr [ %i.kd, %bb.bj ], [ %i.kd, %bb.bk ], [ %i.kb, %bb.bl ]
  %.0.i83111 = phi i32 [ %.0.i83112, %bb.bj ], [ %.0.i83112, %bb.bk ], [ %i.ka, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.kk = add i32 %.0.i83111, %2
  call void @_ZN4llvm30UnsignedDivisionByConstantInfo3getERKNS_5APIntEjbb(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::UnsignedDivisionByConstantInfo") align 8 %25, ptr noundef nonnull align 8 dereferenceable(12) %24, i32 noundef %i.kk, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.kl = load i32, ptr %i.b, align 8, !tbaa !9
  %i.km = icmp ult i32 %i.kl, 65
  br i1 %i.km, label %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNK4llvm5APInt4lshrEj.exit
  %i.kn = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.kn) #9
  br label %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit

_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit: ; preds = %bb.bn, %bb.bm, %_ZNK4llvm5APInt4lshrEj.exit
  %i.kp = load i64, ptr %25, align 8
  store i64 %i.kp, ptr %0, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !9
  store i32 %i.kr, ptr %i.b, align 8, !tbaa !9
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.c, ptr noundef nonnull align 8 dereferenceable(13) %i.ks, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i83111, ptr %i.kt, align 8, !tbaa !84
  %i.ku = load i32, ptr %i.kj, align 8, !tbaa !9
  %i.kv = icmp ugt i32 %i.ku, 64
  br i1 %i.kv, label %bb.bo, label %_ZN4llvm5APIntD2Ev.exit85

bb.bo:                                            ; preds = %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit
  %i.kw = load ptr, ptr %24, align 8, !tbaa !10   ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %_ZN4llvm5APIntD2Ev.exit85, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdaPv(ptr noundef nonnull %i.kw) #9
  br label %_ZN4llvm5APIntD2Ev.exit85

_ZN4llvm5APIntD2Ev.exit85:                        ; preds = %_ZN4llvm30UnsignedDivisionByConstantInfoD2Ev.exit, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  br label %bb.cg

bb.bq:                                            ; preds = %bb.bg, %.critedge
  %i.ky = load i32, ptr %i.b, align 8, !tbaa !9
  %i.kz = icmp ult i32 %i.ky, 65
  br i1 %i.kz, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.la = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.la) #9
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %bb.bq, %bb.br, %bb.bs
  %i.lc = load i64, ptr %16, align 8
end_hunk_1
