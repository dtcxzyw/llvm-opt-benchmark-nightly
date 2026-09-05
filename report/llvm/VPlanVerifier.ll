Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanVerifier?download=true
inline.NumInlined: 3395
inline.NumDeleted: 1970
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_113VPlanVerifier11verifyBlockEPKN4llvm11VPBlockBaseE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ef, ptr noundef nonnull align 1 dereferenceable(26) @.str.11, i64 26, i1 false)
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !142
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 26
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.critedge60:                                      ; preds = %bb.y, %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !17 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !18 ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %.idx218 = shl nuw nsw i64 %i.er, 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx218
  %.not57151 = icmp eq i32 %i.eq, 0
  br i1 %.not57151, label %.critedge66, label %.lr.ph153

.lr.ph153:                                        ; preds = %.critedge60
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !137
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100
  %i.ev = getelementptr inbounds nuw i8, ptr %.0152, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.ev, %i.es
  br i1 %.not57, label %.critedge66, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph153, %bb.aj
  %.0152 = phi ptr [ %i.eo, %.lr.ph153 ], [ %i.ev, %bb.aj ] ; 2 uses
  %i.ew = load ptr, ptr %.0152, align 8, !tbaa !133 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !137
  %.not58 = icmp eq ptr %i.ey, %i.eu
  br i1 %.not58, label %bb.an, label %.critedge62

.critedge62:                                      ; preds = %bb.ak
  %i.ez = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !141
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !142 ; 2 uses
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp ult i64 %i.fg, 39
  br i1 %i.fh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge62
  %i.fi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef nonnull @.str.12, i64 noundef 39) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.am:                                            ; preds = %.critedge62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.fd, ptr noundef nonnull align 1 dereferenceable(39) @.str.12, i64 39, i1 false)
  %i.fj = load ptr, ptr %i.fc, align 8, !tbaa !142
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 39
  store ptr %i.fk, ptr %i.fc, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.an:                                            ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !17 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !18 ; 3 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %.idx4.i80 = shl nuw nsw i64 %i.fp, 3           ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx4.i80
  %i.fr = lshr i64 %i.fp, 2                       ; 2 uses
  %.not.i81 = icmp eq i64 %i.fr, 0
  br i1 %.not.i81, label %._crit_edge.i.i.i.i87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %bb.an
  %i.fs = and i64 %.idx4.i80, 34359738336
  %scevgep.i.i.i.i83 = getelementptr i8, ptr %i.fm, i64 %i.fs
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i82
  %.047.i.i.i.i84 = phi i64 [ %i.fr, %.lr.ph.i.i.i.i82 ], [ %i.gf, %bb.as ] ; 2 uses
  %.02946.i.i.i.i85 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i82 ], [ %i.ge, %bb.as ] ; 9 uses
  %i.ft = load ptr, ptr %.02946.i.i.i.i85, align 8, !tbaa !133
  %i.fu = icmp eq ptr %i.ft, %1
  br i1 %i.fu, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !133
  %i.fx = icmp eq ptr %i.fw, %1
  br i1 %i.fx, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !133
  %i.ga = icmp eq ptr %i.fz, %1
  br i1 %i.ga, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit341, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !133
  %i.gd = icmp eq ptr %i.gc, %1
  br i1 %i.gd, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit343, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 32
  %i.gf = add nsw i64 %.047.i.i.i.i84, -1
  %i.gg = icmp sgt i64 %.047.i.i.i.i84, 1
  br i1 %i.gg, label %bb.ao, label %._crit_edge.loopexit.i.i.i.i86, !llvm.loop !677

._crit_edge.loopexit.i.i.i.i86:                   ; preds = %bb.as
  %i.gh = and i32 %i.fo, 3
  br label %._crit_edge.i.i.i.i87

