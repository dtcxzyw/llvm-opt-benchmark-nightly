Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfTileOffsets?download=true
inline.NumInlined: 552
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7Imf_3_411TileOffsetsC2ENS_9LevelModeEiiPKiS3_:bb.a
  %i.aw = phi ptr [ %i.aj, %.lr.ph131 ], [ %i.ct, %_ZNSt6vectorImSaImEE6resizeEm.exit ]
  %i.ax = phi i64 [ 0, %.lr.ph131 ], [ %i.cp, %_ZNSt6vectorImSaImEE6resizeEm.exit ]
  %.035130 = phi i32 [ 0, %.lr.ph131 ], [ %i.co, %_ZNSt6vectorImSaImEE6resizeEm.exit ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.ba = sext i32 %i.az to i64                   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 4 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 5 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = ashr exact i64 %i.bg, 3                 ; 7 uses
  %i.bi = icmp ult i64 %i.bh, %i.ba
  br i1 %i.bi, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bj = sub nuw nsw i64 %i.ba, %i.bh            ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29
  %i.bm = ptrtoint ptr %i.bl to i64
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
  store i64 0, ptr %i.bc, align 8, !tbaa !34
  %i.bs = getelementptr i8, ptr %i.bc, i64 8      ; 3 uses
  %i.bt = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.l
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.bv, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bs, %bb.l ]
  store ptr %.0.i.i.i.i, ptr %i.bb, align 8, !tbaa !33
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
  store i64 0, ptr %i.cb, align 8, !tbaa !34
  %i.cc = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc88
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !34
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
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !29
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ci) #17
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ca, ptr %i.ay, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bj
  store ptr %i.cj, ptr %i.bb, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ck, ptr %i.bk, align 8, !tbaa !29
  %.pre150 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.q:                                             ; preds = %bb.j
  %i.cl = icmp ugt i64 %i.bh, %i.ba
  br i1 %i.cl, label %bb.r, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.bc, %i.cm
  br i1 %.not.i.i54, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.r
  store ptr %i.cm, ptr %i.bb, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i
  %i.cn = phi ptr [ %i.av, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.av, %bb.r ], [ %i.av, %bb.q ], [ %.pre150, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ %i.av, %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit.i ] ; 3 uses
  %i.co = add i32 %.035130, 1                     ; 2 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !25 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24
  %i.cy = icmp ugt i64 %i.cx, %i.cp
  br i1 %i.cy, label %bb.j, label %._crit_edge132, !llvm.loop !36

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.s:                                             ; preds = %bb.a
  %i.cz = mul nsw i32 %3, %2                      ; 2 uses
  %.not221 = icmp eq i32 %i.cz, 0
  br i1 %.not221, label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = sext i32 %i.cz to i64
  invoke void @_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.da)
          to label %._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143 unwind label %bb.d

._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143: ; preds = %bb.t
  %.pre = load i32, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73

