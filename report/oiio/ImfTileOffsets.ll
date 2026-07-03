inline.NumInlined: 552
inline.NumDeleted: 225
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsetsC2ENS_9LevelModeEiiPKiS3_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i50, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #17
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i49
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i50, i64 24 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i52, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i49, !llvm.loop !28

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  store ptr %i.x, ptr %i.n, align 8, !tbaa !20
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit:    ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !19  ; 4 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %.not136 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not136, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.i
  br label %bb.j

._crit_edge132:                                   ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit
  %i.al = phi ptr [ %i.af, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit ], [ %i.cl, %_ZNSt6vectorImSaImEE6resizeEm.exit ] ; 2 uses
  %i.am = add i32 %.037133, 1                     ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 24
  %i.at = icmp ugt i64 %i.as, %i.an
  br i1 %i.at, label %.lr.ph134, label %.loopexit113, !llvm.loop !30

bb.i:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.j:                                             ; preds = %.lr.ph131, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %.pre150154 = phi ptr [ %i.af, %.lr.ph131 ], [ %.pre150155, %_ZNSt6vectorImSaImEE6resizeEm.exit ] ; 5 uses
  %i.av = phi ptr [ %i.af, %.lr.ph131 ], [ %i.cl, %_ZNSt6vectorImSaImEE6resizeEm.exit ] ; 4 uses
  %i.aw = phi ptr [ %i.aj, %.lr.ph131 ], [ %i.cr, %_ZNSt6vectorImSaImEE6resizeEm.exit ]
  %i.ax = phi i64 [ 0, %.lr.ph131 ], [ %i.cn, %_ZNSt6vectorImSaImEE6resizeEm.exit ]
  %.036130 = phi i32 [ 0, %.lr.ph131 ], [ %i.cm, %_ZNSt6vectorImSaImEE6resizeEm.exit ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.ba = sext i32 %i.az to i64                   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 4 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 5 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = ashr exact i64 %i.bg, 3                 ; 7 uses
  %i.bi = icmp ult i64 %i.bh, %i.ba
  br i1 %i.bi, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bj = sub nuw nsw i64 %i.ba, %i.bh            ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = sub i64 %i.bm, %i.be
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %i.bp = icmp ult i64 %i.bh, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = xor i64 %i.bh, 1152921504606846975      ; 2 uses
  %i.br = icmp ule i64 %i.bo, %i.bq
  tail call void @llvm.assume(i1 %i.br)
  %.not28.i = icmp ult i64 %i.bo, %i.bj
  br i1 %.not28.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.bc, align 8, !tbaa !32
  %i.bs = getelementptr i8, ptr %i.bc, i64 8      ; 3 uses
  %i.bt = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.l
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.bv, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bs, %bb.l ]
  store ptr %.0.i.i.i.i, ptr %i.bb, align 8, !tbaa !31
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = icmp ult i64 %i.bq, %i.bj
  br i1 %i.bw, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bj)
  %i.bx = add nuw nsw i64 %.sroa.speculated.i.i, %i.bh
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975) ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #19
          to label %.noexc88 unwind label %.loopexit ; 4 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bg ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !32
  %i.cc = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc88
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !32
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc88
  %i.cf = icmp sgt i64 %i.bg, 0
  br i1 %i.cf, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.o, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.bd, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.cg = sub i64 %i.bm, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.cg) #17
  %.pre150.pre = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %.pre150 = phi ptr [ %.pre150.pre, %bb.p ], [ %.pre150154, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i ] ; 2 uses
  store ptr %i.ca, ptr %i.ay, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bj
  store ptr %i.ch, ptr %i.bb, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ci, ptr %i.bk, align 8, !tbaa !27
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.q:                                             ; preds = %bb.j
  %i.cj = icmp ugt i64 %i.bh, %i.ba
  br i1 %i.cj, label %bb.r, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.bc, %i.ck
  br i1 %.not.i.i54, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.r
  store ptr %i.ck, ptr %i.bb, align 8, !tbaa !31
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i
  %.pre150155 = phi ptr [ %.pre150154, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre150154, %bb.r ], [ %.pre150154, %bb.q ], [ %.pre150, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ %.pre150154, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i ]
  %i.cl = phi ptr [ %i.av, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.av, %bb.r ], [ %i.av, %bb.q ], [ %.pre150, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ %i.av, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i ] ; 3 uses
  %i.cm = add i32 %.036130, 1                     ; 2 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !23 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = icmp ugt i64 %i.cv, %i.cn
  br i1 %i.cw, label %bb.j, label %._crit_edge132, !llvm.loop !34

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.s:                                             ; preds = %bb.a
  %i.cx = mul nsw i32 %3, %2                      ; 2 uses
  %.not227 = icmp eq i32 %i.cx, 0
  br i1 %.not227, label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = sext i32 %i.cx to i64
  invoke void @_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cy)
          to label %._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143 unwind label %bb.d

