inline.NumInlined: 3014
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorISZ_INS7_7Point_2IT1_EESaIS12_EESaIS14_EERNS3_15PlainObjectBaseIT2_EERNS19_IT3_EERNS19_IT4_EERNS19_IT5_EE:bb.a
  %i.gz = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !70 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ha, 0
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 3 uses
  %i.hc = load atomic i32, ptr %i.hb monotonic, align 4 ; 2 uses
  %i.hd = icmp eq i32 %i.hc, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.hd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !26
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(12) %i.gz) #22, !inline_history !84
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.hh = add nsw i32 %i.hc, -1
  store atomic i32 %i.hh, ptr %i.hb monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

bb.ax:                                            ; preds = %bb.at
  br i1 %i.hd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hi = atomicrmw sub ptr %i.hb, i32 1 release, align 4
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.az, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay, %bb.ax
  fence acquire
  %i.hk = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(12) %i.hk) #22, !inline_history !84
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.av, %.lr.ph.i.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hp, %i.gd
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !85

_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.gy, ptr %i.fq, align 8, !tbaa !62
  %.pre434 = load ptr, ptr %11, align 8, !tbaa !19
  br label %bb.bb

bb.bb:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.hq = phi ptr [ %i.ft, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit ], [ %i.ft, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i ], [ %.pre434, %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.hr = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %indvars.iv413
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !67 ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %indvars.iv413 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !65 ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 3
  %i.ic = add nsw i64 %i.ib, -3
  %i.id = icmp ult i64 %i.ic, -2
  br i1 %i.id, label %.lr.ph371.preheader, label %._crit_edge372

.lr.ph371.preheader:                              ; preds = %bb.bb
  %.pre435 = load ptr, ptr %i.ay, align 8, !tbaa !62
  %.pre436 = load ptr, ptr %13, align 8, !tbaa !65
  %.pre437 = load ptr, ptr %i.az, align 8, !tbaa !86
  %i.ie = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.if = trunc nuw nsw i64 %indvars.iv413 to i32
  br label %.lr.ph371

bb.bc:                                            ; preds = %bb.t
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.be

bb.bd:                                            ; preds = %bb.aj, %bb.w, %bb.v
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body250

.body250:                                         ; preds = %bb.z, %bb.bd
  %eh.lpad-body251 = phi { ptr, i32 } [ %i.ih, %bb.bd ], [ %i.ef, %bb.z ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.be

bb.be:                                            ; preds = %.body250, %bb.bc
  %.pn114 = phi { ptr, i32 } [ %eh.lpad-body251, %.body250 ], [ %i.ig, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.gm

bb.bf:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit143
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit342:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i167
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.loopexit.split-lp343:                            ; preds = %bb.cc
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

.lr.ph371:                                        ; preds = %.lr.ph371.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ij = phi ptr [ %.pre437, %.lr.ph371.preheader ], [ %i.kj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.ik = phi ptr [ %.pre436, %.lr.ph371.preheader ], [ %i.kk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.il = phi ptr [ %.pre435, %.lr.ph371.preheader ], [ %i.kl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv410 = phi i64 [ 1, %.lr.ph371.preheader ], [ %indvars.iv.next411, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.im = phi ptr [ %i.hx, %.lr.ph371.preheader ], [ %i.mq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.097369 = phi i32 [ %i.ht, %.lr.ph371.preheader ], [ %i.it, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.in = ptrtoaddr ptr %i.ij to i64              ; 2 uses
  %i.io = ptrtoint ptr %i.il to i64
  %i.ip = ptrtoint ptr %i.ik to i64               ; 4 uses
  %i.iq = sub i64 %i.io, %i.ip                    ; 3 uses
  %i.ir = ashr exact i64 %i.iq, 3                 ; 4 uses
  %i.is = add i64 %i.ir, %.lcssa363
  %i.it = trunc i64 %i.is to i32                  ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv410 ; 2 uses
  %.not.i = icmp eq ptr %i.il, %i.ij
  br i1 %.not.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph371
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !70 ; 2 uses
  store ptr %i.iv, ptr %i.il, align 8, !tbaa !70
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i147 = icmp eq i8 %i.iw, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i147, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iy = load atomic i32, ptr %i.ix monotonic, align 4
  %i.iz = add nsw i32 %i.iy, 1
  store atomic i32 %i.iz, ptr %i.ix monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.ja = atomicrmw add ptr %i.ix, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i

_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i:      ; preds = %bb.bi, %bb.bh
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  store ptr %i.jb, ptr %i.ay, align 8, !tbaa !62
  br label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit

bb.bj:                                            ; preds = %.lr.ph371
  %i.jc = icmp eq i64 %i.iq, 9223372036854775800
  br i1 %i.jc, label %.invoke, label %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bj
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ir, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i, %i.ir ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.ir
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 1152921504606846975)
  %i.jg = select i1 %i.je, i64 1152921504606846975, i64 %i.jf ; 3 uses
  %.not.i.i252 = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i252)
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #36
          to label %.noexc258 unwind label %.loopexit334 ; 11 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.iq
  %i.jk = load ptr, ptr %i.iu, align 8, !tbaa !70 ; 2 uses
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !70
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i253 = icmp eq i8 %i.jl, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i253, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc258
  %i.jn = load atomic i32, ptr %i.jm monotonic, align 4
  %i.jo = add nsw i32 %i.jn, 1
  store atomic i32 %i.jo, ptr %i.jm monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i254

bb.bl:                                            ; preds = %.noexc258
  %i.jp = atomicrmw add ptr %i.jm, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i254

_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i254:   ; preds = %bb.bl, %bb.bk
  %.not10.i.i.i.i = icmp eq ptr %i.ik, %i.ij
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i255.preheader

.lr.ph.i.i.i.i255.preheader:                      ; preds = %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i254
  %26 = add i64 %i.in, -8
  %27 = sub i64 %26, %i.ip                        ; 2 uses
  %i.jq = lshr i64 %27, 3
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %27, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i255.preheader666, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i255.preheader
  %scevgep = getelementptr i8, ptr %i.ji, i64 8
  %i.js = add i64 %i.in, -8
  %i.jt = sub i64 %i.js, %i.ip
  %i.ju = and i64 %i.jt, -8                       ; 2 uses
  %scevgep609 = getelementptr i8, ptr %scevgep, i64 %i.ju
  %scevgep610 = getelementptr i8, ptr %i.ik, i64 8
  %scevgep611 = getelementptr i8, ptr %scevgep610, i64 %i.ju
  %bound0 = icmp ult ptr %i.ji, %scevgep611
  %bound1 = icmp ult ptr %i.ik, %scevgep609
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i255.preheader666, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jr, 4611686018427387900     ; 3 uses
  %i.jv = shl i64 %n.vec, 3                       ; 2 uses
  %i.jw = getelementptr i8, ptr %i.ji, i64 %i.jv  ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ik, i64 %i.jv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ji, i64 %i.jy ; 2 uses
  %next.gep612 = getelementptr i8, ptr %i.ik, i64 %i.jy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.jz = getelementptr i8, ptr %next.gep612, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep612, align 8, !tbaa !70, !alias.scope !92, !noalias !87
  %wide.load613 = load <2 x ptr>, ptr %i.jz, align 8, !tbaa !70, !alias.scope !92, !noalias !87
  %i.ka = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !95, !noalias !92
  store <2 x ptr> %wide.load613, ptr %i.ka, align 8, !tbaa !70, !alias.scope !95, !noalias !92
  store <2 x ptr> splat (ptr null), ptr %next.gep612, align 8, !tbaa !70, !alias.scope !92, !noalias !87
  store <2 x ptr> splat (ptr null), ptr %i.jz, align 8, !tbaa !70, !alias.scope !92, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kb = icmp eq i64 %index.next, %n.vec
  br i1 %i.kb, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i255.preheader666

.lr.ph.i.i.i.i255.preheader666:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i255.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ji, %vector.memcheck ], [ %i.ji, %.lr.ph.i.i.i.i255.preheader ], [ %i.jw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ik, %vector.memcheck ], [ %i.ik, %.lr.ph.i.i.i.i255.preheader ], [ %i.jx, %middle.block ]
  br label %.lr.ph.i.i.i.i255

.lr.ph.i.i.i.i255:                                ; preds = %.lr.ph.i.i.i.i255.preheader666, %.lr.ph.i.i.i.i255
  %.012.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i255 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i255.preheader666 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.kd, %.lr.ph.i.i.i.i255 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i255.preheader666 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.kc = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !70, !alias.scope !90, !noalias !87
  store ptr %i.kc, ptr %.012.i.i.i.i, align 8, !tbaa !70, !alias.scope !87, !noalias !90
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !70, !alias.scope !90, !noalias !87
  %i.kd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i256 = icmp eq ptr %i.kd, %i.ij
  br i1 %.not.i.i.i.i256, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i255, !llvm.loop !98

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i255, %middle.block, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i254
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ji, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i254 ], [ %i.jw, %middle.block ], [ %i.ke, %.lr.ph.i.i.i.i255 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ik, null
  br i1 %.not.i23.i, label %.noexc148, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.kg = ptrtoint ptr %i.ij to i64
  %i.kh = sub i64 %i.kg, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.kh) #34
  br label %.noexc148

.noexc148:                                        ; preds = %bb.bm, %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.ji, ptr %13, align 8, !tbaa !65
  store ptr %i.kf, ptr %i.ay, align 8, !tbaa !62
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jg ; 2 uses
  store ptr %i.ki, ptr %i.az, align 8, !tbaa !86
  br label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc148, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i
  %i.kj = phi ptr [ %i.ki, %.noexc148 ], [ %i.ij, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i ]
  %i.kk = phi ptr [ %i.ji, %.noexc148 ], [ %i.ik, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i ]
  %i.kl = phi ptr [ %i.kf, %.noexc148 ], [ %i.jb, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i ]
  %i.km = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %bb.bn unwind label %bb.bw     ; 6 uses

bb.bn:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 4 uses
  store i32 %.097369, ptr %i.km, align 4
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %i.it, ptr %.sroa.5301.0..sroa_idx, align 4
  %i.ko = load ptr, ptr %i.ba, align 8, !tbaa !99 ; 8 uses
  %i.kp = load ptr, ptr %i.bb, align 8, !tbaa !102
  %.not.i.i150 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i.i150, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.km, ptr %i.ko, align 8, !tbaa !103
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kq, align 8, !tbaa !105
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store ptr %i.kn, ptr %i.kr, align 8, !tbaa !106
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store ptr %i.ks, ptr %i.ba, align 8, !tbaa !99
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.kt = load ptr, ptr %14, align 8, !tbaa !107  ; 5 uses
  %i.ku = ptrtoint ptr %i.ko to i64
  %i.kv = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 3 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775800
  br i1 %i.kx, label %bb.bq, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #35
          to label %.noexc274 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit158.loopexit.split-lp

.noexc274:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bp
  %i.ky = sdiv exact i64 %i.kw, 24                ; 3 uses
  %.sroa.speculated.i.i259 = call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i259, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = call i64 @llvm.umin.i64(i64 %i.kz, i64 384307168202282325)
  %i.lc = select i1 %i.la, i64 384307168202282325, i64 %i.lb ; 3 uses
  %.not.i.i260 = icmp ne i64 %i.lc, 0
  call void @llvm.assume(i1 %.not.i.i260)
  %i.ld = mul nuw nsw i64 %i.lc, 24
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #36
          to label %.noexc275 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit158.loopexit ; 5 uses

.noexc275:                                        ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw ; 3 uses
  store ptr %i.km, ptr %i.lf, align 8, !tbaa !103
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.kn, ptr %i.lg, align 8, !tbaa !105
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store ptr %i.kn, ptr %i.lh, align 8, !tbaa !106
  %.not10.i.i.i.i261 = icmp eq ptr %i.kt, %i.ko
  br i1 %.not10.i.i.i.i261, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i262

.lr.ph.i.i.i.i262:                                ; preds = %.noexc275, %.lr.ph.i.i.i.i262
  %.012.i.i.i.i263 = phi ptr [ %i.ln, %.lr.ph.i.i.i.i262 ], [ %i.le, %.noexc275 ] ; 3 uses
  %.0911.i.i.i.i264 = phi ptr [ %i.lm, %.lr.ph.i.i.i.i262 ], [ %i.kt, %.noexc275 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.li = load <2 x ptr>, ptr %.0911.i.i.i.i264, align 8, !tbaa !113, !alias.scope !111, !noalias !108
  store <2 x ptr> %i.li, ptr %.012.i.i.i.i263, align 8, !tbaa !113, !alias.scope !108, !noalias !111
  %i.lj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i263, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i264, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !106, !alias.scope !111, !noalias !108
  store ptr %i.ll, ptr %i.lj, align 8, !tbaa !106, !alias.scope !108, !noalias !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i264, i8 0, i64 24, i1 false), !alias.scope !111, !noalias !108
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i264, i64 24 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i263, i64 24 ; 2 uses
  %.not.i.i.i.i265 = icmp eq ptr %i.lm, %i.ko
  br i1 %.not.i.i.i.i265, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i262, !llvm.loop !114

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i262, %.noexc275
  %.0.lcssa.i.i.i.i266 = phi ptr [ %i.le, %.noexc275 ], [ %i.ln, %.lr.ph.i.i.i.i262 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i266, i64 24
  %.not.i23.i273 = icmp eq ptr %i.kt, null
  br i1 %.not.i23.i273, label %.noexc151, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.lp = load ptr, ptr %i.bb, align 8, !tbaa !102
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %i.lq, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.lr) #34
  br label %.noexc151

.noexc151:                                        ; preds = %bb.br, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.le, ptr %14, align 8, !tbaa !107
  store ptr %i.lo, ptr %i.ba, align 8, !tbaa !99
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.ls, ptr %i.bb, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bo, %.noexc151
  %i.lt = load ptr, ptr %i.bc, align 8, !tbaa !105 ; 4 uses
  %i.lu = load ptr, ptr %i.bd, align 8, !tbaa !106
  %.not.i153 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i153, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store i32 %i.ie, ptr %i.lt, align 4, !tbaa !67
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store ptr %i.lv, ptr %i.bc, align 8, !tbaa !105
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorISZ_INS7_7Point_2IT1_EESaIS12_EESaIS14_EERNS3_15PlainObjectBaseIT2_EERNS19_IT3_EERNS19_IT4_EERNS19_IT5_EE:bb.a
          to label %bb.dh unwind label %bb.du

bb.dh:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit186
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !122
  %i.rp = load ptr, ptr %3, align 8, !tbaa !28
  %i.rq = load i64, ptr %i.ov, align 8, !tbaa !31
  %i.rr = getelementptr [16 x i8], ptr %i.rp, i64 %i.qu
  %i.rs = getelementptr [16 x i8], ptr %i.rr, i64 %i.rq
  invoke void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERSH_(ptr noundef nonnull align 8 dereferenceable(9) %20, ptr noundef nonnull align 8 dereferenceable(9) %i.rs)
          to label %bb.di unwind label %bb.dv

bb.di:                                            ; preds = %bb.dh
  %i.rt = load ptr, ptr %20, align 8, !tbaa !70   ; 4 uses
  %.not.i.i188 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i188, label %_ZN4CGAL6HandleD2Ev.exit190, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ru = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i189 = icmp eq i8 %i.ru, 0
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 3 uses
  %i.rw = load atomic i32, ptr %i.rv monotonic, align 4 ; 2 uses
  %i.rx = icmp eq i32 %i.rw, 1                    ; 2 uses
  br i1 %.not.i.i.i189, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.rx, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ry = load ptr, ptr %i.rt, align 8, !tbaa !26
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(12) %i.rt) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit190

bb.dm:                                            ; preds = %bb.dk
  %i.sb = add nsw i32 %i.rw, -1
  store atomic i32 %i.sb, ptr %i.rv monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit190

bb.dn:                                            ; preds = %bb.dj
  br i1 %i.rx, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sc = atomicrmw sub ptr %i.rv, i32 1 release, align 4
  %i.sd = icmp eq i32 %i.sc, 1
  br i1 %i.sd, label %bb.dp, label %_ZN4CGAL6HandleD2Ev.exit190

bb.dp:                                            ; preds = %bb.do, %bb.dn
  fence acquire
  %i.se = load ptr, ptr %20, align 8, !tbaa !70   ; 3 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %_ZN4CGAL6HandleD2Ev.exit190, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sg = load ptr, ptr %i.se, align 8, !tbaa !26
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load ptr, ptr %i.sh, align 8
  call void %i.si(ptr noundef nonnull align 8 dereferenceable(12) %i.se) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit190

_ZN4CGAL6HandleD2Ev.exit190:                      ; preds = %bb.di, %bb.dl, %bb.dm, %bb.do, %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %i.sj = load ptr, ptr %i.cx, align 8, !tbaa !62 ; 2 uses
  %i.sk = load ptr, ptr %13, align 8, !tbaa !65   ; 3 uses
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sl, %i.sm
  %i.so = ashr exact i64 %i.sn, 3
  %i.sp = icmp ugt i64 %i.so, %indvars.iv.next426
  br i1 %i.sp, label %bb.cw, label %._crit_edge383, !llvm.loop !125

bb.dr:                                            ; preds = %bb.cw
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.cx
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %19) #22
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn107 = phi { ptr, i32 } [ %i.sr, %bb.ds ], [ %i.sq, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.gm

bb.du:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit186
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dh
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %20) #22
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.pn109 = phi { ptr, i32 } [ %i.st, %bb.dv ], [ %i.ss, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gm

bb.dx:                                            ; preds = %._crit_edge383
  %i.su = invoke noundef zeroext i1 @_ZN3igl14list_to_matrixIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKSt6vectorIT_SaIS5_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.dy unwind label %bb.ci     ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.sv = icmp sgt i32 %i.at, 0
  br i1 %i.sv, label %.lr.ph386, label %._crit_edge387

.lr.ph386:                                        ; preds = %bb.dy
  %i.sw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %wide.trip.count431 = and i64 %.lcssa363, 2147483647
  br label %bb.dz

._crit_edge387.loopexit:                          ; preds = %_ZN4CGAL6HandleD2Ev.exit196
  %.pre444 = load ptr, ptr %i.sw, align 8, !tbaa !69
  %.pre445 = load ptr, ptr %13, align 8, !tbaa !69
  %.pre446 = load ptr, ptr %i.cx, align 8, !tbaa !69
  %.pre447 = load ptr, ptr %21, align 8, !tbaa !69
  %i.sy = ptrtoint ptr %.pre444 to i64
  br label %._crit_edge387

._crit_edge387:                                   ; preds = %._crit_edge387.loopexit, %bb.dy
  %i.sz = phi ptr [ %.pre447, %._crit_edge387.loopexit ], [ null, %bb.dy ] ; 2 uses
  %i.ta = phi ptr [ %.pre446, %._crit_edge387.loopexit ], [ %i.qp, %bb.dy ]
  %i.tb = phi ptr [ %.pre445, %._crit_edge387.loopexit ], [ %i.qq, %bb.dy ]
  %i.tc = phi i64 [ %i.sy, %._crit_edge387.loopexit ], [ 0, %bb.dy ]
  %i.td = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.te = ptrtoint ptr %i.sz to i64
  %i.tf = sub i64 %i.tc, %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.sz, i64 %i.tf
  invoke void @_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.tg, ptr %i.tb, ptr %i.ta)
          to label %bb.ep unwind label %bb.gh

bb.dz:                                            ; preds = %.lr.ph386, %_ZN4CGAL6HandleD2Ev.exit196
  %indvars.iv428 = phi i64 [ 0, %.lr.ph386 ], [ %indvars.iv.next429, %_ZN4CGAL6HandleD2Ev.exit196 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %indvars.iv428, ptr %i.b, align 8, !tbaa !68
  invoke void @_ZN3igl8copyleft4cgal12row_to_pointIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEEENS3_7Point_2IT_EERKNS5_10MatrixBaseIT0_EERKNSR_5IndexE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2") align 8 %23, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ea unwind label %bb.em

bb.ea:                                            ; preds = %bb.dz
  %i.th = load ptr, ptr %i.sw, align 8, !tbaa !62 ; 6 uses
  %i.ti = load ptr, ptr %i.sx, align 8, !tbaa !86
  %.not.i.i192 = icmp eq ptr %i.th, %i.ti
  br i1 %.not.i.i192, label %bb.eb, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.ea
  %i.tj = load ptr, ptr %23, align 8, !tbaa !70
  store ptr %i.tj, ptr %i.th, align 8, !tbaa !70
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store ptr %i.tk, ptr %i.sw, align 8, !tbaa !62
  br label %_ZN4CGAL6HandleD2Ev.exit196

bb.eb:                                            ; preds = %bb.ea
  %i.tl = load ptr, ptr %21, align 8, !tbaa !65   ; 10 uses
  %i.tm = ptrtoint ptr %i.th to i64               ; 3 uses
  %i.tn = ptrtoint ptr %i.tl to i64               ; 3 uses
  %i.to = sub i64 %i.tm, %i.tn                    ; 4 uses
  %i.tp = icmp eq i64 %i.to, 9223372036854775800
  br i1 %i.tp, label %bb.ec, label %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i276

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #35
          to label %.noexc294 unwind label %.loopexit.split-lp

.noexc294:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i276: ; preds = %bb.eb
  %i.tq = ashr exact i64 %i.to, 3                 ; 3 uses
  %.sroa.speculated.i.i277 = call i64 @llvm.umax.i64(i64 %i.tq, i64 1)
  %i.tr = add nsw i64 %.sroa.speculated.i.i277, %i.tq ; 2 uses
  %i.ts = icmp ult i64 %i.tr, %i.tq
  %i.tt = call i64 @llvm.umin.i64(i64 %i.tr, i64 1152921504606846975)
  %i.tu = select i1 %i.ts, i64 1152921504606846975, i64 %i.tt ; 3 uses
  %.not.i.i278 = icmp ne i64 %i.tu, 0
  call void @llvm.assume(i1 %.not.i.i278)
  %i.tv = shl nuw nsw i64 %i.tu, 3
  %i.tw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tv) #36
          to label %.noexc295 unwind label %.loopexit ; 10 uses

.noexc295:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i276
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.to
  %i.ty = load ptr, ptr %23, align 8, !tbaa !70
  store ptr %i.ty, ptr %i.tx, align 8, !tbaa !70
  store ptr null, ptr %23, align 8, !tbaa !70
  %.not10.i.i.i.i279 = icmp eq ptr %i.tl, %i.th
  br i1 %.not10.i.i.i.i279, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i291, label %.lr.ph.i.i.i.i280.preheader

.lr.ph.i.i.i.i280.preheader:                      ; preds = %.noexc295
  %28 = add i64 %i.tm, -8
  %29 = sub i64 %28, %i.tn                        ; 2 uses
  %i.tz = lshr i64 %29, 3
  %i.ua = add nuw nsw i64 %i.tz, 1                ; 2 uses
  %min.iters.check648 = icmp ult i64 %29, 56
  br i1 %min.iters.check648, label %.lr.ph.i.i.i.i280.preheader662, label %vector.memcheck639

vector.memcheck639:                               ; preds = %.lr.ph.i.i.i.i280.preheader
  %scevgep640 = getelementptr i8, ptr %i.tw, i64 8
  %i.ub = add i64 %i.tm, -8
  %i.uc = sub i64 %i.ub, %i.tn
  %i.ud = and i64 %i.uc, -8                       ; 2 uses
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %i.ud
  %scevgep642 = getelementptr i8, ptr %i.tl, i64 8
  %scevgep643 = getelementptr i8, ptr %scevgep642, i64 %i.ud
  %bound0644 = icmp ult ptr %i.tw, %scevgep643
  %bound1645 = icmp ult ptr %i.tl, %scevgep641
  %found.conflict646 = and i1 %bound0644, %bound1645
  br i1 %found.conflict646, label %.lr.ph.i.i.i.i280.preheader662, label %vector.ph649

vector.ph649:                                     ; preds = %vector.memcheck639
  %n.vec650 = and i64 %i.ua, 4611686018427387900  ; 3 uses
  %i.ue = shl i64 %n.vec650, 3                    ; 2 uses
  %i.uf = getelementptr i8, ptr %i.tw, i64 %i.ue  ; 2 uses
  %i.ug = getelementptr i8, ptr %i.tl, i64 %i.ue
  br label %vector.body651

vector.body651:                                   ; preds = %vector.body651, %vector.ph649
  %index652 = phi i64 [ 0, %vector.ph649 ], [ %index.next657, %vector.body651 ] ; 2 uses
  %i.uh = shl i64 %index652, 3                    ; 2 uses
  %next.gep653 = getelementptr i8, ptr %i.tw, i64 %i.uh ; 2 uses
  %next.gep654 = getelementptr i8, ptr %i.tl, i64 %i.uh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ui = getelementptr i8, ptr %next.gep654, i64 16 ; 2 uses
  %wide.load655 = load <2 x ptr>, ptr %next.gep654, align 8, !tbaa !70, !alias.scope !131, !noalias !126
  %wide.load656 = load <2 x ptr>, ptr %i.ui, align 8, !tbaa !70, !alias.scope !131, !noalias !126
  %i.uj = getelementptr i8, ptr %next.gep653, i64 16
  store <2 x ptr> %wide.load655, ptr %next.gep653, align 8, !tbaa !70, !alias.scope !134, !noalias !131
  store <2 x ptr> %wide.load656, ptr %i.uj, align 8, !tbaa !70, !alias.scope !134, !noalias !131
  store <2 x ptr> splat (ptr null), ptr %next.gep654, align 8, !tbaa !70, !alias.scope !131, !noalias !126
  store <2 x ptr> splat (ptr null), ptr %i.ui, align 8, !tbaa !70, !alias.scope !131, !noalias !126
  %index.next657 = add nuw i64 %index652, 4       ; 2 uses
  %i.uk = icmp eq i64 %index.next657, %n.vec650
  br i1 %i.uk, label %middle.block658, label %vector.body651, !llvm.loop !136

middle.block658:                                  ; preds = %vector.body651
  %cmp.n659 = icmp eq i64 %i.ua, %n.vec650
  br i1 %cmp.n659, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i291, label %.lr.ph.i.i.i.i280.preheader662

.lr.ph.i.i.i.i280.preheader662:                   ; preds = %vector.memcheck639, %.lr.ph.i.i.i.i280.preheader, %middle.block658
  %.012.i.i.i.i281.ph = phi ptr [ %i.tw, %vector.memcheck639 ], [ %i.tw, %.lr.ph.i.i.i.i280.preheader ], [ %i.uf, %middle.block658 ]
  %.0911.i.i.i.i282.ph = phi ptr [ %i.tl, %vector.memcheck639 ], [ %i.tl, %.lr.ph.i.i.i.i280.preheader ], [ %i.ug, %middle.block658 ]
  br label %.lr.ph.i.i.i.i280

.lr.ph.i.i.i.i280:                                ; preds = %.lr.ph.i.i.i.i280.preheader662, %.lr.ph.i.i.i.i280
  %.012.i.i.i.i281 = phi ptr [ %i.un, %.lr.ph.i.i.i.i280 ], [ %.012.i.i.i.i281.ph, %.lr.ph.i.i.i.i280.preheader662 ] ; 2 uses
  %.0911.i.i.i.i282 = phi ptr [ %i.um, %.lr.ph.i.i.i.i280 ], [ %.0911.i.i.i.i282.ph, %.lr.ph.i.i.i.i280.preheader662 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ul = load ptr, ptr %.0911.i.i.i.i282, align 8, !tbaa !70, !alias.scope !129, !noalias !126
  store ptr %i.ul, ptr %.012.i.i.i.i281, align 8, !tbaa !70, !alias.scope !126, !noalias !129
  store ptr null, ptr %.0911.i.i.i.i282, align 8, !tbaa !70, !alias.scope !129, !noalias !126
  %i.um = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i282, i64 8 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i281, i64 8 ; 2 uses
  %.not.i.i.i.i283 = icmp eq ptr %i.um, %i.th
  br i1 %.not.i.i.i.i283, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i291, label %.lr.ph.i.i.i.i280, !llvm.loop !137

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i291: ; preds = %.lr.ph.i.i.i.i280, %middle.block658, %.noexc295
  %.0.lcssa.i.i.i.i285 = phi ptr [ %i.tw, %.noexc295 ], [ %i.uf, %middle.block658 ], [ %i.un, %.lr.ph.i.i.i.i280 ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i285, i64 8
  %.not.i23.i293 = icmp eq ptr %i.tl, null
  br i1 %.not.i23.i293, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i291
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.to) #34
  br label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i291, %bb.ed
  store ptr %i.tw, ptr %21, align 8, !tbaa !65
  store ptr %i.uo, ptr %i.sw, align 8, !tbaa !62
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.tu
  store ptr %i.up, ptr %i.sx, align 8, !tbaa !86
  %.pr331 = load ptr, ptr %23, align 8, !tbaa !70 ; 4 uses
  %.not.i.i194 = icmp eq ptr %.pr331, null
  br i1 %.not.i.i194, label %_ZN4CGAL6HandleD2Ev.exit196, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit
  %i.uq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i195 = icmp eq i8 %i.uq, 0
  %i.ur = getelementptr inbounds nuw i8, ptr %.pr331, i64 8 ; 3 uses
  %i.us = load atomic i32, ptr %i.ur monotonic, align 4 ; 2 uses
  %i.ut = icmp eq i32 %i.us, 1                    ; 2 uses
  br i1 %.not.i.i.i195, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.ut, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.uu = load ptr, ptr %.pr331, align 8, !tbaa !26
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(12) %.pr331) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit196

bb.eh:                                            ; preds = %bb.ef
  %i.ux = add nsw i32 %i.us, -1
  store atomic i32 %i.ux, ptr %i.ur monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit196

bb.ei:                                            ; preds = %bb.ee
  br i1 %i.ut, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.uy = atomicrmw sub ptr %i.ur, i32 1 release, align 4
  %i.uz = icmp eq i32 %i.uy, 1
  br i1 %i.uz, label %bb.ek, label %_ZN4CGAL6HandleD2Ev.exit196

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  fence acquire
  %i.va = load ptr, ptr %23, align 8, !tbaa !70   ; 3 uses
  %i.vb = icmp eq ptr %i.va, null
  br i1 %i.vb, label %_ZN4CGAL6HandleD2Ev.exit196, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vc = load ptr, ptr %i.va, align 8, !tbaa !26
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(12) %i.va) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit196

_ZN4CGAL6HandleD2Ev.exit196:                      ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread, %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit, %bb.eg, %bb.eh, %bb.ej, %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge387.loopexit, label %bb.dz, !llvm.loop !138

bb.em:                                            ; preds = %bb.dz
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i276
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.loopexit.split-lp:                               ; preds = %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.en:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #22
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.en ], [ %i.vf, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.gl

bb.ep:                                            ; preds = %._crit_edge387
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl6uniqueIN4CGAL7Point_2INS1_5EpeckEEEEEvRKSt6vectorIT_SaIS6_EERS8_RS5_ImSaImEESE_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.eq unwind label %bb.gi

bb.eq:                                            ; preds = %bb.ep
  %i.vg = load ptr, ptr %25, align 8, !tbaa !139  ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !142 ; 2 uses
  %.not4.i = icmp eq ptr %i.vg, %i.vi
  br i1 %.not4.i, label %_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS6_INS9_13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESR_EEvRKNS5_10MatrixBaseIT_EERKNSS_IT0_EERKSt6vectorIS11_INS9_7Point_2IT1_EESaIS14_EESaIS16_EERNS5_15PlainObjectBaseIT2_EERNS1B_IT3_EERNS1B_IT4_EERNS1B_IT5_EEEUlRmE_ESX_ST_ST_SX_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.eq
  %i.vj = load ptr, ptr %24, align 8, !tbaa !139
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %.lr.ph.i
  %.05.i = phi ptr [ %i.vg, %.lr.ph.i ], [ %i.vn, %bb.er ] ; 3 uses
  %i.vk = load i64, ptr %.05.i, align 8, !tbaa !68
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vk
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !68
  store i64 %i.vm, ptr %.05.i, align 8, !tbaa !68
  %i.vn = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i197 = icmp eq ptr %i.vn, %i.vi
  br i1 %.not.i197, label %_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS6_INS9_13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESR_EEvRKNS5_10MatrixBaseIT_EERKNSS_IT0_EERKSt6vectorIS11_INS9_7Point_2IT1_EESaIS14_EESaIS16_EERNS5_15PlainObjectBaseIT2_EERNS1B_IT3_EERNS1B_IT4_EERNS1B_IT5_EEEUlRmE_ESX_ST_ST_SX_.exit, label %bb.er, !llvm.loop !143

_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS6_INS9_13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESR_EEvRKNS5_10MatrixBaseIT_EERKNSS_IT0_EERKSt6vectorIS11_INS9_7Point_2IT1_EESaIS14_EESaIS16_EERNS5_15PlainObjectBaseIT2_EERNS1B_IT3_EERNS1B_IT4_EERNS1B_IT5_EEEUlRmE_ESX_ST_ST_SX_.exit: ; preds = %bb.er, %bb.eq
  %i.vo = invoke noundef zeroext i1 @_ZN3igl14list_to_matrixImN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKSt6vectorIT_SaIS5_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.es unwind label %bb.gi     ; 0 uses

bb.es:                                            ; preds = %_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS6_INS9_13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESR_EEvRKNS5_10MatrixBaseIT_EERKNSS_IT0_EERKSt6vectorIS11_INS9_7Point_2IT1_EESaIS14_EESaIS16_EERNS5_15PlainObjectBaseIT2_EERNS1B_IT3_EERNS1B_IT4_EERNS1B_IT5_EEEUlRmE_ESX_ST_ST_SX_.exit
  %i.vp = load ptr, ptr %25, align 8, !tbaa !139  ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.et

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckESL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKSt6vectorISY_INS5_7Point_2IT1_EESaIS11_EESaIS13_EERNS3_15PlainObjectBaseIT2_EERNS18_IT3_EERNS18_IT4_EERNS18_IT5_EE:bb.a
  %i.ha = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !70 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 0
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 3 uses
  %i.hd = load atomic i32, ptr %i.hc monotonic, align 4 ; 2 uses
  %i.he = icmp eq i32 %i.hd, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.he, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(12) %i.ha) #22, !inline_history !84
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.hi = add nsw i32 %i.hd, -1
  store atomic i32 %i.hi, ptr %i.hc monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

bb.au:                                            ; preds = %bb.aq
  br i1 %i.he, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hj = atomicrmw sub ptr %i.hc, i32 1 release, align 4
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %bb.aw, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av, %bb.au
  fence acquire
  %i.hl = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !26
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(12) %i.hl) #22, !inline_history !84
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %.lr.ph.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, %i.ge
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !85

