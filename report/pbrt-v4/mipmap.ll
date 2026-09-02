Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/mipmap?download=true
inline.NumInlined: 1458
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4pbrt6MIPMap6BilerpIfEET_iNS_6Point2IfEE:bb.a
  %i.bt = fadd float %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !36
  %i.bx = fadd float %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !36
  %i.cb = fadd float %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !36
  %i.cf = fadd float %i.cb, %i.ce                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !37

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit.loopexit.unr-lcssa ]
  %.057.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.cf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod40)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.h ] ; 2 uses
  %.057.i.epil = phi float [ %.057.i.epil.init, %.epil.preheader ], [ %i.ci, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36
  %i.ci = fadd float %.057.i.epil, %i.ch          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !39

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %bb.f
  %.05.lcssa.i = phi float [ 0.000000e+00, %bb.f ], [ %i.cf, %.loopexit.loopexit.unr-lcssa ], [ %i.ci, %bb.h ]
  %i.cj = uitofp nneg i64 %i.ax to float
  %i.ck = fdiv float %.05.lcssa.i, %i.cj
  store i64 0, ptr %i.aw, align 8, !tbaa !31
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !41
  %i.cn = shl i64 %i.cm, 2
  %i.co = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %.pre, i64 noundef %i.cn, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.j, !inline_history !45

bb.j:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #25
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %.loopexit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !24
  %.sroa.2.0.insert.ext = zext i32 %i.cv to i64   ; 2 uses
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.2.0.insert.ext ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cx = load <2 x i32>, ptr %i.cw, align 4, !tbaa !30
  %i.cy = sitofp <2 x i32> %i.cx to <2 x float>
  %i.cz = fmul <2 x float> %2, %i.cy
  %i.da = fadd <2 x float> %i.cz, splat (float -5.000000e-01) ; 2 uses
  %i.db = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.da)
  %i.dc = fptosi <2 x float> %i.db to <2 x i32>   ; 4 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i21 = zext i32 %i.dd to i64
  %.sroa.239.0.insert.shift.i22 = shl nuw i64 %.sroa.239.0.insert.ext.i21, 32
  %i.de = extractelement <2 x i32> %i.dc, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i23 = zext i32 %i.de to i64
  %.sroa.038.0.insert.insert.i24 = bitcast <2 x i32> %i.dc to i64
  %i.df = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, i64 %.sroa.038.0.insert.insert.i24, i32 noundef 3, i64 %.sroa.0.0.insert.insert)
  %i.dg = add nsw i32 %i.de, 1
  %.sroa.036.0.insert.ext.i25 = zext i32 %i.dg to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i26 = or disjoint i64 %.sroa.239.0.insert.shift.i22, %.sroa.036.0.insert.ext.i25
  %i.dh = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, i64 %.sroa.036.0.insert.insert.i26, i32 noundef 3, i64 %.sroa.0.0.insert.insert)
  %i.di = add nsw i32 %i.dd, 1
  %.sroa.235.0.insert.ext.i27 = zext i32 %i.di to i64
  %.sroa.235.0.insert.shift.i28 = shl nuw i64 %.sroa.235.0.insert.ext.i27, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i29 = or disjoint i64 %.sroa.235.0.insert.shift.i28, %.sroa.038.0.insert.ext.i23
  %i.dj = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, i64 %.sroa.034.0.insert.insert.i29, i32 noundef 3, i64 %.sroa.0.0.insert.insert)
  %.sroa.0.0.insert.insert.i30 = or disjoint i64 %.sroa.235.0.insert.shift.i28, %.sroa.036.0.insert.ext.i25
  %i.dk = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, i64 %.sroa.0.0.insert.insert.i30, i32 noundef 3, i64 %.sroa.0.0.insert.insert)
  %i.dl = sitofp <2 x i32> %i.dc to <2 x float>
  %i.dm = fsub <2 x float> %i.da, %i.dl           ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0 ; 3 uses
  %i.do = fsub float 1.000000e+00, %i.dn          ; 2 uses
  %i.dp = extractelement <2 x float> %i.dm, i64 1 ; 3 uses
  %i.dq = fsub float 1.000000e+00, %i.dp          ; 2 uses
  %i.dr = fmul float %i.do, %i.dq
  %i.ds = fmul float %i.df, %i.dr
  %i.dt = fmul float %i.dn, %i.dq
  %i.du = fmul float %i.dh, %i.dt
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = fmul float %i.do, %i.dp
  %i.dx = fmul float %i.dj, %i.dw
  %i.dy = fadd float %i.dx, %i.dv
  %i.dz = fmul float %i.dn, %i.dp
  %i.ea = fmul float %i.dk, %i.dz
  %i.eb = fadd float %i.ea, %i.dy
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.l, ptr %i.a, align 4, !tbaa !30
  call void @_ZN4pbrt8LogFatalIJiEEEvNS_8LogLevelEPKciS3_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 407, ptr noundef nonnull @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #24
  unreachable

bb.m:                                             ; preds = %bb.k, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, %bb.e
  %.0 = phi float [ %i.at, %bb.e ], [ %i.ck, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ], [ %i.eb, %bb.k ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt6MIPMap3EWAIfEET_iNS_6Point2IfEENS_7Vector2IfEES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, <2 x float> %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.d = trunc i64 %i.c to i32
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %i.c, 32
  %sext = add i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext, 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24
  %.sroa.2.0.insert.ext.i = zext i32 %i.k to i64  ; 2 uses
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.2.0.insert.ext.i
  %i.l = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, i64 0, i32 noundef 0, i64 %.sroa.0.0.insert.insert.i)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %1, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %1 to i64                  ; 3 uses
  %i.o = icmp ugt i64 %i.c, %i.n
  br i1 %i.o, label %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN4pbrt8LogFatalIJRA37_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(37) @.str.19) #24
  unreachable