_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73: ; preds = %bb.s, %._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143
  %i.db = phi i32 [ %.pre, %._ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73_crit_edge143 ], [ %3, %bb.s ] ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.preheader.lr.ph, label %.loopexit113

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE6resizeEm.exit73
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.preheader, label %.loopexit113

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge128
  %i.df = phi i32 [ %i.dk, %._crit_edge128 ], [ %i.db, %.preheader.lr.ph ]
  %i.dg = phi i32 [ %i.dl, %._crit_edge128 ], [ %i.dd, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %._crit_edge128 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %.preheader
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv140
  %.pre144 = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.dj = trunc nuw nsw i64 %indvars.iv140 to i32
  br label %bb.u

._crit_edge128.loopexit:                          ; preds = %._crit_edge
  %.pre146 = load i32, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %._crit_edge128.loopexit, %.preheader
  %i.dk = phi i32 [ %.pre146, %._crit_edge128.loopexit ], [ %i.df, %.preheader ] ; 2 uses
  %i.dl = phi i32 [ %i.fx, %._crit_edge128.loopexit ], [ %i.dg, %.preheader ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.dm = sext i32 %i.dk to i64
  %i.dn = icmp slt i64 %indvars.iv.next141, %i.dm
  br i1 %i.dn, label %.preheader, label %.loopexit113, !llvm.loop !37

bb.u:                                             ; preds = %.lr.ph127, %._crit_edge
  %i.do = phi ptr [ %.pre144, %.lr.ph127 ], [ %i.fw, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.dp = phi i32 [ %i.dg, %.lr.ph127 ], [ %i.fx, %._crit_edge ]
  %i.dq = mul nuw nsw i32 %i.dp, %i.dj
  %i.dr = trunc nuw nsw i64 %indvars.iv to i32
  %i.ds = add nsw i32 %i.dq, %i.dr
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dt ; 4 uses
  %i.dv = load i32, ptr %i.di, align 4, !tbaa !21 ; 2 uses
  %i.dw = sext i32 %i.dv to i64                   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !22 ; 7 uses
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !25 ; 6 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = sdiv exact i64 %i.ec, 24                ; 7 uses
  %i.ee = icmp ult i64 %i.ed, %i.dw
  br i1 %i.ee, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ef = sub nuw nsw i64 %i.dw, %i.ed            ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !39
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.ea
  %i.ek = sdiv exact i64 %i.ej, 24                ; 2 uses
  %i.el = icmp ult i64 %i.ed, 384307168202282326
  tail call void @llvm.assume(i1 %i.el)
  %i.em = sub nuw nsw i64 384307168202282325, %i.ed
  %i.en = icmp ule i64 %i.ek, %i.em
  tail call void @llvm.assume(i1 %i.en)
  %.not28.i90 = icmp ult i64 %i.ek, %i.ef
  br i1 %.not28.i90, label %bb.w, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.v
  %i.eo = mul nuw nsw i64 %i.ef, 24               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dy, i8 0, i64 %i.eo, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dy, i64 %i.eo
  store ptr %scevgep.i.i.i.i, ptr %i.dx, align 8, !tbaa !22
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

bb.w:                                             ; preds = %bb.v
  %i.ep = icmp slt i32 %i.dv, 0
  br i1 %i.ep, label %bb.x, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #18
          to label %.noexc94 unwind label %.loopexit.split-lp120

.noexc94:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %.sroa.speculated.i.i91 = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.ef)
  %i.eq = add nuw nsw i64 %.sroa.speculated.i.i91, %i.ed
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 384307168202282325) ; 2 uses
  %i.es = mul nuw nsw i64 %i.er, 24
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #19
          to label %.noexc95 unwind label %.loopexit119 ; 4 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ec ; 2 uses
  %i.ev = mul nuw nsw i64 %i.ef, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eu, i8 0, i64 %i.ev, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.dz, %i.dy
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i92

.lr.ph.i.i.i.i92:                                 ; preds = %.noexc95, %.lr.ph.i.i.i.i92
  %.012.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i92 ], [ %i.et, %.noexc95 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i92 ], [ %i.dz, %.noexc95 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ew = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !45, !alias.scope !43, !noalias !40
  store <2 x ptr> %i.ew, ptr %.012.i.i.i.i, align 8, !tbaa !45, !alias.scope !40, !noalias !43
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !29, !alias.scope !43, !noalias !40
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !29, !alias.scope !40, !noalias !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !43, !noalias !40
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i93 = icmp eq ptr %i.fa, %i.dy
  br i1 %.not.i.i.i.i93, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i92, !llvm.loop !46

_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i92, %.noexc95
  %.not.i36.i = icmp eq ptr %i.dz, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.fc = load ptr, ptr %i.eg, align 8, !tbaa !39
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.fd, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.fe) #17
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.y, %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.et, ptr %i.du, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.ef
  store ptr %i.ff, ptr %i.dx, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fg, ptr %i.eg, align 8, !tbaa !39
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

bb.z:                                             ; preds = %bb.u
  %i.fh = icmp ugt i64 %i.ed, %i.dw
  br i1 %i.fh, label %bb.aa, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

bb.aa:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.dw ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.dy, %i.fi
  br i1 %.not.i.i74, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82, label %.lr.ph.i.i.i.i75

