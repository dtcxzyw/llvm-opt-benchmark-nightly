inline.NumInlined: 464
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
bb.aj:                                            ; preds = %bb.ai
  %i.ay = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ak unwind label %bb.u

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.ax, i32 noundef %i.ay, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.al unwind label %bb.u

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #16
  %i.az = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc121 unwind label %bb.ar

.noexc121:                                        ; preds = %bb.al
  %i.ba = icmp eq i32 %i.az, 65536
  br i1 %i.ba, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc121
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18, !noalias !31
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %i.bc)
          to label %_ZNK2cv11_InputArray6getMatEi.exit124 unwind label %bb.ar

bb.an:                                            ; preds = %.noexc121
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit124 unwind label %bb.ar

_ZNK2cv11_InputArray6getMatEi.exit124:            ; preds = %bb.am, %bb.an
  %i.bd = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #16
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %49, ptr noundef nonnull align 8 dereferenceable(208) %43)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.bi = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %49)
          to label %bb.aq unwind label %bb.at     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !34
  br label %bb.av

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
  %store_forwarded456.a = phi ptr [ %i.dg, %.noexc224.i ], [ %i.du, %.lr.ph.i.i ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ 1, %.noexc224.i ], [ %indvars.iv.next.i.i.4, %.lr.ph.i.i ] ; 6 uses
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %store_forwarded456.a, i64 1024
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !35
  %i.dj = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %store_forwarded456.a, i64 2048
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !35
  %i.dm = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %store_forwarded456.a, i64 3072
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %store_forwarded456.a, i64 4096
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !35
  %i.ds = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %store_forwarded456.a, i64 5120 ; 2 uses
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
  %60 = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv396.i.us
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = trunc nuw nsw i64 %indvars.iv396.i.us to i32 ; 2 uses
  br label %.split1.us.i.us

.split1.us.i.us:                                  ; preds = %bb.bm, %.lr.ph339.i.us
  %indvars.iv401.i.us = phi i64 [ %indvars.iv396.i.us, %.lr.ph339.i.us ], [ %indvars.iv.next402.i.us, %bb.bm ] ; 5 uses
  %i.ea = sub nsw i64 %indvars.iv396.i.us, %indvars.iv401.i.us
  %i.eb = trunc nsw i64 %i.ea to i32
  %i.ec = sitofp i32 %i.eb to float               ; 3 uses
  %i.ed = call noundef float @llvm.fabs.f32(float %i.ec) ; 5 uses
  switch i32 %i.dy, label %bb.bl [
    i32 0, label %bb.bk
    i32 1, label %bb.bj
    i32 2, label %bb.bi
    i32 3, label %bb.bm
    i32 4, label %bb.bh
    i32 5, label %bb.bm
  ]

bb.bh:                                            ; preds = %.split1.us.i.us
  %i.ee = trunc nuw nsw i64 %indvars.iv401.i.us to i32 ; 2 uses
  %.sroa.speculated286.us.i.us = call i32 @llvm.umin.i32(i32 %i.ee, i32 %62)
  %63 = uitofp nneg i32 %.sroa.speculated286.us.i.us to double
  %.sroa.speculated283.us.i.us = call i32 @llvm.umax.i32(i32 %62, i32 %i.ee)
  %i.ef = uitofp nneg i32 %.sroa.speculated283.us.i.us to double
  %i.eg = fdiv double %63, %i.ef
  %i.eh = fptrunc double %i.eg to float
  br label %bb.bm

bb.bi:                                            ; preds = %.split1.us.i.us
  %i.ei = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.dz)
  %i.ej = fdiv float 1.000000e+00, %i.ei
  br label %bb.bm

bb.bj:                                            ; preds = %.split1.us.i.us
  %i.ek = fadd float %i.ed, %i.cu
  %i.el = fdiv float 1.000000e+00, %i.ek
  br label %bb.bm

bb.bk:                                            ; preds = %.split1.us.i.us
  %i.em = fneg float %i.ed
  %i.en = fmul nnan float %i.ed, %i.em
  %i.eo = fmul float %i.dv, %i.en
  %i.ep = call noundef float @expf(float noundef %i.eo) #16
  br label %bb.bm

