Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeclTemplate?download=true
inline.NumInlined: 3169
inline.NumDeleted: 1790
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang21TemplateParameterListC2ERKNS_10ASTContextENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_9NamedDeclEEES4_PNS_4ExprE:bb.a
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc) #22
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr @_ZZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, align 8
  %i.ae = and i64 %i.ad, -8589934592
  store i64 %i.ae, ptr @_ZZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, i64 8), align 8, !tbaa !30
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, i64 24), align 8
  %i.af = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.copyload.i.i.i.i2.i = load i64, ptr %i.y, align 8 ; 3 uses
  %i.ag = icmp ugt i64 %.0.copyload.i.i.i.i2.i, 7
  br i1 %i.ag, label %bb.j, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang23NonTypeTemplateParmDeclEEbRKT_.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = and i64 %.0.copyload.i.i.i.i2.i, 6
  %i.ai = icmp eq i64 %i.ah, 2
  %i.aj = and i64 %.0.copyload.i.i.i.i2.i, -7
  %i.ak = inttoptr i64 %i.aj to ptr
  %.0.i.i.i.i.i.i.i = select i1 %i.ai, ptr %i.ak, ptr null ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, null
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 72
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %i.y, ptr %i.al
  %.sroa.0.0.copyload.i.i.i.i13.i.i.i = load i64, ptr %spec.select.i.i.i, align 8 ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i13.i.i.i, 6
  %i.an = icmp ne i64 %i.am, 4
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i13.i.i.i, -7 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %.not1216.i.i.i = icmp eq i64 %i.ao, 0
  %.not12.i.i.i = or i1 %i.an, %.not1216.i.i.i
  br i1 %.not12.i.i.i, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang23NonTypeTemplateParmDeclEEbRKT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  br label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang23NonTypeTemplateParmDeclEEbRKT_.exit

_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang23NonTypeTemplateParmDeclEEbRKT_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.as = phi ptr [ @_ZZNK5clang23NonTypeTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, %bb.i ], [ %i.ar, %bb.k ], [ %i.ap, %bb.j ]
  %i.at = tail call noundef zeroext i1 @_ZNK5clang16TemplateArgument31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #22
  br i1 %i.at, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.d, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang23NonTypeTemplateParmDeclEEbRKT_.exit
  %i.au = load i32, ptr %i.d, align 4
  %i.av = or i32 %i.au, 536870912
  store i32 %i.av, ptr %i.d, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %.critedge2, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang23NonTypeTemplateParmDeclEEbRKT_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.ax = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !26
  %i.ba = tail call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.az) #22 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 16
  %i.bd = icmp eq i8 %i.bc, 16
  br i1 %i.bd, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread

_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit: ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %.not67 = icmp eq ptr %i.bf, null
  br i1 %.not67, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split

bb.m:                                             ; preds = %bb.b
  br i1 %i.n, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bj = load i32, ptr %i.bi, align 4            ; 3 uses
  %i.bk = and i32 %i.bj, 536870912
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.o, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %.not21.i = icmp sgt i32 %i.bj, -1
  br i1 %.not21.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = shl i32 %i.bj, 3                        ; 2 uses
  %.not3541.i = icmp eq i32 %i.bl, 0
  br i1 %.not3541.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %.idx.i = zext i32 %i.bl to i64
  %.add.i = add nuw nsw i64 %.idx.i, 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %.sroa.024.0.idx42.i = phi i64 [ %.sroa.024.0.add.i, %.critedge.i ], [ %.add.i, %.lr.ph.preheader.i ]
  %.sroa.024.0.add.i = add nsw i64 %.sroa.024.0.idx42.i, -8 ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.bh, i64 %.sroa.024.0.add.i
  %i.bm = load ptr, ptr %.ptr.i, align 8, !tbaa !19 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = and i32 %i.bo, 512
  %.not38.i = icmp eq i32 %i.bp, 0
  br i1 %.not38.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.bq = and i32 %i.bo, 127
  %.not48.i = icmp eq i32 %i.bq, 68
  br i1 %.not48.i, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 60
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 4
  %.not.i.i41 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i41, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !58
  %i.bw = load i24, ptr %i.bv, align 8
  %i.bx = and i24 %i.bw, 16384
  %.not40.i = icmp eq i24 %i.bx, 0
  br i1 %.not40.i, label %.critedge.i, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split

.critedge.i:                                      ; preds = %bb.s, %bb.r, %bb.q
  %.not35.i = icmp eq i64 %.sroa.024.0.add.i, 24
  br i1 %.not35.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge.i, %bb.o, %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  %.0.copyload.i.i.i.i.i42 = load i64, ptr %i.by, align 8
  %i.bz = icmp ugt i64 %.0.copyload.i.i.i.i.i42, 7
  br i1 %i.bz, label %bb.t, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread

bb.t:                                             ; preds = %.loopexit
  %i.ca = load atomic i8, ptr @_ZGVZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc acquire, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.w, !prof !27

bb.u:                                             ; preds = %bb.t
  %i.cc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc) #22
  %.not.i.i50 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load i64, ptr @_ZZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, align 8
  %i.ce = and i64 %i.cd, -8589934592
  store i64 %i.ce, ptr @_ZZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, i64 8), align 8, !tbaa !30
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, i64 24), align 8
  %i.cf = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.0.copyload.i.i.i.i2.i43 = load i64, ptr %i.by, align 8 ; 3 uses
  %i.cg = icmp ugt i64 %.0.copyload.i.i.i.i2.i43, 7
  br i1 %i.cg, label %bb.x, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit

bb.x:                                             ; preds = %bb.w
  %i.ch = and i64 %.0.copyload.i.i.i.i2.i43, 6
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = and i64 %.0.copyload.i.i.i.i2.i43, -7
  %i.ck = inttoptr i64 %i.cj to ptr
  %.0.i.i.i.i.i.i.i44 = select i1 %i.ci, ptr %i.ck, ptr null ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %.0.i.i.i.i.i.i.i44, null
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i44, i64 72
  %spec.select.i.i.i46 = select i1 %.not.i.i.i45, ptr %i.by, ptr %i.cl
  %.sroa.0.0.copyload.i.i.i.i13.i.i.i47 = load i64, ptr %spec.select.i.i.i46, align 8 ; 2 uses
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i.i13.i.i.i47, 6
  %i.cn = icmp ne i64 %i.cm, 4
  %i.co = and i64 %.sroa.0.0.copyload.i.i.i.i13.i.i.i47, -7 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %.not1216.i.i.i48 = icmp eq i64 %i.co, 0
  %.not12.i.i.i49 = or i1 %i.cn, %.not1216.i.i.i48
  br i1 %.not12.i.i.i49, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61
  br label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit

_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit: ; preds = %bb.w, %bb.x, %bb.y
  %i.cs = phi ptr [ @_ZZNK5clang24TemplateTemplateParmDecl18getDefaultArgumentEvE7NoneLoc, %bb.w ], [ %i.cr, %bb.y ], [ %i.cp, %bb.x ]
  %i.ct = tail call noundef zeroext i1 @_ZNK5clang16TemplateArgument31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs) #22
  br i1 %i.ct, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread

bb.z:                                             ; preds = %bb.b
  br i1 %i.n, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = icmp eq i32 %i.q, 68
  %spec.select.i.i51 = select i1 %i.cu, ptr %i.l, ptr null
  %i.cv = getelementptr inbounds nuw i8, ptr %spec.select.i.i51, i64 72 ; 3 uses
  %.0.copyload.i.i.i.i.i52 = load i64, ptr %i.cv, align 8
  %i.cw = icmp ugt i64 %.0.copyload.i.i.i.i.i52, 7
  br i1 %i.cw, label %bb.ab, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load atomic i8, ptr @_ZGVZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc acquire, align 8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.ac, label %bb.ae, !prof !27

bb.ac:                                            ; preds = %bb.ab
  %i.cz = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc) #22
  %.not.i.i60 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i60, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = load i64, ptr @_ZZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc, align 8
  %i.db = and i64 %i.da, -8589934592
  store i64 %i.db, ptr @_ZZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc, i64 8), align 8, !tbaa !30
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc, i64 24), align 8
  %i.dc = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.copyload.i.i.i.i2.i53 = load i64, ptr %i.cv, align 8 ; 3 uses
  %i.dd = icmp ugt i64 %.0.copyload.i.i.i.i2.i53, 7
  br i1 %i.dd, label %bb.af, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit

bb.af:                                            ; preds = %bb.ae
  %i.de = and i64 %.0.copyload.i.i.i.i2.i53, 6
  %i.df = icmp eq i64 %i.de, 2
  %i.dg = and i64 %.0.copyload.i.i.i.i2.i53, -7
  %i.dh = inttoptr i64 %i.dg to ptr
  %.0.i.i.i.i.i.i.i54 = select i1 %i.df, ptr %i.dh, ptr null ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %.0.i.i.i.i.i.i.i54, null
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i54, i64 72
  %spec.select.i.i.i56 = select i1 %.not.i.i.i55, ptr %i.cv, ptr %i.di
  %.sroa.0.0.copyload.i.i.i.i13.i.i.i57 = load i64, ptr %spec.select.i.i.i56, align 8 ; 2 uses
  %i.dj = and i64 %.sroa.0.0.copyload.i.i.i.i13.i.i.i57, 6
  %i.dk = icmp ne i64 %i.dj, 4
  %i.dl = and i64 %.sroa.0.0.copyload.i.i.i.i13.i.i.i57, -7 ; 2 uses
  %i.dm = inttoptr i64 %i.dl to ptr               ; 2 uses
  %.not1216.i.i.i58 = icmp eq i64 %i.dl, 0
  %.not12.i.i.i59 = or i1 %i.dk, %.not1216.i.i.i58
  br i1 %.not12.i.i.i59, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !64
  br label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit

_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.dp = phi ptr [ @_ZZNK5clang20TemplateTypeParmDecl18getDefaultArgumentEvE7NoneLoc, %bb.ae ], [ %i.do, %bb.ag ], [ %i.dm, %bb.af ]
  %i.dq = tail call noundef zeroext i1 @_ZNK5clang16TemplateArgument31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp) #22
  br i1 %i.dq, label %.sink.split, label %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit.thread

_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit.thread: ; preds = %bb.aa, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit, %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.ds = load i8, ptr %i.dr, align 4
  %i.dt = and i8 %i.ds, 4
  %.not.i61 = icmp eq i8 %i.dt, 0
  br i1 %.not.i61, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit.thread
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !58
  %i.dw = load i24, ptr %i.dv, align 8
  %i.dx = and i24 %i.dw, 16384
  %.not70 = icmp eq i24 %i.dx, 0
  br i1 %.not70, label %bb.ai, label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit
  %i.dy = load i32, ptr %i.d, align 4
  %i.dz = or i32 %i.dy, 536870912
  store i32 %i.dz, ptr %i.d, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang20TemplateTypeParmDeclEEbRKT_.exit.thread, %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.eb = load i8, ptr %i.ea, align 4
  %i.ec = and i8 %i.eb, 2
  %.not71 = icmp eq i8 %i.ec, 0
  br i1 %.not71, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread, label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split

_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split: ; preds = %bb.s, %bb.ai, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit, %bb.n, %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit
  %.sink81 = phi i32 [ -2147483648, %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit ], [ 536870912, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit ], [ -2147483648, %bb.ai ], [ 536870912, %bb.n ], [ 536870912, %bb.s ]
  %i.ed = load i32, ptr %i.d, align 4
  %i.ee = or i32 %i.ed, %.sink81
  store i32 %i.ee, ptr %i.d, align 4
  br label %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread

_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread: ; preds = %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit.thread.sink.split, %.loopexit, %.critedge, %bb.l, %_ZL45DefaultTemplateArgumentContainsUnexpandedPackIN5clang24TemplateTemplateParmDeclEEbRKT_.exit, %bb.m, %bb.ai, %_ZNK5clang23NonTypeTemplateParmDecl28hasPlaceholderTypeConstraintEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = load i32, ptr %i.d, align 4             ; 2 uses
  %i.eg = and i32 %i.ef, 536870911
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = icmp samesign ult i64 %indvars.iv.next, %i.eh
  br i1 %i.ei, label %bb.b, label %._crit_edge, !llvm.loop !647

bb.aj:                                            ; preds = %._crit_edge
  %i.ej = load i24, ptr %7, align 8
  %i.ek = and i24 %i.ej, 16384
  %.not64 = icmp eq i24 %i.ek, 0
  br i1 %.not64, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = or i32 %.lcssa, 536870912               ; 2 uses
  store i32 %i.el, ptr %i.d, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.em = phi i32 [ %i.el, %bb.ak ], [ %.lcssa, %bb.aj ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = and i32 %i.em, 536870911
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ep
  store ptr %7, ptr %i.eq, align 8, !tbaa !66
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK5clang4Decl23isTemplateParameterPackEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang21TemplateParameterList31containsUnexpandedParameterPackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 536870912
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp sgt i32 %i.b, -1
  br i1 %.not21, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl i32 %i.b, 3                          ; 2 uses
  %.not3541 = icmp eq i32 %i.d, 0
  br i1 %.not3541, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.idx = zext i32 %i.d to i64
  %.add = add nuw nsw i64 %.idx, 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.sroa.024.0.idx42 = phi i64 [ %.sroa.024.0.add, %.critedge ], [ %.add, %.lr.ph.preheader ]
  %.sroa.024.0.add = add nsw i64 %.sroa.024.0.idx42, -8 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.sroa.024.0.add
  %i.e = load ptr, ptr %.ptr, align 8, !tbaa !19  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 512
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.i = and i32 %i.g, 127
  %.not48 = icmp eq i32 %i.i, 68
  br i1 %.not48, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 4
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = load i24, ptr %i.n, align 8
  %i.p = and i24 %i.o, 16384
  %.not40 = icmp eq i24 %i.p, 0
  br i1 %.not40, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %.not35 = icmp eq i64 %.sroa.024.0.add, 24
  br i1 %.not35, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %bb.f, %bb.c, %bb.b, %bb.a
  %.6 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %.critedge ], [ true, %bb.f ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN5clang24RedeclarableTemplateDecl25findSpecializationLocallyINS_36VarTemplatePartialSpecializationDeclEJN4llvm8ArrayRefINS_16TemplateArgumentEEEPNS_21TemplateParameterListEEEEPNS0_15SpecEntryTraitsIT_E8DeclTypeERNS3_16FoldingSetVectorISA_NS3_11SmallVectorIPSA_Lj8EEEEERPvDpT0_:_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i
  store ptr %i.n, ptr %i.ai, align 8, !tbaa !149
  %i.aj = or i64 %.pre-phi.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %i.n to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.h ], [ %i.aj, %bb.g ]
  %i.al = or i64 %.sroa.0.1.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.al, ptr %i.o, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i = phi i64 [ %i.al, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.am = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  %i.an = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, -6 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %.not.not14.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  %.not.not.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN5clang36VarTemplatePartialSpecializationDecl17getMostRecentDeclEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !148
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !147 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !152 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i32 %i.aq, %i.at
  br i1 %.not12.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.at, ptr %i.ap, align 8, !tbaa !148
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !112
  %i.av = getelementptr i8, ptr %i.au, i64 152, !nosanitize !102
  %i.aw = load ptr, ptr %i.av, align 8, !nosanitize !102
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull %i.n) #22, !inline_history !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !149
  br label %_ZN5clang36VarTemplatePartialSpecializationDecl17getMostRecentDeclEv.exit

