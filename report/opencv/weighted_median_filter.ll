Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/weighted_median_filter?download=true
inline.NumInlined: 464
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
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
  %i.cz = mul i32 %i.cy, %i.cw                    ; 5 uses
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
          to label %.noexc.i unwind label %bb.bo  ; 10 uses

.noexc.i:                                         ; preds = %bb.bg
  %i.dg = invoke noalias noundef nonnull dereferenceable(262144) ptr @_Znam(i64 noundef 262144) #19
          to label %.noexc224.i unwind label %bb.bo ; 2 uses

.noexc224.i:                                      ; preds = %.noexc.i
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !35
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.noexc224.i
  %store_forwarded453 = phi ptr [ %i.dg, %.noexc224.i ], [ %i.du, %.lr.ph.i.i ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ 1, %.noexc224.i ], [ %indvars.iv.next.i.i.4, %.lr.ph.i.i ] ; 6 uses
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %store_forwarded453, i64 1024
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !35
  %i.dj = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %store_forwarded453, i64 2048
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !35
  %i.dm = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %store_forwarded453, i64 3072
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dq = getelementptr i8, ptr %i.dp, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %store_forwarded453, i64 4096
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !35
  %i.ds = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %store_forwarded453, i64 5120 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !35
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, 256
  br i1 %exitcond.not.i.i.4, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !46

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i
  %.pn431.i = fmul nnan float %i.cu, 2.000000e+00
  %.pn.i = fmul float %.pn431.i, %i.cu
  %i.dv = fdiv float 1.000000e+00, %.pn.i         ; 3 uses
  %i.dw = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %5)
  %i.dx = icmp eq i32 %i.dw, 1
  %i.dy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  %i.dz = fmul float %i.cu, %i.cu
  br label %.lr.ph341.i

.lr.ph341.i:                                      ; preds = %.preheader.lr.ph.i, %._crit_edge342.i
  %indvars.iv398.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next399.i, %._crit_edge342.i ] ; 9 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv398.i to i32
  %i.eb = uitofp nneg i32 %i.ea to double
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv398.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !35 ; 2 uses
  br i1 %i.dx, label %.split1.us.i, label %.lr.ph341.split.i

.split1.us.i:                                     ; preds = %.lr.ph341.i, %bb.bm
  %indvars.iv403.i = phi i64 [ %indvars.iv.next404.i, %bb.bm ], [ %indvars.iv398.i, %.lr.ph341.i ] ; 5 uses
  %i.ee = sub nsw i64 %indvars.iv398.i, %indvars.iv403.i
  %i.ef = trunc nsw i64 %i.ee to i32
  %i.eg = sitofp i32 %i.ef to float               ; 3 uses
  %i.eh = call noundef float @llvm.fabs.f32(float %i.eg) ; 5 uses
  switch i32 %i.dy, label %bb.bl [
    i32 0, label %bb.bk
    i32 1, label %bb.bj
    i32 2, label %bb.bi
    i32 3, label %bb.bm
    i32 4, label %bb.bh
    i32 5, label %bb.bm
  ]

bb.bh:                                            ; preds = %.split1.us.i
  %i.ei = trunc nuw nsw i64 %indvars.iv403.i to i32
  %i.ej = uitofp nneg i32 %i.ei to double
  %i.ek = fdiv double %i.eb, %i.ej
  %i.el = fptrunc double %i.ek to float
  br label %bb.bm

bb.bi:                                            ; preds = %.split1.us.i
  %i.em = call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.dz)
  %i.en = fdiv float 1.000000e+00, %i.em
  br label %bb.bm

bb.bj:                                            ; preds = %.split1.us.i
  %i.eo = fadd float %i.eh, %i.cu
  %i.ep = fdiv float 1.000000e+00, %i.eo
  br label %bb.bm

bb.bk:                                            ; preds = %.split1.us.i
  %i.eq = fneg float %i.eh
  %i.er = fmul nnan float %i.eh, %i.eq
  %i.es = fmul float %i.dv, %i.er
  %i.et = call noundef float @expf(float noundef %i.es) #16
  br label %bb.bm

