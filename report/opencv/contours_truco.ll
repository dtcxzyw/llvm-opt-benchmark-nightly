Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/contours_truco?download=true
inline.NumInlined: 1019
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_119findTRUContoursImplERN2cv3MatERSt6vectorIS3_INS0_6Point_IiEESaIS5_EESaIS7_EEii:bb.a
  %i.mh = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mi = sub i64 %i.mh, %i.me                    ; 2 uses
  %i.mj = icmp sgt i64 %i.mi, 0
  br i1 %i.mj, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.al
  %i.mk = udiv exact i64 %i.mi, 24
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.mw, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i ], [ %i.mk, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.mv, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i ], [ %i.mc, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.mu, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i ], [ %i.md, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.ml = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !32
  %i.mo = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !64
  store <2 x ptr> %i.mo, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.mp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !32
  store ptr %i.mq, ptr %i.mm, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ml, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mr = ptrtoint ptr %i.mn to i64
  %i.ms = ptrtoint ptr %i.ml to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef %i.mt) #20
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.mv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  %i.mw = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.mx = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.mx, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, !llvm.loop !2

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.mf, align 8, !tbaa !170 ; 2 uses
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, %bb.al, %bb.ak
  %.pre-phi14.i.i = phi i64 [ %i.mh, %bb.al ], [ %.pre13.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i ], [ %i.me, %bb.ak ]
  %i.my = phi ptr [ %i.mg, %bb.al ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i ], [ %i.md, %bb.ak ] ; 2 uses
  %i.mz = sub i64 %.pre-phi14.i.i, %i.me
  %i.na = getelementptr inbounds i8, ptr %i.mc, i64 %i.mz ; 3 uses
  %.not.i.i.i175 = icmp eq ptr %i.my, %i.na
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit, label %.lr.ph.i.i.i.i.i176

.lr.ph.i.i.i.i.i176:                              ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.nh, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.na, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i ] ; 3 uses
  %i.nb = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i176
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !32
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #20
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i.i.i176
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.nh, %i.my
  br i1 %.not.i.i.i.i.i177, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i176, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.na, ptr %i.mf, align 8, !tbaa !27
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit

bb.ao:                                            ; preds = %.lr.ph424, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181
  %i.ni = phi ptr [ %.pre462, %.lr.ph424 ], [ %i.os, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181 ] ; 4 uses
  %i.nj = phi ptr [ %.pre460, %.lr.ph424 ], [ %i.ot, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181 ] ; 3 uses
  %.sroa.0335.0423 = phi ptr [ %i.ma, %.lr.ph424 ], [ %i.ou, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181 ] ; 7 uses
  %.not.i178 = icmp eq ptr %i.nj, %i.ni
  br i1 %.not.i178, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nk = load <2 x ptr>, ptr %.sroa.0335.0423, align 8, !tbaa !64
  store <2 x ptr> %i.nk, ptr %i.nj, align 8, !tbaa !64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0335.0423, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !32
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0335.0423, i8 0, i64 24, i1 false)
  %i.no = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24 ; 2 uses
  store ptr %i.np, ptr %i.dy, align 8, !tbaa !27
  %.pre461 = load ptr, ptr %i.mb, align 8, !tbaa !34
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181

bb.aq:                                            ; preds = %bb.ao
  %i.nq = load ptr, ptr %i.df, align 8, !tbaa !28 ; 5 uses
  %i.nr = ptrtoint ptr %i.ni to i64
  %i.ns = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.nt = sub i64 %i.nr, %i.ns                    ; 3 uses
  %i.nu = icmp eq i64 %i.nt, 9223372036854775800
  br i1 %i.nu, label %bb.ar, label %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i297

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #19
          to label %.noexc316 unwind label %.loopexit.split-lp

.noexc316:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i297: ; preds = %bb.aq
  %i.nv = sdiv exact i64 %i.nt, 24                ; 3 uses
  %.sroa.speculated.i.i298 = call i64 @llvm.umax.i64(i64 %i.nv, i64 1)
  %i.nw = add nsw i64 %.sroa.speculated.i.i298, %i.nv ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.nv
  %i.ny = call i64 @llvm.umin.i64(i64 %i.nw, i64 384307168202282325)
  %i.nz = select i1 %i.nx, i64 384307168202282325, i64 %i.ny ; 3 uses
  %.not.i.i299 = icmp ne i64 %i.nz, 0
  call void @llvm.assume(i1 %.not.i.i299)
  %i.oa = mul nuw nsw i64 %i.nz, 24
  %i.ob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #22
          to label %.noexc317 unwind label %.loopexit ; 5 uses

