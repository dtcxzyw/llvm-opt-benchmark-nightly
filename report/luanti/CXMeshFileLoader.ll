Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader4loadEPN2io9IReadFileE:bb.a
  %i.ta = load ptr, ptr %i.su, align 8, !tbaa !155
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = sdiv exact i64 %i.td, 48
  %i.tf = icmp ult i64 %i.te, %i.sx
  br i1 %i.tf, label %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %i.st, i64 40 ; 3 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !156
  %i.ti = ptrtoint ptr %i.th to i64
  %i.tj = sub i64 %i.ti, %i.tc
  %i.tk = mul nuw nsw i64 %i.sx, 48
  %i.tl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tk) #30
          to label %.noexc245 unwind label %.loopexit.split-lp416.loopexit.split-lp.loopexit ; 4 uses

.noexc245:                                        ; preds = %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE11_M_allocateEm.exit.i
  %i.tm = load ptr, ptr %i.su, align 8, !tbaa !155 ; 5 uses
  %i.tn = load ptr, ptr %i.tg, align 8, !tbaa !156 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.tm, %i.tn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc245, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.tp, %.lr.ph.i.i.i.i ], [ %i.tl, %.noexc245 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.to, %.lr.ph.i.i.i.i ], [ %i.tm, %.noexc245 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !alias.scope !263
  %i.to = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %.not.i.i.i.i244 = icmp eq ptr %i.to, %i.tn
  br i1 %.not.i.i.i.i244, label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc245
  %.not.i8.i = icmp eq ptr %i.tm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.tq = load ptr, ptr %i.sy, align 8, !tbaa !154
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = ptrtoint ptr %i.tm to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tt) #29
  br label %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bw, %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.tl, ptr %i.su, align 8, !tbaa !155
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tj
  store ptr %i.tu, ptr %i.tg, align 8, !tbaa !156
  %i.tv = getelementptr inbounds nuw [48 x i8], ptr %i.tl, i64 %i.sx
  store ptr %i.tv, ptr %i.sy, align 8, !tbaa !154
  %.pre928 = load ptr, ptr %i.qp, align 8, !tbaa !100
  %.pre929 = load ptr, ptr %i.bj, align 8, !tbaa !99
  br label %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit
  %i.tw = phi ptr [ %.pre929, %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.sk, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit ] ; 3 uses
  %i.tx = phi ptr [ %.pre928, %_ZNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.sl, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit ] ; 2 uses
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tw to i64
  %i.ua = sub i64 %i.ty, %i.tz                    ; 3 uses
  %i.ub = ashr exact i64 %i.ua, 3
  %i.uc = icmp ugt i64 %i.ub, %i.sn
  br i1 %i.uc, label %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit246, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE7reserveEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj) #31
  unreachable

_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit246: ; preds = %_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE7reserveEm.exit
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.sn
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !102
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 232
  store i32 1, ptr %i.uf, align 8, !tbaa !264
  %i.ug = add i32 %.5698, 1                       ; 2 uses
  %i.uh = lshr exact i64 %i.ua, 3
  %i.ui = trunc i64 %i.uh to i32
  %.not196 = icmp eq i32 %i.ug, %i.ui
  br i1 %.not196, label %.loopexit426, label %.lr.ph699, !llvm.loop !232

.lr.ph702:                                        ; preds = %.preheader425, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.uj = phi ptr [ %i.vv, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ %i.sf, %.preheader425 ] ; 2 uses
  %i.uk = phi ptr [ %i.vw, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ %i.se, %.preheader425 ]
  %i.ul = phi i64 [ %i.wa, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ %i.si, %.preheader425 ]
  %.6701 = phi i32 [ %i.vx, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ 0, %.preheader425 ] ; 2 uses
  %i.um = zext i32 %.6701 to i64                  ; 3 uses
  %i.un = ashr exact i64 %i.ul, 3
  %i.uo = icmp ugt i64 %i.un, %i.um
  br i1 %i.uo, label %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit247, label %bb.by

bb.by:                                            ; preds = %.lr.ph702
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj) #31
  unreachable

_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit247: ; preds = %.lr.ph702
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.um
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !102
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 24
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !265 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 32 ; 3 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.um
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !137
  %i.uw = zext i32 %i.uv to i64                   ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 48 ; 3 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !146
  %i.uz = load ptr, ptr %i.ut, align 8, !tbaa !143
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = ptrtoint ptr %i.uz to i64               ; 2 uses
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = sdiv exact i64 %i.vc, 40
  %i.ve = icmp ult i64 %i.vd, %i.uw
  br i1 %i.ve, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit247
  %i.vf = getelementptr inbounds nuw i8, ptr %i.us, i64 40 ; 3 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !142
  %i.vh = ptrtoint ptr %i.vg to i64
  %i.vi = sub i64 %i.vh, %i.vb
  %i.vj = mul nuw nsw i64 %i.uw, 40
  %i.vk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vj) #30
          to label %.noexc254 unwind label %.loopexit.split-lp416.loopexit ; 4 uses

.noexc254:                                        ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %i.vl = load ptr, ptr %i.ut, align 8, !tbaa !143 ; 5 uses
  %i.vm = load ptr, ptr %i.vf, align 8, !tbaa !142 ; 2 uses
  %.not10.i.i.i.i248 = icmp eq ptr %i.vl, %i.vm
  br i1 %.not10.i.i.i.i248, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i249

