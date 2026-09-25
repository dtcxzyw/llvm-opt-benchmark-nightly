Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeWriter?download=true
inline.NumInlined: 12476
inline.NumDeleted: 5487
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN12_GLOBAL__N_119ModuleBitcodeWriter15writeModuleInfoEv:bb.a
  %i.jk = load i32, ptr %i.fx, align 8, !tbaa !89 ; 3 uses
  %.not.i15.i = icmp eq i32 %i.jk, 0
  %i.jl = sub i32 32, %i.jk
  %i.jm = lshr i32 %.0.lcssa.i, %i.jl
  %storemerge.i16.i = select i1 %.not.i15.i, i32 0, i32 %i.jm ; 2 uses
  store i32 %storemerge.i16.i, ptr %i.ga, align 4, !tbaa !90
  %i.jn = add i32 %i.jk, 6
  %i.jo = and i32 %i.jn, 31
  br label %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit

_ZN4llvm15BitstreamWriter7EmitVBREjj.exit:        ; preds = %._crit_edge.i729, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i
  %.pre22.i7491145 = phi i32 [ %storemerge.i16.i, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i ], [ %i.iv, %._crit_edge.i729 ]
  %storemerge6.i17.i = phi i32 [ %i.jo, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i ], [ %i.iw, %._crit_edge.i729 ] ; 2 uses
  store i32 %storemerge6.i17.i, ptr %i.fx, align 8, !tbaa !89
  %.not1217.i = icmp eq i32 %i.ft, 0
  br i1 %.not1217.i, label %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit
  %i.jp = zext i32 %i.ft to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  br label %.lr.ph.i272

.lr.ph.i272:                                      ; preds = %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773, %.lr.ph.preheader.i
  %.pre25.i772 = phi i32 [ %.pre22.i7491145, %.lr.ph.preheader.i ], [ %.pre22.i7491144, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773 ] ; 2 uses
  %.pre23.i771 = phi i32 [ %storemerge6.i17.i, %.lr.ph.preheader.i ], [ %storemerge6.i17.i766, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773 ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773 ] ; 2 uses
  %i.jr = load ptr, ptr %10, align 8, !tbaa !52
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !126 ; 3 uses
  %.not20.i745 = icmp ult i32 %i.jt, 32
  br i1 %.not20.i745, label %._crit_edge.i759, label %.lr.ph.i747

.lr.ph.i747:                                      ; preds = %.lr.ph.i272, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756
  %i.ju = phi i32 [ %i.ks, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756 ], [ %.pre25.i772, %.lr.ph.i272 ]
  %i.jv = phi i32 [ %storemerge6.i.i757, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756 ], [ %.pre23.i771, %.lr.ph.i272 ] ; 3 uses
  %.021.i750 = phi i32 [ %i.kt, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756 ], [ %i.jt, %.lr.ph.i272 ] ; 3 uses
  %i.jw = and i32 %.021.i750, 31
  %i.jx = or disjoint i32 %i.jw, 32               ; 2 uses
  %i.jy = shl i32 %i.jx, %i.jv
  %i.jz = or i32 %i.jy, %i.ju                     ; 3 uses
  store i32 %i.jz, ptr %i.ga, align 4, !tbaa !90
  %i.ka = add nuw nsw i32 %i.jv, 6
  %i.kb = icmp ult i32 %i.jv, 26
  br i1 %i.kb, label %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i747
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !91, !nonnull !49, !align !92 ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 4 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !93 ; 2 uses
  %i.kf = add i64 %i.ke, 4                        ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !94
  %i.ki = icmp ult i64 %i.kh, %i.kf
  br i1 %i.ki, label %bb.ag, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i751

