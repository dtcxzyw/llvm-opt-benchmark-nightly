Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader4loadEPN2io9IReadFileE:bb.a
_ZN4core5arrayIjEixEj.exit222:                    ; preds = %bb.at
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lt
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !137
  %i.mb = zext i32 %i.ma to i64                   ; 2 uses
  %i.mc = ptrtoint ptr %.sroa.21.1672 to i64      ; 2 uses
  %i.md = ptrtoint ptr %.sroa.0326.1671 to i64    ; 5 uses
  %i.me = sub i64 %i.mc, %i.md                    ; 4 uses
  %i.mf = ashr exact i64 %i.me, 1                 ; 7 uses
  %i.mg = icmp ugt i64 %i.mf, %i.mb
  br i1 %i.mg, label %_ZN4core5arrayIsEixEj.exit223, label %bb.av

bb.av:                                            ; preds = %_ZN4core5arrayIjEixEj.exit222
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIsEixEj) #31
  unreachable

_ZN4core5arrayIsEixEj.exit223:                    ; preds = %_ZN4core5arrayIjEixEj.exit222
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0326.1671, i64 %i.mb
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !145 ; 2 uses
  %.not206 = icmp eq i16 %i.mi, -1
  br i1 %.not206, label %_ZN4core5arrayIsE8set_usedEj.exit238, label %_ZN4core5arrayIsEixEj.exit225

_ZN4core5arrayIsEixEj.exit225:                    ; preds = %_ZN4core5arrayIsEixEj.exit223
  %i.mj = ptrtoint ptr %i.lq to i64
  %i.mk = ptrtoint ptr %i.lp to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = ashr exact i64 %i.ml, 2
  %i.mn = icmp ugt i64 %i.mm, %indvars.iv891
  br i1 %i.mn, label %_ZN4core5arrayIjEixEj.exit226, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5arrayIsEixEj.exit225
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit226:                    ; preds = %_ZN4core5arrayIsEixEj.exit225
  %i.mo = sext i16 %i.mi to i32
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv891
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !137
  %sext = shl i32 %i.mq, 16
  %i.mr = ashr exact i32 %sext, 16
  %.not207 = icmp eq i32 %i.mr, %i.mo
  br i1 %.not207, label %_ZN4core5arrayIsE8set_usedEj.exit238, label %bb.ax

bb.ax:                                            ; preds = %_ZN4core5arrayIjEixEj.exit226
  br i1 %.1674, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 2)
          to label %._crit_edge925 unwind label %bb.az

._crit_edge925:                                   ; preds = %bb.ay
  %.pre926 = load ptr, ptr %i.lb, align 8, !tbaa !135
  %.pre927 = load ptr, ptr %i.la, align 8, !tbaa !138 ; 2 uses
  %.pre983 = ptrtoint ptr %.pre926 to i64
  %.pre985 = ptrtoint ptr %.pre927 to i64
  %.pre987 = sub i64 %.pre983, %.pre985
  %.pre989 = ashr exact i64 %.pre987, 2
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ba:                                            ; preds = %._crit_edge925, %bb.ax
  %.pre-phi990 = phi i64 [ %.pre989, %._crit_edge925 ], [ %i.lx, %bb.ax ]
  %i.mt = phi ptr [ %.pre927, %._crit_edge925 ], [ %i.lr, %bb.ax ]
  %i.mu = load ptr, ptr %i.js, align 8, !tbaa !142 ; 5 uses
  %i.mv = load ptr, ptr %i.jr, align 8, !tbaa !143 ; 5 uses
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = ptrtoint ptr %i.mv to i64               ; 2 uses
  %i.my = sub i64 %i.mw, %i.mx                    ; 4 uses
  %i.mz = sdiv exact i64 %i.my, 40                ; 3 uses
  %i.na = trunc i64 %i.mz to i32
  %i.nb = icmp ugt i64 %.pre-phi990, %i.lt
  br i1 %i.nb, label %_ZN4core5arrayIjEixEj.exit227, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit227:                    ; preds = %bb.ba
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.lt
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !137
  %i.ne = zext i32 %i.nd to i64                   ; 2 uses
  %i.nf = icmp ugt i64 %i.mz, %i.ne
  br i1 %i.nf, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit228, label %bb.bc

bb.bc:                                            ; preds = %_ZN4core5arrayIjEixEj.exit227
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit228:   ; preds = %_ZN4core5arrayIjEixEj.exit227
  %i.ng = getelementptr inbounds nuw [40 x i8], ptr %i.mv, i64 %i.ne ; 2 uses
  %i.nh = load ptr, ptr %i.lc, align 8, !tbaa !146
  %.not.i.i229 = icmp eq ptr %i.mu, %i.nh
  br i1 %.not.i.i229, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.mu, ptr noundef nonnull align 4 dereferenceable(40) %i.ng, i64 40, i1 false), !tbaa.struct !147
  %i.ni = load ptr, ptr %i.js, align 8, !tbaa !142
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 40 ; 2 uses
  store ptr %i.nj, ptr %i.js, align 8, !tbaa !142
  br label %bb.bg

bb.be:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit228
  %i.nk = icmp eq i64 %i.my, 9223372036854775800
  br i1 %i.nk, label %bb.bf, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #32
          to label %.noexc232 unwind label %.loopexit.split-lp410

.noexc232:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.be
  %i.nl = shl nsw i64 %i.mz, 1
  %i.nm = icmp slt i64 %i.my, 0
  %i.nn = call i64 @llvm.umin.i64(i64 %i.nl, i64 230584300921369395)
  %i.no = select i1 %i.nm, i64 230584300921369395, i64 %i.nn ; 2 uses
  %i.np = mul nuw nsw i64 %i.no, 40
  %i.nq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #30
          to label %.noexc233 unwind label %.loopexit409 ; 5 uses

.noexc233:                                        ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.my
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.nr, ptr noundef nonnull align 4 dereferenceable(40) %i.ng, i64 40, i1 false), !tbaa.struct !147
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.mv, %i.mu
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc233, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i ], [ %i.nq, %.noexc233 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i ], [ %i.mv, %.noexc233 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !147, !alias.scope !245
  %i.ns = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ns, %i.mu
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc233
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nq, %.noexc233 ], [ %i.nt, %.lr.ph.i.i.i.i.i.i ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.nv = load ptr, ptr %i.lc, align 8, !tbaa !146
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.nw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.nx) #29
  store ptr %i.nq, ptr %i.jr, align 8, !tbaa !143
  store ptr %i.nu, ptr %i.js, align 8, !tbaa !142
  %i.ny = getelementptr inbounds nuw [40 x i8], ptr %i.nq, i64 %i.no
  store ptr %i.ny, ptr %i.lc, align 8, !tbaa !146
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.bd
  %i.nz = phi ptr [ %i.nu, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.nj, %bb.bd ]
  store i8 0, ptr %i.ld, align 8, !tbaa !148
  %i.oa = load ptr, ptr %i.lb, align 8, !tbaa !135
  %i.ob = load ptr, ptr %i.la, align 8, !tbaa !138 ; 2 uses
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = ashr exact i64 %i.oe, 2
  %i.og = icmp ugt i64 %i.of, %i.lt
  br i1 %i.og, label %_ZN4core5arrayIjEixEj.exit234, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit234:                    ; preds = %bb.bg
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.lt
  store i32 %i.na, ptr %i.oh, align 4, !tbaa !137
  %i.oi = load ptr, ptr %i.jr, align 8, !tbaa !143
  %i.oj = ptrtoint ptr %i.nz to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = sdiv exact i64 %i.ol, 40
  %i.on = and i64 %i.om, 4294967295               ; 4 uses
  %i.oo = icmp ult i64 %i.mf, %i.on
  br i1 %i.oo, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZN4core5arrayIjEixEj.exit234
  %i.op = sub nuw nsw i64 %i.on, %i.mf            ; 5 uses
  %i.oq = ptrtoint ptr %.sroa.40.1673 to i64      ; 2 uses
  %i.or = sub i64 %i.oq, %i.mc
  %i.os = ashr exact i64 %i.or, 1                 ; 2 uses
  %i.ot = xor i64 %i.mf, 4611686018427387903
  %i.ou = icmp ule i64 %i.os, %i.ot
  call void @llvm.assume(i1 %i.ou)
  %.not28.i297 = icmp ult i64 %i.os, %i.op
  br i1 %.not28.i297, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i302, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i16 0, ptr %.sroa.21.1672, align 2, !tbaa !145
  %i.ov = getelementptr i8, ptr %.sroa.21.1672, i64 2 ; 3 uses
  %i.ow = add nsw i64 %i.op, -1                   ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %_ZN4core5arrayIsE8set_usedEj.exit238, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298: ; preds = %bb.bj
  %.idx.i.i.i.i.i.i299 = shl nuw nsw i64 %i.ow, 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.ov, i8 0, i64 %.idx.i.i.i.i.i.i299, i1 false), !tbaa !145
  %3 = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.idx.i.i.i.i.i.i299
  br label %_ZN4core5arrayIsE8set_usedEj.exit238

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i302: ; preds = %bb.bi
  %.sroa.speculated.i.i303 = call i64 @llvm.umax.i64(i64 %i.mf, i64 %i.op)
  %i.oy = add nuw nsw i64 %.sroa.speculated.i.i303, %i.mf ; 2 uses
  %i.oz = shl nuw nsw i64 %i.oy, 1
  %i.pa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oz) #30
          to label %.noexc311 unwind label %.loopexit409 ; 4 uses

