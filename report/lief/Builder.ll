inline.NumInlined: 8389
inline.NumDeleted: 2215
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
  %i.hg = xor i64 %i.gx, 9223372036854775807      ; 2 uses
  %i.hh = icmp ule i64 %i.he, %i.hg
  call void @llvm.assume(i1 %i.hh)
  %.not23.i.i = icmp ult i64 %i.he, %i.ha
  br i1 %.not23.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.gt, align 1, !tbaa !174
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  %i.hj = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hl = getelementptr i8, ptr %i.gt, i64 %i.ha
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hi, i8 0, i64 %i.hj, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi ptr [ %i.hl, %bb.s ], [ %i.hi, %bb.r ]
  store ptr %.0.i.i.i.i.i, ptr %i.gs, align 8, !tbaa !69
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.t:                                             ; preds = %bb.q
  %i.hm = icmp ult i64 %i.hg, %i.ha
  br i1 %i.hm, label %bb.u, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #29
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 %i.ha)
  %i.hn = add nuw i64 %.sroa.speculated.i.i.i, %i.gx
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hn, i64 9223372036854775807) ; 2 uses
  %i.hp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #27 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.gx ; 2 uses
  store i8 0, ptr %i.hq, align 1, !tbaa !174
  %i.hr = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ht, i8 0, i64 %i.hr, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i: ; preds = %bb.v, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not28.i.i = icmp eq ptr %i.gt, %i.gu
  br i1 %.not28.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228, label %bb.w

bb.w:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr align 1 %i.gu, i64 %i.gx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228: ; preds = %bb.w, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  %.not.i27.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i27.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228
  %i.hu = sub i64 %i.hd, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.hu) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228
  store ptr %i.hp, ptr %i.gr, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.gy
  store ptr %i.hv, ptr %i.gs, align 8, !tbaa !69
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store ptr %i.hw, ptr %i.hb, align 8, !tbaa !12
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, %.lr.ph387
  %i.hx = load i8, ptr %i.x, align 8, !tbaa !49, !range !138, !noundef !139
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i16 %i.gq, ptr %i.b, align 2, !tbaa !1045
  call void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef nonnull %i.b) #28
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.0.0.copyload.i.i142
  %i.ic = load i16, ptr %i.b, align 2
  store i16 %i.ic, ptr %i.ib, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.id = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.0.0.copyload.i.i142
  store i16 %i.gq, ptr %i.if, align 1
  br label %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit: ; preds = %bb.y, %bb.z
  %i.ig = load i64, ptr %i.aq, align 8, !tbaa !983
  %i.ih = add nsw i64 %i.ig, 2                    ; 2 uses
  store i64 %i.ih, ptr %i.aq, align 8, !tbaa !983
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0278.0386, i64 2 ; 2 uses
  %.not370 = icmp eq ptr %i.ii, %i.gp
  br i1 %.not370, label %.loopexit, label %.lr.ph387

.loopexit:                                        ; preds = %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details30dyld_chained_starts_in_segmentEvEERS0_RKT_.exit, %.lr.ph391
  %storemerge.in = load i64, ptr %i.e, align 8, !tbaa !164
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !164
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.5303.0389, i64 88
  %i.ik = add nuw nsw i64 %.sroa.9304.0390, 1     ; 2 uses
  %.not365 = icmp eq i64 %i.ik, %i.do
  br i1 %.not365, label %.preheader.thread, label %.lr.ph391

bb.aa:                                            ; preds = %bb.n
  %i.il = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.111) #28
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.im, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.140, i64 52)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.cq

.preheader.thread:                                ; preds = %.loopexit, %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %16, i8 0, i64 64, i1 false)
  store ptr %i.in, ptr %i.io, align 8, !tbaa !48
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  store i8 0, ptr %i.ip, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %17, i8 0, i64 64, i1 false)
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !48
  %i.is = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i8 0, ptr %i.is, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.it = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %18, i8 0, i64 64, i1 false)
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !48
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 2 uses
  store i8 0, ptr %i.iv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.iw = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %19, i8 0, i64 64, i1 false)
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !48
  %i.iy = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i8 0, ptr %i.iy, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store ptr %i.iz, ptr %20, align 8, !tbaa !1046
  %i.ja = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i64 1, ptr %i.ja, align 8, !tbaa !1048
  %i.jb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jc, align 8, !tbaa !1049
  %i.jd = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i8 0, i64 16, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 noundef 1)
  %.pre413 = load i8, ptr %i.ip, align 8, !tbaa !49, !range !138
  %i.jf = trunc nuw i8 %.pre413 to i1
  br i1 %i.jf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.preheader.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !174
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #28
  %i.jg = load ptr, ptr %i.io, align 8, !tbaa !48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !8
  %i.ji = load i8, ptr %i.a, align 1
  store i8 %i.ji, ptr %i.jh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

