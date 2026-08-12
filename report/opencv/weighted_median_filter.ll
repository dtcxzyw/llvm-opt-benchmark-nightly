inline.NumInlined: 464
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
bb.ar:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.as:                                            ; preds = %bb.ao
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn77 = phi { ptr, i32 } [ %i.bl, %bb.at ], [ %i.bk, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  br label %bb.jy

bb.av:                                            ; preds = %bb.aq, %_ZNK2cv11_InputArray6getMatEi.exit124
  %i.bm = phi ptr [ %.pre, %bb.aq ], [ %i.be, %_ZNK2cv11_InputArray6getMatEi.exit124 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #16
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %50, ptr noundef nonnull align 8 dereferenceable(208) %42)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.bq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %50)
          to label %bb.ay unwind label %bb.ba     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  br label %bb.bc

bb.az:                                            ; preds = %bb.aw
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn79 = phi { ptr, i32 } [ %i.bs, %bb.ba ], [ %i.br, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  br label %bb.jy

bb.bc:                                            ; preds = %bb.ay, %bb.av
  %i.bt = load i32, ptr %42, align 8, !tbaa !24
  %i.bu = lshr i32 %i.bt, 5
  %i.bv = and i32 %i.bu, 127                      ; 3 uses
  %i.bw = shl nuw nsw i32 %i.bv, 3
  %i.bx = add nuw nsw i32 %i.bw, 8
  %i.by = zext nneg i32 %i.bx to i64              ; 3 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #19
          to label %.noexc125 unwind label %bb.dk ; 6 uses

.noexc125:                                        ; preds = %bb.bc
  store ptr null, ptr %i.bz, align 8, !tbaa !35
  %i.ca = icmp eq i32 %i.bv, 0
  br i1 %i.ca, label %bb.bd, label %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc125
  %i.cb = getelementptr i8, ptr %i.bz, i64 8
  %i.cc = shl nuw nsw i32 %i.bv, 3
  %.idx.i.i.i.i.i.i.i = zext nneg i32 %i.cc to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %bb.bd

bb.bd:                                            ; preds = %_ZSt6fill_nIPPfmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc125
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #16
  %i.cd = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i32 0, ptr %i.cd, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %52, i64 20
  store i32 0, ptr %i.ce, align 4, !tbaa !38
  store i32 16842752, ptr %52, align 8, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %42, ptr %i.cf, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #16
  %i.cg = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i64 0, ptr %i.ch, align 8
  store i32 33882112, ptr %53, align 8, !tbaa !39
  store ptr %51, ptr %i.cg, align 8, !tbaa !18
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53)
          to label %bb.be unwind label %bb.dl

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.ck = load ptr, ptr %51, align 8, !tbaa !43   ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 208
  %i.cp = trunc i64 %i.co to i32
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.be
  %i.cr = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %24, i64 24
  br label %bb.dm

._crit_edge:                                      ; preds = %bb.fh, %bb.be
  %i.cu = fptrunc double %4 to float              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %29) #16
  %i.cv = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !45
  %i.cz = mul i32 %i.cy, %i.cw                    ; 3 uses
  %i.da = load i32, ptr %43, align 8, !tbaa !24
  %i.db = lshr i32 %i.da, 5
  %i.dc = and i32 %i.db, 127
  switch i32 %i.dc, label %.loopexit.i [
    i32 0, label %bb.bf
    i32 2, label %bb.bp
  ]

bb.bf:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  %i.dd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 0, ptr %i.de, align 8
  store i32 33619968, ptr %30, align 8, !tbaa !39
  store ptr %29, ptr %i.dd, align 8, !tbaa !18
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef 4, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  %i.df = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #19
          to label %.noexc.i unwind label %bb.bo  ; 12 uses

.noexc.i:                                         ; preds = %bb.bg
  %i.dg = invoke noalias noundef nonnull dereferenceable(262144) ptr @_Znam(i64 noundef 262144) #19
          to label %.noexc224.i unwind label %bb.bo ; 2 uses