.noexc311:                                        ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i302
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.me ; 3 uses
  store i16 0, ptr %i.pb, align 2, !tbaa !145
  %i.pc = add nsw i64 %i.op, -1                   ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33.i306, label %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i304

_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i304: ; preds = %.noexc311
  %i.pe = getelementptr i8, ptr %i.pb, i64 2
  %.idx.i.i.i.i.i31.i305 = shl nuw nsw i64 %i.pc, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.pe, i8 0, i64 %.idx.i.i.i.i.i31.i305, i1 false), !tbaa !145
  br label %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33.i306

_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33.i306: ; preds = %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i304, %.noexc311
  %i.pf = icmp sgt i64 %i.me, 0
  br i1 %i.pf, label %bb.bk, label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309

bb.bk:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33.i306
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.pa, ptr nonnull align 2 %.sroa.0326.1671, i64 %i.me, i1 false)
  br label %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309

_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309: ; preds = %bb.bk, %_ZSt27__uninitialized_default_n_aIPsmsET_S1_T0_RSaIT1_E.exit33.i306
  %i.pg = sub i64 %i.oq, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0326.1671, i64 noundef %i.pg) #29
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %i.op
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.pa, i64 %i.oy
  br label %_ZN4core5arrayIsE8set_usedEj.exit238

bb.bl:                                            ; preds = %_ZN4core5arrayIjEixEj.exit234
  %i.pj = icmp ugt i64 %i.mf, %i.on
  br i1 %i.pj, label %bb.bm, label %_ZN4core5arrayIsE8set_usedEj.exit238

bb.bm:                                            ; preds = %bb.bl
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0326.1671, i64 %i.on ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %.sroa.21.1672, %i.pk
  %spec.select = select i1 %.not.i.i.i235, ptr %.sroa.21.1672, ptr %i.pk
  br label %_ZN4core5arrayIsE8set_usedEj.exit238

.loopexit409:                                     ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i302
  %lpad.loopexit411 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp410:                            ; preds = %bb.bf
  %lpad.loopexit.split-lp412 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN4core5arrayIsE8set_usedEj.exit238:             ; preds = %bb.bm, %bb.bl, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298, %bb.bj, %_ZN4core5arrayIjEixEj.exit226, %_ZN4core5arrayIsEixEj.exit223
  %.sroa.0326.2 = phi ptr [ %.sroa.0326.1671, %_ZN4core5arrayIsEixEj.exit223 ], [ %.sroa.0326.1671, %_ZN4core5arrayIjEixEj.exit226 ], [ %.sroa.0326.1671, %bb.bl ], [ %.sroa.0326.1671, %bb.bm ], [ %.sroa.0326.1671, %bb.bj ], [ %.sroa.0326.1671, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298 ], [ %i.pa, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309 ] ; 4 uses
  %.sroa.21.2 = phi ptr [ %.sroa.21.1672, %_ZN4core5arrayIsEixEj.exit223 ], [ %.sroa.21.1672, %_ZN4core5arrayIjEixEj.exit226 ], [ %.sroa.21.1672, %bb.bl ], [ %spec.select, %bb.bm ], [ %i.ov, %bb.bj ], [ %3, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298 ], [ %i.ph, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309 ] ; 3 uses
  %.sroa.40.2 = phi ptr [ %.sroa.40.1673, %_ZN4core5arrayIsEixEj.exit223 ], [ %.sroa.40.1673, %_ZN4core5arrayIjEixEj.exit226 ], [ %.sroa.40.1673, %bb.bl ], [ %.sroa.40.1673, %bb.bm ], [ %.sroa.40.1673, %bb.bj ], [ %.sroa.40.1673, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298 ], [ %i.pi, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309 ] ; 2 uses
  %.3 = phi i1 [ %.1674, %_ZN4core5arrayIsEixEj.exit223 ], [ %.1674, %_ZN4core5arrayIjEixEj.exit226 ], [ true, %bb.bl ], [ true, %bb.bm ], [ true, %bb.bj ], [ true, %_ZSt6fill_nIPsmsET_S1_T0_RKT1_.exit.loopexit.i.i.i.i298 ], [ true, %_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm.exit36.i309 ] ; 2 uses
  %i.pl = load ptr, ptr %i.gr, align 8, !tbaa !135 ; 3 uses
  %i.pm = load ptr, ptr %i.gq, align 8, !tbaa !138 ; 4 uses
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = ashr exact i64 %i.pp, 2
  %i.pr = icmp ugt i64 %i.pq, %indvars.iv891
  br i1 %i.pr, label %_ZN4core5arrayIjEixEj.exit239, label %bb.bn

bb.bn:                                            ; preds = %_ZN4core5arrayIsE8set_usedEj.exit238
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit239:                    ; preds = %_ZN4core5arrayIsE8set_usedEj.exit238
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv891
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !137
  %i.pu = trunc i32 %i.pt to i16
  %i.pv = load ptr, ptr %i.lb, align 8, !tbaa !135 ; 2 uses
  %i.pw = load ptr, ptr %i.la, align 8, !tbaa !138 ; 3 uses
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = ashr exact i64 %i.pz, 2
  %i.qb = icmp ugt i64 %i.qa, %i.lt
  br i1 %i.qb, label %_ZN4core5arrayIjEixEj.exit240, label %bb.bo

bb.bo:                                            ; preds = %_ZN4core5arrayIjEixEj.exit239
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit240:                    ; preds = %_ZN4core5arrayIjEixEj.exit239
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.lt
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !137
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %i.qf = ptrtoint ptr %.sroa.21.2 to i64
  %i.qg = ptrtoint ptr %.sroa.0326.2 to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = ashr exact i64 %i.qh, 1
  %i.qj = icmp ugt i64 %i.qi, %i.qe
  br i1 %i.qj, label %_ZN4core5arrayIsEixEj.exit241, label %bb.bp

bb.bp:                                            ; preds = %_ZN4core5arrayIjEixEj.exit240
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIsEixEj) #31
  unreachable

_ZN4core5arrayIsEixEj.exit241:                    ; preds = %_ZN4core5arrayIjEixEj.exit240
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0326.2, i64 %i.qe
  store i16 %i.pu, ptr %i.qk, align 2, !tbaa !145
  %i.ql = add i32 %.0167675, 1                    ; 2 uses
  %.not205 = icmp ugt i32 %i.ql, %i.lj
  br i1 %.not205, label %._crit_edge678, label %bb.at, !llvm.loop !227

._crit_edge688:                                   ; preds = %._crit_edge678
  %i.qm = and i64 %.pre-phi998, 17179869180
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %.loopexit414, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge688
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 10 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !100
  %i.qq = load ptr, ptr %i.bj, align 8, !tbaa !99
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = lshr exact i64 %i.qt, 1
  %i.qv = and i64 %i.qu, 17179869180
  %i.qw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qv) #30
          to label %bb.br unwind label %.loopexit.split-lp416.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.br:                                            ; preds = %bb.bq
  %i.qx = load ptr, ptr %i.qo, align 8, !tbaa !100
  %i.qy = load ptr, ptr %i.bj, align 8, !tbaa !99
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %i.rc = lshr exact i64 %i.rb, 1
  %i.rd = and i64 %i.rc, 17179869180
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qw, i8 0, i64 %i.rd, i1 false)
  %i.re = load ptr, ptr %i.js, align 8, !tbaa !142
  %i.rf = load ptr, ptr %i.jr, align 8, !tbaa !143
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = sdiv exact i64 %i.ri, 40                ; 2 uses
  %i.rk = and i64 %i.rj, 4294967295
  %.not730 = icmp eq i64 %i.rk, 0
  br i1 %.not730, label %._crit_edge696, label %.lr.ph695

.lr.ph695:                                        ; preds = %bb.br
  %i.rl = ptrtoint ptr %.sroa.21.1.lcssa to i64
  %i.rm = ptrtoint ptr %.sroa.0326.1.lcssa to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = ashr exact i64 %i.rn, 1
  %wide.trip.count897 = and i64 %i.rj, 4294967295
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph695, %bb.bu
  %indvars.iv893 = phi i64 [ 0, %.lr.ph695 ], [ %indvars.iv.next894, %bb.bu ] ; 3 uses
  %exitcond896.not = icmp eq i64 %indvars.iv893, %i.ro
  br i1 %exitcond896.not, label %bb.bt, label %_ZN4core5arrayIsEixEj.exit242