_ZN5clang36VarTemplatePartialSpecializationDecl17getMostRecentDeclEv.exit: ; preds = %bb.l, %bb.i, %bb.b, %_ZN5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDENS1_8ArrayRefINS_16TemplateArgumentEEEPNS_21TemplateParameterListERKNS_10ASTContextE.exit
  %i.az = phi ptr [ null, %_ZN5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDENS1_8ArrayRefINS_16TemplateArgumentEEEPNS_21TemplateParameterListERKNS_10ASTContextE.exit ], [ %i.v, %bb.b ], [ %i.ay, %bb.l ], [ %i.ao, %bb.i ]
  %i.ba = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZN4llvm16FoldingSetNodeIDD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5clang36VarTemplatePartialSpecializationDecl17getMostRecentDeclEv.exit
  call void @free(ptr noundef %i.ba) #22
  br label %_ZN4llvm16FoldingSetNodeIDD2Ev.exit

_ZN4llvm16FoldingSetNodeIDD2Ev.exit:              ; preds = %_ZN5clang36VarTemplatePartialSpecializationDecl17getMostRecentDeclEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret ptr %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10FoldingSetIN5clang36VarTemplatePartialSpecializationDeclEE14GetNodeProfileEPKNS_14FoldingSetBaseEPNS4_4NodeERNS_16FoldingSetNodeIDE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -104
  tail call void @_ZNK5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10FoldingSetIN5clang36VarTemplatePartialSpecializationDeclEE10NodeEqualsEPKNS_14FoldingSetBaseEPNS4_4NodeERKNS_16FoldingSetNodeIDEjRS9_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -104
  tail call void @_ZNK5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %4)
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm10FoldingSetIN5clang36VarTemplatePartialSpecializationDeclEE15ComputeNodeHashEPKNS_14FoldingSetBaseEPNS4_4NodeERNS_16FoldingSetNodeIDE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -104
  tail call void @_ZNK5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %i.b = load ptr, ptr %2, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !82
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.e, 2
  %i.f = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.b, i64 noundef %.idx.i.i.i) #22
  %i.g = trunc i64 %i.f to i32
  %i.h = xor i32 %i.g, -313160499
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !624  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 4 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !630
  %i.h = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #23 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !83
  %.not.i.i.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.c)
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %1, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 %i.c, ptr %i.o, align 1
  %i.p = load i32, ptr %i.i, align 8, !tbaa !82
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %i.i, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %.pre.i.i.i, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %i.k, align 4, !tbaa !83
  %.not.i2.i.i.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i2.i.i.i, label %bb.e, label %bb.d, !prof !81

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0)
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %1, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.t
  store i32 0, ptr %i.v, align 1
  %i.w = load i32, ptr %i.i, align 8, !tbaa !82
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.i, align 8, !tbaa !82
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i

_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i:  ; preds = %bb.e, %bb.d
  %.idx.i = mul nuw nsw i64 %i.d, 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %_ZN5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDENS1_8ArrayRefINS_16TemplateArgumentEEEPNS_21TemplateParameterListERKNS_10ASTContextE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i, %.lr.ph.i
  %.016.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.e, %_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i ] ; 2 uses
  tail call void @_ZNK5clang16TemplateArgument7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %.016.i, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.h) #22
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i, label %_ZN5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDENS1_8ArrayRefINS_16TemplateArgumentEEEPNS_21TemplateParameterListERKNS_10ASTContextE.exit, label %.lr.ph.i