.noexc224.i:                                      ; preds = %.noexc.i
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !35
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.noexc224.i
  %store_forwarded456 = phi ptr [ %i.dg, %.noexc224.i ], [ %i.du, %.lr.ph.i.i ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ 1, %.noexc224.i ], [ %indvars.iv.next.i.i.4, %.lr.ph.i.i ] ; 6 uses
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %store_forwarded456, i64 1024
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !35
  %i.dj = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %store_forwarded456, i64 2048
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !35
  %i.dm = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %store_forwarded456, i64 3072
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %store_forwarded456, i64 4096
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !35
  %i.ds = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %store_forwarded456, i64 5120 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !35
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 256
  br i1 %exitcond.not.i.i.4, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !46

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i
  %.pn430.i = fmul nnan float %i.cu, 2.000000e+00
  %.pn.i = fmul float %.pn430.i, %i.cu
  %i.dv = fdiv float 1.000000e+00, %.pn.i         ; 3 uses
  %i.dw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %5)
  %i.dx = icmp eq i32 %i.dw, 1
  %i.dy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  %i.dz = fmul float %i.cu, %i.cu
  br i1 %i.dx, label %.lr.ph339.i.us, label %.lr.ph339.i

.lr.ph339.i.us:                                   ; preds = %.preheader.lr.ph.i, %._crit_edge340.i.us
  %indvars.iv396.i.us = phi i64 [ %indvars.iv.next397.i.us, %._crit_edge340.i.us ], [ 0, %.preheader.lr.ph.i ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv396.i.us
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !35
  %i.ec = trunc nuw nsw i64 %indvars.iv396.i.us to i32
  %60 = uitofp nneg i32 %i.ec to double
  br label %.split1.us.i.us

.split1.us.i.us:                                  ; preds = %bb.bm, %.lr.ph339.i.us
  %indvars.iv401.i.us = phi i64 [ %indvars.iv396.i.us, %.lr.ph339.i.us ], [ %indvars.iv.next402.i.us, %bb.bm ] ; 5 uses
  %i.ed = sub nsw i64 %indvars.iv396.i.us, %indvars.iv401.i.us
  %i.ee = trunc nsw i64 %i.ed to i32
  %i.ef = sitofp i32 %i.ee to float               ; 3 uses
  %i.eg = call noundef float @llvm.fabs.f32(float %i.ef) ; 5 uses
  switch i32 %i.dy, label %bb.bl [
    i32 0, label %bb.bk
    i32 1, label %bb.bj
    i32 2, label %bb.bi
    i32 3, label %bb.bm
    i32 4, label %bb.bh
    i32 5, label %bb.bm
  ]

bb.bh:                                            ; preds = %.split1.us.i.us
  %i.eh = trunc nuw nsw i64 %indvars.iv401.i.us to i32
  %i.ei = uitofp nneg i32 %i.eh to double
  %i.ej = fdiv double %60, %i.ei
  %i.ek = fptrunc double %i.ej to float
  br label %bb.bm

bb.bi:                                            ; preds = %.split1.us.i.us
  %i.el = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.dz)
  %i.em = fdiv float 1.000000e+00, %i.el
  br label %bb.bm

bb.bj:                                            ; preds = %.split1.us.i.us
  %i.en = fadd float %i.eg, %i.cu
  %i.eo = fdiv float 1.000000e+00, %i.en
  br label %bb.bm

bb.bk:                                            ; preds = %.split1.us.i.us
  %i.ep = fneg float %i.eg
  %i.eq = fmul nnan float %i.eg, %i.ep
  %i.er = fmul float %i.dv, %i.eq
  %i.es = call noundef float @expf(float noundef %i.er) #16
  br label %bb.bm

