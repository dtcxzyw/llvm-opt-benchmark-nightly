Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMException?download=true
inline.NumInlined: 156
inline.NumDeleted: 103
begin_hunk_0_@_ZN4llvm12ARMException11endFunctionEPKNS_15MachineFunctionE:bb.a
  %i.n = icmp eq i8 %i.m, 14
  %spec.select.i.i = select i1 %i.n, ptr %i.l, ptr null ; 7 uses
  %.pre = load i16, ptr %i.h, align 2, !tbaa !285
  %.pre24 = and i16 %.pre, 8
  %i.o = icmp eq i16 %.pre24, 0
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef %spec.select.i.i) #6
  %cond.i.not = icmp eq i32 %i.p, 0
  br i1 %cond.i.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.r = tail call noundef i32 @_ZNK4llvm13AttributeList14getUWTableKindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #6
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.g, i32 noundef 45) #6
  br i1 %i.s, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread

_ZNK4llvm8Function21needsUnwindTableEntryEv.exit: ; preds = %bb.e
  %i.t = load i16, ptr %i.h, align 2, !tbaa !285
  %i.u = and i16 %i.t, 8
  %.not23 = icmp eq i16 %i.u, 0
  br i1 %.not23, label %.critedge, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit
  %.029 = phi ptr [ %spec.select.i.i, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit ], [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.b ], [ null, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !291
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !291
  %i.z = icmp ne ptr %i.w, %i.y
  br label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread

_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread: ; preds = %bb.d, %bb.e, %.critedge, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit
  %.028 = phi ptr [ %spec.select.i.i, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit ], [ %.029, %.critedge ], [ %spec.select.i.i, %bb.e ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.aa = phi i1 [ true, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit ], [ %i.z, %.critedge ], [ true, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !292
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !181, !nonnull !151, !align !152 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = tail call noundef i32 @_ZNK4llvm13AttributeList14getUWTableKindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #6
  %.not.i18 = icmp eq i32 %i.ag, 0
  br i1 %.not.i18, label %bb.f, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19.thread

bb.f:                                             ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ae, i32 noundef 45) #6
  br i1 %i.ah, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19.thread

_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !285
  %i.ak = and i16 %i.aj, 8
  %i.al = icmp ne i16 %i.ak, 0
  %or.cond = or i1 %i.aa, %i.al
  br i1 %or.cond, label %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #6
  br label %bb.k

_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19.thread: ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit.thread, %bb.f, %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19.thread
  %.not = icmp eq ptr %.028, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.aq = tail call noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073) %i.ap, ptr noundef nonnull %.028) #6
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.aq) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #6
  %i.ax = tail call noundef ptr @_ZN4llvm10EHStreamer18emitExceptionTableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm8Function21needsUnwindTableEntryEv.exit19.thread, %bb.j, %bb.g
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !24, !nonnull !151, !align !152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 296
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !153
  %i.bd = icmp eq i32 %i.bc, 3
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare noundef ptr @_ZNK4llvm8Function16getPersonalityFnEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #1

declare hidden noundef ptr @_ZN4llvm10EHStreamer18emitExceptionTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm12ARMException13emitTypeInfosEjPNS_8MCSymbolE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(26) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 592 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(304) %i.h) #6 ; 2 uses
  br i1 %i.l, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !293  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 576 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !293  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !294
  store ptr @.str, ptr %3, align 8, !tbaa !297
  store i8 3, ptr %i.t, align 8, !tbaa !298
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(304) %i.s, ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(304) %i.aa) #6
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !299 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !300 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = phi ptr [ %i.m, %bb.b ], [ %i.af, %bb.c ] ; 2 uses
  %i.am = phi ptr [ %i.o, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %i.ak, %bb.c ]    ; 2 uses
  %.not5354 = icmp eq ptr %i.am, %i.al
  br i1 %.not5354, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !293, !noalias !301 ; 2 uses
  %.pre83 = load ptr, ptr %i.e, align 8, !tbaa !293, !noalias !310 ; 2 uses
  %.not535497 = icmp eq ptr %.pre, %.pre83
  br i1 %.not535497, label %._crit_edge, label %.lr.ph.split

