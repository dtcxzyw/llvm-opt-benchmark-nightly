Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeWriter?download=true
inline.NumInlined: 12476
inline.NumDeleted: 5487
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN12_GLOBAL__N_119ModuleBitcodeWriter15writeModuleInfoEv:bb.a
  %i.jo = load i32, ptr %i.gb, align 8, !tbaa !89 ; 3 uses
  %.not.i15.i = icmp eq i32 %i.jo, 0
  %i.jp = sub i32 32, %i.jo
  %i.jq = lshr i32 %.0.lcssa.i, %i.jp
  %storemerge.i16.i = select i1 %.not.i15.i, i32 0, i32 %i.jq ; 2 uses
  store i32 %storemerge.i16.i, ptr %i.ge, align 4, !tbaa !90
  %i.jr = add i32 %i.jo, 6
  %i.js = and i32 %i.jr, 31
  br label %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit

_ZN4llvm15BitstreamWriter7EmitVBREjj.exit:        ; preds = %._crit_edge.i727, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i
  %.pre22.i7471143 = phi i32 [ %storemerge.i16.i, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i ], [ %i.iz, %._crit_edge.i727 ]
  %storemerge6.i17.i = phi i32 [ %i.js, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i ], [ %i.ja, %._crit_edge.i727 ] ; 2 uses
  store i32 %storemerge6.i17.i, ptr %i.gb, align 8, !tbaa !89
  %.not1217.i = icmp eq i32 %i.fx, 0
  br i1 %.not1217.i, label %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit
  %i.jt = zext i32 %i.fx to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  br label %.lr.ph.i272

.lr.ph.i272:                                      ; preds = %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771, %.lr.ph.preheader.i
  %.pre25.i770 = phi i32 [ %.pre22.i7471143, %.lr.ph.preheader.i ], [ %.pre22.i7471142, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771 ] ; 2 uses
  %.pre23.i769 = phi i32 [ %storemerge6.i17.i, %.lr.ph.preheader.i ], [ %storemerge6.i17.i764, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771 ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771 ] ; 2 uses
  %i.jv = load ptr, ptr %10, align 8, !tbaa !52
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !126 ; 3 uses
  %.not20.i743 = icmp ult i32 %i.jx, 32
  br i1 %.not20.i743, label %._crit_edge.i757, label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i272, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754
  %i.jy = phi i32 [ %i.kw, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754 ], [ %.pre25.i770, %.lr.ph.i272 ]
  %i.jz = phi i32 [ %storemerge6.i.i755, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754 ], [ %.pre23.i769, %.lr.ph.i272 ] ; 3 uses
  %.021.i748 = phi i32 [ %i.kx, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754 ], [ %i.jx, %.lr.ph.i272 ] ; 3 uses
  %i.ka = and i32 %.021.i748, 31
  %i.kb = or disjoint i32 %i.ka, 32               ; 2 uses
  %i.kc = shl i32 %i.kb, %i.jz
  %i.kd = or i32 %i.kc, %i.jy                     ; 3 uses
  store i32 %i.kd, ptr %i.ge, align 4, !tbaa !90
  %i.ke = add nuw nsw i32 %i.jz, 6
  %i.kf = icmp ult i32 %i.jz, 26
  br i1 %i.kf, label %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i745
  %i.kg = load ptr, ptr %i.ju, align 8, !tbaa !91, !nonnull !49, !align !92 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 4 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !93 ; 2 uses
  %i.kj = add i64 %i.ki, 4                        ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !94
  %i.km = icmp ult i64 %i.kl, %i.kj
  br i1 %i.km, label %bb.ag, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i749

bb.ag:                                            ; preds = %bb.af
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull %i.kn, i64 noundef %i.kj, i64 noundef 1) #26
  %.pre8.pre.i.i.i.i766 = load i64, ptr %i.kh, align 8, !tbaa !93
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i749

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i749: ; preds = %bb.ag, %bb.af
  %.pre8.i.i.i.i750 = phi i64 [ %i.ki, %bb.af ], [ %.pre8.pre.i.i.i.i766, %bb.ag ]
  %i.ko = load ptr, ptr %i.kg, align 8, !tbaa !55
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %.pre8.i.i.i.i750
  store i32 %i.kd, ptr %i.kp, align 1
  %.pre.i.i.i.i751 = load i64, ptr %i.kh, align 8, !tbaa !93
  %i.kq = add i64 %.pre.i.i.i.i751, 4
  store i64 %i.kq, ptr %i.kh, align 8, !tbaa !93
  %i.kr = load i32, ptr %i.gb, align 8, !tbaa !89 ; 3 uses
  %.not.i.i752 = icmp eq i32 %i.kr, 0
  %i.ks = sub i32 32, %i.kr
  %i.kt = lshr i32 %i.kb, %i.ks
  %storemerge.i.i753 = select i1 %.not.i.i752, i32 0, i32 %i.kt ; 2 uses
  store i32 %storemerge.i.i753, ptr %i.ge, align 4, !tbaa !90
  %i.ku = add i32 %i.kr, 6
  %i.kv = and i32 %i.ku, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754