_ZNK4pbrt6MIPMap15LevelResolutionEi.exit:         ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw [152 x i8], ptr %i.q, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.s, align 4
  %i.t = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i, i64 0
  %i.u = shufflevector <2 x i64> %i.t, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.v = lshr <2 x i64> %i.u, <i64 0, i64 32>
  %i.w = trunc <2 x i64> %i.v to <2 x i32>
  %i.x = sitofp <2 x i32> %i.w to <2 x float>     ; 3 uses
  %i.y = fmul <2 x float> %3, %i.x                ; 4 uses
  %i.z = fmul <2 x float> %4, %i.x                ; 4 uses
  %shift = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.y, %shift
  %shift182 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop183 = fmul <2 x float> %i.z, %shift182
  %foldExtExtBinop185 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop183
  %i.aa = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.ab = fmul float %i.aa, -2.000000e+00         ; 3 uses
  %i.ac = fmul <2 x float> %i.y, %i.y
  %i.ad = fmul <2 x float> %i.z, %i.z
  %i.ae = fadd <2 x float> %i.ac, %i.ad
  %i.af = fadd <2 x float> %i.ae, splat (float 1.000000e+00) ; 3 uses
  %shift187 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fmul <2 x float> %i.af, %shift187
  %i.ag = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.ah = fmul float %i.ab, %i.ab
  %i.ai = fmul float %i.ah, 2.500000e-01
  %i.aj = fsub float %i.ag, %i.ai
  %5 = fmul <2 x float> %2, %i.x
  %6 = fadd <2 x float> %5, splat (float -5.000000e-01) ; 4 uses
  %i.ak = fdiv float 1.000000e+00, %i.aj          ; 2 uses
  %7 = fmul float %i.ab, %i.ak                    ; 3 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.af, %i.am           ; 3 uses
  %i.ao = fmul float %7, %7
  %i.ap = extractelement <2 x float> %i.an, i64 1 ; 2 uses
  %i.aq = fmul float %i.ap, 4.000000e+00
  %i.ar = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.as = fmul float %i.ar, %i.aq
  %i.at = fsub float %i.as, %i.ao                 ; 2 uses
  %i.au = fdiv float 1.000000e+00, %i.at
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.an, %i.aw           ; 2 uses
  %i.ay = fcmp ogt <2 x float> %i.ax, zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.ax, <2 x float> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.az)
  %8 = fmul float %i.au, 2.000000e+00
  %i.bb = insertelement <2 x float> poison, float %8, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.bc, %i.ba           ; 2 uses
  %i.be = fsub <2 x float> %6, %i.bd
  %i.bf = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.be) ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fptosi float %i.bg to i32               ; 2 uses
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = fptosi float %i.bi to i32               ; 2 uses
  %i.bk = fadd <2 x float> %6, %i.bd
  %i.bl = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bk) ; 2 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %i.bn = fptosi float %i.bm to i32               ; 2 uses
  %i.bo = extractelement <2 x float> %i.bl, i64 1
  %i.bp = fptosi float %i.bo to i32               ; 2 uses
  %.not65159 = icmp sgt i32 %i.bj, %i.bp
  br i1 %.not65159, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit
  %.not66151 = icmp sgt i32 %i.bh, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %.not66151, label %._crit_edge164, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph163
  %i.br = extractelement <2 x float> %6, i64 1
  %i.bs = extractelement <2 x float> %6, i64 0
  br label %.lr.ph

