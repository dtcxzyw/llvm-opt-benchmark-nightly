inline.NumInlined: 973
inline.NumDeleted: 502
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3igl7readMSHIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S3_S3_S3_EEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_15PlainObjectBaseIT_EERNSE_IT0_EERNSE_IT1_EERNSE_IT2_EERNSE_IT3_EERSt6vectorISB_SaISB_EERSU_IT4_SaISY_EESX_RSU_IT5_SaIS12_EERSU_IT6_SaIS16_EE:bb.a
.lr.ph.i.i.i.i176:                                ; preds = %bb.al, %.lr.ph.i.i.i.i176
  %.05.i.i.i.i177 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i176 ], [ %i.hn, %bb.al ] ; 2 uses
  %i.ho = load ptr, ptr %.05.i.i.i.i177, align 8, !tbaa !14
  call void @free(ptr noundef %i.ho) #23
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i177, i64 24 ; 2 uses
  %.not.i.i.i.i178 = icmp eq ptr %i.hp, %i.he
  br i1 %.not.i.i.i.i178, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i179, label %.lr.ph.i.i.i.i176, !llvm.loop !18

_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i179: ; preds = %.lr.ph.i.i.i.i176
  store ptr %i.hn, ptr %i.hd, align 8, !tbaa !13
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE6resizeEm.exit181

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE6resizeEm.exit181: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i179
  %i.hq = load ptr, ptr %i.gd, align 8, !tbaa !39
  %i.hr = load ptr, ptr %i.gc, align 8, !tbaa !42
  %.not290 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not290, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE6resizeEm.exit181
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 280 ; 2 uses
  br label %bb.ao

._crit_edge272:                                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit189, %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE6resizeEm.exit181
  %i.ht = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.preheader247 unwind label %bb.an ; 0 uses

.preheader247:                                    ; preds = %._crit_edge272
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !84 ; 2 uses
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !54 ; 2 uses
  %.not291 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not291, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %.preheader247
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 280 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.as

bb.am:                                            ; preds = %.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.id = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

bb.an:                                            ; preds = %bb.aj, %bb.ag, %._crit_edge272
  %i.ie = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

bb.ao:                                            ; preds = %.lr.ph271, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit189
  %.0111270 = phi i64 [ 0, %.lr.ph271 ], [ %i.ja, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit189 ] ; 5 uses
  %i.if = load ptr, ptr %9, align 8, !tbaa !9
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %.0111270
  %i.ih = load ptr, ptr %i.hs, align 8, !tbaa !54
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.0111270
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !56 ; 2 uses
  %i.ik = sext i32 %i.ij to i64                   ; 3 uses
  %i.il = icmp eq i32 %i.ij, 0
  %or.cond.i.i = or i1 %i.fk, %i.il
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.im = sdiv i64 9223372036854775807, %i.ik
  %i.in = icmp sgt i64 %.0114236240, %i.im
  br i1 %i.in, label %.invoke354, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182

.invoke354:                                       ; preds = %bb.ap, %bb.aq
  %i.io = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.io, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont355 unwind label %.loopexit.split-lp249

.cont355:                                         ; preds = %.invoke354
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182: ; preds = %bb.ap, %bb.ao
  %i.ip = mul nsw i64 %.0114236240, %i.ik
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i64 noundef %i.ip, i64 noundef %.0114236240, i64 noundef %i.ik)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %.loopexit248

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182
  %i.iq = load ptr, ptr %10, align 8, !tbaa !9
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.0111270
  %i.is = load ptr, ptr %i.hs, align 8, !tbaa !54
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.0111270
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !56 ; 2 uses
  %i.iv = sext i32 %i.iu to i64                   ; 3 uses
  %i.iw = icmp eq i32 %i.iu, 0
  %or.cond.i.i185 = or i1 %i.fm, %i.iw
  br i1 %or.cond.i.i185, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186, label %bb.aq

bb.aq:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ix = sdiv i64 9223372036854775807, %i.iv
  %i.iy = icmp sgt i64 %.0113241, %i.ix
  br i1 %i.iy, label %.invoke354, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186: ; preds = %bb.aq, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.iz = mul nsw i64 %.0113241, %i.iv
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i64 noundef %i.iz, i64 noundef %.0113241, i64 noundef %i.iv)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit189 unwind label %.loopexit248

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit189: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186
  %i.ja = add nuw i64 %.0111270, 1                ; 2 uses
  %i.jb = load ptr, ptr %i.gd, align 8, !tbaa !39
  %i.jc = load ptr, ptr %i.gc, align 8, !tbaa !42
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 24
  %i.jh = icmp ult i64 %i.ja, %i.jg
  br i1 %i.jh, label %bb.ao, label %._crit_edge272, !llvm.loop !85

.loopexit248:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

.loopexit.split-lp249:                            ; preds = %.invoke354
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

._crit_edge288:                                   ; preds = %_ZNSolsEPFRSoS_E.exit, %.preheader247
  %i.ji = load ptr, ptr %i.ap, align 8, !tbaa !48
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.ji)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %._crit_edge288
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #29
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %._crit_edge288
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN3igl9MshLoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bi