._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143: ; preds = %bb.t
  %.pre = load i32, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73

_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73: ; preds = %bb.s, %._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143
  %6 = phi i32 [ %.pre, %._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143 ], [ %3, %bb.s ] ; 2 uses
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a, label %.loopexit113

_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a: ; preds = %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.preheader, label %.loopexit113

.preheader:                                       ; preds = %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a, %._crit_edge128
  %i.db = phi i32 [ %i.dg, %._crit_edge128 ], [ %6, %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a ]
  %i.dc = phi i32 [ %i.dh, %._crit_edge128 ], [ %i.cz, %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a ] ; 3 uses
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %._crit_edge128 ], [ 0, %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a ] ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %.preheader
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv140
  %.pre144 = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.df = trunc nuw nsw i64 %indvars.iv140 to i32
  br label %bb.u

._crit_edge128.loopexit:                          ; preds = %._crit_edge
  %.pre146 = load i32, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %._crit_edge128.loopexit, %.preheader
  %i.dg = phi i32 [ %.pre146, %._crit_edge128.loopexit ], [ %i.db, %.preheader ] ; 2 uses
  %i.dh = phi i32 [ %i.ft, %._crit_edge128.loopexit ], [ %i.dc, %.preheader ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.di = sext i32 %i.dg to i64
  %i.dj = icmp slt i64 %indvars.iv.next141, %i.di
  br i1 %i.dj, label %.preheader, label %.loopexit113, !llvm.loop !35

bb.u:                                             ; preds = %.lr.ph127, %._crit_edge
  %i.dk = phi ptr [ %.pre144, %.lr.ph127 ], [ %i.fs, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.dl = phi i32 [ %i.dc, %.lr.ph127 ], [ %i.ft, %._crit_edge ]
  %i.dm = mul nsw i32 %i.dl, %i.df
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = add nsw i32 %i.dm, %i.dn
  %i.dp = sext i32 %i.do to i64                   ; 3 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dp ; 4 uses
  %i.dr = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %i.ds = sext i32 %i.dr to i64                   ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20 ; 7 uses
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !23 ; 6 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = sdiv exact i64 %i.dy, 24                ; 7 uses
  %i.ea = icmp ult i64 %i.dz, %i.ds
  br i1 %i.ea, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.eb = sub nuw nsw i64 %i.ds, %i.dz            ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !37
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dw
  %i.eg = sdiv exact i64 %i.ef, 24                ; 2 uses
  %i.eh = icmp ult i64 %i.dz, 384307168202282326
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = sub nuw nsw i64 384307168202282325, %i.dz
  %i.ej = icmp ule i64 %i.eg, %i.ei
  tail call void @llvm.assume(i1 %i.ej)
  %.not28.i90 = icmp ult i64 %i.eg, %i.eb
  br i1 %.not28.i90, label %bb.w, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.v
  %i.ek = mul nuw nsw i64 %i.eb, 24               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.du, i8 0, i64 %i.ek, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.du, i64 %i.ek
  store ptr %scevgep.i.i.i.i, ptr %i.dt, align 8, !tbaa !20
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

bb.w:                                             ; preds = %bb.v
  %i.el = icmp slt i32 %i.dr, 0
  br i1 %i.el, label %bb.x, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
          to label %.noexc94 unwind label %.loopexit.split-lp120

.noexc94:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %.sroa.speculated.i.i91 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.eb)
  %i.em = add nuw nsw i64 %.sroa.speculated.i.i91, %i.dz
  %i.en = tail call i64 @llvm.umin.i64(i64 %i.em, i64 384307168202282325) ; 2 uses
  %i.eo = mul nuw nsw i64 %i.en, 24
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #19
          to label %.noexc95 unwind label %.loopexit119 ; 4 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dy ; 2 uses
  %i.er = mul nuw nsw i64 %i.eb, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eq, i8 0, i64 %i.er, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.dv, %i.du
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i92

.lr.ph.i.i.i.i92:                                 ; preds = %.noexc95, %.lr.ph.i.i.i.i92
  %.012.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i92 ], [ %i.ep, %.noexc95 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i92 ], [ %i.dv, %.noexc95 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.es = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !43, !alias.scope !41, !noalias !38
  store <2 x ptr> %i.es, ptr %.012.i.i.i.i, align 8, !tbaa !43, !alias.scope !38, !noalias !41
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !27, !alias.scope !41, !noalias !38
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !27, !alias.scope !38, !noalias !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !41, !noalias !38
  %i.ew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i93 = icmp eq ptr %i.ew, %i.du
  br i1 %.not.i.i.i.i93, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i92, !llvm.loop !44

_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i92, %.noexc95
  %.not.i36.i = icmp eq ptr %i.dv, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !37
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.ez, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.fa) #17
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.y, %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ep, ptr %i.dq, align 8, !tbaa !23
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.eb
  store ptr %i.fb, ptr %i.dt, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %i.en
  store ptr %i.fc, ptr %i.ec, align 8, !tbaa !37
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