.lr.ph.i.i.i.i75:                                 ; preds = %bb.aa, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78
  %.05.i.i.i.i76 = phi ptr [ %i.fp, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78 ], [ %i.fi, %bb.aa ] ; 3 uses
  %i.fj = load ptr, ptr %.05.i.i.i.i76, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i77, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i75
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i76, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !29
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #17
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78: ; preds = %bb.ab, %.lr.ph.i.i.i.i75
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i76, i64 24 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.fp, %i.dy
  br i1 %.not.i.i.i.i79, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i80, label %.lr.ph.i.i.i.i75, !llvm.loop !30

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i80: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i78
  store ptr %i.fi, ptr %i.dx, align 8, !tbaa !22
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82

_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82:  ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %bb.z, %bb.aa, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i80
  %i.fq = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.dt ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !22
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %i.ft, %i.fu
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit86, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82
  %i.fw = phi ptr [ %i.fq, %_ZNSt6vectorIS_ImSaImEESaIS1_EE6resizeEm.exit82 ], [ %i.hr, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fx = load i32, ptr %i.a, align 4, !tbaa !17  ; 3 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next, %i.fy
  br i1 %i.fz, label %bb.u, label %._crit_edge128.loopexit, !llvm.loop !47

.loopexit119:                                     ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp120:                            ; preds = %bb.x
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE6resizeEm.exit86
  %i.ga = phi ptr [ %i.fq, %.lr.ph ], [ %i.hr, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ] ; 4 uses
  %i.gb = phi ptr [ %i.fu, %.lr.ph ], [ %i.hw, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ]
  %.0125 = phi i64 [ 0, %.lr.ph ], [ %i.hs, %_ZNSt6vectorImSaImEE6resizeEm.exit86 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %.0125 ; 4 uses
  %i.gd = load i32, ptr %i.fv, align 4, !tbaa !21
  %i.ge = sext i32 %i.gd to i64                   ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !33 ; 4 uses
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !26 ; 5 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 4 uses
  %i.gl = ashr exact i64 %i.gk, 3                 ; 7 uses
  %i.gm = icmp ult i64 %i.gl, %i.ge
  br i1 %i.gm, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.gn = sub nuw nsw i64 %i.ge, %i.gl            ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !29
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.gi
  %i.gs = ashr exact i64 %i.gr, 3                 ; 2 uses
  %i.gt = icmp ult i64 %i.gl, 1152921504606846976
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = xor i64 %i.gl, 1152921504606846975      ; 2 uses
  %i.gv = icmp ule i64 %i.gs, %i.gu
  tail call void @llvm.assume(i1 %i.gv)
  %.not28.i97 = icmp ult i64 %i.gs, %i.gn
  br i1 %.not28.i97, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %i.gg, align 8, !tbaa !34
  %i.gw = getelementptr i8, ptr %i.gg, i64 8      ; 3 uses
  %i.gx = add nsw i64 %i.gn, -1                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_411TileOffsets9findTilesERNS_7IStreamEbbb:bb.a
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.j, %bb.i
  %.0.lcssa.i = phi i32 [ %i.by, %bb.i ], [ %i.ce, %bb.j ] ; 2 uses
  %i.cg = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.cg, label %bb.k, label %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.ch = load ptr, ptr %1, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.c, i32 noundef %.0.lcssa.i), !inline_history !58 ; 0 uses
  br label %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit

_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cl = load ptr, ptr %1, align 8, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !56 ; 0 uses
  %i.cp = load i32, ptr %i.b, align 4             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cr = call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ct = icmp samesign ugt i32 %i.cp, 1023
  br i1 %i.ct, label %.lr.ph.i46, label %._crit_edge.i44

.lr.ph.i46:                                       ; preds = %bb.p, %bb.q
  %.06.i47 = phi i32 [ %i.cy, %bb.q ], [ %i.cp, %bb.p ] ; 2 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !54
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 1024), !inline_history !58
  br i1 %i.cx, label %bb.q, label %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit48

bb.q:                                             ; preds = %.lr.ph.i46
  %i.cy = add nsw i32 %.06.i47, -1024             ; 2 uses
  %i.cz = icmp sgt i32 %.06.i47, 2047
  br i1 %i.cz, label %.lr.ph.i46, label %._crit_edge.i44, !llvm.loop !59

._crit_edge.i44:                                  ; preds = %bb.q, %bb.p
  %.0.lcssa.i45 = phi i32 [ %i.cp, %bb.p ], [ %i.cy, %bb.q ] ; 2 uses
  %i.da = icmp sgt i32 %.0.lcssa.i45, 0
  br i1 %i.da, label %bb.r, label %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit48