bb.as:                                            ; preds = %.lr.ph287, %_ZNSolsEPFRSoS_E.exit
  %i.jl = phi ptr [ %i.hx, %.lr.ph287 ], [ %i.rd, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %i.jm = phi ptr [ %i.hw, %.lr.ph287 ], [ %i.re, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %.0107286 = phi i64 [ 0, %.lr.ph287 ], [ %i.rj, %_ZNSolsEPFRSoS_E.exit ] ; 11 uses
  %.0108285 = phi i32 [ 0, %.lr.ph287 ], [ %.1, %_ZNSolsEPFRSoS_E.exit ] ; 4 uses
  %.0109284 = phi i32 [ 0, %.lr.ph287 ], [ %.1110, %_ZNSolsEPFRSoS_E.exit ] ; 4 uses
  %.0112283 = phi i64 [ 0, %.lr.ph287 ], [ %i.ri, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %i.jn = shl i64 %.0107286, 3
  %i.jo = shl i64 %.0107286, 3
  %i.jp = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.0107286
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !56
  switch i32 %i.jr, label %bb.av [
    i32 2, label %bb.at
    i32 4, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.js = load ptr, ptr %i.hy, align 8, !tbaa !54
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %.0112283 ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !56
  %i.jv = sext i32 %.0109284 to i64               ; 4 uses
  %i.jw = load ptr, ptr %2, align 8, !tbaa !86
  %i.jx = getelementptr [4 x i8], ptr %i.jw, i64 %i.jv ; 3 uses
  store i32 %i.ju, ptr %i.jx, align 4, !tbaa !56
  %i.jy = getelementptr i8, ptr %i.jt, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !56
  %i.ka = load i64, ptr %i.ic, align 8, !tbaa !88 ; 2 uses
  %i.kb = getelementptr [4 x i8], ptr %i.jx, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !56
  %i.kc = getelementptr i8, ptr %i.jt, i64 8
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !56
  %.idx245 = shl i64 %i.ka, 3
  %i.ke = getelementptr i8, ptr %i.jx, i64 %.idx245
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !56
  %i.kf = load ptr, ptr %i.ia, align 8, !tbaa !89
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !54
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.0107286
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !56
  %i.kk = load ptr, ptr %4, align 8, !tbaa !83
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.jv
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !56
  %i.km = load ptr, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %i.kn = load ptr, ptr %i.gc, align 8, !tbaa !42 ; 3 uses
  %.not294 = icmp eq ptr %i.km, %i.kn
  br i1 %.not294, label %._crit_edge282, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.at
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 24
  %i.ks = load ptr, ptr %i.ib, align 8, !tbaa !54
  %i.kt = shl nsw i64 %i.jv, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge280
  %.0106281 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.mb, %._crit_edge280 ] ; 4 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.0106281
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !56 ; 4 uses
  %i.kw = sext i32 %i.kv to i64                   ; 7 uses
  %.not295 = icmp eq i32 %i.kv, 0
  br i1 %.not295, label %._crit_edge280, label %.lr.ph279

.lr.ph279:                                        ; preds = %.preheader
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.kn, i64 %.0106281
  %i.ky = mul i64 %.0107286, %i.kw
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !32 ; 2 uses
  %i.la = getelementptr [8 x i8], ptr %i.kz, i64 %i.ky ; 6 uses
  %i.lb = load ptr, ptr %9, align 8, !tbaa !9
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %.0106281 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !14 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !57 ; 6 uses
  %i.lg = getelementptr [8 x i8], ptr %i.ld, i64 %i.jv ; 6 uses
  %min.iters.check366 = icmp ugt i32 %i.kv, 9
  %ident.check363.not = icmp eq i64 %i.lf, 1
  %or.cond393 = select i1 %min.iters.check366, i1 %ident.check363.not, i1 false
  br i1 %or.cond393, label %vector.memcheck364, label %scalar.ph365.preheader

vector.memcheck364:                               ; preds = %.lr.ph279
  %i.lh = ptrtoaddr ptr %i.ld to i64
  %i.li = ptrtoaddr ptr %i.kz to i64
  %i.lj = add i64 %i.kt, %i.lh
  %i.lk = mul i64 %i.jo, %i.kw
  %i.ll = add i64 %i.lk, %i.li
  %i.lm = sub i64 %i.ll, %i.lj
  %diff.check = icmp ugt i64 %i.lm, -32
  br i1 %diff.check, label %scalar.ph365.preheader, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck364
  %n.vec368 = and i64 %i.kw, -4                   ; 3 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next373, %vector.body369 ] ; 3 uses
  %i.ln = getelementptr [8 x i8], ptr %i.la, i64 %index370 ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 16
  %wide.load371 = load <2 x double>, ptr %i.ln, align 8, !tbaa !61
  %wide.load372 = load <2 x double>, ptr %i.lo, align 8, !tbaa !61
  %i.lp = getelementptr [8 x i8], ptr %i.lg, i64 %index370 ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 16
  store <2 x double> %wide.load371, ptr %i.lp, align 8, !tbaa !61
  store <2 x double> %wide.load372, ptr %i.lq, align 8, !tbaa !61
  %index.next373 = add nuw i64 %index370, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next373, %n.vec368
  br i1 %i.lr, label %middle.block374, label %vector.body369, !llvm.loop !92

middle.block374:                                  ; preds = %vector.body369
  %cmp.n375 = icmp eq i64 %n.vec368, %i.kw
  br i1 %cmp.n375, label %._crit_edge280, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %vector.memcheck364, %.lr.ph279, %middle.block374
  %.0105278.ph = phi i64 [ 0, %vector.memcheck364 ], [ 0, %.lr.ph279 ], [ %n.vec368, %middle.block374 ] ; 3 uses
  %xtraiter401 = and i64 %i.kw, 3
  %i.ls = and i32 %i.kv, 3
  %lcmp.mod402.not = icmp eq i32 %i.ls, 0
  br i1 %lcmp.mod402.not, label %scalar.ph365.prol.loopexit, label %scalar.ph365.prol

scalar.ph365.prol:                                ; preds = %scalar.ph365.preheader, %scalar.ph365.prol
  %.0105278.prol = phi i64 [ %i.lx, %scalar.ph365.prol ], [ %.0105278.ph, %scalar.ph365.preheader ] ; 3 uses
  %prol.iter403 = phi i64 [ %prol.iter403.next, %scalar.ph365.prol ], [ 0, %scalar.ph365.preheader ]
  %i.lt = getelementptr [8 x i8], ptr %i.la, i64 %.0105278.prol
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !61
  %i.lv = mul nsw i64 %i.lf, %.0105278.prol
  %i.lw = getelementptr [8 x i8], ptr %i.lg, i64 %i.lv
  store double %i.lu, ptr %i.lw, align 8, !tbaa !61
  %i.lx = add nuw i64 %.0105278.prol, 1           ; 2 uses
  %prol.iter403.next = add i64 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i64 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %scalar.ph365.prol.loopexit, label %scalar.ph365.prol, !llvm.loop !93

scalar.ph365.prol.loopexit:                       ; preds = %scalar.ph365.prol, %scalar.ph365.preheader
  %.0105278.unr = phi i64 [ %.0105278.ph, %scalar.ph365.preheader ], [ %i.lx, %scalar.ph365.prol ]
  %i.ly = sub nsw i64 %.0105278.ph, %i.kw
  %i.lz = icmp ugt i64 %i.ly, -4
  br i1 %i.lz, label %._crit_edge280, label %scalar.ph365

._crit_edge282:                                   ; preds = %._crit_edge280, %bb.at
  %i.ma = add nsw i32 %.0109284, 1
  br label %_ZNSolsEPFRSoS_E.exit

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192, %bb.av, %bb.aw, %bb.ba, %.noexc199, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc201
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

._crit_edge280:                                   ; preds = %scalar.ph365.prol.loopexit, %scalar.ph365, %middle.block374, %.preheader
  %i.mb = add nuw i64 %.0106281, 1                ; 2 uses
  %exitcond302.not = icmp eq i64 %i.mb, %i.kr
  br i1 %exitcond302.not, label %._crit_edge282, label %.preheader, !llvm.loop !94

scalar.ph365:                                     ; preds = %scalar.ph365.prol.loopexit, %scalar.ph365
  %.0105278 = phi i64 [ %i.mv, %scalar.ph365 ], [ %.0105278.unr, %scalar.ph365.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr [8 x i8], ptr %i.la, i64 %.0105278
  %i.md = load double, ptr %i.mc, align 8, !tbaa !61
  %i.me = mul nsw i64 %i.lf, %.0105278
  %i.mf = getelementptr [8 x i8], ptr %i.lg, i64 %i.me
  store double %i.md, ptr %i.mf, align 8, !tbaa !61
  %i.mg = add nuw i64 %.0105278, 1                ; 2 uses
  %i.mh = getelementptr [8 x i8], ptr %i.la, i64 %i.mg
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !61
  %i.mj = mul nsw i64 %i.lf, %i.mg
  %i.mk = getelementptr [8 x i8], ptr %i.lg, i64 %i.mj
  store double %i.mi, ptr %i.mk, align 8, !tbaa !61
  %i.ml = add nuw i64 %.0105278, 2                ; 2 uses
  %i.mm = getelementptr [8 x i8], ptr %i.la, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !61
  %i.mo = mul nsw i64 %i.lf, %i.ml
  %i.mp = getelementptr [8 x i8], ptr %i.lg, i64 %i.mo
  store double %i.mn, ptr %i.mp, align 8, !tbaa !61
  %i.mq = add nuw i64 %.0105278, 3                ; 2 uses
  %i.mr = getelementptr [8 x i8], ptr %i.la, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !61
  %i.mt = mul nsw i64 %i.lf, %i.mq
  %i.mu = getelementptr [8 x i8], ptr %i.lg, i64 %i.mt
  store double %i.ms, ptr %i.mu, align 8, !tbaa !61
  %i.mv = add nuw i64 %.0105278, 4                ; 2 uses
  %exitcond300.not.3 = icmp eq i64 %i.mv, %i.kw
  br i1 %exitcond300.not.3, label %._crit_edge280, label %scalar.ph365, !llvm.loop !95

bb.au:                                            ; preds = %bb.as
  %i.mw = load ptr, ptr %i.hy, align 8, !tbaa !54
  %i.mx = getelementptr [4 x i8], ptr %i.mw, i64 %.0112283 ; 4 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !56
  %i.mz = sext i32 %.0108285 to i64               ; 4 uses
  %i.na = load ptr, ptr %3, align 8, !tbaa !86
  %i.nb = getelementptr [4 x i8], ptr %i.na, i64 %i.mz ; 4 uses
  store i32 %i.my, ptr %i.nb, align 4, !tbaa !56
  %i.nc = getelementptr i8, ptr %i.mx, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !56
  %i.ne = load i64, ptr %i.hz, align 8, !tbaa !88 ; 3 uses
  %i.nf = getelementptr [4 x i8], ptr %i.nb, i64 %i.ne
  store i32 %i.nd, ptr %i.nf, align 4, !tbaa !56
  %i.ng = getelementptr i8, ptr %i.mx, i64 8
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !56
  %.idx = shl i64 %i.ne, 3
  %i.ni = getelementptr i8, ptr %i.nb, i64 %.idx
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !56
  %i.nj = getelementptr i8, ptr %i.mx, i64 12
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !56
  %.idx244 = mul i64 %i.ne, 12
  %i.nl = getelementptr i8, ptr %i.nb, i64 %.idx244
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !56
  %i.nm = load ptr, ptr %i.ia, align 8, !tbaa !89
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !54
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.0107286
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !56
  %i.nr = load ptr, ptr %5, align 8, !tbaa !83
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.mz
  store i32 %i.nq, ptr %i.ns, align 4, !tbaa !56
  %i.nt = load ptr, ptr %i.gd, align 8, !tbaa !39 ; 2 uses
  %i.nu = load ptr, ptr %i.gc, align 8, !tbaa !42 ; 3 uses
  %.not292 = icmp eq ptr %i.nt, %i.nu
  br i1 %.not292, label %._crit_edge277, label %.preheader246.lr.ph

.preheader246.lr.ph:                              ; preds = %bb.au
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = sdiv exact i64 %i.nx, 24
  %i.nz = load ptr, ptr %i.ib, align 8, !tbaa !54
  %i.oa = shl nsw i64 %i.mz, 3
  br label %.preheader246

.preheader246:                                    ; preds = %.preheader246.lr.ph, %._crit_edge275
  %.0104276 = phi i64 [ 0, %.preheader246.lr.ph ], [ %i.pi, %._crit_edge275 ] ; 4 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %.0104276
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !56 ; 4 uses
  %i.od = sext i32 %i.oc to i64                   ; 7 uses
  %.not293 = icmp eq i32 %i.oc, 0
  br i1 %.not293, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %.preheader246
  %i.oe = getelementptr inbounds nuw [24 x i8], ptr %i.nu, i64 %.0104276
  %i.of = mul i64 %.0107286, %i.od
  %i.og = load ptr, ptr %i.oe, align 8, !tbaa !32 ; 2 uses
  %i.oh = getelementptr [8 x i8], ptr %i.og, i64 %i.of ; 6 uses
  %i.oi = load ptr, ptr %10, align 8, !tbaa !9
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oi, i64 %.0104276 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !14 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !57 ; 6 uses
  %i.on = getelementptr [8 x i8], ptr %i.ok, i64 %i.mz ; 6 uses
  %min.iters.check382 = icmp ugt i32 %i.oc, 9
  %ident.check378.not = icmp eq i64 %i.om, 1
  %or.cond394 = select i1 %min.iters.check382, i1 %ident.check378.not, i1 false
  br i1 %or.cond394, label %vector.memcheck379, label %scalar.ph381.preheader

vector.memcheck379:                               ; preds = %.lr.ph274
  %i.oo = ptrtoaddr ptr %i.ok to i64
  %i.op = ptrtoaddr ptr %i.og to i64
  %i.oq = add i64 %i.oa, %i.oo
  %i.or = mul i64 %i.jn, %i.od
  %i.os = add i64 %i.or, %i.op
  %i.ot = sub i64 %i.os, %i.oq
  %diff.check380 = icmp ugt i64 %i.ot, -32
  br i1 %diff.check380, label %scalar.ph381.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %vector.memcheck379
  %n.vec384 = and i64 %i.od, -4                   ; 3 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next389, %vector.body385 ] ; 3 uses
  %i.ou = getelementptr [8 x i8], ptr %i.oh, i64 %index386 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 16
  %wide.load387 = load <2 x double>, ptr %i.ou, align 8, !tbaa !61
  %wide.load388 = load <2 x double>, ptr %i.ov, align 8, !tbaa !61
  %i.ow = getelementptr [8 x i8], ptr %i.on, i64 %index386 ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ow, i64 16
  store <2 x double> %wide.load387, ptr %i.ow, align 8, !tbaa !61
  store <2 x double> %wide.load388, ptr %i.ox, align 8, !tbaa !61
  %index.next389 = add nuw i64 %index386, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next389, %n.vec384
  br i1 %i.oy, label %middle.block390, label %vector.body385, !llvm.loop !96

middle.block390:                                  ; preds = %vector.body385
  %cmp.n391 = icmp eq i64 %n.vec384, %i.od
  br i1 %cmp.n391, label %._crit_edge275, label %scalar.ph381.preheader

scalar.ph381.preheader:                           ; preds = %vector.memcheck379, %.lr.ph274, %middle.block390
  %.0273.ph = phi i64 [ 0, %vector.memcheck379 ], [ 0, %.lr.ph274 ], [ %n.vec384, %middle.block390 ] ; 3 uses
  %xtraiter398 = and i64 %i.od, 3
  %i.oz = and i32 %i.oc, 3
  %lcmp.mod399.not = icmp eq i32 %i.oz, 0
  br i1 %lcmp.mod399.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol

scalar.ph381.prol:                                ; preds = %scalar.ph381.preheader, %scalar.ph381.prol
  %.0273.prol = phi i64 [ %i.pe, %scalar.ph381.prol ], [ %.0273.ph, %scalar.ph381.preheader ] ; 3 uses
  %prol.iter400 = phi i64 [ %prol.iter400.next, %scalar.ph381.prol ], [ 0, %scalar.ph381.preheader ]
  %i.pa = getelementptr [8 x i8], ptr %i.oh, i64 %.0273.prol
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !61
  %i.pc = mul nsw i64 %i.om, %.0273.prol
  %i.pd = getelementptr [8 x i8], ptr %i.on, i64 %i.pc
  store double %i.pb, ptr %i.pd, align 8, !tbaa !61
  %i.pe = add nuw i64 %.0273.prol, 1              ; 2 uses
  %prol.iter400.next = add i64 %prol.iter400, 1   ; 2 uses
  %prol.iter400.cmp.not = icmp eq i64 %prol.iter400.next, %xtraiter398
  br i1 %prol.iter400.cmp.not, label %scalar.ph381.prol.loopexit, label %scalar.ph381.prol, !llvm.loop !97

scalar.ph381.prol.loopexit:                       ; preds = %scalar.ph381.prol, %scalar.ph381.preheader
  %.0273.unr = phi i64 [ %.0273.ph, %scalar.ph381.preheader ], [ %i.pe, %scalar.ph381.prol ]
  %i.pf = sub nsw i64 %.0273.ph, %i.od
  %i.pg = icmp ugt i64 %i.pf, -4
  br i1 %i.pg, label %._crit_edge275, label %scalar.ph381

._crit_edge277:                                   ; preds = %._crit_edge275, %bb.au
  %i.ph = add nsw i32 %.0108285, 1
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge275:                                   ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381, %middle.block390, %.preheader246
  %i.pi = add nuw i64 %.0104276, 1                ; 2 uses
  %exitcond299.not = icmp eq i64 %i.pi, %i.ny
  br i1 %exitcond299.not, label %._crit_edge277, label %.preheader246, !llvm.loop !98

scalar.ph381:                                     ; preds = %scalar.ph381.prol.loopexit, %scalar.ph381
  %.0273 = phi i64 [ %i.qc, %scalar.ph381 ], [ %.0273.unr, %scalar.ph381.prol.loopexit ] ; 6 uses
  %i.pj = getelementptr [8 x i8], ptr %i.oh, i64 %.0273
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !61
  %i.pl = mul nsw i64 %i.om, %.0273
  %i.pm = getelementptr [8 x i8], ptr %i.on, i64 %i.pl
  store double %i.pk, ptr %i.pm, align 8, !tbaa !61
  %i.pn = add nuw i64 %.0273, 1                   ; 2 uses
  %i.po = getelementptr [8 x i8], ptr %i.oh, i64 %i.pn
  %i.pp = load double, ptr %i.po, align 8, !tbaa !61
  %i.pq = mul nsw i64 %i.om, %i.pn
  %i.pr = getelementptr [8 x i8], ptr %i.on, i64 %i.pq
  store double %i.pp, ptr %i.pr, align 8, !tbaa !61
  %i.ps = add nuw i64 %.0273, 2                   ; 2 uses
  %i.pt = getelementptr [8 x i8], ptr %i.oh, i64 %i.ps
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !61
  %i.pv = mul nsw i64 %i.om, %i.ps
  %i.pw = getelementptr [8 x i8], ptr %i.on, i64 %i.pv
  store double %i.pu, ptr %i.pw, align 8, !tbaa !61
  %i.px = add nuw i64 %.0273, 3                   ; 2 uses
  %i.py = getelementptr [8 x i8], ptr %i.oh, i64 %i.px
  %i.pz = load double, ptr %i.py, align 8, !tbaa !61
  %i.qa = mul nsw i64 %i.om, %i.px
  %i.qb = getelementptr [8 x i8], ptr %i.on, i64 %i.qa
  store double %i.pz, ptr %i.qb, align 8, !tbaa !61
  %i.qc = add nuw i64 %.0273, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.qc, %i.od
  br i1 %exitcond.not.3, label %._crit_edge275, label %scalar.ph381, !llvm.loop !99

bb.av:                                            ; preds = %bb.as
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.av
  %i.qe = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.0107286
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !56
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.qg)
          to label %bb.aw unwind label %.loopexit ; 2 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, ptr noundef nonnull @.str.3, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192: ; preds = %bb.aw
  %i.qj = load ptr, ptr %i.hu, align 8, !tbaa !54
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.0107286
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !56
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, i32 noundef %i.ql)
          to label %bb.ax unwind label %.loopexit ; 3 uses

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !58
  %i.qo = getelementptr i8, ptr %i.qn, i64 -24
  %i.qp = load i64, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds i8, ptr %i.qm, i64 %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 240
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !100 ; 6 uses
  %.not.i.i.i197 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i197, label %bb.ay, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc198 unwind label %.loopexit.split-lp