bb.bt:                                            ; preds = %bb.bs
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIsEixEj) #31
  unreachable

_ZN4core5arrayIsEixEj.exit242:                    ; preds = %bb.bs
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0326.1.lcssa, i64 %indvars.iv893
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !145 ; 2 uses
  %.not204 = icmp eq i16 %i.rq, -1
  br i1 %.not204, label %bb.bu, label %_ZN4core5arrayIsEixEj.exit243

_ZN4core5arrayIsEixEj.exit243:                    ; preds = %_ZN4core5arrayIsEixEj.exit242
  %i.rr = sext i16 %i.rq to i64
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.rr ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !137
  %i.ru = add i32 %i.rt, 1
  store i32 %i.ru, ptr %i.rs, align 4, !tbaa !137
  br label %bb.bu

.loopexit415:                                     ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %lpad.loopexit417 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp416

.loopexit.split-lp416.loopexit:                   ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp416

.loopexit.split-lp416.loopexit.split-lp.loopexit: ; preds = %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE11_M_allocateEm.exit.i
  %lpad.loopexit432 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp416

.loopexit.split-lp416.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bq, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit.split-lp433 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp416
end_hunk_0
begin_hunk_1_@_ZN5scene16CXMeshFileLoader19parseDataObjectMeshERNS0_6SXMeshE:bb.a
bb.u:                                             ; preds = %_ZN4core6stringIcED2Ev.exit281, %bb.p
  %i.bv = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 9 uses
  %i.bx = mul i32 %i.bv, 3
  %i.by = zext i32 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 9 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !135 ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.by
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = sub nuw nsw i64 %i.by, %i.cf
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.bw, i64 noundef %i.ch)
          to label %_ZN4core5arrayIjE8set_usedEj.exit unwind label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ci = icmp ugt i64 %i.cf, %i.by
  br i1 %i.ci, label %bb.x, label %_ZN4core5arrayIjE8set_usedEj.exit

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by ; 2 uses
  %.not.i.i.i285 = icmp eq ptr %i.ca, %i.cj
  br i1 %.not.i.i.i285, label %_ZN4core5arrayIjE8set_usedEj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.x
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !135
  br label %_ZN4core5arrayIjE8set_usedEj.exit

_ZN4core5arrayIjE8set_usedEj.exit:                ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %bb.x, %bb.w, %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cl = zext i32 %i.bv to i64                   ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !159 ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !158 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 1                 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.cl
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4core5arrayIjE8set_usedEj.exit
  %i.cu = sub nuw nsw i64 %i.cl, %i.cs
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ck, i64 noundef %i.cu)
          to label %_ZN4core5arrayItE8set_usedEj.exit unwind label %bb.ab

bb.z:                                             ; preds = %_ZN4core5arrayIjE8set_usedEj.exit
  %i.cv = icmp ugt i64 %i.cs, %i.cl
  br i1 %i.cv, label %bb.aa, label %_ZN4core5arrayItE8set_usedEj.exit

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  %.not.i.i.i287 = icmp eq ptr %i.cn, %i.cw
  br i1 %.not.i.i.i287, label %_ZN4core5arrayItE8set_usedEj.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.aa
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !159
  br label %_ZN4core5arrayItE8set_usedEj.exit

_ZN4core5arrayItE8set_usedEj.exit:                ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i, %bb.aa, %bb.z, %bb.y
  %.not244548.not = icmp eq i32 %i.bv, 0
  br i1 %.not244548.not, label %.critedge269.preheader, label %.lr.ph554

.lr.ph554:                                        ; preds = %_ZN4core5arrayItE8set_usedEj.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.ac

.critedge269.preheader:                           ; preds = %.loopexit459, %_ZN4core5arrayItE8set_usedEj.exit
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZN4core5arrayItE8set_usedEj.exit ], [ %.sroa.0.1, %.loopexit459 ] ; 7 uses
  %.sroa.22.0.lcssa = phi ptr [ null, %_ZN4core5arrayItE8set_usedEj.exit ], [ %.sroa.22.1, %.loopexit459 ] ; 7 uses
  %i.dc = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.dd = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = and i64 %i.dg, 17179869180
  %.not246557.not = icmp eq i64 %i.dh, 0
  br i1 %.not246557.not, label %.critedge271, label %.lr.ph559

.lr.ph559:                                        ; preds = %.critedge269.preheader
  %i.di = lshr exact i64 %i.dg, 2
  %i.dj = ashr exact i64 %i.dg, 2
  %wide.trip.count675 = and i64 %i.di, 4294967295
  br label %bb.br

bb.ab:                                            ; preds = %bb.y, %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core5arrayIjED2Ev.exit410

bb.ac:                                            ; preds = %.lr.ph554, %.loopexit459
  %indvars.iv666 = phi i64 [ 0, %.lr.ph554 ], [ %indvars.iv.next667, %.loopexit459 ] ; 5 uses
  %.0194552 = phi i32 [ 0, %.lr.ph554 ], [ %.3, %.loopexit459 ] ; 5 uses
  %.sroa.22.0551 = phi ptr [ null, %.lr.ph554 ], [ %.sroa.22.1, %.loopexit459 ] ; 10 uses
  %.sroa.13.0550 = phi ptr [ null, %.lr.ph554 ], [ %.sroa.13.1, %.loopexit459 ] ; 7 uses
  %.sroa.0.0549 = phi ptr [ null, %.lr.ph554 ], [ %.sroa.0.1, %.loopexit459 ] ; 14 uses
  %i.dl = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 5 uses
  %.not = icmp eq i32 %i.dl, 3
  br i1 %.not, label %bb.bl, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = icmp ult i32 %i.dl, 3
  br i1 %i.dm, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.35, i32 noundef 2)
          to label %bb.af unwind label %.loopexit.split-lp461

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dn = load i32, ptr %i.da, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.dn)
  %i.do = load ptr, ptr %5, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.do, i32 noundef 2)
          to label %.critedge unwind label %bb.ag

.critedge:                                        ; preds = %bb.af
  %i.dp = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN4core6stringIcED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289: ; preds = %.critedge
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !27
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #29
  br label %_ZN4core6stringIcED2Ev.exit291

_ZN4core6stringIcED2Ev.exit291:                   ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.du, align 8, !tbaa !48
  br label %.loopexit457

.loopexit460:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit462 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.loopexit.split-lp461:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.ag:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN4core6stringIcED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292: ; preds = %bb.ag
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !27
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #29
  br label %_ZN4core6stringIcED2Ev.exit294

_ZN4core6stringIcED2Ev.exit294:                   ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.gl

bb.ah:                                            ; preds = %bb.ad
  %i.eb = zext i32 %i.dl to i64                   ; 5 uses
  %i.ec = ptrtoint ptr %.sroa.13.0550 to i64      ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0.0549 to i64       ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 4 uses
  %i.ef = ashr exact i64 %i.ee, 2                 ; 6 uses
  %i.eg = icmp ult i64 %i.ef, %i.eb
  br i1 %i.eg, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.eh = sub nuw nsw i64 %i.eb, %i.ef            ; 5 uses
  %i.ei = ptrtoint ptr %.sroa.22.0551 to i64      ; 2 uses
  %i.ej = sub i64 %i.ei, %i.ec
  %i.ek = ashr exact i64 %i.ej, 2                 ; 2 uses
  %i.el = xor i64 %i.ef, 2305843009213693951
  %i.em = icmp ule i64 %i.ek, %i.el
  call void @llvm.assume(i1 %i.em)
  %.not28.i = icmp ult i64 %i.ek, %i.eh
  br i1 %.not28.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.sroa.13.0550, align 4, !tbaa !137
  %i.en = getelementptr i8, ptr %.sroa.13.0550, i64 4 ; 3 uses
  %i.eo = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_ZN4core5arrayIjE8set_usedEj.exit298, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.aj
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.eo, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !137
  %15 = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i.i.i.i.i.i
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ai
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eh)
  %i.eq = add nuw nsw i64 %.sroa.speculated.i.i, %i.ef ; 2 uses
  %i.er = shl nuw nsw i64 %i.eq, 2
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #30
          to label %.noexc419 unwind label %.loopexit460 ; 4 uses

.noexc419:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ee ; 3 uses
  store i32 0, ptr %i.et, align 4, !tbaa !137
  %i.eu = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc419
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.eu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ew, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !137
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc419
  %i.ex = icmp sgt i64 %i.ee, 0
  br i1 %i.ex, label %bb.ak, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.ak:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.es, ptr align 4 %.sroa.0.0549, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.ak, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0.0549, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ey = sub i64 %i.ei, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0549, i64 noundef %i.ey) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eh
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.eq
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.am:                                            ; preds = %bb.ah
  %i.fb = icmp ugt i64 %i.ef, %i.eb
  br i1 %i.fb, label %bb.an, label %_ZN4core5arrayIjE8set_usedEj.exit298