bb.bl:                                            ; preds = %.split1.us.i.us
  %i.eq = fneg float %i.ed
  %i.er = fmul nnan float %i.ed, %i.eq
  %i.es = fmul float %i.dv, %i.er
  %i.et = call noundef float @expf(float noundef %i.es) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.split1.us.i.us, %.split1.us.i.us
  %.0187.us.i.us = phi float [ %i.et, %bb.bl ], [ %i.ep, %bb.bk ], [ %i.el, %bb.bj ], [ %i.ej, %bb.bi ], [ 1.000000e+00, %.split1.us.i.us ], [ %i.eh, %bb.bh ], [ 1.000000e+00, %.split1.us.i.us ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv401.i.us
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv396.i.us
  store float %.0187.us.i.us, ptr %i.ew, align 4, !tbaa !48
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %indvars.iv401.i.us
  store float %.0187.us.i.us, ptr %i.ex, align 4, !tbaa !48
  %indvars.iv.next402.i.us = add nuw nsw i64 %indvars.iv401.i.us, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next402.i.us, 256
  br i1 %exitcond302.not, label %._crit_edge340.i.us, label %.split1.us.i.us, !llvm.loop !50

._crit_edge340.i.us:                              ; preds = %bb.bm
  %indvars.iv.next397.i.us = add nuw nsw i64 %indvars.iv396.i.us, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next397.i.us, 256
  br i1 %exitcond303.not, label %.loopexit.i, label %.lr.ph339.i.us, !llvm.loop !51

.lr.ph339.i:                                      ; preds = %.preheader.lr.ph.i, %._crit_edge340.i
  %indvars.iv396.i = phi i64 [ %indvars.iv.next397.i, %._crit_edge340.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %64 = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv396.i
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  br label %.lr.ph339.split.i

bb.bn:                                            ; preds = %bb.bf
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  br label %bb.dj

bb.bo:                                            ; preds = %.loopexit.i, %.noexc.i, %bb.bg
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge340.i:                                 ; preds = %.lr.ph339.split.i
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next397.i, 256
  br i1 %exitcond301.not, label %.loopexit.i, label %.lr.ph339.i, !llvm.loop !51

.lr.ph339.split.i:                                ; preds = %.lr.ph339.i, %.lr.ph339.split.i
  %indvars.iv398.i = phi i64 [ %indvars.iv.next399.i, %.lr.ph339.split.i ], [ %indvars.iv396.i, %.lr.ph339.i ] ; 4 uses
  %i.fa = sub nsw i64 %indvars.iv396.i, %indvars.iv398.i
  %i.fb = trunc nsw i64 %i.fa to i32
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = call noundef float @llvm.fabs.f32(float %i.fc) ; 2 uses
  %i.fe = fneg float %i.fd
  %i.ff = fmul nnan float %i.fd, %i.fe
  %i.fg = fmul float %i.dv, %i.ff
  %i.fh = call noundef float @expf(float noundef %i.fg) #16 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv398.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !35
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv396.i
  store float %i.fh, ptr %i.fk, align 4, !tbaa !48
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %65, i64 %indvars.iv398.i
  store float %i.fh, ptr %i.fl, align 4, !tbaa !48
  %indvars.iv.next399.i = add nuw nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next399.i, 256
  br i1 %exitcond.not, label %._crit_edge340.i, label %.lr.ph339.split.i, !llvm.loop !50

bb.bp:                                            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1048576) @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i8 0, i64 1048576, i1 false)
  %i.fm = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.fn = icmp sgt i32 %i.cz, 0                   ; 2 uses
  br i1 %i.fn, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.br, %bb.bp
  %.0301.lcssa.i = phi i32 [ 0, %bb.bp ], [ %.1.i, %bb.br ] ; 6 uses
  %.sroa.speculated274.i = call i32 @llvm.smin.i32(i32 %.0301.lcssa.i, i32 256) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef %.0301.lcssa.i, i32 noundef 3, i32 noundef 5)
          to label %.preheader309.i unwind label %bb.bs