._crit_edge.i.i.i.i87:                            ; preds = %._crit_edge.loopexit.i.i.i.i86, %bb.an
  %.pre-phi56.i.i.i.i88 = phi i32 [ %i.gh, %._crit_edge.loopexit.i.i.i.i86 ], [ %i.fo, %bb.an ]
  %.029.lcssa.i.i.i.i89 = phi ptr [ %scevgep.i.i.i.i83, %._crit_edge.loopexit.i.i.i.i86 ], [ %i.fm, %bb.an ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i88, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.thread [
    i32 3, label %bb.at
    i32 2, label %._crit_edge._crit_edge.i.i.i.i94
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i90
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i.i87
  %i.gi = load ptr, ptr %.029.lcssa.i.i.i.i89, align 8, !tbaa !133
  %i.gj = icmp eq ptr %i.gi, %1
  br i1 %i.gj, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i89, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i94

._crit_edge._crit_edge.i.i.i.i94:                 ; preds = %._crit_edge.i.i.i.i87, %bb.au
  %.1.i.i.i.i96 = phi ptr [ %i.gk, %bb.au ], [ %.029.lcssa.i.i.i.i89, %._crit_edge.i.i.i.i87 ] ; 3 uses
  %i.gl = load ptr, ptr %.1.i.i.i.i96, align 8, !tbaa !133
  %i.gm = icmp eq ptr %i.gl, %1
  br i1 %i.gm, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100, label %bb.av

bb.av:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i94
  %i.gn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i96, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i90

._crit_edge._crit_edge52.i.i.i.i90:               ; preds = %._crit_edge.i.i.i.i87, %bb.av
  %.2.i.i.i.i92 = phi ptr [ %i.gn, %bb.av ], [ %.029.lcssa.i.i.i.i89, %._crit_edge.i.i.i.i87 ] ; 2 uses
  %i.go = load ptr, ptr %.2.i.i.i.i92, align 8, !tbaa !133
  %i.gp = icmp eq ptr %i.go, %1
  br i1 %i.gp, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.thread

_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit: ; preds = %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 8
  br label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100

_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit341: ; preds = %bb.aq
  %i.gr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 16
  br label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100

_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit343: ; preds = %bb.ar
  %i.gs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i85, i64 24
  br label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100

_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100: ; preds = %bb.ao, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit341, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit343, %bb.at, %._crit_edge._crit_edge.i.i.i.i94, %._crit_edge._crit_edge52.i.i.i.i90
  %.028.i.i.i.i93 = phi ptr [ %.1.i.i.i.i96, %._crit_edge._crit_edge.i.i.i.i94 ], [ %.029.lcssa.i.i.i.i89, %bb.at ], [ %.2.i.i.i.i92, %._crit_edge._crit_edge52.i.i.i.i90 ], [ %i.gs, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit343 ], [ %i.gr, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit341 ], [ %i.gq, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.loopexit.split.loop.exit ], [ %.02946.i.i.i.i85, %bb.ao ]
  %.not126 = icmp eq ptr %.028.i.i.i.i93, %i.fq
  br i1 %.not126, label %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.thread, label %bb.aj

_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i90, %._crit_edge.i.i.i.i87, %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100
  %i.gt = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !141
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !142 ; 2 uses
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp ult i64 %i.ha, 24
  br i1 %i.hb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.thread
  %i.hc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gt, ptr noundef nonnull @.str.13, i64 noundef 24) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.ax:                                            ; preds = %_ZN4llvm12is_containedIRKNS_15SmallVectorImplIPNS_11VPBlockBaseEEEPKS2_EEbOT_RKT0_.exit100.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gx, ptr noundef nonnull align 1 dereferenceable(24) @.str.13, i64 24, i1 false)
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !142
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store ptr %i.he, ptr %i.gw, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.critedge66:                                      ; preds = %bb.aj, %.critedge60
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.ay