bb.an:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0549, i64 %i.eb ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %.sroa.13.0550, %i.fc
  %spec.select = select i1 %.not.i.i.i295, ptr %.sroa.13.0550, ptr %i.fc
  br label %_ZN4core5arrayIjE8set_usedEj.exit298

_ZN4core5arrayIjE8set_usedEj.exit298:             ; preds = %bb.an, %bb.am, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.aj
  %.sroa.0.3 = phi ptr [ %.sroa.0.0549, %bb.am ], [ %.sroa.0.0549, %bb.an ], [ %.sroa.0.0549, %bb.aj ], [ %.sroa.0.0549, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.es, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 8 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0550, %bb.am ], [ %spec.select, %bb.an ], [ %i.en, %bb.aj ], [ %15, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ez, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 3 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.0551, %bb.am ], [ %.sroa.22.0551, %bb.an ], [ %.sroa.22.0551, %bb.aj ], [ %.sroa.22.0551, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fa, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i ] ; 2 uses
  %i.fd = add i32 %i.dl, -2                       ; 2 uses
  %i.fe = load ptr, ptr %i.bz, align 8, !tbaa !135 ; 2 uses
  %i.ff = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = lshr exact i64 %i.fi, 2
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = mul i32 %i.dl, 3
  %i.fm = add i32 %i.fl, -9
  %i.fn = add i32 %i.fm, %i.fk
  %i.fo = zext i32 %i.fn to i64                   ; 4 uses
  %i.fp = ashr exact i64 %i.fi, 2                 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit298
  %i.fr = sub nuw nsw i64 %i.fo, %i.fp
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.bw, i64 noundef %i.fr)
          to label %_ZN4core5arrayIjE8set_usedEj.exit302 unwind label %bb.as

bb.ap:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit298
  %i.fs = icmp ugt i64 %i.fp, %i.fo
  br i1 %i.fs, label %bb.aq, label %_ZN4core5arrayIjE8set_usedEj.exit302

bb.aq:                                            ; preds = %bb.ap
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fo ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.fe, %i.ft
  br i1 %.not.i.i.i299, label %_ZN4core5arrayIjE8set_usedEj.exit302, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300:   ; preds = %bb.aq
  store ptr %i.ft, ptr %i.bz, align 8, !tbaa !135
  br label %_ZN4core5arrayIjE8set_usedEj.exit302

_ZN4core5arrayIjE8set_usedEj.exit302:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i300, %bb.aq, %bb.ap, %bb.ao
  %i.fu = load ptr, ptr %i.cm, align 8, !tbaa !159
  %i.fv = load ptr, ptr %i.ck, align 8, !tbaa !158 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 1
  %i.ga = icmp ugt i64 %i.fz, %indvars.iv666
  br i1 %i.ga, label %_ZN4core5arrayItEixEj.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5arrayIjE8set_usedEj.exit302
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayItEixEj) #31
  unreachable

_ZN4core5arrayItEixEj.exit:                       ; preds = %_ZN4core5arrayIjE8set_usedEj.exit302
  %i.gb = trunc i32 %i.fd to i16
  %i.gc = mul i16 %i.gb, 3
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv666
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !145
  %i.ge = ptrtoint ptr %.sroa.13.2 to i64
  %i.gf = ptrtoint ptr %.sroa.0.3 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2                 ; 3 uses
  br label %bb.at

.lr.ph547:                                        ; preds = %_ZN4core5arrayIjEixEj.exit
  %.not446 = icmp eq ptr %.sroa.13.2, %.sroa.0.3
  br i1 %.not446, label %bb.bf, label %.lr.ph547.split

.lr.ph547.split:                                  ; preds = %.lr.ph547
  %i.gi = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.gj = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 4 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 2                 ; 3 uses
  %i.go = call i64 @llvm.usub.sat.i64(i64 %i.gh, i64 1)
  %wide.trip.count664 = zext i32 %i.fd to i64
  br label %_ZN4core5arrayIjEixEj.exit303

bb.as:                                            ; preds = %bb.ao
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.at:                                            ; preds = %_ZN4core5arrayItEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %indvars.iv654 = phi i64 [ 0, %_ZN4core5arrayItEixEj.exit ], [ %indvars.iv.next655, %_ZN4core5arrayIjEixEj.exit ] ; 3 uses
  %i.gq = load i8, ptr %i.cx, align 8, !tbaa !165, !range !78, !noundef !79
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.au, label %.preheader.i.i

bb.au:                                            ; preds = %bb.at
  %i.gs = load i32, ptr %i.db, align 8, !tbaa !166 ; 2 uses
  %.not.i = icmp eq i32 %i.gs, 0
  %i.gt = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 6 uses
  %i.gu = load ptr, ptr %i.cz, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i, label %bb.av, label %._crit_edge.i

bb.av:                                            ; preds = %bb.au
  %.not.i.i = icmp ult ptr %i.gt, %i.gu
  br i1 %.not.i.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, label %._crit_edge.i

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i: ; preds = %bb.av
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !145
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 5 uses
  store ptr %i.gw, ptr %i.cy, align 8, !tbaa !168
  %i.gx = icmp eq i16 %i.gv, 6
  br i1 %i.gx, label %bb.aw, label %._crit_edge.i

bb.aw:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i
  %.not.i3.i = icmp ult ptr %i.gw, %i.gu
  br i1 %.not.i3.i, label %bb.ax, label %._crit_edge.i

bb.ax:                                            ; preds = %bb.aw
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !137
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 6 ; 2 uses
  store ptr %i.gz, ptr %i.cy, align 8, !tbaa !168
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ax, %bb.aw, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i, %bb.av, %bb.au
  %i.ha = phi ptr [ %i.gt, %bb.au ], [ %i.gw, %bb.aw ], [ %i.gw, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gz, %bb.ax ], [ %i.gt, %bb.av ] ; 3 uses
  %i.hb = phi i32 [ %i.gs, %bb.au ], [ 0, %bb.aw ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i ], [ %i.gy, %bb.ax ], [ 1, %bb.av ]
  %i.hc = add i32 %i.hb, -1
  store i32 %i.hc, ptr %i.db, align 8, !tbaa !166
  %.not.i5.i = icmp ult ptr %i.ha, %i.gu
  br i1 %.not.i5.i, label %bb.ay, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

bb.ay:                                            ; preds = %._crit_edge.i
  %i.hd = load i32, ptr %i.ha, align 4, !tbaa !137
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store ptr %i.he, ptr %i.cy, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit

.preheader.i.i:                                   ; preds = %bb.at
  %i.hf = load ptr, ptr %i.cz, align 8, !tbaa !164 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 3 uses
  %i.hg = icmp ult ptr %.promoted.i.i, %i.hf
  br i1 %i.hg, label %.lr.ph.i.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted7.i.i = load i32, ptr %i.da, align 4
  br label %bb.az

bb.az:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i, %.lr.ph.i.i
  %i.hh = phi i32 [ %.promoted7.i.i, %.lr.ph.i.i ], [ %i.hv, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 3 uses
  %i.hi = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.hw, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i ] ; 5 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !27  ; 3 uses
  %i.hk = sext i8 %i.hj to i32
end_hunk_1
begin_hunk_2_@_ZN5scene16CXMeshFileLoader26parseDataObjectMeshNormalsERNS0_6SXMeshE:bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !182
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  store float %i.hv, ptr %i.hw, align 4, !tbaa !182
  %i.hx = load i8, ptr %i.bm, align 8, !tbaa !165, !range !78, !noundef !79
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.ay, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1
  %i.hz = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %i.ia = icmp ult ptr %i.gz, %i.hz
  br i1 %i.ia, label %.lr.ph.i.i.2, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2

.lr.ph.i.i.2:                                     ; preds = %.preheader.i.i.2
  %.promoted7.i.i.2 = load i32, ptr %i.bp, align 4
  br label %bb.at

bb.at:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2, %.lr.ph.i.i.2
  %i.ib = phi i32 [ %.promoted7.i.i.2, %.lr.ph.i.i.2 ], [ %i.ip, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2 ] ; 3 uses
  %i.ic = phi ptr [ %i.gz, %.lr.ph.i.i.2 ], [ %i.iq, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2 ] ; 5 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !27  ; 3 uses
  %i.ie = sext i8 %i.id to i32
  %.off.i.i.2 = add i8 %i.id, -45
  %switch.i.i.2 = icmp ult i8 %.off.i.i.2, 2
  %i.if = add nsw i32 %i.ie, -48
  %i.ig = icmp ult i32 %i.if, 10
  %or.cond.i.i.2 = select i1 %switch.i.i.2, i1 true, i1 %i.ig
  br i1 %or.cond.i.i.2, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2, label %bb.au

