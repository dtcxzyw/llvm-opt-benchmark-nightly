inline.NumInlined: 783
inline.NumDeleted: 222
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_15BTVL112processFrameEi:bb.a
          to label %.noexc225.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc225.i:                                      ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i.i
  %i.lw = load ptr, ptr %i.ka, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.lx = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %41, align 8, !tbaa !101
  %i.ly = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %42, ptr %i.ly, align 8, !tbaa !104
  store i64 17179869185, ptr %i.lx, align 8
  %i.lz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc226.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc226.i:                                      ; preds = %.noexc225.i
  %i.ma = getelementptr inbounds nuw [208 x i8], ptr %i.lw, i64 %i.lt
  %i.mb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.ma, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %i.lz)
          to label %.noexc227.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i ; 0 uses

.noexc227.i:                                      ; preds = %.noexc226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !91 ; 3 uses
  %i.me = load ptr, ptr %i.kb, align 8, !tbaa !90 ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = sdiv exact i64 %i.mh, 208               ; 3 uses
  %i.mj = icmp ugt i64 %i.lg, %i.mi
  br i1 %i.mj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.noexc227.i
  %i.mk = sub nuw nsw i64 %i.lg, %i.mi
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, i64 noundef %i.mk)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

bb.cq:                                            ; preds = %.noexc227.i
  %i.ml = icmp ult i64 %i.lg, %i.mi
  br i1 %i.ml, label %bb.cr, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.mm = getelementptr inbounds nuw [208 x i8], ptr %i.me, i64 %i.lg ; 3 uses
  %.not.i.i79.i.i = icmp eq ptr %i.md, %i.mm
  br i1 %.not.i.i79.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i, label %.lr.ph.i.i.i.i80.i.i

.lr.ph.i.i.i.i80.i.i:                             ; preds = %bb.cr, %.lr.ph.i.i.i.i80.i.i
  %.05.i.i.i.i81.i.i = phi ptr [ %i.mn, %.lr.ph.i.i.i.i80.i.i ], [ %i.mm, %bb.cr ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i81.i.i) #31
  %i.mn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i82.i.i = icmp eq ptr %i.mn, %i.md
  br i1 %.not.i.i.i.i82.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i, label %.lr.ph.i.i.i.i80.i.i, !llvm.loop !92

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i: ; preds = %.lr.ph.i.i.i.i80.i.i
  store ptr %i.mm, ptr %i.mc, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i83.i.i, %bb.cr, %bb.cq, %bb.cp
  %i.mo = load ptr, ptr %i.kb, align 8, !tbaa !90
  %i.mp = getelementptr inbounds nuw [208 x i8], ptr %i.mo, i64 %i.lt
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.mp, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 37)
          to label %.noexc229.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc229.i:                                      ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit84.i.i
  %i.mq = load ptr, ptr %i.kb, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  %i.mr = getelementptr inbounds nuw i8, ptr %43, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %44, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %43, align 8, !tbaa !101
  %i.ms = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %44, ptr %i.ms, align 8, !tbaa !104
  store i64 17179869185, ptr %i.mr, align 8
  %i.mt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc230.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i

.noexc230.i:                                      ; preds = %.noexc229.i
  %i.mu = getelementptr inbounds nuw [208 x i8], ptr %i.mq, i64 %i.lt
  %i.mv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %i.mt)
          to label %.noexc231.i unwind label %.loopexit.split-lp400.loopexit.split-lp.i ; 0 uses

.noexc231.i:                                      ; preds = %.noexc230.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  %i.mw = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.mw, label %.lr.ph.i220.i, label %.preheader.i.i

.lr.ph.i220.i:                                    ; preds = %.noexc231.i
  %i.mx = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %45, i64 20
  %i.mz = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %46, i64 20
  %i.nc = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %48, i64 20
  %i.nh = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %49, i64 20
  %i.nk = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.nn = zext nneg i32 %.031.lcssa to i64
  br label %bb.cs

.preheader.i.i:                                   ; preds = %.noexc235.i, %.noexc231.i
  %.08.i.i = add nsw i32 %.031.lcssa, 1           ; 2 uses
  %i.no = icmp slt i32 %.08.i.i, %i.lf
  br i1 %i.no, label %.lr.ph11.i.i, label %.loopexit404.i

.lr.ph11.i.i:                                     ; preds = %.preheader.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %51, i64 20
  %i.nr = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.nu = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %54, i64 20
  %i.nz = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %55, i64 20
  %i.oc = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.of = sext i32 %.08.i.i to i64
  br label %bb.ct