bb.ay:                                            ; preds = %.critedge66
  %.val.i = load ptr, ptr %0, align 8, !tbaa !733
  %i.hf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 120 ; 5 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !734 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 112 ; 12 uses
  %i.hi = tail call noundef zeroext i1 @_ZN4llvm12VPBlockUtils8isHeaderEPKNS_11VPBlockBaseERKNS_15VPDominatorTreeE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(220) %.val.i) #16
  %.not2539.i.i = icmp eq ptr %i.hg, %i.hh
  br i1 %.not2539.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ay
  %i.hj = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 56 ; 2 uses
  br i1 %i.hi, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
  %.02441.us.i.i = phi i32 [ %spec.select.us.i.i, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.sroa.08.040.us.i.i = phi ptr [ %i.ia, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i ], [ %i.hg, %.lr.ph.i.i ] ; 9 uses
  %i.hk = getelementptr inbounds i8, ptr %.sroa.08.040.us.i.i, i64 -16
  %i.hl = tail call noundef zeroext i1 @_ZNK4llvm12VPRecipeBase5isPhiEv(ptr noundef nonnull align 8 dereferenceable(89) %i.hk) #16
  br i1 %i.hl, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %.lr.ph.split.us.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.08.040.us.i.i, i64 72 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !177 ; 2 uses
  %i.ho = icmp eq i8 %i.hn, 30
  %i.hp = zext i1 %i.ho to i32
  %spec.select.us.i.i = add i32 %.02441.us.i.i, %i.hp ; 2 uses
  switch i8 %i.hn, label %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.thread22.i.i [
    i8 5, label %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.us.i.i
    i8 29, label %bb.ba
    i8 27, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
    i8 30, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
    i8 31, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
    i8 32, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
    i8 33, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
    i8 34, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i
  ]

_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.us.i.i: ; preds = %bb.az
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.08.040.us.i.i, i64 208
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !191
  %i.hs = icmp eq i8 %i.hr, 57
  br i1 %i.hs, label %.critedge2.us.i.i, label %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.thread22.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ht = tail call noundef ptr @_ZNK4llvm11VPBlockBase7getPlanEv(ptr noundef nonnull align 8 dereferenceable(105) %1) #16
  %i.hu = tail call noundef ptr @_ZNK4llvm5VPlan19getVectorLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(816) %i.ht) #16
  %.not.us.i.i = icmp eq ptr %i.hu, null
  %i.hv = load ptr, ptr %i.hf, align 8, !tbaa !734 ; 2 uses
  %.not28.us.i.i = icmp eq ptr %.sroa.08.040.us.i.i, %i.hv ; 2 uses
  br i1 %.not.us.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not28.us.i.i, label %.critedge2.us.i.i, label %.split.us.i.i

bb.bc:                                            ; preds = %bb.ba
  br i1 %.not28.us.i.i, label %.critedge2.us.i.i, label %.preheader30.us.preheader.i.i

.preheader30.us.preheader.i.i:                    ; preds = %bb.bc
  %13 = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !734
  %.not29.us.i.i.a = icmp eq ptr %.sroa.08.040.us.i.i, %14
  br i1 %.not29.us.i.i.a, label %.critedge2.us.i.i, label %.split.us.i.i

.critedge2.us.i.i:                                ; preds = %.preheader30.us.preheader.i.i, %bb.bc, %bb.bb, %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.us.i.i
  %.pr.i.a = load i8, ptr %i.hm, align 8, !tbaa !177
  %.not.i.i.i.i.i.i.i.us.i.i = icmp eq i8 %.pr.i.a, 4
  br i1 %.not.i.i.i.i.i.i.i.us.i.i, label %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.us.i.i, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i

_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.us.i.i: ; preds = %.critedge2.us.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.08.040.us.i.i, i64 80
  %15 = load ptr, ptr %i.hw, align 8, !tbaa !737, !nonnull !132, !align !201
  %16 = load i8, ptr %15, align 8, !tbaa !264
  %i.hx = icmp eq i8 %16, 87
  br i1 %i.hx, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.us.i.i, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i

_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.us.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.us.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.08.040.us.i.i, i64 32
  %17 = load i32, ptr %i.hy, align 8, !tbaa !18
  %18 = load i32, ptr %i.hj, align 8, !tbaa !18
  %.not30.us.i.i = icmp eq i32 %18, %17
  br i1 %.not30.us.i.i, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i, label %.critedge34.i.i