bb.au:                                            ; preds = %bb.at
  switch i8 %i.id, label %.thread.i.i.2 [
    i8 47, label %bb.av
    i8 35, label %.lr.ph.i.i.i.2.preheader
  ]

bb.av:                                            ; preds = %bb.au
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !27
  %i.ij = icmp eq i8 %i.ii, 47
  br i1 %i.ij, label %.lr.ph.i.i.i.2.preheader, label %.thread.i.i.2

.lr.ph.i.i.i.2.preheader:                         ; preds = %bb.av, %bb.au
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.2.preheader, %bb.ax
  %i.ik = phi ptr [ %i.im, %bb.ax ], [ %i.ic, %.lr.ph.i.i.i.2.preheader ] ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !27
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 1 ; 5 uses
  store ptr %i.im, ptr %i.bn, align 8, !tbaa !168
  switch i8 %i.il, label %bb.ax [
    i8 10, label %bb.aw
    i8 13, label %bb.aw
  ]

bb.aw:                                            ; preds = %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.2
  %i.in = add i32 %i.ib, 1                        ; 2 uses
  store i32 %i.in, ptr %i.bp, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2

bb.ax:                                            ; preds = %.lr.ph.i.i.i.2
  %exitcond.not.i.i.i.2 = icmp eq ptr %i.im, %i.hz
  br i1 %exitcond.not.i.i.i.2, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !3

.thread.i.i.2:                                    ; preds = %bb.av, %bb.au
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 1 ; 2 uses
  store ptr %i.io, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2: ; preds = %bb.ax, %.thread.i.i.2, %bb.aw
  %i.ip = phi i32 [ %i.ib, %.thread.i.i.2 ], [ %i.in, %bb.aw ], [ %i.ib, %bb.ax ]
  %i.iq = phi ptr [ %i.io, %.thread.i.i.2 ], [ %i.im, %bb.aw ], [ %i.im, %bb.ax ] ; 3 uses
  %i.ir = icmp ult ptr %i.iq, %i.hz
  br i1 %i.ir, label %bb.at, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2: ; preds = %bb.at, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2, %.preheader.i.i.2
  %i.is = phi ptr [ %i.gz, %.preheader.i.i.2 ], [ %i.iq, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i.2 ], [ %i.ic, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !177
  %i.it = call i64 @__isoc23_strtoul(ptr noundef %i.is, ptr noundef nonnull %i.b, i32 noundef 10) #28
  %i.iu = trunc i64 %i.it to i32
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !177
  store ptr %i.iv, ptr %i.bn, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.pre537 = load ptr, ptr %i.au, align 8, !tbaa !135
  %.pre538 = load ptr, ptr %i.at, align 8, !tbaa !138 ; 2 uses
  %.pre546 = ptrtoint ptr %.pre537 to i64
  %.pre548 = ptrtoint ptr %.pre538 to i64
  %.pre550 = sub i64 %.pre546, %.pre548
  %.pre552 = ashr exact i64 %.pre550, 2
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

bb.ay:                                            ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.1
  %i.iw = load i32, ptr %i.bq, align 8, !tbaa !166 ; 2 uses
  %.not.i.2 = icmp eq i32 %i.iw, 0
  %i.ix = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i.2, label %bb.az, label %._crit_edge.i.2

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.2 = icmp ult ptr %i.gz, %i.ix
  br i1 %.not.i.i.2, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2, label %._crit_edge.i.2

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2: ; preds = %bb.az
  %i.iy = load i16, ptr %i.gz, align 2, !tbaa !145
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 5 uses
  store ptr %i.iz, ptr %i.bn, align 8, !tbaa !168
  %i.ja = icmp eq i16 %i.iy, 6
  br i1 %i.ja, label %bb.ba, label %._crit_edge.i.2

bb.ba:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2
  %.not.i3.i.2 = icmp ult ptr %i.iz, %i.ix
  br i1 %.not.i3.i.2, label %bb.bb, label %._crit_edge.i.2

bb.bb:                                            ; preds = %bb.ba
  %i.jb = load i32, ptr %i.iz, align 4, !tbaa !137
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gz, i64 6 ; 2 uses
  store ptr %i.jc, ptr %i.bn, align 8, !tbaa !168
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %bb.bb, %bb.ba, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2, %bb.az, %bb.ay
  %i.jd = phi ptr [ %i.gz, %bb.ay ], [ %i.iz, %bb.ba ], [ %i.iz, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2 ], [ %i.jc, %bb.bb ], [ %i.gz, %bb.az ] ; 3 uses
  %i.je = phi i32 [ %i.iw, %bb.ay ], [ 0, %bb.ba ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i.2 ], [ %i.jb, %bb.bb ], [ 1, %bb.az ]
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr %i.bq, align 8, !tbaa !166
  %.not.i5.i.2 = icmp ult ptr %i.jd, %i.ix
  br i1 %.not.i5.i.2, label %bb.bc, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

bb.bc:                                            ; preds = %._crit_edge.i.2
  %i.jg = load i32, ptr %i.jd, align 4, !tbaa !137
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store ptr %i.jh, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2

_ZN5scene16CXMeshFileLoader7readIntEv.exit.2:     ; preds = %bb.bc, %._crit_edge.i.2, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2
  %.pre-phi553 = phi i64 [ %.pre-phi545, %bb.bc ], [ %.pre-phi545, %._crit_edge.i.2 ], [ %.pre552, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %i.ji = phi ptr [ %i.ha, %bb.bc ], [ %i.ha, %._crit_edge.i.2 ], [ %.pre538, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %.0.i.2 = phi i32 [ %i.jg, %bb.bc ], [ 0, %._crit_edge.i.2 ], [ %i.iu, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i.2 ]
  %i.jj = add i32 %.050409, 3
  %i.jk = zext i32 %i.hb to i64                   ; 2 uses
  %i.jl = icmp ugt i64 %.pre-phi553, %i.jk
  br i1 %i.jl, label %_ZN4core5arrayIjEixEj.exit.2, label %bb.ag

_ZN4core5arrayIjEixEj.exit.2:                     ; preds = %_ZN5scene16CXMeshFileLoader7readIntEv.exit.2
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jk
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !137
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.jq = load ptr, ptr %i.br, align 8, !tbaa !143 ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = sdiv exact i64 %i.jt, 40
  %i.jv = icmp ugt i64 %i.ju, %i.jo
  br i1 %i.jv, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2, label %bb.ah

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2:    ; preds = %_ZN4core5arrayIjEixEj.exit.2
  %i.jw = zext i32 %.0.i.2 to i64                 ; 2 uses
  %i.jx = icmp ugt i64 %i.bw, %i.jw
  br i1 %i.jx, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2, label %bb.ai

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit98.2:    ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit.2
  %i.jy = getelementptr inbounds nuw [40 x i8], ptr %i.jq, i64 %i.jo ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0208.2668, i64 %i.jw ; 2 uses
  %i.kb = load <2 x float>, ptr %i.ka, align 4, !tbaa !90
  store <2 x float> %i.kb, ptr %i.jz, align 4, !tbaa !90
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !182
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  store float %i.kd, ptr %i.ke, align 4, !tbaa !182
  br label %.loopexit

bb.bd:                                            ; preds = %bb.v
  %i.kf = zext i32 %i.by to i64                   ; 5 uses
  %i.kg = ptrtoint ptr %.sroa.13.0407 to i64      ; 2 uses
  %i.kh = ptrtoint ptr %.sroa.0.0406 to i64       ; 2 uses
  %i.ki = sub i64 %i.kg, %i.kh                    ; 4 uses
  %i.kj = ashr exact i64 %i.ki, 2                 ; 6 uses
  %i.kk = icmp ult i64 %i.kj, %i.kf
  br i1 %i.kk, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.kl = sub nuw nsw i64 %i.kf, %i.kj            ; 5 uses
  %i.km = ptrtoint ptr %.sroa.22.0408 to i64      ; 2 uses
  %i.kn = sub i64 %i.km, %i.kg
  %i.ko = ashr exact i64 %i.kn, 2                 ; 2 uses
  %i.kp = xor i64 %i.kj, 2305843009213693951
  %i.kq = icmp ule i64 %i.ko, %i.kp
  call void @llvm.assume(i1 %i.kq)
  %.not28.i169 = icmp ult i64 %i.ko, %i.kl
  br i1 %.not28.i169, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.sroa.13.0407, align 4, !tbaa !137
  %i.kr = getelementptr i8, ptr %.sroa.13.0407, i64 4 ; 3 uses
  %i.ks = add nsw i64 %i.kl, -1                   ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %_ZN4core5arrayIjE8set_usedEj.exit102, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170: ; preds = %bb.bf
  %.idx.i.i.i.i.i.i171 = shl nuw nsw i64 %i.ks, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 0, i64 %.idx.i.i.i.i.i.i171, i1 false), !tbaa !137
  %8 = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx.i.i.i.i.i.i171
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174: ; preds = %bb.be
  %.sroa.speculated.i.i175 = call i64 @llvm.umax.i64(i64 %i.kj, i64 %i.kl)
  %i.ku = add nuw nsw i64 %.sroa.speculated.i.i175, %i.kj ; 2 uses
  %i.kv = shl nuw nsw i64 %i.ku, 2
  %i.kw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kv) #30
          to label %.noexc183 unwind label %.loopexit261 ; 4 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i174
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ki ; 3 uses
  store i32 0, ptr %i.kx, align 4, !tbaa !137
  %i.ky = add nsw i64 %i.kl, -1                   ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 0
  br i1 %i.kz, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176: ; preds = %.noexc183
  %i.la = getelementptr i8, ptr %i.kx, i64 4
  %.idx.i.i.i.i.i31.i177 = shl nuw nsw i64 %i.ky, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.la, i8 0, i64 %.idx.i.i.i.i.i31.i177, i1 false), !tbaa !137
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i176, %.noexc183
  %i.lb = icmp sgt i64 %i.ki, 0
  br i1 %i.lb, label %bb.bg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179

