Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexWriter?download=true
inline.NumInlined: 1329
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Ptex4v2_414PtexMainWriter18generateReductionsEv:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !166  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !155  ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.e
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.z = sub nuw nsw i64 %i.e, %i.x
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.z)
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !155
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.aa = icmp ugt i64 %i.x, %i.e
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.e ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i84, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85:      ; preds = %bb.g
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !166
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit86

_ZNSt6vectorIjSaIjEE6resizeEm.exit86:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i85 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !149
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !155
  tail call void @_ZN4Ptex4v2_49PtexUtils11genRfaceidsEPKNS0_8FaceInfoEiPjS5_(ptr noundef nonnull %i.ae, i32 noundef %i.c, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ac)
  %i.ag = icmp sgt i32 %i.c, 0
  br i1 %i.ag, label %.lr.ph131, label %._crit_edge

.lr.ph131:                                        ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit86
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.ak = zext nneg i32 %i.c to i64               ; 3 uses
  br label %bb.h

.loopexit:                                        ; preds = %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit, %bb.j
  %.1.lcssa = phi i32 [ %.070128, %bb.j ], [ %i.az, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit ]
  %i.al = icmp sgt i64 %indvars.iv, 1
  br i1 %i.al, label %bb.h, label %.lr.ph134, !llvm.loop !276

.lr.ph134:                                        ; preds = %.loopexit
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !149 ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.an = icmp eq i32 %i.c, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph134.new

.lr.ph134.new:                                    ; preds = %.lr.ph134
  %unroll_iter = and i64 %i.ak, 2147483646
  br label %bb.z

bb.h:                                             ; preds = %.lr.ph131, %.loopexit
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph131 ], [ %indvars.iv.next, %.loopexit ] ; 10 uses
  %.070128 = phi i32 [ 2, %.lr.ph131 ], [ %.1.lcssa, %.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !48
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !50
  %.sroa.054.0.copyload = load i8, ptr %i.at, align 4, !tbaa !50
  %i.ax = tail call noundef i8 @llvm.smin.i8(i8 %.sroa.054.0.copyload, i8 %.sroa.5.0.copyload)
  %i.ay = sext i8 %i.ax to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i32 [ %i.ay, %bb.i ], [ 1, %bb.h ]  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, %.070128
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit
  %.1126 = phi i32 [ %i.fp, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit ], [ %.070128, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !138 ; 7 uses
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !136
  %.not.i.i87 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  store ptr %i.be, ptr %i.ai, align 8, !tbaa !138
  br label %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.ah, align 8, !tbaa !137 ; 5 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775776
  br i1 %i.bj, label %bb.m, label %_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #32
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.bk = sdiv exact i64 %i.bi, 48                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 192153584101141162)
  %i.bo = select i1 %i.bm, i64 192153584101141162, i64 %i.bn ; 3 uses
  %.not.i.i90 = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i90)
  %i.bp = mul nuw nsw i64 %i.bo, 48
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #27
          to label %.noexc93 unwind label %.loopexit121 ; 5 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc93, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %i.bq, %.noexc93 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.bf, %.noexc93 ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.bt = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !139, !alias.scope !290, !noalias !289
  store <2 x ptr> %i.bt, ptr %.012.i.i.i.i, align 8, !tbaa !139, !alias.scope !289, !noalias !290
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !140, !alias.scope !290, !noalias !289
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !290, !noalias !289
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !143, !alias.scope !290, !noalias !289
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !144, !alias.scope !290, !noalias !289
  %i.cb = insertelement <4 x ptr> poison, ptr %i.by, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %i.bz, i64 1
  %i.cd = shufflevector <2 x ptr> %i.ca, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x ptr> %i.cc, <4 x ptr> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ce, ptr %i.bu, align 8, !tbaa !145, !alias.scope !289, !noalias !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !alias.scope !290, !noalias !289
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.cf, %i.bb
  br i1 %.not.i.i.i.i91, label %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc93
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bq, %.noexc93 ], [ %i.cg, %.lr.ph.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i, label %.noexc, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ck) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.n, %_ZNSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.bq, ptr %i.ah, align 8, !tbaa !137
  store ptr %i.ch, ptr %i.ai, align 8, !tbaa !138
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.cl, ptr %i.aj, align 8, !tbaa !136
  br label %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit

_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit:  ; preds = %bb.k, %.noexc
  %i.cm = phi ptr [ %i.ch, %.noexc ], [ %i.be, %bb.k ] ; 8 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.cm, i64 -40
  %.pre161 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !152 ; 4 uses
  %.phi.trans.insert162 = getelementptr inbounds i8, ptr %i.cm, i64 -48
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8, !tbaa !147 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -48
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -40 ; 3 uses
  %i.cp = ptrtoint ptr %.pre161 to i64            ; 2 uses
  %i.cq = ptrtoint ptr %.pre163 to i64            ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = ashr exact i64 %i.cr, 3                 ; 6 uses
  %i.ct = icmp ult i64 %i.cs, %indvars.iv
  br i1 %i.ct, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit
  %i.cu = sub nuw nsw i64 %indvars.iv, %i.cs      ; 5 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cm, i64 -32 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !140
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.cp
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = xor i64 %i.cs, 1152921504606846975
  %i.db = icmp ule i64 %i.cz, %i.da
  tail call void @llvm.assume(i1 %i.db)
  %.not28.i = icmp ult i64 %i.cz, %i.cu
  br i1 %.not28.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %.pre161, align 8, !tbaa !66
  %i.dc = getelementptr i8, ptr %.pre161, i64 8   ; 3 uses
  %i.dd = add nsw i64 %i.cu, -1                   ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.p
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dd, 3    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.p
  %.0.i.i.i.i = phi ptr [ %i.df, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dc, %bb.p ]
  store ptr %.0.i.i.i.i, ptr %i.co, align 8, !tbaa !152
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %.sroa.speculated.i.i95 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cu)
  %i.dg = add nuw nsw i64 %.sroa.speculated.i.i95, %i.cs ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #27 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cr ; 3 uses
  store i64 0, ptr %i.dj, align 8, !tbaa !66
  %i.dk = add nsw i64 %i.cu, -1                   ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  %i.dm = getelementptr i8, ptr %i.dj, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dk, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dm, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !66
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i
  %i.dn = icmp sgt i64 %i.cr, 0
  br i1 %i.dn, label %bb.q, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %.pre163, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.q, %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.pre163, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.do = load ptr, ptr %i.cv, align 8, !tbaa !140
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre163, i64 noundef %i.dq) #28
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i: ; preds = %bb.r, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  store ptr %i.di, ptr %i.cn, align 8, !tbaa !147
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.cu
  store ptr %i.dr, ptr %i.co, align 8, !tbaa !152
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.ds, ptr %i.cv, align 8, !tbaa !140
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.s:                                             ; preds = %_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev.exit
  %i.dt = icmp ugt i64 %i.cs, %indvars.iv
  br i1 %i.dt, label %bb.t, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre163, i64 %indvars.iv ; 2 uses
  %.not.i.i88 = icmp eq ptr %.pre161, %i.du
  br i1 %.not.i.i88, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.du, ptr %i.co, align 8, !tbaa !152
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36.i, %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit.i, %bb.s, %bb.t, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.dv = getelementptr inbounds i8, ptr %i.cm, i64 -24 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.cm, i64 -16 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !153 ; 6 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !143 ; 8 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 4 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = ashr exact i64 %i.eb, 2                 ; 6 uses
  %i.ed = icmp ult i64 %i.ec, %indvars.iv
  br i1 %i.ed, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.ee = sub nuw nsw i64 %indvars.iv, %i.ec      ; 5 uses
  %i.ef = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !146
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dz
  %i.ej = ashr exact i64 %i.ei, 2                 ; 2 uses
  %i.ek = xor i64 %i.ec, 2305843009213693951
  %i.el = icmp ule i64 %i.ej, %i.ek
  tail call void @llvm.assume(i1 %i.el)
  %.not28.i97 = icmp ult i64 %i.ej, %i.ee
  br i1 %.not28.i97, label %_ZNKSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPN4Ptex4v2_414FaceDataHeaderEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN4Ptex4v2_414FaceDataHeaderEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.u
  %i.em = shl nuw nsw i64 %i.ee, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dx, i8 0, i64 %i.em, i1 false), !tbaa !111
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dx, i64 %i.em
  store ptr %scevgep.i.i.i.i, ptr %i.dw, align 8, !tbaa !153
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit

_ZNKSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.u
  %.sroa.speculated.i.i98 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.ee)
  %i.en = add nuw nsw i64 %.sroa.speculated.i.i98, %i.ec ; 2 uses
  %i.eo = shl nuw nsw i64 %i.en, 2
  %i.ep = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #27 ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eb ; 2 uses
  %i.er = shl nuw nsw i64 %i.ee, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eq, i8 0, i64 %i.er, i1 false), !tbaa !111
  %.not10.i.i.i.i99 = icmp eq ptr %i.dy, %i.dx
  br i1 %.not10.i.i.i.i99, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i100.preheader

.lr.ph.i.i.i.i100.preheader:                      ; preds = %_ZNKSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.es = ptrtoaddr ptr %i.ep to i64
  %i.et = add i64 %i.dz, -4
  %i.eu = sub i64 %i.et, %i.ea                    ; 2 uses
  %i.ev = lshr i64 %i.eu, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eu, 28
  %i.ex = sub i64 %i.ea, %i.es
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i100.preheader209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i100.preheader
  %n.vec = and i64 %i.ew, 9223372036854775800     ; 3 uses
  %i.ey = shl i64 %n.vec, 2                       ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ep, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.dy, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ep, i64 %i.fb ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.dy, i64 %i.fb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.fc = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep206, align 1, !tbaa !48, !alias.scope !292, !noalias !291
  %wide.load207 = load <4 x i32>, ptr %i.fc, align 1, !tbaa !48, !alias.scope !292, !noalias !291
  %i.fd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1, !tbaa !48, !alias.scope !291, !noalias !292
  store <4 x i32> %wide.load207, ptr %i.fd, align 1, !tbaa !48, !alias.scope !291, !noalias !292
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i100.preheader209