bb.r:                                             ; preds = %._crit_edge.i44
  %i.db = load ptr, ptr %1, align 8, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i45), !inline_history !58 ; 0 uses
  br label %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit48

_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit48: ; preds = %.lr.ph.i46, %._crit_edge.i44, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit48, %_ZN7Imf_3_43Xdr4skipINS_8StreamIOENS_7IStreamEEEvRT0_i.exit
  br i1 %4, label %._ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit_crit_edge, label %bb.t

._ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit

bb.t:                                             ; preds = %bb.s
  %i.df = or i32 %i.bf, %i.ba                     ; 2 uses
  %i.dg = or i32 %i.av, %i.aq
  %i.dh = or i32 %i.dg, %i.df
  %or.cond5.not.i = icmp sgt i32 %i.dh, -1
  br i1 %or.cond5.not.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.di = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.di, label %.loopexit [
    i32 0, label %bb.v
    i32 1, label %bb.z
    i32 2, label %bb.ad
  ]

bb.v:                                             ; preds = %bb.u
  %or.cond7.i = icmp eq i32 %i.df, 0
  br i1 %or.cond7.i, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !20  ; 5 uses
  %.not.i = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !22
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !25 ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = sdiv exact i64 %i.dq, 24
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = icmp slt i32 %i.av, %i.ds
  br i1 %i.dt, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.du = zext nneg i32 %i.av to i64
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !33
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !26
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = icmp slt i32 %i.aq, %i.ed
  br i1 %i.ee, label %bb.ah, label %.loopexit

bb.z:                                             ; preds = %bb.u
  %i.ef = load i32, ptr %i.o, align 4, !tbaa !17
  %i.eg = icmp slt i32 %i.ba, %i.ef
  %i.eh = load i32, ptr %i.p, align 8
  %i.ei = icmp slt i32 %i.bf, %i.eh
  %or.cond.i = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond.i, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !20  ; 4 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sdiv exact i64 %i.en, 24
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = icmp slt i32 %i.ba, %i.ep
  br i1 %i.eq, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.er = zext nneg i32 %i.ba to i64
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !22
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !25 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 24
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = icmp slt i32 %i.av, %i.fa
  br i1 %i.fb, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fc = zext nneg i32 %i.av to i64
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !33
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !26
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = lshr exact i64 %i.fj, 3
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = icmp slt i32 %i.aq, %i.fl
  br i1 %i.fm, label %bb.ai, label %.loopexit

bb.ad:                                            ; preds = %bb.u
  %i.fn = load i32, ptr %i.o, align 4, !tbaa !17  ; 3 uses
  %i.fo = icmp slt i32 %i.ba, %i.fn
  %i.fp = load i32, ptr %i.p, align 8
  %i.fq = icmp slt i32 %i.bf, %i.fp
  %or.cond44.i = select i1 %i.fo, i1 %i.fq, i1 false
  br i1 %or.cond44.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !20  ; 4 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = sdiv exact i64 %i.fv, 24
  %i.fx = zext nneg i32 %i.ba to i64
  %i.fy = zext nneg i32 %i.bf to i64
  %i.fz = sext i32 %i.fn to i64
  %i.ga = mul nuw nsw i64 %i.fz, %i.fy
  %i.gb = add nsw i64 %i.ga, %i.fx
  %i.gc = icmp ugt i64 %i.fw, %i.gb
  br i1 %i.gc, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.gd = mul nuw nsw i32 %i.fn, %i.bf
  %i.ge = add nsw i32 %i.gd, %i.ba
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !22
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !25 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 24
  %i.go = trunc i64 %i.gn to i32
  %i.gp = icmp slt i32 %i.av, %i.go
  br i1 %i.gp, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.gq = zext nneg i32 %i.av to i64
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !33
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !26
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = lshr exact i64 %i.gx, 3
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = icmp slt i32 %i.aq, %i.gz
  br i1 %i.ha, label %bb.aj, label %.loopexit