bb.bg:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kw, ptr align 4 %.sroa.0.0406, i64 %i.ki, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179: ; preds = %bb.bg, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i178
  %.not.i35.i180 = icmp eq ptr %.sroa.0.0406, null
  br i1 %.not.i35.i180, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179
  %i.lc = sub i64 %i.km, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0406, i64 noundef %i.lc) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181: ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i179
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kl
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ku
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

bb.bi:                                            ; preds = %bb.bd
  %i.lf = icmp ugt i64 %i.kj, %i.kf
  br i1 %i.lf, label %bb.bj, label %_ZN4core5arrayIjE8set_usedEj.exit102

bb.bj:                                            ; preds = %bb.bi
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0406, i64 %i.kf ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %.sroa.13.0407, %i.lg
  %spec.select = select i1 %.not.i.i.i99, ptr %.sroa.13.0407, ptr %i.lg
  br label %_ZN4core5arrayIjE8set_usedEj.exit102

_ZN4core5arrayIjE8set_usedEj.exit102:             ; preds = %bb.bj, %bb.bf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181, %bb.bi
  %.sroa.0.5 = phi ptr [ %.sroa.0.0406, %bb.bi ], [ %.sroa.0.0406, %bb.bj ], [ %.sroa.0.0406, %bb.bf ], [ %.sroa.0.0406, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.kw, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 9 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0407, %bb.bi ], [ %spec.select, %bb.bj ], [ %i.kr, %bb.bf ], [ %8, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.ld, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 5 uses
  %.sroa.22.5 = phi ptr [ %.sroa.22.0408, %bb.bi ], [ %.sroa.22.0408, %bb.bj ], [ %.sroa.22.0408, %bb.bf ], [ %.sroa.22.0408, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i170 ], [ %i.le, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i181 ] ; 2 uses
  %.not415 = icmp eq i32 %i.by, 0
  br i1 %.not415, label %.lr.ph331, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit102
  %i.lh = ptrtoint ptr %.sroa.13.2 to i64
  %i.li = ptrtoint ptr %.sroa.0.5 to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = ashr exact i64 %i.lj, 2
  br label %bb.bk

.preheader259:                                    ; preds = %_ZN4core5arrayIjEixEj.exit123
  %.not416 = icmp eq i32 %i.bz, 0
  br i1 %.not416, label %.loopexit, label %.lr.ph331

.lr.ph331:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit102, %.preheader259
  %i.ll = load ptr, ptr %i.au, align 8, !tbaa !135
  %i.lm = load ptr, ptr %i.at, align 8, !tbaa !138 ; 5 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = ashr exact i64 %i.lp, 2                 ; 4 uses
  %i.lr = ptrtoint ptr %.sroa.13.2 to i64
  %i.ls = ptrtoint ptr %.sroa.0.5 to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = ashr exact i64 %i.lt, 2                 ; 2 uses
  %.not257 = icmp eq ptr %.sroa.13.2, %.sroa.0.5
  %.not257.fr = freeze i1 %.not257
  br i1 %.not257.fr, label %.lr.ph331.split.us, label %.lr.ph331.split.preheader

.lr.ph331.split.preheader:                        ; preds = %.lr.ph331
  %i.lv = call i64 @llvm.usub.sat.i64(i64 %i.lu, i64 1)
  %wide.trip.count526 = zext i32 %i.bz to i64
  br label %.lr.ph331.split

.lr.ph331.split.us:                               ; preds = %.lr.ph331
  %i.lw = zext i32 %.050409 to i64                ; 2 uses
  %i.lx = icmp ugt i64 %i.lq, %i.lw
  br i1 %i.lx, label %_ZN4core5arrayIjEixEj.exit124.us, label %.split.us

_ZN4core5arrayIjEixEj.exit124.us:                 ; preds = %.lr.ph331.split.us
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lw
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !137
  %i.ma = zext i32 %i.lz to i64
  %i.mb = load ptr, ptr %i.bs, align 8, !tbaa !142
  %i.mc = load ptr, ptr %i.br, align 8, !tbaa !143
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = sdiv exact i64 %i.mf, 40
  %i.mh = icmp ugt i64 %i.mg, %i.ma
  br i1 %i.mh, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125.us, label %.split333.us

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit125.us: ; preds = %_ZN4core5arrayIjEixEj.exit124.us
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

bb.bk:                                            ; preds = %.lr.ph328, %_ZN4core5arrayIjEixEj.exit123
  %indvars.iv516 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next517, %_ZN4core5arrayIjEixEj.exit123 ] ; 3 uses
  %i.mi = load i8, ptr %i.bm, align 8, !tbaa !165, !range !78, !noundef !79
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.bl, label %.preheader.i.i103

bb.bl:                                            ; preds = %bb.bk
  %i.mk = load i32, ptr %i.bq, align 8, !tbaa !166 ; 2 uses
  %.not.i116 = icmp eq i32 %i.mk, 0
  %i.ml = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 6 uses
  %i.mm = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  br i1 %.not.i116, label %bb.bm, label %._crit_edge.i117

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i119 = icmp ult ptr %i.ml, %i.mm
  br i1 %.not.i.i119, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120, label %._crit_edge.i117

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120: ; preds = %bb.bm
  %i.mn = load i16, ptr %i.ml, align 2, !tbaa !145
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 2 ; 5 uses
  store ptr %i.mo, ptr %i.bn, align 8, !tbaa !168
  %i.mp = icmp eq i16 %i.mn, 6
  br i1 %i.mp, label %bb.bn, label %._crit_edge.i117

bb.bn:                                            ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120
  %.not.i3.i121 = icmp ult ptr %i.mo, %i.mm
  br i1 %.not.i3.i121, label %bb.bo, label %._crit_edge.i117

bb.bo:                                            ; preds = %bb.bn
  %i.mq = load i32, ptr %i.mo, align 4, !tbaa !137
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 6 ; 2 uses
  store ptr %i.mr, ptr %i.bn, align 8, !tbaa !168
  br label %._crit_edge.i117

._crit_edge.i117:                                 ; preds = %bb.bo, %bb.bn, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120, %bb.bm, %bb.bl
  %i.ms = phi ptr [ %i.ml, %bb.bl ], [ %i.mo, %bb.bn ], [ %i.mo, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120 ], [ %i.mr, %bb.bo ], [ %i.ml, %bb.bm ] ; 3 uses
  %i.mt = phi i32 [ %i.mk, %bb.bl ], [ 0, %bb.bn ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit.i120 ], [ %i.mq, %bb.bo ], [ 1, %bb.bm ]
  %i.mu = add i32 %i.mt, -1
  store i32 %i.mu, ptr %i.bq, align 8, !tbaa !166
  %.not.i5.i118 = icmp ult ptr %i.ms, %i.mm
  br i1 %.not.i5.i118, label %bb.bp, label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

bb.bp:                                            ; preds = %._crit_edge.i117
  %i.mv = load i32, ptr %i.ms, align 4, !tbaa !137
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store ptr %i.mw, ptr %i.bn, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader7readIntEv.exit122

.preheader.i.i103:                                ; preds = %bb.bk
  %i.mx = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %.promoted.i.i104 = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 3 uses
  %i.my = icmp ult ptr %.promoted.i.i104, %i.mx
  br i1 %i.my, label %.lr.ph.i.i107, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105

