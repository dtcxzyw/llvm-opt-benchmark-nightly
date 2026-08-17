inline.NumInlined: 464
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %46, align 8, !tbaa !8    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ah
  %i.av = load i64, ptr %i.at, align 8, !tbaa !14
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.ag
  %.pn75 = phi { ptr, i32 } [ %i.aq, %bb.ag ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.ar, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #16
  br label %bb.ka

bb.ai:                                            ; preds = %bb.ac, %bb.ac
  %i.ax = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.aj unwind label %bb.u

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
  %i.ec = trunc nuw nsw i64 %indvars.iv396.i.us to i32 ; 2 uses
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
  %i.eh = trunc nuw nsw i64 %indvars.iv401.i.us to i32 ; 2 uses
  %.sroa.speculated286.us.i.us = call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.ec)
  %i.ei = uitofp nneg i32 %.sroa.speculated286.us.i.us to double
  %.sroa.speculated283.us.i.us = call i32 @llvm.umax.i32(i32 %i.ec, i32 %i.eh)
  %i.ej = uitofp nneg i32 %.sroa.speculated283.us.i.us to double
  %i.ek = fdiv double %i.ei, %i.ej
  %i.el = fptrunc double %i.ek to float
  br label %bb.bm

bb.bi:                                            ; preds = %.split1.us.i.us
  %i.em = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.dz)
  %i.en = fdiv float 1.000000e+00, %i.em
  br label %bb.bm

bb.bj:                                            ; preds = %.split1.us.i.us
  %i.eo = fadd float %i.eg, %i.cu
  %i.ep = fdiv float 1.000000e+00, %i.eo
  br label %bb.bm

bb.bk:                                            ; preds = %.split1.us.i.us
  %i.eq = fneg float %i.eg
  %i.er = fmul nnan float %i.eg, %i.eq
  %i.es = fmul float %i.dv, %i.er
  %i.et = call noundef float @expf(float noundef %i.es) #16
  br label %bb.bm

bb.bl:                                            ; preds = %.split1.us.i.us
  %i.eu = fneg float %i.eg
  %i.ev = fmul nnan float %i.eg, %i.eu
  %i.ew = fmul float %i.dv, %i.ev
  %i.ex = call noundef float @expf(float noundef %i.ew) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.split1.us.i.us, %.split1.us.i.us
  %.0187.us.i.us = phi float [ %i.ex, %bb.bl ], [ %i.et, %bb.bk ], [ %i.ep, %bb.bj ], [ %i.en, %bb.bi ], [ 1.000000e+00, %.split1.us.i.us ], [ %i.el, %bb.bh ], [ 1.000000e+00, %.split1.us.i.us ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv401.i.us
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !35
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv396.i.us
  store float %.0187.us.i.us, ptr %i.fa, align 4, !tbaa !48
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv401.i.us
  store float %.0187.us.i.us, ptr %i.fb, align 4, !tbaa !48
  %indvars.iv.next402.i.us = add nuw nsw i64 %indvars.iv401.i.us, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next402.i.us, 256
  br i1 %exitcond302.not, label %._crit_edge340.i.us, label %.split1.us.i.us, !llvm.loop !50

._crit_edge340.i.us:                              ; preds = %bb.bm
  %indvars.iv.next397.i.us = add nuw nsw i64 %indvars.iv396.i.us, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next397.i.us, 256
  br i1 %exitcond303.not, label %.loopexit.i, label %.lr.ph339.i.us, !llvm.loop !51

.lr.ph339.i:                                      ; preds = %.preheader.lr.ph.i, %._crit_edge340.i
  %indvars.iv396.i = phi i64 [ %indvars.iv.next397.i, %._crit_edge340.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv396.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !35
  br label %.lr.ph339.split.i

bb.bn:                                            ; preds = %bb.bf
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  br label %bb.dj

bb.bo:                                            ; preds = %.loopexit.i, %.noexc.i, %bb.bg
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge340.i:                                 ; preds = %.lr.ph339.split.i
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next397.i, 256
  br i1 %exitcond301.not, label %.loopexit.i, label %.lr.ph339.i, !llvm.loop !51

.lr.ph339.split.i:                                ; preds = %.lr.ph339.i, %.lr.ph339.split.i
  %indvars.iv398.i = phi i64 [ %indvars.iv.next399.i, %.lr.ph339.split.i ], [ %indvars.iv396.i, %.lr.ph339.i ] ; 4 uses
  %i.fg = sub nsw i64 %indvars.iv396.i, %indvars.iv398.i
  %i.fh = trunc nsw i64 %i.fg to i32
  %i.fi = sitofp i32 %i.fh to float
  %i.fj = call noundef float @llvm.fabs.f32(float %i.fi) ; 2 uses
  %i.fk = fneg float %i.fj
  %i.fl = fmul nnan float %i.fj, %i.fk
  %i.fm = fmul float %i.dv, %i.fl
  %i.fn = call noundef float @expf(float noundef %i.fm) #16 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv398.i
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv396.i
  store float %i.fn, ptr %i.fq, align 4, !tbaa !48
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv398.i
  store float %i.fn, ptr %i.fr, align 4, !tbaa !48
  %indvars.iv.next399.i = add nuw nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next399.i, 256
  br i1 %exitcond.not, label %._crit_edge340.i, label %.lr.ph339.split.i, !llvm.loop !50

bb.bp:                                            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1048576) @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i8 0, i64 1048576, i1 false)
  %i.fs = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.ft = icmp sgt i32 %i.cz, 0                   ; 2 uses
  br i1 %i.ft, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.br, %bb.bp
  %.0301.lcssa.i = phi i32 [ 0, %bb.bp ], [ %.1.i, %bb.br ] ; 6 uses
  %.sroa.speculated274.i = call i32 @llvm.smin.i32(i32 %.0301.lcssa.i, i32 256) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef %.0301.lcssa.i, i32 noundef 3, i32 noundef 5)
          to label %.preheader309.i unwind label %bb.bs