bb.ah:                                            ; preds = %bb.y
  %i.hb = sext i32 %i.av to i64
  %i.hc = load ptr, ptr %i.dk, align 8, !tbaa !25
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.hb
  %i.he = sext i32 %i.aq to i64
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.he
  br label %_ZN7Imf_3_411TileOffsetsclEiiii.exit

bb.ai:                                            ; preds = %bb.ac
  %i.hh = sext i32 %i.ba to i64
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.hh
  %i.hj = sext i32 %i.av to i64
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !25
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = sext i32 %i.aq to i64
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !26
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  br label %_ZN7Imf_3_411TileOffsetsclEiiii.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hp = load i32, ptr %i.o, align 4, !tbaa !17
  %i.hq = mul nsw i32 %i.hp, %i.bf
  %i.hr = add nsw i32 %i.hq, %i.ba
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.hs
  %i.hu = sext i32 %i.av to i64
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !25
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.hu
  %i.hx = sext i32 %i.aq to i64
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !26
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hx
  br label %_ZN7Imf_3_411TileOffsetsclEiiii.exit

common.resume:                                    ; preds = %bb.h, %bb.o
  %.sink = phi ptr [ %i.bv, %bb.h ], [ %i.cr, %bb.o ]
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.h ], [ %i.cs, %bb.o ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #20
  resume { ptr, i32 } %common.resume.op

_ZN7Imf_3_411TileOffsetsclEiiii.exit:             ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ia = phi ptr [ %i.dk, %bb.ah ], [ %i.ek, %bb.ai ], [ %i.fs, %bb.aj ]
  %.0.i49 = phi ptr [ %i.hg, %bb.ah ], [ %i.ho, %bb.ai ], [ %i.hz, %bb.aj ]
  store i64 %i.ah, ptr %.0.i49, align 8, !tbaa !34
  br label %_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit

_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit: ; preds = %._ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit_crit_edge, %_ZN7Imf_3_411TileOffsetsclEiiii.exit
  %i.ib = phi ptr [ %.pre, %._ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit_crit_edge ], [ %i.ia, %_ZN7Imf_3_411TileOffsetsclEiiii.exit ] ; 3 uses
  %i.ic = add i32 %.03268, 1                      ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %i.s
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !25 ; 2 uses
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %i.z ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !33
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !26
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 3
  %.not40 = icmp ugt i64 %i.in, %i.id
  br i1 %.not40, label %.lr.ph, label %.critedge, !llvm.loop !60

.critedge:                                        ; preds = %_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit, %.preheader
  %.pre7577 = phi ptr [ %.pre75, %.preheader ], [ %i.if, %_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit ] ; 2 uses
  %i.io = phi ptr [ %i.x, %.preheader ], [ %i.ib, %_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit ] ; 2 uses
  %i.ip = phi ptr [ %i.y, %.preheader ], [ %i.ib, %_ZNK7Imf_3_411TileOffsets11isValidTileEiiii.exit ] ; 2 uses
  %i.iq = add i32 %.03370, 1                      ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.s
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !22
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %.pre7577 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = sdiv exact i64 %i.ix, 24
  %.not = icmp ugt i64 %i.iy, %i.ir
  br i1 %.not, label %.preheader, label %.critedge43.loopexit, !llvm.loop !61

.critedge43.loopexit:                             ; preds = %.critedge
  %.pre76 = load ptr, ptr %i.l, align 8, !tbaa !19
  br label %.critedge43

.critedge43:                                      ; preds = %.critedge43.loopexit, %.preheader64
  %i.iz = phi ptr [ %i.io, %.critedge43.loopexit ], [ %i.q, %.preheader64 ] ; 2 uses
  %i.ja = phi ptr [ %.pre76, %.critedge43.loopexit ], [ %i.r, %.preheader64 ] ; 2 uses
  %i.jb = add i32 %.03571, 1                      ; 2 uses
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = ptrtoint ptr %i.iz to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 24
  %i.jh = icmp ugt i64 %i.jg, %i.jc
  br i1 %i.jh, label %.preheader64, label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %.critedge43, %bb.t, %bb.u, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.a
  ret void
}