.lr.ph.i.i107:                                    ; preds = %.preheader.i.i103
  %.promoted7.i.i108 = load i32, ptr %i.bp, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113, %.lr.ph.i.i107
  %i.mz = phi i32 [ %.promoted7.i.i108, %.lr.ph.i.i107 ], [ %i.nn, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ] ; 3 uses
  %i.na = phi ptr [ %.promoted.i.i104, %.lr.ph.i.i107 ], [ %i.no, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i.i113 ] ; 5 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !27  ; 3 uses
  %i.nc = sext i8 %i.nb to i32
  %.off.i.i109 = add i8 %i.nb, -45
  %switch.i.i110 = icmp ult i8 %.off.i.i109, 2
  %i.nd = add nsw i32 %i.nc, -48
  %i.ne = icmp ult i32 %i.nd, 10
  %or.cond.i.i111 = select i1 %switch.i.i110, i1 true, i1 %i.ne
  br i1 %or.cond.i.i111, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit.i105, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i8 %i.nb, label %.thread.i.i115 [
    i8 47, label %bb.bs
    i8 35, label %.lr.ph.i.i.i112.preheader
  ]

bb.bs:                                            ; preds = %bb.br
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !27
  %i.nh = icmp eq i8 %i.ng, 47
  br i1 %i.nh, label %.lr.ph.i.i.i112.preheader, label %.thread.i.i115

.lr.ph.i.i.i112.preheader:                        ; preds = %bb.bs, %bb.br
  br label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %.lr.ph.i.i.i112.preheader, %bb.bu
end_hunk_2
begin_hunk_3_@_ZN5scene16CXMeshFileLoader31parseDataObjectMeshMaterialListERNS0_6SXMeshE:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 7
  %i.z = zext i32 %i.q to i64                     ; 4 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.w
  %i.af = ashr exact i64 %i.ae, 7
  %i.ag = icmp ugt i64 %i.af, %i.z
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN5video9SMaterialESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i64 noundef %i.z)
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !91
  %.pre6.i = load ptr, ptr %i.ab, align 8, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = phi ptr [ %.pre6.i, %bb.g ], [ %i.ac, %bb.f ]
  %i.ai = phi ptr [ %.pre.i, %bb.g ], [ %i.t, %bb.f ]
  %i.aj = icmp eq ptr %i.ai, %i.ah
  br i1 %i.aj, label %_ZN4core5arrayIN5video9SMaterialEE10reallocateEjb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5video9SMaterialESaIS2_EELb1EE8_S_do_itERS4_(ptr noundef nonnull align 8 dereferenceable(25) %i.r) #28 ; 0 uses
  br label %_ZN4core5arrayIN5video9SMaterialEE10reallocateEjb.exit

bb.j:                                             ; preds = %bb.e
  tail call void @_ZNSt6vectorIN5video9SMaterialESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i64 noundef %i.z)
  br label %_ZN4core5arrayIN5video9SMaterialEE10reallocateEjb.exit

_ZN4core5arrayIN5video9SMaterialEE10reallocateEjb.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.al = tail call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !138
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 2
  %i.av = trunc i64 %i.au to i32
  %i.aw = udiv i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64              ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !135 ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !138 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.ax
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4core5arrayIN5video9SMaterialEE10reallocateEjb.exit
  %i.bg = sub nuw nsw i64 %i.ax, %i.be
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.am, i64 noundef %i.bg)
  br label %_ZN4core5arrayIjE8set_usedEj.exit

bb.l:                                             ; preds = %_ZN4core5arrayIN5video9SMaterialEE10reallocateEjb.exit
  %i.bh = icmp ugt i64 %i.be, %i.ax
  br i1 %i.bh, label %bb.m, label %_ZN4core5arrayIjE8set_usedEj.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ax ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.bi
  br i1 %.not.i.i.i, label %_ZN4core5arrayIjE8set_usedEj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.m
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !135
  br label %_ZN4core5arrayIjE8set_usedEj.exit

_ZN4core5arrayIjE8set_usedEj.exit:                ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !159
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !158
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, 8589934590
  %.not43121.not = icmp eq i64 %i.bq, 0
  br i1 %.not43121.not, label %.critedge, label %.lr.ph125

.lr.ph125:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 1)
  %i.br = zext i32 %i.al to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph125, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.026123 = phi i32 [ 0, %.lr.ph125 ], [ %.127, %._crit_edge ]
  %.028122 = phi i32 [ 0, %.lr.ph125 ], [ %.129.lcssa, %._crit_edge ] ; 9 uses
  %i.bs = icmp samesign ult i64 %indvars.iv, %i.br
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.127 = phi i32 [ %i.bt, %bb.o ], [ %.026123, %bb.n ] ; 4 uses
  %.not = icmp ult i32 %.127, %.sroa.speculated
  br i1 %.not, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.73, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bv)
  %i.bw = load ptr, ptr %3, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.bw, i32 noundef 2)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN4core6stringIcED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.r
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !27
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #29
  br label %_ZN4core6stringIcED2Ev.exit58

_ZN4core6stringIcED2Ev.exit58:                    ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.cc, align 8, !tbaa !48
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4core6stringIcED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %bb.s
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !27
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #29
  br label %_ZN4core6stringIcED2Ev.exit61

_ZN4core6stringIcED2Ev.exit61:                    ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bc

bb.t:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !159
  %i.ck = load ptr, ptr %i.bj, align 8, !tbaa !158 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = ashr exact i64 %i.cn, 1
  %i.cp = icmp ugt i64 %i.co, %indvars.iv
  br i1 %i.cp, label %_ZN4core5arrayItEixEj.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayItEixEj) #31
  unreachable

_ZN4core5arrayItEixEj.exit:                       ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !145 ; 2 uses
  %.not126 = icmp ult i16 %i.cr, 3
  br i1 %.not126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4core5arrayItEixEj.exit
  %i.cs = udiv i16 %i.cr, 3
  %i.ct = zext nneg i16 %i.cs to i32              ; 3 uses
  %i.cu = load ptr, ptr %i.ay, align 8, !tbaa !135
  %i.cv = load ptr, ptr %i.am, align 8, !tbaa !138 ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = add i32 %.028122, %i.ct                 ; 2 uses
  %i.db = zext i32 %.028122 to i64
  %i.dc = tail call i64 @llvm.usub.sat.i64(i64 %i.cz, i64 %i.db)
  %i.dd = add nsw i32 %i.ct, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.de)
  %i.dg = trunc nuw i64 %i.df to i32
  %i.dh = add i32 %i.dg, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.dh, 21
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph
  %.129119.ph = phi i32 [ %.028122, %vector.scevcheck ], [ %.028122, %.lr.ph ], [ %10, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.di = zext i32 %.028122 to i64
  %i.dj = tail call i64 @llvm.usub.sat.i64(i64 %i.cz, i64 %i.di)
  %i.dk = add nsw i32 %i.ct, -1
  %i.dl = zext i32 %i.dk to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dl)
  %i.dm = trunc nuw i64 %umin to i32
  %i.dn = xor i32 %.028122, -1
  %i.do = icmp ult i32 %i.dn, %i.dm
  br i1 %i.do, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.dp = and i32 %i.dh, 7                        ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = select i1 %i.dq, i32 8, i32 %i.dp
  %n.vec = sub i32 %i.dh, %i.dr                   ; 2 uses
  %10 = add i32 %.028122, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.127, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = add i32 %.028122, %index
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.du, align 4, !tbaa !137
  store <4 x i32> %broadcast.splat, ptr %i.dv, align 4, !tbaa !137
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.dw = icmp eq i32 %index.next, %n.vec
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !316

._crit_edge:                                      ; preds = %_ZN4core5arrayIjEixEj.exit, %_ZN4core5arrayItEixEj.exit
  %.129.lcssa = phi i32 [ %.028122, %_ZN4core5arrayItEixEj.exit ], [ %i.da, %_ZN4core5arrayIjEixEj.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dx = lshr exact i64 %i.cn, 1
  %i.dy = and i64 %i.dx, 4294967295
  %.not43 = icmp samesign ult i64 %indvars.iv.next, %i.dy
  br i1 %.not43, label %bb.n, label %.critedge, !llvm.loop !317

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN4core5arrayIjEixEj.exit
  %.129119 = phi i32 [ %i.eb, %_ZN4core5arrayIjEixEj.exit ], [ %.129119.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dz = zext i32 %.129119 to i64                ; 2 uses
  %i.ea = icmp ugt i64 %i.cz, %i.dz
  br i1 %i.ea, label %_ZN4core5arrayIjEixEj.exit, label %bb.v

bb.v:                                             ; preds = %scalar.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %scalar.ph
  %i.eb = add i32 %.129119, 1                     ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dz
  store i32 %.127, ptr %i.ec, align 4, !tbaa !137
  %exitcond.not = icmp eq i32 %i.eb, %i.da
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !318

.critedge:                                        ; preds = %._crit_edge, %_ZN4core5arrayIjE8set_usedEj.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !165, !range !78, !noundef !79
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.preheader, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !168 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !27
  %i.ej = icmp eq i8 %i.ei, 59
  br i1 %i.ej, label %bb.x, label %.preheader

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !168
  br label %.preheader

.preheader:                                       ; preds = %bb.w, %bb.x, %.critedge
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 34
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 58
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 82
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 108
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 124
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 126
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 34
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 58
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 82
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 126
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.fy = load i64, ptr %i.el, align 8, !tbaa !26
  %i.fz = and i64 %i.fy, 4294967295
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %._crit_edge185, label %sub_0

._crit_edge185:                                   ; preds = %_ZN4core6stringIcED2Ev.exit96.jt0, %.preheader
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.74, i32 noundef 2)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %._crit_edge185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.gb = load i32, ptr %i.fu, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.gb)
  %i.gc = load ptr, ptr %5, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.gc, i32 noundef 2)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gd = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fv
  br i1 %i.ge, label %_ZN4core6stringIcED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.z
  %i.gf = load i64, ptr %i.fv, align 8, !tbaa !27
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #29
  br label %_ZN4core6stringIcED2Ev.exit64

