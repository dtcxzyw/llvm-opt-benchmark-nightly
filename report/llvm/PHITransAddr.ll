Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PHITransAddr?download=true
inline.NumInlined: 843
inline.NumDeleted: 517
begin_hunk_0_@_ZN4llvm12PHITransAddr16translateSubExprEPNS_5ValueEPNS_10BasicBlockES4_PKNS_13DominatorTreeES2_b:bb.a

bb.an:                                            ; preds = %.lr.ph, %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284
  %.0204453 = phi ptr [ %i.ea, %.lr.ph ], [ %i.en, %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284 ] ; 2 uses
  %i.ed = load ptr, ptr %.0204453, align 8, !tbaa !54 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !46
  %i.ef = icmp ult i8 %i.ee, 30
  br i1 %i.ef, label %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = load i32, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.eh = load i32, ptr %i.ec, align 4, !tbaa !35
  %.not.i.i283 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i.i283, label %bb.aq, label %bb.ap, !prof !52

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.ed)
  br label %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284

bb.aq:                                            ; preds = %bb.ao
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr %i.ed, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.f, align 8, !tbaa !34
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.f, align 8, !tbaa !34
  br label %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284

_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284: ; preds = %bb.an, %bb.ap, %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %.0204453, i64 32 ; 2 uses
  %.not241 = icmp eq ptr %i.en, %i.eb
  br i1 %.not241, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread.loopexit, label %bb.an

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread.loopexit: ; preds = %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit284
  %.pre508 = load i8, ptr %1, align 8, !tbaa !46
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread: ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread.loopexit, %_ZN4llvm4User8operandsEv.exit, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit
  %i.eo = phi i8 [ %.pre508, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread.loopexit ], [ %i.bw, %_ZN4llvm4User8operandsEv.exit ], [ %i.b, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.b, %._crit_edge.i.i.i.i ], [ %i.b, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit ] ; 2 uses
  %i.ep = add i8 %i.eo, -83
  %i.eq = icmp ult i8 %i.ep, -14
  br i1 %i.eq, label %.thread382, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread
  %i.er = getelementptr inbounds i8, ptr %1, i64 -32 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !54
  %i.et = tail call noundef ptr @_ZN4llvm12PHITransAddr16translateSubExprEPNS_5ValueEPNS_10BasicBlockES4_PKNS_13DominatorTreeES2_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.es, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) ; 5 uses
  %.not243 = icmp eq ptr %i.et, null
  br i1 %.not243, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !54
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ew = load i8, ptr %1, align 8, !tbaa !46
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ex, -30
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !81
  %i.fe = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !82
  store <2 x ptr> %i.fe, ptr %7, align 16, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %i.ff, align 16, !tbaa !83
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.fd, ptr %i.fg, align 8, !tbaa !89
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.fi, align 8, !tbaa !90
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 57
  store i8 1, ptr %i.fj, align 1, !tbaa !91
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 58
  store i8 0, ptr %i.fk, align 2, !tbaa !92
  %i.fl = call noundef ptr @_ZN4llvm16simplifyCastInstEjPNS_5ValueEPNS_4TypeERKNS_13SimplifyQueryE(i32 noundef %i.ey, ptr noundef nonnull %i.et, ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(59) %7) #14 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %.not244 = icmp eq ptr %i.fl, null
  br i1 %.not244, label %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit287, label %bb.au

bb.au:                                            ; preds = %bb.at
  call fastcc void @_ZL16RemoveInstInputsPN4llvm5ValueERNS_15SmallVectorImplIPNS_11InstructionEEE(ptr noundef nonnull %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !46
  %i.fn = icmp ult i8 %i.fm, 30
  br i1 %i.fn, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = load i32, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !35
  %.not.i.i286 = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i.i286, label %bb.ax, label %bb.aw, !prof !52

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.fl)
  br label %_ZL11canPHITransPN4llvm11InstructionE.exit

bb.ax:                                            ; preds = %bb.av
  %i.fr = zext i32 %i.fo to i64
  %i.fs = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fr
  store ptr %i.fl, ptr %i.ft, align 1
  %i.fu = load i32, ptr %i.f, align 8, !tbaa !34
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.f, align 8, !tbaa !34
  br label %_ZL11canPHITransPN4llvm11InstructionE.exit

_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit287: ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %.sroa.0341.0454 = load ptr, ptr %i.fw, align 8, !tbaa !53 ; 2 uses
  %.not424455 = icmp eq ptr %.sroa.0341.0454, null
  br i1 %.not424455, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %.lr.ph457