.lr.ph.i.i.i.i249:                                ; preds = %.noexc254, %.lr.ph.i.i.i.i249
  %.012.i.i.i.i250 = phi ptr [ %i.vo, %.lr.ph.i.i.i.i249 ], [ %i.vk, %.noexc254 ] ; 2 uses
  %.0911.i.i.i.i251 = phi ptr [ %i.vn, %.lr.ph.i.i.i.i249 ], [ %i.vl, %.noexc254 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i250, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i251, i64 40, i1 false), !tbaa.struct !147, !alias.scope !266
  %i.vn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i251, i64 40 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i250, i64 40
  %.not.i.i.i.i252 = icmp eq ptr %i.vn, %i.vm
  br i1 %.not.i.i.i.i252, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i249, !llvm.loop !1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i249, %.noexc254
  %.not.i8.i253 = icmp eq ptr %i.vl, null
  br i1 %.not.i8.i253, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.vp = load ptr, ptr %i.ux, align 8, !tbaa !146
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = ptrtoint ptr %i.vl to i64
  %i.vs = sub i64 %i.vq, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vs) #29
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bz, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.vk, ptr %i.ut, align 8, !tbaa !143
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vi
  store ptr %i.vt, ptr %i.vf, align 8, !tbaa !142
  %i.vu = getelementptr inbounds nuw [40 x i8], ptr %i.vk, i64 %i.uw
  store ptr %i.vu, ptr %i.ux, align 8, !tbaa !146
  %.pre930 = load ptr, ptr %i.qp, align 8, !tbaa !100
  %.pre931 = load ptr, ptr %i.bj, align 8, !tbaa !99
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit247
  %i.vv = phi ptr [ %.pre931, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.uj, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit247 ] ; 2 uses
  %i.vw = phi ptr [ %.pre930, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.uk, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit247 ] ; 2 uses
  %i.vx = add i32 %.6701, 1                       ; 2 uses
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = ptrtoint ptr %i.vv to i64
  %i.wa = sub i64 %i.vy, %i.vz                    ; 2 uses
  %i.wb = lshr exact i64 %i.wa, 3
  %i.wc = trunc i64 %i.wb to i32
  %.not195 = icmp eq i32 %i.vx, %i.wc
  br i1 %.not195, label %.loopexit426, label %.lr.ph702, !llvm.loop !236

.loopexit426:                                     ; preds = %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit246, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit, %.preheader430, %.preheader425
  %i.wd = load ptr, ptr %i.js, align 8, !tbaa !142
  %i.we = load ptr, ptr %i.jr, align 8, !tbaa !143
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = sdiv exact i64 %i.wh, 40
  %i.wj = and i64 %i.wi, 4294967295               ; 6 uses
  %.not407 = icmp eq i64 %i.wj, 0
  br i1 %.not407, label %._crit_edge705, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %.loopexit426
  %i.wk = shl nuw nsw i64 %i.wj, 2
  %i.wl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wk) #30
          to label %.noexc321 unwind label %.loopexit.split-lp416.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc321:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.wl, align 4, !tbaa !137
  %i.wm = add nsw i64 %i.wj, -1                   ; 2 uses
  %i.wn = icmp eq i64 %i.wm, 0
  br i1 %i.wn, label %_ZN4core5arrayIjE8set_usedEj.exit258, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc321
  %i.wo = getelementptr i8, ptr %i.wl, i64 4
  %.idx.i.i.i.i.i31.i318 = shl nuw nsw i64 %i.wm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.wo, i8 0, i64 %.idx.i.i.i.i.i31.i318, i1 false), !tbaa !137
  br label %_ZN4core5arrayIjE8set_usedEj.exit258

_ZN4core5arrayIjE8set_usedEj.exit258:             ; preds = %.noexc321, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.wj ; 4 uses
  %.pre932 = load ptr, ptr %i.js, align 8, !tbaa !142
  %.pre933 = load ptr, ptr %i.jr, align 8, !tbaa !143 ; 2 uses
  %.pre957 = ptrtoint ptr %.pre932 to i64
  %.pre959 = ptrtoint ptr %.pre933 to i64
  %.pre961 = sub i64 %.pre957, %.pre959
  %.pre963 = sdiv exact i64 %.pre961, 40
  %.pre965 = and i64 %.pre963, 4294967295
  %i.wq = icmp eq i64 %.pre965, 0
  br i1 %i.wq, label %._crit_edge705, label %.lr.ph704

.lr.ph704:                                        ; preds = %_ZN4core5arrayIjE8set_usedEj.exit258
  %i.wr = ptrtoint ptr %.sroa.21.1.lcssa to i64
  %i.ws = ptrtoint ptr %.sroa.0326.1.lcssa to i64 ; 3 uses
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = ashr exact i64 %i.wt, 1
  %exitcond902.not1483 = icmp eq ptr %.sroa.21.1.lcssa, %.sroa.0326.1.lcssa
  br i1 %exitcond902.not1483, label %.lr.ph704._crit_edge, label %_ZN4core5arrayIsEixEj.exit259

bb.ca:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  %exitcond902.not = icmp eq i64 %indvars.iv.next900, %i.wu
  br i1 %exitcond902.not, label %.lr.ph704._crit_edge, label %_ZN4core5arrayIsEixEj.exit259, !llvm.loop !237

.lr.ph704._crit_edge:                             ; preds = %.lr.ph704, %bb.ca
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIsEixEj) #31
  unreachable

_ZN4core5arrayIsEixEj.exit259:                    ; preds = %.lr.ph704, %bb.ca
  %i.wv = phi ptr [ %i.aag, %bb.ca ], [ %.pre933, %.lr.ph704 ] ; 2 uses
  %indvars.iv8991484 = phi i64 [ %indvars.iv.next900, %bb.ca ], [ 0, %.lr.ph704 ] ; 13 uses
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0326.1.lcssa, i64 %indvars.iv8991484
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !145 ; 2 uses
  %i.wy = icmp eq i16 %i.wx, -1
  br i1 %i.wy, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit, label %_ZN4core5arrayIsEixEj.exit260

_ZN4core5arrayIsEixEj.exit260:                    ; preds = %_ZN4core5arrayIsEixEj.exit259
  %i.wz = sext i16 %i.wx to i64
  %i.xa = and i64 %i.wz, 4294967295               ; 2 uses
  %i.xb = load ptr, ptr %i.qp, align 8, !tbaa !100
  %i.xc = load ptr, ptr %i.bj, align 8, !tbaa !99 ; 2 uses
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = ptrtoint ptr %i.xc to i64
  %i.xf = sub i64 %i.xd, %i.xe
  %i.xg = ashr exact i64 %i.xf, 3
  %i.xh = icmp ugt i64 %i.xg, %i.xa
  br i1 %i.xh, label %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit261, label %bb.cb