.preheader309.i:                                  ; preds = %._crit_edge.i
  %i.fu = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %31, i64 128
  br label %.preheader308.i

end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc20weightedMedianFilterERKNS_11_InputArrayES3_RKNS_12_OutputArrayEidiS3_:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store float %i.hp, ptr %i.hq, align 4, !tbaa !48
  %i.hr = add nsw i32 %.3194.i, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.3194.i.1 = phi i32 [ %i.hr, %bb.by ], [ %.3194.i, %bb.bx ] ; 3 uses
  %indvars.iv.next348.i.1 = add nuw nsw i64 %indvars.iv347.i, 2 ; 2 uses
  %exitcond350.not.i.1 = icmp eq i64 %indvars.iv.next348.i.1, 64
  br i1 %exitcond350.not.i.1, label %bb.bu, label %bb.bv, !llvm.loop !56

bb.ca:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %32) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #16
  %i.hs = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 0, ptr %i.hs, align 8, !tbaa !37
  %i.ht = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i32 0, ptr %i.ht, align 4, !tbaa !38
  store i32 16842752, ptr %34, align 8, !tbaa !39
  %i.hu = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %31, ptr %i.hu, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #16
  %i.hv = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.hw, align 8
  store i32 50397184, ptr %35, align 8, !tbaa !39
  store ptr %32, ptr %i.hv, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #16
  %i.hx = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 0, ptr %i.hy, align 8
  store i32 33619968, ptr %36, align 8, !tbaa !39
  store ptr %33, ptr %i.hx, align 8, !tbaa !18
  %i.hz = invoke noundef double @_ZN2cv6kmeansERKNS_11_InputArrayEiRKNS_17_InputOutputArrayENS_12TermCriteriaEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %34, i32 noundef %.sroa.speculated274.i, ptr noundef nonnull align 8 dereferenceable(24) %35, i64 3, double 1.000000e+04, i32 noundef 1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.cb unwind label %bb.cj     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  %i.ia = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.id = load i64, ptr %i.ic, align 8            ; 2 uses
  br label %.preheader306.i