bb.ag:                                            ; preds = %bb.af
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull %i.kj, i64 noundef %i.kf, i64 noundef 1) #26
  %.pre8.pre.i.i.i.i768 = load i64, ptr %i.kd, align 8, !tbaa !93
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i751

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i751: ; preds = %bb.ag, %bb.af
  %.pre8.i.i.i.i752 = phi i64 [ %i.ke, %bb.af ], [ %.pre8.pre.i.i.i.i768, %bb.ag ]
  %i.kk = load ptr, ptr %i.kc, align 8, !tbaa !55
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.pre8.i.i.i.i752
  store i32 %i.jz, ptr %i.kl, align 1
  %.pre.i.i.i.i753 = load i64, ptr %i.kd, align 8, !tbaa !93
  %i.km = add i64 %.pre.i.i.i.i753, 4
  store i64 %i.km, ptr %i.kd, align 8, !tbaa !93
  %i.kn = load i32, ptr %i.fx, align 8, !tbaa !89 ; 3 uses
  %.not.i.i754 = icmp eq i32 %i.kn, 0
  %i.ko = sub i32 32, %i.kn
  %i.kp = lshr i32 %i.jx, %i.ko
  %storemerge.i.i755 = select i1 %.not.i.i754, i32 0, i32 %i.kp ; 2 uses
  store i32 %storemerge.i.i755, ptr %i.ga, align 4, !tbaa !90
  %i.kq = add i32 %i.kn, 6
  %i.kr = and i32 %i.kq, 31
  br label %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756

_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756:      ; preds = %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i751, %.lr.ph.i747
  %i.ks = phi i32 [ %storemerge.i.i755, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i751 ], [ %i.jz, %.lr.ph.i747 ] ; 2 uses
  %storemerge6.i.i757 = phi i32 [ %i.kr, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i.i751 ], [ %i.ka, %.lr.ph.i747 ] ; 3 uses
  store i32 %storemerge6.i.i757, ptr %i.fx, align 8, !tbaa !89
  %i.kt = lshr i32 %.021.i750, 5                  ; 2 uses
  %.not.i758 = icmp ult i32 %.021.i750, 1024
  br i1 %.not.i758, label %._crit_edge.i759, label %.lr.ph.i747, !llvm.loop !13

._crit_edge.i759:                                 ; preds = %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756, %.lr.ph.i272
  %i.ku = phi i32 [ %.pre25.i772, %.lr.ph.i272 ], [ %i.ks, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756 ]
  %i.kv = phi i32 [ %.pre23.i771, %.lr.ph.i272 ], [ %storemerge6.i.i757, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756 ] ; 2 uses
  %.0.lcssa.i760 = phi i32 [ %i.jt, %.lr.ph.i272 ], [ %i.kt, %_ZN4llvm15BitstreamWriter4EmitEjj.exit.i756 ] ; 2 uses
  %i.kw = shl i32 %.0.lcssa.i760, %i.kv
  %i.kx = or i32 %i.kw, %i.ku                     ; 3 uses
  store i32 %i.kx, ptr %i.ga, align 4, !tbaa !90
  %i.ky = add i32 %i.kv, 6                        ; 2 uses
  %i.kz = icmp ult i32 %i.ky, 32
  br i1 %i.kz, label %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i759
  %i.la = load ptr, ptr %i.jq, align 8, !tbaa !91, !nonnull !49, !align !92 ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !93 ; 2 uses
  %i.ld = add i64 %i.lc, 4                        ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !94
  %i.lg = icmp ult i64 %i.lf, %i.ld
  br i1 %i.lg, label %bb.ai, label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i761

bb.ai:                                            ; preds = %bb.ah
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef nonnull %i.lh, i64 noundef %i.ld, i64 noundef 1) #26
  %.pre8.pre.i.i.i18.i767 = load i64, ptr %i.lb, align 8, !tbaa !93
  br label %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i761