_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i: ; preds = %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.us.i.i, %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.us.i.i, %.critedge2.us.i.i, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.08.040.us.i.i, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !734 ; 3 uses
  %.not25.us.i.i = icmp eq ptr %i.ia, %i.hh
  br i1 %.not25.us.i.i, label %.critedge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !678

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i
  %.02441.i.i = phi i32 [ %spec.select.i.i106, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.sroa.08.040.i.i = phi ptr [ %i.km, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i ], [ %i.hg, %.lr.ph.i.i ] ; 6 uses
  %i.ib = getelementptr inbounds i8, ptr %.sroa.08.040.i.i, i64 -16
  %i.ic = tail call noundef zeroext i1 @_ZNK4llvm12VPRecipeBase5isPhiEv(ptr noundef nonnull align 8 dereferenceable(89) %i.ib) #16
  br i1 %i.ic, label %.critedge32.i.i, label %.critedge.i.i

.critedge32.i.i:                                  ; preds = %.lr.ph.split.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.08.040.i.i, i64 72
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !177 ; 3 uses
  %i.if = icmp eq i8 %i.ie, 30
  %i.ig = zext i1 %i.if to i32
  %spec.select.i.i106 = add i32 %.02441.i.i, %i.ig ; 2 uses
  %i.ih = add i8 %i.ie, -29
  %spec.select.i.i.i.i.i.i.i.i107 = icmp ult i8 %i.ih, 6
  br i1 %spec.select.i.i.i.i.i.i.i.i107, label %bb.bf, label %.critedge2.i.i

_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.thread22.i.i: ; preds = %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.us.i.i, %bb.az
  %i.ii = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !141
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !142 ; 2 uses
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = icmp ult i64 %i.ip, 42
  br i1 %i.iq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.thread22.i.i
  %i.ir = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, ptr noundef nonnull @.str.23, i64 noundef 42) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.be:                                            ; preds = %_ZN4llvm3isaIJNS_17VPHeaderPHIRecipeENS_16VPWidenPHIRecipeENS_5VPPhiEENS_12VPRecipeBaseEEEbRKT0_.exit.thread22.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.im, ptr noundef nonnull align 1 dereferenceable(42) @.str.23, i64 42, i1 false)
  %i.is = load ptr, ptr %i.il, align 8, !tbaa !142
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 42
  store ptr %i.it, ptr %i.il, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bf:                                            ; preds = %.critedge32.i.i
  %i.iu = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !141
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 32 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !142 ; 2 uses
  %i.iz = ptrtoint ptr %i.iw to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = icmp ult i64 %i.jb, 42
  br i1 %i.jc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, ptr noundef nonnull @.str.24, i64 noundef 42) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bh:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.iy, ptr noundef nonnull align 1 dereferenceable(42) @.str.24, i64 42, i1 false)
  %i.je = load ptr, ptr %i.ix, align 8, !tbaa !142
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 42
  store ptr %i.jf, ptr %i.ix, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.split.us.i.i:                                    ; preds = %.preheader30.us.preheader.i.i, %bb.bb
  %i.jg = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !141
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 32 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !142 ; 2 uses
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = icmp ult i64 %i.jn, 52
  br i1 %i.jo, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.split.us.i.i
  %i.jp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jg, ptr noundef nonnull @.str.25, i64 noundef 52) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bj:                                            ; preds = %.split.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.jk, ptr noundef nonnull align 1 dereferenceable(52) @.str.25, i64 52, i1 false)
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !142
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 52
  store ptr %i.jr, ptr %i.jj, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.critedge2.i.i:                                   ; preds = %.critedge32.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ie, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.i.i, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i

_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.i.i: ; preds = %.critedge2.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.08.040.i.i, i64 80
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !737, !nonnull !132, !align !201
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !264
  %i.jv = icmp eq i8 %i.ju, 87
  br i1 %i.jv, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.i.i, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i

_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.08.040.i.i, i64 32
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !18
  %i.jy = load i32, ptr %i.hj, align 8, !tbaa !18
  %.not30.i.i = icmp eq i32 %i.jy, %i.jx
  br i1 %.not30.i.i, label %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i, label %.critedge34.i.i

.critedge34.i.i:                                  ; preds = %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.us.i.i
  %i.jz = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !141
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 32 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !142 ; 2 uses
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = icmp ult i64 %i.kg, 68
  br i1 %i.kh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.critedge34.i.i
  %i.ki = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jz, ptr noundef nonnull @.str.17, i64 noundef 68) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bl:                                            ; preds = %.critedge34.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.kd, ptr noundef nonnull align 1 dereferenceable(68) @.str.17, i64 68, i1 false)
  %i.kj = load ptr, ptr %i.kc, align 8, !tbaa !142
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 68
  store ptr %i.kk, ptr %i.kc, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i: ; preds = %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.i.i, %_ZN4llvm14CastIsPossibleINS_7VPIRPhiEPKNS_12VPRecipeBaseEvE10isPossibleERKS4_.exit.i.i.i.i, %.critedge2.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.08.040.i.i, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !734 ; 3 uses
  %.not25.i.i = icmp eq ptr %i.km, %i.hh
  br i1 %.not25.i.i, label %.critedge.i.i, label %.lr.ph.split.i.i, !llvm.loop !678