.preheader306.i:                                  ; preds = %bb.ck, %bb.cb
  %indvars.iv367.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next368.i, %bb.ck ] ; 2 uses
  %.4195324.i = phi i32 [ 0, %bb.cb ], [ %.7198.i.1, %bb.ck ]
  %i.ie = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %indvars.iv367.i
  br label %.preheader305.i

bb.cc:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #16
  %i.if = getelementptr inbounds nuw i8, ptr %43, i64 72
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !57 ; 6 uses
  %i.ih = icmp slt i32 %i.ig, 3
  br i1 %i.ih, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %.noexc227.i unwind label %bb.cu

.noexc227.i:                                      ; preds = %bb.cd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #17
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.noexc227.i
  unreachable

bb.cf:                                            ; preds = %.noexc227.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %27, align 8, !tbaa !8    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cf
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !14
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  br label %.body.i

bb.cg:                                            ; preds = %bb.cc
  %i.io = icmp sgt i32 %i.ig, 0
  br i1 %i.io, label %bb.ch, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cg
  %i.ip = icmp eq i32 %i.ig, 0
  %i.iq = zext i1 %i.ip to i32
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ir = getelementptr inbounds nuw i8, ptr %43, i64 84
  %i.is = icmp eq i32 %i.ig, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %43, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ir, align 4            ; 2 uses
  %i.it = select i1 %i.is, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i.i = icmp eq i32 %i.ig, 1
  br i1 %.not.i.i, label %bb.ci, label %bb.cr

bb.ci:                                            ; preds = %bb.ch, %.thread.i.i
  %i.iu = phi i32 [ %i.iq, %.thread.i.i ], [ %i.it, %bb.ch ]
  %i.iv = icmp sgt i32 %i.ig, -1
  %i.iw = zext i1 %i.iv to i32
  br label %bb.cr

bb.cj:                                            ; preds = %bb.ca
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16
  br label %bb.dh

.preheader305.i:                                  ; preds = %bb.cl, %.preheader306.i
  %indvars.iv363.i = phi i64 [ 0, %.preheader306.i ], [ %indvars.iv.next364.i, %bb.cl ] ; 2 uses
  %.5196322.i = phi i32 [ %.4195324.i, %.preheader306.i ], [ %.7198.i.1, %bb.cl ]
  %i.iy = getelementptr inbounds nuw [256 x i8], ptr %i.ie, i64 %indvars.iv363.i ; 2 uses
  br label %bb.cm

bb.ck:                                            ; preds = %bb.cl
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond370.not.i = icmp eq i64 %indvars.iv.next368.i, 64
  br i1 %exitcond370.not.i, label %bb.cc, label %.preheader306.i, !llvm.loop !58

bb.cl:                                            ; preds = %bb.cq
  %indvars.iv.next364.i = add nuw nsw i64 %indvars.iv363.i, 1 ; 2 uses
  %exitcond366.not.i = icmp eq i64 %indvars.iv.next364.i, 64
  br i1 %exitcond366.not.i, label %bb.ck, label %.preheader305.i, !llvm.loop !59