bb.z:                                             ; preds = %bb.u
  %i.fd = icmp ugt i64 %i.dz, %i.ds
  br i1 %i.fd, label %bb.aa, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ds ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.du, %i.fe
  br i1 %.not.i.i74, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %bb.aa, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78
  %.05.i.i.i.i76 = phi ptr [ %i.fl, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78 ], [ %i.fe, %bb.aa ] ; 3 uses
  %i.ff = load ptr, ptr %.05.i.i.i.i76, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i77, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i75
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i76, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !27
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #17
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78: ; preds = %bb.ab, %.lr.ph.i.i.i.i75
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i76, i64 24 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.fl, %i.du
  br i1 %.not.i.i.i.i79, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i80, label %.lr.ph.i.i.i.i75, !llvm.loop !28

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i80: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78
  store ptr %i.fe, ptr %i.dt, align 8, !tbaa !20
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82:  ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %bb.z, %bb.aa, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i80
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !19  ; 4 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.dp ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !20
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !23 ; 2 uses
  %.not = icmp eq ptr %i.fp, %i.fq
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit86, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82
  %i.fs = phi ptr [ %i.fm, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82 ], [ %i.hl, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ft = load i32, ptr %i.a, align 4, !tbaa !16  ; 3 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next, %i.fu
  br i1 %i.fv, label %bb.u, label %._crit_edge128.loopexit, !llvm.loop !45

.loopexit119:                                     ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp120:                            ; preds = %bb.x
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE6resizeEm.exit86
  %.pre145151 = phi ptr [ %i.fm, %.lr.ph ], [ %.pre145152, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ] ; 5 uses
  %i.fw = phi ptr [ %i.fm, %.lr.ph ], [ %i.hl, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ] ; 4 uses
  %i.fx = phi ptr [ %i.fq, %.lr.ph ], [ %i.hq, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ]
  %.0125 = phi i64 [ 0, %.lr.ph ], [ %i.hm, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %.0125 ; 4 uses
  %i.fz = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ga = sext i32 %i.fz to i64                   ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !31 ; 4 uses
  %i.gd = load ptr, ptr %i.fy, align 8, !tbaa !24 ; 5 uses
  %i.ge = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 4 uses
  %i.gh = ashr exact i64 %i.gg, 3                 ; 7 uses
  %i.gi = icmp ult i64 %i.gh, %i.ga
  br i1 %i.gi, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.gj = sub nuw nsw i64 %i.ga, %i.gh            ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !27
  %i.gm = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.gn = sub i64 %i.gm, %i.ge
  %i.go = ashr exact i64 %i.gn, 3                 ; 2 uses
  %i.gp = icmp ult i64 %i.gh, 1152921504606846976
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = xor i64 %i.gh, 1152921504606846975      ; 2 uses
  %i.gr = icmp ule i64 %i.go, %i.gq
  tail call void @llvm.assume(i1 %i.gr)
  %.not28.i97 = icmp ult i64 %i.go, %i.gj
  br i1 %.not28.i97, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %i.gc, align 8, !tbaa !32
  %i.gs = getelementptr i8, ptr %i.gc, i64 8      ; 3 uses
  %i.gt = add nsw i64 %i.gj, -1                   ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i100, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i98

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i98: ; preds = %bb.ae
  %.idx.i.i.i.i.i.i99 = shl nuw nsw i64 %i.gt, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gs, i8 0, i64 %.idx.i.i.i.i.i.i99, i1 false), !tbaa !32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i99
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i100

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i100: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i98, %bb.ae
  %.0.i.i.i.i101 = phi ptr [ %i.gv, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i98 ], [ %i.gs, %bb.ae ]
  store ptr %.0.i.i.i.i101, ptr %i.gb, align 8, !tbaa !31
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit86

bb.af:                                            ; preds = %bb.ad
  %i.gw = icmp ult i64 %i.gq, %i.gj
  br i1 %i.gw, label %bb.ag, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i102

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
          to label %.noexc110 unwind label %.loopexit.split-lp115

.noexc110:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i102: ; preds = %bb.af
  %.sroa.speculated.i.i103 = tail call i64 @llvm.umax.i64(i64 %i.gh, i64 %i.gj)
  %i.gx = add nuw nsw i64 %.sroa.speculated.i.i103, %i.gh
  %i.gy = tail call i64 @llvm.umin.i64(i64 %i.gx, i64 1152921504606846975) ; 2 uses
  %i.gz = shl nuw nsw i64 %i.gy, 3
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #19
          to label %.noexc111 unwind label %.loopexit114 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i102
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gg ; 3 uses
  store i64 0, ptr %i.hb, align 8, !tbaa !32
  %i.hc = add nsw i64 %i.gj, -1                   ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i106, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i104

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i104: ; preds = %.noexc111
  %i.he = getelementptr i8, ptr %i.hb, i64 8
  %.idx.i.i.i.i.i31.i105 = shl nuw nsw i64 %i.hc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.he, i8 0, i64 %.idx.i.i.i.i.i31.i105, i1 false), !tbaa !32
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i106

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i106: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i104, %.noexc111
  %i.hf = icmp sgt i64 %i.gg, 0
  br i1 %i.hf, label %bb.ah, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i107