bb.cb:                                            ; preds = %_ZN4core5arrayIsEixEj.exit260
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj) #31
  unreachable

_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit261: ; preds = %_ZN4core5arrayIsEixEj.exit260
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xa
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !102 ; 2 uses
  %i.xk = load ptr, ptr %i.rx, align 8, !tbaa !149
  %i.xl = load ptr, ptr %i.rw, align 8, !tbaa !150
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = and i64 %i.xo, 34359738360
  %.not201 = icmp eq i64 %i.xp, 0
  br i1 %.not201, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit261
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 2 uses
  %i.xr = icmp samesign ugt i64 %i.wj, %indvars.iv8991484
  br i1 %i.xr, label %_ZN4core5arrayIjEixEj.exit262, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit262:                    ; preds = %bb.cc
  %3 = load ptr, ptr %i.xq, align 8, !tbaa !262   ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !156
  %i.xu = ptrtoint ptr %i.xt to i64
  %i.xv = load ptr, ptr %4, align 8, !tbaa !155
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = sub i64 %i.xu, %i.xw
  %i.xy = sdiv exact i64 %i.xx, 48
  %i.xz = trunc i64 %i.xy to i32
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %indvars.iv8991484
  store i32 %i.xz, ptr %i.ya, align 4, !tbaa !137
  %5 = getelementptr inbounds nuw [40 x i8], ptr %i.wv, i64 %indvars.iv8991484
  %6 = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZNSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE12emplace_backIJRNS0_9S3DVertexEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(38) %5)
          to label %bb.ce unwind label %.loopexit420 ; 0 uses

bb.ce:                                            ; preds = %_ZN4core5arrayIjEixEj.exit262
  %i.yb = load ptr, ptr %i.rx, align 8, !tbaa !149
  %i.yc = load ptr, ptr %i.rw, align 8, !tbaa !150 ; 2 uses
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = ptrtoint ptr %i.yc to i64
  %i.yf = sub i64 %i.yd, %i.ye                    ; 2 uses
  %i.yg = lshr exact i64 %i.yf, 3
  %i.yh = and i64 %i.yg, 4294967295
  %i.yi = icmp samesign ult i64 %indvars.iv8991484, %i.yh
  br i1 %i.yi, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.yj = ashr exact i64 %i.yf, 3
  %i.yk = icmp ugt i64 %i.yj, %indvars.iv8991484
  br i1 %i.yk, label %_ZN4core5arrayINS_8vector2dIfEEEixEj.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector2dIfEEEixEj) #31
  unreachable

_ZN4core5arrayINS_8vector2dIfEEEixEj.exit:        ; preds = %bb.cf
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv8991484
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ce
  %i.ym = load ptr, ptr %i.js, align 8, !tbaa !142
  %i.yn = load ptr, ptr %i.jr, align 8, !tbaa !143 ; 2 uses
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yn to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = sdiv exact i64 %i.yq, 40
  %i.ys = icmp ugt i64 %i.yr, %indvars.iv8991484
  br i1 %i.ys, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit264, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video9S3DVertexEEixEj) #31
  unreachable

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit264:   ; preds = %bb.ch
  %i.yt = getelementptr inbounds nuw [40 x i8], ptr %i.yn, i64 %indvars.iv8991484
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 28
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit264, %_ZN4core5arrayINS_8vector2dIfEEEixEj.exit
  %i.yv = phi ptr [ %i.yl, %_ZN4core5arrayINS_8vector2dIfEEEixEj.exit ], [ %i.yu, %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit264 ]
  %i.yw = load ptr, ptr %i.xq, align 8, !tbaa !262
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 40
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !267
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -8
  %i.za = load i64, ptr %i.yv, align 4, !tbaa !90
  store i64 %i.za, ptr %i.yz, align 4, !tbaa !90
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

.loopexit420:                                     ; preds = %_ZN4core5arrayIjEixEj.exit262, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit422 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp421:                            ; preds = %bb.co
  %lpad.loopexit.split-lp423 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ck:                                            ; preds = %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit261
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !265 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 32 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !143 ; 5 uses
  %i.zf = ptrtoint ptr %i.ze to i64               ; 2 uses
  %i.zg = icmp samesign ugt i64 %i.wj, %indvars.iv8991484
  br i1 %i.zg, label %_ZN4core5arrayIjEixEj.exit265, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit265:                    ; preds = %bb.ck
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zc, i64 40 ; 4 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !142 ; 5 uses
  %i.zj = ptrtoint ptr %i.zi to i64
  %i.zk = sub i64 %i.zj, %i.zf                    ; 3 uses
  %i.zl = sdiv exact i64 %i.zk, 40                ; 4 uses
  %i.zm = trunc i64 %i.zl to i32
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %indvars.iv8991484
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !137
  %7 = getelementptr inbounds nuw [40 x i8], ptr %i.wv, i64 %indvars.iv8991484 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.zc, i64 48 ; 3 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  %.not.i = icmp eq ptr %i.zi, %9
  br i1 %.not.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZN4core5arrayIjEixEj.exit265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.zi, ptr noundef nonnull align 4 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !147
  %i.zo = load ptr, ptr %i.zh, align 8, !tbaa !142
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 40
  store ptr %i.zp, ptr %i.zh, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

bb.cn:                                            ; preds = %_ZN4core5arrayIjEixEj.exit265
  %i.zq = icmp eq i64 %i.zk, 9223372036854775800
  br i1 %i.zq, label %bb.co, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #32
          to label %.noexc269 unwind label %.loopexit.split-lp421

.noexc269:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cn
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.zl, i64 1)
  %i.zr = add nsw i64 %.sroa.speculated.i.i.i, %i.zl ; 2 uses
  %i.zs = icmp ult i64 %i.zr, %i.zl
  %i.zt = call i64 @llvm.umin.i64(i64 %i.zr, i64 230584300921369395)
  %i.zu = select i1 %i.zs, i64 230584300921369395, i64 %i.zt ; 3 uses
  %.not.i.i.i267 = icmp ne i64 %i.zu, 0
  call void @llvm.assume(i1 %.not.i.i.i267)
  %i.zv = mul nuw nsw i64 %i.zu, 40
  %i.zw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zv) #30
          to label %.noexc270 unwind label %.loopexit420 ; 5 uses