.lr.ph457:                                        ; preds = %_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE.exit287
  %.not246 = icmp eq ptr %4, null
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph457, %bb.bd
  %.sroa.0341.0456 = phi ptr [ %.sroa.0341.0454, %.lr.ph457 ], [ %.sroa.0341.0, %bb.bd ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0341.0456, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !93 ; 5 uses
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !46  ; 2 uses
  %i.ga = add i8 %i.fz, -83
  %i.gb = icmp ult i8 %i.ga, -14
  br i1 %i.gb, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gc = load i8, ptr %1, align 8, !tbaa !46
  %i.gd = icmp eq i8 %i.fz, %i.gc
  br i1 %i.gd, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !80
  %i.gg = load ptr, ptr %i.ez, align 8, !tbaa !80
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not246, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60
  %i.gk = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %4, ptr noundef %i.gj, ptr noundef %3) #14
  br i1 %i.gk, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.ba, %bb.bc, %bb.ay
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0341.0456, i64 8
  %.sroa.0341.0 = load ptr, ptr %i.gl, align 8, !tbaa !53 ; 2 uses
  %.not424 = icmp eq ptr %.sroa.0341.0, null
  br i1 %.not424, label %_ZL11canPHITransPN4llvm11InstructionE.exit, label %bb.ay

.thread382:                                       ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_11InstructionELj4EEES3_EEbOT_RKT0_.exit.thread
  switch i8 %i.eo, label %_ZL11canPHITransPN4llvm11InstructionE.exit [
    i8 65, label %bb.be
    i8 44, label %bb.ca
  ]

bb.be:                                            ; preds = %.thread382
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.gm, ptr %8, align 8, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  store i32 0, ptr %i.gn, align 8, !tbaa !34
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 8, ptr %i.go, align 4, !tbaa !35
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gq = load i32, ptr %i.gp, align 4            ; 3 uses
  %i.gr = and i32 %i.gq, 1073741824
  %.not.i.i.i.i291 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i.i291, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = getelementptr inbounds i8, ptr %1, i64 -8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !53
  %.pre.i.i292 = and i32 %i.gq, 268435455
  %.pre1.i.i293 = zext nneg i32 %.pre.i.i292 to i64
  br label %_ZN4llvm4User8operandsEv.exit297

bb.bg:                                            ; preds = %bb.be
  %i.gu = and i32 %i.gq, 268435455
  %i.gv = zext nneg i32 %i.gu to i64              ; 2 uses
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds [32 x i8], ptr %1, i64 %i.gw
  br label %_ZN4llvm4User8operandsEv.exit297

_ZN4llvm4User8operandsEv.exit297:                 ; preds = %bb.bf, %bb.bg
  %i.gy = phi ptr [ %i.gt, %bb.bf ], [ %i.gx, %bb.bg ] ; 2 uses
  %.pre-phi2.i.i294 = phi i64 [ %.pre1.i.i293, %bb.bf ], [ %i.gv, %bb.bg ] ; 2 uses
  %.idx493 = shl nuw nsw i64 %.pre-phi2.i.i294, 5
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx493
  %.not248462 = icmp eq i64 %.pre-phi2.i.i294, 0
  br i1 %.not248462, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %.lr.ph465

.lr.ph465:                                        ; preds = %_ZN4llvm4User8operandsEv.exit297, %bb.bk
  %.0213464 = phi ptr [ %i.hl, %bb.bk ], [ %i.gy, %_ZN4llvm4User8operandsEv.exit297 ] ; 2 uses
  %.0214463 = phi i1 [ %i.hd, %bb.bk ], [ false, %_ZN4llvm4User8operandsEv.exit297 ]
  %i.ha = load ptr, ptr %.0213464, align 8, !tbaa !54 ; 2 uses
  %i.hb = call noundef ptr @_ZN4llvm12PHITransAddr16translateSubExprEPNS_5ValueEPNS_10BasicBlockES4_PKNS_13DominatorTreeES2_b(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ha, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) ; 4 uses
  %.not249.not = icmp eq ptr %i.hb, null
  br i1 %.not249.not, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph465
  %i.hc = icmp ne ptr %i.hb, %i.ha
  %i.hd = or i1 %.0214463, %i.hc                  ; 2 uses
  %i.he = load i32, ptr %i.gn, align 8, !tbaa !34 ; 2 uses
  %i.hf = load i32, ptr %i.go, align 4, !tbaa !35
  %.not.i298 = icmp ult i32 %i.he, %i.hf
  br i1 %.not.i298, label %bb.bj, label %bb.bi, !prof !52

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.hb)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.hg = zext i32 %i.he to i64
  %i.hh = load ptr, ptr %8, align 8, !tbaa !21
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  store ptr %i.hb, ptr %i.hi, align 1
  %i.hj = load i32, ptr %i.gn, align 8, !tbaa !34
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.gn, align 8, !tbaa !34
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hl = getelementptr inbounds nuw i8, ptr %.0213464, i64 32 ; 2 uses
  %.not248 = icmp eq ptr %i.hl, %i.gz
  br i1 %.not248, label %._crit_edge, label %.lr.ph465