.noexc317:                                        ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i297
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nt ; 2 uses
  %i.od = load <2 x ptr>, ptr %.sroa.0335.0423, align 8, !tbaa !64
  store <2 x ptr> %i.od, ptr %i.oc, align 8, !tbaa !64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0335.0423, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !32
  store ptr %i.og, ptr %i.oe, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0335.0423, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i300 = icmp eq ptr %i.nq, %i.ni
  br i1 %.not10.i.i.i.i300, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i312, label %.lr.ph.i.i.i.i301

.lr.ph.i.i.i.i301:                                ; preds = %.noexc317, %.lr.ph.i.i.i.i301
  %.012.i.i.i.i302 = phi ptr [ %i.om, %.lr.ph.i.i.i.i301 ], [ %i.ob, %.noexc317 ] ; 3 uses
  %.0911.i.i.i.i303 = phi ptr [ %i.ol, %.lr.ph.i.i.i.i301 ], [ %i.nq, %.noexc317 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.oh = load <2 x ptr>, ptr %.0911.i.i.i.i303, align 8, !tbaa !64, !alias.scope !172, !noalias !171
  store <2 x ptr> %i.oh, ptr %.012.i.i.i.i302, align 8, !tbaa !64, !alias.scope !171, !noalias !172
  %i.oi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i302, i64 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i303, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !32, !alias.scope !172, !noalias !171
  store ptr %i.ok, ptr %i.oi, align 8, !tbaa !32, !alias.scope !171, !noalias !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i303, i8 0, i64 24, i1 false), !alias.scope !172, !noalias !171
  %i.ol = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i303, i64 24 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i302, i64 24 ; 2 uses
  %.not.i.i.i.i304 = icmp eq ptr %i.ol, %i.ni
  br i1 %.not.i.i.i.i304, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i312, label %.lr.ph.i.i.i.i301, !llvm.loop !1

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i312: ; preds = %.lr.ph.i.i.i.i301, %.noexc317
  %.0.lcssa.i.i.i.i306 = phi ptr [ %i.ob, %.noexc317 ], [ %i.om, %.lr.ph.i.i.i.i301 ]
  %i.on = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i306, i64 24 ; 2 uses
  %.not.i23.i314 = icmp eq ptr %i.nq, null
  br i1 %.not.i23.i314, label %.noexc180, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i312
  %i.oo = load ptr, ptr %i.mb, align 8, !tbaa !34
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = sub i64 %i.op, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.oq) #20
  br label %.noexc180