.noexc198:                                        ; preds = %bb.ay
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ax
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !116
  %.not.i1.i.i = icmp eq i8 %i.qu, 0
  br i1 %.not.i1.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 67
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qs)
          to label %.noexc199 unwind label %.loopexit

.noexc199:                                        ; preds = %bb.ba
  %i.qx = load ptr, ptr %i.qs, align 8, !tbaa !58
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 48
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = invoke noundef signext i8 %i.qz(ptr noundef nonnull align 8 dereferenceable(570) %i.qs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !121

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc199, %bb.az
  %.0.i.i.i = phi i8 [ %i.qw, %bb.az ], [ %i.ra, %.noexc199 ]
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qm, i8 noundef signext %.0.i.i.i)
          to label %.noexc201 unwind label %.loopexit

.noexc201:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rb)
          to label %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge unwind label %.loopexit ; 0 uses

.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge:        ; preds = %.noexc201
  %.pre303 = load ptr, ptr %i.hu, align 8, !tbaa !54
  %.pre304 = load ptr, ptr %i.hv, align 8, !tbaa !84
  br label %_ZNSolsEPFRSoS_E.exit

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge, %._crit_edge277, %._crit_edge282
  %i.rd = phi ptr [ %i.jl, %._crit_edge282 ], [ %i.jl, %._crit_edge277 ], [ %.pre303, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ] ; 3 uses
  %i.re = phi ptr [ %i.jm, %._crit_edge282 ], [ %i.jm, %._crit_edge277 ], [ %.pre304, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ] ; 2 uses
  %.1110 = phi i32 [ %i.ma, %._crit_edge282 ], [ %.0109284, %._crit_edge277 ], [ %.0109284, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ]
  %.1 = phi i32 [ %.0108285, %._crit_edge282 ], [ %i.ph, %._crit_edge277 ], [ %.0108285, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ]
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %.0107286
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !56
  %i.rh = sext i32 %i.rg to i64
  %i.ri = add i64 %.0112283, %i.rh
  %i.rj = add nuw i64 %.0107286, 1                ; 2 uses
  %i.rk = ptrtoint ptr %i.re to i64
  %i.rl = ptrtoint ptr %i.rd to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = ashr exact i64 %i.rm, 2
  %i.ro = icmp ult i64 %i.rj, %i.rn
  br i1 %i.ro, label %bb.as, label %._crit_edge288, !llvm.loop !122

