Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatDiscreet1DL?download=true
inline.NumInlined: 455
inline.NumDeleted: 212
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

bb.ad:                                            ; preds = %.critedge94.i
  %.not195.i = icmp eq i32 %i.cr, 2
  br i1 %.not195.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store i32 0, ptr %i.m, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store i8 32, ptr %i.n, align 1, !tbaa !25
  %i.ec = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #28 ; 0 uses
  %i.ed = load i32, ptr %i.m, align 4, !tbaa !33  ; 2 uses
  %i.ee = load i8, ptr %i.n, align 1, !tbaa !25
  %i.ef = and i8 %i.ee, -33
  %i.eg = icmp eq i8 %i.ef, 70
  %i.eh = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ed)
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %.split.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i

.split.i.i:                                       ; preds = %bb.ae
  %i.ej = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ed, i1 true) ; 4 uses
  switch i32 %i.ej, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i [
    i32 8, label %bb.ah
    i32 10, label %bb.ah
    i32 12, label %bb.ah
    i32 16, label %bb.af
  ]

bb.af:                                            ; preds = %.split.i.i
  %i.ek = select i1 %i.eg, i32 -16, i32 16
  br label %bb.ah

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i: ; preds = %.split.i.i, %bb.ae
  %i.el = load i64, ptr %i.q, align 8, !tbaa !24
  %i.em = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #28
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.el, ptr noundef nonnull %i.h, i64 noundef %i.em)
          to label %.thread184.i unwind label %bb.ag ; 0 uses

.thread184.i:                                     ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

bb.ag:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %bb.ak

bb.ah:                                            ; preds = %.split.i.i, %.split.i.i, %bb.af, %.split.i.i
  %.0.i.ph.i = phi i32 [ %i.ej, %.split.i.i ], [ %i.ej, %.split.i.i ], [ %i.ek, %bb.af ], [ %i.ej, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  %.pre = load i32, ptr %i.j, align 4, !tbaa !33
  %.pre196 = load i32, ptr %i.k, align 4, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.ep = phi i32 [ %.pre196, %bb.ah ], [ %i.dv, %bb.ad ]
  %i.eq = phi i32 [ %.pre, %bb.ah ], [ %i.ds, %bb.ad ]
  %.065.i = phi i32 [ %.0.i.ph.i, %bb.ah ], [ 0, %bb.ad ]
  %i.er = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef %i.i, i32 noundef %i.eq, i32 noundef %i.ep)
          to label %bb.aj unwind label %bb.ac     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %spec.select = select i1 %i.er, i32 0, i32 3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %bb.aj, %.critedge94.thread.i, %.thread184.i
  %.272.i = phi i32 [ %spec.select, %bb.aj ], [ 4, %.thread184.i ], [ 4, %.critedge94.thread.i ] ; 2 uses
  %.166.i = phi i32 [ %.065.i, %bb.aj ], [ 0, %.thread184.i ], [ 0, %.critedge94.thread.i ]
  %i.es = phi i1 [ %i.er, %bb.aj ], [ false, %.thread184.i ], [ false, %.critedge94.thread.i ]
  %i.et = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.cs
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.ev = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  br i1 %i.es, label %bb.al, label %bb.db

bb.ak:                                            ; preds = %bb.ag, %bb.ac
  %.pn85.i = phi { ptr, i32 } [ %i.eb, %bb.ac ], [ %i.eo, %bb.ag ]
  %i.ex = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cs
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i: ; preds = %bb.ak
  %i.ez = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  br label %bb.cz

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.177.i = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i ]
  %.373.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.272.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i ]
  %.267.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.166.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i ] ; 2 uses
  %i.fb = load i32, ptr %i.j, align 4, !tbaa !33  ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !32  ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.promoted154 = load i32, ptr %i.o, align 4
  br label %bb.am