.lr.ph:                                           ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 33
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.us

_ZN4llvmplERKNS_5TwineES2_.exit.us:               ; preds = %.lr.ph, %_ZN4llvmplERKNS_5TwineES2_.exit.us
  %.156.us = phi i32 [ %i.av, %_ZN4llvmplERKNS_5TwineES2_.exit.us ], [ %.0, %.lr.ph ] ; 2 uses
  %.sroa.046.055.us = phi ptr [ %i.aq, %_ZN4llvmplERKNS_5TwineES2_.exit.us ], [ %i.am, %.lr.ph ]
  %i.aq = getelementptr inbounds i8, ptr %.sroa.046.055.us, i64 -8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !317
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.av = add nsw i32 %.156.us, -1                ; 2 uses
  %.sroa.070.0.insert.ext = zext i32 %.156.us to i64
  %i.aw = inttoptr i64 %.sroa.070.0.insert.ext to ptr
  store ptr @.str.1, ptr %4, align 8, !alias.scope !319
  store ptr %i.aw, ptr %i.an, align 8, !alias.scope !319
  store i8 3, ptr %i.ao, align 8, !tbaa !298, !alias.scope !319
  store i8 10, ptr %i.ap, align 1, !tbaa !294, !alias.scope !319
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(304) %i.au, ptr noundef nonnull align 8 dereferenceable(34) %4, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 400
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(1073) %i.ba, ptr noundef %i.ar, i32 noundef %1) #6
  %.not53.us = icmp eq ptr %i.aq, %i.al
  br i1 %.not53.us, label %._crit_edge, label %_ZN4llvmplERKNS_5TwineES2_.exit.us

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN4llvmplERKNS_5TwineES2_.exit.us, %.thread, %bb.d
  %.1.lcssa = phi i32 [ %.0, %bb.d ], [ 0, %.thread ], [ %i.av, %_ZN4llvmplERKNS_5TwineES2_.exit.us ], [ 0, %.lr.ph.split ]
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(304) %i.bg, ptr noundef %2, ptr null) #6
  %.pre85 = load ptr, ptr %i.f, align 8, !tbaa !324 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !324 ; 3 uses
  br i1 %i.l, label %bb.e, label %.thread101

.lr.ph.split:                                     ; preds = %.thread, %.lr.ph.split
  %.sroa.046.055 = phi ptr [ %i.bm, %.lr.ph.split ], [ %.pre, %.thread ]
  %i.bm = getelementptr inbounds i8, ptr %.sroa.046.055, i64 -8 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !317
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 400
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(1073) %i.bo, ptr noundef %i.bn, i32 noundef %1) #6
  %.not53 = icmp eq ptr %i.bm, %.pre83
  br i1 %.not53, label %._crit_edge, label %.lr.ph.split