_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.gz, ptr %i.fr, align 8, !tbaa !62
  %.pre423 = load ptr, ptr %11, align 8, !tbaa !19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.hr = phi ptr [ %i.fu, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEEET_SB_SB_.exit ], [ %i.fu, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i ], [ %.pre423, %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i ]
  %i.hs = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %indvars.iv402
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !67 ; 2 uses
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.hr, i64 %indvars.iv402 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !65 ; 2 uses
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = ashr exact i64 %i.ib, 3
  %i.id = add nsw i64 %i.ic, -3
  %i.ie = icmp ult i64 %i.id, -2
  br i1 %i.ie, label %.lr.ph360.preheader, label %._crit_edge361

.lr.ph360.preheader:                              ; preds = %bb.ay
  %.pre424 = load ptr, ptr %i.ay, align 8, !tbaa !62
  %.pre425 = load ptr, ptr %13, align 8, !tbaa !65
  %.pre426 = load ptr, ptr %i.az, align 8, !tbaa !86
  %i.if = trunc nuw nsw i64 %indvars.iv402 to i32
  %i.ig = trunc nuw nsw i64 %indvars.iv402 to i32
  br label %.lr.ph360

bb.az:                                            ; preds = %bb.q
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ag, %bb.t, %bb.s
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body240

