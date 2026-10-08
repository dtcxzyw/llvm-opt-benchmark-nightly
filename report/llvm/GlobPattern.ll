Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GlobPattern?download=true
inline.NumInlined: 1464
inline.NumDeleted: 616
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm11GlobPattern14SubGlobPattern6createENS_9StringRefEb:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.aa = ptrtoint ptr %10 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.094 = phi i64 [ 0, %.lr.ph ], [ %i.hj, %bb.y ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.094
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  switch i8 %i.ad, label %bb.y [
    i8 91, label %bb.c
    i8 92, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = add i64 %.094, 1                        ; 3 uses
  %i.af = add i64 %.094, 2                        ; 3 uses
  %i.ag = icmp ult i64 %i.af, %2
  br i1 %i.ag, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZN4llvm5ErrorD2Ev.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.ah = sub nuw i64 %2, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.aj = call ptr @memchr(ptr noundef %i.ai, i32 noundef 93, i64 noundef %i.ah) #17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm9StringRef4findEcm.exit

_ZNK4llvm9StringRef4findEcm.exit:                 ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.f                     ; 4 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %_ZNK4llvm9StringRef4findEcm.exit
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !183 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !183
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !46, !noalias !183
  store ptr @.str, ptr %7, align 8, !tbaa !37, !noalias !183
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.ap, align 8, !tbaa !47, !noalias !183
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #20
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 22, ptr nonnull %i.aq) #17, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !183
  %i.ar = load i8, ptr %i.ab, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.ab, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !49, !alias.scope !184
  br label %_ZN4llvm8ExpectedINS_11GlobPattern14SubGlobPatternEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit

bb.d:                                             ; preds = %_ZNK4llvm9StringRef4findEcm.exit
  %i.at = sub i64 %i.al, %i.ae
  %.sroa.speculated4.i = call i64 @llvm.umin.i64(i64 %2, i64 %i.ae) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated4.i ; 2 uses
  %i.av = sub nuw i64 %2, %.sroa.speculated4.i
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.at) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !37
  switch i8 %i.ax, label %bb.e [
    i8 94, label %.thread
    i8 33, label %.thread
  ]

.thread:                                          ; preds = %bb.d, %bb.d
  %i.ay = icmp ne i64 %.sroa.speculated.i, 0
  %.sroa.speculated4.i.i = zext i1 %i.ay to i64   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.speculated4.i.i
  %i.ba = sub i64 %.sroa.speculated.i, %.sroa.speculated4.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.bb = phi i1 [ true, %.thread ], [ false, %bb.d ]
  %.sroa.672.0 = phi i64 [ %i.ba, %.thread ], [ %.sroa.speculated.i, %bb.d ] ; 3 uses
  %.sroa.071.0 = phi ptr [ %i.az, %.thread ], [ %i.au, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !185
  store ptr %.ptr66.i, ptr %5, align 8, !tbaa !17, !noalias !185
  store i32 6, ptr %i.j, align 4, !tbaa !19, !noalias !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.ptr66.i, i8 0, i64 32, i1 false), !tbaa !32, !noalias !185
  store i32 4, ptr %i.k, align 8, !tbaa !18, !noalias !185
  store i32 256, ptr %i.l, align 8, !tbaa !68, !noalias !185
  %i.bc = icmp ult i64 %.sroa.672.0, 3
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.10.071.i = phi i64 [ %i.dd, %bb.i ], [ %.sroa.672.0, %bb.e ]
  %.sroa.053.070.i = phi ptr [ %.sroa.053.1.i, %bb.i ], [ %.sroa.071.0, %bb.e ] ; 4 uses
  %i.bd = load i8, ptr %.sroa.053.070.i, align 1, !tbaa !37, !noalias !185 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37, !noalias !185
  %.not.i = icmp eq i8 %i.bf, 45
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bg = zext i8 %i.bd to i32                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %i.bi ; 2 uses
  %i.bk = and i32 %i.bg, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !32, !noalias !185
  %i.bo = or i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !32, !noalias !185
  br label %bb.i, !llvm.loop !159