.critedge.i.i:                                    ; preds = %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i, %.lr.ph.split.i.i, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i, %.lr.ph.split.us.i.i, %bb.ay
  %.sroa.08.0.lcssa.i.i = phi ptr [ %i.hg, %bb.ay ], [ %i.ia, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i ], [ %.sroa.08.040.us.i.i, %.lr.ph.split.us.i.i ], [ %i.km, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i ], [ %.sroa.08.040.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.024.lcssa.i.i = phi i32 [ 0, %bb.ay ], [ %spec.select.us.i.i, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.us.i.i ], [ %.02441.us.i.i, %.lr.ph.split.us.i.i ], [ %spec.select.i.i106, %_ZN4llvm8dyn_castINS_7VPIRPhiEKNS_12VPRecipeBaseEEEDcPT0_.exit.thread.i.i ], [ %.02441.i.i, %.lr.ph.split.i.i ]
  %i.kn = tail call noundef ptr @_ZNK4llvm11VPBlockBase7getPlanEv(ptr noundef nonnull align 8 dereferenceable(105) %1) #16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 136
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !18
  %i.kq = icmp eq i32 %i.kp, 1
  %i.kr = icmp ult i32 %.024.lcssa.i.i, 2
  %or.cond.not.i.i = select i1 %i.kq, i1 true, i1 %i.kr
  br i1 %or.cond.not.i.i, label %.preheader.i.i, label %bb.bm

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not2649.i.i = icmp eq ptr %.sroa.08.0.lcssa.i.i, %i.hh
  br i1 %.not2649.i.i, label %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i, label %.lr.ph51.i.i

bb.bm:                                            ; preds = %.critedge.i.i
  %i.ks = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !141
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 32 ; 3 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !142 ; 2 uses
  %i.kx = ptrtoint ptr %i.ku to i64
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = icmp ult i64 %i.kz, 58
  br i1 %i.la, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ks, ptr noundef nonnull @.str.26, i64 noundef 58) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bo:                                            ; preds = %bb.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.kw, ptr noundef nonnull align 1 dereferenceable(58) @.str.26, i64 58, i1 false)
  %i.lc = load ptr, ptr %i.kv, align 8, !tbaa !142
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 58
  store ptr %i.ld, ptr %i.kv, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.lr.ph51.i.i:                                     ; preds = %.preheader.i.i, %.critedge5.i.i
  %.sroa.08.150.i.i = phi ptr [ %i.lw, %.critedge5.i.i ], [ %.sroa.08.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.le = getelementptr inbounds i8, ptr %.sroa.08.150.i.i, i64 -16
  %i.lf = tail call noundef zeroext i1 @_ZNK4llvm12VPRecipeBase5isPhiEv(ptr noundef nonnull align 8 dereferenceable(89) %i.le) #16
  br i1 %i.lf, label %bb.bp, label %.critedge5.i.i

bb.bp:                                            ; preds = %.lr.ph51.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.08.150.i.i, i64 72
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !177
  %i.li = icmp eq i8 %i.lh, 25
  br i1 %i.li, label %.critedge5.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lj = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !141
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 32 ; 3 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !142 ; 2 uses
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = icmp ult i64 %i.lq, 42
  br i1 %i.lr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ls = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lj, ptr noundef nonnull @.str.27, i64 noundef 42) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bs:                                            ; preds = %bb.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.ln, ptr noundef nonnull align 1 dereferenceable(42) @.str.27, i64 42, i1 false)
  %i.lt = load ptr, ptr %i.lm, align 8, !tbaa !142
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 42
  store ptr %i.lu, ptr %i.lm, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.critedge5.i.i:                                   ; preds = %bb.bp, %.lr.ph51.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.08.150.i.i, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !734 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.lw, %i.hh
  br i1 %.not26.i.i, label %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i, label %.lr.ph51.i.i, !llvm.loop !679