.preheader309.i:                                  ; preds = %._crit_edge.i
  %i.fo = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %31, i64 128
  br label %.preheader308.i

.lr.ph.i:                                         ; preds = %bb.bp, %bb.br
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.0188312.i = phi i32 [ %i.gi, %bb.br ], [ 0, %bb.bp ]
  %.0301310.i = phi i32 [ %.1.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !14
  %i.fs = lshr i8 %i.fr, 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !14
  %i.fv = lshr i8 %i.fu, 2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fy = lshr i8 %i.fx, 2
  %i.fz = zext nneg i8 %i.fs to i64
  %i.ga = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %i.fz
  %i.gb = zext nneg i8 %i.fv to i64
  %i.gc = getelementptr inbounds nuw [256 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = zext nneg i8 %i.fy to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !52
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i
  %i.gh = add nsw i32 %.0301310.i, 1
  store i32 1, ptr %i.ge, align 4, !tbaa !52
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i
  %.1.i = phi i32 [ %i.gh, %bb.bq ], [ %.0301310.i, %.lr.ph.i ] ; 2 uses
  %i.gi = add nuw nsw i32 %.0188312.i, 1          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %exitcond.not.i = icmp eq i32 %i.gi, %i.cz
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

.preheader308.i:                                  ; preds = %bb.bt, %.preheader309.i
  %indvars.iv355.i = phi i64 [ 0, %.preheader309.i ], [ %indvars.iv.next356.i, %bb.bt ] ; 3 uses
  %.0191318.i = phi i32 [ 0, %.preheader309.i ], [ %.3194.i.1, %bb.bt ]
  %i.gj = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %indvars.iv355.i
  %i.gk = trunc nuw nsw i64 %indvars.iv355.i to i32
  %i.gl = uitofp nneg i32 %i.gk to float          ; 2 uses
  br label %.preheader307.i

bb.bs:                                            ; preds = %._crit_edge.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.preheader307.i:                                  ; preds = %bb.bu, %.preheader308.i
  %indvars.iv351.i = phi i64 [ 0, %.preheader308.i ], [ %indvars.iv.next352.i, %bb.bu ] ; 3 uses
  %.1192316.i = phi i32 [ %.0191318.i, %.preheader308.i ], [ %.3194.i.1, %bb.bu ]
  %i.gn = getelementptr inbounds nuw [256 x i8], ptr %i.gj, i64 %indvars.iv351.i ; 2 uses
  %i.go = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.gp = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.gq = trunc nuw nsw i64 %indvars.iv351.i to i32
  %i.gr = uitofp nneg i32 %i.gq to float          ; 2 uses
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
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv347.i
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !52
  %.not218.i = icmp eq i32 %i.gt, 0
  br i1 %.not218.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gu = sext i32 %.2193314.i to i64
  %i.gv = mul i64 %i.gp, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gv ; 3 uses
  store float %i.gl, ptr %i.gw, align 4, !tbaa !48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store float %i.gr, ptr %i.gx, align 4, !tbaa !48
  %i.gy = trunc nuw nsw i64 %indvars.iv347.i to i32
  %i.gz = uitofp nneg i32 %i.gy to float
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %i.gz, ptr %i.ha, align 4, !tbaa !48
  %i.hb = add nsw i32 %.2193314.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.3194.i = phi i32 [ %i.hb, %bb.bw ], [ %.2193314.i, %bb.bv ] ; 3 uses
  %indvars.iv.next348.i = or disjoint i64 %indvars.iv347.i, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next348.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !52
  %.not218.i.1 = icmp eq i32 %i.hd, 0
  br i1 %.not218.i.1, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.he = sext i32 %.3194.i to i64
  %i.hf = mul i64 %i.gp, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hf ; 3 uses
  store float %i.gl, ptr %i.hg, align 4, !tbaa !48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float %i.gr, ptr %i.hh, align 4, !tbaa !48
  %i.hi = trunc nuw nsw i64 %indvars.iv.next348.i to i32
  %i.hj = uitofp nneg i32 %i.hi to float
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float %i.hj, ptr %i.hk, align 4, !tbaa !48
  %i.hl = add nsw i32 %.3194.i, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.3194.i.1 = phi i32 [ %i.hl, %bb.by ], [ %.3194.i, %bb.bx ] ; 3 uses
  %indvars.iv.next348.i.1 = add nuw nsw i64 %indvars.iv347.i, 2 ; 2 uses
  %exitcond350.not.i.1 = icmp eq i64 %indvars.iv.next348.i.1, 64
  br i1 %exitcond350.not.i.1, label %bb.bu, label %bb.bv, !llvm.loop !56

bb.ca:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %32) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  %i.hm = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 0, ptr %i.hm, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i32 0, ptr %i.hn, align 4, !tbaa !38
  store i32 16842752, ptr %34, align 8, !tbaa !39
  %i.ho = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %31, ptr %i.ho, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  %i.hp = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.hq, align 8
  store i32 50397184, ptr %35, align 8, !tbaa !39
  store ptr %32, ptr %i.hp, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  %i.hr = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 0, ptr %i.hs, align 8
  store i32 33619968, ptr %36, align 8, !tbaa !39
  store ptr %33, ptr %i.hr, align 8, !tbaa !18
  %i.ht = invoke noundef double @_ZN2cv6kmeansERKNS_11_InputArrayEiRKNS_17_InputOutputArrayENS_12TermCriteriaEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %34, i32 noundef %.sroa.speculated274.i, ptr noundef nonnull align 8 dereferenceable(24) %35, i64 3, double 1.000000e+04, i32 noundef 1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.cb unwind label %bb.cj     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  %i.hu = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.hx = load i64, ptr %i.hw, align 8            ; 2 uses
  br label %.preheader306.i

.preheader306.i:                                  ; preds = %bb.ck, %bb.cb
  %indvars.iv367.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next368.i, %bb.ck ] ; 2 uses
  %.4195324.i = phi i32 [ 0, %bb.cb ], [ %.7198.i.1, %bb.ck ]
  %i.hy = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %indvars.iv367.i
  br label %.preheader305.i