.noexc270:                                        ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.zx, ptr noundef nonnull align 4 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !147
  %.not10.i.i.i.i.i = icmp eq ptr %i.ze, %i.zi
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc270, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.zz, %.lr.ph.i.i.i.i.i ], [ %i.zw, %.noexc270 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.zy, %.lr.ph.i.i.i.i.i ], [ %i.ze, %.noexc270 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !147, !alias.scope !268
  %i.zy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i268 = icmp eq ptr %i.zy, %i.zi
  br i1 %.not.i.i.i.i.i268, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc270
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.zw, %.noexc270 ], [ %i.zz, %.lr.ph.i.i.i.i.i ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40
  %.not.i23.i.i = icmp eq ptr %i.ze, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.aab = load ptr, ptr %8, align 8, !tbaa !146
  %i.aac = ptrtoint ptr %i.aab to i64
  %i.aad = sub i64 %i.aac, %i.zf
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.aad) #29
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cp, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.zw, ptr %i.zd, align 8, !tbaa !143
  store ptr %i.aaa, ptr %i.zh, align 8, !tbaa !142
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.zw, i64 %i.zu
  store ptr %i.aae, ptr %8, align 8, !tbaa !146
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cm, %bb.cj, %_ZN4core5arrayIsEixEj.exit259
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv8991484, 1 ; 3 uses
  %i.aaf = load ptr, ptr %i.js, align 8, !tbaa !142
  %i.aag = load ptr, ptr %i.jr, align 8, !tbaa !143 ; 2 uses
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  %i.aak = sdiv exact i64 %i.aaj, 40
  %i.aal = and i64 %i.aak, 4294967295
  %i.aam = icmp samesign ult i64 %indvars.iv.next900, %i.aal
  br i1 %i.aam, label %bb.ca, label %._crit_edge705, !llvm.loop !237

._crit_edge705:                                   ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit, %.loopexit426, %_ZN4core5arrayIjE8set_usedEj.exit258
  %.sroa.14.11126 = phi ptr [ null, %.loopexit426 ], [ %i.wp, %_ZN4core5arrayIjE8set_usedEj.exit258 ], [ %i.wp, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.0358.31125 = phi ptr [ null, %.loopexit426 ], [ %i.wl, %_ZN4core5arrayIjE8set_usedEj.exit258 ], [ %i.wl, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %i.aan = load ptr, ptr %i.qp, align 8, !tbaa !100
  %i.aao = load ptr, ptr %i.bj, align 8, !tbaa !99
  %i.aap = ptrtoint ptr %i.aan to i64
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  %i.aas = lshr exact i64 %i.aar, 1
  %i.aat = and i64 %i.aas, 17179869180
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qx, i8 0, i64 %i.aat, i1 false)
  %i.aau = load ptr, ptr %i.gr, align 8, !tbaa !135
  %i.aav = load ptr, ptr %i.gq, align 8, !tbaa !138 ; 2 uses
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax                 ; 3 uses
  %i.aaz = and i64 %i.aay, 17179869180
  %.not732 = icmp eq i64 %i.aaz, 0
  br i1 %.not732, label %.preheader, label %.lr.ph708

.lr.ph708:                                        ; preds = %._crit_edge705
  %i.aba = lshr exact i64 %i.aay, 2
  %i.abb = ashr exact i64 %i.aay, 2
  %wide.trip.count907 = and i64 %i.aba, 4294967295
  br label %bb.cq

.preheader:                                       ; preds = %_ZN4core5arrayIjEixEj.exit271, %._crit_edge705
  %i.abc = load ptr, ptr %i.qp, align 8, !tbaa !100 ; 2 uses
  %i.abd = load ptr, ptr %i.bj, align 8, !tbaa !99 ; 2 uses
  %i.abe = ptrtoint ptr %i.abc to i64
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = sub i64 %i.abe, %i.abf                 ; 2 uses
  %i.abh = and i64 %i.abg, 34359738360
  %.not197709 = icmp eq i64 %i.abh, 0
  br i1 %.not197709, label %._crit_edge712, label %.lr.ph711

bb.cq:                                            ; preds = %.lr.ph708, %_ZN4core5arrayIjEixEj.exit271
  %indvars.iv903 = phi i64 [ 0, %.lr.ph708 ], [ %indvars.iv.next904, %_ZN4core5arrayIjEixEj.exit271 ] ; 3 uses
  %exitcond906.not = icmp eq i64 %indvars.iv903, %i.abb
  br i1 %exitcond906.not, label %bb.cr, label %_ZN4core5arrayIjEixEj.exit271

bb.cr:                                            ; preds = %bb.cq
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit271:                    ; preds = %bb.cq
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv903
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !137
  %i.abk = zext i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.abk ; 2 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !137
  %i.abn = add i32 %i.abm, 1
  store i32 %i.abn, ptr %i.abl, align 4, !tbaa !137
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond908.not = icmp eq i64 %indvars.iv.next904, %wide.trip.count907
  br i1 %exitcond908.not, label %.preheader, label %bb.cq, !llvm.loop !241

.lr.ph711:                                        ; preds = %.preheader, %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.abo = phi ptr [ %i.adb, %_ZNSt6vectorItSaItEE7reserveEm.exit ], [ %i.abd, %.preheader ] ; 2 uses
  %i.abp = phi ptr [ %i.adc, %_ZNSt6vectorItSaItEE7reserveEm.exit ], [ %i.abc, %.preheader ]
  %i.abq = phi i64 [ %i.adg, %_ZNSt6vectorItSaItEE7reserveEm.exit ], [ %i.abg, %.preheader ]
  %.9710 = phi i32 [ %i.add, %_ZNSt6vectorItSaItEE7reserveEm.exit ], [ 0, %.preheader ] ; 2 uses
  %i.abr = zext i32 %.9710 to i64                 ; 3 uses
  %i.abs = ashr exact i64 %i.abq, 3
  %i.abt = icmp ugt i64 %i.abs, %i.abr
  br i1 %i.abt, label %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit272, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph711
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj) #31
  unreachable