bb.ac:                                            ; preds = %.preheader.thread
  %i.jj = load ptr, ptr %i.io, align 8, !tbaa !48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !8
  store i8 0, ptr %i.jk, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit: ; preds = %bb.ab, %bb.ac
  %i.jl = load i64, ptr %i.je, align 8, !tbaa !983
  %i.jm = add nsw i64 %i.jl, 1                    ; 2 uses
  store i64 %i.jm, ptr %i.je, align 8, !tbaa !983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i64 %i.jm, ptr %i.g, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @_ZN4LIEF8optimizeISt6vectorISt10unique_ptrINS_5MachO22ChainedBindingInfoListESt14default_deleteIS4_EESaIS7_EEEES1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1223") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull @_ZZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_17DyldChainedFixupsEENUlRKSt10unique_ptrINS0_22ChainedBindingInfoListESt14default_deleteIS9_EEE_8__invokeB5cxx11ESE_, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %20)
  %i.jn = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1050 ; 3 uses
  %i.jp = load ptr, ptr %21, align 8, !tbaa !1053 ; 3 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 5                 ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jt, 10               ; 3 uses
  %i.jv = load ptr, ptr %i.io, align 8, !tbaa !48 ; 4 uses
  %i.jw = icmp slt i64 %i.jt, 0
  br i1 %i.jw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.ae:                                            ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !12
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !8  ; 4 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64               ; 2 uses
  %i.kc = sub i64 %i.ka, %i.kb                    ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.ju
  br i1 %i.kd, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146, label %_ZN4LIEF15vector_iostream7reserveEm.exit150

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146: ; preds = %bb.ae
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !69
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = sub i64 %i.kg, %i.kb                    ; 3 uses
  %i.ki = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #27 ; 4 uses
  %i.kj = icmp sgt i64 %i.kh, 0
  br i1 %i.kj, label %bb.af, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147

bb.af:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.jz, i64 %i.kh, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147: ; preds = %bb.af, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146
  %.not.i8.i.i148 = icmp eq ptr %i.jz, null
  br i1 %.not.i8.i.i148, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kc) #26
  %.pre414.pre = load ptr, ptr %21, align 8, !tbaa !1054
  %.pre415.pre = load ptr, ptr %i.jn, align 8, !tbaa !1054
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149: ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147
  %.pre415 = phi ptr [ %.pre415.pre, %bb.ag ], [ %i.jo, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147 ]
  %.pre414 = phi ptr [ %.pre414.pre, %bb.ag ], [ %i.jp, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147 ]
  store ptr %i.ki, ptr %i.jv, align 8, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kh
  store ptr %i.kk, ptr %i.ke, align 8, !tbaa !69
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ju
  store ptr %i.kl, ptr %i.jx, align 8, !tbaa !12
  br label %_ZN4LIEF15vector_iostream7reserveEm.exit150

_ZN4LIEF15vector_iostream7reserveEm.exit150:      ; preds = %bb.ae, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149
  %i.km = phi ptr [ %i.jo, %bb.ae ], [ %.pre415, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149 ] ; 2 uses
  %i.kn = phi ptr [ %i.jp, %bb.ae ], [ %.pre414, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149 ] ; 2 uses
  %.not366392 = icmp eq ptr %i.kn, %i.km
  br i1 %.not366392, label %._crit_edge395, label %.lr.ph394

._crit_edge395:                                   ; preds = %.lr.ph394, %_ZN4LIEF15vector_iostream7reserveEm.exit150
  %i.ko = load i32, ptr %i.ah, align 8, !tbaa !1008 ; 3 uses
  %i.kp = load ptr, ptr %i.z, align 8, !tbaa !1004
  %i.kq = load ptr, ptr %i.y, align 8, !tbaa !1007
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 6 uses
  switch i32 %i.ko, label %_ZN4LIEF15vector_iostream7reserveEm.exit155 [
    i32 1, label %bb.ah
    i32 2, label %bb.am
    i32 3, label %bb.ar
  ]