_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i761: ; preds = %bb.ai, %bb.ah
  %.pre8.i.i.i13.i762 = phi i64 [ %i.lc, %bb.ah ], [ %.pre8.pre.i.i.i18.i767, %bb.ai ]
  %i.li = load ptr, ptr %i.la, align 8, !tbaa !55
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %.pre8.i.i.i13.i762
  store i32 %i.kx, ptr %i.lj, align 1
  %.pre.i.i.i14.i763 = load i64, ptr %i.lb, align 8, !tbaa !93
  %i.lk = add i64 %.pre.i.i.i14.i763, 4
  store i64 %i.lk, ptr %i.lb, align 8, !tbaa !93
  %i.ll = load i32, ptr %i.fx, align 8, !tbaa !89 ; 3 uses
  %.not.i15.i764 = icmp eq i32 %i.ll, 0
  %i.lm = sub i32 32, %i.ll
  %i.ln = lshr i32 %.0.lcssa.i760, %i.lm
  %storemerge.i16.i765 = select i1 %.not.i15.i764, i32 0, i32 %i.ln ; 2 uses
  store i32 %storemerge.i16.i765, ptr %i.ga, align 4, !tbaa !90
  %i.lo = add i32 %i.ll, 6
  %i.lp = and i32 %i.lo, 31
  br label %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773

_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773:     ; preds = %._crit_edge.i759, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i761
  %.pre22.i7491144 = phi i32 [ %storemerge.i16.i765, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i761 ], [ %i.kx, %._crit_edge.i759 ]
  %storemerge6.i17.i766 = phi i32 [ %i.lp, %_ZN4llvm15BitstreamWriter9WriteWordEj.exit.i12.i761 ], [ %i.ky, %._crit_edge.i759 ] ; 2 uses
  store i32 %storemerge6.i17.i766, ptr %i.fx, align 8, !tbaa !89
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not12.i273 = icmp eq i64 %indvars.iv.next.i, %i.jp
  br i1 %.not12.i273, label %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit, label %.lr.ph.i272, !llvm.loop !21

_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit: ; preds = %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit773, %_ZN4llvm15BitstreamWriter7EmitVBREjj.exit
  %i.lq = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.bi
  br i1 %i.lr, label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit
  call void @free(ptr noundef %i.lq) #26
  br label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit

_ZN4llvm11SmallVectorIjLj64EED2Ev.exit:           ; preds = %_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ls = getelementptr inbounds nuw i8, ptr %.01811062, i64 32 ; 2 uses
  %.not199 = icmp eq ptr %i.ls, %i.co
  br i1 %.not199, label %._crit_edge, label %.lr.ph

._crit_edge1078.loopexit:                         ; preds = %bb.ax
  %.pre1147 = load ptr, ptr %i.f, align 8, !tbaa !309
  %i.lt = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 false)
  %i.lu = sub nuw nsw i32 32, %i.lt
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = trunc nuw i8 %.sroa.6922.1 to i1
  %i.lx = zext i8 %.sroa.0152.0.copyload1068 to i32
  %i.ly = add nuw nsw i32 %i.lx, 1
  %i.lz = call range(i32 23, 33) i32 @llvm.ctlz.i32(i32 %i.ly, i1 true)
  %i.ma = sub nuw nsw i32 32, %i.lz
  %i.mb = zext nneg i32 %i.ma to i64
  br label %._crit_edge1078