.body240:                                         ; preds = %bb.w, %bb.ba
  %eh.lpad-body241 = phi { ptr, i32 } [ %i.ii, %bb.ba ], [ %i.eg, %bb.w ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.bb

bb.bb:                                            ; preds = %.body240, %bb.az
  %.pn110 = phi { ptr, i32 } [ %eh.lpad-body241, %.body240 ], [ %i.ih, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.fy

bb.bc:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.loopexit332:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i161
  %lpad.loopexit334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.loopexit.split-lp333:                            ; preds = %bb.bz
  %lpad.loopexit.split-lp335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ik = phi ptr [ %.pre426, %.lr.ph360.preheader ], [ %i.kk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.il = phi ptr [ %.pre425, %.lr.ph360.preheader ], [ %i.kl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.im = phi ptr [ %.pre424, %.lr.ph360.preheader ], [ %i.km, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv399 = phi i64 [ 1, %.lr.ph360.preheader ], [ %indvars.iv.next400, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.in = phi ptr [ %i.hy, %.lr.ph360.preheader ], [ %i.mr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.095358 = phi i32 [ %i.hu, %.lr.ph360.preheader ], [ %i.iu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.io = ptrtoaddr ptr %i.ik to i64              ; 2 uses
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = ptrtoint ptr %i.il to i64               ; 4 uses
  %i.ir = sub i64 %i.ip, %i.iq                    ; 3 uses
  %i.is = ashr exact i64 %i.ir, 3                 ; 4 uses
  %i.it = add i64 %i.is, %.lcssa353
  %i.iu = trunc i64 %i.it to i32                  ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv399 ; 2 uses
  %.not.i = icmp eq ptr %i.im, %i.ik
  br i1 %.not.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph360
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !70 ; 2 uses
  store ptr %i.iw, ptr %i.im, align 8, !tbaa !70
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i141 = icmp eq i8 %i.ix, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i141, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iz = load atomic i32, ptr %i.iy monotonic, align 4
  %i.ja = add nsw i32 %i.iz, 1
  store atomic i32 %i.ja, ptr %i.iy monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.jb = atomicrmw add ptr %i.iy, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i

_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i:      ; preds = %bb.bf, %bb.be
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  store ptr %i.jc, ptr %i.ay, align 8, !tbaa !62
  br label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit

bb.bg:                                            ; preds = %.lr.ph360
  %i.jd = icmp eq i64 %i.ir, 9223372036854775800
  br i1 %i.jd, label %.invoke, label %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i, %i.is ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.is
  %i.jg = call i64 @llvm.umin.i64(i64 %i.je, i64 1152921504606846975)
  %i.jh = select i1 %i.jf, i64 1152921504606846975, i64 %i.jg ; 3 uses
  %.not.i.i242 = icmp ne i64 %i.jh, 0
  call void @llvm.assume(i1 %.not.i.i242)
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #36
          to label %.noexc248 unwind label %.loopexit324 ; 11 uses

.noexc248:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.ir
  %i.jl = load ptr, ptr %i.iv, align 8, !tbaa !70 ; 2 uses
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !70
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i243 = icmp eq i8 %i.jm, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i243, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.noexc248
  %i.jo = load atomic i32, ptr %i.jn monotonic, align 4
  %i.jp = add nsw i32 %i.jo, 1
  store atomic i32 %i.jp, ptr %i.jn monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i244

bb.bi:                                            ; preds = %.noexc248
  %i.jq = atomicrmw add ptr %i.jn, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i244

_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i244:   ; preds = %bb.bi, %bb.bh
  %.not10.i.i.i.i = icmp eq ptr %i.il, %i.ik
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i245.preheader

.lr.ph.i.i.i.i245.preheader:                      ; preds = %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i244
  %25 = add i64 %i.io, -8
  %26 = sub i64 %25, %i.iq                        ; 2 uses
  %i.jr = lshr i64 %26, 3
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %26, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i245.preheader652, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i245.preheader
  %scevgep = getelementptr i8, ptr %i.jj, i64 8
  %i.jt = add i64 %i.io, -8
  %i.ju = sub i64 %i.jt, %i.iq
  %i.jv = and i64 %i.ju, -8                       ; 2 uses
  %scevgep595 = getelementptr i8, ptr %scevgep, i64 %i.jv
  %scevgep596 = getelementptr i8, ptr %i.il, i64 8
  %scevgep597 = getelementptr i8, ptr %scevgep596, i64 %i.jv
  %bound0 = icmp ult ptr %i.jj, %scevgep597
  %bound1 = icmp ult ptr %i.il, %scevgep595
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i245.preheader652, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.js, 4611686018427387900     ; 3 uses
  %i.jw = shl i64 %n.vec, 3                       ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jj, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %i.il, i64 %i.jw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jj, i64 %i.jz ; 2 uses
  %next.gep598 = getelementptr i8, ptr %i.il, i64 %i.jz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ka = getelementptr i8, ptr %next.gep598, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep598, align 8, !tbaa !70, !alias.scope !170, !noalias !165
  %wide.load599 = load <2 x ptr>, ptr %i.ka, align 8, !tbaa !70, !alias.scope !170, !noalias !165
  %i.kb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !173, !noalias !170
  store <2 x ptr> %wide.load599, ptr %i.kb, align 8, !tbaa !70, !alias.scope !173, !noalias !170
  store <2 x ptr> splat (ptr null), ptr %next.gep598, align 8, !tbaa !70, !alias.scope !170, !noalias !165
  store <2 x ptr> splat (ptr null), ptr %i.ka, align 8, !tbaa !70, !alias.scope !170, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.js, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i245.preheader652

.lr.ph.i.i.i.i245.preheader652:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i245.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.jj, %vector.memcheck ], [ %i.jj, %.lr.ph.i.i.i.i245.preheader ], [ %i.jx, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.il, %vector.memcheck ], [ %i.il, %.lr.ph.i.i.i.i245.preheader ], [ %i.jy, %middle.block ]
  br label %.lr.ph.i.i.i.i245

.lr.ph.i.i.i.i245:                                ; preds = %.lr.ph.i.i.i.i245.preheader652, %.lr.ph.i.i.i.i245
  %.012.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i245 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i245.preheader652 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i245 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i245.preheader652 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.kd = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !70, !alias.scope !168, !noalias !165
  store ptr %i.kd, ptr %.012.i.i.i.i, align 8, !tbaa !70, !alias.scope !165, !noalias !168
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !70, !alias.scope !168, !noalias !165
  %i.ke = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i246 = icmp eq ptr %i.ke, %i.ik
  br i1 %.not.i.i.i.i246, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i245, !llvm.loop !176

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i245, %middle.block, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i244
  %.0.lcssa.i.i.i.i = phi ptr [ %i.jj, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i244 ], [ %i.jx, %middle.block ], [ %i.kf, %.lr.ph.i.i.i.i245 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.il, null
  br i1 %.not.i23.i, label %.noexc142, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.kh = ptrtoint ptr %i.ik to i64
  %i.ki = sub i64 %i.kh, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.ki) #34
  br label %.noexc142

.noexc142:                                        ; preds = %bb.bj, %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.jj, ptr %13, align 8, !tbaa !65
  store ptr %i.kg, ptr %i.ay, align 8, !tbaa !62
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jh ; 2 uses
  store ptr %i.kj, ptr %i.az, align 8, !tbaa !86
  br label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc142, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i
  %i.kk = phi ptr [ %i.kj, %.noexc142 ], [ %i.ik, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i ]
  %i.kl = phi ptr [ %i.jj, %.noexc142 ], [ %i.il, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i ]
  %i.km = phi ptr [ %i.kg, %.noexc142 ], [ %i.jc, %_ZN4CGAL7Point_2INS_5EpeckEEC2ERKS2_.exit.i ]
  %i.kn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %bb.bk unwind label %bb.bt     ; 6 uses

bb.bk:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backERKS3_.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 4 uses
  store i32 %.095358, ptr %i.kn, align 4
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 %i.iu, ptr %.sroa.5291.0..sroa_idx, align 4
  %i.kp = load ptr, ptr %i.ba, align 8, !tbaa !99 ; 8 uses
  %i.kq = load ptr, ptr %i.bb, align 8, !tbaa !102
  %.not.i.i144 = icmp eq ptr %i.kp, %i.kq
  br i1 %.not.i.i144, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.kn, ptr %i.kp, align 8, !tbaa !103
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store ptr %i.ko, ptr %i.kr, align 8, !tbaa !105
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store ptr %i.ko, ptr %i.ks, align 8, !tbaa !106
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  store ptr %i.kt, ptr %i.ba, align 8, !tbaa !99
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ku = load ptr, ptr %14, align 8, !tbaa !107  ; 5 uses
  %i.kv = ptrtoint ptr %i.kp to i64
  %i.kw = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kx = sub i64 %i.kv, %i.kw                    ; 3 uses
  %i.ky = icmp eq i64 %i.kx, 9223372036854775800
  br i1 %i.ky, label %bb.bn, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #35
          to label %.noexc264 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit152.loopexit.split-lp

.noexc264:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bm
  %i.kz = sdiv exact i64 %i.kx, 24                ; 3 uses
  %.sroa.speculated.i.i249 = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.la = add nsw i64 %.sroa.speculated.i.i249, %i.kz ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.kz
  %i.lc = call i64 @llvm.umin.i64(i64 %i.la, i64 384307168202282325)
  %i.ld = select i1 %i.lb, i64 384307168202282325, i64 %i.lc ; 3 uses
  %.not.i.i250 = icmp ne i64 %i.ld, 0
  call void @llvm.assume(i1 %.not.i.i250)
  %i.le = mul nuw nsw i64 %i.ld, 24
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #36
          to label %.noexc265 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit152.loopexit ; 5 uses

.noexc265:                                        ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kx ; 3 uses
  store ptr %i.kn, ptr %i.lg, align 8, !tbaa !103
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.ko, ptr %i.lh, align 8, !tbaa !105
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store ptr %i.ko, ptr %i.li, align 8, !tbaa !106
  %.not10.i.i.i.i251 = icmp eq ptr %i.ku, %i.kp
  br i1 %.not10.i.i.i.i251, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i252

.lr.ph.i.i.i.i252:                                ; preds = %.noexc265, %.lr.ph.i.i.i.i252
  %.012.i.i.i.i253 = phi ptr [ %i.lo, %.lr.ph.i.i.i.i252 ], [ %i.lf, %.noexc265 ] ; 3 uses
  %.0911.i.i.i.i254 = phi ptr [ %i.ln, %.lr.ph.i.i.i.i252 ], [ %i.ku, %.noexc265 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.lj = load <2 x ptr>, ptr %.0911.i.i.i.i254, align 8, !tbaa !113, !alias.scope !180, !noalias !177
  store <2 x ptr> %i.lj, ptr %.012.i.i.i.i253, align 8, !tbaa !113, !alias.scope !177, !noalias !180
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i253, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i254, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !106, !alias.scope !180, !noalias !177
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !106, !alias.scope !177, !noalias !180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i254, i8 0, i64 24, i1 false), !alias.scope !180, !noalias !177
  %i.ln = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i254, i64 24 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i253, i64 24 ; 2 uses
  %.not.i.i.i.i255 = icmp eq ptr %i.ln, %i.kp
  br i1 %.not.i.i.i.i255, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i252, !llvm.loop !114

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i252, %.noexc265
  %.0.lcssa.i.i.i.i256 = phi ptr [ %i.lf, %.noexc265 ], [ %i.lo, %.lr.ph.i.i.i.i252 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i256, i64 24
  %.not.i23.i263 = icmp eq ptr %i.ku, null
  br i1 %.not.i23.i263, label %.noexc145, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.lq = load ptr, ptr %i.bb, align 8, !tbaa !102
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = sub i64 %i.lr, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.ls) #34
  br label %.noexc145

.noexc145:                                        ; preds = %bb.bo, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.lf, ptr %14, align 8, !tbaa !107
  store ptr %i.lp, ptr %i.ba, align 8, !tbaa !99
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.lf, i64 %i.ld
  store ptr %i.lt, ptr %i.bb, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bl, %.noexc145
  %i.lu = load ptr, ptr %i.bc, align 8, !tbaa !105 ; 4 uses
  %i.lv = load ptr, ptr %i.bd, align 8, !tbaa !106
  %.not.i147 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not.i147, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store i32 %i.if, ptr %i.lu, align 4, !tbaa !67
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store ptr %i.lw, ptr %i.bc, align 8, !tbaa !105
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckESL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKSt6vectorISY_INS5_7Point_2IT1_EESaIS11_EESaIS13_EERNS3_15PlainObjectBaseIT2_EERNS18_IT3_EERNS18_IT4_EERNS18_IT5_EE:bb.a
          to label %bb.ct unwind label %bb.dg

bb.ct:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !189
  %i.qn = load ptr, ptr %3, align 8, !tbaa !28
  %i.qo = load i64, ptr %i.ou, align 8, !tbaa !31
  %i.qp = getelementptr [16 x i8], ptr %i.qn, i64 %i.ps
  %i.qq = getelementptr [16 x i8], ptr %i.qp, i64 %i.qo
  invoke void @_ZN3igl8copyleft4cgal13assign_scalarERKN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEERSH_(ptr noundef nonnull align 8 dereferenceable(9) %19, ptr noundef nonnull align 8 dereferenceable(9) %i.qq)
          to label %bb.cu unwind label %bb.dh

bb.cu:                                            ; preds = %bb.ct
  %i.qr = load ptr, ptr %19, align 8, !tbaa !70   ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i177, label %_ZN4CGAL6HandleD2Ev.exit179, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i178 = icmp eq i8 %i.qs, 0
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 3 uses
  %i.qu = load atomic i32, ptr %i.qt monotonic, align 4 ; 2 uses
  %i.qv = icmp eq i32 %i.qu, 1                    ; 2 uses
  br i1 %.not.i.i.i178, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.qv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.qw = load ptr, ptr %i.qr, align 8, !tbaa !26
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(12) %i.qr) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit179

bb.cy:                                            ; preds = %bb.cw
  %i.qz = add nsw i32 %i.qu, -1
  store atomic i32 %i.qz, ptr %i.qt monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit179

bb.cz:                                            ; preds = %bb.cv
  br i1 %i.qv, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ra = atomicrmw sub ptr %i.qt, i32 1 release, align 4
  %i.rb = icmp eq i32 %i.ra, 1
  br i1 %i.rb, label %bb.db, label %_ZN4CGAL6HandleD2Ev.exit179

bb.db:                                            ; preds = %bb.da, %bb.cz
  fence acquire
  %i.rc = load ptr, ptr %19, align 8, !tbaa !70   ; 3 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %_ZN4CGAL6HandleD2Ev.exit179, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.re = load ptr, ptr %i.rc, align 8, !tbaa !26
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8
  call void %i.rg(ptr noundef nonnull align 8 dereferenceable(12) %i.rc) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit179

_ZN4CGAL6HandleD2Ev.exit179:                      ; preds = %bb.cu, %bb.cx, %bb.cy, %bb.da, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.rh = load ptr, ptr %i.cy, align 8, !tbaa !62 ; 2 uses
  %i.ri = load ptr, ptr %13, align 8, !tbaa !65   ; 3 uses
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk
  %i.rm = ashr exact i64 %i.rl, 3
  %i.rn = icmp ugt i64 %i.rm, %indvars.iv.next415
  br i1 %i.rn, label %bb.ci, label %._crit_edge372, !llvm.loop !192

bb.dd:                                            ; preds = %bb.ci
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.cj
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %18) #22
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn105 = phi { ptr, i32 } [ %i.rp, %bb.de ], [ %i.ro, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.fy

bb.dg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit175
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.ct
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %19) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn107 = phi { ptr, i32 } [ %i.rr, %bb.dh ], [ %i.rq, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.fy

bb.dj:                                            ; preds = %._crit_edge372
  %i.rs = invoke noundef zeroext i1 @_ZN3igl14list_to_matrixIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKSt6vectorIT_SaIS5_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.dk unwind label %bb.cf     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.rt = icmp sgt i32 %i.at, 0
  br i1 %i.rt, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %bb.dk
  %i.ru = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %wide.trip.count420 = and i64 %.lcssa353, 2147483647
  br label %bb.dl

._crit_edge376.loopexit:                          ; preds = %_ZN4CGAL6HandleD2Ev.exit185
  %.pre432 = load ptr, ptr %i.ru, align 8, !tbaa !69
  %.pre433 = load ptr, ptr %13, align 8, !tbaa !69
  %.pre434 = load ptr, ptr %i.cy, align 8, !tbaa !69
  %.pre435 = load ptr, ptr %20, align 8, !tbaa !69
  %i.rw = ptrtoint ptr %.pre432 to i64
  br label %._crit_edge376

._crit_edge376:                                   ; preds = %._crit_edge376.loopexit, %bb.dk
  %i.rx = phi ptr [ %.pre435, %._crit_edge376.loopexit ], [ null, %bb.dk ] ; 2 uses
  %i.ry = phi ptr [ %.pre434, %._crit_edge376.loopexit ], [ %i.pn, %bb.dk ]
  %i.rz = phi ptr [ %.pre433, %._crit_edge376.loopexit ], [ %i.po, %bb.dk ]
  %i.sa = phi i64 [ %i.rw, %._crit_edge376.loopexit ], [ 0, %bb.dk ]
  %i.sb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.sc = ptrtoint ptr %i.rx to i64
  %i.sd = sub i64 %i.sa, %i.sc
  %i.se = getelementptr inbounds i8, ptr %i.rx, i64 %i.sd
  invoke void @_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %i.se, ptr %i.rz, ptr %i.ry)
          to label %bb.eb unwind label %bb.ft

bb.dl:                                            ; preds = %.lr.ph375, %_ZN4CGAL6HandleD2Ev.exit185
  %indvars.iv417 = phi i64 [ 0, %.lr.ph375 ], [ %indvars.iv.next418, %_ZN4CGAL6HandleD2Ev.exit185 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %indvars.iv417, ptr %i.b, align 8, !tbaa !68
  invoke void @_ZN3igl8copyleft4cgal12row_to_pointIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEEENS3_7Point_2IT_EERKNS5_10MatrixBaseIT0_EERKNSR_5IndexE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2") align 8 %22, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.dm unwind label %bb.dy

bb.dm:                                            ; preds = %bb.dl
  %i.sf = load ptr, ptr %i.ru, align 8, !tbaa !62 ; 6 uses
  %i.sg = load ptr, ptr %i.rv, align 8, !tbaa !86
  %.not.i.i181 = icmp eq ptr %i.sf, %i.sg
  br i1 %.not.i.i181, label %bb.dn, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.dm
  %i.sh = load ptr, ptr %22, align 8, !tbaa !70
  store ptr %i.sh, ptr %i.sf, align 8, !tbaa !70
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store ptr %i.si, ptr %i.ru, align 8, !tbaa !62
  br label %_ZN4CGAL6HandleD2Ev.exit185

bb.dn:                                            ; preds = %bb.dm
  %i.sj = load ptr, ptr %20, align 8, !tbaa !65   ; 10 uses
  %i.sk = ptrtoint ptr %i.sf to i64               ; 3 uses
  %i.sl = ptrtoint ptr %i.sj to i64               ; 3 uses
  %i.sm = sub i64 %i.sk, %i.sl                    ; 4 uses
  %i.sn = icmp eq i64 %i.sm, 9223372036854775800
  br i1 %i.sn, label %bb.do, label %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i266

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #35
          to label %.noexc284 unwind label %.loopexit.split-lp

.noexc284:                                        ; preds = %bb.do
  unreachable

_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i266: ; preds = %bb.dn
  %i.so = ashr exact i64 %i.sm, 3                 ; 3 uses
  %.sroa.speculated.i.i267 = call i64 @llvm.umax.i64(i64 %i.so, i64 1)
  %i.sp = add nsw i64 %.sroa.speculated.i.i267, %i.so ; 2 uses
  %i.sq = icmp ult i64 %i.sp, %i.so
  %i.sr = call i64 @llvm.umin.i64(i64 %i.sp, i64 1152921504606846975)
  %i.ss = select i1 %i.sq, i64 1152921504606846975, i64 %i.sr ; 3 uses
  %.not.i.i268 = icmp ne i64 %i.ss, 0
  call void @llvm.assume(i1 %.not.i.i268)
  %i.st = shl nuw nsw i64 %i.ss, 3
  %i.su = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #36
          to label %.noexc285 unwind label %.loopexit ; 10 uses

.noexc285:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i266
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sm
  %i.sw = load ptr, ptr %22, align 8, !tbaa !70
  store ptr %i.sw, ptr %i.sv, align 8, !tbaa !70
  store ptr null, ptr %22, align 8, !tbaa !70
  %.not10.i.i.i.i269 = icmp eq ptr %i.sj, %i.sf
  br i1 %.not10.i.i.i.i269, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i281, label %.lr.ph.i.i.i.i270.preheader

.lr.ph.i.i.i.i270.preheader:                      ; preds = %.noexc285
  %27 = add i64 %i.sk, -8
  %28 = sub i64 %27, %i.sl                        ; 2 uses
  %i.sx = lshr i64 %28, 3
  %i.sy = add nuw nsw i64 %i.sx, 1                ; 2 uses
  %min.iters.check634 = icmp ult i64 %28, 56
  br i1 %min.iters.check634, label %.lr.ph.i.i.i.i270.preheader648, label %vector.memcheck625

vector.memcheck625:                               ; preds = %.lr.ph.i.i.i.i270.preheader
  %scevgep626 = getelementptr i8, ptr %i.su, i64 8
  %i.sz = add i64 %i.sk, -8
  %i.ta = sub i64 %i.sz, %i.sl
  %i.tb = and i64 %i.ta, -8                       ; 2 uses
  %scevgep627 = getelementptr i8, ptr %scevgep626, i64 %i.tb
  %scevgep628 = getelementptr i8, ptr %i.sj, i64 8
  %scevgep629 = getelementptr i8, ptr %scevgep628, i64 %i.tb
  %bound0630 = icmp ult ptr %i.su, %scevgep629
  %bound1631 = icmp ult ptr %i.sj, %scevgep627
  %found.conflict632 = and i1 %bound0630, %bound1631
  br i1 %found.conflict632, label %.lr.ph.i.i.i.i270.preheader648, label %vector.ph635

vector.ph635:                                     ; preds = %vector.memcheck625
  %n.vec636 = and i64 %i.sy, 4611686018427387900  ; 3 uses
  %i.tc = shl i64 %n.vec636, 3                    ; 2 uses
  %i.td = getelementptr i8, ptr %i.su, i64 %i.tc  ; 2 uses
  %i.te = getelementptr i8, ptr %i.sj, i64 %i.tc
  br label %vector.body637

vector.body637:                                   ; preds = %vector.body637, %vector.ph635
  %index638 = phi i64 [ 0, %vector.ph635 ], [ %index.next643, %vector.body637 ] ; 2 uses
  %i.tf = shl i64 %index638, 3                    ; 2 uses
  %next.gep639 = getelementptr i8, ptr %i.su, i64 %i.tf ; 2 uses
  %next.gep640 = getelementptr i8, ptr %i.sj, i64 %i.tf ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.tg = getelementptr i8, ptr %next.gep640, i64 16 ; 2 uses
  %wide.load641 = load <2 x ptr>, ptr %next.gep640, align 8, !tbaa !70, !alias.scope !198, !noalias !193
  %wide.load642 = load <2 x ptr>, ptr %i.tg, align 8, !tbaa !70, !alias.scope !198, !noalias !193
  %i.th = getelementptr i8, ptr %next.gep639, i64 16
  store <2 x ptr> %wide.load641, ptr %next.gep639, align 8, !tbaa !70, !alias.scope !201, !noalias !198
  store <2 x ptr> %wide.load642, ptr %i.th, align 8, !tbaa !70, !alias.scope !201, !noalias !198
  store <2 x ptr> splat (ptr null), ptr %next.gep640, align 8, !tbaa !70, !alias.scope !198, !noalias !193
  store <2 x ptr> splat (ptr null), ptr %i.tg, align 8, !tbaa !70, !alias.scope !198, !noalias !193
  %index.next643 = add nuw i64 %index638, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.ti, label %middle.block644, label %vector.body637, !llvm.loop !203

middle.block644:                                  ; preds = %vector.body637
  %cmp.n645 = icmp eq i64 %i.sy, %n.vec636
  br i1 %cmp.n645, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i281, label %.lr.ph.i.i.i.i270.preheader648

.lr.ph.i.i.i.i270.preheader648:                   ; preds = %vector.memcheck625, %.lr.ph.i.i.i.i270.preheader, %middle.block644
  %.012.i.i.i.i271.ph = phi ptr [ %i.su, %vector.memcheck625 ], [ %i.su, %.lr.ph.i.i.i.i270.preheader ], [ %i.td, %middle.block644 ]
  %.0911.i.i.i.i272.ph = phi ptr [ %i.sj, %vector.memcheck625 ], [ %i.sj, %.lr.ph.i.i.i.i270.preheader ], [ %i.te, %middle.block644 ]
  br label %.lr.ph.i.i.i.i270

.lr.ph.i.i.i.i270:                                ; preds = %.lr.ph.i.i.i.i270.preheader648, %.lr.ph.i.i.i.i270
  %.012.i.i.i.i271 = phi ptr [ %i.tl, %.lr.ph.i.i.i.i270 ], [ %.012.i.i.i.i271.ph, %.lr.ph.i.i.i.i270.preheader648 ] ; 2 uses
  %.0911.i.i.i.i272 = phi ptr [ %i.tk, %.lr.ph.i.i.i.i270 ], [ %.0911.i.i.i.i272.ph, %.lr.ph.i.i.i.i270.preheader648 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.tj = load ptr, ptr %.0911.i.i.i.i272, align 8, !tbaa !70, !alias.scope !196, !noalias !193
  store ptr %i.tj, ptr %.012.i.i.i.i271, align 8, !tbaa !70, !alias.scope !193, !noalias !196
  store ptr null, ptr %.0911.i.i.i.i272, align 8, !tbaa !70, !alias.scope !196, !noalias !193
  %i.tk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i272, i64 8 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i271, i64 8 ; 2 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.tk, %i.sf
  br i1 %.not.i.i.i.i273, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i281, label %.lr.ph.i.i.i.i270, !llvm.loop !204

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i281: ; preds = %.lr.ph.i.i.i.i270, %middle.block644, %.noexc285
  %.0.lcssa.i.i.i.i275 = phi ptr [ %i.su, %.noexc285 ], [ %i.td, %middle.block644 ], [ %i.tl, %.lr.ph.i.i.i.i270 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i275, i64 8
  %.not.i23.i283 = icmp eq ptr %i.sj, null
  br i1 %.not.i23.i283, label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i281
  call void @_ZdlPvm(ptr noundef nonnull %i.sj, i64 noundef %i.sm) #34
  br label %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i281, %bb.dp
  store ptr %i.su, ptr %20, align 8, !tbaa !65
  store ptr %i.tm, ptr %i.ru, align 8, !tbaa !62
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.ss
  store ptr %i.tn, ptr %i.rv, align 8, !tbaa !86
  %.pr321 = load ptr, ptr %22, align 8, !tbaa !70 ; 4 uses
  %.not.i.i183 = icmp eq ptr %.pr321, null
  br i1 %.not.i.i183, label %_ZN4CGAL6HandleD2Ev.exit185, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit
  %i.to = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i184 = icmp eq i8 %i.to, 0
  %i.tp = getelementptr inbounds nuw i8, ptr %.pr321, i64 8 ; 3 uses
  %i.tq = load atomic i32, ptr %i.tp monotonic, align 4 ; 2 uses
  %i.tr = icmp eq i32 %i.tq, 1                    ; 2 uses
  br i1 %.not.i.i.i184, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.tr, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ts = load ptr, ptr %.pr321, align 8, !tbaa !26
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(12) %.pr321) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit185

bb.dt:                                            ; preds = %bb.dr
  %i.tv = add nsw i32 %i.tq, -1
  store atomic i32 %i.tv, ptr %i.tp monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit185

bb.du:                                            ; preds = %bb.dq
  br i1 %i.tr, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.tw = atomicrmw sub ptr %i.tp, i32 1 release, align 4
  %i.tx = icmp eq i32 %i.tw, 1
  br i1 %i.tx, label %bb.dw, label %_ZN4CGAL6HandleD2Ev.exit185

bb.dw:                                            ; preds = %bb.dv, %bb.du
  fence acquire
  %i.ty = load ptr, ptr %22, align 8, !tbaa !70   ; 3 uses
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %_ZN4CGAL6HandleD2Ev.exit185, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ua = load ptr, ptr %i.ty, align 8, !tbaa !26
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8
  call void %i.uc(ptr noundef nonnull align 8 dereferenceable(12) %i.ty) #22, !inline_history !60
  br label %_ZN4CGAL6HandleD2Ev.exit185

_ZN4CGAL6HandleD2Ev.exit185:                      ; preds = %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread, %_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit, %bb.ds, %bb.dt, %bb.dv, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge376.loopexit, label %bb.dl, !llvm.loop !205

bb.dy:                                            ; preds = %bb.dl
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i266
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp:                               ; preds = %bb.do
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #22
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.dz ], [ %i.ud, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.fx

bb.eb:                                            ; preds = %._crit_edge376
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl6uniqueIN4CGAL7Point_2INS1_5EpeckEEEEEvRKSt6vectorIT_SaIS6_EERS8_RS5_ImSaImEESE_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.ec unwind label %bb.fu

bb.ec:                                            ; preds = %bb.eb
  %i.ue = load ptr, ptr %24, align 8, !tbaa !139  ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !142 ; 2 uses
  %.not4.i = icmp eq ptr %i.ue, %i.ug
  br i1 %.not4.i, label %_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS7_5EpeckESN_SO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS5_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorIS10_INS7_7Point_2IT1_EESaIS13_EESaIS15_EERNS5_15PlainObjectBaseIT2_EERNS1A_IT3_EERNS1A_IT4_EERNS1A_IT5_EEEUlRmE_ESW_SS_SS_SW_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ec
  %i.uh = load ptr, ptr %23, align 8, !tbaa !139
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph.i
  %.05.i = phi ptr [ %i.ue, %.lr.ph.i ], [ %i.ul, %bb.ed ] ; 3 uses
  %i.ui = load i64, ptr %.05.i, align 8, !tbaa !68
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.ui
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !68
  store i64 %i.uk, ptr %.05.i, align 8, !tbaa !68
  %i.ul = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i186 = icmp eq ptr %i.ul, %i.ug
  br i1 %.not.i186, label %_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS7_5EpeckESN_SO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS5_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorIS10_INS7_7Point_2IT1_EESaIS13_EESaIS15_EERNS5_15PlainObjectBaseIT2_EERNS1A_IT3_EERNS1A_IT4_EERNS1A_IT5_EEEUlRmE_ESW_SS_SS_SW_.exit, label %bb.ed, !llvm.loop !206

_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS7_5EpeckESN_SO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS5_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorIS10_INS7_7Point_2IT1_EESaIS13_EESaIS15_EERNS5_15PlainObjectBaseIT2_EERNS1A_IT3_EERNS1A_IT4_EERNS1A_IT5_EEEUlRmE_ESW_SS_SS_SW_.exit: ; preds = %bb.ed, %bb.ec
  %i.um = invoke noundef zeroext i1 @_ZN3igl14list_to_matrixImN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKSt6vectorIT_SaIS5_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ee unwind label %bb.fu     ; 0 uses

bb.ee:                                            ; preds = %_ZSt8for_eachIPmZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS7_5EpeckESN_SO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS5_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorIS10_INS7_7Point_2IT1_EESaIS13_EESaIS15_EERNS5_15PlainObjectBaseIT2_EERNS1A_IT3_EERNS1A_IT4_EERNS1A_IT5_EEEUlRmE_ESW_SS_SS_SW_.exit
  %i.un = load ptr, ptr %24, align 8, !tbaa !139  ; 3 uses
  %.not.i.i.i187 = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ef

end_hunk_3
begin_hunk_4_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !208 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !209
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !209
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 2, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !218, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #34
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !208
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !44
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !44
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !208
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 20 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !218, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #34
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !208
  store i64 1, ptr %0, align 16, !tbaa !44
  store ptr %i.av, ptr %i.as, align 8, !tbaa !44
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !208
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !209
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !217
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !209 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !209
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !209
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !209
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !209
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.cc = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cd = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cd, %i.cc
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.d                ; 2 uses
  %2 = add i64 %.187, -1                          ; 2 uses
  %3 = sub i64 %2, %.0
  %i.cf = add i64 %i.b, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.cf)
  %4 = add i64 %.0, %i.cg
  %i.ch = sub i64 %.187, %4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134 = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135 = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136 = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137 = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !209, !alias.scope !247
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !209, !alias.scope !250, !noalias !252
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !209, !alias.scope !254
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !209, !alias.scope !250, !noalias !252
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %5 = add i64 %n.vec, -1
  %i.dp = add i64 %.0, %5
  %i.dq = sub i64 %2, %i.dp
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ee, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = xor i64 %.1108, -1
  %i.ds = add i64 %.187, %i.dr                    ; 2 uses
  %i.dt = sub i64 %i.ds, %i.b
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !209
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !209
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !209
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !209
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !256

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ee, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cd, %bb.u ], [ %i.dq, %middle.block ], [ %i.ef, %scalar.ph ]
  %i.eg = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eg
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.eh = xor i64 %.1.lcssa, -1
  %i.ei = add i64 %.187, %i.eh                    ; 2 uses
  %i.ej = sub i64 %i.ei, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !209
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !209
  %i.eo = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.eo, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.ep = sub i64 %.187, %.2
  %i.eq = shl i64 %i.ep, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.eq, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !257, !noalias !260, !nonnull !14, !align !263 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !208
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 288230376151711744) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i.i.i = select i1 %i.h, i64 2, i64 %i.i ; 2 uses
  %i.j = icmp ugt i64 %spec.select.i.i.i, %spec.select.i8.i.i.i
  br i1 %i.j, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %spec.select.i8.i.i.i, 2
  %.sroa.speculated16.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %spec.select.i.i.i)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i.i, i64 288230376151711744) ; 2 uses
  %i.l = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !218, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !9, !range !13
  %i.t = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.t, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !208
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !44
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !208
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i = phi i1 [ %.pre.i.i, %bb.f ], [ %i.h, %bb.g ]
  %i.u = phi ptr [ %i.m, %bb.f ], [ %.pre8.i.i, %bb.g ]
  %i.v = select i1 %.pre-phi.i.i, ptr %0, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.a, ptr %i.aa
  %i.ac = load i64, ptr %i.d, align 16, !tbaa !208
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i
  %.sink = phi ptr [ %i.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i ], [ %0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !217, !range !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = xor i8 %.pre, 1
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !217
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = icmp ne i64 %i.ai, 1
  %or.cond.i.not = select i1 %i.af, i1 true, i1 %i.aj
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !209
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ae, align 8, !tbaa !217
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::runtime_error", align 8 ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = fcmp olt x86_fp80 %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fneg x86_fp80 %1
  tail call void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 16
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !range !13, !noundef !14
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %0, ptr %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !209
  %i.p = icmp eq i64 %i.o, 0
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal28conditional_aligned_new_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEPT_m:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.l

bb.h:                                             ; preds = %_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm.exit ]
  ret ptr %.0

bb.i:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #37
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Eigen8internal27construct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEPT_SJ_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.p, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.012
  %i.c = load i8, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i, !prof !473

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.f, align 4, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.e, align 16, !tbaa !26
  store ptr %i.e, ptr @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8, !tbaa !70
  %i.i = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4CGAL6HandleD2Ev, ptr nonnull @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, ptr nonnull @__dso_handle) #22 ; 0 uses
  store i8 1, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  br label %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i

_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i: ; preds = %.noexc, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !70
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  %i.n = add nsw i32 %i.m, 1
  store atomic i32 %i.n, ptr %i.l monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit

bb.e:                                             ; preds = %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i
  %i.o = atomicrmw add ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit: ; preds = %bb.e, %bb.d
  %i.p = add nuw i64 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !474

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  tail call void @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m(ptr noundef %0, i64 noundef %.012)
  invoke void @__cxa_rethrow() #35
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2Ev.exit, %bb.a
  ret ptr %0

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #37
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #22, !inline_history !475
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.c, i32 1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZN4CGAL6Handle5resetEv.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.l = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #22, !inline_history !475
  br label %_ZN4CGAL6Handle5resetEv.exit

_ZN4CGAL6Handle5resetEv.exit:                     ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %.not112 = icmp eq ptr %2, %3
  br i1 %.not112, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 26 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 11 uses
  %4 = add i64 %i.b, -8
  %5 = sub i64 %4, %i.c                           ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check166 = icmp ult i64 %5, 200
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %bb.d
  %i.t = add i64 %i.b, -8
  %i.u = sub i64 %i.t, %i.c
  %i.v = and i64 %i.u, -8                         ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %scevgep160 = getelementptr i8, ptr %i.w, i64 8
  %i.x = add i64 %i.v, %i.c
  %i.y = add i64 %i.x, 8
  %i.z = sub i64 %i.y, %i.b
  %scevgep161 = getelementptr i8, ptr %i.i, i64 %i.z
  %bound0162 = icmp ult ptr %i.i, %scevgep161
  %bound1163 = icmp ult ptr %i.q, %scevgep160
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck159
  %n.vec168 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec168, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.aa
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.ad = shl i64 %index170, 3                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.q, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep172, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep172, align 8, !tbaa !70, !alias.scope !476
  %wide.load174 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !70, !alias.scope !476
  %i.af = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> %wide.load173, ptr %next.gep171, align 8, !tbaa !70, !alias.scope !479, !noalias !476
  store <2 x ptr> %wide.load174, ptr %i.af, align 8, !tbaa !70, !alias.scope !479, !noalias !476
  store <2 x ptr> splat (ptr null), ptr %next.gep172, align 8, !tbaa !70, !alias.scope !476
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !70, !alias.scope !476
  %index.next175 = add nuw i64 %index170, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.ag, label %middle.block176, label %vector.body169, !llvm.loop !481

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.s, %n.vec168
  br i1 %cmp.n177, label %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck159, %bb.d, %middle.block176
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck159 ], [ %i.i, %bb.d ], [ %i.ab, %middle.block176 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck159 ], [ %i.q, %bb.d ], [ %i.ac, %middle.block176 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ah = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !70
  store ptr %i.ah, ptr %.013.i.i.i.i.i, align 8, !tbaa !70
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !482

_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !62
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = sub i64 %i.al, %i.m                     ; 2 uses
  %i.an = ashr exact i64 %i.am, 3                 ; 8 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check187 = icmp ult i64 %i.an, 12
  br i1 %min.iters.check187, label %.lr.ph.i.i.i.i.i51.preheader251, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %i.ap = mul nsw i64 %i.an, -8
  %scevgep181 = getelementptr i8, ptr %i.i, i64 %i.ap
  %i.aq = add i64 %i.am, %i.b
  %i.ar = sub i64 %i.c, %i.aq
  %scevgep182 = getelementptr i8, ptr %i.i, i64 %i.ar
  %bound0183 = icmp ult ptr %scevgep181, %i.q
  %bound1184 = icmp ult ptr %scevgep182, %i.i
  %found.conflict185 = and i1 %bound0183, %bound1184
  br i1 %found.conflict185, label %.lr.ph.i.i.i.i.i51.preheader251, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck180
  %n.vec189 = and i64 %i.an, 9223372036854775804  ; 3 uses
  %i.as = and i64 %i.an, 3
  %i.at = mul i64 %n.vec189, -8                   ; 2 uses
  %i.au = getelementptr i8, ptr %i.i, i64 %i.at
  %i.av = getelementptr i8, ptr %i.q, i64 %i.at
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.aw = mul i64 %index191, -8                   ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.i, i64 %i.aw ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.q, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %next.gep192, i64 -16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %next.gep192, i64 -32 ; 2 uses
  %wide.load194 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !58, !alias.scope !483, !noalias !486
  %wide.load195 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !58, !alias.scope !483, !noalias !486
  %i.az = getelementptr inbounds i8, ptr %next.gep193, i64 -16 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %next.gep193, i64 -32 ; 2 uses
  %wide.load196 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !58, !alias.scope !486
  %wide.load197 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !58, !alias.scope !486
  store <2 x ptr> %wide.load196, ptr %i.ax, align 8, !tbaa !58, !alias.scope !483, !noalias !486
  store <2 x ptr> %wide.load197, ptr %i.ay, align 8, !tbaa !58, !alias.scope !483, !noalias !486
  store <2 x ptr> %wide.load194, ptr %i.az, align 8, !tbaa !58, !alias.scope !486
  store <2 x ptr> %wide.load195, ptr %i.ba, align 8, !tbaa !58, !alias.scope !486
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.bb, label %middle.block199, label %vector.body190, !llvm.loop !488

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.an, %n.vec189
  br i1 %cmp.n200, label %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i51.preheader251

.lr.ph.i.i.i.i.i51.preheader251:                  ; preds = %vector.memcheck180, %.lr.ph.i.i.i.i.i51.preheader, %middle.block199
  %.010.i.i.i.i.i.ph = phi i64 [ %i.an, %vector.memcheck180 ], [ %i.an, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.as, %middle.block199 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck180 ], [ %i.i, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.au, %middle.block199 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck180 ], [ %i.q, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.av, %middle.block199 ]
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader251, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader251 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader251 ]
  %.078.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader251 ]
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !58
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !58
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !58
  %i.bg = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bh = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, !llvm.loop !489