._crit_edge164:                                   ; preds = %._crit_edge, %.lr.ph163, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit
  %.060.lcssa = phi float [ 0.000000e+00, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit ], [ 0.000000e+00, %.lr.ph163 ], [ %.262, %._crit_edge ]
  %.059.lcssa = phi float [ 0.000000e+00, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit ], [ 0.000000e+00, %.lr.ph163 ], [ %.2, %._crit_edge ]
  %i.bt = fdiv float %.060.lcssa, %.059.lcssa
  br label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.058162 = phi i32 [ %i.cb, %._crit_edge ], [ %i.bj, %.lr.ph.preheader ] ; 11 uses
  %.059161 = phi float [ %.2, %._crit_edge ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.060160 = phi float [ %.262, %._crit_edge ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.bu = sitofp i32 %.058162 to float
  %i.bv = fsub float %i.bu, %i.br                 ; 3 uses
  %i.bw = fmul float %i.bv, %i.bv
  %i.bx = fmul float %i.ar, %i.bw
  %i.by = icmp sgt i32 %.058162, -1
  %i.bz = icmp slt i32 %.058162, 0
  %i.ca = xor i32 %.058162, -1                    ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.af
  %i.cb = add i32 %.058162, 1
  %exitcond169.not = icmp eq i32 %.058162, %i.bp
  br i1 %exitcond169.not, label %._crit_edge164, label %.lr.ph, !llvm.loop !46

bb.f:                                             ; preds = %.lr.ph, %bb.af
  %.057154 = phi i32 [ %i.bh, %.lr.ph ], [ %i.gl, %bb.af ] ; 14 uses
  %.1153 = phi float [ %.059161, %.lr.ph ], [ %.2, %bb.af ] ; 2 uses
  %.161152 = phi float [ %.060160, %.lr.ph ], [ %.262, %bb.af ] ; 2 uses
  %i.cc = sitofp i32 %.057154 to float
  %i.cd = fsub float %i.cc, %i.bs                 ; 3 uses
  %i.ce = fmul float %i.cd, %i.cd
  %i.cf = fmul float %i.ap, %i.ce
  %i.cg = fmul float %7, %i.cd
  %i.ch = fmul float %i.bv, %i.cg
  %i.ci = fadd float %i.cf, %i.ch
  %i.cj = fadd float %i.bx, %i.ci                 ; 2 uses
  %i.ck = fcmp olt float %i.cj, 1.000000e+00
  br i1 %i.ck, label %bb.g, label %bb.af

bb.g:                                             ; preds = %bb.f
  %i.cl = fmul nnan float %i.cj, 1.280000e+02
  %i.cm = fptosi float %i.cl to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cm, i32 127)
  %i.cn = sext i32 %.sroa.speculated to i64
  %i.co = getelementptr inbounds [4 x i8], ptr @_ZN4pbrtL12MIPFilterLUTE, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !36 ; 2 uses
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw [152 x i8], ptr %i.cq, i64 %i.n ; 9 uses
  %i.cs = load i32, ptr %i.bq, align 8, !tbaa !24 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.ct, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 11 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32 ; 2 uses
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 8 uses
  %i.cu = icmp eq i32 %i.cs, 3
  br i1 %i.cu, label %bb.h, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.g
  %i.cv = icmp sgt i32 %.057154, -1
  %i.cw = icmp slt i32 %.057154, %.sroa.0.0.extract.trunc.i
  %or.cond.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i, label %.preheader.1.i, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.cx = icmp slt i32 %.057154, 0
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = sub nsw i32 0, %.057154
  %i.cz = add i32 %.sroa.9.0.extract.trunc.i, %i.ca
  br label %._crit_edge.i

bb.j:                                             ; preds = %bb.h
  %.not.i = icmp slt i32 %.057154, %.sroa.0.0.extract.trunc.i
  br i1 %.not.i, label %._crit_edge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = shl nsw i32 %.sroa.0.0.extract.trunc.i, 1
  %i.db = xor i32 %.057154, -1
  %i.dc = add i32 %i.da, %i.db
  %i.dd = add i32 %.sroa.9.0.extract.trunc.i, %i.ca
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.0119.1 = phi i32 [ %i.cy, %bb.i ], [ %i.dc, %bb.k ], [ %.057154, %bb.j ] ; 3 uses
  %.sroa.14.0 = phi i32 [ %i.cz, %bb.i ], [ %i.dd, %bb.k ], [ %.058162, %bb.j ] ; 5 uses
  %i.de = icmp slt i32 %.sroa.14.0, 0
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.df = xor i32 %.sroa.0119.1, -1
  %i.dg = add i32 %i.df, %.sroa.0.0.extract.trunc.i
  %i.dh = sub nsw i32 0, %.sroa.14.0
  br label %.sink.split.i

bb.m:                                             ; preds = %._crit_edge.i
  %.not44.i = icmp slt i32 %.sroa.14.0, %.sroa.9.0.extract.trunc.i
  br i1 %.not44.i, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = xor i32 %.sroa.0119.1, -1
  %i.dj = add i32 %i.di, %.sroa.0.0.extract.trunc.i
  %i.dk = shl nsw i32 %.sroa.9.0.extract.trunc.i, 1
  %i.dl = xor i32 %.sroa.14.0, -1
  %i.dm = add i32 %i.dk, %i.dl
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.n, %bb.m
  %.sroa.0119.3 = phi i32 [ %.sroa.0119.1, %bb.m ], [ %i.dg, %bb.l ], [ %i.dj, %bb.n ]
  %.sroa.14.1 = phi i32 [ %.sroa.14.0, %bb.m ], [ %i.dh, %bb.l ], [ %i.dm, %bb.n ]
  %i.dn = icmp eq i32 %.sroa.0.0.extract.trunc.i, 1
  %spec.select = select i1 %i.dn, i32 0, i32 %.sroa.0119.3
  %i.do = icmp eq i64 %.sroa.9.0.extract.shift.i, 1
  %spec.select142 = select i1 %i.do, i32 0, i32 %.sroa.14.1
  br label %bb.v

bb.o:                                             ; preds = %.preheader.preheader.i
  switch i32 %i.cs, label %bb.r [
    i32 2, label %bb.p
    i32 1, label %bb.q
    i32 0, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  ]

bb.p:                                             ; preds = %bb.o
  %i.dp = srem i32 %.057154, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  %i.dr = select i1 %i.dq, i32 %.sroa.0.0.extract.trunc.i, i32 0
  %i.ds = add nsw i32 %i.dr, %i.dp
  br label %.preheader.1.i

bb.q:                                             ; preds = %bb.o
  %i.dt = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %i.du = icmp slt i32 %.057154, 0
  %..i.i = call i32 @llvm.smin.i32(i32 %.057154, i32 %i.dt)
  %.0.i.i = select i1 %i.du, i32 0, i32 %..i.i
  br label %.preheader.1.i

bb.r:                                             ; preds = %bb.s, %bb.o
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 142, ptr noundef nonnull @.str.27) #24
  unreachable

.preheader.1.i:                                   ; preds = %bb.p, %bb.q, %.preheader.preheader.i
  %.sroa.0119.0 = phi i32 [ %.057154, %.preheader.preheader.i ], [ %i.ds, %bb.p ], [ %.0.i.i, %bb.q ] ; 3 uses
  %i.dv = icmp slt i32 %.058162, %.sroa.9.0.extract.trunc.i
  %or.cond.1.i = select i1 %i.by, i1 %i.dv, i1 false
  br i1 %or.cond.1.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.preheader.1.i
  switch i32 %i.cs, label %bb.r [
    i32 2, label %bb.u
    i32 1, label %bb.t
    i32 0, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  ]

