Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleMap?download=true
inline.NumInlined: 8041
inline.NumDeleted: 3349
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5clang9ModuleMap29getModuleMapFileIDForUniquingEPKNS_6ModuleE:bb.a

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS2_6FileIDENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit.i.i
  %i.am = phi i64 [ %i.al, %.loopexit.i.i ], [ %i.y, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.ao, align 8, !tbaa !270
  br label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit

bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !542 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %0, align 8, !tbaa !301, !nonnull !206, !align !269 ; 4 uses
  %i.at = and i32 %i.aq, 2147483647               ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 484
  %i.av = load i32, ptr %i.au, align 4, !tbaa !543
  %.not.i.i.i = icmp uge i32 %i.at, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 488
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp ult i32 %i.at, %i.ax
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.ay, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.az, align 8, !tbaa !270
  br label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit

bb.h:                                             ; preds = %bb.f
  %i.ba = tail call i32 @_ZNK5clang13SourceManager13getFileIDSlowEj(ptr noundef nonnull align 8 dereferenceable(776) %i.as, i32 noundef %i.at) #26
  br label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit

_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit: ; preds = %bb.h, %bb.g, %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS2_6FileIDENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS2_6FileIDENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit ], [ 0, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.g ], [ %i.ba, %bb.h ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZL28sanitizeFilenameAsIdentifierN4llvm9StringRefERNS_15SmallVectorImplIcEE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !194
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !891
  %i.f = and i16 %i.e, 224
  %.not.i.i.not = icmp eq i16 %i.f, 0
  br i1 %.not.i.i.not, label %.loopexit, label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i

_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i

bb.c:                                             ; preds = %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0720.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit, label %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i, !llvm.loop !887

_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i: ; preds = %bb.c, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i
  %.0720.i = phi ptr [ %i.h, %bb.c ], [ %0, %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.preheader.i ] ; 2 uses
  %i.i = load i8, ptr %.0720.i, align 1, !tbaa !194
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN5clang25isAsciiIdentifierContinueEhE10IDContinue, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !194
  %.not.i9.i.not = icmp eq i8 %i.l, 0
  br i1 %.not.i9.i.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZN5clang25isAsciiIdentifierContinueEhb.exit.thread.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i64 0, ptr %i.m, align 8, !tbaa !287
  %i.n = load i8, ptr %0, align 1, !tbaa !194
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !891
  %i.r = and i16 %i.q, 8
  %.not16817 = icmp eq i16 %i.r, 0
  br i1 %.not16817, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !288
  %.not.i24.not = icmp eq i64 %i.t, 0
  br i1 %.not.i24.not, label %bb.e, label %bb.f, !prof !428

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 95)
  %.pre = load i64, ptr %i.m, align 8, !tbaa !287
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %2, align 8, !tbaa !286
  store i8 95, ptr %i.u, align 1
  %i.v = load i64, ptr %i.m, align 8, !tbaa !287
  %i.w = add i64 %i.v, 1                          ; 2 uses
  store i64 %i.w, ptr %i.m, align 8, !tbaa !287
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit: ; preds = %bb.f, %bb.e, %.loopexit
  %i.x = phi i64 [ %i.w, %bb.f ], [ %.pre, %bb.e ], [ 0, %.loopexit ]
  %i.y = add i64 %i.x, %1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !288
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.g, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.ac, i64 noundef %i.y, i64 noundef 1) #26
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit, %bb.g
  %i.ad = and i64 %1, 4294967295
  %.not16819 = icmp eq i64 %i.ad, 0
  br i1 %.not16819, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit
  %i.ae = and i64 %1, 4294967295
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit
  %i.af = load ptr, ptr %2, align 8, !tbaa !286
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !287
  br label %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !194 ; 3 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZZN5clang25isAsciiIdentifierContinueEhE10IDContinue, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !194
  %.not16818 = icmp eq i8 %i.al, 0
  %i.am = load i64, ptr %i.m, align 8, !tbaa !287 ; 3 uses
  %i.an = load i64, ptr %i.z, align 8, !tbaa !288
  %.not.i27 = icmp ult i64 %i.am, %i.an           ; 2 uses
  br i1 %.not16818, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  br i1 %.not.i27, label %bb.j, label %bb.i, !prof !280

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26