bb.cc:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #16
  %i.hz = getelementptr inbounds nuw i8, ptr %43, i64 72
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !57 ; 6 uses
  %i.ib = icmp slt i32 %i.ia, 3
  br i1 %i.ib, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %.noexc227.i unwind label %bb.cu

.noexc227.i:                                      ; preds = %bb.cd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #17
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
  %i.pl = select <2 x i1> %i.pk, <2 x float> %i.pe, <2 x float> %i.pd ; 2 uses
  %shift = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.pl, %shift
  %i.pm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.pn = fcmp olt float %i.ph, %i.pf
  %.sroa.speculated244.us.us.i = select i1 %i.pn, float %i.ph, float %i.pf
  %i.po = fadd float %i.pm, %.sroa.speculated244.us.us.i
  %i.pp = fcmp olt <2 x float> %i.pd, %i.pe
  %i.pq = select <2 x i1> %i.pp, <2 x float> %i.pe, <2 x float> %i.pd ; 2 uses
  %shift461 = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop462.a = fadd <2 x float> %i.pq, %shift461
  %i.pr = extractelement <2 x float> %foldExtExtBinop462.a, i64 0
  %i.ps = fcmp olt float %i.pf, %i.ph
  %.sroa.speculated.us.us.i = select i1 %i.ps, float %i.ph, float %i.pf
  %i.pt = fadd float %i.pr, %.sroa.speculated.us.us.i
  %i.pu = fdiv float %i.po, %i.pt
  br label %bb.de

bb.cz:                                            ; preds = %.split.us.us.i
  %foldExtExtBinop464.a = fmul <2 x float> %i.pd, %i.pe
  %i.pv = extractelement <2 x float> %foldExtExtBinop464.a, i64 1
  %i.pw = extractelement <2 x float> %i.pd, i64 0
  %i.px = extractelement <2 x float> %i.pe, i64 0
  %i.py = call float @llvm.fmuladd.f32(float %i.pw, float %i.px, float %i.pv)
  %i.pz = call float @llvm.fmuladd.f32(float %i.pf, float %i.ph, float %i.py)
  %i.qa = load float, ptr %i.oy, align 4, !tbaa !48
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv392.i
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !48
  %i.qd = fmul float %i.qa, %i.qc
  %i.qe = fdiv float %i.pz, %i.qd
  br label %bb.de