bb.cm:                                            ; preds = %bb.cq, %.preheader305.i
  %indvars.iv359.i = phi i64 [ 0, %.preheader305.i ], [ %indvars.iv.next360.i.1, %bb.cq ] ; 3 uses
  %.6197320.i = phi i32 [ %.5196322.i, %.preheader305.i ], [ %.7198.i.1, %bb.cq ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv359.i ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.ja, 0
  br i1 %.not.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jb = sext i32 %.6197320.i to i64
  %i.jc = mul i64 %i.id, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !52
  store i32 %i.je, ptr %i.iz, align 8, !tbaa !52
  %i.jf = add nsw i32 %.6197320.i, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.7198.i = phi i32 [ %i.jf, %bb.cn ], [ %.6197320.i, %bb.cm ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv359.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !52
  %.not.i.1 = icmp eq i32 %i.ji, 0
  br i1 %.not.i.1, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jj = sext i32 %.7198.i to i64
  %i.jk = mul i64 %i.id, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !52
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !52
  %i.jn = add nsw i32 %.7198.i, 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.7198.i.1 = phi i32 [ %i.jn, %bb.cp ], [ %.7198.i, %bb.co ] ; 3 uses
  %indvars.iv.next360.i.1 = add nuw nsw i64 %indvars.iv359.i, 2 ; 2 uses
  %exitcond362.not.i.1 = icmp eq i64 %indvars.iv.next360.i.1, 64
  br i1 %exitcond362.not.i.1, label %bb.cl, label %bb.cm, !llvm.loop !60

bb.cr:                                            ; preds = %bb.ch, %bb.ci
  %i.jo = phi i32 [ %i.iu, %bb.ci ], [ %i.it, %bb.ch ]
  %i.jp = phi i32 [ %i.iw, %bb.ci ], [ %.val, %bb.ch ]
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.jp to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.jo to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %37, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 4)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.jq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %37)
          to label %bb.ct unwind label %bb.cv     ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #16
  %i.jr = load ptr, ptr %i.bf, align 8, !tbaa !34
  br i1 %i.ft, label %.lr.ph328.i.a, label %._crit_edge329.i

.lr.ph328.i.a:                                    ; preds = %bb.ct
  %i.js = getelementptr inbounds nuw i8, ptr %29, i64 24
  %60 = load ptr, ptr %i.js, align 8, !tbaa !34
  %wide.trip.count.i.a = zext nneg i32 %i.cz to i64
  br label %bb.cx

._crit_edge329.i:                                 ; preds = %bb.cx, %bb.ct
  %i.jt = zext i32 %.sroa.speculated274.i to i64  ; 22 uses
  %i.ju = icmp slt i32 %.0301.lcssa.i, 0          ; 2 uses
  %i.jv = shl nuw nsw i64 %i.jt, 3
  %i.jw = select i1 %i.ju, i64 -1, i64 %i.jv
  %i.jx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jw) #19
          to label %.noexc232.i unwind label %bb.cw ; 16 uses

.noexc232.i:                                      ; preds = %._crit_edge329.i
  %i.jy = mul nsw i32 %.sroa.speculated274.i, %.sroa.speculated274.i
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = shl nuw nsw i64 %i.jz, 2
  %i.kb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ka) #19
          to label %.noexc233.i unwind label %bb.cw

.noexc233.i:                                      ; preds = %.noexc232.i
  store ptr %i.kb, ptr %i.jx, align 8, !tbaa !35
  %i.kc = icmp sgt i32 %.0301.lcssa.i, 1
  br i1 %i.kc, label %.lr.ph.i228.i.preheader, label %_ZN12_GLOBAL__N_17float2DEii.exit234.i

.lr.ph.i228.i.preheader:                          ; preds = %.noexc233.i
  %load_initial457 = load ptr, ptr %i.jx, align 8 ; 2 uses
  %i.kd = add nsw i64 %i.jt, -1                   ; 2 uses
  %xtraiter500.a = and i64 %i.kd, 7               ; 3 uses
  %i.ke = add nsw i32 %.sroa.speculated274.i, -2
  %i.kf = icmp ult i32 %i.ke, 7
  br i1 %i.kf, label %.lr.ph.i228.i.epil.preheader, label %.lr.ph.i228.i.preheader.new

.lr.ph.i228.i.preheader.new:                      ; preds = %.lr.ph.i228.i.preheader
  %unroll_iter.a = and i64 %i.kd, -8
  br label %.lr.ph.i228.i

