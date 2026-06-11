inline.NumInlined: 3331
inline.NumDeleted: 1008
begin_hunk_0_@_ZN11OpenImageIO4v3_17PNG_pvt9read_infoERP14png_struct_defRP12png_info_defRiS8_S8_RN9Imath_3_16Color3IfEERNS0_9ImageSpecEb:bb.a

thread-pre-split.i:                               ; preds = %bb.az
  %.pr.i = load i64, ptr %i.ht, align 8, !tbaa !72 ; 2 uses
  %i.lk = icmp ugt i64 %.pr.i, 1
  br i1 %i.lk, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %thread-pre-split.i
  %.pre.i = load ptr, ptr %51, align 8, !tbaa !70
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.backedge.i, %.lr.ph.preheader.i
  %i.ll = phi ptr [ %i.ls, %.backedge.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.lm = phi i64 [ %.be.i, %.backedge.i ], [ %.pr.i, %.lr.ph.preheader.i ]
  %i.ln = load i8, ptr %i.ll, align 1, !tbaa !16  ; 2 uses
  %i.lo = sext i8 %i.ln to i32                    ; 3 uses
  %i.lp = call i32 @isxdigit(i32 noundef %i.lo) #34
  %.not.i168 = icmp eq i32 %i.lp, 0
  br i1 %.not.i168, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 1 ; 2 uses
  store ptr %i.lq, ptr %51, align 8, !tbaa !70
  %i.lr = add i64 %i.lm, -1
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i, %bb.ba
  %i.ls = phi ptr [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i ], [ %i.lq, %bb.ba ]
  %.be.i = phi i64 [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i ], [ %i.lr, %bb.ba ] ; 3 uses
  store i64 %.be.i, ptr %i.ht, align 8, !tbaa !72
  %i.lt = icmp ugt i64 %.be.i, 1
  br i1 %i.lt, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !131

bb.bb:                                            ; preds = %bb.bj, %._crit_edge.i, %bb.az
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bc:                                            ; preds = %.lr.ph.i
  %i.lv = icmp slt i8 %i.ln, 58
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = add nsw i32 %i.lo, -48
  br label %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.lx = call i32 @tolower(i32 noundef %i.lo) #34
  %i.ly = add nsw i32 %i.lx, -87
  br label %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit.i

_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit.i:   ; preds = %bb.be, %bb.bd
  %i.lz = phi i32 [ %i.lw, %bb.bd ], [ %i.ly, %bb.be ]
  %i.ma = shl i32 %i.lz, 4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !16  ; 2 uses
  %i.md = sext i8 %i.mc to i32                    ; 2 uses
  %i.me = icmp slt i8 %i.mc, 58
  br i1 %i.me, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit.i
  %i.mf = add nsw i32 %i.md, -48
  br label %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit8.i

bb.bg:                                            ; preds = %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit.i
  %i.mg = call i32 @tolower(i32 noundef %i.md) #34
  %i.mh = add nsw i32 %i.mg, -87
  br label %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit8.i

_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit8.i:  ; preds = %bb.bg, %bb.bf
  %i.mi = phi i32 [ %i.mf, %bb.bf ], [ %i.mh, %bb.bg ]
  %i.mj = or i32 %i.mi, %i.ma
  %i.mk = trunc i32 %i.mj to i8
  %i.ml = load i64, ptr %i.hw, align 8, !tbaa !13
  %i.mm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.ml, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.mk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i unwind label %bb.bh ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i: ; preds = %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit8.i
  %i.mn = load i64, ptr %i.ht, align 8, !tbaa !72 ; 2 uses
  %spec.select.i9.i = call i64 @llvm.umin.i64(i64 %i.mn, i64 2) ; 2 uses
  %i.mo = load ptr, ptr %51, align 8, !tbaa !70
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %spec.select.i9.i ; 2 uses
  store ptr %i.mp, ptr %51, align 8, !tbaa !70
  %i.mq = sub i64 %i.mn, %spec.select.i9.i
  br label %.backedge.i

bb.bh:                                            ; preds = %_ZN11OpenImageIO4v3_17PNG_pvt7hex2intEc.exit8.i
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

._crit_edge.i:                                    ; preds = %.backedge.i, %thread-pre-split.i
  %i.ms = load ptr, ptr %15, align 8, !tbaa !77
  store ptr %i.ms, ptr %16, align 8, !tbaa !70
  %i.mt = load i64, ptr %i.hw, align 8, !tbaa !13
  store i64 %i.mt, ptr %i.hx, align 8, !tbaa !72
  store ptr @.str.83, ptr %17, align 8, !tbaa !70
  store i64 4, ptr %i.hy, align 8, !tbaa !72
  %i.mu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
          to label %bb.bi unwind label %bb.bb

bb.bi:                                            ; preds = %._crit_edge.i
  br i1 %i.mu, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mv = load ptr, ptr %15, align 8, !tbaa !77
  store ptr %i.mv, ptr %18, align 8, !tbaa !70
  %i.mw = load i64, ptr %i.hw, align 8, !tbaa !13
  store i64 %i.mw, ptr %i.hz, align 8, !tbaa !72
  %i.mx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef nonnull dead_on_return %18, ptr noundef nonnull align 8 dereferenceable(160) %6)
          to label %bb.bk unwind label %bb.bb     ; 0 uses

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.my = load ptr, ptr %15, align 8, !tbaa !77   ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.hv
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166: ; preds = %bb.bk
  %i.na = load i64, ptr %i.hv, align 8, !tbaa !16
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh, %bb.bb
  %.pn.i = phi { ptr, i32 } [ %i.mr, %bb.bh ], [ %i.lu, %bb.bb ]
  %i.nc = load ptr, ptr %15, align 8, !tbaa !77   ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.hv
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %bb.bl
  %i.ne = load i64, ptr %i.hv, align 8, !tbaa !16
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