bb.cs:                                            ; preds = %.noexc235.i, %.lr.ph.i220.i
  %indvars.iv.i221.i = phi i64 [ %i.nn, %.lr.ph.i220.i ], [ %indvars.iv.next.i222.i, %.noexc235.i ] ; 5 uses
  %indvars.iv.next.i222.i = add nsw i64 %indvars.iv.i221.i, -1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  %i.og = load ptr, ptr %i.ka, align 8, !tbaa !90 ; 2 uses
  %i.oh = getelementptr inbounds nuw [208 x i8], ptr %i.og, i64 %indvars.iv.i221.i
  store i32 0, ptr %i.mx, align 8, !tbaa !105
  store i32 0, ptr %i.my, align 4, !tbaa !106
  store i32 16842752, ptr %45, align 8, !tbaa !101
  store ptr %i.oh, ptr %i.mz, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  %i.oi = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.oj = getelementptr inbounds nuw [208 x i8], ptr %i.oi, i64 %indvars.iv.next.i222.i
  store i32 0, ptr %i.na, align 8, !tbaa !105
  store i32 0, ptr %i.nb, align 4, !tbaa !106
  store i32 16842752, ptr %46, align 8, !tbaa !101
  store ptr %i.oj, ptr %i.nc, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  %i.ok = getelementptr inbounds nuw [208 x i8], ptr %i.og, i64 %indvars.iv.next.i222.i
  store i64 0, ptr %i.ne, align 8
  store i32 33619968, ptr %47, align 8, !tbaa !101
  store ptr %i.ok, ptr %i.nd, align 8, !tbaa !104
  %i.ol = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc232.i unwind label %.loopexit.split-lp400.loopexit.i

.noexc232.i:                                      ; preds = %bb.cs
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %i.ol, i32 noundef -1)
          to label %.noexc233.i unwind label %.loopexit.split-lp400.loopexit.i

.noexc233.i:                                      ; preds = %.noexc232.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  %i.om = load ptr, ptr %i.kb, align 8, !tbaa !90 ; 2 uses
  %i.on = getelementptr inbounds nuw [208 x i8], ptr %i.om, i64 %indvars.iv.i221.i
  store i32 0, ptr %i.nf, align 8, !tbaa !105
  store i32 0, ptr %i.ng, align 4, !tbaa !106
  store i32 16842752, ptr %48, align 8, !tbaa !101
  store ptr %i.on, ptr %i.nh, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  %i.oo = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.op = getelementptr inbounds nuw [208 x i8], ptr %i.oo, i64 %indvars.iv.i221.i
  store i32 0, ptr %i.ni, align 8, !tbaa !105
  store i32 0, ptr %i.nj, align 4, !tbaa !106
  store i32 16842752, ptr %49, align 8, !tbaa !101
  store ptr %i.op, ptr %i.nk, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #31
  %i.oq = getelementptr inbounds nuw [208 x i8], ptr %i.om, i64 %indvars.iv.next.i222.i
  store i64 0, ptr %i.nm, align 8
  store i32 33619968, ptr %50, align 8, !tbaa !101
  store ptr %i.oq, ptr %i.nl, align 8, !tbaa !104
  %i.or = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc234.i unwind label %.loopexit.split-lp400.loopexit.i

.noexc234.i:                                      ; preds = %.noexc233.i
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i32 noundef -1)
          to label %.noexc235.i unwind label %.loopexit.split-lp400.loopexit.i

.noexc235.i:                                      ; preds = %.noexc234.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #31
  %i.os = icmp samesign ugt i64 %indvars.iv.i221.i, 1
  br i1 %i.os, label %bb.cs, label %.preheader.i.i, !llvm.loop !128

bb.ct:                                            ; preds = %.noexc239.i, %.lr.ph11.i.i
  %indvars.iv13.i.i.a = phi i64 [ %i.of, %.lr.ph11.i.i ], [ %indvars.iv.next14.i.i.a, %.noexc239.i ] ; 5 uses
  %.0.in9.i.i = phi i64 [ %i.lt, %.lr.ph11.i.i ], [ %indvars.iv13.i.i.a, %.noexc239.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #31
  %i.ot = load ptr, ptr %i.ka, align 8, !tbaa !90 ; 2 uses
  %i.ou = getelementptr inbounds nuw [208 x i8], ptr %i.ot, i64 %.0.in9.i.i
  store i32 0, ptr %i.np, align 8, !tbaa !105
  store i32 0, ptr %i.nq, align 4, !tbaa !106
  store i32 16842752, ptr %51, align 8, !tbaa !101
  store ptr %i.ou, ptr %i.nr, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #31
  %i.ov = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.ow = getelementptr inbounds nuw [208 x i8], ptr %i.ov, i64 %indvars.iv13.i.i.a
  store i32 0, ptr %i.ns, align 8, !tbaa !105
  store i32 0, ptr %i.nt, align 4, !tbaa !106
  store i32 16842752, ptr %52, align 8, !tbaa !101
  store ptr %i.ow, ptr %i.nu, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #31
  %i.ox = getelementptr inbounds nuw [208 x i8], ptr %i.ot, i64 %indvars.iv13.i.i.a
  store i64 0, ptr %i.nw, align 8
  store i32 33619968, ptr %53, align 8, !tbaa !101
  store ptr %i.ox, ptr %i.nv, align 8, !tbaa !104
  %i.oy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc236.i unwind label %.loopexit399.i

.noexc236.i:                                      ; preds = %bb.ct
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %i.oy, i32 noundef -1)
          to label %.noexc237.i unwind label %.loopexit399.i