bb.g:                                             ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37, !noalias !185 ; 3 uses
  %i.br = icmp ugt i8 %i.bd, %i.bq
  br i1 %i.br, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !185
  store i8 3, ptr %i.m, align 8, !tbaa !47, !alias.scope !186, !noalias !185
  store i8 5, ptr %i.n, align 1, !tbaa !46, !alias.scope !186, !noalias !185
  store ptr @.str.9, ptr %6, align 8, !tbaa !37, !alias.scope !186, !noalias !185
  store ptr %1, ptr %i.o, align 8, !tbaa !37, !alias.scope !186, !noalias !185
  store i64 %2, ptr %i.p, align 8, !tbaa !37, !alias.scope !186, !noalias !185
  %i.bs = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !187 ; 2 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #20
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.bs, ptr noundef nonnull align 8 dereferenceable(34) %6, i32 22, ptr nonnull %i.bt) #17, !noalias !187
  %i.bu = load i8, ptr %i.q, align 8, !alias.scope !185
  %i.bv = or i8 %i.bu, 1
  store i8 %i.bv, ptr %i.q, align 8, !alias.scope !185
  store ptr %i.bs, ptr %9, align 8, !tbaa !49, !alias.scope !188
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !185
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bw = zext i8 %i.bq to i32                    ; 2 uses
  %i.bx = zext i8 %i.bd to i32                    ; 5 uses
  %i.by = add nuw nsw i32 %i.bw, %i.bx
  %i.bz = and i32 %i.by, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bz, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.h
  %i.ca = lshr i32 %i.bx, 6
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %i.cb ; 2 uses
  %i.cd = and i32 %i.bx, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !32, !noalias !185
  %i.ch = or i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !32, !noalias !185
  %i.ci = add nuw nsw i32 %i.bx, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.h
  %.03169.i.unr = phi i32 [ %i.bx, %bb.h ], [ %i.ci, %.prol.loopexit.unr-lcssa ]
  %i.cj = icmp eq i8 %i.bq, %i.bd
  br i1 %i.cj, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.053.070.i, i64 3
  br label %bb.i

.new:                                             ; preds = %.prol.loopexit, %.new
  %.03169.i = phi i32 [ %i.dc, %.new ], [ %.03169.i.unr, %.prol.loopexit ] ; 4 uses
  %i.cl = lshr i32 %.03169.i, 6
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %i.cm ; 2 uses
  %i.co = and i32 %.03169.i, 63
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = load i64, ptr %i.cn, align 8, !tbaa !32, !noalias !185
  %i.cs = or i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.cn, align 8, !tbaa !32, !noalias !185
  %i.ct = add nuw nsw i32 %.03169.i, 1            ; 3 uses
  %i.cu = lshr i32 %i.ct, 6
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %i.cv ; 2 uses
  %i.cx = and i32 %i.ct, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !32, !noalias !185
  %i.db = or i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cw, align 8, !tbaa !32, !noalias !185
  %i.dc = add nuw nsw i32 %.03169.i, 2
  %exitcond.not.i.1 = icmp eq i32 %i.ct, %i.bw
  br i1 %exitcond.not.i.1, label %.unr-lcssa, label %.new, !llvm.loop !168

bb.i:                                             ; preds = %.unr-lcssa, %bb.f
  %.sink.i = phi i64 [ -3, %.unr-lcssa ], [ -1, %bb.f ]
  %.sroa.053.1.i = phi ptr [ %i.ck, %.unr-lcssa ], [ %i.be, %bb.f ] ; 2 uses
  %i.dd = add i64 %.sink.i, %.sroa.10.071.i       ; 3 uses
  %i.de = icmp ult i64 %i.dd, 3
  br i1 %i.de, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.e
  %.sroa.053.0.lcssa.i = phi ptr [ %.sroa.071.0, %bb.e ], [ %.sroa.053.1.i, %bb.i ] ; 4 uses
  %.sroa.10.0.lcssa.i = phi i64 [ %.sroa.672.0, %bb.e ], [ %i.dd, %bb.i ] ; 4 uses
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.053.0.lcssa.i, i64 %.sroa.10.0.lcssa.i
  %.not3573.i = icmp samesign eq i64 %.sroa.10.0.lcssa.i, 0
  br i1 %.not3573.i, label %_ZN4llvm8ExpectedINS_9BitVectorEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit.i, label %.lr.ph76.i.preheader