bb.t:                                             ; preds = %bb.s
  %i.dw = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.058162, i32 %i.dw)
  %.0.i.1.i = select i1 %i.bz, i32 0, i32 %..i.1.i
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dx = srem i32 %.058162, %.sroa.9.0.extract.trunc.i ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  %i.dz = select i1 %i.dy, i32 %.sroa.9.0.extract.trunc.i, i32 0
  %i.ea = add nsw i32 %i.dz, %i.dx
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %bb.u, %bb.t, %.preheader.1.i
  %.sroa.0119.5.ph = phi i32 [ %.sroa.0119.0, %bb.t ], [ %.sroa.0119.0, %bb.u ], [ %.sroa.0119.0, %.preheader.1.i ], [ %spec.select, %.sink.split.i ] ; 3 uses
  %.sroa.14.2.ph = phi i32 [ %.0.i.1.i, %bb.t ], [ %i.ea, %bb.u ], [ %.058162, %.preheader.1.i ], [ %spec.select142, %.sink.split.i ] ; 3 uses
  %i.eb = load i32, ptr %i.cr, align 8, !tbaa !47
  switch i32 %i.eb, label %bb.ae [
    i32 0, label %bb.w
    i32 1, label %bb.z
    i32 2, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %i.ct, align 4, !tbaa !61
  %i.eh = mul nsw i32 %i.eg, %.sroa.14.2.ph
  %i.ei = add nsw i32 %i.eh, %.sroa.0119.5.ph
  %i.ej = mul nsw i32 %i.ei, %i.ef
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !62
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ek  ; 3 uses
  %i.eo = load i64, ptr %i.ec, align 8, !tbaa !63 ; 2 uses
  %i.ep = and i64 %i.eo, 144115188075855871
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = lshr i64 %i.eo, 57
  %i.es = trunc nuw nsw i64 %i.er to i32
  switch i32 %i.es, label %bb.y [
    i32 1, label %.lr.ph.i.i.i.i.i.preheader.i
    i32 2, label %bb.x
  ]

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.w
  %i.et = load i8, ptr %i.en, align 1, !tbaa !64
  %i.eu = uitofp i8 %i.et to float
  %i.ev = fdiv float %i.eu, 2.550000e+02
  store float %i.ev, ptr %i.a, align 4, !tbaa !36
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.eq, ptr %i.en, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.y:                                             ; preds = %bb.w
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.eq, ptr %i.en, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.y, %bb.x, %.lr.ph.i.i.i.i.i.preheader.i
  %i.ew = load float, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.z:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !26
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = mul nsw i32 %.sroa.14.2.ph, %.sroa.0.0.extract.trunc.i
  %i.fb = add nsw i32 %i.fa, %.sroa.0119.5.ph
  %i.fc = mul nsw i32 %i.fb, %i.ez
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !65
  %i.fg = getelementptr [2 x i8], ptr %i.ff, i64 %i.fd
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !66 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt6MIPMap6BilerpINS_3RGBEEET_iNS_6Point2IfEE:bb.a
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.z = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 %.sroa.062.0.insert.insert)
  %i.aa = sitofp i32 %i.t to float
  %i.ab = extractelement <2 x float> %i.o, i64 1
  %i.ac = fsub float %i.ab, %i.aa                 ; 3 uses
  %i.ad = sitofp i32 %i.r to float
  %i.ae = extractelement <2 x float> %i.o, i64 0
  %i.af = fsub float %i.ae, %i.ad                 ; 3 uses
  %i.ag = fsub float 1.000000e+00, %i.af          ; 2 uses
  %i.ah = fsub float 1.000000e+00, %i.ac          ; 2 uses
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = fmul float %i.u, %i.ai
  %i.ak = fmul float %i.af, %i.ah
  %i.al = fmul float %i.w, %i.ak
  %i.am = fadd float %i.aj, %i.al
  %i.an = fmul float %i.ag, %i.ac
  %i.ao = fmul float %i.y, %i.an
  %i.ap = fadd float %i.ao, %i.am
  %i.aq = fmul float %i.af, %i.ac
  %i.ar = fmul float %i.z, %i.aq
  %i.as = fadd float %i.ar, %i.ap                 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw [152 x i8], ptr %i.at, i64 %i.a ; 5 uses
  %i.av = load i32, ptr %i.i, align 8, !tbaa !24
  %.sroa.261.0.insert.ext = zext i32 %i.av to i64 ; 2 uses
  %.sroa.261.0.insert.shift = shl nuw i64 %.sroa.261.0.insert.ext, 32
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.261.0.insert.shift, %.sroa.261.0.insert.ext ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !30
  %i.ay = sitofp <2 x i32> %i.ax to <2 x float>
  %i.az = fmul <2 x float> %2, %i.ay
  %i.ba = fadd <2 x float> %i.az, splat (float -5.000000e-01) ; 2 uses
  %i.bb = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ba)
  %i.bc = fptosi <2 x float> %i.bb to <2 x i32>   ; 4 uses
  %i.bd = extractelement <2 x i32> %i.bc, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i22 = zext i32 %i.bd to i64
  %.sroa.239.0.insert.shift.i23 = shl nuw i64 %.sroa.239.0.insert.ext.i22, 32
  %i.be = extractelement <2 x i32> %i.bc, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i24 = zext i32 %i.be to i64
  %.sroa.038.0.insert.insert.i25 = bitcast <2 x i32> %i.bc to i64
  %i.bf = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.au, i64 %.sroa.038.0.insert.insert.i25, i32 noundef 1, i64 %.sroa.060.0.insert.insert)
  %i.bg = add nsw i32 %i.be, 1
  %.sroa.036.0.insert.ext.i26 = zext i32 %i.bg to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i27 = or disjoint i64 %.sroa.239.0.insert.shift.i23, %.sroa.036.0.insert.ext.i26
  %i.bh = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.au, i64 %.sroa.036.0.insert.insert.i27, i32 noundef 1, i64 %.sroa.060.0.insert.insert)
  %i.bi = add nsw i32 %i.bd, 1
  %.sroa.235.0.insert.ext.i28 = zext i32 %i.bi to i64
  %.sroa.235.0.insert.shift.i29 = shl nuw i64 %.sroa.235.0.insert.ext.i28, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i30 = or disjoint i64 %.sroa.235.0.insert.shift.i29, %.sroa.038.0.insert.ext.i24
  %i.bj = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.au, i64 %.sroa.034.0.insert.insert.i30, i32 noundef 1, i64 %.sroa.060.0.insert.insert)
  %.sroa.0.0.insert.insert.i31 = or disjoint i64 %.sroa.235.0.insert.shift.i29, %.sroa.036.0.insert.ext.i26
  %i.bk = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.au, i64 %.sroa.0.0.insert.insert.i31, i32 noundef 1, i64 %.sroa.060.0.insert.insert)
  %i.bl = sitofp <2 x i32> %i.bc to <2 x float>
  %i.bm = fsub <2 x float> %i.ba, %i.bl           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0 ; 3 uses
  %i.bo = fsub float 1.000000e+00, %i.bn          ; 2 uses
  %i.bp = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  %i.bq = fsub float 1.000000e+00, %i.bp          ; 2 uses
  %i.br = fmul float %i.bo, %i.bq
  %i.bs = fmul float %i.bf, %i.br
  %i.bt = fmul float %i.bn, %i.bq
  %i.bu = fmul float %i.bh, %i.bt
  %i.bv = fadd float %i.bs, %i.bu
  %i.bw = fmul float %i.bo, %i.bp
  %i.bx = fmul float %i.bj, %i.bw
  %i.by = fadd float %i.bx, %i.bv
  %i.bz = fmul float %i.bn, %i.bp
  %i.ca = fmul float %i.bk, %i.bz
  %i.cb = fadd float %i.ca, %i.by
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw [152 x i8], ptr %i.cc, i64 %i.a ; 5 uses
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !24
  %.sroa.259.0.insert.ext = zext i32 %i.ce to i64 ; 2 uses
  %.sroa.259.0.insert.shift = shl nuw i64 %.sroa.259.0.insert.ext, 32
  %.sroa.058.0.insert.insert = or disjoint i64 %.sroa.259.0.insert.shift, %.sroa.259.0.insert.ext ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !30
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>
  %i.ci = fmul <2 x float> %2, %i.ch
  %i.cj = fadd <2 x float> %i.ci, splat (float -5.000000e-01) ; 2 uses
  %i.ck = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cj)
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>   ; 4 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i35 = zext i32 %i.cm to i64
  %.sroa.239.0.insert.shift.i36 = shl nuw i64 %.sroa.239.0.insert.ext.i35, 32
  %i.cn = extractelement <2 x i32> %i.cl, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i37 = zext i32 %i.cn to i64
  %.sroa.038.0.insert.insert.i38 = bitcast <2 x i32> %i.cl to i64
  %i.co = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.cd, i64 %.sroa.038.0.insert.insert.i38, i32 noundef 2, i64 %.sroa.058.0.insert.insert)
  %i.cp = add nsw i32 %i.cn, 1
  %.sroa.036.0.insert.ext.i39 = zext i32 %i.cp to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i40 = or disjoint i64 %.sroa.239.0.insert.shift.i36, %.sroa.036.0.insert.ext.i39
  %i.cq = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.cd, i64 %.sroa.036.0.insert.insert.i40, i32 noundef 2, i64 %.sroa.058.0.insert.insert)
  %i.cr = add nsw i32 %i.cm, 1
  %.sroa.235.0.insert.ext.i41 = zext i32 %i.cr to i64
  %.sroa.235.0.insert.shift.i42 = shl nuw i64 %.sroa.235.0.insert.ext.i41, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i43 = or disjoint i64 %.sroa.235.0.insert.shift.i42, %.sroa.038.0.insert.ext.i37
  %i.cs = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.cd, i64 %.sroa.034.0.insert.insert.i43, i32 noundef 2, i64 %.sroa.058.0.insert.insert)
  %.sroa.0.0.insert.insert.i44 = or disjoint i64 %.sroa.235.0.insert.shift.i42, %.sroa.036.0.insert.ext.i39
  %i.ct = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.cd, i64 %.sroa.0.0.insert.insert.i44, i32 noundef 2, i64 %.sroa.058.0.insert.insert)
  %i.cu = sitofp <2 x i32> %i.cl to <2 x float>
  %i.cv = fsub <2 x float> %i.cj, %i.cu           ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0 ; 3 uses
  %i.cx = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.cy = extractelement <2 x float> %i.cv, i64 1 ; 3 uses
  %i.cz = fsub float 1.000000e+00, %i.cy          ; 2 uses
  %i.da = fmul float %i.cx, %i.cz
  %i.db = fmul float %i.co, %i.da
  %i.dc = fmul float %i.cw, %i.cz
  %i.dd = fmul float %i.cq, %i.dc
  %i.de = fadd float %i.db, %i.dd
  %i.df = fmul float %i.cx, %i.cy
  %i.dg = fmul float %i.cs, %i.df
  %i.dh = fadd float %i.dg, %i.de
  %i.di = fmul float %i.cw, %i.cy
  %i.dj = fmul float %i.ct, %i.di
  %i.dk = fadd float %i.dj, %i.dh
  %.sroa.064.0.vec.insert = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.064.4.vec.insert = insertelement <2 x float> %.sroa.064.0.vec.insert, float %i.cb, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.064.0.vec.insert67 = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.064.4.vec.insert69 = shufflevector <2 x float> %.sroa.064.0.vec.insert67, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi <2 x float> [ %.sroa.064.4.vec.insert, %bb.b ], [ %.sroa.064.4.vec.insert69, %bb.c ]
  %.sroa.5.0 = phi float [ %i.dk, %bb.b ], [ %i.as, %bb.c ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.064.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt6MIPMap3EWAINS_3RGBEEET_iNS_6Point2IfEENS_7Vector2IfEES7_(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, <2 x float> %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %.not = icmp slt i32 %1, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.i, -1
  %i.k = tail call { <2 x float>, float } @_ZNK4pbrt6MIPMap5TexelINS_3RGBEEET_iNS_6Point2IiEE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %i.j, i64 0)
  br label %bb.de

bb.c:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %1, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %1 to i64                  ; 9 uses
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN4pbrt8LogFatalIJRA37_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(37) @.str.19) #24
  unreachable