.noexc180:                                        ; preds = %bb.as, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i312
  store ptr %i.ob, ptr %i.df, align 8, !tbaa !28
  store ptr %i.on, ptr %i.dy, align 8, !tbaa !27
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %i.nz ; 2 uses
  store ptr %i.or, ptr %i.mb, align 8, !tbaa !34
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit181: ; preds = %.noexc180, %bb.ap
  %i.os = phi ptr [ %i.or, %.noexc180 ], [ %.pre461, %bb.ap ]
  %i.ot = phi ptr [ %i.on, %.noexc180 ], [ %i.np, %bb.ap ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0335.0423, i64 24 ; 2 uses
  %.not349 = icmp eq ptr %i.ou, %i.li
  br i1 %.not349, label %._crit_edge425, label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i297
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp353

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp353

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEESB_ET0_T_SD_SC_.exit.i.i, %._crit_edge425
  %i.ov = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !67 ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !67 ; 3 uses
  %.not350426 = icmp eq ptr %i.ow, %i.oy
  br i1 %.not350426, label %._crit_edge429, label %.lr.ph428

.lr.ph428:                                        ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit
  %13 = trunc i64 %i.dw to i32                    ; 2 uses
  %i.oz = ptrtoaddr ptr %i.oy to i64
  %i.pa = ptrtoaddr ptr %i.ow to i64
  %i.pb = add i64 %i.oz, -4
  %i.pc = sub i64 %i.pb, %i.pa                    ; 2 uses
  %i.pd = lshr i64 %i.pc, 2
  %i.pe = add nuw nsw i64 %i.pd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.pc, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph428
  %n.vec = and i64 %i.pe, 9223372036854775800     ; 3 uses
  %i.pf = shl i64 %n.vec, 2
  %i.pg = getelementptr i8, ptr %i.ow, i64 %i.pf
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ph = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ow, i64 %i.ph ; 3 uses
  %i.pi = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !40
  %wide.load902 = load <4 x i32>, ptr %i.pi, align 4, !tbaa !40
  %i.pj = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.pk = sub nsw <4 x i32> %wide.load902, %broadcast.splat
  store <4 x i32> %i.pj, ptr %next.gep, align 4, !tbaa !40
  store <4 x i32> %i.pk, ptr %i.pi, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pl = icmp eq i64 %index.next, %n.vec
  br i1 %i.pl, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pe, %n.vec
  br i1 %cmp.n, label %._crit_edge429, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph428, %middle.block
  %.sroa.0326.0427.ph = phi ptr [ %i.ow, %.lr.ph428 ], [ %i.pg, %middle.block ]
  br label %scalar.ph

._crit_edge429:                                   ; preds = %scalar.ph, %middle.block, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit
  %i.pm = load ptr, ptr %i.dh, align 8, !tbaa !63 ; 2 uses
  %i.pn = load ptr, ptr %i.di, align 8, !tbaa !62
  %.not.i.i182 = icmp eq ptr %i.pn, %i.pm
  br i1 %.not.i.i182, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge429
  store ptr %i.pm, ptr %i.di, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %._crit_edge429, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.po = load ptr, ptr %i.dp, align 8, !tbaa !63 ; 2 uses
  %i.pp = load ptr, ptr %i.dq, align 8, !tbaa !62
  %.not.i.i183 = icmp eq ptr %i.pp, %i.po
  br i1 %.not.i.i183, label %_ZNSt6vectorIiSaIiEE5clearEv.exit185, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i184

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i184:     ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.po, ptr %i.dq, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit185

_ZNSt6vectorIiSaIiEE5clearEv.exit185:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i184
  %i.pq = load ptr, ptr %10, align 8, !tbaa !28   ; 5 uses
  %i.pr = load ptr, ptr %i.db, align 8, !tbaa !27 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pq, %i.pr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit185, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.py, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i ], [ %i.pq, %_ZNSt6vectorIiSaIiEE5clearEv.exit185 ] ; 3 uses
  %i.ps = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !32
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.ps to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.px) #20
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.py, %i.pr
  br i1 %.not.i.i.i186, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit185
  %.not.i.i1.i = icmp eq ptr %i.pq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.pz = ptrtoint ptr %i.lh to i64
  %i.qa = ptrtoint ptr %i.pq to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.qb) #20
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.val124.pre = load ptr, ptr %7, align 8, !tbaa !49
  %.val125.pre = load ptr, ptr %i.bk, align 8, !tbaa !51
  br label %bb.av

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0326.0427 = phi ptr [ %i.qe, %scalar.ph ], [ %.sroa.0326.0427.ph, %scalar.ph.preheader ] ; 3 uses
  %i.qc = load i32, ptr %.sroa.0326.0427, align 4, !tbaa !40
  %i.qd = sub nsw i32 %i.qc, %13
  store i32 %i.qd, ptr %.sroa.0326.0427, align 4, !tbaa !40
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0326.0427, i64 4 ; 2 uses
  %.not350 = icmp eq ptr %i.qe, %i.oy
  br i1 %.not350, label %._crit_edge429, label %scalar.ph, !llvm.loop !148

bb.av:                                            ; preds = %bb.o, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit
  %.val125 = phi ptr [ %.val125466, %bb.o ], [ %.val125.pre, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit ] ; 3 uses
  %.val124 = phi ptr [ %.val124464, %bb.o ], [ %.val124.pre, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev.exit ] ; 3 uses
  %i.qf = add nuw i64 %i.de, 1                    ; 2 uses
  %i.qg = ptrtoint ptr %.val125 to i64
  %i.qh = ptrtoint ptr %.val124 to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = sdiv exact i64 %i.qi, 72
  %i.qk = icmp ult i64 %i.qf, %i.qj
  br i1 %i.qk, label %bb.o, label %.preheader, !llvm.loop !149