_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %middle.block199, %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.bi = icmp sgt i64 %i.e, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cl, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %i.e, %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ck, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cj, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %2, %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  %i.bk = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !70
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i52
  %i.bm = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4 ; 0 uses
  %i.bn = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %bb.g

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i52
  %i.bo = load atomic i32, ptr %i.bl monotonic, align 4
  %i.bp = add nsw i32 %i.bo, 1
  store atomic i32 %i.bp, ptr %i.bl monotonic, align 4
  %i.bq = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !70 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load atomic i32, ptr %i.br monotonic, align 4 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bq) #22, !inline_history !490
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.f:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.bx = add nsw i32 %i.bs, -1
  store atomic i32 %i.bx, ptr %i.br monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bz = load atomic i32, ptr %i.by monotonic, align 4
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = atomicrmw sub ptr %i.by, i32 1 release, align 4
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.i, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %bb.g
  fence acquire
  %i.cd = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.cd) #22, !inline_history !490
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !70
  store ptr %i.ci, ptr %.0811.i.i.i.i.i, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.cl = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cm = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !491

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.n ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cn, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cv, %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.cu, %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.co = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  store ptr %i.co, ptr %.09.i.i.i.i, align 8, !tbaa !70
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq i8 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4
  %i.cs = add nsw i32 %i.cr, 1
  store atomic i32 %i.cs, ptr %i.cq monotonic, align 4
  br label %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ct = atomicrmw add ptr %i.cq, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cu, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !492

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !62
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cw = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.cx = sub nsw i64 %i.e, %i.o
  %i.cy = getelementptr [8 x i8], ptr %i.cw, i64 %i.cx ; 5 uses
  %.not11.i.i.i.i.i54 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i54, label %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i55.preheader

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %6 = add i64 %i.k, -8
  %7 = sub i64 %6, %i.m                           ; 2 uses
  %i.cz = lshr i64 %7, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i55.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.db = add i64 %i.k, -8
  %i.dc = sub i64 %i.db, %i.m
  %i.dd = and i64 %i.dc, -8                       ; 2 uses
  %i.de = add i64 %i.d, %i.dd
  %i.df = add i64 %i.de, 8
  %i.dg = sub i64 %i.df, %i.n
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.dg
  %i.dh = getelementptr i8, ptr %1, i64 %i.dd
  %scevgep155 = getelementptr i8, ptr %i.dh, i64 8
  %bound0 = icmp ult ptr %i.cy, %scevgep155
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i55.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cy, i64 %i.di
  %i.dk = getelementptr i8, ptr %1, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dl ; 2 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %i.dl ; 3 uses
  %i.dm = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep156, align 8, !tbaa !70, !alias.scope !493
  %wide.load157 = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !70, !alias.scope !493
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !496, !noalias !493
  store <2 x ptr> %wide.load157, ptr %i.dn, align 8, !tbaa !70, !alias.scope !496, !noalias !493
  store <2 x ptr> splat (ptr null), ptr %next.gep156, align 8, !tbaa !70, !alias.scope !493
  store <2 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !70, !alias.scope !493
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !498

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i55.preheader253