.lr.ph394:                                        ; preds = %_ZN4LIEF15vector_iostream7reserveEm.exit150, %.lr.ph394
  %.sroa.0268.0393 = phi ptr [ %i.kz, %.lr.ph394 ], [ %i.kn, %_ZN4LIEF15vector_iostream7reserveEm.exit150 ] ; 3 uses
  %i.ku = load ptr, ptr %.sroa.0268.0393, align 8, !tbaa !189
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0268.0393, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !188
  %i.kx = add i64 %i.kw, 1
  %i.ky = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %16, ptr noundef %i.ku, i64 noundef %i.kx) #28 ; 0 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0268.0393, i64 32 ; 2 uses
  %.not366 = icmp eq ptr %i.kz, %i.km
  br i1 %.not366, label %._crit_edge395, label %.lr.ph394

bb.ah:                                            ; preds = %._crit_edge395
  %i.la = ashr exact i64 %i.kt, 1                 ; 4 uses
  %i.lb = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.lc = icmp slt i64 %i.la, 0
  br i1 %i.lc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !12
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !8  ; 4 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 2 uses
  %i.lj = icmp ult i64 %i.li, %i.la
  br i1 %i.lj, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151, label %_ZN4LIEF15vector_iostream7reserveEm.exit155

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151: ; preds = %bb.aj
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !69
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.lh                    ; 3 uses
  %i.lo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #27 ; 4 uses
  %i.lp = icmp sgt i64 %i.ln, 0
  br i1 %i.lp, label %bb.ak, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lo, ptr align 1 %i.lf, i64 %i.ln, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152: ; preds = %bb.ak, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151
  %.not.i8.i.i153 = icmp eq ptr %i.lf, null
  br i1 %.not.i8.i.i153, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i154, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.li) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i154

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i154: ; preds = %bb.al, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152
  store ptr %i.lo, ptr %i.lb, align 8, !tbaa !8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ln
  store ptr %i.lq, ptr %i.lk, align 8, !tbaa !69
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.la
  store ptr %i.lr, ptr %i.ld, align 8, !tbaa !12
  br label %_ZN4LIEF15vector_iostream7reserveEm.exit155

bb.am:                                            ; preds = %._crit_edge395
  %i.ls = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.lt = icmp slt i64 %i.kt, 0
  br i1 %i.lt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !12
  %i.lw = load ptr, ptr %i.ls, align 8, !tbaa !8  ; 4 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64               ; 2 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.kt
  br i1 %i.ma, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156, label %_ZN4LIEF15vector_iostream7reserveEm.exit155

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156: ; preds = %bb.ao
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !69
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = sub i64 %i.md, %i.ly                    ; 3 uses
  %i.mf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kt) #27 ; 4 uses
  %i.mg = icmp sgt i64 %i.me, 0
  br i1 %i.mg, label %bb.ap, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157

bb.ap:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr align 1 %i.lw, i64 %i.me, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157: ; preds = %bb.ap, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156
  %.not.i8.i.i158 = icmp eq ptr %i.lw, null
  br i1 %.not.i8.i.i158, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i159, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i159

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i159: ; preds = %bb.aq, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157
  store ptr %i.mf, ptr %i.ls, align 8, !tbaa !8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.me
  store ptr %i.mh, ptr %i.mb, align 8, !tbaa !69
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.kt
  store ptr %i.mi, ptr %i.lu, align 8, !tbaa !12
  br label %_ZN4LIEF15vector_iostream7reserveEm.exit155