._crit_edge1078:                                  ; preds = %._crit_edge1078.loopexit, %._crit_edge1067
  %i.mc = phi ptr [ %i.bp, %._crit_edge1067 ], [ %.pre1147, %._crit_edge1078.loopexit ] ; 3 uses
  %.sroa.0152.0.copyload1069.lcssa = phi i64 [ 1, %._crit_edge1067 ], [ %i.mb, %._crit_edge1078.loopexit ] ; 2 uses
  %.0939.lcssa = phi i64 [ 0, %._crit_edge1067 ], [ %i.lv, %._crit_edge1078.loopexit ]
  %.sroa.6922.0.lcssa = phi i1 [ false, %._crit_edge1067 ], [ %i.lw, %._crit_edge1078.loopexit ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 24 ; 2 uses
  %.sroa.0901.01081 = load ptr, ptr %i.md, align 8, !tbaa !328 ; 2 uses
  %.not10131082 = icmp eq ptr %.sroa.0901.01081, %i.me
  br i1 %.not10131082, label %._crit_edge1086, label %.lr.ph1085

.lr.ph1085:                                       ; preds = %._crit_edge1078
  %i.mf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.ay

bb.ak:                                            ; preds = %.lr.ph1077, %bb.ax
  %.sroa.0913.01075 = phi ptr [ %.sroa.0913.01070, %.lr.ph1077 ], [ %.sroa.0913.0, %bb.ax ] ; 4 uses
  %.sroa.6922.01074 = phi i8 [ 0, %.lr.ph1077 ], [ %.sroa.6922.1, %bb.ax ] ; 2 uses
  %.09391073 = phi i32 [ 0, %.lr.ph1077 ], [ %.sroa.speculated, %bb.ax ]
  %.sroa.0152.0.copyload10691072 = phi i8 [ undef, %.lr.ph1077 ], [ %.sroa.0152.0.copyload1068, %bb.ax ] ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %.sroa.0913.01075, i64 -64 ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %.sroa.0913.01075, i64 -32 ; 3 uses
  %i.mp = load i32, ptr %i.mo, align 8            ; 2 uses
  %i.mq = lshr i32 %i.mp, 17
  %i.mr = and i32 %i.mq, 63                       ; 2 uses
  %.not.i.i.i274 = icmp eq i32 %i.mr, 0           ; 3 uses
  %i.ms = trunc nuw nsw i32 %i.mr to i8
  %i.mt = add nsw i8 %i.ms, -1
  %.sroa.0910.0.extract.trunc = select i1 %.not.i.i.i274, i8 0, i8 %i.mt ; 2 uses
  %i.mu = trunc nuw i8 %.sroa.6922.01074 to i1
  %i.mv = call i8 @llvm.umax.i8(i8 %.sroa.0152.0.copyload10691072, i8 %.sroa.0910.0.extract.trunc)
  %.sroa.0152.0.copyload = select i1 %i.mu, i8 %i.mv, i8 %.sroa.0910.0.extract.trunc
  %.sroa.0152.0.copyload1068 = select i1 %.not.i.i.i274, i8 %.sroa.0152.0.copyload10691072, i8 %.sroa.0152.0.copyload ; 2 uses
  %.sroa.6922.1 = select i1 %.not.i.i.i274, i8 %.sroa.6922.01074, i8 1 ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %.sroa.0913.01075, i64 -40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !586 ; 2 uses
  %i.my = load ptr, ptr %i.cc, align 8, !tbaa !278, !noalias !1696 ; 2 uses
  %i.mz = load ptr, ptr %i.cd, align 8, !tbaa !279, !noalias !1696 ; 2 uses
  %i.na = load i32, ptr %i.ce, align 4, !tbaa !280, !noalias !1696 ; 3 uses
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %.loopexit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nc = add i32 %i.na, -1                       ; 2 uses
  %i.nd = ptrtoint ptr %i.mx to i64
  %i.ne = mul i64 %i.nd, -4658895280553007687     ; 2 uses
  %i.nf = lshr i64 %i.ne, 31
  %i.ng = xor i64 %i.nf, %i.ne
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = and i32 %i.nc, %i.nh                    ; 3 uses
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = lshr i64 %i.nj, 5
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !126, !noalias !1697
  %i.nn = and i32 %i.ni, 31
  %i.no = lshr i32 %i.nm, %i.nn
  %i.np = trunc i32 %i.no to i1
  br i1 %i.np, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !281

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %i.nq = phi i64 [ %i.nw, %bb.am ], [ %i.nj, %bb.al ] ; 2 uses
  %.017.i.i.i.i = phi i32 [ %i.nv, %bb.am ], [ %i.ni, %bb.al ]
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.my, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !273, !noalias !1697
  %i.nt = icmp eq ptr %i.mx, %i.ns
  br i1 %i.nt, label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit, label %bb.am, !prof !265

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nu = add nuw i32 %.017.i.i.i.i, 1
  %i.nv = and i32 %i.nu, %i.nc                    ; 3 uses
  %i.nw = zext i32 %i.nv to i64                   ; 2 uses
  %i.nx = lshr i64 %i.nw, 5
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !126, !noalias !1697
  %i.oa = and i32 %i.nv, 31
  %i.ob = lshr i32 %i.nz, %i.oa
  %i.oc = trunc i32 %i.ob to i1
  br i1 %i.oc, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !282

.loopexit.i.i.i:                                  ; preds = %bb.am, %bb.al, %bb.ak
  %i.od = zext i32 %i.na to i64
  br label %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit

_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.oe = phi i64 [ %i.od, %.loopexit.i.i.i ], [ %i.nq, %.lr.ph.i.i.i.i ]
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.my, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !284
  %i.oi = add i32 %i.oh, -1
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.09391073, i32 %i.oi) ; 2 uses
  %i.oj = and i32 %i.mp, 67108864
  %.not1038 = icmp eq i32 %i.oj, 0
  br i1 %.not1038, label %bb.ax, label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm15ValueEnumerator9getTypeIDEPNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ok = load i32, ptr %i.mo, align 8
  %i.ol = and i32 %i.ok, 67108864
  %.not.i277 = icmp eq i32 %i.ol, 0
  br i1 %.not.i277, label %._crit_edge.i.i.i.i.thread, label %_ZNK4llvm12GlobalObject10getSectionEv.exit

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.an
  store ptr %i.cf, ptr %13, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 0, ptr %i.e, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNK4llvm12GlobalObject10getSectionEv.exit:       ; preds = %bb.an
  %i.om = call { ptr, i64 } @_ZNK4llvm12GlobalObject14getSectionImplEv(ptr noundef nonnull align 8 dereferenceable(60) %i.mn) #26 ; 2 uses
  %i.on = extractvalue { ptr, i64 } %i.om, 0      ; 3 uses
  %i.oo = extractvalue { ptr, i64 } %i.om, 1      ; 5 uses
  store ptr %i.cf, ptr %13, align 8, !tbaa !144
  %i.op = icmp eq ptr %i.on, null
  %i.oq = icmp ne i64 %i.oo, 0
  %or.cond.i.i.i = and i1 %i.op, %i.oq
  br i1 %or.cond.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK4llvm12GlobalObject10getSectionEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #29
  unreachable