_ZNK4pbrt6MIPMap15LevelResolutionEi.exit:         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw [152 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 4
  %i.s = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i, i64 0
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.u = lshr <2 x i64> %i.t, <i64 0, i64 32>
  %i.v = trunc <2 x i64> %i.u to <2 x i32>
  %i.w = sitofp <2 x i32> %i.v to <2 x float>     ; 3 uses
  %i.x = fmul <2 x float> %3, %i.w                ; 4 uses
  %i.y = fmul <2 x float> %4, %i.w                ; 4 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.x, %shift
  %shift520 = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop521 = fmul <2 x float> %i.y, %shift520
  %foldExtExtBinop523 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop521
  %i.z = extractelement <2 x float> %foldExtExtBinop523, i64 0
  %i.aa = fmul float %i.z, -2.000000e+00          ; 3 uses
  %i.ab = fmul <2 x float> %i.x, %i.x
  %i.ac = fmul <2 x float> %i.y, %i.y
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = fadd <2 x float> %i.ad, splat (float 1.000000e+00) ; 3 uses
  %shift525 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop526 = fmul <2 x float> %i.ae, %shift525
  %i.af = extractelement <2 x float> %foldExtExtBinop526, i64 0
  %i.ag = fmul float %i.aa, %i.aa
  %i.ah = fmul float %i.ag, 2.500000e-01
  %i.ai = fsub float %i.af, %i.ah
  %5 = fmul <2 x float> %2, %i.w
  %6 = fadd <2 x float> %5, splat (float -5.000000e-01) ; 4 uses
  %i.aj = fdiv float 1.000000e+00, %i.ai          ; 2 uses
  %7 = fmul float %i.aa, %i.aj                    ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.ae, %i.al           ; 3 uses
  %i.an = fmul float %7, %7
  %i.ao = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.ap = fmul float %i.ao, 4.000000e+00
  %i.aq = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.ar = fmul float %i.aq, %i.ap
  %i.as = fsub float %i.ar, %i.an                 ; 2 uses
  %i.at = fdiv float 1.000000e+00, %i.as
  %i.au = insertelement <2 x float> poison, float %i.as, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.am, %i.av           ; 2 uses
  %i.ax = fcmp ogt <2 x float> %i.aw, zeroinitializer
  %i.ay = select <2 x i1> %i.ax, <2 x float> %i.aw, <2 x float> zeroinitializer
  %i.az = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ay)
  %8 = fmul float %i.at, 2.000000e+00
  %i.ba = insertelement <2 x float> poison, float %8, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.bb, %i.az           ; 2 uses
  %i.bd = fsub <2 x float> %6, %i.bc
  %i.be = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bd) ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = fptosi float %i.bf to i32               ; 2 uses
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = fptosi float %i.bh to i32               ; 2 uses
  %i.bj = fadd <2 x float> %6, %i.bc
  %i.bk = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bj) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = fptosi float %i.bl to i32               ; 2 uses
  %i.bn = extractelement <2 x float> %i.bk, i64 1
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %.not81449 = icmp sgt i32 %i.bi, %i.bo
  br i1 %.not81449, label %._crit_edge455, label %.lr.ph454