bb.j:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %2, align 8, !tbaa !286
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 %i.ai, ptr %i.ap, align 1
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !287
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.m, align 8, !tbaa !287
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26

bb.k:                                             ; preds = %.lr.ph
  br i1 %.not.i27, label %bb.m, label %bb.l, !prof !280

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 95)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26

bb.m:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %2, align 8, !tbaa !286
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am
  store i8 95, ptr %i.at, align 1
  %i.au = load i64, ptr %i.m, align 8, !tbaa !287
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.m, align 8, !tbaa !287
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit26: ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !888

_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit: ; preds = %bb.c, %._crit_edge
  %.sroa.05891.0 = phi ptr [ %i.af, %._crit_edge ], [ %0, %bb.c ]
  %.sroa.12.0 = phi i64 [ %i.ag, %._crit_edge ], [ %1, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit3374
  %.sroa.05891.1 = phi ptr [ %.sroa.05891.0, %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit ], [ %i.dmo, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit3374 ] ; 779 uses
  %.sroa.12.1 = phi i64 [ %.sroa.12.0, %_ZN5clang22isValidAsciiIdentifierEN4llvm9StringRefEb.exit ], [ %i.dmn, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE9push_backEc.exit3374 ] ; 6 uses
  switch i64 %.sroa.12.1, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371.thread [
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 8, label %bb.t
    i64 7, label %bb.u
    i64 2, label %bb.v
    i64 6, label %bb.w
    i64 3, label %bb.aa
    i64 12, label %bb.aj
    i64 10, label %bb.aw
    i64 9, label %bb.ax
    i64 14, label %bb.ay
    i64 13, label %bb.az
    i64 11, label %bb.bm
    i64 16, label %bb.bl
    i64 18, label %bb.ck
    i64 17, label %bb.cm
    i64 19, label %bb.cl
    i64 21, label %bb.cj
    i64 28, label %bb.co
    i64 25, label %bb.cn
    i64 20, label %bb.cv
    i64 15, label %bb.cz
    i64 23, label %bb.cx
    i64 27, label %bb.cw
    i64 26, label %bb.cy
    i64 30, label %bb.db
    i64 24, label %bb.dg
    i64 22, label %bb.dj
    i64 37, label %bb.dk
    i64 35, label %bb.di
    i64 34, label %bb.dr
    i64 39, label %bb.dt
    i64 0, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371
    i64 38, label %bb.dx
    i64 33, label %bb.dy
    i64 36, label %bb.ee
    i64 51, label %bb.es
    i64 46, label %bb.er
    i64 52, label %bb.et
  ]

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %.sroa.05891.1, align 1
  %i.ba = icmp ne i32 %i.az, 1869903201
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i29 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i29, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %.sroa.05891.1, align 1
  %i.bd = xor i32 %i.bc, 1634038370
  %i.be = getelementptr i8, ptr %.sroa.05891.1, i64 4
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = xor i32 %i.bg, 107
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not.i.i35 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i35, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bl = load i32, ptr %.sroa.05891.1, align 1
  %i.bm = icmp ne i32 %i.bl, 1702060387
  %i.bn = zext i1 %i.bm to i32
  %.not.i.i43 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i43, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %.sroa.05891.1, align 1
  %i.bp = icmp ne i32 %i.bo, 1918986339
  %i.bq = zext i1 %i.bp to i32
  %.not.i.i51 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i51, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.x

bb.s:                                             ; preds = %bb.p
  %i.br = load i32, ptr %.sroa.05891.1, align 1
  %i.bs = xor i32 %i.br, 1936617315
  %i.bt = getelementptr i8, ptr %.sroa.05891.1, i64 4
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = xor i32 %i.bv, 116
  %i.bx = or i32 %i.bs, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not.i.i59 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.z

bb.t:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %.sroa.05891.1, align 1
  %i.cb = icmp ne i64 %i.ca, 7310870969309884259
  %i.cc = zext i1 %i.cb to i32
  %.not.i.i67 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i67, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %.thread10393

bb.u:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %.sroa.05891.1, align 1
  %i.ce = xor i32 %i.cd, 1634100580
  %i.cf = getelementptr i8, ptr %.sroa.05891.1, i64 3
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = xor i32 %i.cg, 1953264993
  %i.ci = or i32 %i.ce, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %.not.i.i75 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i75, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %.thread9731.thread

bb.v:                                             ; preds = %bb.n
  %i.cl = load i16, ptr %.sroa.05891.1, align 1
  %i.cm = icmp ne i16 %i.cl, 28516
  %i.cn = zext i1 %i.cm to i32
  %.not.i.i83 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i83, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.ac

bb.w:                                             ; preds = %bb.n
  %i.co = load i32, ptr %.sroa.05891.1, align 1
  %i.cp = xor i32 %i.co, 1651863396
  %i.cq = getelementptr i8, ptr %.sroa.05891.1, i64 4
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i32
  %i.ct = xor i32 %i.cs, 25964
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not.i.i91 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i91, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %.sroa.05891.1, align 1
  %i.cy = icmp ne i32 %i.cx, 1702063205
  %i.cz = zext i1 %i.cy to i32
  %.not.i.i99 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i99, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %.thread5977

.thread5977:                                      ; preds = %bb.x
  %i.da = load i32, ptr %.sroa.05891.1, align 1
  %i.db = icmp ne i32 %i.da, 1836412517
  %i.dc = zext i1 %i.db to i32
  %.not.i.i107 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i107, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dd = load i32, ptr %.sroa.05891.1, align 1
  %i.de = xor i32 %i.dd, 1702131813
  %i.df = getelementptr i8, ptr %.sroa.05891.1, i64 4
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = zext i16 %i.dg to i32
  %i.di = xor i32 %i.dh, 28274
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not.i.i115 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i115, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %.thread6085.thread9735

bb.z:                                             ; preds = %bb.s
  %i.dm = load i32, ptr %.sroa.05891.1, align 1
  %i.dn = xor i32 %i.dm, 1634692198
  %i.do = getelementptr i8, ptr %.sroa.05891.1, i64 4
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i32
  %i.dr = xor i32 %i.dq, 116
  %i.ds = or i32 %i.dn, %i.dr
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %.not.i.i123 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i123, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.ag

bb.aa:                                            ; preds = %bb.n
  %i.dv = load i16, ptr %.sroa.05891.1, align 1
  %i.dw = xor i16 %i.dv, 28518
  %i.dx = getelementptr i8, ptr %.sroa.05891.1, i64 2
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i16
  %i.ea = xor i16 %i.dz, 114
  %i.eb = or i16 %i.dw, %i.ea
  %i.ec = icmp ne i16 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %.not.i.i131 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i131, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.ad

bb.ab:                                            ; preds = %.thread5977
  %i.ee = load i32, ptr %.sroa.05891.1, align 1
  %i.ef = icmp ne i32 %i.ee, 1869901671
  %i.eg = zext i1 %i.ef to i32
  %.not.i.i139 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i139, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.af

bb.ac:                                            ; preds = %bb.v
  %i.eh = load i16, ptr %.sroa.05891.1, align 1
  %i.ei = icmp ne i16 %i.eh, 26217
  %i.ej = zext i1 %i.ei to i32
  %.not.i.i147 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i147, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %.thread8600.thread.thread16529.thread16537

bb.ad:                                            ; preds = %bb.aa
  %i.ek = load i16, ptr %.sroa.05891.1, align 1
  %i.el = xor i16 %i.ek, 28265
  %i.em = getelementptr i8, ptr %.sroa.05891.1, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i16
  %i.ep = xor i16 %i.eo, 116
  %i.eq = or i16 %i.el, %i.ep
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %.not.i.i155 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i155, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %.thread6362.thread10921.thread

.thread9731.thread:                               ; preds = %bb.u
  %i.et = load i32, ptr %.sroa.05891.1, align 1
  %i.eu = xor i32 %i.et, 1954039135
  %i.ev = getelementptr i8, ptr %.sroa.05891.1, i64 3
  %i.ew = load i32, ptr %i.ev, align 1
  %i.ex = xor i32 %i.ew, 1953384820
  %i.ey = or i32 %i.eu, %i.ex
  %i.ez = icmp ne i32 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %.not.i.i163 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i163, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit3371, label %bb.ae

bb.ae:                                            ; preds = %.thread9731.thread
  %i.fb = load i32, ptr %.sroa.05891.1, align 1
  %i.fc = xor i32 %i.fb, 1953055327
  %i.fd = getelementptr i8, ptr %.sroa.05891.1, i64 3
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = xor i32 %i.fe, 1953384820
  %i.fg = or i32 %i.fc, %i.ff
end_hunk_0