bb.ap:                                            ; preds = %_ZNK4llvm12GlobalObject10getSectionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.oo, ptr %i.e, align 8, !tbaa !128
  %i.or = icmp ugt i64 %i.oo, 15
  br i1 %i.or, label %bb.aq, label %._crit_edge.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.os = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #26 ; 2 uses
  store ptr %i.os, ptr %13, align 8, !tbaa !147
  %i.ot = load i64, ptr %i.e, align 8, !tbaa !128
  store i64 %i.ot, ptr %i.cf, align 8, !tbaa !125
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aq, %bb.ap
  %i.ou = phi ptr [ %i.os, %bb.aq ], [ %i.cf, %bb.ap ] ; 2 uses
  switch i64 %i.oo, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ov = load i8, ptr %i.on, align 1, !tbaa !125
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.as:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ou, ptr align 1 %i.on, i64 %i.oo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i, %bb.ar, %bb.as
  %i.ow = load i64, ptr %i.e, align 8, !tbaa !128 ; 2 uses
  store i64 %i.ow, ptr %i.cg, align 8, !tbaa !146
  %i.ox = load ptr, ptr %13, align 8, !tbaa !147
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ow
  store i8 0, ptr %i.oy, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.oz = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 2 uses
  %i.pa = load ptr, ptr %13, align 8, !tbaa !147  ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.cf
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.pc = load i64, ptr %i.cf, align 8, !tbaa !125
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.pe = load i32, ptr %i.oz, align 4, !tbaa !126
  %.not198 = icmp eq i32 %i.pe, 0
  br i1 %.not198, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pf = load ptr, ptr %0, align 8, !tbaa !264, !nonnull !49, !align !92
  %i.pg = load i32, ptr %i.mo, align 8
  %i.ph = and i32 %i.pg, 67108864
  %.not.i280 = icmp eq i32 %i.ph, 0
  br i1 %.not.i280, label %_ZNK4llvm12GlobalObject10getSectionEv.exit285.thread, label %_ZNK4llvm12GlobalObject10getSectionEv.exit285