_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit272: ; preds = %.lr.ph711
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.abr
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !102
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !269 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 32 ; 3 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.abr
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !137
  %i.acb = zext i32 %i.aca to i64                 ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abx, i64 48 ; 3 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !157
  %i.ace = load ptr, ptr %i.aby, align 8, !tbaa !158
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = ptrtoint ptr %i.ace to i64             ; 2 uses
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = ashr exact i64 %i.ach, 1
  %i.acj = icmp ult i64 %i.aci, %i.acb
  br i1 %i.acj, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit272
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abx, i64 40 ; 3 uses
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !159
  %i.acm = ptrtoint ptr %i.acl to i64
  %i.acn = sub i64 %i.acm, %i.acg
  %i.aco = shl nuw nsw i64 %i.acb, 1
  %i.acp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aco) #30
          to label %.noexc274 unwind label %.loopexit415 ; 4 uses

.noexc274:                                        ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.acq = load ptr, ptr %i.aby, align 8, !tbaa !158 ; 4 uses
  %i.acr = load ptr, ptr %i.ack, align 8, !tbaa !159
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = ptrtoint ptr %i.acq to i64             ; 2 uses
  %i.acu = sub i64 %i.acs, %i.act                 ; 2 uses
  %i.acv = icmp sgt i64 %i.acu, 0
  br i1 %i.acv, label %bb.ct, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.ct:                                            ; preds = %.noexc274
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.acp, ptr align 2 %i.acq, i64 %i.acu, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.ct, %.noexc274
  %.not.i8.i273 = icmp eq ptr %i.acq, null
  br i1 %.not.i8.i273, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.acw = load ptr, ptr %i.acc, align 8, !tbaa !157
  %i.acx = ptrtoint ptr %i.acw to i64
  %i.acy = sub i64 %i.acx, %i.act
  call void @_ZdlPvm(ptr noundef nonnull %i.acq, i64 noundef %i.acy) #29
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.cu, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.acp, ptr %i.aby, align 8, !tbaa !158
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acn
  store ptr %i.acz, ptr %i.ack, align 8, !tbaa !159
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %i.acp, i64 %i.acb
  store ptr %i.ada, ptr %i.acc, align 8, !tbaa !157
  %.pre934 = load ptr, ptr %i.qp, align 8, !tbaa !100
  %.pre935 = load ptr, ptr %i.bj, align 8, !tbaa !99
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit272
  %i.adb = phi ptr [ %.pre935, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i ], [ %i.abo, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit272 ] ; 2 uses
  %i.adc = phi ptr [ %.pre934, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i ], [ %i.abp, %_ZN4core5arrayIPN5scene15SSkinMeshBufferEEixEj.exit272 ] ; 2 uses
  %i.add = add i32 %.9710, 1                      ; 2 uses
  %i.ade = ptrtoint ptr %i.adc to i64
  %i.adf = ptrtoint ptr %i.adb to i64
  %i.adg = sub i64 %i.ade, %i.adf                 ; 2 uses
  %i.adh = lshr exact i64 %i.adg, 3
  %i.adi = trunc i64 %i.adh to i32
  %.not197 = icmp eq i32 %i.add, %i.adi
  br i1 %.not197, label %._crit_edge712, label %.lr.ph711, !llvm.loop !242

._crit_edge712:                                   ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit, %.preheader
  call void @_ZdaPv(ptr noundef nonnull %i.qx) #29
  %i.adj = load ptr, ptr %i.gr, align 8, !tbaa !135
  %i.adk = load ptr, ptr %i.gq, align 8, !tbaa !138 ; 2 uses
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = ptrtoint ptr %i.adk to i64
  %i.adn = sub i64 %i.adl, %i.adm                 ; 2 uses
  %i.ado = and i64 %i.adn, 17179869180
  %.not733 = icmp eq i64 %i.ado, 0
  br i1 %.not733, label %.loopexit414, label %.lr.ph716