declare void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Iex_3_45IoExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_411TileOffsets11isValidTileEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = or i32 %4, %3                            ; 2 uses
  %i.b = or i32 %2, %1
  %i.c = or i32 %i.b, %i.a
  %or.cond5.not = icmp sgt i32 %i.c, -1
  br i1 %or.cond5.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.d, label %bb.p [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %or.cond7 = icmp eq i32 %i.a, 0
  br i1 %or.cond7, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp slt i32 %2, %i.p
  br i1 %i.q, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %2 to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  %i.ae = icmp slt i32 %3, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp slt i32 %4, %i.ag
  %or.cond = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp slt i32 %3, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.as = zext nneg i32 %3 to i64
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = icmp slt i32 %2, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bd = zext nneg i32 %2 to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp slt i32 %1, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17 ; 3 uses
  %i.bq = icmp slt i32 %3, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = icmp slt i32 %4, %i.bs
  %or.cond44 = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %or.cond44, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24
  %i.cc = zext nneg i32 %3 to i64
  %i.cd = zext nneg i32 %4 to i64
  %i.ce = sext i32 %i.bp to i64
  %i.cf = mul nuw nsw i64 %i.ce, %i.cd
  %i.cg = add nsw i64 %i.cf, %i.cc
  %i.ch = icmp ugt i64 %i.cb, %i.cg
  br i1 %i.ch, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ci = mul nuw nsw i32 %i.bp, %4
  %i.cj = add nsw i32 %i.ci, %3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !25 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp slt i32 %2, %i.ct
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = zext nneg i32 %2 to i64
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !26
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 3
  %i.de = trunc i64 %i.dd to i32
  %i.df = icmp slt i32 %1, %i.de
  br i1 %i.df, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c, %bb.d, %bb.e, %bb.f
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.n, %bb.j, %bb.f, %bb.a, %bb.o
  %.0 = phi i1 [ true, %bb.j ], [ true, %bb.n ], [ false, %bb.a ], [ false, %bb.o ], [ true, %bb.f ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7Imf_3_411TileOffsetsclEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %3 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  %i.n = sext i32 %2 to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  %i.q = sext i32 %1 to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = mul nsw i32 %i.v, %4
  %i.x = add nsw i32 %i.w, %3
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y
  %i.ab = sext i32 %2 to i64
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = sext i32 %1 to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull @.str.6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ah) #20
  resume { ptr, i32 } %i.ai

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.s, %bb.c ], [ %i.ag, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_411TileOffsets19reconstructFromFileERNS_7IStreamEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  invoke void @_ZN7Imf_3_411TileOffsets9findTilesERNS_7IStreamEbbb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.k = load ptr, ptr %1, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.d)
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_411TileOffsets8readFromERNS_7IStreamERbbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.loopexit, label %.preheader23

.preheader23:                                     ; preds = %bb.a, %._crit_edge27
  %i.f = phi ptr [ %i.ay, %._crit_edge27 ], [ %i.e, %bb.a ] ; 4 uses
  %i.g = phi ptr [ %i.az, %._crit_edge27 ], [ %i.d, %bb.a ]
  %i.h = phi i64 [ %i.bb, %._crit_edge27 ], [ 0, %bb.a ] ; 3 uses
  %.01928 = phi i32 [ %i.ba, %._crit_edge27 ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %.not31 = icmp eq ptr %i.k, %i.l
  br i1 %.not31, label %._crit_edge27, label %.preheader

._crit_edge29:                                    ; preds = %._crit_edge27
  %i.m = icmp eq ptr %i.az, %i.ay
  br i1 %i.m, label %.loopexit, label %.preheader32.i

.preheader32.i:                                   ; preds = %._crit_edge29, %._crit_edge38.i
  %i.n = phi i64 [ %i.ap, %._crit_edge38.i ], [ 0, %._crit_edge29 ]
  %.01939.i = phi i32 [ %i.ao, %._crit_edge38.i ], [ 0, %._crit_edge29 ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !25   ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %.not41.i = icmp eq ptr %i.q, %i.r
  br i1 %.not41.i, label %._crit_edge38.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader32.i, %._crit_edge.i
  %i.w = phi i64 [ %i.am, %._crit_edge.i ], [ 0, %.preheader32.i ]
  %.01737.i = phi i32 [ %i.al, %._crit_edge.i ], [ 0, %.preheader32.i ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !26  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not35.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not35.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.af = add i32 %.036.i, 1                      ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.ae, %i.ag
end_hunk_1