bb.am:                                            ; preds = %.loopexit196.i, %.lr.ph.i
  %.lcssa153156 = phi i32 [ %.promoted154, %.lr.ph.i ], [ %.lcssa153155, %.loopexit196.i ] ; 2 uses
  %i.fh = phi i32 [ %i.fb, %.lr.ph.i ], [ %i.ko, %.loopexit196.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit196.i ] ; 2 uses
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !38
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.i
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !40
  %i.fl = load i32, ptr %i.k, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.fm = load ptr, ptr %2, align 8, !tbaa !17
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8            ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %2, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !49
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i.i, label %.loopexit196.i

.lr.ph.i.i:                                       ; preds = %bb.am, %bb.bs
  %i.ft = phi i64 [ %i.js, %bb.bs ], [ %i.fo, %bb.am ]
  %i.fu = phi i32 [ %i.fv, %bb.bs ], [ %.lcssa153156, %bb.am ]
  %.01737.i.i = phi i32 [ %.118.i.i, %bb.bs ], [ %.177.i, %bb.am ] ; 3 uses
  %i.fv = add nsw i32 %i.fu, 1                    ; 7 uses
  %i.fw = getelementptr inbounds i8, ptr %2, i64 %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 240
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !57 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.an
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !62
  %.not.i1.i.i.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i1.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 67
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !25
  br label %_ZNSi7getlineEPcl.exit.i.i

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fy)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.ap
  %i.gd = load ptr, ptr %i.fy, align 8, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = invoke noundef signext i8 %i.gf(ptr noundef nonnull align 8 dereferenceable(570) %i.fy, i8 noundef signext 10)
          to label %_ZNSi7getlineEPcl.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !91

_ZNSi7getlineEPcl.exit.i.i:                       ; preds = %.noexc52, %bb.ao
  %.0.i.i.i.i125.i = phi i8 [ %i.gc, %bb.ao ], [ %i.gg, %.noexc52 ]
  %i.gh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 200, i8 noundef signext %.0.i.i.i.i125.i)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc54:                                         ; preds = %_ZNSi7getlineEPcl.exit.i.i
  %i.gi = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %2, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aq, label %.loopexit.i.loopexit

bb.aq:                                            ; preds = %.noexc54
  %i.gp = load i8, ptr %i.e, align 16, !tbaa !25
  %.not.i.i126.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i126.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i, label %.preheader28.i.i.i

.preheader28.i.i.i:                               ; preds = %bb.aq, %bb.as
  %indvars.iv.i.i.i = phi i16 [ %indvars.iv.next.i.i.i, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %.021.i.i.i = phi i16 [ %i.gq, %bb.as ], [ -1, %bb.aq ] ; 2 uses
  %i.gq = add i16 %.021.i.i.i, 1                  ; 2 uses
  %i.gr = sext i16 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.e, i64 %i.gr ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !25
  switch i8 %i.gt, label %bb.as [
    i8 0, label %.preheader27.preheader.i.i.i
    i8 9, label %bb.ar
  ]

.preheader27.preheader.i.i.i:                     ; preds = %.preheader28.i.i.i
  %i.gu = zext i16 %indvars.iv.i.i.i to i64
  %smin.i.i.i = call i16 @llvm.smin.i16(i16 %.021.i.i.i, i16 -1)
  %i.gv = add nsw i16 %smin.i.i.i, 1
  br label %.preheader27.i.i.i

bb.ar:                                            ; preds = %.preheader28.i.i.i
  store i8 32, ptr %i.gs, align 1, !tbaa !25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.preheader28.i.i.i
  %indvars.iv.next.i.i.i = add i16 %indvars.iv.i.i.i, 1
  br label %.preheader28.i.i.i, !llvm.loop !0

.preheader27.i.i.i:                               ; preds = %bb.at, %.preheader27.preheader.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %i.gu, %.preheader27.preheader.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.at ] ; 2 uses
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1 ; 3 uses
  %i.gw = and i64 %indvars.iv.next32.i.i.i, 32768
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.at, label %.critedge.i.i127.i