bb.bl:                                            ; preds = %.split1.us.i
  %i.eu = fneg float %i.eh
  %i.ev = fmul nnan float %i.eh, %i.eu
  %i.ew = fmul float %i.dv, %i.ev
  %i.ex = call noundef float @expf(float noundef %i.ew) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.split1.us.i, %.split1.us.i
  %.0189.us.i = phi float [ %i.ex, %bb.bl ], [ %i.et, %bb.bk ], [ %i.ep, %bb.bj ], [ %i.en, %bb.bi ], [ 1.000000e+00, %.split1.us.i ], [ %i.el, %bb.bh ], [ 1.000000e+00, %.split1.us.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv403.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !35
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv398.i
  store float %.0189.us.i, ptr %i.fa, align 4, !tbaa !48
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv403.i
  store float %.0189.us.i, ptr %i.fb, align 4, !tbaa !48
  %indvars.iv.next404.i = add nuw nsw i64 %indvars.iv403.i, 1 ; 2 uses
  %exitcond299.not = icmp eq i64 %indvars.iv.next404.i, 256
  br i1 %exitcond299.not, label %._crit_edge342.i, label %.split1.us.i, !llvm.loop !50

bb.bn:                                            ; preds = %bb.bf
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  br label %bb.dj

bb.bo:                                            ; preds = %.loopexit.i, %.noexc.i, %bb.bg
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge342.i:                                 ; preds = %.lr.ph341.split.i, %bb.bm
  %indvars.iv.next399.i = add nuw nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next399.i, 256
  br i1 %exitcond300.not, label %.loopexit.i, label %.lr.ph341.i, !llvm.loop !51

.lr.ph341.split.i:                                ; preds = %.lr.ph341.i, %.lr.ph341.split.i
  %indvars.iv400.i = phi i64 [ %indvars.iv.next401.i, %.lr.ph341.split.i ], [ %indvars.iv398.i, %.lr.ph341.i ] ; 4 uses
  %i.fe = sub nsw i64 %indvars.iv398.i, %indvars.iv400.i
  %i.ff = trunc nsw i64 %i.fe to i32
  %i.fg = sitofp i32 %i.ff to float
  %60 = call noundef float @llvm.fabs.f32(float %i.fg) ; 2 uses
  %i.fh = fneg float %60
  %i.fi = fmul nnan float %60, %i.fh
  %i.fj = fmul float %i.dv, %i.fi
  %i.fk = call noundef float @expf(float noundef %i.fj) #16 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv400.i
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv398.i
  store float %i.fk, ptr %i.fn, align 4, !tbaa !48
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv400.i
  store float %i.fk, ptr %i.fo, align 4, !tbaa !48
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next401.i, 256
  br i1 %exitcond.not, label %._crit_edge342.i, label %.lr.ph341.split.i, !llvm.loop !50

bb.bp:                                            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1048576) @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i8 0, i64 1048576, i1 false)
  %i.fp = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.fq = icmp sgt i32 %i.cz, 0                   ; 2 uses
  br i1 %i.fq, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.br, %bb.bp
  %.0301.lcssa.i = phi i32 [ 0, %bb.bp ], [ %.1302.i, %bb.br ] ; 6 uses
  %.sroa.speculated274.i = call i32 @llvm.smin.i32(i32 %.0301.lcssa.i, i32 256) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef %.0301.lcssa.i, i32 noundef 3, i32 noundef 5)
          to label %.preheader310.i unwind label %bb.bs

.preheader310.i:                                  ; preds = %._crit_edge.i
  %i.fr = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %31, i64 128
  br label %.preheader309.i