common.resume:                                    ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i ], [ %.pn, %bb.ci ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %common.resume

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %_ZN11OpenImageIO4v3_17PNG_pvtL20decode_png_text_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE.exit

_ZN11OpenImageIO4v3_17PNG_pvtL20decode_png_text_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE.exit: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit165, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.bq

bb.bn:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit163
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !128 ; 3 uses
  store ptr %i.nh, ptr %52, align 8, !tbaa !70
  %.not.i169 = icmp eq ptr %i.nh, null
  br i1 %.not.i169, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit170, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ni = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nh) #30
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit170

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit170: ; preds = %bb.bn, %bb.bo
  %i.nj = phi i64 [ %i.ni, %bb.bo ], [ 0, %bb.bn ]
  store i64 %i.nj, ptr %i.hr, align 8, !tbaa !72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !130 ; 3 uses
  store ptr %i.nl, ptr %53, align 8, !tbaa !70
  %.not.i171 = icmp eq ptr %i.nl, null
  br i1 %.not.i171, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit172, label %bb.bp

bb.bp:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit170
  %i.nm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nl) #30
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit172

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit172: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit170, %bb.bp
  %i.nn = phi i64 [ %i.nm, %bb.bp ], [ 0, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit170 ]
  store i64 %i.nn, ptr %i.hs, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %52, ptr noundef nonnull dead_on_return %53)
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit149, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit157, %_ZN11OpenImageIO4v3_17PNG_pvtL20decode_png_text_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit172, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit161, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit153
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !132