bb.at:                                            ; preds = %.preheader27.i.i.i
  %i.gy = and i64 %indvars.iv.next32.i.i.i, 32767
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !25
  %i.hb = icmp eq i8 %i.ha, 32
  br i1 %i.hb, label %.preheader27.i.i.i, label %.critedge.split.loop.exit35.i.i.i, !llvm.loop !1

.critedge.split.loop.exit35.i.i.i:                ; preds = %bb.at
  %i.hc = trunc nuw i64 %indvars.iv31.i.i.i to i16
  br label %.critedge.i.i127.i

.critedge.i.i127.i:                               ; preds = %.preheader27.i.i.i, %.critedge.split.loop.exit35.i.i.i
  %.1.lcssa.i.i.i = phi i16 [ %i.hc, %.critedge.split.loop.exit35.i.i.i ], [ %i.gv, %.preheader27.i.i.i ]
  %i.hd = sext i16 %.1.lcssa.i.i.i to i64
  %i.he = getelementptr inbounds i8, ptr %i.e, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !25
  %.not24.i.i.i = icmp eq i8 %i.hf, 0
  br i1 %.not24.i.i.i, label %.preheader329, label %bb.au

bb.au:                                            ; preds = %.critedge.i.i127.i
  store i8 0, ptr %i.he, align 1, !tbaa !25
  br label %.preheader329

.preheader329:                                    ; preds = %bb.au, %.critedge.i.i127.i
  br label %bb.av

bb.av:                                            ; preds = %.preheader329, %bb.av
  %.2.i.i.i = phi i16 [ %i.hg, %bb.av ], [ -1, %.preheader329 ]
  %i.hg = add i16 %.2.i.i.i, 1                    ; 4 uses
  %i.hh = sext i16 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %i.e, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !25
  %i.hk = icmp eq i8 %i.hj, 32
  br i1 %i.hk, label %bb.av, label %bb.aw, !llvm.loop !2

bb.aw:                                            ; preds = %bb.av
  %.not25.i.i.i = icmp eq i16 %i.hg, 0
  br i1 %.not25.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.aw, %.preheader.i.i.i
  %.3.i.i.i = phi i16 [ %i.hl, %.preheader.i.i.i ], [ %i.hg, %bb.aw ] ; 2 uses
  %.0.i.i.i = phi i16 [ %i.hp, %.preheader.i.i.i ], [ 0, %bb.aw ] ; 2 uses
  %i.hl = add i16 %.3.i.i.i, 1
  %i.hm = sext i16 %.3.i.i.i to i64
  %i.hn = getelementptr inbounds i8, ptr %i.e, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !25  ; 2 uses
  %i.hp = add i16 %.0.i.i.i, 1
  %i.hq = sext i16 %.0.i.i.i to i64
  %i.hr = getelementptr inbounds i8, ptr %i.e, i64 %i.hq
  store i8 %i.ho, ptr %i.hr, align 1, !tbaa !25
  %.not26.i.i.i = icmp eq i8 %i.ho, 0
  br i1 %.not26.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3