bb.da:                                            ; preds = %.split.us.us.i
  %foldExtExtBinop466 = fmul <2 x float> %i.pi, %i.pi
  %i.qf = extractelement <2 x float> %foldExtExtBinop466, i64 1
  %i.qg = extractelement <2 x float> %i.pi, i64 0 ; 2 uses
  %i.qh = call float @llvm.fmuladd.f32(float %i.qg, float %i.qg, float %i.qf)
  %i.qi = call float @llvm.fmuladd.f32(float %i.pj, float %i.pj, float %i.qh)
  %i.qj = call float @llvm.fmuladd.f32(float %i.lv, float %i.lv, float %i.qi)
  %i.qk = fdiv float 1.000000e+00, %i.qj
  br label %bb.de

bb.db:                                            ; preds = %.split.us.us.i
  %i.ql = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pi) ; 2 uses
  %shift468 = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop469.a = fadd <2 x float> %i.ql, %shift468
  %i.qm = extractelement <2 x float> %foldExtExtBinop469.a, i64 0
  %i.qn = call noundef float @llvm.fabs.f32(float %i.pj)
  %i.qo = fadd float %i.qm, %i.qn
  %i.qp = fadd float %i.lv, %i.qo
  %i.qq = fdiv float 1.000000e+00, %i.qp
  br label %bb.de

bb.dc:                                            ; preds = %.split.us.us.i
  %foldExtExtBinop471.a = fmul <2 x float> %i.pi, %i.pi
  %i.qr = extractelement <2 x float> %foldExtExtBinop471.a, i64 1
  %i.qs = extractelement <2 x float> %i.pi, i64 0 ; 2 uses
  %i.qt = call float @llvm.fmuladd.f32(float %i.qs, float %i.qs, float %i.qr)
  %i.qu = call float @llvm.fmuladd.f32(float %i.pj, float %i.pj, float %i.qt)
  %i.qv = fneg float %i.qu
  %i.qw = fmul float %i.ly, %i.qv
  %i.qx = call noundef float @expf(float noundef %i.qw) #16
  br label %bb.de