.lr.ph76.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter140 = and i64 %.sroa.10.0.lcssa.i, 1
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader
  %i.df = load i8, ptr %.sroa.053.0.lcssa.i, align 1, !tbaa !37, !noalias !185
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = lshr i32 %i.dg, 6
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %i.di ; 2 uses
  %i.dk = and i32 %i.dg, 63
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = load i64, ptr %i.dj, align 8, !tbaa !32, !noalias !185
  %i.do = or i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.dj, align 8, !tbaa !32, !noalias !185
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.053.0.lcssa.i, i64 1
  br label %.lr.ph76.i.prol.loopexit

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %.03074.i.unr = phi ptr [ %.sroa.053.0.lcssa.i, %.lr.ph76.i.preheader ], [ %12, %.lr.ph76.i.prol ]
  %13 = icmp eq i64 %.sroa.10.0.lcssa.i, 1
  br i1 %13, label %_ZN4llvm8ExpectedINS_9BitVectorEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit.i, label %.lr.ph76.i

_ZN4llvm8ExpectedINS_9BitVectorEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit.i: ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i, %._crit_edge.i
  %i.dp = load i8, ptr %i.q, align 8, !alias.scope !185
  %14 = and i8 %i.dp, -2
  store i8 %14, ptr %i.q, align 8, !alias.scope !185
  store ptr %i.r, ptr %9, align 8, !tbaa !17, !alias.scope !185
  store i32 0, ptr %i.s, align 8, !tbaa !18, !alias.scope !185
  store i32 6, ptr %i.t, align 4, !tbaa !19, !alias.scope !185
  %15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(73) %9, ptr noundef nonnull align 8 dereferenceable(68) %5) ; 0 uses
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !68, !noalias !185
  store i32 %.pre.i, ptr %i.u, align 8, !tbaa !68, !alias.scope !185
  br label %bb.j

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %.03074.i = phi ptr [ %26, %.lr.ph76.i ], [ %.03074.i.unr, %.lr.ph76.i.prol.loopexit ] ; 3 uses
  %16 = load i8, ptr %.03074.i, align 1, !tbaa !37, !noalias !185
  %17 = zext i8 %16 to i32                        ; 2 uses
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %19 ; 2 uses
  %21 = and i32 %17, 63
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = load i64, ptr %20, align 8, !tbaa !32, !noalias !185
  %25 = or i64 %23, %24
  store i64 %25, ptr %20, align 8, !tbaa !32, !noalias !185
  %i.dq = getelementptr inbounds nuw i8, ptr %.03074.i, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !37, !noalias !185
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 6
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.ptr66.i, i64 %i.du ; 2 uses
  %i.dw = and i32 %i.ds, 63
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = load i64, ptr %i.dv, align 8, !tbaa !32, !noalias !185
  %i.ea = or i64 %i.dy, %i.dz
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !32, !noalias !185
  %26 = getelementptr inbounds nuw i8, ptr %.03074.i, i64 2 ; 2 uses
  %.not35.i.1 = icmp eq ptr %26, %11
  br i1 %.not35.i.1, label %_ZN4llvm8ExpectedINS_9BitVectorEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit.i, label %.lr.ph76.i

bb.j:                                             ; preds = %_ZN4llvm8ExpectedINS_9BitVectorEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit.i, %.thread.i
  %i.eb = load ptr, ptr %5, align 8, !tbaa !17, !noalias !185 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %.ptr66.i
  br i1 %i.ec, label %_ZL6expandN4llvm9StringRefES0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.eb) #17
  br label %_ZL6expandN4llvm9StringRefES0_.exit

_ZL6expandN4llvm9StringRefES0_.exit:              ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !185
  %i.ed = load i8, ptr %i.q, align 8
  %i.ee = trunc i8 %i.ed to i1
  br i1 %i.ee, label %.thread119, label %bb.l