_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i: ; preds = %.critedge5.i.i, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.sroa.0193.0264.i = load ptr, ptr %i.hf, align 8, !tbaa !734 ; 3 uses
  %.not247265.i = icmp eq ptr %.sroa.0193.0264.i, %i.hh
  br i1 %.not247265.i, label %.preheader.i, label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %.sroa.0189.0340.pre.i = load ptr, ptr %i.hf, align 8, !tbaa !734
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i
  %.sroa.0189.0340.i = phi ptr [ %.sroa.0189.0340.pre.i, %.preheader.loopexit.i ], [ %.sroa.0193.0264.i, %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i ] ; 2 uses
  %.not248341.i = icmp eq ptr %.sroa.0189.0340.i, %i.hh
  br i1 %.not248341.i, label %._crit_edge344.i, label %.lr.ph343.i

.lr.ph343.i:                                      ; preds = %.preheader.i
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.mk = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.mq = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %.sroa.4.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mv = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.nc = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ni = ptrtoint ptr %i.a to i64
  %i.nj = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.nk = insertelement <2 x ptr> %i.nj, ptr %i.b, i64 1
  %i.nl = ptrtoint <2 x ptr> %i.nk to <2 x i64>
  br label %bb.bt

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i, %.lr.ph.i
  %.sroa.0193.0267.i = phi ptr [ %.sroa.0193.0.i, %.lr.ph.i ], [ %.sroa.0193.0264.i, %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i ] ; 2 uses
  %.096266.i = phi i32 [ %i.nn, %.lr.ph.i ], [ 0, %_ZN12_GLOBAL__N_113VPlanVerifier16verifyPhiRecipesEPKN4llvm12VPBasicBlockE.exit.i ] ; 2 uses
  %i.nm = getelementptr inbounds i8, ptr %.sroa.0193.0267.i, i64 -16
  %i.nn = add i32 %.096266.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store ptr %i.nm, ptr %i.e, align 8, !tbaa !266
  %i.no = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12VPRecipeBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.no, 0
  %i.np = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i32 %.096266.i, ptr %i.np, align 4, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0193.0267.i, i64 8
  %.sroa.0193.0.i = load ptr, ptr %i.nq, align 8, !tbaa !734 ; 2 uses
  %.not247.i = icmp eq ptr %.sroa.0193.0.i, %i.hh
  br i1 %.not247.i, label %.preheader.loopexit.i, label %.lr.ph.i

bb.bt:                                            ; preds = %.critedge118.i, %.lr.ph343.i
  %.sroa.0189.0342.i = phi ptr [ %.sroa.0189.0340.i, %.lr.ph343.i ], [ %.sroa.0189.0.i, %.critedge118.i ] ; 10 uses
  %i.nr = getelementptr inbounds i8, ptr %.sroa.0189.0342.i, i64 -16
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0189.0342.i, i64 72 ; 5 uses
  %i.nt = load i8, ptr %i.ns, align 8, !tbaa !177 ; 2 uses
  %i.nu = icmp eq i8 %i.nt, 4
  br i1 %i.nu, label %bb.bu, label %.critedge.i

bb.bu:                                            ; preds = %bb.bt
  %i.nv = load i8, ptr %i.h, align 8, !tbaa !152
  %i.nw = icmp eq i8 %i.nv, 2
  br i1 %i.nw, label %.critedge.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nx = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !141
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 32 ; 3 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !142 ; 2 uses
  %i.oc = ptrtoint ptr %i.nz to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = icmp ult i64 %i.oe, 17
  br i1 %i.of, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.og = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.nx, ptr noundef nonnull @.str.14, i64 noundef 17) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ob, ptr noundef nonnull align 1 dereferenceable(17) @.str.14, i64 17, i1 false)
  %i.oh = load ptr, ptr %i.oa, align 8, !tbaa !142
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 17
  store ptr %i.oi, ptr %i.oa, align 8, !tbaa !142
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.bx, %bb.bw
  %i.oj = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !141
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 32 ; 3 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !142 ; 2 uses
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = ptrtoint ptr %i.on to i64
end_hunk_0