.lr.ph454:                                        ; preds = %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit
  %.not82432 = icmp sgt i32 %i.bg, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br i1 %.not82432, label %._crit_edge455, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph454
  %i.bq = extractelement <2 x float> %6, i64 1
  %i.br = extractelement <2 x float> %6, i64 0
  br label %.lr.ph

._crit_edge455:                                   ; preds = %._crit_edge, %.lr.ph454, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit
  %.sroa.10.0.lcssa = phi float [ 0.000000e+00, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit ], [ 0.000000e+00, %.lr.ph454 ], [ %.sroa.10.2, %._crit_edge ]
  %.sroa.0224.0.lcssa = phi <2 x float> [ zeroinitializer, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit ], [ zeroinitializer, %.lr.ph454 ], [ %.sroa.0224.2, %._crit_edge ]
  %.0.lcssa = phi float [ 0.000000e+00, %_ZNK4pbrt6MIPMap15LevelResolutionEi.exit ], [ 0.000000e+00, %.lr.ph454 ], [ %.2, %._crit_edge ] ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %.0.lcssa, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fdiv <2 x float> %.sroa.0224.0.lcssa, %i.bt
  %i.bv = fdiv float %.sroa.10.0.lcssa, %.0.lcssa
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bu, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.bv, 1
  br label %bb.de

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0453 = phi float [ %.2, %._crit_edge ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.077452 = phi i32 [ %i.cd, %._crit_edge ], [ %i.bi, %.lr.ph.preheader ] ; 26 uses
  %.sroa.0224.0451 = phi <2 x float> [ %.sroa.0224.2, %._crit_edge ], [ zeroinitializer, %.lr.ph.preheader ]
  %.sroa.10.0450 = phi float [ %.sroa.10.2, %._crit_edge ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.bw = sitofp i32 %.077452 to float
  %i.bx = fsub float %i.bw, %i.bq                 ; 3 uses
  %i.by = fmul float %i.bx, %i.bx
  %i.bz = fmul float %i.aq, %i.by
  %i.ca = icmp sgt i32 %.077452, -1               ; 4 uses
  %i.cb = icmp slt i32 %.077452, 0                ; 4 uses
  %i.cc = xor i32 %.077452, -1                    ; 8 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.dd
  %i.cd = add i32 %.077452, 1
  %exitcond462.not = icmp eq i32 %.077452, %i.bo
  br i1 %exitcond462.not, label %._crit_edge455, label %.lr.ph, !llvm.loop !71

bb.f:                                             ; preds = %.lr.ph, %bb.dd
  %.1446 = phi float [ %.0453, %.lr.ph ], [ %.2, %bb.dd ] ; 2 uses
  %.078435 = phi i32 [ %i.bg, %.lr.ph ], [ %i.sa, %bb.dd ] ; 47 uses
  %.sroa.0224.1434 = phi <2 x float> [ %.sroa.0224.0451, %.lr.ph ], [ %.sroa.0224.2, %bb.dd ] ; 2 uses
  %.sroa.10.1433 = phi float [ %.sroa.10.0450, %.lr.ph ], [ %.sroa.10.2, %bb.dd ] ; 2 uses
  %i.ce = sitofp i32 %.078435 to float
  %i.cf = fsub float %i.ce, %i.br                 ; 3 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = fmul float %i.ao, %i.cg
  %i.ci = fmul float %7, %i.cf
  %i.cj = fmul float %i.bx, %i.ci
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = fadd float %i.bz, %i.ck                 ; 2 uses
  %i.cm = fcmp olt float %i.cl, 1.000000e+00
  br i1 %i.cm, label %bb.g, label %bb.dd

bb.g:                                             ; preds = %bb.f
  %i.cn = fmul nnan float %i.cl, 1.280000e+02
  %i.co = fptosi float %i.cn to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.co, i32 127)
  %i.cp = sext i32 %.sroa.speculated to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @_ZN4pbrtL12MIPFilterLUTE, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !36 ; 3 uses
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !23  ; 5 uses
  %i.ct = getelementptr inbounds nuw [152 x i8], ptr %i.cs, i64 %i.m ; 13 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !26
  %i.cw = trunc i64 %i.cv to i32                  ; 6 uses
  %i.cx = add i32 %i.cw, -3
  %or.cond.i = icmp ult i32 %i.cx, 2
  br i1 %or.cond.i, label %bb.h, label %bb.cc

bb.h:                                             ; preds = %bb.g
  %i.cy = load i32, ptr %i.bp, align 8, !tbaa !24 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %.sroa.04.0.copyload.i131 = load i64, ptr %i.cz, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i198 = trunc i64 %.sroa.04.0.copyload.i131 to i32 ; 14 uses
  %.sroa.9.0.extract.shift.i199 = lshr i64 %.sroa.04.0.copyload.i131, 32 ; 5 uses
  %.sroa.9.0.extract.trunc.i200 = trunc nuw i64 %.sroa.9.0.extract.shift.i199 to i32 ; 11 uses
  %i.da = icmp eq i32 %i.cy, 3
  br i1 %i.da, label %bb.i, label %.preheader.preheader.i202

.preheader.preheader.i202:                        ; preds = %bb.h
  %i.db = icmp sgt i32 %.078435, -1
  %i.dc = icmp slt i32 %.078435, %.sroa.0.0.extract.trunc.i198
  %or.cond.i203 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond.i203, label %.preheader.1.i209, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dd = icmp slt i32 %.078435, 0
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.de = sub nsw i32 0, %.078435
  %i.df = add i32 %.sroa.9.0.extract.trunc.i200, %i.cc
  br label %._crit_edge.i217

bb.k:                                             ; preds = %bb.i
  %.not.i213 = icmp slt i32 %.078435, %.sroa.0.0.extract.trunc.i198
  br i1 %.not.i213, label %._crit_edge.i217, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = shl nsw i32 %.sroa.0.0.extract.trunc.i198, 1
  %i.dh = xor i32 %.078435, -1
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = add i32 %.sroa.9.0.extract.trunc.i200, %i.cc
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.0332.1 = phi i32 [ %i.de, %bb.j ], [ %i.di, %bb.l ], [ %.078435, %bb.k ] ; 3 uses
  %.sroa.14340.0 = phi i32 [ %i.df, %bb.j ], [ %i.dj, %bb.l ], [ %.077452, %bb.k ] ; 5 uses
  %i.dk = icmp slt i32 %.sroa.14340.0, 0
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i217
  %i.dl = xor i32 %.sroa.0332.1, -1
  %i.dm = add i32 %i.dl, %.sroa.0.0.extract.trunc.i198
  %i.dn = sub nsw i32 0, %.sroa.14340.0
  br label %.sink.split.i215

bb.n:                                             ; preds = %._crit_edge.i217
  %.not44.i214 = icmp slt i32 %.sroa.14340.0, %.sroa.9.0.extract.trunc.i200
  br i1 %.not44.i214, label %.sink.split.i215, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = xor i32 %.sroa.0332.1, -1
  %i.dp = add i32 %i.do, %.sroa.0.0.extract.trunc.i198
  %i.dq = shl nsw i32 %.sroa.9.0.extract.trunc.i200, 1
  %i.dr = xor i32 %.sroa.14340.0, -1
  %i.ds = add i32 %i.dq, %i.dr
  br label %.sink.split.i215

.sink.split.i215:                                 ; preds = %bb.m, %bb.o, %bb.n
  %.sroa.0332.3 = phi i32 [ %.sroa.0332.1, %bb.n ], [ %i.dm, %bb.m ], [ %i.dp, %bb.o ]
  %.sroa.14340.1 = phi i32 [ %.sroa.14340.0, %bb.n ], [ %i.dn, %bb.m ], [ %i.ds, %bb.o ]
  %i.dt = icmp eq i32 %.sroa.0.0.extract.trunc.i198, 1
  %spec.select = select i1 %i.dt, i32 0, i32 %.sroa.0332.3
  %i.du = icmp eq i64 %.sroa.9.0.extract.shift.i199, 1
  %spec.select374 = select i1 %i.du, i32 0, i32 %.sroa.14340.1
  br label %bb.w

bb.p:                                             ; preds = %.preheader.preheader.i202
  switch i32 %i.cy, label %bb.s [
    i32 2, label %bb.q
    i32 1, label %bb.r
    i32 0, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit150.thread
  ]

bb.q:                                             ; preds = %bb.p
  %i.dv = srem i32 %.078435, %.sroa.0.0.extract.trunc.i198 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  %i.dx = select i1 %i.dw, i32 %.sroa.0.0.extract.trunc.i198, i32 0
  %i.dy = add nsw i32 %i.dx, %i.dv
  br label %.preheader.1.i209

bb.r:                                             ; preds = %bb.p
  %i.dz = add nsw i32 %.sroa.0.0.extract.trunc.i198, -1
  %i.ea = icmp slt i32 %.078435, 0
  %..i.i205 = call i32 @llvm.smin.i32(i32 %.078435, i32 %i.dz)
  %.0.i.i206 = select i1 %i.ea, i32 0, i32 %..i.i205
  br label %.preheader.1.i209

bb.s:                                             ; preds = %bb.t, %bb.p
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 142, ptr noundef nonnull @.str.27) #24
  unreachable