_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754:      ; preds = %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i749, %.lr.ph.i745
  %i.kw = phi i32 [ %storemerge.i.i753, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i749 ], [ %i.kd, %.lr.ph.i745 ] ; 2 uses
  %storemerge6.i.i755 = phi i32 [ %i.kv, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i749 ], [ %i.ke, %.lr.ph.i745 ] ; 3 uses
  store i32 %storemerge6.i.i755, ptr %i.gb, align 8, !tbaa !89
  %i.kx = lshr i32 %.021.i748, 5                  ; 2 uses
  %.not.i756 = icmp ult i32 %.021.i748, 1024
  br i1 %.not.i756, label %._crit_edge.i757, label %.lr.ph.i745, !llvm.loop !13

._crit_edge.i757:                                 ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754, %.lr.ph.i272
  %i.ky = phi i32 [ %.pre25.i770, %.lr.ph.i272 ], [ %i.kw, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754 ]
  %i.kz = phi i32 [ %.pre23.i769, %.lr.ph.i272 ], [ %storemerge6.i.i755, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754 ] ; 2 uses
  %.0.lcssa.i758 = phi i32 [ %i.jx, %.lr.ph.i272 ], [ %i.kx, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i754 ] ; 2 uses
  %i.la = shl i32 %.0.lcssa.i758, %i.kz
  %i.lb = or i32 %i.la, %i.ky                     ; 3 uses
  store i32 %i.lb, ptr %i.ge, align 4, !tbaa !90
  %i.lc = add i32 %i.kz, 6                        ; 2 uses
  %i.ld = icmp ult i32 %i.lc, 32
  br i1 %i.ld, label %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i757
  %i.le = load ptr, ptr %i.ju, align 8, !tbaa !91, !nonnull !49, !align !92 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 4 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !93 ; 2 uses
  %i.lh = add i64 %i.lg, 4                        ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !94
  %i.lk = icmp ult i64 %i.lj, %i.lh
  br i1 %i.lk, label %bb.ai, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i759

bb.ai:                                            ; preds = %bb.ah
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull %i.ll, i64 noundef %i.lh, i64 noundef 1) #26
  %.pre8.pre.i.i.i18.i765 = load i64, ptr %i.lf, align 8, !tbaa !93
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i759

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i759: ; preds = %bb.ai, %bb.ah
  %.pre8.i.i.i13.i760 = phi i64 [ %i.lg, %bb.ah ], [ %.pre8.pre.i.i.i18.i765, %bb.ai ]
  %i.lm = load ptr, ptr %i.le, align 8, !tbaa !55
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.pre8.i.i.i13.i760
  store i32 %i.lb, ptr %i.ln, align 1
  %.pre.i.i.i14.i761 = load i64, ptr %i.lf, align 8, !tbaa !93
  %i.lo = add i64 %.pre.i.i.i14.i761, 4
  store i64 %i.lo, ptr %i.lf, align 8, !tbaa !93
  %i.lp = load i32, ptr %i.gb, align 8, !tbaa !89 ; 3 uses
  %.not.i15.i762 = icmp eq i32 %i.lp, 0
  %i.lq = sub i32 32, %i.lp
  %i.lr = lshr i32 %.0.lcssa.i758, %i.lq
  %storemerge.i16.i763 = select i1 %.not.i15.i762, i32 0, i32 %i.lr ; 2 uses
  store i32 %storemerge.i16.i763, ptr %i.ge, align 4, !tbaa !90
  %i.ls = add i32 %i.lp, 6
  %i.lt = and i32 %i.ls, 31
  br label %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771

_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771:     ; preds = %._crit_edge.i757, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i759
  %.pre22.i7471142 = phi i32 [ %storemerge.i16.i763, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i759 ], [ %i.lb, %._crit_edge.i757 ]
  %storemerge6.i17.i764 = phi i32 [ %i.lt, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i759 ], [ %i.lc, %._crit_edge.i757 ] ; 2 uses
  store i32 %storemerge6.i17.i764, ptr %i.gb, align 8, !tbaa !89
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not12.i273 = icmp eq i64 %indvars.iv.next.i, %i.jt
  br i1 %.not12.i273, label %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit, label %.lr.ph.i272, !llvm.loop !21