.noexc237.i:                                      ; preds = %.noexc236.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #31
  %i.oz = load ptr, ptr %i.kb, align 8, !tbaa !90 ; 2 uses
  %i.pa = getelementptr inbounds nuw [208 x i8], ptr %i.oz, i64 %.0.in9.i.i
  store i32 0, ptr %i.nx, align 8, !tbaa !105
  store i32 0, ptr %i.ny, align 4, !tbaa !106
  store i32 16842752, ptr %54, align 8, !tbaa !101
  store ptr %i.pa, ptr %i.nz, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #31
  %i.pb = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.pc = getelementptr inbounds nuw [208 x i8], ptr %i.pb, i64 %.0.in9.i.i
  store i32 0, ptr %i.oa, align 8, !tbaa !105
  store i32 0, ptr %i.ob, align 4, !tbaa !106
  store i32 16842752, ptr %55, align 8, !tbaa !101
  store ptr %i.pc, ptr %i.oc, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #31
  %i.pd = getelementptr inbounds nuw [208 x i8], ptr %i.oz, i64 %indvars.iv13.i.i.a
  store i64 0, ptr %i.oe, align 8
  store i32 33619968, ptr %56, align 8, !tbaa !101
  store ptr %i.pd, ptr %i.od, align 8, !tbaa !104
  %i.pe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc238.i unwind label %.loopexit399.i

.noexc238.i:                                      ; preds = %.noexc237.i
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %i.pe, i32 noundef -1)
          to label %.noexc239.i unwind label %.loopexit399.i

.noexc239.i:                                      ; preds = %.noexc238.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #31
  %indvars.iv.next14.i.i.a = add nsw i64 %indvars.iv13.i.i.a, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next14.i.i.a to i32
  %exitcond.not.i219.i = icmp eq i32 %lftr.wideiv.i.i, %i.lf
  br i1 %exitcond.not.i219.i, label %.loopexit404.i, label %bb.ct, !llvm.loop !129

.loopexit404.i:                                   ; preds = %.noexc239.i, %.preheader.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.pg = load i32, ptr %i.em, align 4, !tbaa !18
  invoke fastcc void @_ZN12_GLOBAL__N_114upscaleMotionsERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr nonnull %i.ka, ptr nonnull %i.pf, i32 noundef %i.pg)
          to label %bb.cu unwind label %bb.dj

bb.cu:                                            ; preds = %.loopexit404.i
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.pi = load i32, ptr %i.em, align 4, !tbaa !18
  invoke fastcc void @_ZN12_GLOBAL__N_114upscaleMotionsERKN2cv11_InputArrayERKNS0_12_OutputArrayEi(ptr nonnull %i.kb, ptr nonnull %i.ph, i32 noundef %i.pi)
          to label %bb.cv unwind label %bb.dk

bb.cv:                                            ; preds = %bb.cu
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !91
  %i.pm = load ptr, ptr %i.pf, align 8, !tbaa !90
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = sdiv exact i64 %i.pp, 208               ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !91 ; 3 uses
  %i.pt = load ptr, ptr %i.pj, align 8, !tbaa !90 ; 2 uses
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = sdiv exact i64 %i.pw, 208               ; 3 uses
  %i.py = icmp ugt i64 %i.pq, %i.px
  br i1 %i.py, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.pz = sub nuw nsw i64 %i.pq, %i.px
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pj, i64 noundef %i.pz)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i unwind label %bb.bv

bb.cx:                                            ; preds = %bb.cv
  %i.qa = icmp ult i64 %i.pq, %i.px
  br i1 %i.qa, label %bb.cy, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i