bb.bb:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit248, %.loopexit.split-lp249, %bb.an, %bb.am, %bb.s
  %.pn133 = phi { ptr, i32 } [ %i.ev, %bb.s ], [ %i.ie, %bb.an ], [ %lpad.loopexit.split-lp251, %.loopexit.split-lp249 ], [ %i.id, %bb.am ], [ %lpad.loopexit250, %.loopexit248 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.rp = load ptr, ptr %i.ap, align 8, !tbaa !48
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.rp)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.rq = landingpad { ptr, i32 }
          catch ptr null
  %i.rr = extractvalue { ptr, i32 } %i.rq, 0
  call void @__clang_call_terminate(ptr %i.rr) #29
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit254, %.loopexit.split-lp255, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194, %bb.i
  %.pn135.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %.pn133, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194 ], [ %lpad.loopexit256, %.loopexit254 ], [ %lpad.loopexit.split-lp257, %.loopexit.split-lp255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN3igl9MshLoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %11) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.h
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.bd ], [ %i.ax, %bb.h ] ; 3 uses
  %.7126 = extractvalue { ptr, i32 } %.pn135.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.rs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.rt = icmp eq i32 %.7126, %i.rs
  br i1 %i.rt, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %.7 = extractvalue { ptr, i32 } %.pn135.pn.pn, 0
  %i.ru = call ptr @__cxa_begin_catch(ptr %.7) #23 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !58
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = call noundef ptr %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %i.ru) #23
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ry)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.sa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.rz)
          to label %_ZNSolsEPFRSoS_E.exit196 unwind label %bb.bh, !inline_history !123 ; 0 uses

_ZNSolsEPFRSoS_E.exit196:                         ; preds = %bb.bg
  call void @__cxa_end_catch()
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bk