_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit: ; preds = %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit771, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit
  %i.lu = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.bi
  br i1 %i.lv, label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit
  call void @free(ptr noundef %i.lu) #26
  br label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit

_ZN4llvm11SmallVectorIjLj64EED2Ev.exit:           ; preds = %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.lw = getelementptr inbounds nuw i8, ptr %.01811060, i64 32 ; 2 uses
  %.not199 = icmp eq ptr %i.lw, %i.co
  br i1 %.not199, label %._crit_edge, label %.lr.ph

._crit_edge1076.loopexit:                         ; preds = %bb.ax
  %.pre1145 = load ptr, ptr %i.f, align 8, !tbaa !309
  %i.lx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 false)
  %i.ly = sub nuw nsw i32 32, %i.lx
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = trunc nuw i8 %.sroa.6920.1 to i1
  %i.mb = zext i8 %.sroa.0152.0.copyload1066 to i32
  %i.mc = add nuw nsw i32 %i.mb, 1
  %i.md = call range(i32 23, 33) i32 @llvm.ctlz.i32(i32 %i.mc, i1 true)
  %i.me = sub nuw nsw i32 32, %i.md
  %i.mf = zext nneg i32 %i.me to i64
  br label %._crit_edge1076

._crit_edge1076:                                  ; preds = %._crit_edge1076.loopexit, %._crit_edge1065
  %i.mg = phi ptr [ %i.bp, %._crit_edge1065 ], [ %.pre1145, %._crit_edge1076.loopexit ] ; 3 uses
  %.sroa.0152.0.copyload1067.lcssa = phi i64 [ 1, %._crit_edge1065 ], [ %i.mf, %._crit_edge1076.loopexit ] ; 2 uses
  %.0937.lcssa = phi i64 [ 0, %._crit_edge1065 ], [ %i.lz, %._crit_edge1076.loopexit ]
  %.sroa.6920.0.lcssa = phi i1 [ false, %._crit_edge1065 ], [ %i.ma, %._crit_edge1076.loopexit ]
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 24 ; 2 uses
  %.sroa.0899.01079 = load ptr, ptr %i.mh, align 8, !tbaa !328 ; 2 uses
  %.not10111080 = icmp eq ptr %.sroa.0899.01079, %i.mi
  br i1 %.not10111080, label %._crit_edge1084, label %.lr.ph1083

.lr.ph1083:                                       ; preds = %._crit_edge1076
  %i.mj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.ay