bb.l:                                             ; preds = %_ZL6expandN4llvm9StringRefES0_.exit
  br i1 %3, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ef = load ptr, ptr %9, align 8, !tbaa !17    ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !32 ; 2 uses
  %i.ei = and i64 %i.eh, 268435456
  %.not91 = icmp eq i64 %i.ei, 0
  %.pre = load i64, ptr %i.ef, align 8, !tbaa !32 ; 2 uses
  %i.ej = and i64 %.pre, 140737488355328
  %.not92 = icmp eq i64 %i.ej, 0
  %or.cond = select i1 %.not91, i1 %.not92, i1 false
  br i1 %or.cond, label %.critedge, label %.critedge3

.critedge3:                                       ; preds = %bb.m
  %i.ek = or i64 %i.eh, 268435456
  store i64 %i.ek, ptr %i.eg, align 8, !tbaa !32
  %i.el = or i64 %.pre, 140737488355328
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.l, %.critedge3
  %.pre95 = load i32, ptr %i.s, align 8, !tbaa !18 ; 3 uses
  br i1 %i.bb, label %bb.n, label %_ZN4llvm9BitVector4flipEv.exit

bb.n:                                             ; preds = %.critedge
  %i.em = load ptr, ptr %9, align 8, !tbaa !17    ; 4 uses
  %i.en = zext i32 %.pre95 to i64
  %.idx.i = shl nuw nsw i64 %i.en, 3              ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i ; 2 uses
  %.not9.i = icmp eq i32 %.pre95, 0
  br i1 %.not9.i, label %._crit_edge.i56, label %.lr.ph.i54.preheader

.lr.ph.i54.preheader:                             ; preds = %bb.n
  %i.ep = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.eq = lshr exact i64 %i.ep, 3
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ep, 24
  br i1 %min.iters.check, label %.lr.ph.i54.preheader139, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i54.preheader
  %n.vec = and i64 %i.er, 4611686018427387900     ; 3 uses
  %i.es = shl i64 %n.vec, 3
  %i.et = getelementptr i8, ptr %i.em, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.em, i64 %i.eu ; 3 uses
  %i.ev = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !32
  %wide.load138 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !32
  %i.ew = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ex = xor <2 x i64> %wide.load138, splat (i64 -1)
  store <2 x i64> %i.ew, ptr %next.gep, align 8, !tbaa !32
  store <2 x i64> %i.ex, ptr %i.ev, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge.i56, label %.lr.ph.i54.preheader139

.lr.ph.i54.preheader139:                          ; preds = %.lr.ph.i54.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.em, %.lr.ph.i54.preheader ], [ %i.et, %middle.block ]
  br label %.lr.ph.i54

._crit_edge.i56:                                  ; preds = %.lr.ph.i54, %middle.block, %bb.n
  %i.ez = load i32, ptr %i.u, align 8, !tbaa !68
  %i.fa = and i32 %i.ez, 63                       ; 2 uses
  %.not.i.i.i57 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i57, label %_ZN4llvm9BitVector4flipEv.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i56
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nsw i64 -1, %i.fb
  %i.fd = xor i64 %i.fc, -1
  %i.fe = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !32
  %i.fg = and i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !32
  br label %_ZN4llvm9BitVector4flipEv.exit

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader139, %.lr.ph.i54
  %.010.i = phi ptr [ %i.fj, %.lr.ph.i54 ], [ %.010.i.ph, %.lr.ph.i54.preheader139 ] ; 3 uses
  %i.fh = load i64, ptr %.010.i, align 8, !tbaa !32
  %i.fi = xor i64 %i.fh, -1
  store i64 %i.fi, ptr %.010.i, align 8, !tbaa !32
  %i.fj = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i55 = icmp eq ptr %i.fj, %i.eo
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i54, !llvm.loop !170