._crit_edge:                                      ; preds = %bb.bk
  br i1 %i.hd, label %bb.bl, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.bl:                                            ; preds = %._crit_edge
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !94
  %i.ho = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !96
  %i.hq = load i32, ptr %i.gn, align 8, !tbaa !34
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nsw i64 %i.hr, -1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hu = call i32 @_ZNK4llvm17GetElementPtrInst14getNoWrapFlagsEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !81
  %i.hy = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !82
  store <2 x ptr> %i.hy, ptr %9, align 16, !tbaa !82
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %4, ptr %i.hz, align 16, !tbaa !83
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !89
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ib, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ic, align 8, !tbaa !90
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 57
  store i8 1, ptr %i.id, align 1, !tbaa !91
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 58
  store i8 0, ptr %i.ie, align 2, !tbaa !92
  %i.if = call noundef ptr @_ZN4llvm15simplifyGEPInstEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS3_EENS_14GEPNoWrapFlagsERKNS_13SimplifyQueryE(ptr noundef %i.hn, ptr noundef %i.hp, ptr nonnull %i.ht, i64 %i.hs, i32 %i.hu, ptr noundef nonnull align 8 dereferenceable(59) %9) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %.not250 = icmp eq ptr %i.if, null
  %i.ig = load ptr, ptr %8, align 8, !tbaa !21    ; 3 uses
  br i1 %.not250, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ih = load i32, ptr %i.gn, align 8, !tbaa !34 ; 2 uses
  %i.ii = zext i32 %i.ih to i64
  %.idx494 = shl nuw nsw i64 %i.ii, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx494
  %.not251467 = icmp eq i32 %i.ih, 0
  br i1 %.not251467, label %._crit_edge471, label %.lr.ph470

.lr.ph470:                                        ; preds = %bb.bm, %.lr.ph470
  %.0217468 = phi ptr [ %i.il, %.lr.ph470 ], [ %i.ig, %bb.bm ] ; 2 uses
  %i.ik = load ptr, ptr %.0217468, align 8, !tbaa !96
  call fastcc void @_ZL16RemoveInstInputsPN4llvm5ValueERNS_15SmallVectorImplIPNS_11InstructionEEE(ptr noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.il = getelementptr inbounds nuw i8, ptr %.0217468, i64 8 ; 2 uses
  %.not251 = icmp eq ptr %i.il, %i.ij
  br i1 %.not251, label %._crit_edge471, label %.lr.ph470

._crit_edge471:                                   ; preds = %.lr.ph470, %bb.bm
  %i.im = call noundef ptr @_ZN4llvm12PHITransAddr10addAsInputEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.if)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit

bb.bn:                                            ; preds = %bb.bl
  %i.in = load ptr, ptr %i.ig, align 8, !tbaa !96 ; 2 uses
  %i.io = load i8, ptr %i.in, align 8, !tbaa !46
  %i.ip = icmp ult i8 %i.io, 11
  br i1 %i.ip, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %.sroa.0329.0472 = load ptr, ptr %i.iq, align 8, !tbaa !53 ; 2 uses
  %.not426473 = icmp eq ptr %.sroa.0329.0472, null
  br i1 %.not426473, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %.lr.ph476

.lr.ph476:                                        ; preds = %bb.bo
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not253 = icmp eq ptr %4, null
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph476, %.loopexit
  %.sroa.0329.0474 = phi ptr [ %.sroa.0329.0472, %.lr.ph476 ], [ %.sroa.0329.0, %.loopexit ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0329.0474, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !93 ; 8 uses
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !46
  %.not577 = icmp eq i8 %i.iv, 65
  br i1 %.not577, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !80
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !80
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !94
  %i.jc = load ptr, ptr %i.hm, align 8, !tbaa !94
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %bb.br
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = and i32 %i.jf, 268435455                ; 3 uses
  %i.jh = load i32, ptr %i.gn, align 8, !tbaa !34
  %i.ji = icmp eq i32 %i.jh, %i.jg
  br i1 %i.ji, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !60 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !97
  %i.jn = load ptr, ptr %i.is, align 8, !tbaa !97
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not253, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jp = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %4, ptr noundef nonnull %i.jk, ptr noundef %3) #14
  br i1 %i.jp, label %._crit_edge510, label %.loopexit