bb.ak:                                            ; preds = %.lr.ph1075, %bb.ax
  %.sroa.0911.01073 = phi ptr [ %.sroa.0911.01068, %.lr.ph1075 ], [ %.sroa.0911.0, %bb.ax ] ; 4 uses
  %.sroa.6920.01072 = phi i8 [ 0, %.lr.ph1075 ], [ %.sroa.6920.1, %bb.ax ] ; 2 uses
  %.09371071 = phi i32 [ 0, %.lr.ph1075 ], [ %.sroa.speculated, %bb.ax ]
  %.sroa.0152.0.copyload10671070 = phi i8 [ undef, %.lr.ph1075 ], [ %.sroa.0152.0.copyload1066, %bb.ax ] ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %.sroa.0911.01073, i64 -64 ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.sroa.0911.01073, i64 -32 ; 3 uses
  %i.mt = load i32, ptr %i.ms, align 8            ; 2 uses
  %i.mu = lshr i32 %i.mt, 17
  %i.mv = and i32 %i.mu, 63                       ; 2 uses
  %.not.i.i.i274 = icmp eq i32 %i.mv, 0           ; 2 uses
  %i.mw = trunc nuw nsw i32 %i.mv to i8
  %i.mx = add nsw i8 %i.mw, -1                    ; 2 uses
  %i.my = trunc nuw i8 %.sroa.6920.01072 to i1
  %i.mz = call i8 @llvm.umax.i8(i8 %.sroa.0152.0.copyload10671070, i8 %i.mx)
  %.sroa.0152.0.copyload = select i1 %i.my, i8 %i.mz, i8 %i.mx
  %.sroa.0152.0.copyload1066 = select i1 %.not.i.i.i274, i8 %.sroa.0152.0.copyload10671070, i8 %.sroa.0152.0.copyload ; 2 uses
  %.sroa.6920.1 = select i1 %.not.i.i.i274, i8 %.sroa.6920.01072, i8 1 ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %.sroa.0911.01073, i64 -40
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !586 ; 2 uses
  %i.nc = load ptr, ptr %i.cc, align 8, !tbaa !278, !noalias !1682 ; 2 uses
  %i.nd = load ptr, ptr %i.cd, align 8, !tbaa !279, !noalias !1682 ; 2 uses
  %i.ne = load i32, ptr %i.ce, align 4, !tbaa !280, !noalias !1682 ; 3 uses
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %.loopexit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ng = add i32 %i.ne, -1                       ; 2 uses
  %i.nh = ptrtoint ptr %i.nb to i64
  %i.ni = mul i64 %i.nh, -4658895280553007687     ; 2 uses
  %i.nj = lshr i64 %i.ni, 31
  %i.nk = xor i64 %i.nj, %i.ni
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = and i32 %i.ng, %i.nl                    ; 3 uses
  %i.nn = zext i32 %i.nm to i64                   ; 2 uses
  %i.no = lshr i64 %i.nn, 5
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !126, !noalias !1683
  %i.nr = and i32 %i.nm, 31
  %i.ns = lshr i32 %i.nq, %i.nr
  %i.nt = trunc i32 %i.ns to i1
  br i1 %i.nt, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !281

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %i.nu = phi i64 [ %i.oa, %bb.am ], [ %i.nn, %bb.al ] ; 2 uses
  %.017.i.i.i.i = phi i32 [ %i.nz, %bb.am ], [ %i.nm, %bb.al ]
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !273, !noalias !1683
  %i.nx = icmp eq ptr %i.nb, %i.nw
  br i1 %i.nx, label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit, label %bb.am, !prof !265

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ny = add nuw i32 %.017.i.i.i.i, 1
  %i.nz = and i32 %i.ny, %i.ng                    ; 3 uses
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %i.ob = lshr i64 %i.oa, 5
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !126, !noalias !1683
  %i.oe = and i32 %i.nz, 31
  %i.of = lshr i32 %i.od, %i.oe
  %i.og = trunc i32 %i.of to i1
  br i1 %i.og, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !282

.loopexit.i.i.i:                                  ; preds = %bb.am, %bb.al, %bb.ak
  %i.oh = zext i32 %i.ne to i64
  br label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit

_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.oi = phi i64 [ %i.oh, %.loopexit.i.i.i ], [ %i.nu, %.lr.ph.i.i.i.i ]
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !284
  %i.om = add i32 %i.ol, -1
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.09371071, i32 %i.om) ; 2 uses
  %i.on = and i32 %i.mt, 67108864
  %.not1036 = icmp eq i32 %i.on, 0
  br i1 %.not1036, label %bb.ax, label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.oo = load i32, ptr %i.ms, align 8
  %i.op = and i32 %i.oo, 67108864
  %.not.i277 = icmp eq i32 %i.op, 0
  br i1 %.not.i277, label %._crit_edge.i.i.i.i.thread, label %_ZNK4llvm12GlobalObject10getSectionEv.exit

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.an
  store ptr %i.cf, ptr %13, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 0, ptr %i.e, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNK4llvm12GlobalObject10getSectionEv.exit:       ; preds = %bb.an
  %i.oq = call { ptr, i64 } @_ZNK4llvm12GlobalObject14getSectionImplEv(ptr noundef nonnull align 8 dereferenceable(60) %i.mr) #26 ; 2 uses
  %i.or = extractvalue { ptr, i64 } %i.oq, 0      ; 3 uses
  %i.os = extractvalue { ptr, i64 } %i.oq, 1      ; 5 uses
  store ptr %i.cf, ptr %13, align 8, !tbaa !144
  %i.ot = icmp eq ptr %i.or, null
  %i.ou = icmp ne i64 %i.os, 0
  %or.cond.i.i.i = and i1 %i.ot, %i.ou
  br i1 %or.cond.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK4llvm12GlobalObject10getSectionEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #29
  unreachable