bb.ah:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr align 8 %i.gd, i64 %i.gg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i107

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i107: ; preds = %bb.ah, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i106
  %.not.i35.i108 = icmp eq ptr %i.gd, null
  br i1 %.not.i35.i108, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i109, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i107
  %i.hg = sub i64 %i.gm, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.hg) #17
  %.pre145.pre = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i109

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i109: ; preds = %bb.ai, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i107
  %.pre145 = phi ptr [ %.pre145.pre, %bb.ai ], [ %.pre145151, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i107 ] ; 2 uses
  store ptr %i.ha, ptr %i.fy, align 8, !tbaa !24
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gj
  store ptr %i.hh, ptr %i.gb, align 8, !tbaa !31
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gy
  store ptr %i.hi, ptr %i.gk, align 8, !tbaa !27
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit86

bb.aj:                                            ; preds = %bb.ac
  %i.hj = icmp ugt i64 %i.gh, %i.ga
  br i1 %i.hj, label %bb.ak, label %_ZNSt6vectorImSaImEE6resizeEm.exit86

bb.ak:                                            ; preds = %bb.aj
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ga ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.gc, %i.hk
  br i1 %.not.i.i83, label %_ZNSt6vectorImSaImEE6resizeEm.exit86, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i84

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i84:      ; preds = %bb.ak
  store ptr %i.hk, ptr %i.gb, align 8, !tbaa !31
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit86