.lr.ph716:                                        ; preds = %._crit_edge712
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ai, i64 176 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ai, i64 184 ; 3 uses
  %i.adr = ptrtoint ptr %.sroa.14.11126 to i64
  %i.ads = ptrtoint ptr %.sroa.0358.31125 to i64
  %i.adt = sub i64 %i.adr, %i.ads
  %i.adu = ashr exact i64 %i.adt, 2               ; 3 uses
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph716, %_ZNSt6vectorItSaItEE9push_backEOt.exit.2
  %indvars.iv912 = phi i64 [ 0, %.lr.ph716 ], [ %indvars.iv.next913, %_ZNSt6vectorItSaItEE9push_backEOt.exit.2 ] ; 4 uses
  %i.adv = phi i64 [ %i.adn, %.lr.ph716 ], [ %i.ajd, %_ZNSt6vectorItSaItEE9push_backEOt.exit.2 ]
  %i.adw = phi ptr [ %i.adk, %.lr.ph716 ], [ %i.aja, %_ZNSt6vectorItSaItEE9push_backEOt.exit.2 ]
  %i.adx = ashr exact i64 %i.adv, 2
  %i.ady = icmp ugt i64 %i.adx, %indvars.iv912
  br i1 %i.ady, label %_ZN4core5arrayIjEixEj.exit275, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @__assert_fail(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #31
  unreachable

_ZN4core5arrayIjEixEj.exit275:                    ; preds = %bb.cv
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %indvars.iv912
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !137
  %i.aeb = zext i32 %i.aea to i64                 ; 2 uses
  %i.aec = load ptr, ptr %i.qp, align 8, !tbaa !100
  %i.aed = load ptr, ptr %i.bj, align 8, !tbaa !99 ; 2 uses
  %i.aee = ptrtoint ptr %i.aec to i64
  %i.aef = ptrtoint ptr %i.aed to i64
  %i.aeg = sub i64 %i.aee, %i.aef
end_hunk_0
begin_hunk_1_@_ZN5scene16CXMeshFileLoader19parseDataObjectMeshERNS0_6SXMeshE:bb.a
  %i.ol = add i16 %.0186568, 4
  br label %bb.dx

bb.du:                                            ; preds = %bb.di
  %i.om = add i16 %.0186568, 4
  br label %bb.dx

bb.dv:                                            ; preds = %bb.di
  %i.on = add i16 %.0186568, 4
  br label %bb.dx

bb.dw:                                            ; preds = %bb.di
  %i.oo = add i16 %.0186568, 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di
  %.1187 = phi i16 [ %.0186568, %bb.di ], [ %i.ob, %bb.dj ], [ %i.oc, %bb.dk ], [ %i.od, %bb.dl ], [ %i.oe, %bb.dm ], [ %i.of, %bb.dn ], [ %i.og, %bb.do ], [ %i.oh, %bb.dp ], [ %i.oi, %bb.dq ], [ %i.oj, %bb.dr ], [ %i.ok, %bb.ds ], [ %i.ol, %bb.dt ], [ %i.om, %bb.du ], [ %i.on, %bb.dv ], [ %i.oo, %bb.dw ] ; 2 uses
  %i.op = add nuw i32 %.0188567, 1                ; 2 uses
  %exitcond682.not = icmp eq i32 %i.op, %i.nt
  br i1 %exitcond682.not, label %._crit_edge577.loopexit, label %.lr.ph576, !llvm.loop !289

._crit_edge577.loopexit:                          ; preds = %bb.dx
  %i.oq = icmp eq i16 %.1, 1
  %i.or = icmp eq i16 %.1179, 2
  %i.os = icmp eq i16 %.1177, 1
  %i.ot = zext i16 %.1187 to i64
  br label %._crit_edge577

._crit_edge577:                                   ; preds = %._crit_edge577.loopexit, %bb.dd
  %.0186.lcssa = phi i64 [ 0, %bb.dd ], [ %i.ot, %._crit_edge577.loopexit ]
  %.0184.lcssa = phi i16 [ -1, %bb.dd ], [ %.1185, %._crit_edge577.loopexit ] ; 2 uses
  %.0182.lcssa = phi i16 [ -1, %bb.dd ], [ %.1183, %._crit_edge577.loopexit ] ; 2 uses
  %.0180.lcssa = phi i16 [ -1, %bb.dd ], [ %.1181, %._crit_edge577.loopexit ] ; 2 uses
  %.0178.lcssa = phi i1 [ false, %bb.dd ], [ %i.or, %._crit_edge577.loopexit ]
  %.0176.lcssa = phi i1 [ false, %bb.dd ], [ %i.os, %._crit_edge577.loopexit ]
  %.0175.lcssa = phi i1 [ false, %bb.dd ], [ %i.oq, %._crit_edge577.loopexit ]
  %i.ou = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 2 uses
  %i.ov = zext i32 %i.ou to i64                   ; 2 uses
  %i.ow = shl nuw nsw i64 %i.ov, 2
  %i.ox = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ow) #30
          to label %.preheader unwind label %.loopexit833 ; 4 uses

.preheader:                                       ; preds = %._crit_edge577
  %.not599 = icmp eq i32 %i.ou, 0
  br i1 %.not599, label %._crit_edge587, label %.lr.ph586

.lr.ph586:                                        ; preds = %.preheader, %.lr.ph586
  %indvars.iv683 = phi i64 [ %indvars.iv.next684, %.lr.ph586 ], [ 0, %.preheader ] ; 2 uses
  %i.oy = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv683
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !137
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683, 1 ; 2 uses
  %exitcond687.not = icmp eq i64 %indvars.iv.next684, %i.ov
  br i1 %exitcond687.not, label %._crit_edge587, label %.lr.ph586, !llvm.loop !290

.loopexit833:                                     ; preds = %._crit_edge577, %._crit_edge587, %bb.dz, %bb.ed
  %lpad.loopexit835 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp834:                            ; preds = %bb.ef
  %lpad.loopexit.split-lp836 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge587:                                   ; preds = %.lr.ph586, %.preheader
  %i.pa = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.dy unwind label %.loopexit833

bb.dy:                                            ; preds = %._crit_edge587
  br i1 %i.pa, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.46, i32 noundef 2)
          to label %bb.ea unwind label %.loopexit833

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.pb = load i32, ptr %i.lo, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.pb)
  %i.pc = load ptr, ptr %10, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.pc, i32 noundef 2)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.pd = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.ly
  br i1 %i.pe, label %_ZN4core6stringIcED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345: ; preds = %bb.eb
  %i.pf = load i64, ptr %i.ly, align 8, !tbaa !27
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #29
  br label %_ZN4core6stringIcED2Ev.exit347

_ZN4core6stringIcED2Ev.exit347:                   ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.ph = landingpad { ptr, i32 }
          cleanup
  %i.pi = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ly
  br i1 %i.pj, label %_ZN4core6stringIcED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348: ; preds = %bb.ec
  %i.pk = load i64, ptr %i.ly, align 8, !tbaa !27
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #29
  br label %_ZN4core6stringIcED2Ev.exit350

_ZN4core6stringIcED2Ev.exit350:                   ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit.split-lp

bb.ed:                                            ; preds = %_ZN4core6stringIcED2Ev.exit347, %bb.dy
  %i.pm = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20checkForClosingBraceEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.ee unwind label %.loopexit833

bb.ee:                                            ; preds = %bb.ed
  br i1 %i.pm, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.47, i32 noundef 2)
          to label %bb.eg unwind label %.loopexit.split-lp834

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.pn = load i32, ptr %i.lo, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.pn)
  %i.po = load ptr, ptr %11, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.po, i32 noundef 2)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pp = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.lz
  br i1 %i.pq, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i351: ; preds = %bb.eh
  %i.pr = load i64, ptr %i.lz, align 8, !tbaa !27
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #29
  br label %.thread