.lr.ph.i.i.i.i100.preheader209:                   ; preds = %.lr.ph.i.i.i.i100.preheader, %middle.block
  %.012.i.i.i.i101.ph = phi ptr [ %i.ep, %.lr.ph.i.i.i.i100.preheader ], [ %i.ez, %middle.block ]
  %.0911.i.i.i.i102.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i100.preheader ], [ %i.fa, %middle.block ]
  br label %.lr.ph.i.i.i.i100

.lr.ph.i.i.i.i100:                                ; preds = %.lr.ph.i.i.i.i100.preheader209, %.lr.ph.i.i.i.i100
  %.012.i.i.i.i101 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i100 ], [ %.012.i.i.i.i101.ph, %.lr.ph.i.i.i.i100.preheader209 ] ; 2 uses
  %.0911.i.i.i.i102 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i100 ], [ %.0911.i.i.i.i102.ph, %.lr.ph.i.i.i.i100.preheader209 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.ff = load i32, ptr %.0911.i.i.i.i102, align 1, !tbaa !48, !alias.scope !292, !noalias !291
  store i32 %i.ff, ptr %.012.i.i.i.i101, align 1, !tbaa !48, !alias.scope !291, !noalias !292
  %i.fg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i102, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i101, i64 4
  %.not.i.i.i.i103 = icmp eq ptr %i.fg, %i.dx
  br i1 %.not.i.i.i.i103, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i100, !llvm.loop !284

_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i100, %middle.block, %_ZNKSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.dy, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN4Ptex4v2_414FaceDataHeaderESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.fi = load ptr, ptr %i.ef, align 8, !tbaa !146
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.fk) #28
  br label %_ZNSt12_Vector_baseIN4Ptex4v2_414FaceDataHeaderESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN4Ptex4v2_414FaceDataHeaderESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.v, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ep, ptr %i.dv, align 8, !tbaa !143
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ee
  store ptr %i.fl, ptr %i.dw, align 8, !tbaa !153
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.en
  store ptr %i.fm, ptr %i.ef, align 8, !tbaa !146
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit

bb.w:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.fn = icmp ugt i64 %i.ec, %indvars.iv
  br i1 %i.fn, label %bb.x, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.dx, %i.fo
  br i1 %.not.i.i89, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4Ptex4v2_414FaceDataHeaderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Ptex4v2_414FaceDataHeaderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.x
  store ptr %i.fo, ptr %i.dw, align 8, !tbaa !153
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE6resizeEm.exit: ; preds = %_ZNSt12_Vector_baseIN4Ptex4v2_414FaceDataHeaderESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN4Ptex4v2_414FaceDataHeaderEmS2_ET_S4_T0_RSaIT1_E.exit.i, %bb.w, %bb.x, %_ZSt8_DestroyIPN4Ptex4v2_414FaceDataHeaderES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fp = add i32 %.1126, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %i.az
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !285

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.y ], [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ]
  resume { ptr, i32 } %common.resume.op

.loopexit121:                                     ; preds = %_ZNKSt6vectorIN4Ptex4v2_414PtexMainWriter8LevelRecESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit121
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit121 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4Ptex4v2_414PtexMainWriter8LevelRecD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph134
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next148.1, %._crit_edge.loopexit.unr-lcssa ]
  %.076132.epil.init = phi i32 [ 0, %.lr.ph134 ], [ %i.hq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod212 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.fq = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv147.epil.init ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !161
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = shl nuw i32 1, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !159
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = shl i32 %i.ft, %i.fw
  %i.fy = tail call noundef i32 @llvm.smax.i32(i32 %.076132.epil.init, i32 %i.fx)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIjSaIjEE6resizeEm.exit86
  %.076.lcssa = phi i32 [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit86 ], [ %i.hq, %._crit_edge.loopexit.unr-lcssa ], [ %i.fy, %.epil.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !79
  %i.gb = mul nsw i32 %i.ga, %.076.lcssa
  %i.gc = sext i32 %i.gb to i64
  %i.gd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #27 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !138
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !137
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 48                ; 3 uses
  %i.gm = trunc i64 %i.gl to i32
  %.not79140 = icmp sgt i32 %i.gm, 1
  br i1 %.not79140, label %.lr.ph143, label %.critedge83

.lr.ph143:                                        ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gx = and i64 %i.gl, 2147483647
  %wide.trip.count159 = and i64 %i.gl, 2147483647
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph134.new
  %indvars.iv147 = phi i64 [ 0, %.lr.ph134.new ], [ %indvars.iv.next148.1, %bb.z ] ; 3 uses
  %.076132 = phi i32 [ 0, %.lr.ph134.new ], [ %i.hq, %bb.z ]
  %niter = phi i64 [ 0, %.lr.ph134.new ], [ %niter.next.1, %bb.z ]
  %i.gy = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv147 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !161
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = shl nuw i32 1, %i.ha
end_hunk_0