bb.ar:                                            ; preds = %._crit_edge395
  %i.mj = shl i64 %i.kt, 1                        ; 4 uses
  %i.mk = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.ml = icmp slt i64 %i.mj, 0
  br i1 %i.ml, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !12
  %i.mo = load ptr, ptr %i.mk, align 8, !tbaa !8  ; 4 uses
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = ptrtoint ptr %i.mo to i64               ; 2 uses
  %i.mr = sub i64 %i.mp, %i.mq                    ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.mj
  br i1 %i.ms, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i161, label %_ZN4LIEF15vector_iostream7reserveEm.exit155

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i161: ; preds = %bb.at
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
  %i.hg = xor i64 %i.gx, 9223372036854775807      ; 2 uses
  %i.hh = icmp ule i64 %i.he, %i.hg
  call void @llvm.assume(i1 %i.hh)
  %.not23.i.i = icmp ult i64 %i.he, %i.ha
  br i1 %.not23.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.gt, align 1, !tbaa !174
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  %i.hj = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hl = getelementptr i8, ptr %i.gt, i64 %i.ha
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hi, i8 0, i64 %i.hj, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi ptr [ %i.hl, %bb.s ], [ %i.hi, %bb.r ]
  store ptr %.0.i.i.i.i.i, ptr %i.gs, align 8, !tbaa !69
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.t:                                             ; preds = %bb.q
  %i.hm = icmp ult i64 %i.hg, %i.ha
  br i1 %i.hm, label %bb.u, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #29
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 %i.ha)
  %i.hn = add nuw i64 %.sroa.speculated.i.i.i, %i.gx
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hn, i64 9223372036854775807) ; 2 uses
  %i.hp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #27 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.gx ; 2 uses
  store i8 0, ptr %i.hq, align 1, !tbaa !174
  %i.hr = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ht, i8 0, i64 %i.hr, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i: ; preds = %bb.v, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not28.i.i = icmp eq ptr %i.gt, %i.gu
  br i1 %.not28.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228, label %bb.w

bb.w:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr align 1 %i.gu, i64 %i.gx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228: ; preds = %bb.w, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i.i
  %.not.i27.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i27.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228
  %i.hu = sub i64 %i.hd, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.hu) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229: ; preds = %bb.x, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i228
  store ptr %i.hp, ptr %i.gr, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.gy
  store ptr %i.hv, ptr %i.gs, align 8, !tbaa !69
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ho
  store ptr %i.hw, ptr %i.hb, align 8, !tbaa !12
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i229, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i.i, %.lr.ph387
  %i.hx = load i8, ptr %i.x, align 8, !tbaa !49, !range !138, !noundef !139
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i16 %i.gq, ptr %i.b, align 2, !tbaa !1045
  call void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef nonnull %i.b) #28
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sroa.0.0.copyload.i.i142
  %i.ic = load i16, ptr %i.b, align 2
  store i16 %i.ic, ptr %i.ib, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.id = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.0.0.copyload.i.i142
  store i16 %i.gq, ptr %i.if, align 1
  br label %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit: ; preds = %bb.y, %bb.z
  %i.ig = load i64, ptr %i.aq, align 8, !tbaa !983
  %i.ih = add nsw i64 %i.ig, 2                    ; 2 uses
  store i64 %i.ih, ptr %i.aq, align 8, !tbaa !983
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0278.0386, i64 2 ; 2 uses
  %.not370 = icmp eq ptr %i.ii, %i.gp
  br i1 %.not370, label %.loopexit, label %.lr.ph387

.loopexit:                                        ; preds = %_ZN4LIEF15vector_iostream5writeItvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details30dyld_chained_starts_in_segmentEvEERS0_RKT_.exit, %.lr.ph391
  %storemerge.in = load i64, ptr %i.e, align 8, !tbaa !164
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !164
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.5303.0389, i64 88
  %i.ik = add nuw nsw i64 %.sroa.9304.0390, 1     ; 2 uses
  %.not365 = icmp eq i64 %i.ik, %i.do
  br i1 %.not365, label %.preheader.thread, label %.lr.ph391

bb.aa:                                            ; preds = %bb.n
  %i.il = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.111) #28
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.im, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.140, i64 52)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.cq

.preheader.thread:                                ; preds = %.loopexit, %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %16, i8 0, i64 64, i1 false)
  store ptr %i.in, ptr %i.io, align 8, !tbaa !48
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  store i8 0, ptr %i.ip, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %17, i8 0, i64 64, i1 false)
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !48
  %i.is = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i8 0, ptr %i.is, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.it = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %18, i8 0, i64 64, i1 false)
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !48
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 2 uses
  store i8 0, ptr %i.iv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.iw = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %19, i8 0, i64 64, i1 false)
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !48
  %i.iy = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i8 0, ptr %i.iy, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store ptr %i.iz, ptr %20, align 8, !tbaa !1046
  %i.ja = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i64 1, ptr %i.ja, align 8, !tbaa !1048
  %i.jb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jc, align 8, !tbaa !1049
  %i.jd = getelementptr inbounds nuw i8, ptr %20, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i8 0, i64 16, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 noundef 1)
  %.pre413 = load i8, ptr %i.ip, align 8, !tbaa !49, !range !138
  %i.jf = trunc nuw i8 %.pre413 to i1
  br i1 %i.jf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.preheader.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !174
  call void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef nonnull %i.a) #28
  %i.jg = load ptr, ptr %i.io, align 8, !tbaa !48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !8
  %i.ji = load i8, ptr %i.a, align 1
  store i8 %i.ji, ptr %i.jh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