_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i: ; preds = %.preheader.i.i.i, %bb.aw, %bb.aq
  %i.hs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #32 ; 2 uses
  %.not.i23.i.i = icmp eq i64 %i.hs, 0
  br i1 %.not.i23.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i
  %i.ht = getelementptr i8, ptr %i.e, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1     ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !25
  switch i8 %i.hv, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i [
    i8 10, label %bb.ay
    i8 13, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  store i8 0, ptr %i.hu, align 1, !tbaa !25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i: ; preds = %bb.ay, %bb.ax, %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i
  %i.hw = load i8, ptr %i.e, align 16, !tbaa !25  ; 2 uses
  %i.hx = sext i8 %i.hw to i32
  %isdigittmp.i.i = add nsw i32 %i.hx, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.az, label %bb.bq

bb.az:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %i.ff, ptr %7, align 8, !tbaa !21
  %i.hy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.hy, ptr %i.d, align 8, !tbaa !34
  %i.hz = icmp ugt i64 %i.hy, 15
  br i1 %i.hz, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.az
  %i.ia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i130.i unwind label %bb.bm ; 2 uses

.noexc.i130.i:                                    ; preds = %.noexc.i.i.i
  store ptr %i.ia, ptr %7, align 8, !tbaa !30
  %i.ib = load i64, ptr %i.d, align 8, !tbaa !34
  store i64 %i.ib, ptr %i.ff, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i130.i, %bb.az
  %i.ic = phi ptr [ %i.ia, %.noexc.i130.i ], [ %i.ff, %bb.az ] ; 2 uses
  switch i64 %i.hy, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i
  %i.id = load i8, ptr %i.e, align 16, !tbaa !25
  store i8 %i.id, ptr %i.ic, align 1, !tbaa !25
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ic, ptr nonnull align 16 %i.e, i64 %i.hy, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i.i
  %i.ie = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  store i64 %i.ie, ptr %i.fg, align 8, !tbaa !24
  %i.if = load ptr, ptr %7, align 8, !tbaa !30
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ie
  store i8 0, ptr %i.ig, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.ih = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ii = tail call ptr @__errno_location() #30   ; 6 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !33 ; 2 uses
  store i32 0, ptr %i.ii, align 4, !tbaa !33
  %i.ik = call noundef i64 @__isoc23_strtol(ptr noundef %i.ih, ptr noundef nonnull %i.c, i32 noundef 10) ; 2 uses
  %i.il = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.im = icmp eq ptr %i.il, %i.ih
  br i1 %i.im, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.fv, ptr %i.o, align 4, !tbaa !33
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.13) #31
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %.critedge.i.i.i.i, %bb.bd
  %i.in = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.io = load i32, ptr %i.ii, align 4, !tbaa !33
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.bg, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !33
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i: ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.iq = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ff
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i

bb.bh:                                            ; preds = %bb.bc
  %i.is = load i32, ptr %i.ii, align 4, !tbaa !33 ; 2 uses
  %i.it = icmp eq i32 %i.is, 34
  %i.iu = add i64 %i.ik, -2147483648
  %i.iv = icmp ult i64 %i.iu, -4294967296
  %or.cond.i.i.i.i = or i1 %i.iv, %i.it
  br i1 %or.cond.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bj

.critedge.i.i.i.i:                                ; preds = %bb.bh
  store i32 %i.fv, ptr %i.o, align 4, !tbaa !33
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.13) #31
          to label %bb.bi unwind label %bb.bf

bb.bi:                                            ; preds = %.critedge.i.i.i.i
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.iw = icmp eq i32 %i.is, 0
  br i1 %i.iw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ix = trunc i64 %i.ik to i16
  %i.iy = add nsw i32 %.01737.i.i, 1              ; 2 uses
  %i.iz = sext i32 %.01737.i.i to i64
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.iz
  store i16 %i.ix, ptr %i.ja, align 2, !tbaa !108
  %i.jb = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.ff
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59ExceptionC1EPKc
; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils9IMLutFreeEPPNS1_11IMLutStructE(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, label %.preheader13.i

.preheader13.i:                                   ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph18.i, label %._crit_edge19.i

._crit_edge19.loopexit.i:                         ; preds = %bb.d
  %.pre25.i = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %._crit_edge19.loopexit.i, %.preheader13.i
  %i.f = phi ptr [ %.pre25.i, %._crit_edge19.loopexit.i ], [ %i.c, %.preheader13.i ]
  tail call void @free(ptr noundef %i.f) #28
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit

.lr.ph18.i:                                       ; preds = %.preheader13.i, %bb.d
  %i.g = phi i32 [ %i.p, %bb.d ], [ %i.d, %.preheader13.i ] ; 2 uses
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %bb.d ], [ 0, %.preheader13.i ] ; 6 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv22.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  %.not12.i = icmp eq ptr %i.j, null
  br i1 %.not12.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph18.i
  %.not20.i = icmp eq i64 %indvars.iv22.i, 0
  br i1 %.not20.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv22.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i
  %.0.lcssa.ph.in.i = phi i64 [ %indvars.iv22.i, %bb.c ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.n = and i64 %.0.lcssa.ph.in.i, 4294967295
  %i.o = icmp eq i64 %i.n, %indvars.iv22.i
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader.i
  tail call void @free(ptr noundef %i.j) #28
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %.lr.ph18.i
  %i.p = phi i32 [ %i.g, %._crit_edge.i ], [ %.pre.i, %._crit_edge.thread.i ], [ %i.g, %.lr.ph18.i ] ; 2 uses
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next23.i, %i.q
  br i1 %i.r, label %.lr.ph18.i, label %._crit_edge19.loopexit.i, !llvm.loop !5

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit: ; preds = %bb.b, %._crit_edge19.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #29
  store ptr null, ptr %0, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !70
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28, !inline_history !7
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindNonCommentERSiRiPci(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !49
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit
  %i.h = phi i64 [ %i.bg, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit ], [ %i.c, %bb.a ]
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !62
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  br label %_ZNSi7getlineEPcl.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10), !inline_history !172
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, i64 noundef 200, i8 noundef signext %.0.i.i.i) ; 0 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !33
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %1, align 4, !tbaa !33
  %i.w = load i8, ptr %2, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader28.i