bb.bi:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSolsEPFRSoS_E.exit196
  %.0115 = phi i1 [ false, %_ZNSolsEPFRSoS_E.exit196 ], [ true, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ]
  ret i1 %.0115

bb.bj:                                            ; preds = %bb.bh, %bb.be
  %.merged = phi { ptr, i32 } [ %.pn135.pn.pn, %bb.be ], [ %i.sb, %bb.bh ]
  resume { ptr, i32 } %.merged

bb.bk:                                            ; preds = %bb.bh
  %i.sc = landingpad { ptr, i32 }
          catch ptr null
  %i.sd = extractvalue { ptr, i32 } %i.sc, 0
  call void @__clang_call_terminate(ptr %i.sd) #29
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3igl7readMSHIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S3_S3_S3_EEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_15PlainObjectBaseIT_EERNSE_IT0_EERNSE_IT1_EERNSE_IT2_EERNSE_IT3_EERSt6vectorISB_SaISB_EERSU_IT4_SaISY_EESX_RSU_IT5_SaIS12_EERSU_IT6_SaIS16_EE:bb.a
_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEESaIS2_EE6resizeEm.exit181: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEES2_EvT_S4_RSaIT0_E.exit.i.i179
  %i.hx = load ptr, ptr %i.gk, align 8, !tbaa !39
  %i.hy = load ptr, ptr %i.gj, align 8, !tbaa !42
  %.not288 = icmp eq ptr %i.hx, %i.hy
  br i1 %.not288, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEESaIS2_EE6resizeEm.exit181
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 280 ; 2 uses
  br label %bb.ao

._crit_edge270:                                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit189, %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEESaIS2_EE6resizeEm.exit181
  %i.ia = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.preheader245 unwind label %bb.an ; 0 uses

.preheader245:                                    ; preds = %._crit_edge270
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !84 ; 2 uses
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !54 ; 2 uses
  %.not289 = icmp eq ptr %i.id, %i.ie
  br i1 %.not289, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.preheader245
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 280 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.as

bb.am:                                            ; preds = %.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

bb.an:                                            ; preds = %bb.aj, %bb.ag, %._crit_edge270
  %i.il = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

.loopexit246:                                     ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

.loopexit.split-lp247:                            ; preds = %.invoke352
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

bb.ao:                                            ; preds = %.lr.ph269, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit189
  %.0111268 = phi i64 [ 0, %.lr.ph269 ], [ %i.jh, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit189 ] ; 5 uses
  %i.im = load ptr, ptr %9, align 8, !tbaa !127
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %.0111268
  %i.io = load ptr, ptr %i.hz, align 8, !tbaa !54
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.0111268
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !56 ; 2 uses
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = icmp eq i32 %i.iq, 0
  %or.cond.i.i = or i1 %i.fr, %i.is
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.it = sdiv i64 9223372036854775807, %i.ir
  %i.iu = icmp sgt i64 %.0114236240, %i.it
  br i1 %i.iu, label %.invoke352, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182

.invoke352:                                       ; preds = %bb.ap, %bb.aq
  %i.iv = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.iv, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont353 unwind label %.loopexit.split-lp247

.cont353:                                         ; preds = %.invoke352
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182: ; preds = %bb.ap, %bb.ao
  %i.iw = mul nsw i64 %.0114236240, %i.ir
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 noundef %i.iw, i64 noundef %.0114236240, i64 noundef %i.ir)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit unwind label %.loopexit246

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i182
  %i.ix = load ptr, ptr %10, align 8, !tbaa !127
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %.0111268
  %i.iz = load ptr, ptr %i.hz, align 8, !tbaa !54
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.0111268
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !56 ; 2 uses
  %i.jc = sext i32 %i.jb to i64                   ; 3 uses
  %i.jd = icmp eq i32 %i.jb, 0
  %or.cond.i.i185 = or i1 %i.ft, %i.jd
  br i1 %or.cond.i.i185, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186, label %bb.aq

bb.aq:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit
  %i.je = sdiv i64 9223372036854775807, %i.jc
  %i.jf = icmp sgt i64 %.0113241, %i.je
  br i1 %i.jf, label %.invoke352, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186: ; preds = %bb.aq, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit
  %i.jg = mul nsw i64 %.0113241, %i.jc
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i64 noundef %i.jg, i64 noundef %.0113241, i64 noundef %i.jc)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit189 unwind label %.loopexit246

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit189: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i186
  %i.jh = add nuw i64 %.0111268, 1                ; 2 uses
  %i.ji = load ptr, ptr %i.gk, align 8, !tbaa !39
  %i.jj = load ptr, ptr %i.gj, align 8, !tbaa !42
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = sdiv exact i64 %i.jm, 24
  %i.jo = icmp ult i64 %i.jh, %i.jn
  br i1 %i.jo, label %bb.ao, label %._crit_edge270, !llvm.loop !138

._crit_edge286:                                   ; preds = %_ZNSolsEPFRSoS_E.exit, %.preheader245
  %i.jp = load ptr, ptr %i.ap, align 8, !tbaa !48
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.jp)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %._crit_edge286
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #29
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %._crit_edge286
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN3igl9MshLoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bi

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192, %bb.av, %bb.aw, %bb.ba, %.noexc199, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc201
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bb