bb.ac:                                            ; preds = %.preheader.thread
  %i.jj = load ptr, ptr %i.io, align 8, !tbaa !48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !8
  store i8 0, ptr %i.jk, align 1
  br label %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit

_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit: ; preds = %bb.ab, %bb.ac
  %i.jl = load i64, ptr %i.je, align 8, !tbaa !983
  %i.jm = add nsw i64 %i.jl, 1                    ; 2 uses
  store i64 %i.jm, ptr %i.je, align 8, !tbaa !983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i64 %i.jm, ptr %i.g, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @_ZN4LIEF8optimizeISt6vectorISt10unique_ptrINS_5MachO22ChainedBindingInfoListESt14default_deleteIS4_EESaIS7_EEEES1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERKT_PFSF_RKNSI_10value_typeEERmPSt13unordered_mapISF_mSt4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_mEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1223") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull @_ZZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_17DyldChainedFixupsEENUlRKSt10unique_ptrINS0_22ChainedBindingInfoListESt14default_deleteIS9_EEE_8__invokeB5cxx11ESE_, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %20)
  %i.jn = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1050 ; 3 uses
  %i.jp = load ptr, ptr %21, align 8, !tbaa !1053 ; 3 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 5                 ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jt, 10               ; 3 uses
  %i.jv = load ptr, ptr %i.io, align 8, !tbaa !48 ; 4 uses
  %i.jw = icmp slt i64 %i.jt, 0
  br i1 %i.jw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.ae:                                            ; preds = %_ZN4LIEF15vector_iostream5writeIhvEERS0_RKT_.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !12
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !8  ; 4 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64               ; 2 uses
  %i.kc = sub i64 %i.ka, %i.kb                    ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.ju
  br i1 %i.kd, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146, label %_ZN4LIEF15vector_iostream7reserveEm.exit150

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146: ; preds = %bb.ae
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !69
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = sub i64 %i.kg, %i.kb                    ; 3 uses
  %i.ki = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #27 ; 4 uses
  %i.kj = icmp sgt i64 %i.kh, 0
  br i1 %i.kj, label %bb.af, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147

bb.af:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.jz, i64 %i.kh, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147: ; preds = %bb.af, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i146
  %.not.i8.i.i148 = icmp eq ptr %i.jz, null
  br i1 %.not.i8.i.i148, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kc) #26
  %.pre414.pre = load ptr, ptr %21, align 8, !tbaa !1054
  %.pre415.pre = load ptr, ptr %i.jn, align 8, !tbaa !1054
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149: ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147
  %.pre415 = phi ptr [ %.pre415.pre, %bb.ag ], [ %i.jo, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147 ]
  %.pre414 = phi ptr [ %.pre414.pre, %bb.ag ], [ %i.jp, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i147 ]
  store ptr %i.ki, ptr %i.jv, align 8, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kh
  store ptr %i.kk, ptr %i.ke, align 8, !tbaa !69
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ju
  store ptr %i.kl, ptr %i.jx, align 8, !tbaa !12
  br label %_ZN4LIEF15vector_iostream7reserveEm.exit150

_ZN4LIEF15vector_iostream7reserveEm.exit150:      ; preds = %bb.ae, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149
  %i.km = phi ptr [ %i.jo, %bb.ae ], [ %.pre415, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149 ] ; 2 uses
  %i.kn = phi ptr [ %i.jp, %bb.ae ], [ %.pre414, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i149 ] ; 2 uses
  %.not366392 = icmp eq ptr %i.kn, %i.km
  br i1 %.not366392, label %._crit_edge395, label %.lr.ph394

._crit_edge395:                                   ; preds = %.lr.ph394, %_ZN4LIEF15vector_iostream7reserveEm.exit150
  %i.ko = load i32, ptr %i.ah, align 8, !tbaa !1008 ; 3 uses
  %i.kp = load ptr, ptr %i.z, align 8, !tbaa !1004
  %i.kq = load ptr, ptr %i.y, align 8, !tbaa !1007
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 6 uses
  switch i32 %i.ko, label %_ZN4LIEF15vector_iostream7reserveEm.exit155 [
    i32 1, label %bb.ah
    i32 2, label %bb.am
    i32 3, label %bb.ar
  ]