bb.bl:                                            ; preds = %.split1.us.i.us
  %i.et = fneg float %i.eg
  %i.eu = fmul nnan float %i.eg, %i.et
  %i.ev = fmul float %i.dv, %i.eu
  %i.ew = call noundef float @expf(float noundef %i.ev) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.split1.us.i.us, %.split1.us.i.us
  %.0187.us.i.us = phi float [ %i.ew, %bb.bl ], [ %i.es, %bb.bk ], [ %i.eo, %bb.bj ], [ %i.em, %bb.bi ], [ 1.000000e+00, %.split1.us.i.us ], [ %i.ek, %bb.bh ], [ 1.000000e+00, %.split1.us.i.us ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv401.i.us
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv396.i.us
  store float %.0187.us.i.us, ptr %i.ez, align 4, !tbaa !48
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv401.i.us
  store float %.0187.us.i.us, ptr %i.fa, align 4, !tbaa !48
  %indvars.iv.next402.i.us = add nuw nsw i64 %indvars.iv401.i.us, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next402.i.us, 256
  br i1 %exitcond302.not, label %._crit_edge340.i.us, label %.split1.us.i.us, !llvm.loop !50

._crit_edge340.i.us:                              ; preds = %bb.bm
  %indvars.iv.next397.i.us = add nuw nsw i64 %indvars.iv396.i.us, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next397.i.us, 256
  br i1 %exitcond303.not, label %.loopexit.i, label %.lr.ph339.i.us, !llvm.loop !51

.lr.ph339.i:                                      ; preds = %.preheader.lr.ph.i, %._crit_edge340.i
  %indvars.iv396.i = phi i64 [ %indvars.iv.next397.i, %._crit_edge340.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv396.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !35
  br label %.lr.ph339.split.i

bb.bn:                                            ; preds = %bb.bf
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  br label %bb.dj

bb.bo:                                            ; preds = %.loopexit.i, %.noexc.i, %bb.bg
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge340.i:                                 ; preds = %.lr.ph339.split.i
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next397.i, 256
  br i1 %exitcond301.not, label %.loopexit.i, label %.lr.ph339.i, !llvm.loop !51

.lr.ph339.split.i:                                ; preds = %.lr.ph339.i, %.lr.ph339.split.i
  %indvars.iv398.i = phi i64 [ %indvars.iv.next399.i, %.lr.ph339.split.i ], [ %indvars.iv396.i, %.lr.ph339.i ] ; 4 uses
  %i.ff = sub nsw i64 %indvars.iv396.i, %indvars.iv398.i
  %i.fg = trunc nsw i64 %i.ff to i32
  %i.fh = sitofp i32 %i.fg to float
  %i.fi = call noundef float @llvm.fabs.f32(float %i.fh) ; 2 uses
  %i.fj = fneg float %i.fi
  %i.fk = fmul nnan float %i.fi, %i.fj
  %i.fl = fmul float %i.dv, %i.fk
  %i.fm = call noundef float @expf(float noundef %i.fl) #16 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv398.i
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !35
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv396.i
  store float %i.fm, ptr %i.fp, align 4, !tbaa !48
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv398.i
  store float %i.fm, ptr %i.fq, align 4, !tbaa !48
  %indvars.iv.next399.i = add nuw nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next399.i, 256
  br i1 %exitcond.not, label %._crit_edge340.i, label %.lr.ph339.split.i, !llvm.loop !50

bb.bp:                                            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1048576) @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i8 0, i64 1048576, i1 false)
  %i.fr = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.fs = icmp sgt i32 %i.cz, 0                   ; 2 uses
  br i1 %i.fs, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.br, %bb.bp
  %.0301.lcssa.i = phi i32 [ 0, %bb.bp ], [ %.1.i, %bb.br ] ; 6 uses
  %.sroa.speculated274.i = call i32 @llvm.smin.i32(i32 %.0301.lcssa.i, i32 256) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef %.0301.lcssa.i, i32 noundef 3, i32 noundef 5)
          to label %.preheader309.i unwind label %bb.bs

.preheader309.i:                                  ; preds = %._crit_edge.i
  %i.ft = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %31, i64 128
  br label %.preheader308.i