bb.as:                                            ; preds = %.lr.ph285, %_ZNSolsEPFRSoS_E.exit
  %i.js = phi ptr [ %i.ie, %.lr.ph285 ], [ %i.rg, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %i.jt = phi ptr [ %i.id, %.lr.ph285 ], [ %i.rh, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %.0107284 = phi i64 [ 0, %.lr.ph285 ], [ %i.rm, %_ZNSolsEPFRSoS_E.exit ] ; 11 uses
  %.0108283 = phi i32 [ 0, %.lr.ph285 ], [ %.1, %_ZNSolsEPFRSoS_E.exit ] ; 4 uses
  %.0109282 = phi i32 [ 0, %.lr.ph285 ], [ %.1110, %_ZNSolsEPFRSoS_E.exit ] ; 4 uses
  %.0112281 = phi i64 [ 0, %.lr.ph285 ], [ %i.rl, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %i.ju = shl i64 %.0107284, 3
  %i.jv = shl i64 %.0107284, 3
  %i.jw = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.0107284
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !56
  switch i32 %i.jy, label %bb.av [
    i32 2, label %bb.at
    i32 4, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.jz = load ptr, ptr %i.if, align 8, !tbaa !54
  %i.ka = getelementptr [4 x i8], ptr %i.jz, i64 %.0112281 ; 3 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !56
  %i.kc = sext i32 %.0109282 to i64               ; 4 uses
  %i.kd = load ptr, ptr %2, align 8, !tbaa !139
  %i.ke = load i64, ptr %i.ij, align 8, !tbaa !141
  %i.kf = mul nsw i64 %i.ke, %i.kc
  %i.kg = getelementptr [4 x i8], ptr %i.kd, i64 %i.kf ; 3 uses
  store i32 %i.kb, ptr %i.kg, align 4, !tbaa !56
  %i.kh = getelementptr i8, ptr %i.ka, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !56
  %i.kj = getelementptr i8, ptr %i.kg, i64 4
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !56
  %i.kk = getelementptr i8, ptr %i.ka, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !56
  %i.km = getelementptr i8, ptr %i.kg, i64 8
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !56
  %i.kn = load ptr, ptr %i.ih, align 8, !tbaa !89
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !54
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.0107284
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !56
  %i.ks = load ptr, ptr %4, align 8, !tbaa !83
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.kc
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !56
  %i.ku = load ptr, ptr %i.gk, align 8, !tbaa !39 ; 2 uses
  %i.kv = load ptr, ptr %i.gj, align 8, !tbaa !42 ; 3 uses
  %.not292 = icmp eq ptr %i.ku, %i.kv
  br i1 %.not292, label %._crit_edge280, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.at
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = sdiv exact i64 %i.ky, 24
  %i.la = load ptr, ptr %i.ii, align 8, !tbaa !54
  %i.lb = shl nsw i64 %i.kc, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge278
  %.0106279 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.mk, %._crit_edge278 ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %.0106279
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !56 ; 4 uses
  %i.le = sext i32 %i.ld to i64                   ; 7 uses
  %.not293 = icmp eq i32 %i.ld, 0
  br i1 %.not293, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.kv, i64 %.0106279
  %i.lg = mul i64 %.0107284, %i.le
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !32 ; 2 uses
  %i.li = getelementptr [8 x i8], ptr %i.lh, i64 %i.lg ; 6 uses
  %i.lj = load ptr, ptr %9, align 8, !tbaa !127
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %i.lj, i64 %.0106279 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !128 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !132 ; 2 uses
  %i.lo = mul nsw i64 %i.ln, %i.kc
  %i.lp = getelementptr [8 x i8], ptr %i.ll, i64 %i.lo ; 6 uses
  %min.iters.check361 = icmp ult i32 %i.ld, 10
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph277
  %i.lq = ptrtoaddr ptr %i.ll to i64
  %i.lr = ptrtoaddr ptr %i.lh to i64
  %i.ls = mul i64 %i.lb, %i.ln
  %i.lt = add i64 %i.ls, %i.lq
  %i.lu = mul i64 %i.jv, %i.le
  %i.lv = add i64 %i.lu, %i.lr
  %i.lw = sub i64 %i.lv, %i.lt
  %diff.check359 = icmp ugt i64 %i.lw, -32
  br i1 %diff.check359, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %n.vec363 = and i64 %i.le, -4                   ; 3 uses
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next368, %vector.body364 ] ; 3 uses
  %i.lx = getelementptr [8 x i8], ptr %i.li, i64 %index365 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 16
  %wide.load366 = load <2 x double>, ptr %i.lx, align 8, !tbaa !61
  %wide.load367 = load <2 x double>, ptr %i.ly, align 8, !tbaa !61
  %i.lz = getelementptr [8 x i8], ptr %i.lp, i64 %index365 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 16
  store <2 x double> %wide.load366, ptr %i.lz, align 8, !tbaa !61
  store <2 x double> %wide.load367, ptr %i.ma, align 8, !tbaa !61
  %index.next368 = add nuw i64 %index365, 4       ; 2 uses
  %i.mb = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.mb, label %middle.block369, label %vector.body364, !llvm.loop !142

middle.block369:                                  ; preds = %vector.body364
  %cmp.n370 = icmp eq i64 %n.vec363, %i.le
  br i1 %cmp.n370, label %._crit_edge278, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck358, %.lr.ph277, %middle.block369
  %.0105276.ph = phi i64 [ 0, %vector.memcheck358 ], [ 0, %.lr.ph277 ], [ %n.vec363, %middle.block369 ] ; 3 uses
  %xtraiter393 = and i64 %i.le, 3
  %i.mc = and i32 %i.ld, 3
  %lcmp.mod394.not = icmp eq i32 %i.mc, 0
  br i1 %lcmp.mod394.not, label %scalar.ph360.prol.loopexit, label %scalar.ph360.prol

scalar.ph360.prol:                                ; preds = %scalar.ph360.preheader, %scalar.ph360.prol
  %.0105276.prol = phi i64 [ %i.mg, %scalar.ph360.prol ], [ %.0105276.ph, %scalar.ph360.preheader ] ; 3 uses
  %prol.iter395 = phi i64 [ %prol.iter395.next, %scalar.ph360.prol ], [ 0, %scalar.ph360.preheader ]
  %i.md = getelementptr [8 x i8], ptr %i.li, i64 %.0105276.prol
  %i.me = load double, ptr %i.md, align 8, !tbaa !61
  %i.mf = getelementptr [8 x i8], ptr %i.lp, i64 %.0105276.prol
  store double %i.me, ptr %i.mf, align 8, !tbaa !61
  %i.mg = add nuw i64 %.0105276.prol, 1           ; 2 uses
  %prol.iter395.next = add i64 %prol.iter395, 1   ; 2 uses
  %prol.iter395.cmp.not = icmp eq i64 %prol.iter395.next, %xtraiter393
  br i1 %prol.iter395.cmp.not, label %scalar.ph360.prol.loopexit, label %scalar.ph360.prol, !llvm.loop !143

scalar.ph360.prol.loopexit:                       ; preds = %scalar.ph360.prol, %scalar.ph360.preheader
  %.0105276.unr = phi i64 [ %.0105276.ph, %scalar.ph360.preheader ], [ %i.mg, %scalar.ph360.prol ]
  %i.mh = sub nsw i64 %.0105276.ph, %i.le
  %i.mi = icmp ugt i64 %i.mh, -4
  br i1 %i.mi, label %._crit_edge278, label %scalar.ph360

._crit_edge280:                                   ; preds = %._crit_edge278, %bb.at
  %i.mj = add nsw i32 %.0109282, 1
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge278:                                   ; preds = %scalar.ph360.prol.loopexit, %scalar.ph360, %middle.block369, %.preheader
  %i.mk = add nuw i64 %.0106279, 1                ; 2 uses
  %exitcond301.not = icmp eq i64 %i.mk, %i.kz
  br i1 %exitcond301.not, label %._crit_edge280, label %.preheader, !llvm.loop !144

scalar.ph360:                                     ; preds = %scalar.ph360.prol.loopexit, %scalar.ph360
  %.0105276 = phi i64 [ %i.na, %scalar.ph360 ], [ %.0105276.unr, %scalar.ph360.prol.loopexit ] ; 6 uses
  %i.ml = getelementptr [8 x i8], ptr %i.li, i64 %.0105276
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !61
  %i.mn = getelementptr [8 x i8], ptr %i.lp, i64 %.0105276
  store double %i.mm, ptr %i.mn, align 8, !tbaa !61
  %i.mo = add nuw i64 %.0105276, 1                ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.li, i64 %i.mo
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !61
  %i.mr = getelementptr [8 x i8], ptr %i.lp, i64 %i.mo
  store double %i.mq, ptr %i.mr, align 8, !tbaa !61
  %i.ms = add nuw i64 %.0105276, 2                ; 2 uses
  %i.mt = getelementptr [8 x i8], ptr %i.li, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !61
  %i.mv = getelementptr [8 x i8], ptr %i.lp, i64 %i.ms
  store double %i.mu, ptr %i.mv, align 8, !tbaa !61
  %i.mw = add nuw i64 %.0105276, 3                ; 2 uses
  %i.mx = getelementptr [8 x i8], ptr %i.li, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !61
  %i.mz = getelementptr [8 x i8], ptr %i.lp, i64 %i.mw
  store double %i.my, ptr %i.mz, align 8, !tbaa !61
  %i.na = add nuw i64 %.0105276, 4                ; 2 uses
  %exitcond299.not.3 = icmp eq i64 %i.na, %i.le
  br i1 %exitcond299.not.3, label %._crit_edge278, label %scalar.ph360, !llvm.loop !145

bb.au:                                            ; preds = %bb.as
  %i.nb = load ptr, ptr %i.if, align 8, !tbaa !54
  %i.nc = getelementptr [4 x i8], ptr %i.nb, i64 %.0112281 ; 4 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !56
  %i.ne = sext i32 %.0108283 to i64               ; 4 uses
  %i.nf = load ptr, ptr %3, align 8, !tbaa !139
  %i.ng = load i64, ptr %i.ig, align 8, !tbaa !141
  %i.nh = mul nsw i64 %i.ng, %i.ne
  %i.ni = getelementptr [4 x i8], ptr %i.nf, i64 %i.nh ; 4 uses
  store i32 %i.nd, ptr %i.ni, align 4, !tbaa !56
  %i.nj = getelementptr i8, ptr %i.nc, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !56
  %i.nl = getelementptr i8, ptr %i.ni, i64 4
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !56
  %i.nm = getelementptr i8, ptr %i.nc, i64 8
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !56
  %i.no = getelementptr i8, ptr %i.ni, i64 8
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !56
  %i.np = getelementptr i8, ptr %i.nc, i64 12
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !56
  %i.nr = getelementptr i8, ptr %i.ni, i64 12
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !56
  %i.ns = load ptr, ptr %i.ih, align 8, !tbaa !89
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !54
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0107284
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !56
  %i.nx = load ptr, ptr %5, align 8, !tbaa !83
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.ne
  store i32 %i.nw, ptr %i.ny, align 4, !tbaa !56
  %i.nz = load ptr, ptr %i.gk, align 8, !tbaa !39 ; 2 uses
  %i.oa = load ptr, ptr %i.gj, align 8, !tbaa !42 ; 3 uses
  %.not290 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not290, label %._crit_edge275, label %.preheader244.lr.ph

.preheader244.lr.ph:                              ; preds = %bb.au
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = sdiv exact i64 %i.od, 24
  %i.of = load ptr, ptr %i.ii, align 8, !tbaa !54
  %i.og = shl nsw i64 %i.ne, 3
  br label %.preheader244

.preheader244:                                    ; preds = %.preheader244.lr.ph, %._crit_edge273
  %.0104274 = phi i64 [ 0, %.preheader244.lr.ph ], [ %i.pp, %._crit_edge273 ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.0104274
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !56 ; 4 uses
  %i.oj = sext i32 %i.oi to i64                   ; 7 uses
  %.not291 = icmp eq i32 %i.oi, 0
  br i1 %.not291, label %._crit_edge273, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader244
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.oa, i64 %.0104274
  %i.ol = mul i64 %.0107284, %i.oj
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !32 ; 2 uses
  %i.on = getelementptr [8 x i8], ptr %i.om, i64 %i.ol ; 6 uses
  %i.oo = load ptr, ptr %10, align 8, !tbaa !127
  %i.op = getelementptr inbounds nuw [24 x i8], ptr %i.oo, i64 %.0104274 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !128 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.os = load i64, ptr %i.or, align 8, !tbaa !132 ; 2 uses
  %i.ot = mul nsw i64 %i.os, %i.ne
  %i.ou = getelementptr [8 x i8], ptr %i.oq, i64 %i.ot ; 6 uses
  %min.iters.check375 = icmp ult i32 %i.oi, 10
  br i1 %min.iters.check375, label %scalar.ph374.preheader, label %vector.memcheck372

vector.memcheck372:                               ; preds = %.lr.ph272
  %i.ov = ptrtoaddr ptr %i.oq to i64
  %i.ow = ptrtoaddr ptr %i.om to i64
  %i.ox = mul i64 %i.og, %i.os
  %i.oy = add i64 %i.ox, %i.ov
  %i.oz = mul i64 %i.ju, %i.oj
  %i.pa = add i64 %i.oz, %i.ow
  %i.pb = sub i64 %i.pa, %i.oy
  %diff.check373 = icmp ugt i64 %i.pb, -32
  br i1 %diff.check373, label %scalar.ph374.preheader, label %vector.ph376

vector.ph376:                                     ; preds = %vector.memcheck372
  %n.vec377 = and i64 %i.oj, -4                   ; 3 uses
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next382, %vector.body378 ] ; 3 uses
  %i.pc = getelementptr [8 x i8], ptr %i.on, i64 %index379 ; 2 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 16
  %wide.load380 = load <2 x double>, ptr %i.pc, align 8, !tbaa !61
  %wide.load381 = load <2 x double>, ptr %i.pd, align 8, !tbaa !61
  %i.pe = getelementptr [8 x i8], ptr %i.ou, i64 %index379 ; 2 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 16
  store <2 x double> %wide.load380, ptr %i.pe, align 8, !tbaa !61
  store <2 x double> %wide.load381, ptr %i.pf, align 8, !tbaa !61
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.pg = icmp eq i64 %index.next382, %n.vec377
  br i1 %i.pg, label %middle.block383, label %vector.body378, !llvm.loop !146

middle.block383:                                  ; preds = %vector.body378
  %cmp.n384 = icmp eq i64 %n.vec377, %i.oj
  br i1 %cmp.n384, label %._crit_edge273, label %scalar.ph374.preheader

scalar.ph374.preheader:                           ; preds = %vector.memcheck372, %.lr.ph272, %middle.block383
  %.0271.ph = phi i64 [ 0, %vector.memcheck372 ], [ 0, %.lr.ph272 ], [ %n.vec377, %middle.block383 ] ; 3 uses
  %xtraiter390 = and i64 %i.oj, 3
  %i.ph = and i32 %i.oi, 3
  %lcmp.mod391.not = icmp eq i32 %i.ph, 0
  br i1 %lcmp.mod391.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol

scalar.ph374.prol:                                ; preds = %scalar.ph374.preheader, %scalar.ph374.prol
  %.0271.prol = phi i64 [ %i.pl, %scalar.ph374.prol ], [ %.0271.ph, %scalar.ph374.preheader ] ; 3 uses
  %prol.iter392 = phi i64 [ %prol.iter392.next, %scalar.ph374.prol ], [ 0, %scalar.ph374.preheader ]
  %i.pi = getelementptr [8 x i8], ptr %i.on, i64 %.0271.prol
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !61
  %i.pk = getelementptr [8 x i8], ptr %i.ou, i64 %.0271.prol
  store double %i.pj, ptr %i.pk, align 8, !tbaa !61
  %i.pl = add nuw i64 %.0271.prol, 1              ; 2 uses
  %prol.iter392.next = add i64 %prol.iter392, 1   ; 2 uses
  %prol.iter392.cmp.not = icmp eq i64 %prol.iter392.next, %xtraiter390
  br i1 %prol.iter392.cmp.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol, !llvm.loop !147

scalar.ph374.prol.loopexit:                       ; preds = %scalar.ph374.prol, %scalar.ph374.preheader
  %.0271.unr = phi i64 [ %.0271.ph, %scalar.ph374.preheader ], [ %i.pl, %scalar.ph374.prol ]
  %i.pm = sub nsw i64 %.0271.ph, %i.oj
  %i.pn = icmp ugt i64 %i.pm, -4
  br i1 %i.pn, label %._crit_edge273, label %scalar.ph374

._crit_edge275:                                   ; preds = %._crit_edge273, %bb.au
  %i.po = add nsw i32 %.0108283, 1
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge273:                                   ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374, %middle.block383, %.preheader244
  %i.pp = add nuw i64 %.0104274, 1                ; 2 uses
  %exitcond298.not = icmp eq i64 %i.pp, %i.oe
  br i1 %exitcond298.not, label %._crit_edge275, label %.preheader244, !llvm.loop !148

scalar.ph374:                                     ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374
  %.0271 = phi i64 [ %i.qf, %scalar.ph374 ], [ %.0271.unr, %scalar.ph374.prol.loopexit ] ; 6 uses
  %i.pq = getelementptr [8 x i8], ptr %i.on, i64 %.0271
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !61
  %i.ps = getelementptr [8 x i8], ptr %i.ou, i64 %.0271
  store double %i.pr, ptr %i.ps, align 8, !tbaa !61
  %i.pt = add nuw i64 %.0271, 1                   ; 2 uses
  %i.pu = getelementptr [8 x i8], ptr %i.on, i64 %i.pt
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !61
  %i.pw = getelementptr [8 x i8], ptr %i.ou, i64 %i.pt
  store double %i.pv, ptr %i.pw, align 8, !tbaa !61
  %i.px = add nuw i64 %.0271, 2                   ; 2 uses
  %i.py = getelementptr [8 x i8], ptr %i.on, i64 %i.px
  %i.pz = load double, ptr %i.py, align 8, !tbaa !61
  %i.qa = getelementptr [8 x i8], ptr %i.ou, i64 %i.px
  store double %i.pz, ptr %i.qa, align 8, !tbaa !61
  %i.qb = add nuw i64 %.0271, 3                   ; 2 uses
  %i.qc = getelementptr [8 x i8], ptr %i.on, i64 %i.qb
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !61
  %i.qe = getelementptr [8 x i8], ptr %i.ou, i64 %i.qb
  store double %i.qd, ptr %i.qe, align 8, !tbaa !61
  %i.qf = add nuw i64 %.0271, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.qf, %i.oj
  br i1 %exitcond.not.3, label %._crit_edge273, label %scalar.ph374, !llvm.loop !149

bb.av:                                            ; preds = %bb.as
  %i.qg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.av
  %i.qh = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %.0107284
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !56
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.qj)
          to label %bb.aw unwind label %.loopexit ; 2 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, ptr noundef nonnull @.str.3, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192: ; preds = %bb.aw
  %i.qm = load ptr, ptr %i.ib, align 8, !tbaa !54
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %.0107284
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !56
  %i.qp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, i32 noundef %i.qo)
          to label %bb.ax unwind label %.loopexit ; 3 uses

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !58
  %i.qr = getelementptr i8, ptr %i.qq, i64 -24
  %i.qs = load i64, ptr %i.qr, align 8
  %i.qt = getelementptr inbounds i8, ptr %i.qp, i64 %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 240
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !100 ; 6 uses
  %.not.i.i.i197 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i197, label %bb.ay, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc198 unwind label %.loopexit.split-lp

.noexc198:                                        ; preds = %bb.ay
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ax
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 56
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !116
  %.not.i1.i.i = icmp eq i8 %i.qx, 0
  br i1 %.not.i1.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 67
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qv)
          to label %.noexc199 unwind label %.loopexit