bb.dd:                                            ; preds = %.split.us.us.i
  %foldExtExtBinop473 = fmul <2 x float> %i.pi, %i.pi
  %i.qy = extractelement <2 x float> %foldExtExtBinop473, i64 1
  %i.qz = extractelement <2 x float> %i.pi, i64 0 ; 2 uses
  %i.ra = call float @llvm.fmuladd.f32(float %i.qz, float %i.qz, float %i.qy)
  %i.rb = call float @llvm.fmuladd.f32(float %i.pj, float %i.pj, float %i.ra)
  %i.rc = fneg float %i.rb
  %i.rd = fmul float %i.ly, %i.rc
  %i.re = call noundef float @expf(float noundef %i.rd) #16
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %.split.us.us.i
  %.0.us.us.i = phi float [ %i.re, %bb.dd ], [ %i.qx, %bb.dc ], [ %i.qq, %bb.db ], [ %i.qk, %bb.da ], [ %i.qe, %bb.cz ], [ %i.pu, %bb.cy ], [ 1.000000e+00, %.split.us.us.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv392.i
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !35
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv390.i
  store float %.0.us.us.i, ptr %i.rh, align 4, !tbaa !48
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv392.i
  store float %.0.us.us.i, ptr %i.ri, align 4, !tbaa !48
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %i.rj = icmp slt i64 %indvars.iv.next393.i, %i.lz
  br i1 %i.rj, label %.split.us.us.i, label %._crit_edge334.split.us.us.i, !llvm.loop !74

bb.df:                                            ; preds = %_ZN12_GLOBAL__N_17float2DEii.exit234.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

scalar.ph441:                                     ; preds = %scalar.ph441.prol.loopexit, %scalar.ph441
  %indvars.iv379.i = phi i64 [ %indvars.iv.next380.i.1, %scalar.ph441 ], [ %indvars.iv379.i.unr, %scalar.ph441.prol.loopexit ] ; 4 uses
  %i.rl = mul i64 %indvars.iv379.i, %i.mh
  %i.rm = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.rl ; 3 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !48 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !48 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !48 ; 2 uses
  %i.rs = fmul float %i.rp, %i.rp
  %i.rt = call float @llvm.fmuladd.f32(float %i.rn, float %i.rn, float %i.rs)
  %i.ru = call float @llvm.fmuladd.f32(float %i.rr, float %i.rr, float %i.rt)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ru)
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv379.i
  store float %sqrt.i, ptr %i.rv, align 4, !tbaa !48
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 1 ; 2 uses
  %i.rw = mul i64 %indvars.iv.next380.i, %i.mh
  %i.rx = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.rw ; 3 uses
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !48 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !48 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !48 ; 2 uses
  %i.sd = fmul float %i.sa, %i.sa
  %i.se = call float @llvm.fmuladd.f32(float %i.ry, float %i.ry, float %i.sd)
  %i.sf = call float @llvm.fmuladd.f32(float %i.sc, float %i.sc, float %i.se)
  %sqrt.i.1 = call float @llvm.sqrt.f32(float %i.sf)
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv.next380.i
  store float %sqrt.i.1, ptr %i.sg, align 4, !tbaa !48
  %indvars.iv.next380.i.1 = add nuw nsw i64 %indvars.iv379.i, 2 ; 2 uses
  %exitcond383.not.i.1 = icmp eq i64 %indvars.iv.next380.i.1, %i.jo
  br i1 %exitcond383.not.i.1, label %.preheader302.lr.ph.i, label %scalar.ph441, !llvm.loop !75

.preheader302.i:                                  ; preds = %.preheader302.lr.ph.i, %._crit_edge334.split.i
  %indvars.iv384.i = phi i64 [ %indvars.iv.next385.i, %._crit_edge334.split.i ], [ 0, %.preheader302.lr.ph.i ] ; 6 uses
  %i.sh = icmp samesign ult i64 %indvars.iv384.i, %i.jo
  br i1 %i.sh, label %.lr.ph333.i, label %._crit_edge334.split.i

.lr.ph333.i:                                      ; preds = %.preheader302.i
  %i.si = mul i64 %indvars.iv384.i, %i.mh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.si ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv384.i
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !35
  br label %bb.dg

._crit_edge334.split.i:                           ; preds = %bb.dg, %.preheader302.i
  %.pre-phi406.i = phi i64 [ %i.jo, %.preheader302.i ], [ %i.lz, %bb.dg ]
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %i.so = icmp slt i64 %indvars.iv.next385.i, %.pre-phi406.i
  br i1 %i.so, label %.preheader302.i, label %._crit_edge337.i, !llvm.loop !73

bb.dg:                                            ; preds = %bb.dg, %.lr.ph333.i
  %indvars.iv386.i = phi i64 [ %indvars.iv384.i, %.lr.ph333.i ], [ %indvars.iv.next387.i, %bb.dg ] ; 4 uses
  %i.sp = load float, ptr %i.sj, align 4, !tbaa !48
  %i.sq = mul i64 %indvars.iv386.i, %i.mh
  %i.sr = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.sq ; 3 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !48
  %i.st = load float, ptr %i.sk, align 4, !tbaa !48
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !48
  %i.sw = load float, ptr %i.sl, align 4, !tbaa !48
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !48
  %i.sz = fsub float %i.sp, %i.ss                 ; 2 uses
  %i.ta = fsub float %i.st, %i.sv                 ; 2 uses
  %i.tb = fsub float %i.sw, %i.sy                 ; 2 uses
  %i.tc = fmul float %i.ta, %i.ta
  %i.td = call float @llvm.fmuladd.f32(float %i.sz, float %i.sz, float %i.tc)
  %i.te = call float @llvm.fmuladd.f32(float %i.tb, float %i.tb, float %i.td)
  %i.tf = fneg float %i.te
  %i.tg = fmul float %i.ly, %i.tf
  %i.th = call noundef float @expf(float noundef %i.tg) #16 ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv386.i
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !35
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv384.i
  store float %i.th, ptr %i.tk, align 4, !tbaa !48
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv386.i
  store float %i.th, ptr %i.tl, align 4, !tbaa !48
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %i.tm = icmp slt i64 %indvars.iv.next387.i, %i.lz
  br i1 %i.tm, label %bb.dg, label %._crit_edge334.split.i, !llvm.loop !74