.lr.ph.i:                                         ; preds = %bb.bp, %bb.br
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.0188312.i = phi i32 [ %i.gn, %bb.br ], [ 0, %bb.bp ]
  %.0301310.i = phi i32 [ %.1.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i ; 3 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !14
  %i.fx = lshr i8 %i.fw, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !14
  %i.ga = lshr i8 %i.fz, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !14
  %i.gd = lshr i8 %i.gc, 2
  %i.ge = zext nneg i8 %i.fx to i64
  %i.gf = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %i.ge
  %i.gg = zext nneg i8 %i.ga to i64
  %i.gh = getelementptr inbounds nuw [256 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = zext nneg i8 %i.gd to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !52
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i
  %i.gm = add nsw i32 %.0301310.i, 1
  store i32 1, ptr %i.gj, align 4, !tbaa !52
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i
  %.1.i = phi i32 [ %i.gm, %bb.bq ], [ %.0301310.i, %.lr.ph.i ] ; 2 uses
  %i.gn = add nuw nsw i32 %.0188312.i, 1          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %exitcond.not.i = icmp eq i32 %i.gn, %i.cz
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

.preheader308.i:                                  ; preds = %bb.bt, %.preheader309.i
  %indvars.iv355.i = phi i64 [ 0, %.preheader309.i ], [ %indvars.iv.next356.i, %bb.bt ] ; 3 uses
  %.0191318.i = phi i32 [ 0, %.preheader309.i ], [ %.3194.i.1, %bb.bt ]
  %i.go = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %indvars.iv355.i
  %i.gp = trunc nuw nsw i64 %indvars.iv355.i to i32
  %i.gq = uitofp nneg i32 %i.gp to float          ; 2 uses
  br label %.preheader307.i

bb.bs:                                            ; preds = %._crit_edge.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.preheader307.i:                                  ; preds = %bb.bu, %.preheader308.i
  %indvars.iv351.i = phi i64 [ 0, %.preheader308.i ], [ %indvars.iv.next352.i, %bb.bu ] ; 3 uses
  %.1192316.i = phi i32 [ %.0191318.i, %.preheader308.i ], [ %.3194.i.1, %bb.bu ]
  %i.gs = getelementptr inbounds nuw [256 x i8], ptr %i.go, i64 %indvars.iv351.i ; 2 uses
  %i.gt = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.gu = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv351.i to i32
  %i.gw = uitofp nneg i32 %i.gv to float          ; 2 uses
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bu
  %indvars.iv.next356.i = add nuw nsw i64 %indvars.iv355.i, 1 ; 2 uses
  %exitcond358.not.i = icmp eq i64 %indvars.iv.next356.i, 64
  br i1 %exitcond358.not.i, label %bb.ca, label %.preheader308.i, !llvm.loop !54

bb.bu:                                            ; preds = %bb.bz
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond354.not.i = icmp eq i64 %indvars.iv.next352.i, 64
  br i1 %exitcond354.not.i, label %bb.bt, label %.preheader307.i, !llvm.loop !55

bb.bv:                                            ; preds = %bb.bz, %.preheader307.i
  %indvars.iv347.i = phi i64 [ 0, %.preheader307.i ], [ %indvars.iv.next348.i.1, %bb.bz ] ; 4 uses
  %.2193314.i = phi i32 [ %.1192316.i, %.preheader307.i ], [ %.3194.i.1, %bb.bz ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv347.i
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !52
  %.not218.i = icmp eq i32 %i.gy, 0
  br i1 %.not218.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gz = sext i32 %.2193314.i to i64
  %i.ha = mul i64 %i.gu, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ha ; 3 uses
  store float %i.gq, ptr %i.hb, align 4, !tbaa !48
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.gw, ptr %i.hc, align 4, !tbaa !48
  %i.hd = trunc nuw nsw i64 %indvars.iv347.i to i32
  %i.he = uitofp nneg i32 %i.hd to float
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store float %i.he, ptr %i.hf, align 4, !tbaa !48
  %i.hg = add nsw i32 %.2193314.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.3194.i = phi i32 [ %i.hg, %bb.bw ], [ %.2193314.i, %bb.bv ] ; 3 uses
  %indvars.iv.next348.i = or disjoint i64 %indvars.iv347.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.next348.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_:bb.a
  %i.ak = trunc i64 %.sroa.03.0.copyload to i32
  %i.al = bitcast i32 %i.ak to float
  %i.am = lshr i64 %.sroa.03.0.copyload, 32
  %i.an = trunc nuw i64 %i.am to i32
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0919.i.i ; 3 uses
  %i.ap = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !137
  br i1 %i.ap, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.ar = load float, ptr %i.ao, align 4, !tbaa !48
  store float %i.ar, ptr %i.aq, align 4, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !80
  %i.av = icmp sgt i64 %.0919.i.i, %.010
  br i1 %i.av, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !134

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.018.i.i, %.lr.ph.i.i ], [ %.0919.i.i, %bb.f ]
  %.pre.i.i = load float, ptr %3, align 8, !tbaa !48
  %.pre22.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.aw = phi i32 [ %i.an, %bb.e ], [ %.pre22.i.i, %.critedge.loopexit.i.i ]
  %i.ax = phi float [ %i.al, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store float %i.ax, ptr %i.ay, align 4, !tbaa !82
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.010, 0
  %i.ba = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !138

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2), !inline_history !139
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !139
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load float, ptr %0, align 4, !tbaa !48
  %i.d = load float, ptr %2, align 4, !tbaa !48
  store float %i.d, ptr %0, align 4, !tbaa !48
  store float %i.c, ptr %2, align 4, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !52
  %i.h = load i32, ptr %i.f, align 4, !tbaa !52
  store i32 %i.h, ptr %i.e, align 4, !tbaa !52
  store i32 %i.g, ptr %i.f, align 4, !tbaa !52
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !139
  %i.j = load float, ptr %0, align 4, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load float, ptr %3, align 4, !tbaa !48
  store float %i.l, ptr %0, align 4, !tbaa !48
  store float %i.j, ptr %3, align 4, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !52
  %i.o = load i32, ptr %i.m, align 4, !tbaa !52
  store i32 %i.o, ptr %i.k, align 4, !tbaa !52
  store i32 %i.n, ptr %i.m, align 4, !tbaa !52
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.p = load float, ptr %1, align 4, !tbaa !48
  store float %i.p, ptr %0, align 4, !tbaa !48
  store float %i.j, ptr %1, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.k, align 4, !tbaa !52
  %i.s = load i32, ptr %i.q, align 4, !tbaa !52
  store i32 %i.s, ptr %i.k, align 4, !tbaa !52
  store i32 %i.r, ptr %i.q, align 4, !tbaa !52
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !139
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load float, ptr %0, align 4, !tbaa !48
  %i.v = load float, ptr %1, align 4, !tbaa !48
  store float %i.v, ptr %0, align 4, !tbaa !48
  store float %i.u, ptr %1, align 4, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !52
  %i.z = load i32, ptr %i.x, align 4, !tbaa !52
  store i32 %i.z, ptr %i.w, align 4, !tbaa !52
  store i32 %i.y, ptr %i.x, align 4, !tbaa !52
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !139
  %i.ab = load float, ptr %0, align 4, !tbaa !48  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load float, ptr %3, align 4, !tbaa !48
  store float %i.ad, ptr %0, align 4, !tbaa !48
  store float %i.ab, ptr %3, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !52
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !52
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !52
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !52
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = load float, ptr %2, align 4, !tbaa !48
  store float %i.ah, ptr %0, align 4, !tbaa !48
  store float %i.ab, ptr %2, align 4, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !52
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !52
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !52
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef double @_ZN2cv6kmeansERKNS_11_InputArrayEiRKNS_17_InputOutputArrayENS_12TermCriteriaEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i64, double, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!17 = distinct !{!17, !"_ZNK2cv11_InputArray6getMatEi"}
!18 = !{!19, !12, i64 8}
!19 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !12, i64 8, !20, i64 16}
!20 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!23 = distinct !{!23, !"_ZNK2cv11_InputArray6getMatEi"}
!24 = !{!25, !5, i64 0}
!25 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !26, i64 56, !27, i64 64, !28, i64 72, !30, i64 128}
!26 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!27 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!28 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !29, i64 4, !5, i64 8, !6, i64 12}
!29 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!30 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!33 = distinct !{!33, !"_ZNK2cv11_InputArray6getMatEi"}
!34 = !{!25, !11, i64 24}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 float", !12, i64 0}
!37 = !{!20, !5, i64 0}
!38 = !{!20, !5, i64 4}
!39 = !{!19, !5, i64 0}
!40 = !{!41, !42, i64 8}
!41 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!43 = !{!41, !42, i64 0}
!44 = !{!25, !5, i64 12}
!45 = !{!25, !5, i64 8}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !6, i64 0}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = !{!5, !5, i64 0}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !47}
!56 = distinct !{!56, !47}
!57 = !{!28, !5, i64 0}
!58 = distinct !{!58, !47}
!59 = distinct !{!59, !47}
!60 = distinct !{!60, !47}
!61 = distinct !{!61, !47}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!13, !13, i64 0}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = !{!69}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !47, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47, !71}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = distinct !{!79, !47, !71, !72}
!80 = !{!81, !5, i64 4}
!81 = !{!"_ZTSSt4pairIfiE", !49, i64 0, !5, i64 4}
!82 = !{!81, !49, i64 0}
!83 = distinct !{!83, !63}
!84 = distinct !{!84, !63}
!85 = distinct !{!85, !47}
!86 = distinct !{!86, !47}
!87 = distinct !{!87, !47}
!88 = distinct !{!88, !47}
!89 = distinct !{!89, !63}
!90 = distinct !{!90, !47, !71}
!91 = distinct !{!91, !47}
!92 = distinct !{!92, !47}
!93 = distinct !{!93, !47}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!96 = distinct !{!96, !"_ZNK2cv11_InputArray6getMatEi"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN12_GLOBAL__N_110filterCoreERN2cv3MatES2_PPfiiiS1_: argument 0"}
!99 = distinct !{!99, !"_ZN12_GLOBAL__N_110filterCoreERN2cv3MatES2_PPfiiiS1_"}
!100 = !{!101, !101, i64 0}
!101 = !{!"double", !6, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"p1 int", !12, i64 0}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, !47}
!106 = distinct !{!106, !47}
!107 = distinct !{!107, !47}
!108 = distinct !{!108, !47}
!109 = !{!25, !5, i64 4}
!110 = distinct !{!110, !47}
!111 = distinct !{!111, !47}
!112 = distinct !{!112, !47}
!113 = distinct !{!113, !47}
!114 = distinct !{!114, !47}
!115 = distinct !{!115, !47}
!116 = distinct !{!116, !47}
!117 = distinct !{!117, !47}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !47}
!120 = distinct !{!120, !47}
!121 = distinct !{!121, !47}
!122 = !{!41, !42, i64 16}
!123 = !{!10, !11, i64 0}
!124 = !{!9, !13, i64 8}
!125 = distinct !{!125, !47}
!126 = distinct !{null, null, null}
!127 = distinct !{!127, !47}
!128 = distinct !{!128, !47}
!129 = distinct !{!129, !47}
!130 = !{!12, !12, i64 0}
!131 = distinct !{null, null, null}
!132 = distinct !{!132, !47}
!133 = distinct !{null, null, null, null}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = distinct !{null, null}
!137 = distinct !{null, null, null}
!138 = distinct !{!138, !47}
!139 = distinct !{null}
end_hunk_1