.lr.ph.i.i.i.i.i55.preheader253:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i55.preheader, %middle.block
  %.013.i.i.i.i.i56.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dj, %middle.block ]
  %.sroa.08.012.i.i.i.i.i57.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader253, %.lr.ph.i.i.i.i.i55
  %.013.i.i.i.i.i56 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i55 ], [ %.013.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i55.preheader253 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i57 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i55 ], [ %.sroa.08.012.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i55.preheader253 ] ; 3 uses
  %i.dp = load ptr, ptr %.sroa.08.012.i.i.i.i.i57, align 8, !tbaa !70
  store ptr %i.dp, ptr %.013.i.i.i.i.i56, align 8, !tbaa !70
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i57, align 8, !tbaa !70
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i57, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i56, i64 8
  %.not.i.i.i.i.i58 = icmp eq ptr %i.dq, %i.i
  br i1 %.not.i.i.i.i.i58, label %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i55, !llvm.loop !499

_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60: ; preds = %.lr.ph.i.i.i.i.i55, %middle.block, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.d
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !62
  %i.dt = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i62:                               ; preds = %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i63 = phi i64 [ %i.ex, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70 ], [ %i.dt, %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60 ] ; 2 uses
  %.0811.i.i.i.i.i64 = phi ptr [ %i.ew, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60 ] ; 5 uses
  %.0910.i.i.i.i.i65 = phi ptr [ %i.ev, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60 ] ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i66 = icmp eq i8 %i.dv, 0
  %i.dw = load ptr, ptr %.0910.i.i.i.i.i65, align 8, !tbaa !70
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i66, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71: ; preds = %.lr.ph.i.i.i.i.i62
  %i.dy = atomicrmw add ptr %i.dx, i32 1 monotonic, align 4 ; 0 uses
  %i.dz = load ptr, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i72, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, label %bb.o

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i.i62
  %i.ea = load atomic i32, ptr %i.dx monotonic, align 4
  %i.eb = add nsw i32 %i.ea, 1
  store atomic i32 %i.eb, ptr %i.dx monotonic, align 4
  %i.ec = load ptr, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !70 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.ec, null
  br i1 %.not4.i.i.i.i.i.i.i.i68, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, label %.thread.i.i.i.i.i.i.i.i69