bb.ap:                                            ; preds = %_ZNK4llvm12GlobalObject10getSectionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.os, ptr %i.e, align 8, !tbaa !128
  %i.ov = icmp ugt i64 %i.os, 15
  br i1 %i.ov, label %bb.aq, label %._crit_edge.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ow = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ow, ptr %13, align 8, !tbaa !147
  %i.ox = load i64, ptr %i.e, align 8, !tbaa !128
  store i64 %i.ox, ptr %i.cf, align 8, !tbaa !125
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aq, %bb.ap
  %i.oy = phi ptr [ %i.ow, %bb.aq ], [ %i.cf, %bb.ap ] ; 2 uses
  switch i64 %i.os, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  %i.oz = load i8, ptr %i.or, align 1, !tbaa !125
  store i8 %i.oz, ptr %i.oy, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.as:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr align 1 %i.or, i64 %i.os, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i, %bb.ar, %bb.as
  %i.pa = load i64, ptr %i.e, align 8, !tbaa !128 ; 2 uses
  store i64 %i.pa, ptr %i.cg, align 8, !tbaa !146
  %i.pb = load ptr, ptr %13, align 8, !tbaa !147
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pa
  store i8 0, ptr %i.pc, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.pd = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 2 uses
  %i.pe = load ptr, ptr %13, align 8, !tbaa !147  ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.cf
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.pg = load i64, ptr %i.cf, align 8, !tbaa !125
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.pi = load i32, ptr %i.pd, align 4, !tbaa !126
  %.not198 = icmp eq i32 %i.pi, 0
  br i1 %.not198, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pj = load ptr, ptr %0, align 8, !tbaa !264, !nonnull !49, !align !92
  %i.pk = load i32, ptr %i.ms, align 8
  %i.pl = and i32 %i.pk, 67108864
  %.not.i280 = icmp eq i32 %i.pl, 0
  br i1 %.not.i280, label %_ZNK4llvm12GlobalObject10getSectionEv.exit285.thread, label %_ZNK4llvm12GlobalObject10getSectionEv.exit285

_ZNK4llvm12GlobalObject10getSectionEv.exit285.thread: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ch, ptr %5, align 8, !tbaa !52
  store i32 0, ptr %i.ci, align 8, !tbaa !87
  store i32 64, ptr %i.cj, align 4, !tbaa !88
  br label %._crit_edge.i298

_ZNK4llvm12GlobalObject10getSectionEv.exit285:    ; preds = %bb.at
  %i.pm = call { ptr, i64 } @_ZNK4llvm12GlobalObject14getSectionImplEv(ptr noundef nonnull align 8 dereferenceable(60) %i.mr) #26 ; 2 uses
  %i.pn = extractvalue { ptr, i64 } %i.pm, 0      ; 2 uses
  %i.po = extractvalue { ptr, i64 } %i.pm, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ch, ptr %5, align 8, !tbaa !52
  store i32 0, ptr %i.ci, align 8, !tbaa !87
  store i32 64, ptr %i.cj, align 4, !tbaa !88
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po
  %.not14.i286 = icmp samesign eq i64 %i.po, 0
  br i1 %.not14.i286, label %._crit_edge.i298, label %.lr.ph.i287.preheader

._crit_edge.i298:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296, %_ZNK4llvm12GlobalObject10getSectionEv.exit285.thread, %_ZNK4llvm12GlobalObject10getSectionEv.exit285
  call void @_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j(ptr noundef nonnull align 8 dereferenceable(152) %i.pj, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(272) %5, i32 noundef 0)
  %i.pq = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.ch
  br i1 %i.pr, label %_ZL17writeStringRecordRN4llvm15BitstreamWriterEjNS_9StringRefEj.exit300, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i298
  call void @free(ptr noundef %i.pq) #26
  br label %_ZL17writeStringRecordRN4llvm15BitstreamWriterEjNS_9StringRefEj.exit300

.lr.ph.i287.preheader:                            ; preds = %_ZNK4llvm12GlobalObject10getSectionEv.exit285, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296
  %.016.i288 = phi ptr [ %i.qb, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296 ], [ %i.pn, %_ZNK4llvm12GlobalObject10getSectionEv.exit285 ] ; 2 uses
  %i.ps = load i8, ptr %.016.i288, align 1, !tbaa !125
  %i.pt = sext i8 %i.ps to i32                    ; 2 uses
  %i.pu = load i32, ptr %i.ci, align 8, !tbaa !87 ; 2 uses
  %i.pv = load i32, ptr %i.cj, align 4, !tbaa !88
  %.not.i.i295 = icmp ult i32 %i.pu, %i.pv
  br i1 %.not.i.i295, label %bb.aw, label %bb.av, !prof !265

bb.av:                                            ; preds = %.lr.ph.i287.preheader
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.pt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296

bb.aw:                                            ; preds = %.lr.ph.i287.preheader
  %i.pw = zext i32 %i.pu to i64
  %i.px = load ptr, ptr %5, align 8, !tbaa !52
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.pw
  store i32 %i.pt, ptr %i.py, align 1
  %i.pz = load i32, ptr %i.ci, align 8, !tbaa !87
  %i.qa = add i32 %i.pz, 1
  store i32 %i.qa, ptr %i.ci, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296
end_hunk_0