bb.e:                                             ; preds = %._crit_edge
  %i.bs = icmp eq ptr %.pre85, %i.bl
  br i1 %i.bs, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.bx, align 1, !tbaa !294
  store ptr @.str.2, ptr %5, align 8, !tbaa !297
  store i8 3, ptr %i.bw, align 8, !tbaa !298
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 120
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(304) %i.bv, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(304) %i.cd) #6
  %.pre84 = load ptr, ptr %i.f, align 8, !tbaa !324
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ch = phi ptr [ %.pre85, %bb.e ], [ %.pre84, %bb.f ] ; 2 uses
  %.3 = phi i32 [ %.1.lcssa, %bb.e ], [ 0, %bb.f ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !324 ; 2 uses
  %i.ck = icmp ult ptr %i.ch, %i.cj
  br i1 %i.ck, label %.lr.ph60, label %._crit_edge61

.thread101:                                       ; preds = %._crit_edge
  %i.cl = icmp ult ptr %.pre85, %i.bl
  br i1 %i.cl, label %.lr.ph60.split, label %._crit_edge61

.lr.ph60:                                         ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 33
  br label %.lr.ph60.split.us

.lr.ph60.split.us:                                ; preds = %.lr.ph60, %.thread.us
  %.458.us = phi i32 [ %i.cq, %.thread.us ], [ %.3, %.lr.ph60 ]
  %.sroa.041.057.us = phi ptr [ %i.di, %.thread.us ], [ %i.ch, %.lr.ph60 ] ; 2 uses
  %i.cp = load i32, ptr %.sroa.041.057.us, align 4, !tbaa !325 ; 2 uses
  %i.cq = add nsw i32 %.458.us, -1                ; 2 uses
  %.not.us = icmp eq i32 %i.cp, 0
  br i1 %.not.us, label %.thread.us, label %.thread50.us

.thread50.us:                                     ; preds = %.lr.ph60.split.us
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %.sroa.0.0.insert.ext = zext i32 %i.cq to i64
  %i.cu = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  store ptr @.str.3, ptr %6, align 8, !alias.scope !326
  store ptr %i.cu, ptr %i.cm, align 8, !alias.scope !326
  store i8 3, ptr %i.cn, align 8, !tbaa !298, !alias.scope !326
  store i8 10, ptr %i.co, align 1, !tbaa !294, !alias.scope !326
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(304) %i.ct, ptr noundef nonnull align 8 dereferenceable(34) %6, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.cy = add i32 %i.cp, -1
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !317
  br label %.thread.us

.thread.us:                                       ; preds = %.lr.ph60.split.us, %.thread50.us
  %i.dd = phi ptr [ %i.dc, %.thread50.us ], [ null, %.lr.ph60.split.us ]
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 400
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(1073) %i.de, ptr noundef %i.dd, i32 noundef %1) #6
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.041.057.us, i64 4 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.cj
  br i1 %i.dj, label %.lr.ph60.split.us, label %._crit_edge61, !llvm.loop !331

._crit_edge61:                                    ; preds = %bb.i, %.thread.us, %.thread101, %bb.g
  ret void