.preheader28.i:                                   ; preds = %_ZNSi7getlineEPcl.exit, %bb.f
  %indvars.iv.i = phi i16 [ %indvars.iv.next.i, %bb.f ], [ 0, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  %.021.i = phi i16 [ %i.x, %bb.f ], [ -1, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  %i.x = add i16 %.021.i, 1                       ; 2 uses
  %i.y = sext i16 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25
  switch i8 %i.aa, label %bb.f [
    i8 0, label %.preheader27.preheader.i
    i8 9, label %bb.e
  ]

.preheader27.preheader.i:                         ; preds = %.preheader28.i
  %i.ab = zext i16 %indvars.iv.i to i64
  %smin.i = tail call i16 @llvm.smin.i16(i16 %.021.i, i16 -1)
  %i.ac = add nsw i16 %smin.i, 1
  br label %.preheader27.i

bb.e:                                             ; preds = %.preheader28.i
  store i8 32, ptr %i.z, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader28.i
  %indvars.iv.next.i = add i16 %indvars.iv.i, 1
  br label %.preheader28.i, !llvm.loop !0

.preheader27.i:                                   ; preds = %bb.g, %.preheader27.preheader.i
  %indvars.iv31.i = phi i64 [ %i.ab, %.preheader27.preheader.i ], [ %indvars.iv.next32.i, %bb.g ] ; 2 uses
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, -1 ; 3 uses
  %i.ad = and i64 %indvars.iv.next32.i, 32768
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader27.i
  %i.af = and i64 %indvars.iv.next32.i, 32767
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = icmp eq i8 %i.ah, 32
  br i1 %i.ai, label %.preheader27.i, label %.critedge.split.loop.exit35.i, !llvm.loop !1

.critedge.split.loop.exit35.i:                    ; preds = %bb.g
  %i.aj = trunc nuw i64 %indvars.iv31.i to i16
  br label %.critedge.i

.critedge.i:                                      ; preds = %.preheader27.i, %.critedge.split.loop.exit35.i
  %.1.lcssa.i = phi i16 [ %i.aj, %.critedge.split.loop.exit35.i ], [ %i.ac, %.preheader27.i ]
  %i.ak = sext i16 %.1.lcssa.i to i64
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !25
  %.not24.i = icmp eq i8 %i.am, 0
  br i1 %.not24.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  store i8 0, ptr %i.al, align 1, !tbaa !25
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %.critedge.i
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  %.2.i = phi i16 [ %i.an, %bb.i ], [ -1, %.preheader ]
  %i.an = add i16 %.2.i, 1                        ; 4 uses
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %bb.i, label %bb.j, !llvm.loop !2

bb.j:                                             ; preds = %bb.i
  %.not25.i = icmp eq i16 %i.an, 0
  br i1 %.not25.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.3.i = phi i16 [ %i.as, %.preheader.i ], [ %i.an, %bb.j ] ; 2 uses
  %.0.i = phi i16 [ %i.aw, %.preheader.i ], [ 0, %bb.j ] ; 2 uses
  %i.as = add i16 %.3.i, 1
  %i.at = sext i16 %.3.i to i64
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25  ; 2 uses
  %i.aw = add i16 %.0.i, 1
  %i.ax = sext i16 %.0.i to i64
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !25
  %.not26.i = icmp eq i8 %i.av, 0
  br i1 %.not26.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader.i, !llvm.loop !3

_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit: ; preds = %.preheader.i, %_ZNSi7getlineEPcl.exit, %bb.j
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32 ; 2 uses
  %.not.i11 = icmp eq i64 %i.az, 0
  br i1 %.not.i11, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  switch i8 %i.bc, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit [
    i8 10, label %bb.l
    i8 13, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i8 0, ptr %i.bb, align 1, !tbaa !25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, %bb.k, %bb.l
  %i.bd = load i8, ptr %2, align 1, !tbaa !25     ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.bd, 0
  %switch.selectcmp.case2 = icmp eq i8 %i.bd, 35
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.be = load ptr, ptr %0, align 8, !tbaa !17
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !49
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  %i.bl = and i1 %switch.selectcmp, %i.bk
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !173

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit, %bb.a
  %.lcssa13 = phi i1 [ false, %bb.a ], [ %i.bk, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit ]
  ret i1 %.lcssa13
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !67
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.split.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit

.split.i:                                         ; preds = %bb.b
  %i.g = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true) ; 2 uses
  %switch.tableidx = add nsw i32 %i.g, -8         ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 9
  br i1 %i.h, label %switch.lookup, label %.split.i31

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !66
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32

switch.lookup:                                    ; preds = %.split.i
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.split.i31

.split.i31:                                       ; preds = %switch.lookup, %.split.i
  %.sink = phi i32 [ 0, %.split.i ], [ %switch.load, %switch.lookup ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.k, align 8, !tbaa !66
  %switch.tableidx60 = add nsw i32 %i.g, -8       ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx60, 9
  br i1 %i.l, label %switch.lookup61, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32

switch.lookup61:                                  ; preds = %.split.i31
  %i.m = zext nneg i32 %switch.tableidx60 to i64
  %switch.gep62 = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii.13, i64 %i.m
  %switch.load63 = load i8, ptr %switch.gep62, align 1
  %switch.ext = zext i8 %switch.load63 to i32
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit, %.split.i31, %switch.lookup61
  %.0.i30 = phi i32 [ %switch.ext, %switch.lookup61 ], [ 0, %.split.i31 ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.0.i30, ptr %i.n, align 4, !tbaa !65
  %i.o = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #34 ; 3 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !38
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, label %.preheader

.preheader:                                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = zext nneg i32 %2 to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #29
  br label %bb.g

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !174

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #35 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.t, ptr %i.u, align 8, !tbaa !40
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %.lr.ph18.i36, label %bb.c

._crit_edge19.loopexit.i48:                       ; preds = %bb.f
  %.pre25.i49 = load ptr, ptr %i.c, align 8, !tbaa !38
  tail call void @free(ptr noundef %.pre25.i49) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #29
  br label %bb.g

.lr.ph18.i36:                                     ; preds = %bb.d, %bb.f
  %i.w = phi i32 [ %i.af, %bb.f ], [ %1, %bb.d ]  ; 2 uses
  %indvars.iv22.i37 = phi i64 [ %indvars.iv.next23.i47, %bb.f ], [ 0, %bb.d ] ; 6 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv22.i37
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 3 uses
  %.not12.i38 = icmp eq ptr %i.z, null
  br i1 %.not12.i38, label %bb.f, label %.preheader.i39

end_hunk_1