_ZN4llvm9BitVector4flipEv.exit:                   ; preds = %bb.o, %._crit_edge.i56, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.fk = add nuw i64 %i.al, 1
  store i64 %i.fk, ptr %10, align 8, !tbaa !70
  store ptr %i.w, ptr %i.v, align 8, !tbaa !17
  store i32 0, ptr %i.x, align 8, !tbaa !18
  store i32 6, ptr %i.y, align 4, !tbaa !19
  %.not.i.i.i58 = icmp eq i32 %.pre95, 0
  br i1 %.not.i.i.i58, label %_ZN4llvm9BitVectorC2EOS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm9BitVector4flipEv.exit
  %i.fl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.v, ptr noundef nonnull align 8 dereferenceable(68) %9) ; 0 uses
  br label %_ZN4llvm9BitVectorC2EOS0_.exit

_ZN4llvm9BitVectorC2EOS0_.exit:                   ; preds = %_ZN4llvm9BitVector4flipEv.exit, %bb.p
  %i.fm = load i32, ptr %i.u, align 8, !tbaa !68
  store i32 %i.fm, ptr %i.z, align 8, !tbaa !68
  %i.fn = load i32, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %i.fq = load i32, ptr %i.c, align 4, !tbaa !19
  %.not.i.i.not.i = icmp ult i32 %i.fn, %i.fq
  %.pre3.i = load ptr, ptr %8, align 8, !tbaa !17 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE28reserveForParamAndGetAddressERS3_m.exit.i, label %bb.q, !prof !50

bb.q:                                             ; preds = %_ZN4llvm9BitVectorC2EOS0_.exit
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr %.pre3.i, i64 %i.fo
  %i.fs = icmp uge ptr %10, %.pre3.i
  %i.ft = icmp ult ptr %10, %i.fr
  %spec.select.i.i.i.i.i = and i1 %i.fs, %i.ft
  br i1 %spec.select.i.i.i.i.i, label %bb.r, label %.critedge.i.i.i, !prof !71

bb.r:                                             ; preds = %bb.q
  %i.fu = ptrtoint ptr %.pre3.i to i64
  %i.fv = sub i64 %i.aa, %i.fu
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.fp)
  %i.fw = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fv
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE28reserveForParamAndGetAddressERS3_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.fp)
  %.pre.i59 = load ptr, ptr %8, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE28reserveForParamAndGetAddressERS3_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE28reserveForParamAndGetAddressERS3_m.exit.i: ; preds = %.critedge.i.i.i, %bb.r, %_ZN4llvm9BitVectorC2EOS0_.exit
  %i.fy = phi ptr [ %.pre3.i, %_ZN4llvm9BitVectorC2EOS0_.exit ], [ %i.fw, %bb.r ], [ %.pre.i59, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %10, %_ZN4llvm9BitVectorC2EOS0_.exit ], [ %i.fx, %bb.r ], [ %10, %.critedge.i.i.i ] ; 4 uses
  %i.fz = load i32, ptr %i.b, align 8, !tbaa !18
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [80 x i8], ptr %i.fy, i64 %i.ga ; 6 uses
  %i.gc = load i64, ptr %.016.i.i.i, align 8, !tbaa !70
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !70
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 0, ptr %i.gf, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store i32 6, ptr %i.gg, align 4, !tbaa !19
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 16
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE9push_backEOS3_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE28reserveForParamAndGetAddressERS3_m.exit.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.gk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.gd, ptr noundef nonnull align 8 dereferenceable(68) %i.gj) ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE9push_backEOS3_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE9push_backEOS3_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE28reserveForParamAndGetAddressERS3_m.exit.i, %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 72
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !68
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !68
  %i.go = load i32, ptr %i.b, align 8, !tbaa !18
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.b, align 8, !tbaa !18
  %i.gq = load ptr, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.w
  br i1 %i.gr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE9push_backEOS3_.exit
  call void @free(ptr noundef %i.gq) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm23SmallVectorTemplateBaseINS_11GlobPattern14SubGlobPattern7BracketELb0EE9push_backEOS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %.pre96 = load i8, ptr %i.q, align 8
  %.pre97 = load ptr, ptr %9, align 8, !tbaa !56  ; 5 uses
  %i.gs = trunc i8 %.pre96 to i1
end_hunk_0