_ZNSt6vectorImSaImEE6resizeEm.exit86:             ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i84, %bb.ak, %bb.aj, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i109, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i100
  %.pre145152 = phi ptr [ %.pre145151, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i84 ], [ %.pre145151, %bb.ak ], [ %.pre145151, %bb.aj ], [ %.pre145, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i109 ], [ %.pre145151, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i100 ]
  %i.hl = phi ptr [ %i.fw, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i84 ], [ %i.fw, %bb.ak ], [ %i.fw, %bb.aj ], [ %.pre145, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i109 ], [ %i.fw, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i100 ] ; 3 uses
  %i.hm = add nuw i64 %.0125, 1                   ; 2 uses
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %i.dp ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !20
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !23 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 24
  %i.hv = icmp ult i64 %i.hm, %i.hu
  br i1 %i.hv, label %bb.ac, label %._crit_edge, !llvm.loop !46

.loopexit114:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i102
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp115:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.a
  %i.hw = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull @.str)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.hw, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #18
          to label %bb.ap unwind label %bb.d

bb.an:                                            ; preds = %bb.al
  %i.hx = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hw) #20
  br label %bb.ao

.loopexit113:                                     ; preds = %._crit_edge128, %._crit_edge132, %bb.b, %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73.a, %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73, %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit, %bb.a
  ret void

bb.ao:                                            ; preds = %.loopexit114, %.loopexit.split-lp115, %.loopexit119, %.loopexit.split-lp120, %.loopexit, %.loopexit.split-lp, %bb.i, %bb.an, %bb.d
  %.pn45.pn = phi { ptr, i32 } [ %i.hx, %bb.an ], [ %i.g, %bb.d ], [ %i.au, %bb.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp120 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit121, %.loopexit119 ], [ %lpad.loopexit116, %.loopexit114 ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp115 ]
  tail call void @_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #20
  resume { ptr, i32 } %.pn45.pn

bb.ap:                                            ; preds = %bb.am
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_36ArgExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ImSaImEESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIS0_ImSaImEESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !23 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #17
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ImSaImEESaIS2_EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #17
  br label %_ZSt8_DestroyISt6vectorIS0_ImSaImEESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIS0_ImSaImEESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !47

_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIS0_ImSaImEESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #17
  br label %_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ImSaImEESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_511TileOffsets20anyOffsetsAreInvalidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not40 = icmp eq ptr %i.c, %i.d
  br i1 %.not40, label %.loopexit, label %.preheader32

.preheader32:                                     ; preds = %bb.a, %._crit_edge38
  %i.i = phi i64 [ %i.ak, %._crit_edge38 ], [ 0, %bb.a ]
  %.01939 = phi i32 [ %i.aj, %._crit_edge38 ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %.not41 = icmp eq ptr %i.l, %i.m
  br i1 %.not41, label %._crit_edge38, label %.preheader

.preheader:                                       ; preds = %.preheader32, %._crit_edge
  %i.r = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.preheader32 ]
  %.01737 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %.preheader32 ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !24   ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not35.not = icmp eq ptr %i.u, %i.v
  br i1 %.not35.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.aa = add i32 %.036, 1                        ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.z, %i.ab
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !49

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.ac = phi i64 [ %i.ab, %bb.b ], [ 0, %.preheader ]
  %.036 = phi i32 [ %i.aa, %bb.b ], [ 0, %.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.ag = add i32 %.01737, 1                      ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp ugt i64 %i.q, %i.ah
  br i1 %i.ai, label %.preheader, label %._crit_edge38, !llvm.loop !50

._crit_edge38:                                    ; preds = %._crit_edge, %.preheader32
  %i.aj = add i32 %.01939, 1                      ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %i.h, %i.ak
  br i1 %i.al, label %.preheader32, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %._crit_edge38, %.lr.ph, %bb.a
  %i.am = phi i1 [ true, %.lr.ph ], [ false, %bb.a ], [ false, %._crit_edge38 ]
  ret i1 %i.am
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_511TileOffsets9findTilesERNS_7IStreamEbbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 1                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
end_hunk_0