.lr.ph60.split:                                   ; preds = %.thread101, %bb.i
  %.sroa.041.057 = phi ptr [ %i.dw, %bb.i ], [ %.pre85, %.thread101 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.041.057, align 4, !tbaa !325 ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.dm = icmp eq i32 %i.dk, 0
  br i1 %i.dm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph60.split
  %i.dn = add i32 %i.dk, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !317
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph60.split, %bb.h
  %i.ds = phi ptr [ %i.dr, %bb.h ], [ null, %.lr.ph60.split ]
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 400
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(1073) %i.dl, ptr noundef %i.ds, i32 noundef %1) #6
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.041.057, i64 4 ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.bl
  br i1 %i.dx, label %.lr.ph60.split, label %._crit_edge61, !llvm.loop !331
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler11beginModuleEPNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12ARMException9endModuleEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler22beginBasicBlockSectionERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler20endBasicBlockSectionERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler13setSymbolSizeEPKNS_8MCSymbolEm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler16beginInstructionEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler14endInstructionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler18beginCodeAlignmentERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler12beginFuncletERKNS_17MachineBasicBlockEPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17AsmPrinterHandler10endFuncletEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare hidden void @_ZN4llvm10EHStreamer20computeCallSiteTableERNS_15SmallVectorImplINS0_13CallSiteEntryEEERNS1_INS0_13CallSiteRangeEEERKNS1_IPKNS_14LandingPadInfoEEERKNS1_IjEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef i32 @_ZNK4llvm13AttributeList14getUWTableKindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !17, i64 24}
!11 = !{!"_ZTSN4llvm12ARMExceptionE", !12, i64 0, !17, i64 24, !17, i64 25}
!12 = !{!"_ZTSN4llvm10EHStreamerE", !13, i64 0, !14, i64 8, !16, i64 16}
!13 = !{!"_ZTSN4llvm17AsmPrinterHandlerE"}
!14 = !{!"p1 _ZTSN4llvm10AsmPrinterE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN4llvm17MachineModuleInfoE", !15, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!11, !17, i64 25}
!19 = !{!12, !14, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN4llvm10MCStreamerE", !15, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSN4llvm16MCTargetStreamerE", !15, i64 0}
!24 = !{!25, !36, i64 64}
!25 = !{!"_ZTSN4llvm10AsmPrinterE", !26, i64 0, !35, i64 56, !36, i64 64, !37, i64 72, !38, i64 80, !44, i64 88, !16, i64 96, !45, i64 104, !46, i64 112, !47, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !49, i64 160, !52, i64 184, !53, i64 192, !54, i64 200, !62, i64 240, !69, i64 280, !71, i64 312, !72, i64 344, !73, i64 376, !74, i64 408, !74, i64 440, !74, i64 472, !75, i64 504, !48, i64 536, !76, i64 544, !48, i64 568, !78, i64 576, !85, i64 584, !17, i64 608, !87, i64 616, !94, i64 624, !48, i64 648, !48, i64 656, !96, i64 664, !101, i64 688, !34, i64 720, !106, i64 728, !124, i64 840, !130, i64 848, !136, i64 856, !137, i64 864, !144, i64 872, !17, i64 876, !17, i64 877, !17, i64 878, !145, i64 880, !150, i64 1056, !5, i64 1064, !5, i64 1068, !17, i64 1072}
!26 = !{!"_ZTSN4llvm19MachineFunctionPassE", !27, i64 0, !31, i64 32, !31, i64 40, !31, i64 48}
!27 = !{!"_ZTSN4llvm12FunctionPassE", !28, i64 0}
!28 = !{!"_ZTSN4llvm4PassE", !29, i64 8, !15, i64 16, !30, i64 24}
!29 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !15, i64 0}
!30 = !{!"_ZTSN4llvm8PassKindE", !6, i64 0}
!31 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !32, i64 0}
!32 = !{!"_ZTSSt6bitsetILm12EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Base_bitsetILm1EE", !34, i64 0}
!34 = !{!"long", !6, i64 0}
!35 = !{!"p1 _ZTSN4llvm13TargetMachineE", !15, i64 0}
!36 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !15, i64 0}
!37 = !{!"p1 _ZTSN4llvm9MCContextE", !15, i64 0}
!38 = !{!"_ZTSSt10unique_ptrIN4llvm10MCStreamerESt14default_deleteIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm10MCStreamerESt14default_deleteIS1_ELb1ELb1EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm10MCStreamerESt14default_deleteIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt5tupleIJPN4llvm10MCStreamerESt14default_deleteIS1_EEE", !42, i64 0}
!42 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm10MCStreamerESt14default_deleteIS1_EEE", !43, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm10MCStreamerELb0EE", !21, i64 0}
!44 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !15, i64 0}
!45 = !{!"p1 _ZTSN4llvm20MachineDominatorTreeE", !15, i64 0}
!46 = !{!"p1 _ZTSN4llvm15MachineLoopInfoE", !15, i64 0}
!47 = !{!"p1 _ZTSN4llvm32MachineOptimizationRemarkEmitterE", !15, i64 0}
!48 = !{!"p1 _ZTSN4llvm8MCSymbolE", !15, i64 0}
!49 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockENS_11SmallVectorIPNS_8MCSymbolELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEE", !50, i64 0, !51, i64 8, !5, i64 16, !5, i64 20}
!50 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockENS_11SmallVectorIPNS_8MCSymbolELj1EEEEE", !15, i64 0}
!51 = !{!"p1 int", !15, i64 0}
!52 = !{!"p1 _ZTSN4llvm21StaticDataProfileInfoE", !15, i64 0}
!53 = !{!"p1 _ZTSN4llvm18ProfileSummaryInfoE", !15, i64 0}
!54 = !{!"_ZTSN4llvm9MapVectorINS_12MBBSectionIDENS_10AsmPrinter15MBBSectionRangeENS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S3_ELj0EEELj0EEE", !55, i64 0, !57, i64 24}
!55 = !{!"_ZTSN4llvm8DenseMapINS_12MBBSectionIDEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEE", !56, i64 0, !51, i64 8, !5, i64 16, !5, i64 20}
!56 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_12MBBSectionIDEjEE", !15, i64 0}
!57 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_12MBBSectionIDENS_10AsmPrinter15MBBSectionRangeEELj0EEE", !58, i64 0}
!58 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_12MBBSectionIDENS_10AsmPrinter15MBBSectionRangeEEEE", !59, i64 0}
!59 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_12MBBSectionIDENS_10AsmPrinter15MBBSectionRangeEELb1EEE", !60, i64 0}
!60 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_12MBBSectionIDENS_10AsmPrinter15MBBSectionRangeEEvEE", !61, i64 0}
!61 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !15, i64 0, !5, i64 8, !5, i64 12}
!62 = !{!"_ZTSN4llvm9MapVectorIPKNS_8MCSymbolESt4pairIPKNS_14GlobalVariableEjENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorIS4_IS3_S8_ELj0EEELj0EEE", !63, i64 0, !65, i64 24}
!63 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !64, i64 0, !51, i64 8, !5, i64 16, !5, i64 20}
!64 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEjEE", !15, i64 0}
!65 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKNS_8MCSymbolES1_IPKNS_14GlobalVariableEjEELj0EEE", !66, i64 0}
!66 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKNS_8MCSymbolES1_IPKNS_14GlobalVariableEjEEEE", !67, i64 0}
!67 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_8MCSymbolES1_IPKNS_14GlobalVariableEjEELb1EEE", !68, i64 0}
!68 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKNS_8MCSymbolES1_IPKNS_14GlobalVariableEjEEvEE", !61, i64 0}
!69 = !{!"_ZTSSt8functionIFPN4llvm17MachineModuleInfoEvEE", !70, i64 0, !15, i64 24}
!70 = !{!"_ZTSSt14_Function_base", !6, i64 0, !15, i64 16}
!71 = !{!"_ZTSSt8functionIFPN4llvm32MachineOptimizationRemarkEmitterERNS0_15MachineFunctionEEE", !70, i64 0, !15, i64 24}
!72 = !{!"_ZTSSt8functionIFPN4llvm20MachineDominatorTreeERNS0_15MachineFunctionEEE", !70, i64 0, !15, i64 24}
!73 = !{!"_ZTSSt8functionIFPN4llvm15MachineLoopInfoERNS0_15MachineFunctionEEE", !70, i64 0, !15, i64 24}
!74 = !{!"_ZTSSt8functionIFvRN4llvm6ModuleEEE", !70, i64 0, !15, i64 24}
!75 = !{!"_ZTSSt8functionIFvvEE", !70, i64 0, !15, i64 24}
!76 = !{!"_ZTSN4llvm8DenseMapINS_12MBBSectionIDEPNS_8MCSymbolENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !77, i64 0, !51, i64 8, !5, i64 16, !5, i64 20}
!77 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_12MBBSectionIDEPNS_8MCSymbolEEE", !15, i64 0}
!78 = !{!"_ZTSSt10unique_ptrIN4llvm12AddrLabelMapESt14default_deleteIS1_EE", !79, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12AddrLabelMapESt14default_deleteIS1_ELb1ELb1EE", !80, i64 0}
end_hunk_0