.thread:                                          ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZdaPv(ptr noundef nonnull %i.ox) #29
  br label %.loopexit827.sink.split

bb.ei:                                            ; preds = %bb.eg
  %i.pt = landingpad { ptr, i32 }
          cleanup
  %i.pu = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.lz
  br i1 %i.pv, label %_ZN4core6stringIcED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354: ; preds = %bb.ei
  %i.pw = load i64, ptr %i.lz, align 8, !tbaa !27
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #29
  br label %_ZN4core6stringIcED2Ev.exit356

_ZN4core6stringIcED2Ev.exit356:                   ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.loopexit.split-lp

bb.ej:                                            ; preds = %bb.ee
  %i.py = icmp ne i16 %.0180.lcssa, -1
  %or.cond = select i1 %i.py, i1 %.0175.lcssa, i1 false ; 2 uses
  br i1 %or.cond, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.pz = load ptr, ptr %i.x, align 8, !tbaa !142
  %i.qa = load ptr, ptr %i.v, align 8, !tbaa !143
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = sdiv exact i64 %i.qd, 40
  %i.qf = trunc i64 %i.qe to i32
  invoke void @_ZN4core5arrayINS_8vector2dIfEEE10reallocateEjb(ptr noundef nonnull align 8 dereferenceable(25) %i.lr, i32 noundef %i.qf, i1 noundef zeroext true)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ek
  %lpad.loopexit454 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.es
  %lpad.loopexit.split-lp455 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.qg = load ptr, ptr %i.x, align 8, !tbaa !142 ; 3 uses
  %i.qh = load ptr, ptr %i.v, align 8, !tbaa !143 ; 3 uses
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj
  %i.ql = sdiv exact i64 %i.qk, 40
  %i.qm = and i64 %i.ql, 4294967295
  %.not600 = icmp eq i64 %i.qm, 0
  br i1 %.not600, label %._crit_edge592, label %.lr.ph591

.lr.ph591:                                        ; preds = %bb.el
  %i.qn = icmp ne i16 %.0184.lcssa, -1
  %or.cond9 = select i1 %i.qn, i1 %.0178.lcssa, i1 false
  %i.qo = sext i16 %.0184.lcssa to i64
  %i.qp = icmp ne i16 %.0182.lcssa, -1
  %or.cond12 = select i1 %i.qp, i1 %.0176.lcssa, i1 false
  %i.qq = sext i16 %.0182.lcssa to i64
  %i.qr = sext i16 %.0180.lcssa to i64
  br label %bb.em

bb.em:                                            ; preds = %.lr.ph591, %bb.eu
  %.pre697701 = phi ptr [ %i.qh, %.lr.ph591 ], [ %.pre697702, %bb.eu ] ; 2 uses
  %.pre696698 = phi ptr [ %i.qg, %.lr.ph591 ], [ %.pre696699, %bb.eu ] ; 2 uses
  %i.qs = phi ptr [ %i.qh, %.lr.ph591 ], [ %i.sg, %bb.eu ] ; 3 uses
  %i.qt = phi ptr [ %i.qg, %.lr.ph591 ], [ %i.sh, %bb.eu ]
  %indvars.iv688 = phi i64 [ 0, %.lr.ph591 ], [ %indvars.iv.next689, %bb.eu ] ; 3 uses
  %.0174589 = phi ptr [ %i.ox, %.lr.ph591 ], [ %i.si, %bb.eu ] ; 4 uses
  br i1 %or.cond9, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit357, label %bb.en

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit357:   ; preds = %bb.em
  %i.qu = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %indvars.iv688 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  %i.qw = getelementptr inbounds i8, ptr %.0174589, i64 %i.qo ; 2 uses
  %i.qx = load <2 x float>, ptr %i.qw, align 4, !tbaa !90
  store <2 x float> %i.qx, ptr %i.qv, align 4, !tbaa !90
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !182
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  store float %i.qz, ptr %i.ra, align 4, !tbaa !182
  br label %bb.en

bb.en:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit357, %bb.em
  br i1 %or.cond12, label %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit358, label %bb.eo

_ZN4core5arrayIN5video9S3DVertexEEixEj.exit358:   ; preds = %bb.en
  %i.rb = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %indvars.iv688
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 28
  %i.rd = getelementptr inbounds i8, ptr %.0174589, i64 %i.qq
  %i.re = load <2 x float>, ptr %i.rd, align 4, !tbaa !90
  store <2 x float> %i.re, ptr %i.rc, align 4, !tbaa !90
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN4core5arrayIN5video9S3DVertexEEixEj.exit358, %bb.en
  br i1 %or.cond, label %bb.ep, label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  %i.rf = getelementptr inbounds i8, ptr %.0174589, i64 %i.qr ; 2 uses
  %i.rg = load ptr, ptr %i.ls, align 8, !tbaa !149 ; 6 uses
  %i.rh = load ptr, ptr %i.lt, align 8, !tbaa !162
  %.not.i.i359 = icmp eq ptr %i.rg, %i.rh
  br i1 %.not.i.i359, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ri = load i64, ptr %i.rf, align 4, !tbaa !90
  store i64 %i.ri, ptr %i.rg, align 4, !tbaa !90
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %i.rj, ptr %i.ls, align 8, !tbaa !149
  br label %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit

bb.er:                                            ; preds = %bb.ep
  %i.rk = load ptr, ptr %i.lr, align 8, !tbaa !150 ; 5 uses
  %i.rl = ptrtoint ptr %i.rg to i64
  %i.rm = ptrtoint ptr %i.rk to i64               ; 2 uses
  %i.rn = sub i64 %i.rl, %i.rm                    ; 3 uses
  %i.ro = icmp eq i64 %i.rn, 9223372036854775800
  br i1 %i.ro, label %bb.es, label %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #32
          to label %.noexc360 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc360:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.er
  %i.rp = ashr exact i64 %i.rn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rp, i64 1)
  %i.rq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rp ; 2 uses
  %i.rr = icmp ult i64 %i.rq, %i.rp
  %i.rs = call i64 @llvm.umin.i64(i64 %i.rq, i64 1152921504606846975)
  %i.rt = select i1 %i.rr, i64 1152921504606846975, i64 %i.rs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.rt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ru = shl nuw nsw i64 %i.rt, 3
  %i.rv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ru) #30
          to label %.noexc361 unwind label %.loopexit ; 5 uses