.preheader.1.i209:                                ; preds = %bb.q, %bb.r, %.preheader.preheader.i202
  %.sroa.0332.0 = phi i32 [ %.078435, %.preheader.preheader.i202 ], [ %i.dy, %bb.q ], [ %.0.i.i206, %bb.r ] ; 3 uses
  %i.eb = icmp slt i32 %.077452, %.sroa.9.0.extract.trunc.i200
  %or.cond.1.i210 = select i1 %i.ca, i1 %i.eb, i1 false
  br i1 %or.cond.1.i210, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.preheader.1.i209
  switch i32 %i.cy, label %bb.s [
    i32 2, label %bb.v
    i32 1, label %bb.u
    i32 0, label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit150.thread
  ]

bb.u:                                             ; preds = %bb.t
  %i.ec = add nsw i32 %.sroa.9.0.extract.trunc.i200, -1
  %..i.1.i211 = call i32 @llvm.smin.i32(i32 %.077452, i32 %i.ec)
  %.0.i.1.i212 = select i1 %i.cb, i32 0, i32 %..i.1.i211
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ed = srem i32 %.077452, %.sroa.9.0.extract.trunc.i200 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  %i.ef = select i1 %i.ee, i32 %.sroa.9.0.extract.trunc.i200, i32 0
  %i.eg = add nsw i32 %i.ef, %i.ed
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i215, %bb.v, %bb.u, %.preheader.1.i209
  %.sroa.0332.5.ph = phi i32 [ %.sroa.0332.0, %bb.u ], [ %.sroa.0332.0, %bb.v ], [ %.sroa.0332.0, %.preheader.1.i209 ], [ %spec.select, %.sink.split.i215 ] ; 3 uses
  %.sroa.14340.2.ph = phi i32 [ %.0.i.1.i212, %bb.u ], [ %i.eg, %bb.v ], [ %.077452, %.preheader.1.i209 ], [ %spec.select374, %.sink.split.i215 ] ; 3 uses
  %i.eh = load i32, ptr %i.ct, align 8, !tbaa !47
  switch i32 %i.eh, label %bb.af [
    i32 0, label %bb.x
    i32 1, label %bb.aa
    i32 2, label %bb.ae
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.ej = load i32, ptr %i.cz, align 4, !tbaa !61
  %i.ek = mul nsw i32 %i.ej, %.sroa.14340.2.ph
  %i.el = add nsw i32 %i.ek, %.sroa.0332.5.ph
  %i.em = mul nsw i32 %i.el, %i.cw
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.en  ; 3 uses
  %i.er = load i64, ptr %i.ei, align 8, !tbaa !63 ; 2 uses
  %i.es = and i64 %i.er, 144115188075855871
  %i.et = inttoptr i64 %i.es to ptr               ; 2 uses
  %i.eu = lshr i64 %i.er, 57
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  switch i32 %i.ev, label %bb.z [
    i32 1, label %.lr.ph.i.i.i.i.i.preheader.i149
    i32 2, label %bb.y
  ]

.lr.ph.i.i.i.i.i.preheader.i149:                  ; preds = %bb.x
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !64
  %i.ex = uitofp i8 %i.ew to float
  %i.ey = fdiv float %i.ex, 2.550000e+02
  store float %i.ey, ptr %i.a, align 4, !tbaa !36
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i148

bb.y:                                             ; preds = %bb.x
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.et, ptr %i.eq, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i148

bb.z:                                             ; preds = %bb.x
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.et, ptr %i.eq, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i148

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i148: ; preds = %bb.z, %bb.y, %.lr.ph.i.i.i.i.i.preheader.i149
  %i.ez = load float, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %.pre463 = load i32, ptr %i.bp, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw [152 x i8], ptr %.pre, i64 %i.m
  %.phi.trans.insert464 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.sroa.04.0.copyload.i111.pre = load i64, ptr %.phi.trans.insert464, align 4 ; 2 uses
  %i.fa = trunc i64 %.sroa.04.0.copyload.i111.pre to i32
  %.pre471 = lshr i64 %.sroa.04.0.copyload.i111.pre, 32 ; 2 uses
  %.pre472 = trunc nuw i64 %.pre471 to i32
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit150
end_hunk_1