.lr.ph394:                                        ; preds = %_ZN4LIEF15vector_iostream7reserveEm.exit150, %.lr.ph394
  %.sroa.0268.0393 = phi ptr [ %i.kz, %.lr.ph394 ], [ %i.kn, %_ZN4LIEF15vector_iostream7reserveEm.exit150 ] ; 3 uses
  %i.ku = load ptr, ptr %.sroa.0268.0393, align 8, !tbaa !189
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0268.0393, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !188
  %i.kx = add i64 %i.kw, 1
  %i.ky = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN4LIEF15vector_iostream5writeEPKhl(ptr noundef nonnull align 8 dereferenceable(73) %16, ptr noundef %i.ku, i64 noundef %i.kx) #28 ; 0 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0268.0393, i64 32 ; 2 uses
  %.not366 = icmp eq ptr %i.kz, %i.km
  br i1 %.not366, label %._crit_edge395, label %.lr.ph394

bb.ah:                                            ; preds = %._crit_edge395
  %i.la = ashr exact i64 %i.kt, 1                 ; 4 uses
  %i.lb = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.lc = icmp slt i64 %i.la, 0
  br i1 %i.lc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !12
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !8  ; 4 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 2 uses
  %i.lj = icmp ult i64 %i.li, %i.la
  br i1 %i.lj, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151, label %_ZN4LIEF15vector_iostream7reserveEm.exit155

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151: ; preds = %bb.aj
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !69
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.lh                    ; 3 uses
  %i.lo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #27 ; 4 uses
  %i.lp = icmp sgt i64 %i.ln, 0
  br i1 %i.lp, label %bb.ak, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lo, ptr align 1 %i.lf, i64 %i.ln, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152: ; preds = %bb.ak, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i151
  %.not.i8.i.i153 = icmp eq ptr %i.lf, null
  br i1 %.not.i8.i.i153, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i154, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.li) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i154

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i154: ; preds = %bb.al, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i152
  store ptr %i.lo, ptr %i.lb, align 8, !tbaa !8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ln
  store ptr %i.lq, ptr %i.lk, align 8, !tbaa !69
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.la
  store ptr %i.lr, ptr %i.ld, align 8, !tbaa !12
  br label %_ZN4LIEF15vector_iostream7reserveEm.exit155

bb.am:                                            ; preds = %._crit_edge395
  %i.ls = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.lt = icmp slt i64 %i.kt, 0
  br i1 %i.lt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !12
  %i.lw = load ptr, ptr %i.ls, align 8, !tbaa !8  ; 4 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64               ; 2 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.kt
  br i1 %i.ma, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156, label %_ZN4LIEF15vector_iostream7reserveEm.exit155

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156: ; preds = %bb.ao
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !69
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = sub i64 %i.md, %i.ly                    ; 3 uses
  %i.mf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kt) #27 ; 4 uses
  %i.mg = icmp sgt i64 %i.me, 0
  br i1 %i.mg, label %bb.ap, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157

bb.ap:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr align 1 %i.lw, i64 %i.me, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157: ; preds = %bb.ap, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i156
  %.not.i8.i.i158 = icmp eq ptr %i.lw, null
  br i1 %.not.i8.i.i158, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i159, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i159

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i159: ; preds = %bb.aq, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i157
  store ptr %i.mf, ptr %i.ls, align 8, !tbaa !8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.me
  store ptr %i.mh, ptr %i.mb, align 8, !tbaa !69
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.kt
  store ptr %i.mi, ptr %i.lu, align 8, !tbaa !12
  br label %_ZN4LIEF15vector_iostream7reserveEm.exit155

bb.ar:                                            ; preds = %._crit_edge395
  %i.mj = shl i64 %i.kt, 1                        ; 4 uses
  %i.mk = load ptr, ptr %i.ir, align 8, !tbaa !48 ; 4 uses
  %i.ml = icmp slt i64 %i.mj, 0
  br i1 %i.ml, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #29
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !12
  %i.mo = load ptr, ptr %i.mk, align 8, !tbaa !8  ; 4 uses
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = ptrtoint ptr %i.mo to i64               ; 2 uses
  %i.mr = sub i64 %i.mp, %i.mq                    ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.mj
  br i1 %i.ms, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i161, label %_ZN4LIEF15vector_iostream7reserveEm.exit155

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i161: ; preds = %bb.at
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
end_hunk_1