_ZNK4llvm12GlobalObject10getSectionEv.exit285.thread: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ch, ptr %5, align 8, !tbaa !52
  store i32 0, ptr %i.ci, align 8, !tbaa !87
  store i32 64, ptr %i.cj, align 4, !tbaa !88
  br label %._crit_edge.i298

_ZNK4llvm12GlobalObject10getSectionEv.exit285:    ; preds = %bb.at
  %i.pi = call { ptr, i64 } @_ZNK4llvm12GlobalObject14getSectionImplEv(ptr noundef nonnull align 8 dereferenceable(60) %i.mn) #26 ; 2 uses
  %i.pj = extractvalue { ptr, i64 } %i.pi, 0      ; 2 uses
  %i.pk = extractvalue { ptr, i64 } %i.pi, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.ch, ptr %5, align 8, !tbaa !52
  store i32 0, ptr %i.ci, align 8, !tbaa !87
  store i32 64, ptr %i.cj, align 4, !tbaa !88
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pk
  %.not14.i286 = icmp samesign eq i64 %i.pk, 0
  br i1 %.not14.i286, label %._crit_edge.i298, label %.lr.ph.i287.preheader

._crit_edge.i298:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296, %_ZNK4llvm12GlobalObject10getSectionEv.exit285.thread, %_ZNK4llvm12GlobalObject10getSectionEv.exit285
  call void @_ZN4llvm15BitstreamWriter10EmitRecordINS_11SmallVectorIjLj64EEEEEvjRKT_j(ptr noundef nonnull align 8 dereferenceable(152) %i.pf, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(272) %5, i32 noundef 0)
  %i.pm = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.ch
  br i1 %i.pn, label %_ZL17writeStringRecordRN4llvm15BitstreamWriterEjNS_9StringRefEj.exit300, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i298
  call void @free(ptr noundef %i.pm) #26
  br label %_ZL17writeStringRecordRN4llvm15BitstreamWriterEjNS_9StringRefEj.exit300

.lr.ph.i287.preheader:                            ; preds = %_ZNK4llvm12GlobalObject10getSectionEv.exit285, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296
  %.016.i288 = phi ptr [ %i.px, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296 ], [ %i.pj, %_ZNK4llvm12GlobalObject10getSectionEv.exit285 ] ; 2 uses
  %i.po = load i8, ptr %.016.i288, align 1, !tbaa !125
  %i.pp = sext i8 %i.po to i32                    ; 2 uses
  %i.pq = load i32, ptr %i.ci, align 8, !tbaa !87 ; 2 uses
  %i.pr = load i32, ptr %i.cj, align 4, !tbaa !88
  %.not.i.i295 = icmp ult i32 %i.pq, %i.pr
  br i1 %.not.i.i295, label %bb.aw, label %bb.av, !prof !265

bb.av:                                            ; preds = %.lr.ph.i287.preheader
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.pp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296

bb.aw:                                            ; preds = %.lr.ph.i287.preheader
  %i.ps = zext i32 %i.pq to i64
  %i.pt = load ptr, ptr %5, align 8, !tbaa !52
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.ps
  store i32 %i.pp, ptr %i.pu, align 1
  %i.pv = load i32, ptr %i.ci, align 8, !tbaa !87
  %i.pw = add i32 %i.pv, 1
  store i32 %i.pw, ptr %i.ci, align 8, !tbaa !87
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i296
end_hunk_0