bb.br:                                            ; preds = %._crit_edge
  %i.no = load i32, ptr %i.s, align 4, !tbaa !3
  %i.np = icmp eq i32 %i.no, 1
  br i1 %i.np, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nq = load i32, ptr %i.t, align 4, !tbaa !3
  %i.nr = load i32, ptr %i.u, align 4, !tbaa !3
  %i.ns = uitofp i32 %i.nr to float
  %62 = uitofp i32 %i.nq to float
  %63 = insertelement <2 x float> poison, float %62, i64 0
  %64 = insertelement <2 x float> %63, float %i.ns, i64 1
  %65 = fmul nnan <2 x float> %64, splat (float 2.540000e-02)
  %66 = fmul nnan <2 x float> %65, splat (float 1.000000e+01)
  %67 = call <2 x float> @llvm.round.v2f32(<2 x float> %66)
  %68 = fdiv <2 x float> %67, splat (float 1.000000e+01) ; 2 uses
  store ptr @.str.75, ptr %54, align 8, !tbaa !70
  %i.nt = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 14, ptr %i.nt, align 8, !tbaa !72
  store ptr @.str.76, ptr %55, align 8, !tbaa !70
  %i.nu = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 4, ptr %i.nu, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %54, ptr noundef nonnull dead_on_return %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %69 = extractelement <2 x float> %68, i64 0
  store float %69, ptr %i.f, align 4, !tbaa !133
  store ptr @.str.77, ptr %13, align 8, !tbaa !70
  %i.nv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.nv, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %13, i64 267, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %70 = extractelement <2 x float> %68, i64 1
  store float %70, ptr %i.e, align 4, !tbaa !133
  store ptr @.str.78, ptr %12, align 8, !tbaa !70
  %i.nw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 11, ptr %i.nw, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %12, i64 267, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  store ptr @.str.75, ptr %56, align 8, !tbaa !70
  %i.nx = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 14, ptr %i.nx, align 8, !tbaa !72
  store ptr @.str.79, ptr %57, align 8, !tbaa !70
  %i.ny = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 4, ptr %i.ny, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %56, ptr noundef nonnull dead_on_return %57)
  %i.nz = load i32, ptr %i.t, align 4, !tbaa !3
  %i.oa = uitofp i32 %i.nz to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store float %i.oa, ptr %i.d, align 4, !tbaa !133
  store ptr @.str.77, ptr %11, align 8, !tbaa !70
  %i.ob = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 11, ptr %i.ob, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %11, i64 267, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.oc = load i32, ptr %i.u, align 4, !tbaa !3
  %i.od = uitofp i32 %i.oc to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store float %i.od, ptr %i.c, align 4, !tbaa !133
  store ptr @.str.78, ptr %10, align 8, !tbaa !70
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 11, ptr %i.oe, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %10, i64 267, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %._crit_edge
  %i.of = load ptr, ptr %0, align 8, !tbaa !87
  %i.og = load ptr, ptr %1, align 8, !tbaa !89
  %i.oh = call float @png_get_pixel_aspect_ratio(ptr noundef %i.of, ptr noundef %i.og) ; 3 uses
  %i.oi = fcmp une float %i.oh, 0.000000e+00
  %i.oj = fcmp une float %i.oh, 1.000000e+00
  %or.cond6 = and i1 %i.oi, %i.oj
  br i1 %or.cond6, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store float %i.oh, ptr %i.b, align 4, !tbaa !133
  store ptr @.str.80, ptr %9, align 8, !tbaa !70
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 16, ptr %i.ok, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %9, i64 267, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.ol = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x)
  br i1 %i.ol, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.om = load float, ptr %i.v, align 4, !tbaa !133
  %i.on = load float, ptr %i.w, align 4, !tbaa !133
  %i.oo = load float, ptr %i.x, align 4, !tbaa !133
  store float %i.om, ptr %5, align 4, !tbaa !134
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.on, ptr %i.op, align 4, !tbaa !135
  %i.oq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.oo, ptr %i.oq, align 4, !tbaa !136
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.or = load ptr, ptr %0, align 8, !tbaa !87
  %i.os = load ptr, ptr %1, align 8, !tbaa !89
  %i.ot = call zeroext i8 @png_get_interlace_type(ptr noundef %i.or, ptr noundef %i.os)
  %i.ou = zext i8 %i.ot to i32
  store i32 %i.ou, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #30
  store i8 0, ptr %i.y, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #30
  store i8 0, ptr %i.z, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #30
  store i8 0, ptr %i.aa, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #30
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  %i.ov = load ptr, ptr %0, align 8, !tbaa !87
  %i.ow = load ptr, ptr %1, align 8, !tbaa !89
  %i.ox = call i32 @png_get_cICP(ptr noundef %i.ov, ptr noundef %i.ow, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab)
  %.not132 = icmp eq i32 %i.ox, 0
  br i1 %.not132, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #30
  %i.oy = load i8, ptr %i.y, align 1, !tbaa !16
  %i.oz = zext i8 %i.oy to i32
  store i32 %i.oz, ptr %i.ac, align 16, !tbaa !3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.pb = load i8, ptr %i.z, align 1, !tbaa !16
  %i.pc = zext i8 %i.pb to i32
  store i32 %i.pc, ptr %i.pa, align 4, !tbaa !3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.pe = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.pf = zext i8 %i.pe to i32
  store i32 %i.pf, ptr %i.pd, align 8, !tbaa !3
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ph = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.pi = zext i8 %i.ph to i32
  store i32 %i.pi, ptr %i.pg, align 4, !tbaa !3
  store ptr @.str.81, ptr %58, align 8, !tbaa !70
  %i.pj = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 4, ptr %i.pj, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %58, i64 17179869447, ptr noundef nonnull %i.ac)
  %i.pk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  call void @_ZNK11OpenImageIO4v3_111ColorConfig20get_color_interop_idEPKi(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %59, ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull %i.ac)
  %i.pl = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !72 ; 2 uses
  %i.pn = icmp eq i64 %i.pm, 0
  br i1 %i.pn, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr @.str.4, ptr %60, align 8, !tbaa !70
  %i.po = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 15, ptr %i.po, align 8, !tbaa !72
  %i.pp = load ptr, ptr %59, align 8, !tbaa !70
  store ptr %i.pp, ptr %61, align 8, !tbaa !70
  %i.pq = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.pm, ptr %i.pq, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %60, ptr noundef nonnull dead_on_return %61)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #30
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #30
  store i32 0, ptr %i.ad, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #30
  store ptr null, ptr %i.ae, align 8, !tbaa !109
  %i.pr = load ptr, ptr %0, align 8, !tbaa !87
  %i.ps = load ptr, ptr %1, align 8, !tbaa !89
  %i.pt = call i32 @png_get_eXIf_1(ptr noundef %i.pr, ptr noundef %i.ps, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae)
  %.not133 = icmp eq i32 %i.pt, 0
  br i1 %.not133, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pu = load ptr, ptr %i.ae, align 8, !tbaa !109
  %i.pv = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.pw = zext i32 %i.pv to i64
  %i.px = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr %i.pu, i64 %i.pw, ptr noundef nonnull align 8 dereferenceable(160) %6) ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  br i1 %7, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 1, ptr %i.a, align 4, !tbaa !3
  store ptr @.str.10, ptr %8, align 8, !tbaa !70
  %i.py = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 22, ptr %i.py, align 8, !tbaa !72
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull dead_on_return %8, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.cg
  %.3 = phi i1 [ %i.at, %bb.cg ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_:bb.a
  store float %i.w, ptr %4, align 4, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = load i16, ptr %i.x, align 2, !tbaa !768
  %i.z = uitofp i16 %i.y to float
  %i.aa = fdiv float %i.z, 6.553500e+04
  store float %i.aa, ptr %5, align 4, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !769
  %i.ad = uitofp i16 %i.ac to float
  %i.ae = fdiv float %i.ad, 6.553500e+04
  store float %i.ae, ptr %6, align 4, !tbaa !133
  br label %bb.k

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !105
  %i.ah = icmp slt i32 %i.ag, 3
  br i1 %i.ah, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.ai = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 8
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !764
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i16, ptr %i.al, align 2, !tbaa !770 ; 3 uses
  switch i32 %i.ai, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.not28 = icmp ne i16 %i.am, 0
  %i.an = uitofp i1 %.not28 to float              ; 3 uses
  store float %i.an, ptr %6, align 4, !tbaa !133
  store float %i.an, ptr %5, align 4, !tbaa !133
  store float %i.an, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ao = uitofp i16 %i.am to float
  %i.ap = fdiv float %i.ao, 3.000000e+00          ; 3 uses
  store float %i.ap, ptr %6, align 4, !tbaa !133
  store float %i.ap, ptr %5, align 4, !tbaa !133
  store float %i.ap, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.aq = uitofp i16 %i.am to float
  %i.ar = fdiv float %i.aq, 1.500000e+01          ; 3 uses
  store float %i.ar, ptr %6, align 4, !tbaa !133
  store float %i.ar, ptr %5, align 4, !tbaa !133
  store float %i.ar, ptr %4, align 4, !tbaa !133
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !764 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !766
  %i.av = uitofp i16 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  store float %i.aw, ptr %4, align 4, !tbaa !133
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !768
  %i.az = uitofp i16 %i.ay to float
  %i.ba = fdiv float %i.az, 2.550000e+02
  store float %i.ba, ptr %5, align 4, !tbaa !133
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !769
  %i.bd = uitofp i16 %i.bc to float
  %i.be = fdiv float %i.bd, 2.550000e+02
  store float %i.be, ptr %6, align 4, !tbaa !133
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.k ], [ false, %bb.b ]
  ret i1 %.0
}