.noexc199:                                        ; preds = %bb.ba
  %i.ra = load ptr, ptr %i.qv, align 8, !tbaa !58
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 48
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = invoke noundef signext i8 %i.rc(ptr noundef nonnull align 8 dereferenceable(570) %i.qv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !121

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc199, %bb.az
  %.0.i.i.i = phi i8 [ %i.qz, %bb.az ], [ %i.rd, %.noexc199 ]
  %i.re = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qp, i8 noundef signext %.0.i.i.i)
          to label %.noexc201 unwind label %.loopexit

.noexc201:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.re)
          to label %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge unwind label %.loopexit ; 0 uses

.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge:        ; preds = %.noexc201
  %.pre302 = load ptr, ptr %i.ib, align 8, !tbaa !54
  %.pre303 = load ptr, ptr %i.ic, align 8, !tbaa !84
  br label %_ZNSolsEPFRSoS_E.exit

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge, %._crit_edge275, %._crit_edge280
  %i.rg = phi ptr [ %i.js, %._crit_edge280 ], [ %i.js, %._crit_edge275 ], [ %.pre302, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ] ; 3 uses
  %i.rh = phi ptr [ %i.jt, %._crit_edge280 ], [ %i.jt, %._crit_edge275 ], [ %.pre303, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ] ; 2 uses
  %.1110 = phi i32 [ %i.mj, %._crit_edge280 ], [ %.0109282, %._crit_edge275 ], [ %.0109282, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ]
  %.1 = phi i32 [ %.0108283, %._crit_edge280 ], [ %i.po, %._crit_edge275 ], [ %.0108283, %.noexc201._ZNSolsEPFRSoS_E.exit_crit_edge ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %.0107284
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !56
  %i.rk = sext i32 %i.rj to i64
  %i.rl = add i64 %.0112281, %i.rk
  %i.rm = add nuw i64 %.0107284, 1                ; 2 uses
  %i.rn = ptrtoint ptr %i.rh to i64
  %i.ro = ptrtoint ptr %i.rg to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = ashr exact i64 %i.rp, 2
  %i.rr = icmp ult i64 %i.rm, %i.rq
  br i1 %i.rr, label %bb.as, label %._crit_edge286, !llvm.loop !150

bb.bb:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit246, %.loopexit.split-lp247, %bb.an, %bb.am, %bb.s
  %.pn133 = phi { ptr, i32 } [ %i.fc, %bb.s ], [ %i.il, %bb.an ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp247 ], [ %i.ik, %bb.am ], [ %lpad.loopexit248, %.loopexit246 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.rs = load ptr, ptr %i.ap, align 8, !tbaa !48
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.rs)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.rt = landingpad { ptr, i32 }
          catch ptr null
  %i.ru = extractvalue { ptr, i32 } %i.rt, 0
  call void @__clang_call_terminate(ptr %i.ru) #29
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit252, %.loopexit.split-lp253, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194, %bb.i
  %.pn135.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %.pn133, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit194 ], [ %lpad.loopexit254, %.loopexit252 ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN3igl9MshLoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %11) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.h
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.bd ], [ %i.ax, %bb.h ] ; 3 uses
  %.7126 = extractvalue { ptr, i32 } %.pn135.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.rv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.rw = icmp eq i32 %.7126, %i.rv
  br i1 %i.rw, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %.7 = extractvalue { ptr, i32 } %.pn135.pn.pn, 0
  %i.rx = call ptr @__cxa_begin_catch(ptr %.7) #23 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !58
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = call noundef ptr %i.sa(ptr noundef nonnull align 8 dereferenceable(8) %i.rx) #23
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.sb)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.sc)
          to label %_ZNSolsEPFRSoS_E.exit196 unwind label %bb.bh, !inline_history !123 ; 0 uses

_ZNSolsEPFRSoS_E.exit196:                         ; preds = %bb.bg
  call void @__cxa_end_catch()
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bk

bb.bi:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit, %_ZNSolsEPFRSoS_E.exit196
  %.0115 = phi i1 [ false, %_ZNSolsEPFRSoS_E.exit196 ], [ true, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit ]
  ret i1 %.0115

bb.bj:                                            ; preds = %bb.bh, %bb.be
  %.merged = phi { ptr, i32 } [ %.pn135.pn.pn, %bb.be ], [ %i.se, %bb.bh ]
  resume { ptr, i32 } %.merged

bb.bk:                                            ; preds = %bb.bh
  %i.sf = landingpad { ptr, i32 }
          catch ptr null
  %i.sg = extractvalue { ptr, i32 } %i.sf, 0
  call void @__clang_call_terminate(ptr %i.sg) #29
  unreachable
}

declare void @_ZN3igl9MshLoaderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEaSINS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
end_hunk_1