bb.cy:                                            ; preds = %bb.cx
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pp ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ps, %i.qb
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cy, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.qc, %.lr.ph.i.i.i.i.i ], [ %i.qb, %bb.cy ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #31
  %i.qc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.qc, %i.ps
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !92

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.qb, ptr %i.pr, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.cy, %bb.cx, %bb.cw
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.qe = load ptr, ptr %i.pk, align 8, !tbaa !91
  %i.qf = load ptr, ptr %i.pf, align 8, !tbaa !90
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 2 uses
  %i.qj = sdiv exact i64 %i.qi, 208               ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !91 ; 3 uses
  %i.qm = load ptr, ptr %i.qd, align 8, !tbaa !90 ; 2 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = sdiv exact i64 %i.qp, 208               ; 3 uses
  %i.qr = icmp ugt i64 %i.qj, %i.qq
  br i1 %i.qr, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i
  %i.qs = sub nuw nsw i64 %i.qj, %i.qq
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qd, i64 noundef %i.qs)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i unwind label %bb.bv

bb.da:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit.i
  %i.qt = icmp ult i64 %i.qj, %i.qq
  br i1 %i.qt, label %bb.db, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i

bb.db:                                            ; preds = %bb.da
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qi ; 3 uses
  %.not.i.i241.i = icmp eq ptr %i.ql, %i.qu
  br i1 %.not.i.i241.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i, label %.lr.ph.i.i.i.i242.i

.lr.ph.i.i.i.i242.i:                              ; preds = %bb.db, %.lr.ph.i.i.i.i242.i
  %.05.i.i.i.i243.i = phi ptr [ %i.qv, %.lr.ph.i.i.i.i242.i ], [ %i.qu, %bb.db ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i243.i) #31
  %i.qv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i243.i, i64 208 ; 2 uses
  %.not.i.i.i.i244.i = icmp eq ptr %i.qv, %i.ql
  br i1 %.not.i.i.i.i244.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i245.i, label %.lr.ph.i.i.i.i242.i, !llvm.loop !92

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i245.i: ; preds = %.lr.ph.i.i.i.i242.i
  store ptr %i.qu, ptr %i.qk, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i245.i, %bb.db, %bb.da, %bb.cz
  %i.qw = load ptr, ptr %i.pk, align 8, !tbaa !91
  %i.qx = load ptr, ptr %i.pf, align 8, !tbaa !90 ; 2 uses
  %.not417.i = icmp eq ptr %i.qw, %i.qx
  br i1 %.not417.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i
  %i.qy = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %74, i64 20
  %i.ra = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.rc = getelementptr inbounds nuw i8, ptr %75, i64 20
  %i.rd = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %77, i64 16
  %i.ri = getelementptr inbounds nuw i8, ptr %35, i64 72 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %35, i64 84 ; 2 uses
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.rm = getelementptr inbounds nuw i8, ptr %35, i64 128
  %i.rn = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %36, i64 128
  %i.rp = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.rr = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %38, i64 128
  %i.rt = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 2 uses
  br label %bb.dl

._crit_edge.i:                                    ; preds = %.loopexit393.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit247.i
  %i.ru = load ptr, ptr %i.i, align 8, !tbaa !90  ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 72
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !127 ; 6 uses
  %i.rx = icmp slt i32 %i.rw, 3
  br i1 %i.rx, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %.noexc257.i unwind label %bb.ew

.noexc257.i:                                      ; preds = %bb.dc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.14, i32 noundef 109) #34
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %.noexc257.i
  unreachable

bb.de:                                            ; preds = %.noexc257.i
  %i.ry = landingpad { ptr, i32 }
          cleanup
  %i.rz = load ptr, ptr %39, align 8, !tbaa !117  ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248.i: ; preds = %bb.de
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !68
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249.i: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br label %.body.i

bb.df:                                            ; preds = %._crit_edge.i
  %i.se = icmp sgt i32 %i.rw, 0
  br i1 %i.se, label %bb.dg, label %.thread.i251.i

.thread.i251.i:                                   ; preds = %bb.df
  %i.sf = icmp eq i32 %i.rw, 0
  %i.sg = zext i1 %i.sf to i32
  br label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 84 ; 2 uses
  %i.si = icmp eq i32 %i.rw, 2
  %i.sj = zext i1 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !69 ; 2 uses
  %.not.i256.i = icmp eq i32 %i.rw, 1
  br i1 %.not.i256.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sm = load i32, ptr %i.sh, align 4, !tbaa !69
  br label %bb.er

bb.di:                                            ; preds = %bb.dg, %.thread.i251.i
  %i.sn = phi i32 [ %i.sg, %.thread.i251.i ], [ %i.sl, %bb.dg ]
  %i.so = icmp sgt i32 %i.rw, -1
  %i.sp = zext i1 %i.so to i32
  br label %bb.er
end_hunk_0