.loopexit.split-lp353:                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit352, %.loopexit.split-lp353.loopexit.split-lp.loopexit, %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp353.loopexit, %.loopexit364, %.loopexit.split-lp365
  %.pn115.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp370, %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp367, %.loopexit.split-lp365 ], [ %lpad.loopexit366, %.loopexit364 ], [ %lpad.loopexit354, %.loopexit352 ], [ %lpad.loopexit358, %.loopexit.split-lp353.loopexit ], [ %lpad.loopexit361, %.loopexit.split-lp353.loopexit.split-lp.loopexit ], [ %lpad.loopexit369, %.loopexit.split-lp353.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.br

._crit_edge442:                                   ; preds = %.lr.ph441, %.preheader
  %.0103.lcssa = phi i64 [ 0, %.preheader ], [ %i.sf, %.lr.ph441 ] ; 4 uses
  %i.ql = load ptr, ptr %1, align 8, !tbaa !28    ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !27 ; 3 uses
  %.not.i.i188 = icmp eq ptr %i.qn, %i.ql
  br i1 %.not.i.i188, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i189

.lr.ph.i.i.i.i189:                                ; preds = %._crit_edge442, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i192
  %.05.i.i.i.i190 = phi ptr [ %i.qu, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i192 ], [ %i.ql, %._crit_edge442 ] ; 3 uses
  %i.qo = load ptr, ptr %.05.i.i.i.i190, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i.i.i.i.i191 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i.i.i.i.i.i191, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i192, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i189
  %i.qp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i190, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !32
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = sub i64 %i.qr, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef %i.qt) #20
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i192

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i192: ; preds = %bb.aw, %.lr.ph.i.i.i.i189
  %i.qu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i190, i64 24 ; 2 uses
  %.not.i.i.i.i193 = icmp eq ptr %i.qu, %i.qn
  br i1 %.not.i.i.i.i193, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i194, label %.lr.ph.i.i.i.i189, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i194: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i192
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !27
  br label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5clearEv.exit

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5clearEv.exit: ; preds = %._crit_edge442, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i194
  %i.qv = phi ptr [ %i.qn, %._crit_edge442 ], [ %i.ql, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i194 ] ; 2 uses
  %i.qw = icmp ugt i64 %.0103.lcssa, 384307168202282325
  br i1 %i.qw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5clearEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc206 unwind label %bb.ba

.noexc206:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE5clearEv.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !34
  %i.qz = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = ptrtoint ptr %i.qz to i64               ; 2 uses
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = sdiv exact i64 %i.rc, 24
  %i.re = icmp ult i64 %i.rd, %.0103.lcssa
  br i1 %i.re, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit.i195, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE7reserveEm.exit208

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit.i195: ; preds = %bb.ay
  %i.rf = ptrtoint ptr %i.qv to i64
  %i.rg = sub i64 %i.rf, %i.rb
  %i.rh = mul nuw nsw i64 %.0103.lcssa, 24
  %i.ri = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rh) #22
          to label %.noexc207 unwind label %bb.ba ; 5 uses

.noexc207:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit.i195
  %i.rj = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %i.rk = load ptr, ptr %i.qm, align 8, !tbaa !27 ; 2 uses
  %.not10.i.i.i.i196 = icmp eq ptr %i.rj, %i.rk
  br i1 %.not10.i.i.i.i196, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i203, label %.lr.ph.i.i.i.i197

.lr.ph.i.i.i.i197:                                ; preds = %.noexc207, %.lr.ph.i.i.i.i197
  %.012.i.i.i.i198 = phi ptr [ %i.rq, %.lr.ph.i.i.i.i197 ], [ %i.ri, %.noexc207 ] ; 3 uses
  %.0911.i.i.i.i199 = phi ptr [ %i.rp, %.lr.ph.i.i.i.i197 ], [ %i.rj, %.noexc207 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
end_hunk_0