.lr.ph.i:                                         ; preds = %bb.bp, %bb.br
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.0188312.i = phi i32 [ %i.gl, %bb.br ], [ 0, %bb.bp ]
  %.0301311.i = phi i32 [ %.1302.i, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv.i ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !14
  %i.fv = lshr i8 %i.fu, 2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fy = lshr i8 %i.fx, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !14
  %i.gb = lshr i8 %i.ga, 2
  %i.gc = zext nneg i8 %i.fv to i64
  %i.gd = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %i.gc
  %i.ge = zext nneg i8 %i.fy to i64
  %i.gf = getelementptr inbounds nuw [256 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = zext nneg i8 %i.gb to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !52
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i
  %i.gk = add nsw i32 %.0301311.i, 1
  store i32 1, ptr %i.gh, align 4, !tbaa !52
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i
  %.1302.i = phi i32 [ %i.gk, %bb.bq ], [ %.0301311.i, %.lr.ph.i ] ; 2 uses
  %i.gl = add nuw nsw i32 %.0188312.i, 1          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %exitcond.not.i = icmp eq i32 %i.gl, %i.cz
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !53

.preheader309.i:                                  ; preds = %bb.bt, %.preheader310.i
  %indvars.iv357.i = phi i64 [ 0, %.preheader310.i ], [ %indvars.iv.next358.i, %bb.bt ] ; 3 uses
  %.0186318.i = phi i32 [ 0, %.preheader310.i ], [ %.3.i.1, %bb.bt ]
  %i.gm = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %indvars.iv357.i
  %i.gn = trunc nuw nsw i64 %indvars.iv357.i to i32
  %i.go = uitofp nneg i32 %i.gn to float          ; 2 uses
  br label %.preheader308.i

bb.bs:                                            ; preds = %._crit_edge.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.preheader308.i:                                  ; preds = %bb.bu, %.preheader309.i
  %indvars.iv353.i = phi i64 [ 0, %.preheader309.i ], [ %indvars.iv.next354.i, %bb.bu ] ; 3 uses
  %.1316.i = phi i32 [ %.0186318.i, %.preheader309.i ], [ %.3.i.1, %bb.bu ]
  %i.gq = getelementptr inbounds nuw [256 x i8], ptr %i.gm, i64 %indvars.iv353.i ; 2 uses
  %i.gr = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.gs = load i64, ptr %i.fs, align 8            ; 2 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv353.i to i32
  %i.gu = uitofp nneg i32 %i.gt to float          ; 2 uses
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bu
  %indvars.iv.next358.i = add nuw nsw i64 %indvars.iv357.i, 1 ; 2 uses
  %exitcond360.not.i = icmp eq i64 %indvars.iv.next358.i, 64
  br i1 %exitcond360.not.i, label %bb.ca, label %.preheader309.i, !llvm.loop !54

bb.bu:                                            ; preds = %bb.bz
  %indvars.iv.next354.i = add nuw nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next354.i, 64
  br i1 %exitcond356.not.i, label %bb.bt, label %.preheader308.i, !llvm.loop !55

bb.bv:                                            ; preds = %bb.bz, %.preheader308.i
  %indvars.iv349.i = phi i64 [ 0, %.preheader308.i ], [ %indvars.iv.next350.i.1, %bb.bz ] ; 4 uses
  %.2314.i = phi i32 [ %.1316.i, %.preheader308.i ], [ %.3.i.1, %bb.bz ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv349.i
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !52
  %.not218.i = icmp eq i32 %i.gw, 0
  br i1 %.not218.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gx = sext i32 %.2314.i to i64
  %i.gy = mul i64 %i.gs, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gy ; 3 uses
  store float %i.go, ptr %i.gz, align 4, !tbaa !48
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store float %i.gu, ptr %i.ha, align 4, !tbaa !48
  %i.hb = trunc nuw nsw i64 %indvars.iv349.i to i32
  %i.hc = uitofp nneg i32 %i.hb to float
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store float %i.hc, ptr %i.hd, align 4, !tbaa !48
  %i.he = add nsw i32 %.2314.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.3.i = phi i32 [ %i.he, %bb.bw ], [ %.2314.i, %bb.bv ] ; 3 uses
  %indvars.iv.next350.i = or disjoint i64 %indvars.iv349.i, 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next350.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !52
  %.not218.i.1 = icmp eq i32 %i.hg, 0
  br i1 %.not218.i.1, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hh = sext i32 %.3.i to i64
  %i.hi = mul i64 %i.gs, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hi ; 3 uses
  store float %i.go, ptr %i.hj, align 4, !tbaa !48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store float %i.gu, ptr %i.hk, align 4, !tbaa !48
  %i.hl = trunc nuw nsw i64 %indvars.iv.next350.i to i32
  %i.hm = uitofp nneg i32 %i.hl to float
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %i.hm, ptr %i.hn, align 4, !tbaa !48
  %i.ho = add nsw i32 %.3.i, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.3.i.1 = phi i32 [ %i.ho, %bb.by ], [ %.3.i, %bb.bx ] ; 3 uses
  %indvars.iv.next350.i.1 = add nuw nsw i64 %indvars.iv349.i, 2 ; 2 uses
  %exitcond352.not.i.1 = icmp eq i64 %indvars.iv.next350.i.1, 64
  br i1 %exitcond352.not.i.1, label %bb.bu, label %bb.bv, !llvm.loop !56

bb.ca:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %32) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  %i.hp = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 0, ptr %i.hp, align 8, !tbaa !37
  %i.hq = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i32 0, ptr %i.hq, align 4, !tbaa !38
  store i32 16842752, ptr %34, align 8, !tbaa !39
  %i.hr = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %31, ptr %i.hr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  %i.hs = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.ht, align 8
  store i32 50397184, ptr %35, align 8, !tbaa !39
  store ptr %32, ptr %i.hs, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  %i.hu = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 0, ptr %i.hv, align 8
  store i32 33619968, ptr %36, align 8, !tbaa !39
  store ptr %33, ptr %i.hu, align 8, !tbaa !18
  %i.hw = invoke noundef double @_ZN2cv6kmeansERKNS_11_InputArrayEiRKNS_17_InputOutputArrayENS_12TermCriteriaEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %34, i32 noundef %.sroa.speculated274.i, ptr noundef nonnull align 8 dereferenceable(24) %35, i64 3, double 1.000000e+04, i32 noundef 1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.cb unwind label %bb.cj     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  %i.hx = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.ia = load i64, ptr %i.hz, align 8            ; 2 uses
  br label %.preheader307.i

.preheader307.i:                                  ; preds = %bb.ck, %bb.cb
  %indvars.iv369.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next370.i, %bb.ck ] ; 2 uses
  %.4324.i = phi i32 [ 0, %bb.cb ], [ %.7.i.1, %bb.ck ]
  %i.ib = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %indvars.iv369.i
  br label %.preheader306.i

bb.cc:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #16
  %i.ic = getelementptr inbounds nuw i8, ptr %43, i64 72
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !57 ; 6 uses
  %i.ie = icmp slt i32 %i.id, 3
  br i1 %i.ie, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
end_hunk_0