.thread.i.i.i.i.i.i.i.i69:                        ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load atomic i32, ptr %i.ed monotonic, align 4 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread.i.i.i.i.i.i.i.i69
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !26
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(12) %i.ec) #22, !inline_history !490
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

bb.n:                                             ; preds = %.thread.i.i.i.i.i.i.i.i69
  %i.ej = add nsw i32 %i.ee, -1
  store atomic i32 %i.ej, ptr %i.ed monotonic, align 4
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

bb.o:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.el = load atomic i32, ptr %i.ek monotonic, align 4
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = atomicrmw sub ptr %i.ek, i32 1 release, align 4
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.q, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

bb.q:                                             ; preds = %bb.p, %bb.o
  fence acquire
  %i.ep = load ptr, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !70 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(12) %i.ep) #22, !inline_history !490
  br label %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70

_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70: ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i67, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i71
  %i.eu = load ptr, ptr %.0910.i.i.i.i.i65, align 8, !tbaa !70
  store ptr %i.eu, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i65, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 8
  %i.ex = add nsw i64 %.012.i.i.i.i.i63, -1
  %i.ey = icmp sgt i64 %.012.i.i.i.i.i63, 1
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !491

bb.s:                                             ; preds = %bb.b
  %i.ez = load ptr, ptr %0, align 8, !tbaa !65    ; 12 uses
  %i.fa = ptrtoint ptr %i.ez to i64               ; 4 uses
  %i.fb = sub i64 %i.k, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3                 ; 4 uses
  %i.fd = sub nsw i64 1152921504606846975, %i.fc
  %i.fe = icmp ult i64 %i.fd, %i.e
  br i1 %i.fe, label %bb.t, label %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.126) #35
  unreachable