.noexc361:                                        ; preds = %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rn
  %i.rx = load i64, ptr %i.rf, align 4, !tbaa !90
  store i64 %i.rx, ptr %i.rw, align 4, !tbaa !90
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.rk, %i.rg
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc361, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i.i ], [ %i.rv, %.noexc361 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i.i ], [ %i.rk, %.noexc361 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.ry = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !90, !alias.scope !301, !noalias !300
  store i64 %i.ry, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !90, !alias.scope !300, !noalias !301
  %i.rz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rz, %i.rg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc361
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.rv, %.noexc361 ], [ %i.sa, %.lr.ph.i.i.i.i.i.i ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.rk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.sc = load ptr, ptr %i.lt, align 8, !tbaa !162
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = sub i64 %i.sd, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.se) #29
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.et, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.rv, ptr %i.lr, align 8, !tbaa !150
  store ptr %i.sb, ptr %i.ls, align 8, !tbaa !149
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.rt
  store ptr %i.sf, ptr %i.lt, align 8, !tbaa !162
  %.pre696.pre = load ptr, ptr %i.x, align 8, !tbaa !142
  %.pre697.pre = load ptr, ptr %i.v, align 8, !tbaa !143
  br label %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit

_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit: ; preds = %bb.eq, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre697 = phi ptr [ %.pre697701, %bb.eq ], [ %.pre697.pre, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.pre696 = phi ptr [ %.pre696698, %bb.eq ], [ %.pre696.pre, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  store i8 0, ptr %i.lu, align 8, !tbaa !174
  br label %bb.eu

bb.eu:                                            ; preds = %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit, %bb.eo
  %.pre697702 = phi ptr [ %.pre697, %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit ], [ %.pre697701, %bb.eo ]
  %.pre696699 = phi ptr [ %.pre696, %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit ], [ %.pre696698, %bb.eo ]
  %i.sg = phi ptr [ %.pre697, %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit ], [ %i.qs, %bb.eo ] ; 2 uses
  %i.sh = phi ptr [ %.pre696, %_ZN4core5arrayINS_8vector2dIfEEE9push_backERKS2_.exit ], [ %i.qt, %bb.eo ] ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.0174589, i64 %.0186.lcssa
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 2 uses
  %i.sj = ptrtoint ptr %i.sh to i64
  %i.sk = ptrtoint ptr %i.sg to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = sdiv exact i64 %i.sl, 40
  %i.sn = and i64 %i.sm, 4294967295
  %i.so = icmp samesign ult i64 %indvars.iv.next689, %i.sn
  br i1 %i.so, label %bb.em, label %._crit_edge592, !llvm.loop !294

._crit_edge592:                                   ; preds = %bb.eu, %bb.el
  call void @_ZdaPv(ptr noundef nonnull %i.ox) #29
  br label %.critedge273

bb.ev:                                            ; preds = %bb.cw
  %i.sp = call noundef i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mr, ptr noundef nonnull dereferenceable(8) @.str.48) #33
  %.not5.i362 = icmp eq i32 %i.sp, 0
  br i1 %.not5.i362, label %bb.ew, label %bb.fw

bb.ew:                                            ; preds = %bb.ev
  %i.sq = invoke noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20readHeadOfDataObjectEPN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef null)
          to label %bb.ex unwind label %.loopexit823

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.sq, label %bb.fc, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.49, i32 noundef 2)
          to label %bb.ez unwind label %.loopexit.split-lp824

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.sr = load i32, ptr %i.lo, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.sr)
  %i.ss = load ptr, ptr %12, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ss, i32 noundef 2)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.st = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.lp
  br i1 %i.su, label %_ZN4core6stringIcED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364: ; preds = %bb.fa
  %i.sv = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #29
  br label %_ZN4core6stringIcED2Ev.exit366

_ZN4core6stringIcED2Ev.exit366:                   ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.loopexit827.sink.split

bb.fb:                                            ; preds = %bb.ez
  %i.sx = landingpad { ptr, i32 }
          cleanup
  %i.sy = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.lp
  br i1 %i.sz, label %_ZN4core6stringIcED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367: ; preds = %bb.fb
  %i.ta = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #29
  br label %_ZN4core6stringIcED2Ev.exit369

_ZN4core6stringIcED2Ev.exit369:                   ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.loopexit.split-lp

bb.fc:                                            ; preds = %bb.ex
  %i.tc = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 2 uses
  %i.td = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 2 uses
  %i.te = zext i32 %i.td to i64                   ; 2 uses
  %i.tf = shl nuw nsw i64 %i.te, 2
  %i.tg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tf) #30
          to label %.preheader453 unwind label %.loopexit828 ; 3 uses

.preheader453:                                    ; preds = %bb.fc
  %.not596 = icmp eq i32 %i.td, 0
  br i1 %.not596, label %._crit_edge562, label %.lr.ph561

._crit_edge562:                                   ; preds = %.lr.ph561, %.preheader453
  %i.th = and i32 %i.tc, 258
  %.not247 = icmp eq i32 %i.th, 0
  br i1 %.not247, label %.loopexit447, label %bb.fd

.loopexit828:                                     ; preds = %bb.fc, %bb.fd, %.loopexit447, %bb.fm, %bb.fq
  %lpad.loopexit830 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp829:                            ; preds = %bb.fs
  %lpad.loopexit.split-lp831 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph561:                                        ; preds = %.preheader453, %.lr.ph561
  %indvars.iv677 = phi i64 [ %indvars.iv.next678, %.lr.ph561 ], [ 0, %.preheader453 ] ; 2 uses
  %i.ti = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv677
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !137
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %i.te
end_hunk_1