.lr.ph.i228.i:                                    ; preds = %.lr.ph.i228.i, %.lr.ph.i228.i.preheader.new
  %store_forwarded458 = phi ptr [ %load_initial457, %.lr.ph.i228.i.preheader.new ], [ %i.lc, %.lr.ph.i228.i ]
  %indvars.iv.i229.i = phi i64 [ 1, %.lr.ph.i228.i.preheader.new ], [ %indvars.iv.next.i230.i.7, %.lr.ph.i228.i ] ; 9 uses
  %niter.a = phi i64 [ 0, %.lr.ph.i228.i.preheader.new ], [ %niter.next.7, %.lr.ph.i228.i ]
  %i.kg = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %store_forwarded458, i64 %i.jt ; 2 uses
  store ptr %i.kh, ptr %i.kg, align 8, !tbaa !35
  %i.ki = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.jt ; 2 uses
  store ptr %i.kk, ptr %i.kj, align 8, !tbaa !35
  %i.kl = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.jt ; 2 uses
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !35
  %i.ko = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.kp = getelementptr i8, ptr %i.ko, i64 24
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.jt ; 2 uses
  store ptr %i.kq, ptr %i.kp, align 8, !tbaa !35
  %i.kr = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.ks = getelementptr i8, ptr %i.kr, i64 32
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.jt ; 2 uses
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !35
  %i.ku = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.kv = getelementptr i8, ptr %i.ku, i64 40
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.jt ; 2 uses
  store ptr %i.kw, ptr %i.kv, align 8, !tbaa !35
  %i.kx = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.ky = getelementptr i8, ptr %i.kx, i64 48
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.jt ; 2 uses
  store ptr %i.kz, ptr %i.ky, align 8, !tbaa !35
  %i.la = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i
  %i.lb = getelementptr i8, ptr %i.la, i64 56
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.jt ; 3 uses
  store ptr %i.lc, ptr %i.lb, align 8, !tbaa !35
  %indvars.iv.next.i230.i.7 = add nuw nsw i64 %indvars.iv.i229.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter.a, 8             ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter.a
  br i1 %niter.ncmp.7, label %_ZN12_GLOBAL__N_17float2DEii.exit234.i.loopexit.unr-lcssa, label %.lr.ph.i228.i, !llvm.loop !46