_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.s
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.e)
  %i.ff = add nsw i64 %.sroa.speculated.i, %i.fc  ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fc
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 1152921504606846975)
  %i.fi = select i1 %i.fg, i64 1152921504606846975, i64 %i.fh ; 3 uses
  %.not.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #36
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.u
  %i.fl = phi ptr [ %i.fk, %bb.u ], [ null, %_ZNKSt6vectorIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not11.i.i.i.i.i74 = icmp eq ptr %i.ez, %1
  br i1 %.not11.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %8 = add i64 %i.a, -8
  %9 = sub i64 %8, %i.fa                          ; 2 uses
  %i.fm = lshr i64 %9, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check211 = icmp ult i64 %9, 136
  br i1 %min.iters.check211, label %.lr.ph.i.i.i.i.i75.preheader249, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %i.fo = add i64 %i.a, -8
  %i.fp = sub i64 %i.fo, %i.fa
  %i.fq = and i64 %i.fp, -8
  %i.fr = add i64 %i.fq, 8                        ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.fl, i64 %i.fr
  %scevgep206 = getelementptr i8, ptr %i.ez, i64 %i.fr
  %bound0207 = icmp ult ptr %i.fl, %scevgep206
  %bound1208 = icmp ult ptr %i.ez, %scevgep205
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %.lr.ph.i.i.i.i.i75.preheader249, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck204
  %n.vec213 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec213, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fl, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ez, i64 %i.fs
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.fv = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.fl, i64 %i.fv ; 2 uses
  %next.gep217 = getelementptr i8, ptr %i.ez, i64 %i.fv ; 3 uses
  %i.fw = getelementptr i8, ptr %next.gep217, i64 16 ; 2 uses
  %wide.load218 = load <2 x ptr>, ptr %next.gep217, align 8, !tbaa !70, !alias.scope !500
  %wide.load219 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !70, !alias.scope !500
  %i.fx = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x ptr> %wide.load218, ptr %next.gep216, align 8, !tbaa !70, !alias.scope !503, !noalias !500
  store <2 x ptr> %wide.load219, ptr %i.fx, align 8, !tbaa !70, !alias.scope !503, !noalias !500
  store <2 x ptr> splat (ptr null), ptr %next.gep217, align 8, !tbaa !70, !alias.scope !500
  store <2 x ptr> splat (ptr null), ptr %i.fw, align 8, !tbaa !70, !alias.scope !500
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.fy, label %middle.block221, label %vector.body214, !llvm.loop !505

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.fn, %n.vec213
  br i1 %cmp.n222, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i75.preheader249

.lr.ph.i.i.i.i.i75.preheader249:                  ; preds = %vector.memcheck204, %.lr.ph.i.i.i.i.i75.preheader, %middle.block221
  %.013.i.i.i.i.i76.ph = phi ptr [ %i.fl, %vector.memcheck204 ], [ %i.fl, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.ft, %middle.block221 ]
  %.sroa.08.012.i.i.i.i.i77.ph = phi ptr [ %i.ez, %vector.memcheck204 ], [ %i.ez, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.fu, %middle.block221 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader249, %.lr.ph.i.i.i.i.i75
  %.013.i.i.i.i.i76 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i75 ], [ %.013.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader249 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i77 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i75 ], [ %.sroa.08.012.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader249 ] ; 3 uses
  %i.fz = load ptr, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !70
  store ptr %i.fz, ptr %.013.i.i.i.i.i76, align 8, !tbaa !70
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !70
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 8 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ga, %1
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i75, !llvm.loop !506

_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block221, %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %i.fl, %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit ], [ %i.ft, %middle.block221 ], [ %i.gb, %.lr.ph.i.i.i.i.i75 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i79226 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i79 to i64
  br label %.lr.ph.i.i.i.i81

.lr.ph.i.i.i.i81:                                 ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85
  %.09.i.i.i.i82 = phi ptr [ %i.gj, %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85 ], [ %.0.lcssa.i.i.i.i.i79, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i83 = phi ptr [ %i.gi, %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %i.gc = load ptr, ptr %.sroa.04.08.i.i.i.i83, align 8, !tbaa !70 ; 2 uses
  store ptr %i.gc, ptr %.09.i.i.i.i82, align 8, !tbaa !70
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i84 = icmp eq i8 %i.gd, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i81
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 4
  %i.gg = add nsw i32 %i.gf, 1
  store atomic i32 %i.gg, ptr %i.ge monotonic, align 4
  br label %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85

bb.w:                                             ; preds = %.lr.ph.i.i.i.i81
  %i.gh = atomicrmw add ptr %i.ge, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85

_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85: ; preds = %bb.w, %bb.v
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i83, i64 8 ; 2 uses
  %i.gj = getelementptr i8, ptr %.09.i.i.i.i82, i64 8 ; 8 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.gi, %3
  br i1 %.not.i.i.i.i86, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88, label %.lr.ph.i.i.i.i81, !llvm.loop !492

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88: ; preds = %_ZSt10_ConstructIN4CGAL7Point_2INS0_5EpeckEEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i85
  %.not11.i.i.i.i.i89 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88
  %10 = add i64 %i.k, -8
  %11 = sub i64 %10, %i.a                         ; 2 uses
  %i.gk = lshr i64 %11, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %11, 216
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i90.preheader247, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %i.gm = add i64 %i.k, -8
  %i.gn = sub i64 %i.gm, %i.a
  %i.go = and i64 %i.gn, -8                       ; 2 uses
  %i.gp = ptrtoaddr ptr %i.gj to i64
  %reass.sub = sub i64 %i.gp, %.0.lcssa.i.i.i.i.i79226
  %i.gq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i79, i64 %reass.sub
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.go
  %scevgep227 = getelementptr i8, ptr %i.gr, i64 8
  %i.gs = getelementptr i8, ptr %1, i64 %i.go
  %scevgep228 = getelementptr i8, ptr %i.gs, i64 8
  %bound0229 = icmp ult ptr %i.gj, %scevgep228
  %bound1230 = icmp ult ptr %1, %scevgep227
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.lr.ph.i.i.i.i.i90.preheader247, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck225
  %n.vec235 = and i64 %i.gl, 4611686018427387900  ; 3 uses
  %i.gt = shl i64 %n.vec235, 3                    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gj, i64 %i.gt  ; 2 uses
  %i.gv = getelementptr i8, ptr %1, i64 %i.gt
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.gw = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.gj, i64 %i.gw ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.gw ; 3 uses
  %i.gx = getelementptr i8, ptr %next.gep239, i64 16 ; 2 uses
  %wide.load240 = load <2 x ptr>, ptr %next.gep239, align 8, !tbaa !70, !alias.scope !507
  %wide.load241 = load <2 x ptr>, ptr %i.gx, align 8, !tbaa !70, !alias.scope !507
  %i.gy = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x ptr> %wide.load240, ptr %next.gep238, align 8, !tbaa !70, !alias.scope !510, !noalias !507
  store <2 x ptr> %wide.load241, ptr %i.gy, align 8, !tbaa !70, !alias.scope !510, !noalias !507
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !70, !alias.scope !507
  store <2 x ptr> splat (ptr null), ptr %i.gx, align 8, !tbaa !70, !alias.scope !507
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.gz, label %middle.block243, label %vector.body236, !llvm.loop !512

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.gl, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, label %.lr.ph.i.i.i.i.i90.preheader247

.lr.ph.i.i.i.i.i90.preheader247:                  ; preds = %vector.memcheck225, %.lr.ph.i.i.i.i.i90.preheader, %middle.block243
  %.013.i.i.i.i.i91.ph = phi ptr [ %i.gj, %vector.memcheck225 ], [ %i.gj, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.gu, %middle.block243 ]
  %.sroa.08.012.i.i.i.i.i92.ph = phi ptr [ %1, %vector.memcheck225 ], [ %1, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.gv, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader247, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i90 ], [ %.013.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader247 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i90 ], [ %.sroa.08.012.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader247 ] ; 3 uses
  %i.ha = load ptr, ptr %.sroa.08.012.i.i.i.i.i92, align 8, !tbaa !70
  store ptr %i.ha, ptr %.013.i.i.i.i.i91, align 8, !tbaa !70
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i92, align 8, !tbaa !70
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.hb, %i.i
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, label %.lr.ph.i.i.i.i.i90, !llvm.loop !513

_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95: ; preds = %.lr.ph.i.i.i.i.i90, %middle.block243, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.gj, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit88 ], [ %i.gu, %middle.block243 ], [ %i.hc, %.lr.ph.i.i.i.i.i90 ]
  %.not4.i.i = icmp eq ptr %i.ez, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95, %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ht, %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i ], [ %i.ez, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95 ] ; 3 uses
  %i.hd = load ptr, ptr %.05.i.i, align 8, !tbaa !70 ; 4 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i96, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i = icmp eq i8 %i.he, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.hg = load atomic i32, ptr %i.hf monotonic, align 4 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.hh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  tail call void %i.hk(ptr noundef nonnull align 8 dereferenceable(12) %i.hd) #22, !inline_history !148
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hl = add nsw i32 %i.hg, -1
  store atomic i32 %i.hl, ptr %i.hf monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i

bb.ab:                                            ; preds = %bb.x
  br i1 %i.hh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hm = atomicrmw sub ptr %i.hf, i32 1 release, align 4
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.ad, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  fence acquire
  %i.ho = load ptr, ptr %.05.i.i, align 8, !tbaa !70 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(12) %i.ho) #22, !inline_history !148
  br label %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %.lr.ph.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ht, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !85