_ZN4core6stringIcED2Ev.exit64:                    ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store i8 1, ptr %i.fw, align 8, !tbaa !48
  br label %.loopexit184

.loopexit183:                                     ; preds = %_ZN5video9SMaterialD2Ev.exit, %_ZN5video9SMaterialD2Ev.exit92, %.tail107.thread, %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %._crit_edge185
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aa:                                            ; preds = %bb.y
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fv
  br i1 %i.gj, label %_ZN4core6stringIcED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.aa
  %i.gk = load i64, ptr %i.fv, align 8, !tbaa !27
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #29
  br label %_ZN4core6stringIcED2Ev.exit67

_ZN4core6stringIcED2Ev.exit67:                    ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bb

sub_0:                                            ; preds = %.preheader, %_ZN4core6stringIcED2Ev.exit96.jt0
  %i.gm = load ptr, ptr %4, align 8, !tbaa !52    ; 8 uses
  %i.gn = load i8, ptr %i.gm, align 1             ; 2 uses
  switch i8 %i.gn, label %.tail103.thread [
    i8 125, label %.tail
    i8 123, label %.tail103
  ]

.tail:                                            ; preds = %sub_0
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.ba, label %.tail103.thread.thread

.tail103:                                         ; preds = %sub_0
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.tail103
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4core6stringIcEaSERKS1_.exit unwind label %bb.am

_ZN4core6stringIcEaSERKS1_.exit:                  ; preds = %bb.ac
  %i.gu = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fd
  br i1 %i.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %_ZN4core6stringIcEaSERKS1_.exit
  %i.gw = load i64, ptr %i.fd, align 8, !tbaa !27
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70: ; preds = %_ZN4core6stringIcEaSERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr null, ptr %7, align 8, !tbaa !89
  %i.gy = load i16, ptr %i.fe, align 8
  %i.gz = and i16 %i.gy, -4096
  store i16 %i.gz, ptr %i.fe, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ff, align 2, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  %i.ha = load i16, ptr %i.fh, align 8
  %i.hb = and i16 %i.ha, -4096
  store i16 %i.hb, ptr %i.fh, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.fi, align 2, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
end_hunk_3
begin_hunk_4_@_ZN5video9SMaterialC2ERKS0_:bb.a
bb.j:                                             ; preds = %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !97
  %.not19.i.i.3 = icmp eq ptr %i.ch, null
  br i1 %.not19.i.i.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc.3 unwind label %.preheader.preheader ; 2 uses

.noexc.3:                                         ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ci, ptr noundef nonnull align 4 dereferenceable(64) %i.cj, i64 64, i1 false), !tbaa.struct !169
  store ptr %i.ci, ptr %i.cc, align 8, !tbaa !97
  br label %bb.l

bb.l:                                             ; preds = %.noexc.3, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = and i16 %i.cl, 15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = and i16 %i.co, -16
  %i.cq = or disjoint i16 %i.cp, %i.cm            ; 2 uses
  store i16 %i.cq, ptr %i.cn, align 8
  %i.cr = load i16, ptr %i.ck, align 8
  %i.cs = and i16 %i.cr, 240
  %i.ct = and i16 %i.cq, -241
  %i.cu = or disjoint i16 %i.ct, %i.cs            ; 2 uses
  store i16 %i.cu, ptr %i.cn, align 8
  %i.cv = load i16, ptr %i.ck, align 8
  %i.cw = and i16 %i.cv, 3840
  %i.cx = and i16 %i.cu, -3841
  %i.cy = or disjoint i16 %i.cx, %i.cw
  store i16 %i.cy, ptr %i.cn, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.db = load <4 x i8>, ptr %i.cz, align 2, !tbaa !27
  store <4 x i8> %i.db, ptr %i.da, align 2, !tbaa !27
  br label %_ZN5video14SMaterialLayerC2ERKS0_.exit.3

_ZN5video14SMaterialLayerC2ERKS0_.exit.3:         ; preds = %bb.l, %_ZN5video14SMaterialLayerC2ERKS0_.exit.2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %i.dc, ptr noundef nonnull align 8 dereferenceable(31) %i.dd, i64 31, i1 false)
  ret void

.preheader.preheader:                             ; preds = %bb.e, %bb.h, %bb.k
  %.lcssa.ph = phi ptr [ %i.cb, %bb.k ], [ %i.ba, %bb.h ], [ %i.z, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.de = phi ptr [ %i.df, %_ZN5video14SMaterialLayerD2Ev.exit ], [ %.lcssa.ph, %.preheader.preheader ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -24 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !97 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %.preheader, %bb.m
  %i.di = icmp eq ptr %i.df, %0
  br i1 %i.di, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPN5scene15SSkinMeshBufferESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !362

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !102
  store ptr %i.m, ptr %i.i, align 8, !tbaa !102
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit unwind label %bb.g

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !99
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !100
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !98
  %.not.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29
  br label %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit, %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit ], [ true, %bb.f ]
  ret i1 %.0

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !138    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !137
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !137
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !135
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !137
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !137
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !138
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !136
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !143    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.p, align 4, !tbaa !369
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 36
  store i16 0, ptr %i.r, align 4, !tbaa !371
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !363

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.v, align 4, !tbaa !369
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <2 x float> zeroinitializer, ptr %i.w, align 4, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  store i16 0, ptr %i.x, align 4, !tbaa !371
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.y, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.z, align 4, !tbaa !369
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 68
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i16 0, ptr %i.ab, align 4, !tbaa !371
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.ac, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ad, align 4, !tbaa !369
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store <2 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 116
  store i16 0, ptr %i.af, align 4, !tbaa !371
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.ag, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ah, align 4, !tbaa !369
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 148
  store <2 x float> zeroinitializer, ptr %i.ai, align 4, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 156
  store i16 0, ptr %i.aj, align 4, !tbaa !371
  %i.ak = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !364

_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !142
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #32
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 230584300921369395) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 40
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #30 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.as, align 4, !tbaa !369
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28
  store <2 x float> zeroinitializer, ptr %i.at, align 4, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 36
  store i16 0, ptr %i.au, align 4, !tbaa !371
  %i.av = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !365

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ay, align 4, !tbaa !369
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <2 x float> zeroinitializer, ptr %i.az, align 4, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 36
  store i16 0, ptr %i.ba, align 4, !tbaa !371
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bc, align 4, !tbaa !369
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 68
  store <2 x float> zeroinitializer, ptr %i.bd, align 4, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i16 0, ptr %i.be, align 4, !tbaa !371
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bf, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bg, align 4, !tbaa !369
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !90
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 116
  store i16 0, ptr %i.bi, align 4, !tbaa !371
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bj, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bk, align 4, !tbaa !369
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 148
  store <2 x float> zeroinitializer, ptr %i.bl, align 4, !tbaa !90
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 156
  store i16 0, ptr %i.bm, align 4, !tbaa !371
  %i.bn = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !364

_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !147, !alias.scope !372
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #29
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !143
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !142
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !158    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !145
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !145
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !159
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #32
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4611686018427387903) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store i16 0, ptr %i.x, align 2, !tbaa !145
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 2
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !145
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.w, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #29
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !158
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !159
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !157
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN4core8vector2dIfEESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !373  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.k = and i64 %i.f, 9223372036854775800        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %i.a, i64 %i.k, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !150
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit

_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.l, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i
  %i.n = phi ptr [ %i.a, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %.pre, %.noexc5.i ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %i.i, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !150
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !149
  store ptr %.sroa.12.0, ptr %i.o, align 8, !tbaa !162
  %.not.i.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #29
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EED2Ev.exit.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video9SMaterialESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 7                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN5video9SMaterialESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN5video9SMaterialESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN5video9SMaterialESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i.i:     ; preds = %bb.e, %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %.not.i.1.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.1.i.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i.i:   ; preds = %bb.f, %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97   ; 2 uses
  %.not.i.2.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.2.i.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 64) #29
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i.i
end_hunk_4