bb.cu:                                            ; preds = %bb.cr, %bb.cd
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cv:                                            ; preds = %bb.cs
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #16
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn212.i = phi { ptr, i32 } [ %i.le, %bb.cv ], [ %i.ld, %bb.cu ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #16
  br label %bb.dh

bb.cw:                                            ; preds = %.noexc232.i, %._crit_edge329.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.cx:                                            ; preds = %bb.cx, %.lr.ph328.i.a
  %indvars.iv373.i.a = phi i64 [ 0, %.lr.ph328.i.a ], [ %indvars.iv.next374.i, %bb.cx ] ; 2 uses
  %indvars.iv371.i = phi i64 [ 0, %.lr.ph328.i.a ], [ %indvars.iv.next372.i, %bb.cx ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv371.i ; 3 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !14
  %i.li = lshr i8 %i.lh, 2
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !14
  %i.ll = lshr i8 %i.lk, 2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !14
  %i.lo = lshr i8 %i.ln, 2
  %i.lp = zext nneg i8 %i.li to i64
  %i.lq = getelementptr inbounds nuw [16384 x i8], ptr @_ZZN12_GLOBAL__N_115featureIndexingERN2cv3MatERPPfRifiE4hash, i64 %i.lp
  %i.lr = zext nneg i8 %i.ll to i64
  %i.ls = getelementptr inbounds nuw [256 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = zext nneg i8 %i.lo to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !52
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %60, i64 %indvars.iv373.i.a
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !52
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i.a, 1 ; 2 uses
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 3
  %exitcond378.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i.a
  br i1 %exitcond378.not.i, label %._crit_edge329.i, label %bb.cx, !llvm.loop !61

_ZN12_GLOBAL__N_17float2DEii.exit234.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i228.i
  %lcmp.mod501.not.a = icmp eq i64 %xtraiter500.a, 0
  br i1 %lcmp.mod501.not.a, label %_ZN12_GLOBAL__N_17float2DEii.exit234.i, label %.lr.ph.i228.i.epil.preheader

.lr.ph.i228.i.epil.preheader:                     ; preds = %_ZN12_GLOBAL__N_17float2DEii.exit234.i.loopexit.unr-lcssa, %.lr.ph.i228.i.preheader
  %store_forwarded458.epil.init = phi ptr [ %load_initial457, %.lr.ph.i228.i.preheader ], [ %i.lc, %_ZN12_GLOBAL__N_17float2DEii.exit234.i.loopexit.unr-lcssa ]
  %indvars.iv.i229.i.epil.init = phi i64 [ 1, %.lr.ph.i228.i.preheader ], [ %indvars.iv.next.i230.i.7, %_ZN12_GLOBAL__N_17float2DEii.exit234.i.loopexit.unr-lcssa ]
  %lcmp.mod502.a = icmp ne i64 %xtraiter500.a, 0
  call void @llvm.assume(i1 %lcmp.mod502.a)
  br label %.lr.ph.i228.i.epil

.lr.ph.i228.i.epil:                               ; preds = %.lr.ph.i228.i.epil, %.lr.ph.i228.i.epil.preheader
  %store_forwarded458.epil = phi ptr [ %store_forwarded458.epil.init, %.lr.ph.i228.i.epil.preheader ], [ %i.ly, %.lr.ph.i228.i.epil ]
  %indvars.iv.i229.i.epil = phi i64 [ %indvars.iv.i229.i.epil.init, %.lr.ph.i228.i.epil.preheader ], [ %indvars.iv.next.i230.i.epil, %.lr.ph.i228.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i228.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i228.i.epil ]
  %i.lx = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i229.i.epil
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %store_forwarded458.epil, i64 %i.jt ; 2 uses
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !35
  %indvars.iv.next.i230.i.epil = add nuw nsw i64 %indvars.iv.i229.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter500.a
  br i1 %epil.iter.cmp.not, label %_ZN12_GLOBAL__N_17float2DEii.exit234.i, label %.lr.ph.i228.i.epil, !llvm.loop !62

_ZN12_GLOBAL__N_17float2DEii.exit234.i:           ; preds = %_ZN12_GLOBAL__N_17float2DEii.exit234.i.loopexit.unr-lcssa, %.lr.ph.i228.i.epil, %.noexc233.i
  %i.lz = fmul nnan float %i.cu, 3.906250e-03
  %i.ma = fmul nnan float %i.lz, 6.400000e+01     ; 5 uses
  %i.mb = fmul nnan float %i.ma, 2.000000e+00
  %i.mc = fmul float %i.ma, %i.mb
  %i.md = fdiv float 1.000000e+00, %i.mc          ; 3 uses
  %i.me = sext i32 %.sroa.speculated274.i to i64  ; 5 uses
  %i.mf = shl nsw i64 %i.me, 2
  %i.mg = select i1 %i.ju, i64 -1, i64 %i.mf
  %i.mh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mg) #19
          to label %.preheader304.i unwind label %bb.df ; 9 uses

.preheader304.i:                                  ; preds = %_ZN12_GLOBAL__N_17float2DEii.exit234.i
  %i.mi = icmp sgt i32 %.0301.lcssa.i, 0
  br i1 %i.mi, label %.lr.ph331.i, label %._crit_edge337.i

.lr.ph331.i:                                      ; preds = %.preheader304.i
  %i.mj = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !34 ; 13 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %33, i64 128
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !64 ; 8 uses
  %min.iters.check442 = icmp sgt i32 %.0301.lcssa.i, 3
  %ident.check.not = icmp eq i64 %i.mm, 1
  %or.cond459 = select i1 %min.iters.check442, i1 %ident.check.not, i1 false
  br i1 %or.cond459, label %vector.memcheck435, label %scalar.ph441.preheader

vector.memcheck435:                               ; preds = %.lr.ph331.i
  %i.mn = shl nuw nsw i64 %i.jt, 2
  %scevgep436 = getelementptr i8, ptr %i.mh, i64 %i.mn
  %i.mo = getelementptr i8, ptr %i.mk, i64 %i.jt
  %scevgep437 = getelementptr i8, ptr %i.mo, i64 11
  %bound0438 = icmp ult ptr %i.mh, %scevgep437
  %bound1439 = icmp ult ptr %i.mk, %scevgep436
  %found.conflict440 = and i1 %bound0438, %bound1439
  br i1 %found.conflict440, label %scalar.ph441.preheader, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck435
  %n.vec444 = and i64 %i.jt, 508                  ; 3 uses
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next447, %vector.body445 ] ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %index446 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 %index446 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 %index446 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 2
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 %index446 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 3
  %i.mw = load float, ptr %i.mp, align 4, !tbaa !48, !alias.scope !65
  %i.mx = load float, ptr %i.mr, align 4, !tbaa !48, !alias.scope !65
  %i.my = load float, ptr %i.mt, align 4, !tbaa !48, !alias.scope !65
  %i.mz = load float, ptr %i.mv, align 4, !tbaa !48, !alias.scope !65
  %i.na = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 1
  %i.nc = insertelement <4 x float> %i.nb, float %i.my, i64 2
  %i.nd = insertelement <4 x float> %i.nc, float %i.mz, i64 3 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mq, i64 5
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ms, i64 6
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 7
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !48, !alias.scope !65
  %i.nj = load float, ptr %i.nf, align 4, !tbaa !48, !alias.scope !65
  %i.nk = load float, ptr %i.ng, align 4, !tbaa !48, !alias.scope !65
  %i.nl = load float, ptr %i.nh, align 4, !tbaa !48, !alias.scope !65
  %i.nm = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nn = insertelement <4 x float> %i.nm, float %i.nj, i64 1
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 2
  %i.np = insertelement <4 x float> %i.no, float %i.nl, i64 3 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mq, i64 9
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ms, i64 10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mu, i64 11
  %i.nu = load float, ptr %i.nq, align 4, !tbaa !48, !alias.scope !65
  %i.nv = load float, ptr %i.nr, align 4, !tbaa !48, !alias.scope !65
  %i.nw = load float, ptr %i.ns, align 4, !tbaa !48, !alias.scope !65
  %i.nx = load float, ptr %i.nt, align 4, !tbaa !48, !alias.scope !65
  %i.ny = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nz = insertelement <4 x float> %i.ny, float %i.nv, i64 1
  %i.oa = insertelement <4 x float> %i.nz, float %i.nw, i64 2
  %i.ob = insertelement <4 x float> %i.oa, float %i.nx, i64 3 ; 2 uses
  %i.oc = fmul <4 x float> %i.np, %i.np
  %i.od = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nd, <4 x float> %i.nd, <4 x float> %i.oc)
  %i.oe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ob, <4 x float> %i.ob, <4 x float> %i.od)
  %i.of = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.oe)
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index446
  store <4 x float> %i.of, ptr %i.og, align 4, !tbaa !48, !alias.scope !68, !noalias !65
  %index.next447 = add nuw i64 %index446, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next447, %n.vec444
  br i1 %i.oh, label %middle.block448, label %vector.body445, !llvm.loop !70