declare zeroext i8 @png_get_interlace_type(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_cICP(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_111ColorConfig20get_color_interop_idEPKi(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare i32 @png_get_eXIf_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !77 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !101

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !77 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !16
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !101

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_13pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_prefixERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #27

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #27

declare i32 @png_get_bKGD(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = load ptr, ptr %0, align 8, !tbaa !103    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, !prof !138

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #31
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !104
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !771

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !771

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !103   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !137 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !103
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !137 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ap, -8
  %i.ar = add i64 %i.ao, %i.ah
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 56
  %i.av = sub i64 %i.ai, %i.am
  %diff.check = icmp ult i64 %i.av, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.az ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.bb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !772

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.bd = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.bd, ptr %.011.i.i.i.i, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !773

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN11OpenImageIO4v3_18TypeDescES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !103
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !137
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !99     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.j = load ptr, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEC2ERKS4_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !75     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !90
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #35 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !16
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !76
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !90
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @png_read_row(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind returns_twice }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !32, i64 294}
!18 = !{!"_ZTSN11OpenImageIO4v3_18PNGInputE", !19, i64 0, !14, i64 184, !48, i64 216, !49, i64 224, !4, i64 232, !4, i64 236, !4, i64 240, !50, i64 248, !4, i64 272, !54, i64 276, !4, i64 288, !32, i64 292, !32, i64 293, !32, i64 294, !32, i64 295, !56, i64 296, !57, i64 304}
!19 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !20, i64 8, !39, i64 168}
!20 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !21, i64 64, !22, i64 72, !27, i64 96, !4, i64 120, !4, i64 124, !32, i64 128, !33, i64 136}
!21 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!22 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!27 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!32 = !{!"bool", !5, i64 0}
!33 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !34, i64 0}
!34 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !44, i64 0, !46, i64 8}
!44 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !45, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !47, i64 0}
!47 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!48 = !{!"p1 _ZTS14png_struct_def", !12, i64 0}
!49 = !{!"p1 _ZTS12png_info_def", !12, i64 0}
!50 = !{!"_ZTSSt6vectorIhSaIhEE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!54 = !{!"_ZTSN9Imath_3_16Color3IfEE", !55, i64 0}
!55 = !{!"_ZTSN9Imath_3_14Vec3IfEE", !56, i64 0, !56, i64 4, !56, i64 8}
!56 = !{!"float", !5, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !60, i64 0}
!60 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EEE", !61, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EEE", !62, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_19ImageSpecELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !12, i64 0}
!64 = !{!18, !32, i64 295}
!65 = !{!18, !56, i64 296}
!66 = !{!62, !63, i64 0}
!67 = !{!18, !4, i64 272}
!68 = !{!18, !4, i64 288}
!69 = !{!18, !32, i64 292}
!70 = !{!71, !11, i64 0}
!71 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !15, i64 8}
!72 = !{!71, !15, i64 8}
!73 = !{!18, !32, i64 293}
!74 = !{!63, !63, i64 0}
!75 = !{!53, !11, i64 0}
!76 = !{!53, !11, i64 16}
!77 = !{!14, !11, i64 0}
!78 = !{!79, !80, i64 48}
!79 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !14, i64 8, !15, i64 40, !80, i64 48, !14, i64 56}
!80 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!81 = !{!18, !48, i64 216}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!86 = distinct !{!86, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!87 = !{!48, !48, i64 0}
!88 = !{!15, !15, i64 0}
!89 = !{!49, !49, i64 0}
!90 = !{!53, !11, i64 8}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!93 = distinct !{!93, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!94 = !{!37, !38, i64 0}
!95 = !{!37, !38, i64 8}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!37, !38, i64 16}
!99 = !{!30, !31, i64 0}
!100 = !{!30, !31, i64 8}
!101 = distinct !{!101, !97}
!102 = !{!30, !31, i64 16}
!103 = !{!25, !26, i64 0}
!104 = !{!25, !26, i64 16}
!105 = !{!20, !4, i64 60}
!106 = !{!20, !4, i64 120}
!107 = !{!108, !108, i64 0}
!108 = !{!"double", !5, i64 0}
!109 = !{!11, !11, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!112 = distinct !{!112, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!113 = !{!114, !114, i64 0}
!114 = !{!"p1 _ZTS15png_time_struct", !12, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA41_cJRtRhS6_S6_S6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!117 = distinct !{!117, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA41_cJRtRhS6_S6_S6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJthhhhhELi6ELi0ELy2236962EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!120 = distinct !{!120, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJthhhhhELi6ELi0ELy2236962EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!121 = !{!122, !122, i64 0}
!122 = !{!"short", !5, i64 0}
!123 = !{!119, !116}
!124 = !{!20, !4, i64 0}
!125 = !{!20, !4, i64 4}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTS15png_text_struct", !12, i64 0}
!128 = !{!129, !11, i64 8}
!129 = !{!"_ZTS15png_text_struct", !4, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32, !11, i64 40, !11, i64 48}
!130 = !{!129, !11, i64 16}
!131 = distinct !{!131, !97}
!132 = distinct !{!132, !97}
!133 = !{!56, !56, i64 0}
!134 = !{!55, !56, i64 0}
!135 = !{!55, !56, i64 4}
!136 = !{!55, !56, i64 8}
!137 = !{!25, !26, i64 8}
!138 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!139 = !{!26, !26, i64 0}
!140 = distinct !{!140, !97, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = distinct !{!143, !97, !141}
!144 = !{!31, !31, i64 0}
!145 = !{!20, !4, i64 16}
!146 = distinct !{!146, !97}
!147 = !{ptr @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii}
!148 = !{!19, !4, i64 12}
!149 = !{!18, !4, i64 240}
!150 = distinct !{!150, !97}
!151 = !{!19, !4, i64 128}
!152 = !{!21, !5, i64 0}
!153 = !{!19, !4, i64 20}
!154 = !{!19, !4, i64 68}
!155 = distinct !{!155, !97}
!156 = distinct !{!156, !97}
end_hunk_2