._crit_edge510:                                   ; preds = %bb.bv
  %.pre511 = load i32, ptr %i.gn, align 8, !tbaa !34
  %.pre512 = load i32, ptr %i.je, align 4
  %.pre513 = and i32 %.pre512, 268435455
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge510, %bb.bu
  %.pre-phi = phi i32 [ %.pre513, %._crit_edge510 ], [ %i.jg, %bb.bu ]
  %i.jq = phi i32 [ %.pre511, %._crit_edge510 ], [ %i.jg, %bb.bu ] ; 2 uses
  %i.jr = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.js = zext i32 %i.jq to i64
  %.idx = shl nuw nsw i64 %i.js, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx
  %.not9.i.i.i.i = icmp eq i32 %i.jq, 0
  br i1 %.not9.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %.lr.ph.i.i.i.i306.preheader

.lr.ph.i.i.i.i306.preheader:                      ; preds = %bb.bw
  %i.ju = zext nneg i32 %.pre-phi to i64
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds [32 x i8], ptr %i.iu, i64 %i.jv
  br label %.lr.ph.i.i.i.i306

.lr.ph.i.i.i.i306:                                ; preds = %.lr.ph.i.i.i.i306.preheader, %bb.bx
  %.011.i.i.i.i = phi ptr [ %i.kb, %bb.bx ], [ %i.jw, %.lr.ph.i.i.i.i306.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ka, %bb.bx ], [ %i.jr, %.lr.ph.i.i.i.i306.preheader ] ; 2 uses
  %i.jx = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !96
  %i.jy = load ptr, ptr %.011.i.i.i.i, align 8, !tbaa !54
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i306
  %i.ka = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32
  %.not.i.i.i.i307 = icmp eq ptr %i.ka, %i.jt
  br i1 %.not.i.i.i.i307, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %.lr.ph.i.i.i.i306, !llvm.loop !110

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i306, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bp
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0329.0474, i64 8
  %.sroa.0329.0 = load ptr, ptr %i.kc, align 8, !tbaa !53 ; 2 uses
  %.not426 = icmp eq ptr %.sroa.0329.0, null
  br i1 %.not426, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit, label %bb.bp

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit: ; preds = %.lr.ph465, %bb.bw, %.loopexit, %bb.bx, %_ZN4llvm4User8operandsEv.exit297, %bb.bo, %bb.bn, %._crit_edge471, %._crit_edge
  %.18 = phi ptr [ %1, %_ZN4llvm4User8operandsEv.exit297 ], [ %i.im, %._crit_edge471 ], [ %1, %._crit_edge ], [ null, %bb.bn ], [ %i.iu, %bb.bx ], [ null, %.loopexit ], [ null, %bb.bo ], [ %i.iu, %bb.bw ], [ null, %.lr.ph465 ]
  %i.kd = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.gm
  br i1 %i.ke, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  call void @free(ptr noundef %i.kd) #14
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZL11canPHITransPN4llvm11InstructionE.exit

bb.ca:                                            ; preds = %.thread382
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4            ; 3 uses
  %i.kh = and i32 %i.kg, 1073741824
  %.not.i.i308 = icmp eq i32 %i.kh, 0             ; 2 uses
  br i1 %.not.i.i308, label %_ZNK4llvm4User10getOperandEj.exit, label %_ZNK4llvm4User10getOperandEj.exit.thread

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.ca
  %i.ki = and i32 %i.kg, 268435455
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = sub nsw i64 0, %i.kj                    ; 2 uses
  %i.kl = getelementptr inbounds [32 x i8], ptr %1, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !54
  %i.ko = load i8, ptr %i.kn, align 8, !tbaa !46
  %i.kp = icmp eq i8 %i.ko, 5
  br i1 %i.kp, label %bb.cb, label %_ZL11canPHITransPN4llvm11InstructionE.exit

_ZNK4llvm4User10getOperandEj.exit.thread:         ; preds = %bb.ca
  %i.kq = getelementptr inbounds i8, ptr %1, i64 -8
end_hunk_0