middle.block448:                                  ; preds = %vector.body445
  %cmp.n449 = icmp eq i64 %n.vec444, %i.jt
  br i1 %cmp.n449, label %.preheader302.lr.ph.i, label %scalar.ph441.preheader

scalar.ph441.preheader:                           ; preds = %vector.memcheck435, %.lr.ph331.i, %middle.block448
  %indvars.iv379.i.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.lr.ph331.i ], [ %n.vec444, %middle.block448 ] ; 5 uses
  %xtraiter503 = and i64 %i.jt, 1
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %scalar.ph441.prol.loopexit, label %scalar.ph441.prol

scalar.ph441.prol:                                ; preds = %scalar.ph441.preheader
  %i.oi = mul i64 %indvars.iv379.i.ph, %i.mm
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.oi ; 3 uses
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !48 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.om = load float, ptr %i.ol, align 4, !tbaa !48 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.oo = load float, ptr %i.on, align 4, !tbaa !48 ; 2 uses
  %i.op = fmul float %i.om, %i.om
  %i.oq = call float @llvm.fmuladd.f32(float %i.ok, float %i.ok, float %i.op)
  %i.or = call float @llvm.fmuladd.f32(float %i.oo, float %i.oo, float %i.oq)
  %sqrt.i.prol = call float @llvm.sqrt.f32(float %i.or)
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv379.i.ph
  store float %sqrt.i.prol, ptr %i.os, align 4, !tbaa !48
  %indvars.iv.next380.i.prol = or disjoint i64 %indvars.iv379.i.ph, 1
  br label %scalar.ph441.prol.loopexit