_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4CGAL7Point_2INS0_5EpeckEEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit95
  %.not.i97 = icmp eq ptr %i.ez, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEEEvT_S5_.exit
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hv, %i.fa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.hw) #34
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_2INS0_5EpeckEEEEvT_S5_.exit, %bb.af
  store ptr %i.fl, ptr %0, align 8, !tbaa !65
  store ptr %.0.lcssa.i.i.i.i.i94, ptr %i.h, align 8, !tbaa !62
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fi
  store ptr %i.hx, ptr %i.f, align 8, !tbaa !86
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i70, %_ZN4CGAL7Point_2INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN4CGAL7Point_2INS0_5EpeckEEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, %_ZSt13move_backwardIPN4CGAL7Point_2INS0_5EpeckEEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN4CGAL7Point_2INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEEvS12_S12_S16_S1A_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #6 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.284", align 8 ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.284", align 8 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.284", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph26

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEES12_S12_S12_S16_.exit
  %i.h = icmp eq i64 %i.w, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph26, !llvm.loop !514

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEEvS12_S12_RS16_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %._crit_edge, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i9.i ], [ %storemerge18.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEEvS12_S12_S12_RS16_(ptr %0, ptr nonnull %i.i, ptr nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.a
  %i.l = icmp sgt i64 %i.k, 8
  br i1 %i.l, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEEvS12_S12_S12_S16_.exit, !llvm.loop !515

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEEvS12_S12_S12_S16_.exit: ; preds = %.lr.ph.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph26:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1825 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01924 = phi i64 [ %i.w, %bb.b ], [ %2, %.lr.ph ]
  %i.m = phi i64 [ %i.z, %bb.b ], [ %i.d, %.lr.ph ]
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %storemerge1825, i64 -8
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_2INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal18subdivide_segmentsIN5Eigen6MatrixINS2_13Lazy_exact_ntIN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEES4_SY_SZ_NSI_IiLin1ELi1ELi0ELin1ELi1EEES10_EEvRKNSH_10MatrixBaseIT_EERKNS11_IT0_EERKS7_IS7_INS3_IT1_EESaIS1B_EESaIS1D_EERNSH_15PlainObjectBaseIT2_EERNS1I_IT3_EERNS1I_IT4_EERNS1I_IT5_EEEUlRKS5_S1W_E_EEEvS12_S12_S12_S12_S16_(ptr %0, ptr nonnull %i.f, ptr %i.o, ptr nonnull %i.p, ptr %3)
end_hunk_5