._crit_edge337.i:                                 ; preds = %._crit_edge334.split.i, %._crit_edge334.split.us.us.i, %.preheader304.i
  call void @_ZdaPv(ptr noundef nonnull %i.mc) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %.loopexit.i

bb.dh:                                            ; preds = %bb.df, %bb.cw, %.body.i, %bb.cj
  %.pn214.pn.i = phi { ptr, i32 } [ %i.ir, %bb.cj ], [ %.pn212.i, %.body.i ], [ %i.rk, %bb.df ], [ %i.la, %bb.cw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #16
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.bs
  %.pn214.pn.pn.i = phi { ptr, i32 } [ %.pn214.pn.i, %bb.dh ], [ %i.gm, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %bb.dj

.loopexit.i:                                      ; preds = %._crit_edge340.i, %._crit_edge340.i.us, %._crit_edge337.i, %._crit_edge
  %.0223 = phi i32 [ 256, %._crit_edge ], [ %.sroa.speculated274.i, %._crit_edge337.i ], [ 256, %._crit_edge340.i.us ], [ 256, %._crit_edge340.i ] ; 3 uses
  %.0222 = phi ptr [ null, %._crit_edge ], [ %i.js, %._crit_edge337.i ], [ %i.df, %._crit_edge340.i.us ], [ %i.df, %._crit_edge340.i ] ; 3 uses
  %i.tn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %29)
          to label %_ZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifi.exit unwind label %bb.bo ; 0 uses

bb.dj:                                            ; preds = %bb.di, %bb.bo, %bb.bn
  %.pn221.i = phi { ptr, i32 } [ %i.ez, %bb.bo ], [ %i.ey, %bb.bn ], [ %.pn214.pn.pn.i, %bb.di ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit204

_ZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifi.exit: ; preds = %.loopexit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  %i.to = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.tp = load ptr, ptr %51, align 8, !tbaa !43   ; 2 uses
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = sdiv exact i64 %i.ts, 208
  %i.tu = trunc i64 %i.tt to i32
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %.lr.ph272, label %._crit_edge273

.lr.ph272:                                        ; preds = %_ZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifi.exit
  %i.tw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ty = shl nsw i32 %.0223, 8
  %i.tz = sext i32 %i.ty to i64
  %i.ua = icmp slt i32 %.0223, 0                  ; 2 uses
  %i.ub = shl nsw i64 %i.tz, 2
  %i.uc = select i1 %i.ua, i64 -1, i64 %i.ub      ; 3 uses
  %i.ud = sext i32 %.0223 to i64                  ; 17 uses
  %i.ue = shl nsw i64 %i.ud, 2                    ; 2 uses
  %i.uf = select i1 %i.ua, i64 -1, i64 %i.ue      ; 3 uses
  %i.ug = shl nsw i64 %i.ud, 10
  %i.uh = getelementptr inbounds nuw i8, ptr %43, i64 128
  %i.ui = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.uj = getelementptr inbounds nuw i8, ptr %56, i64 128
  %i.uk = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.ul = getelementptr inbounds nuw i8, ptr %43, i64 136
  %i.um = getelementptr inbounds nuw i8, ptr %55, i64 4 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.uo = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.up = getelementptr inbounds nuw i8, ptr %55, i64 136
  %i.uq = add nuw nsw i32 %3, 1
  %i.ur = sub nsw i32 0, %3
  %i.us = zext nneg i32 %i.uq to i64
  %i.ut = zext nneg i32 %3 to i64
  br label %bb.fj

bb.dk:                                            ; preds = %bb.bc
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.dl:                                            ; preds = %bb.bd
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit204

bb.dm:                                            ; preds = %.lr.ph, %bb.fh
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fh ] ; 4 uses
  %i.uw = phi ptr [ %i.ck, %.lr.ph ], [ %i.afv, %bb.fh ] ; 2 uses
  %i.ux = load i32, ptr %42, align 8, !tbaa !24
  %i.uy = and i32 %i.ux, 31
  switch i32 %i.uy, label %bb.fh [
    i32 5, label %bb.dn
    i32 0, label %bb.fe
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.uz = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znam(i64 noundef 1024) #19
          to label %bb.do unwind label %bb.fd     ; 3 uses

bb.do:                                            ; preds = %bb.dn
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !35
  %i.vb = getelementptr inbounds nuw [208 x i8], ptr %i.uw, i64 %indvars.iv ; 7 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !45
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !44
  %i.vg = sext i32 %i.vd to i64
  %i.vh = sext i32 %i.vf to i64
  %i.vi = mul nsw i64 %i.vh, %i.vg
  %.fr.i = freeze i64 %i.vi                       ; 17 uses
  %i.vj = icmp ult i64 %.fr.i, 2147483647
  br i1 %i.vj, label %bb.du, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_112from32FTo32SERN2cv3MatES2_iPf, ptr noundef nonnull @.str.1, i32 noundef 59) #17
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  unreachable

bb.ds:                                            ; preds = %bb.dp
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.dt:                                            ; preds = %bb.dq
  %i.vl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vm = load ptr, ptr %20, align 8, !tbaa !8    ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.vo = icmp eq ptr %i.vm, %i.vn
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dt
  %i.vp = load i64, ptr %i.vn, align 8, !tbaa !14
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ds
  %.pn.i126 = phi { ptr, i32 } [ %i.vk, %bb.ds ], [ %i.vl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.vl, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit204

bb.du:                                            ; preds = %bb.do
  %i.vr = load i32, ptr %i.vb, align 8, !tbaa !24
  %i.vs = and i32 %i.vr, 16384
  %.not156.i = icmp eq i32 %i.vs, 0
  br i1 %.not156.i, label %bb.dv, label %_ZNSt6vectorISt4pairIfiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_112from32FTo32SERN2cv3MatES2_iPf, ptr noundef nonnull @.str.1, i32 noundef 61) #17
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  unreachable

bb.dy:                                            ; preds = %bb.dv
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

bb.dz:                                            ; preds = %bb.dw
  %i.vu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vv = load ptr, ptr %22, align 8, !tbaa !8    ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.dz
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !14
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i, %bb.dy
  %.pn105.i = phi { ptr, i32 } [ %i.vt, %bb.dy ], [ %i.vu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i ], [ %i.vu, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %_ZNSt6vectorIPfSaIS0_EED2Ev.exit204

_ZNSt6vectorISt4pairIfiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.du
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !34 ; 8 uses
  %.not.i.i.i.i.i = icmp ne i64 %.fr.i, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.wc = shl nuw nsw i64 %.fr.i, 3               ; 6 uses
  %i.wd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wc) #19
          to label %.noexc141 unwind label %bb.fd ; 32 uses

.noexc141:                                        ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.wd, i8 0, i64 %i.wc, i1 false), !tbaa !14
  %min.iters.check = icmp ult i64 %.fr.i, 4
  br i1 %min.iters.check, label %.lr.ph.i127.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc141
  %scevgep = getelementptr i8, ptr %i.wd, i64 -4
  %scevgep431 = getelementptr i8, ptr %scevgep, i64 %i.wc
  %i.we = shl nuw nsw i64 %.fr.i, 2
  %scevgep432 = getelementptr i8, ptr %i.wb, i64 %i.we
  %bound0 = icmp ult ptr %i.wd, %scevgep432
  %bound1 = icmp ult ptr %i.wb, %scevgep431
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i127.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.fr.i, 2147483644             ; 3 uses
  br label %vector.body

end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  %i.aj = icmp sgt i64 %.1.i, %.010
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
declare i32 @llvm.umax.i32(i32, i32) #10

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
end_hunk_2