scalar.ph441.prol.loopexit:                       ; preds = %scalar.ph441.prol, %scalar.ph441.preheader
  %indvars.iv379.i.unr = phi i64 [ %indvars.iv379.i.ph, %scalar.ph441.preheader ], [ %indvars.iv.next380.i.prol, %scalar.ph441.prol ]
  %i.ot = add nsw i64 %i.jt, -1
  %i.ou = icmp eq i64 %indvars.iv379.i.ph, %i.ot
  br i1 %i.ou, label %.preheader302.lr.ph.i, label %scalar.ph441

.preheader302.lr.ph.i:                            ; preds = %scalar.ph441.prol.loopexit, %scalar.ph441, %middle.block448
  %i.ov = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %5)
  %i.ow = icmp eq i32 %i.ov, 1
  %i.ox = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  br i1 %i.ow, label %.preheader302.us.i, label %.preheader302.i

.preheader302.us.i:                               ; preds = %.preheader302.lr.ph.i, %._crit_edge334.split.us.us.i
  %indvars.iv390.i = phi i64 [ %indvars.iv.next391.i, %._crit_edge334.split.us.us.i ], [ 0, %.preheader302.lr.ph.i ] ; 7 uses
  %i.oy = icmp samesign ult i64 %indvars.iv390.i, %i.jt
  br i1 %i.oy, label %.lr.ph333.us.i, label %._crit_edge334.split.us.us.i

._crit_edge334.split.us.us.i:                     ; preds = %bb.de, %.preheader302.us.i
  %.pre-phi405.i = phi i64 [ %i.jt, %.preheader302.us.i ], [ %i.me, %bb.de ]
  %indvars.iv.next391.i = add nuw nsw i64 %indvars.iv390.i, 1 ; 2 uses
  %i.oz = icmp slt i64 %indvars.iv.next391.i, %.pre-phi405.i
  br i1 %i.oz, label %.preheader302.us.i, label %._crit_edge337.i, !llvm.loop !73

.lr.ph333.us.i:                                   ; preds = %.preheader302.us.i
  %i.pa = mul i64 %indvars.iv390.i, %i.mm
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.pa ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv390.i
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv390.i
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !35
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %bb.de, %.lr.ph333.us.i
  %indvars.iv392.i = phi i64 [ %indvars.iv.next393.i, %bb.de ], [ %indvars.iv390.i, %.lr.ph333.us.i ] ; 5 uses
  %i.pg = mul i64 %indvars.iv392.i, %i.mm
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.pg ; 2 uses
  %i.pi = load <2 x float>, ptr %i.pb, align 4, !tbaa !48 ; 7 uses
  %i.pj = load <2 x float>, ptr %i.ph, align 4, !tbaa !48 ; 7 uses
  %i.pk = load float, ptr %i.pc, align 4, !tbaa !48 ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !48 ; 6 uses
  %i.pn = fsub <2 x float> %i.pi, %i.pj           ; 10 uses
  %i.po = fsub float %i.pk, %i.pm                 ; 7 uses
  switch i32 %i.ox, label %bb.dd [
    i32 0, label %bb.dc
    i32 1, label %bb.db
    i32 2, label %bb.da
    i32 3, label %bb.cz
    i32 4, label %bb.cy
    i32 5, label %bb.de
  ]

bb.cy:                                            ; preds = %.split.us.us.i
  %i.pp = fcmp olt <2 x float> %i.pj, %i.pi
  %i.pq = select <2 x i1> %i.pp, <2 x float> %i.pj, <2 x float> %i.pi ; 2 uses
  %shift = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.pq, %shift
  %i.pr = extractelement <2 x float> %foldExtExtBinop, i64 0
end_hunk_1