_ZN5clang36VarTemplatePartialSpecializationDecl7ProfileERN4llvm16FoldingSetNodeIDENS1_8ArrayRefINS_16TemplateArgumentEEEPNS_21TemplateParameterListERKNS_10ASTContextE.exit: ; preds = %.lr.ph.i, %_ZN4llvm16FoldingSetNodeID10AddIntegerEm.exit.i
  tail call void @_ZNK5clang21TemplateParameterList7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.h)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang36VarTemplatePartialSpecializationDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !84
  %i.g = load i32, ptr %i.a, align 8, !tbaa !82
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !82
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !82
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENUlPvE_8__invokeES5_(ptr noundef %0) #12 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !634
  %switch.i.i = icmp ult i32 %i.a, 2
  br i1 %switch.i.i, label %_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENKUlPvE_clES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #22
  br label %_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENKUlPvE_clES5_.exit

_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENKUlPvE_clES5_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !65}
!1 = distinct !{null, null, null, null, null, null, null, null}
!2 = distinct !{!2, !65}
!3 = distinct !{null, null, null, null, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN5clang16TemplateArgumentE", !12, i64 0}
!14 = !{!"_ZTSN5clang14SourceLocationE", !9, i64 0}
!15 = !{!"_ZTSN5clang21TemplateParameterListE", !13, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !9, i64 20, !9, i64 23, !9, i64 23, !9, i64 23}
!16 = !{!15, !13, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"p1 _ZTSN5clang9NamedDeclE", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTSN5clang4TypeE", !12, i64 0}
!22 = !{!"_ZTSN4llvm6detail13PunnedPointerINS_12PointerUnionIJPKN5clang4TypeEPKNS3_8ExtQualsEEEEEE", !8, i64 0}
!23 = !{!"_ZTSN4llvm14PointerIntPairINS_12PointerUnionIJPKN5clang4TypeEPKNS2_8ExtQualsEEEELj3EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj3ESB_EEEE", !22, i64 0}
!24 = !{!"_ZTSN5clang8QualTypeE", !23, i64 0}
!25 = !{!"_ZTSN5clang22ExtQualsTypeCommonBaseE", !21, i64 0, !24, i64 8}
!26 = !{!25, !21, i64 0}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!"long", !8, i64 0}
!29 = !{!"_ZTSN5clang16TemplateArgument2TVE", !9, i64 0, !9, i64 3, !9, i64 4, !28, i64 8}
!30 = !{!29, !28, i64 8}
!31 = !{!"p1 _ZTSN5clang23NonTypeTemplateParmDeclE", !12, i64 0}
!32 = !{!"p1 _ZTSN5clang19TemplateArgumentLocE", !12, i64 0}
!33 = !{!"_ZTSN5clang17DefaultArgStorageINS_23NonTypeTemplateParmDeclEPNS_19TemplateArgumentLocEE5ChainE", !31, i64 0, !32, i64 8}
!34 = !{!33, !32, i64 8}
!35 = !{!"_ZTSN5clang4TypeE", !25, i64 0, !8, i64 16}
!36 = !{!"_ZTSN5clang11DeducedTypeE", !35, i64 0, !24, i64 24}
!37 = !{!"_ZTSN4llvm14FoldingSetBase4NodeE", !12, i64 0}
!38 = !{!"p1 _ZTSN5clang12TemplateDeclE", !12, i64 0}
!39 = !{!"_ZTSN5clang8AutoTypeE", !36, i64 0, !37, i64 32, !38, i64 40}
!40 = !{!39, !38, i64 40}
!41 = !{!"_ZTSN4llvm6detail13PunnedPointerIPN5clang4DeclEEE", !8, i64 0}
!42 = !{!"_ZTSN4llvm14PointerIntPairIPN5clang4DeclELj3ENS2_19ModuleOwnershipKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj3ES6_EEEE", !41, i64 0}
!43 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !8, i64 0}
!44 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang11DeclContextEPNS3_4Decl10MultipleDCEEEELi2EJEEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang11DeclContextEPNS3_4Decl10MultipleDCEEEELi1EJS8_EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang11DeclContextEPNS3_4Decl10MultipleDCEEEELi0EJS5_S8_EEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang11DeclContextEPNS1_4Decl10MultipleDCEEEE", !46, i64 0}
!48 = !{!"_ZTSN5clang4DeclE", !42, i64 8, !47, i64 16, !14, i64 24, !9, i64 28, !9, i64 28, !9, i64 29, !9, i64 29, !9, i64 29, !9, i64 29, !9, i64 29, !9, i64 29, !9, i64 29, !9, i64 30, !9, i64 32}
!49 = !{!"_ZTSN5clang15DeclarationNameE", !28, i64 0}
!50 = !{!"_ZTSN5clang9NamedDeclE", !48, i64 0, !49, i64 40}
!51 = !{!"p1 _ZTSN5clang21TemplateParameterListE", !12, i64 0}
!52 = !{!"_ZTSN5clang12TemplateDeclE", !50, i64 0, !18, i64 48, !51, i64 56}
!53 = !{!52, !51, i64 56}
!54 = !{!"p1 _ZTSN5clang4ExprE", !12, i64 0}
!55 = !{!"p1 _ZTSN5clang16ConceptReferenceE", !12, i64 0}
!56 = !{!"_ZTSN5clang16OptionalUnsignedIjEE", !9, i64 0}
!57 = !{!"_ZTSN5clang14TypeConstraintE", !54, i64 0, !55, i64 8, !56, i64 16}
!58 = !{!57, !54, i64 0}
!59 = !{!"p1 _ZTSN5clang24TemplateTemplateParmDeclE", !12, i64 0}
!60 = !{!"_ZTSN5clang17DefaultArgStorageINS_24TemplateTemplateParmDeclEPNS_19TemplateArgumentLocEE5ChainE", !59, i64 0, !32, i64 8}
!61 = !{!60, !32, i64 8}
!62 = !{!"p1 _ZTSN5clang20TemplateTypeParmDeclE", !12, i64 0}
!63 = !{!"_ZTSN5clang17DefaultArgStorageINS_20TemplateTypeParmDeclEPNS_19TemplateArgumentLocEE5ChainE", !62, i64 0, !32, i64 8}
!64 = !{!63, !32, i64 8}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!54, !54, i64 0}
!67 = !{!"p1 omnipotent char", !12, i64 0}
!68 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !9, i64 8, !9, i64 12}
!69 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !8, i64 0}
!73 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !71, i64 0, !72, i64 16}
!74 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !68, i64 0}
!75 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !74, i64 0}
!76 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !76, i64 0}
!78 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !67, i64 0, !28, i64 8, !73, i64 16, !77, i64 64}
!79 = !{!78, !67, i64 0}
!80 = !{!78, !28, i64 8}
!81 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!82 = !{!68, !9, i64 8}
!83 = !{!68, !9, i64 12}
!84 = !{!68, !12, i64 0}
!85 = !{!"_ZTSN5clang9ValueDeclE", !50, i64 0, !24, i64 48}
!86 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi2EJEEE", !43, i64 0}
!87 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi1EJS8_EEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi0EJS5_S8_EEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang14TypeSourceInfoEPNS1_14DeclaratorDecl7ExtInfoEEEE", !88, i64 0}
!90 = !{!"_ZTSN5clang14DeclaratorDeclE", !85, i64 0, !89, i64 56, !14, i64 64}
!91 = !{!"_ZTSN5clang20TemplateParmPositionE", !9, i64 0, !9, i64 2}
!92 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang19TemplateArgumentLocEPNS3_23NonTypeTemplateParmDeclEPNS3_17DefaultArgStorageIS6_S5_E5ChainEEEELi3EJEEE", !43, i64 0}
!93 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang19TemplateArgumentLocEPNS3_23NonTypeTemplateParmDeclEPNS3_17DefaultArgStorageIS6_S5_E5ChainEEEELi2EJSB_EEE", !92, i64 0}
!94 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang19TemplateArgumentLocEPNS3_23NonTypeTemplateParmDeclEPNS3_17DefaultArgStorageIS6_S5_E5ChainEEEELi1EJS7_SB_EEE", !93, i64 0}
!95 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang19TemplateArgumentLocEPNS3_23NonTypeTemplateParmDeclEPNS3_17DefaultArgStorageIS6_S5_E5ChainEEEELi0EJS5_S7_SB_EEE", !94, i64 0}
!96 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang19TemplateArgumentLocEPNS1_23NonTypeTemplateParmDeclEPNS1_17DefaultArgStorageIS4_S3_E5ChainEEEE", !95, i64 0}
!97 = !{!"_ZTSN5clang17DefaultArgStorageINS_23NonTypeTemplateParmDeclEPNS_19TemplateArgumentLocEEE", !96, i64 0}
!98 = !{!"bool", !8, i64 0}
!99 = !{!"_ZTSN5clang23NonTypeTemplateParmDeclE", !90, i64 0, !91, i64 68, !97, i64 72, !98, i64 80, !98, i64 81, !9, i64 84}
!100 = !{!99, !98, i64 80}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{!99, !9, i64 84}
!104 = !{!"_ZTSN5clang8TypeDeclE", !50, i64 0, !21, i64 48, !14, i64 56}
!105 = !{!104, !21, i64 48}
!106 = !{!99, !98, i64 81}
!107 = !{!"_ZTSN5clang20AssociatedConstraintE", !54, i64 0, !56, i64 8}
!108 = !{!107, !54, i64 0}
!109 = !{i64 0, i64 24, !20}
!110 = !{!28, !28, i64 0}
!111 = !{!"vtable pointer", !7, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!52, !18, i64 48}
!114 = !{!"_ZTSN5clang19BuiltinTemplateKindE", !8, i64 0}
!115 = !{!"_ZTSN5clang19BuiltinTemplateDeclE", !52, i64 0, !114, i64 64}
!116 = !{!115, !114, i64 64}
!117 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJNS2_IJPN5clang4DeclEPKvEEENS3_25LazyGenerationalUpdatePtrIPKS4_S5_XadL_ZNS3_17ExternalASTSource19CompleteRedeclChainESB_EEEEEEELi2EJEEE", !43, i64 0}
!118 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJNS2_IJPN5clang4DeclEPKvEEENS3_25LazyGenerationalUpdatePtrIPKS4_S5_XadL_ZNS3_17ExternalASTSource19CompleteRedeclChainESB_EEEEEEELi1EJSD_EEE", !117, i64 0}
!119 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJNS2_IJPN5clang4DeclEPKvEEENS3_25LazyGenerationalUpdatePtrIPKS4_S5_XadL_ZNS3_17ExternalASTSource19CompleteRedeclChainESB_EEEEEEELi0EJS8_SD_EEE", !118, i64 0}
!120 = !{!"_ZTSN4llvm12PointerUnionIJNS0_IJPN5clang4DeclEPKvEEENS1_25LazyGenerationalUpdatePtrIPKS2_S3_XadL_ZNS1_17ExternalASTSource19CompleteRedeclChainES9_EEEEEEE", !119, i64 0}
!121 = !{!"_ZTSN5clang12RedeclarableINS_24RedeclarableTemplateDeclEE8DeclLinkE", !120, i64 0}
!122 = !{!"p1 _ZTSN5clang24RedeclarableTemplateDeclE", !12, i64 0}
!123 = !{!"_ZTSN5clang12RedeclarableINS_24RedeclarableTemplateDeclEEE", !121, i64 0, !122, i64 8}
!124 = !{!"p1 _ZTSN5clang24RedeclarableTemplateDecl10CommonBaseE", !12, i64 0}
!125 = !{!"_ZTSN5clang24RedeclarableTemplateDeclE", !52, i64 0, !123, i64 64, !124, i64 80}
!126 = !{!125, !124, i64 80}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!"p1 _ZTSN5clang17ExternalASTSourceE", !12, i64 0}
!129 = !{!"_ZTSN4llvm18IntrusiveRefCntPtrIN5clang17ExternalASTSourceEEE", !128, i64 0}
!130 = !{!129, !128, i64 0}
!131 = !{!123, !122, i64 8}
!132 = !{!98, !98, i64 0}
!133 = !{ptr @_ZNK5clang24RedeclarableTemplateDecl27loadLazySpecializationsImplEb}
!134 = !{ptr @_ZNK5clang17ClassTemplateDecl23LoadLazySpecializationsEb, ptr @_ZNK5clang24RedeclarableTemplateDecl27loadLazySpecializationsImplEb}
!135 = !{ptr @_ZNK5clang17ClassTemplateDecl25getPartialSpecializationsEv, ptr @_ZNK5clang17ClassTemplateDecl23LoadLazySpecializationsEb, ptr @_ZNK5clang24RedeclarableTemplateDecl27loadLazySpecializationsImplEb}
!136 = !{!"any p2 pointer", !12, i64 0}
!137 = !{!"_ZTSN4llvm14FoldingSetBaseE", !136, i64 0, !9, i64 8, !9, i64 12}
!138 = !{!137, !9, i64 12}
!139 = !{!"p1 _ZTSN5clang38ClassTemplatePartialSpecializationDeclE", !12, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!"_ZTSN5clang12RedeclarableINS_7TagDeclEE8DeclLinkE", !120, i64 0}
!142 = !{!"p1 _ZTSN5clang7TagDeclE", !12, i64 0}
!143 = !{!"_ZTSN5clang12RedeclarableINS_7TagDeclEEE", !141, i64 0, !142, i64 8}
!144 = !{!143, !142, i64 8}
!145 = !{!"p1 _ZTSN5clang4DeclE", !12, i64 0}
!146 = !{!"_ZTSN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEE8LazyDataE", !128, i64 0, !9, i64 8, !145, i64 16}
!147 = !{!146, !128, i64 0}
!148 = !{!146, !9, i64 8}
!149 = !{!146, !145, i64 16}
!150 = !{!"_ZTSN4llvm14RefCountedBaseIN5clang17ExternalASTSourceEEE", !9, i64 0}
!151 = !{!"_ZTSN5clang17ExternalASTSourceE", !150, i64 8, !9, i64 12}
!152 = !{!151, !9, i64 12}
!153 = !{!"p1 _ZTSN5clang20TemplateArgumentListE", !12, i64 0}
!154 = !{!"_ZTSN5clang31ClassTemplateSpecializationDecl32SpecializedPartialSpecializationE", !139, i64 0, !153, i64 8}
!155 = !{!154, !139, i64 0}
!156 = !{!"p1 _ZTSN5clang14StoredDeclsMapE", !12, i64 0}
!157 = !{!"_ZTSN5clang11DeclContextE", !156, i64 0, !8, i64 8, !145, i64 16, !145, i64 24}
!158 = !{!"_ZTSN5clang11SourceRangeE", !14, i64 0, !14, i64 4}
!159 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang15TypedefNameDeclEPNS3_13QualifierInfoEEEELi2EJEEE", !43, i64 0}
!160 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang15TypedefNameDeclEPNS3_13QualifierInfoEEEELi1EJS7_EEE", !159, i64 0}
!161 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang15TypedefNameDeclEPNS3_13QualifierInfoEEEELi0EJS5_S7_EEE", !160, i64 0}
!162 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang15TypedefNameDeclEPNS1_13QualifierInfoEEEE", !161, i64 0}
!163 = !{!"_ZTSN5clang7TagDeclE", !104, i64 0, !157, i64 64, !143, i64 96, !158, i64 112, !162, i64 120}
!164 = !{!"_ZTSN5clang10RecordDeclE", !163, i64 0}
!165 = !{!"p1 _ZTSN5clang13CXXRecordDecl14DefinitionDataE", !12, i64 0}
!166 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang17ClassTemplateDeclEPNS3_24MemberSpecializationInfoEEEELi2EJEEE", !43, i64 0}
!167 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang17ClassTemplateDeclEPNS3_24MemberSpecializationInfoEEEELi1EJS7_EEE", !166, i64 0}
!168 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang17ClassTemplateDeclEPNS3_24MemberSpecializationInfoEEEELi0EJS5_S7_EEE", !167, i64 0}
!169 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang17ClassTemplateDeclEPNS1_24MemberSpecializationInfoEEEE", !168, i64 0}
!170 = !{!"_ZTSN5clang13CXXRecordDeclE", !164, i64 0, !165, i64 128, !169, i64 136}
!171 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang17ClassTemplateDeclEPNS3_31ClassTemplateSpecializationDecl32SpecializedPartialSpecializationEEEELi2EJEEE", !43, i64 0}
!172 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang17ClassTemplateDeclEPNS3_31ClassTemplateSpecializationDecl32SpecializedPartialSpecializationEEEELi1EJS8_EEE", !171, i64 0}
!173 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang17ClassTemplateDeclEPNS3_31ClassTemplateSpecializationDecl32SpecializedPartialSpecializationEEEELi0EJS5_S8_EEE", !172, i64 0}
!174 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang17ClassTemplateDeclEPNS1_31ClassTemplateSpecializationDecl32SpecializedPartialSpecializationEEEE", !173, i64 0}
!175 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang27ASTTemplateArgumentListInfoEPNS3_25ExplicitInstantiationInfoEEEELi2EJEEE", !43, i64 0}
!176 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang27ASTTemplateArgumentListInfoEPNS3_25ExplicitInstantiationInfoEEEELi1EJS8_EEE", !175, i64 0}
!177 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang27ASTTemplateArgumentListInfoEPNS3_25ExplicitInstantiationInfoEEEELi0EJS6_S8_EEE", !176, i64 0}
!178 = !{!"_ZTSN4llvm12PointerUnionIJPKN5clang27ASTTemplateArgumentListInfoEPNS1_25ExplicitInstantiationInfoEEEE", !177, i64 0}
!179 = !{!"_ZTSN5clang31ClassTemplateSpecializationDeclE", !170, i64 0, !37, i64 144, !174, i64 152, !178, i64 160, !153, i64 168, !14, i64 176, !9, i64 180, !9, i64 180}
!180 = !{!179, !153, i64 168}
!181 = !{!"_ZTSN5clang20TemplateArgumentListE", !9, i64 0}
!182 = !{!181, !9, i64 0}
!183 = !{!"p1 _ZTSN5clang8QualTypeE", !12, i64 0}
!184 = !{!"_ZTSN4llvm8ArrayRefIN5clang8QualTypeEEE", !183, i64 0, !28, i64 8}
!185 = !{!184, !28, i64 8}
!186 = !{!"_ZTSN4llvm14RefCountedBaseIN5clang10ASTContextEEE", !9, i64 0}
!187 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN5clang4TypeEvEE", !68, i64 0}
!188 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN5clang4TypeELb1EEE", !187, i64 0}
!189 = !{!"_ZTSN4llvm15SmallVectorImplIPN5clang4TypeEEE", !188, i64 0}
!190 = !{!"_ZTSN4llvm11SmallVectorIPN5clang4TypeELj0EEE", !189, i64 0}
end_hunk_1
