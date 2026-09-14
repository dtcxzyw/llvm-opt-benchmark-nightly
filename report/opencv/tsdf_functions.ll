Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tsdf_functions?download=true
inline.NumInlined: 1096
inline.NumDeleted: 455
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_30fetchNormalsFromTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayES9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE":bb.a
  %i.kv = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.kr, ptr noundef nonnull align 4 dereferenceable(16) %i.ks, ptr noundef nonnull align 4 dereferenceable(32) %i.kt, i64 %.sroa.07.0.copyload.i80, i32 %.sroa.28.0.copyload.i82, ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %.noexc98 unwind label %bb.w   ; 2 uses

.noexc98:                                         ; preds = %bb.v
  %.fca.0.extract1.i83 = extractvalue { <2 x float>, float } %i.kv, 0 ; 4 uses
  %.fca.1.extract2.i84 = extractvalue { <2 x float>, float } %i.kv, 1 ; 2 uses
  %.sroa.036.0.vec.extract.i85 = extractelement <2 x float> %.fca.0.extract1.i83, i64 0
  %.sroa.036.4.vec.extract.i86 = extractelement <2 x float> %.fca.0.extract1.i83, i64 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.kx = load <4 x float>, ptr %i.kq, align 4, !tbaa !12, !noalias !318 ; 3 uses
  %i.ky = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.kz = shufflevector <2 x float> %.fca.0.extract1.i83, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.kz, <2 x float> zeroinitializer)
  %i.lb = load <2 x float>, ptr %i.kw, align 4, !tbaa !12, !noalias !318 ; 2 uses
  %i.lc = shufflevector <4 x float> %i.kx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ld = shufflevector <2 x float> %i.lb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.le = shufflevector <4 x float> %i.kx, <4 x float> %i.ld, <2 x i32> <i32 1, i32 4>
  %i.lf = shufflevector <2 x float> %.fca.0.extract1.i83, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.lf, <2 x float> %i.la)
  %i.lh = shufflevector <2 x float> %i.lc, <2 x float> %i.lb, <2 x i32> <i32 0, i32 3>
  %i.li = insertelement <2 x float> poison, float %.fca.1.extract2.i84, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.lj, <2 x float> %i.lg)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !12, !noalias !318
  %i.ln = call float @llvm.fmuladd.f32(float %i.lm, float %.sroa.036.0.vec.extract.i85, float 0.000000e+00)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kq, i64 28
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !12, !noalias !318
  %i.lq = call float @llvm.fmuladd.f32(float %i.lp, float %.sroa.036.4.vec.extract.i86, float %i.ln)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !12, !noalias !318
  %i.lt = call float @llvm.fmuladd.f32(float %i.ls, float %.fca.1.extract2.i84, float %i.lq)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.noexc72

.noexc72:                                         ; preds = %.noexc98, %.lr.ph.i65
  %.sroa.038.0.i89 = phi <2 x float> [ splat (float +qnan), %.lr.ph.i65 ], [ %i.lk, %.noexc98 ]
  %.sroa.7.0.i90 = phi float [ +qnan, %.lr.ph.i65 ], [ %i.lt, %.noexc98 ]
  %i.lu = load ptr, ptr %i.ge, align 8, !tbaa !316, !nonnull !110, !align !113 ; 3 uses
  %i.lv = load i32, ptr %i.fk, align 4, !tbaa !34
  %i.lw = load i32, ptr %i.fl, align 4, !tbaa !34
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !22
  %i.lz = icmp slt i32 %i.ly, 2
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !23
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 128
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = sext i32 %i.lv to i64
  %i.mf = mul i64 %i.md, %i.me
  %.sink.idx.i.i93 = select i1 %i.lz, i64 0, i64 %i.mf
  %.sink.i.i94 = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.sink.idx.i.i93
  %i.mg = sext i32 %i.lw to i64
  %i.mh = getelementptr inbounds [16 x i8], ptr %.sink.i.i94, i64 %i.mg ; 3 uses
  store <2 x float> %.sroa.038.0.i89, ptr %i.mh, align 4
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store float %.sroa.7.0.i90, ptr %.sroa.5.0..sroa_idx.i96, align 4
  %.sroa.635.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store float 0.000000e+00, ptr %.sroa.635.0..sroa_idx.i97, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.mj = load i32, ptr %i.fv, align 4, !tbaa !34
  %i.mk = add nsw i32 %i.mj, 1                    ; 2 uses
  store i32 %i.mk, ptr %i.fv, align 4, !tbaa !34
  %i.ml = icmp slt i32 %i.mk, %i.r
  br i1 %i.ml, label %.lr.ph.i65, label %.loopexit111.loopexit, !llvm.loop !305

.loopexit111.loopexit:                            ; preds = %.noexc72
  %.pre145 = load i32, ptr %i.fr, align 4, !tbaa !41
  br label %.loopexit111

.loopexit111:                                     ; preds = %.loopexit111.loopexit, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63
  %i.mm = phi i32 [ %.pre145, %.loopexit111.loopexit ], [ %i.gg, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63 ] ; 2 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !34
  %i.mn = add nsw i32 %.030115, 1                 ; 2 uses
  %i.mo = icmp slt i32 %i.mn, %i.mm
  br i1 %i.mo, label %.lr.ph, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !306

bb.w:                                             ; preds = %bb.v
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZNSt6vectorIiSaIiEED2Ev.exit74:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %bb.w
  %.pn = phi { ptr, i32 } [ %i.mp, %bb.w ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41 ], [ %i.ho, %bb.s ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fj) #24
  br label %common.resume

.loopexit:                                        ; preds = %"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_30fetchNormalsFromTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayES9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", %.lr.ph121, %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_36fetchPointsNormalsFromTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayESD_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Point3_.12", align 8    ; 5 uses
  %3 = alloca %"class.cv::Point3_.12", align 8    ; 5 uses
  %4 = alloca %"class.cv::Point3_.12", align 8    ; 5 uses
  %5 = alloca %"class.std::vector.21", align 8    ; 14 uses
  %6 = alloca %"class.std::vector.21", align 8    ; 19 uses
  %7 = alloca %"class.cv::Vec.1", align 4         ; 7 uses
  %8 = alloca %"class.cv::Vec.10", align 16       ; 5 uses
  %9 = alloca %"class.cv::Vec.1", align 16        ; 4 uses
  %10 = alloca %"class.cv::Vec.10", align 16      ; 5 uses
  %11 = alloca %"class.cv::Vec.1", align 16       ; 4 uses
  %12 = alloca %"class.cv::Vec.10", align 16      ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !61    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = load i32, ptr %1, align 4, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph324.i.i.i, label %._crit_edge325.i.i.i

.lr.ph324.i.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.sroa.215.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.215.0..sroa_idx.i84.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.215.0..sroa_idx.i104.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !323, !nonnull !110, !align !111 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !112
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph324.split.i.i.i, label %._crit_edge325.i.i.i

._crit_edge325.i.i.i:                             ; preds = %._crit_edge320.i.i.i, %.lr.ph324.i.i.i, %bb.a
  %i.aa = phi ptr [ null, %bb.a ], [ null, %.lr.ph324.i.i.i ], [ %i.bi, %._crit_edge320.i.i.i ] ; 3 uses
  %i.ab = phi ptr [ null, %bb.a ], [ null, %.lr.ph324.i.i.i ], [ %i.bk, %._crit_edge320.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !324, !nonnull !110, !align !113 ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge325.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ae) #22
          to label %.noexc.i.i.i unwind label %bb.av

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

.lr.ph324.split.i.i.i:                            ; preds = %.lr.ph324.i.i.i, %._crit_edge320.i.i.i
  %i.af = phi i32 [ %i.be, %._crit_edge320.i.i.i ], [ %i.c, %.lr.ph324.i.i.i ] ; 2 uses
  %i.ag = phi ptr [ %i.bf, %._crit_edge320.i.i.i ], [ %i.w, %.lr.ph324.i.i.i ] ; 3 uses
  %i.ah = phi ptr [ %i.bg, %._crit_edge320.i.i.i ], [ null, %.lr.ph324.i.i.i ] ; 3 uses
  %i.ai = phi ptr [ %i.bh, %._crit_edge320.i.i.i ], [ null, %.lr.ph324.i.i.i ] ; 3 uses
  %i.aj = phi ptr [ %i.bi, %._crit_edge320.i.i.i ], [ null, %.lr.ph324.i.i.i ] ; 3 uses
  %i.ak = phi ptr [ %i.bj, %._crit_edge320.i.i.i ], [ null, %.lr.ph324.i.i.i ] ; 3 uses
  %i.al = phi ptr [ %i.bk, %._crit_edge320.i.i.i ], [ null, %.lr.ph324.i.i.i ] ; 3 uses
  %i.am = phi ptr [ %i.bl, %._crit_edge320.i.i.i ], [ %i.w, %.lr.ph324.i.i.i ] ; 5 uses
  %i.an = phi ptr [ %i.bm, %._crit_edge320.i.i.i ], [ %i.w, %.lr.ph324.i.i.i ] ; 2 uses
  %.0321.i.i.i = phi i32 [ %.pre-phi339.i.i.i, %._crit_edge320.i.i.i ], [ %i.a, %.lr.ph324.i.i.i ] ; 6 uses
  %i.ao = load ptr, ptr %.val, align 8, !tbaa !325, !nonnull !110, !align !113
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !326, !nonnull !110, !align !111
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = mul nsw i32 %i.ar, %.0321.i.i.i
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !112
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph319.i.i.i, label %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i

.lr.ph324.split.._crit_edge320_crit_edge.i.i.i:   ; preds = %.lr.ph324.split.i.i.i
  %.pre338.i.i.i = add nsw i32 %.0321.i.i.i, 1
  br label %._crit_edge320.i.i.i

.lr.ph319.i.i.i:                                  ; preds = %.lr.ph324.split.i.i.i
  %i.ay = sitofp i32 %.0321.i.i.i to float
  %i.az = fadd nnan float %i.ay, 5.000000e-01
  %i.ba = add nsw i32 %.0321.i.i.i, 1             ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !36
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph319.split.i.i.i, label %._crit_edge320.i.i.i

._crit_edge320.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %i.b, align 4, !tbaa !41
  br label %._crit_edge320.i.i.i

._crit_edge320.i.i.i:                             ; preds = %._crit_edge320.loopexit.i.i.i, %.lr.ph319.i.i.i, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i
  %.pre-phi339.i.i.i = phi i32 [ %.pre338.i.i.i, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.ba, %._crit_edge320.loopexit.i.i.i ], [ %i.ba, %.lr.ph319.i.i.i ] ; 2 uses
  %i.be = phi i32 [ %i.af, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %.pre.i.i.i, %._crit_edge320.loopexit.i.i.i ], [ %i.af, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bf = phi ptr [ %i.ag, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.ch, %._crit_edge320.loopexit.i.i.i ], [ %i.ag, %.lr.ph319.i.i.i ]
  %i.bg = phi ptr [ %i.ah, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.ci, %._crit_edge320.loopexit.i.i.i ], [ %i.ah, %.lr.ph319.i.i.i ]
  %i.bh = phi ptr [ %i.ai, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.cj, %._crit_edge320.loopexit.i.i.i ], [ %i.ai, %.lr.ph319.i.i.i ]
  %i.bi = phi ptr [ %i.aj, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.ck, %._crit_edge320.loopexit.i.i.i ], [ %i.aj, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bj = phi ptr [ %i.ak, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.cl, %._crit_edge320.loopexit.i.i.i ], [ %i.ak, %.lr.ph319.i.i.i ]
  %i.bk = phi ptr [ %i.al, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.cm, %._crit_edge320.loopexit.i.i.i ], [ %i.al, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bl = phi ptr [ %i.am, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.ch, %._crit_edge320.loopexit.i.i.i ], [ %i.am, %.lr.ph319.i.i.i ]
  %i.bm = phi ptr [ %i.an, %.lr.ph324.split.._crit_edge320_crit_edge.i.i.i ], [ %i.ch, %._crit_edge320.loopexit.i.i.i ], [ %i.am, %.lr.ph319.i.i.i ]
  %i.bn = icmp slt i32 %.pre-phi339.i.i.i, %i.be
  br i1 %i.bn, label %.lr.ph324.split.i.i.i, label %._crit_edge325.i.i.i, !llvm.loop !319

.lr.ph319.split.i.i.i:                            ; preds = %.lr.ph319.i.i.i, %._crit_edge.i.i.i
  %i.bo = phi ptr [ %i.ch, %._crit_edge.i.i.i ], [ %i.ag, %.lr.ph319.i.i.i ]
  %i.bp = phi ptr [ %i.ci, %._crit_edge.i.i.i ], [ %i.ah, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bq = phi ptr [ %i.cj, %._crit_edge.i.i.i ], [ %i.ai, %.lr.ph319.i.i.i ] ; 2 uses
  %i.br = phi ptr [ %i.ck, %._crit_edge.i.i.i ], [ %i.aj, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bs = phi ptr [ %i.cl, %._crit_edge.i.i.i ], [ %i.ak, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bt = phi ptr [ %i.cm, %._crit_edge.i.i.i ], [ %i.al, %.lr.ph319.i.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.ch, %._crit_edge.i.i.i ], [ %i.am, %.lr.ph319.i.i.i ] ; 2 uses
  %.061317.i.i.i = phi i32 [ %.pre-phi337.i.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph319.i.i.i ] ; 6 uses
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !326, !nonnull !110, !align !111
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !34
  %i.by = mul nsw i32 %i.bx, %.061317.i.i.i
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !36 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i, label %.lr.ph319.split.._crit_edge_crit_edge.i.i.i

.lr.ph319.split.._crit_edge_crit_edge.i.i.i:      ; preds = %.lr.ph319.split.i.i.i
  %.pre336.i.i.i = add nuw nsw i32 %.061317.i.i.i, 1
  br label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph319.split.i.i.i
  %i.ce = uitofp nneg i32 %.061317.i.i.i to float
  %i.cf = fadd nnan float %i.ce, 5.000000e-01
  %i.cg = add nuw nsw i32 %.061317.i.i.i, 1       ; 3 uses
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i
  %.pre-phi337.i.i.i = phi i32 [ %.pre336.i.i.i, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.cg, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 2 uses
  %i.ch = phi ptr [ %i.bo, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.ww, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 6 uses
  %i.ci = phi ptr [ %i.bp, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.wr, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 2 uses
  %i.cj = phi ptr [ %i.bq, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.ws, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 2 uses
  %i.ck = phi ptr [ %i.br, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.wt, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 2 uses
  %i.cl = phi ptr [ %i.bs, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.wu, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 2 uses
  %i.cm = phi ptr [ %i.bt, %.lr.ph319.split.._crit_edge_crit_edge.i.i.i ], [ %i.wv, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !112
  %i.cp = icmp slt i32 %.pre-phi337.i.i.i, %i.co
  br i1 %i.cp, label %.lr.ph319.split.i.i.i, label %._crit_edge320.loopexit.i.i.i, !llvm.loop !320

bb.c:                                             ; preds = %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i, %.lr.ph.i.i.i
  %i.cq = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %i.wr, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 5 uses
  %i.cr = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %i.ws, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 5 uses
  %i.cs = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %i.wt, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 10 uses
  %i.ct = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %i.wu, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 9 uses
  %i.cu = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %i.wv, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 9 uses
  %i.cv = phi i32 [ %i.cc, %.lr.ph.i.i.i ], [ %i.wy, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ]
  %i.cw = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %i.ww, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ]
  %.062316.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.pre-phi.i.i.i, %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i ] ; 5 uses
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !326, !nonnull !110, !align !111 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !34 ; 2 uses
  %i.da = mul nsw i32 %i.cz, %.062316.i.i.i       ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !119
  %i.de = sitofp i8 %i.dd to float
  %i.df = fmul nnan float %i.de, -7.812500e-03    ; 10 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !327
  %i.di = icmp ne i8 %i.dh, 0
  %i.dj = fcmp une float %i.df, 1.000000e+00
  %or.cond.i.i.i = and i1 %i.di, %i.dj
  br i1 %or.cond.i.i.i, label %bb.d, label %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i

._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i: ; preds = %bb.c
  %.pre335.i.i.i = add nuw nsw i32 %.062316.i.i.i, 1
  br label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.dk = uitofp nneg i32 %.062316.i.i.i to float
  %i.dl = fadd nnan float %i.dk, 5.000000e-01
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !328, !nonnull !110, !align !111
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12 ; 4 uses
  %13 = fmul float %i.az, %i.dn                   ; 8 uses
  %14 = fmul float %i.cf, %i.dn                   ; 8 uses
  %i.do = fmul float %i.dl, %i.dn                 ; 8 uses
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !329, !nonnull !110, !align !113
  %i.dq = load ptr, ptr %.val, align 8, !tbaa !325, !nonnull !110, !align !113
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !33
  %.sroa.022.0.copyload.i.i.i = load i64, ptr %i.cw, align 4 ; 2 uses
  %i.ds = load i32, ptr %i.cx, align 4, !tbaa !34 ; 2 uses
  store i32 %i.ds, ptr %7, align 4, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !34 ; 2 uses
  store i32 %i.du, ptr %i.i, align 4, !tbaa !34
  store i32 %i.cz, ptr %i.j, align 4, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !34
  store i32 %i.dw, ptr %i.k, align 4, !tbaa !34
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !330, !nonnull !110, !align !111 ; 2 uses
  %i.dy = load <4 x i32>, ptr %i.dx, align 4, !tbaa !34
  store <4 x i32> %i.dy, ptr %8, align 16, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load <4 x i32>, ptr %i.dz, align 4, !tbaa !34
  store <4 x i32> %i.ea, ptr %i.m, align 16, !tbaa !34
  %i.eb = load ptr, ptr %i.n, align 8, !tbaa !331, !nonnull !110, !align !111 ; 10 uses
  %.sroa.0254.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.sroa.0254.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %.sroa.0254.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.0254.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.0254.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %.sroa.0254.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %.sroa.0254.sroa.8.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.0254.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %.sroa.0254.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  %i.ec = load <2 x float>, ptr %i.eb, align 4    ; 2 uses
  %i.ed = load <2 x float>, ptr %.sroa.0254.sroa.5.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %i.ee = load <2 x float>, ptr %.sroa.0254.sroa.2.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.ef = load <2 x float>, ptr %.sroa.0254.sroa.6.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.eg = load <2 x float>, ptr %.sroa.0254.sroa.9.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0254.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.0254.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %.sroa.0254.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.11.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0254.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  %.sroa.0254.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.12.0..sroa_idx.i.i.i, align 4
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !332, !nonnull !110, !align !111
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12 ; 3 uses
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !333, !nonnull !110
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !92, !range !334, !noundef !110
  %i.el = trunc nuw i8 %i.ek to i1
  %.sroa.065.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.022.0.copyload.i.i.i to i32
  %i.em = icmp slt i32 %i.ba, %.sroa.065.0.extract.trunc.i.i.i.i
  br i1 %i.em, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.en = mul nsw i32 %i.ds, %i.ba
  %i.eo = mul nsw i32 %i.du, %.061317.i.i.i
  %i.ep = add i32 %i.en, %i.da
  %i.eq = add i32 %i.ep, %i.eo
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !119
  %i.eu = sitofp i8 %i.et to float
  %i.ev = fmul nnan float %i.eu, -7.812500e-03    ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !327
  %i.ey = icmp ne i8 %i.ex, 0
  %i.ez = fcmp une float %i.ev, 1.000000e+00
  %or.cond.i.i.i.i = and i1 %i.ey, %i.ez
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.fa = fcmp ogt float %i.df, 0.000000e+00
  %i.fb = fcmp olt float %i.ev, 0.000000e+00
  %or.cond3.i.i.i.i = and i1 %i.fa, %i.fb
  br i1 %or.cond3.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fc = fcmp olt float %i.df, 0.000000e+00
  %i.fd = fcmp ogt float %i.ev, 0.000000e+00
  %or.cond5.i.i.i.i = and i1 %i.fc, %i.fd
  br i1 %or.cond5.i.i.i.i, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fe = fadd float %i.dn, %13
  %i.ff = call noundef float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.fg = call noundef float @llvm.fabs.f32(float %i.ev) ; 2 uses
  %i.fh = fadd nnan float %i.ff, %i.fg
  %i.fi = fdiv nnan float 1.000000e+00, %i.fh
  %i.fj = fmul float %i.ff, %i.fe
  %i.fk = call float @llvm.fmuladd.f32(float %13, float %i.fg, float %i.fj)
  %i.fl = fmul float %i.fk, %i.fi                 ; 3 uses
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 0, i32 2>
  %i.fn = fmul <2 x float> %16, %i.fm
  %i.fo = shufflevector <2 x float> %i.ec, <2 x float> %i.ed, <2 x i32> <i32 0, i32 2>
  %i.fp = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fq, <2 x float> %i.fn)
  %i.fs = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 1, i32 3>
  %i.ft = insertelement <2 x float> poison, float %i.do, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = insertelement <2 x float> poison, float %.sroa.0254.sroa.4.0.copyload.i.i.i, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %.sroa.0254.sroa.8.0.copyload.i.i.i, i64 1
  %i.fy = fadd <2 x float> %i.fx, %i.fv           ; 2 uses
  %i.fz = fmul float %14, %.sroa.0254.sroa.10.0.copyload.i.i.i
  %i.ga = extractelement <2 x float> %i.eg, i64 0
  %i.gb = call float @llvm.fmuladd.f32(float %i.ga, float %i.fl, float %i.fz)
  %i.gc = call float @llvm.fmuladd.f32(float %.sroa.0254.sroa.11.0.copyload.i.i.i, float %i.do, float %i.gb)
  %i.gd = fadd float %.sroa.0254.sroa.12.0.copyload.i.i.i, %i.gc ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <2 x float> %i.fy, ptr %i.cu, align 4, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store float %i.gd, ptr %i.ge, align 4, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store float 0.000000e+00, ptr %i.gf, align 4, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  store ptr %i.gg, ptr %i.q, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.gh = ptrtoint ptr %i.ct to i64
  %i.gi = ptrtoint ptr %i.cs to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 4 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775792
  br i1 %i.gk, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i: ; preds = %bb.j
  %i.gl = ashr exact i64 %i.gj, 4                 ; 3 uses
  %.sroa.speculated.i.i147.i.i.i = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i147.i.i.i, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 576460752303423487)
  %i.gp = select i1 %i.gn, i64 576460752303423487, i64 %i.go ; 3 uses
  %.not.i.i148.i.i.i = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i148.i.i.i)
  %i.gq = shl nuw nsw i64 %i.gp, 4
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #23
          to label %.noexc165.i.i.i unwind label %.loopexit.i.i.i ; 6 uses

.noexc165.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj ; 3 uses
  store <2 x float> %i.fy, ptr %i.gs, align 4, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store float %i.gd, ptr %i.gt, align 4, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !12
  %.not13.i.i.i.i.i.i149.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not13.i.i.i.i.i.i149.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i, label %.lr.ph.i.i.i.i.i.i150.i.i.i

.lr.ph.i.i.i.i.i.i150.i.i.i:                      ; preds = %.noexc165.i.i.i, %.lr.ph.i.i.i.i.i.i150.i.i.i
  %.015.i.i.i.i.i.i151.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i150.i.i.i ], [ %i.gr, %.noexc165.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i152.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i150.i.i.i ], [ %i.cs, %.noexc165.i.i.i ] ; 5 uses
  %i.gv = load float, ptr %.01214.i.i.i.i.i.i152.i.i.i, align 4, !tbaa !12
  store float %i.gv, ptr %.015.i.i.i.i.i.i151.i.i.i, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 4
  store float %i.gx, ptr %i.gy, align 4, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 8
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 8
  store float %i.ha, ptr %i.hb, align 4, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 12
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 12
  store float %i.hd, ptr %i.he, align 4, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i153.i.i.i = icmp eq ptr %i.hf, %i.ct
  br i1 %.not.i.i.i.i.i.i153.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i, label %.lr.ph.i.i.i.i.i.i150.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i150.i.i.i, %.noexc165.i.i.i
  %.0.lcssa.i.i.i.i.i.i155.i.i.i = phi ptr [ %i.gr, %.noexc165.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i150.i.i.i ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i155.i.i.i, i64 16 ; 2 uses
  %.not.i35.i163.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i35.i163.i.i.i, label %.noexc72.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.gj) #24
  br label %.noexc72.i.i.i

.noexc72.i.i.i:                                   ; preds = %bb.k, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i
  store ptr %i.gr, ptr %5, align 8, !tbaa !106
  store ptr %i.hh, ptr %i.q, align 8, !tbaa !105
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gp ; 4 uses
  store ptr %i.hi, ptr %i.r, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i: ; preds = %.noexc72.i.i.i, %bb.i
  %i.hj = phi ptr [ %i.hi, %.noexc72.i.i.i ], [ %i.cq, %bb.i ] ; 2 uses
  %i.hk = phi ptr [ %i.hi, %.noexc72.i.i.i ], [ %i.cr, %bb.i ] ; 2 uses
  %i.hl = phi ptr [ %i.gr, %.noexc72.i.i.i ], [ %i.cs, %bb.i ] ; 2 uses
  %i.hm = phi ptr [ %i.hi, %.noexc72.i.i.i ], [ %i.ct, %bb.i ] ; 2 uses
  %i.hn = phi ptr [ %i.hh, %.noexc72.i.i.i ], [ %i.gg, %bb.i ] ; 2 uses
  br i1 %i.el, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %17 = fmul float %i.ei, %i.fl
  %18 = fmul float %14, %i.ei
  %19 = fmul float %i.do, %i.ei
  %.sroa.0.0.vec.insert.i73.i.i.i.i = insertelement <2 x float> poison, float %17, i64 0
  %.sroa.0.4.vec.insert.i74.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i73.i.i.i.i, float %18, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i74.i.i.i.i, ptr %4, align 8
  store float %19, ptr %.sroa.215.0..sroa_idx.i.i.i.i, align 8
  %i.ho = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 %.sroa.022.0.copyload.i.i.i, i32 %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %.noexc73.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc73.i.i.i:                                   ; preds = %bb.l
  %.fca.0.extract6.i.i.i.i = extractvalue { <2 x float>, float } %i.ho, 0 ; 2 uses
  %.fca.1.extract7.i.i.i.i = extractvalue { <2 x float>, float } %i.ho, 1
  %i.hp = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hq = insertelement <4 x float> %i.hp, float 0.000000e+00, i64 3
  %i.hr = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ht = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.hv = shufflevector <2 x float> %.fca.0.extract6.i.i.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.hw = insertelement <4 x float> %i.hv, float -0.000000e+00, i64 3
  %i.hx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.hw, <4 x float> zeroinitializer)
  %i.hy = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.hp, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> %i.hr, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ib = shufflevector <2 x float> %.fca.0.extract6.i.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ic = insertelement <4 x float> %i.ib, float -0.000000e+00, i64 3
  %i.id = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> %i.ic, <4 x float> %i.hx)
  %i.ie = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.if = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ie, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ig = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ih = shufflevector <4 x float> %i.if, <4 x float> %i.ig, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ii = insertelement <4 x float> %i.ih, float %.sroa.0254.sroa.11.0.copyload.i.i.i, i64 2
  %i.ij = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7.i.i.i.i, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %i.ik, <4 x float> %i.id) ; 2 uses
  %i.im = load ptr, ptr %i.s, align 8, !tbaa !105 ; 6 uses
  %i.in = load ptr, ptr %i.t, align 8, !tbaa !108
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not.i.i79.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc73.i.i.i
  %i.io = insertelement <4 x float> %i.il, float 0.000000e+00, i64 3
  store <4 x float> %i.io, ptr %i.im, align 4, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %i.ip, ptr %i.s, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i

bb.n:                                             ; preds = %.noexc73.i.i.i
  %i.iq = load ptr, ptr %6, align 8, !tbaa !106   ; 5 uses
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 4 uses
  %i.iu = icmp eq i64 %i.it, 9223372036854775792
  br i1 %i.iu, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.al, %bb.ah, %bb.z, %bb.v, %bb.n, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.iv = ashr exact i64 %i.it, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.iw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.iv ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iv
  %i.iy = call i64 @llvm.umin.i64(i64 %i.iw, i64 576460752303423487)
  %i.iz = select i1 %i.ix, i64 576460752303423487, i64 %i.iy ; 3 uses
  %.not.i.i140.i.i.i = icmp ne i64 %i.iz, 0
  call void @llvm.assume(i1 %.not.i.i140.i.i.i)
  %i.ja = shl nuw nsw i64 %i.iz, 4
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #23
          to label %.noexc145.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc145.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.it
  store <4 x float> %i.il, ptr %i.jc, align 4, !tbaa !12
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iq, %i.im
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i141.i.i.i

.lr.ph.i.i.i.i.i.i141.i.i.i:                      ; preds = %.noexc145.i.i.i, %.lr.ph.i.i.i.i.i.i141.i.i.i
  %.015.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i141.i.i.i ], [ %i.jb, %.noexc145.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i.i141.i.i.i ], [ %i.iq, %.noexc145.i.i.i ] ; 5 uses
  %i.jd = load float, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !12
  store float %i.jd, ptr %.015.i.i.i.i.i.i.i.i.i, align 4, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.jf = load float, ptr %i.je, align 4, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.jf, ptr %i.jg, align 4, !tbaa !12
  %i.jh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.ji, ptr %i.jj, align 4, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !12
  %i.jm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.jl, ptr %i.jm, align 4, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i142.i.i.i = icmp eq ptr %i.jn, %i.im
  br i1 %.not.i.i.i.i.i.i142.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i141.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i141.i.i.i, %.noexc145.i.i.i
  %.0.lcssa.i.i.i.i.i.i143.i.i.i = phi ptr [ %i.jb, %.noexc145.i.i.i ], [ %i.jo, %.lr.ph.i.i.i.i.i.i141.i.i.i ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i143.i.i.i, i64 16
  %.not.i35.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i35.i.i.i.i, label %.noexc74.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.it) #24
  br label %.noexc74.i.i.i

.noexc74.i.i.i:                                   ; preds = %bb.o, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  store ptr %i.jb, ptr %6, align 8, !tbaa !106
  store ptr %i.jp, ptr %i.s, align 8, !tbaa !105
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.iz
  store ptr %i.jq, ptr %i.t, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i: ; preds = %.noexc74.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i, %bb.g, %bb.e, %bb.d
  %i.jr = phi ptr [ %i.hj, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hj, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cq, %bb.g ], [ %i.cq, %bb.e ], [ %i.cq, %bb.d ] ; 4 uses
  %i.js = phi ptr [ %i.hk, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hk, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cr, %bb.g ], [ %i.cr, %bb.e ], [ %i.cr, %bb.d ] ; 8 uses
  %i.jt = phi ptr [ %i.hl, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hl, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cs, %bb.g ], [ %i.cs, %bb.e ], [ %i.cs, %bb.d ] ; 9 uses
  %i.ju = phi ptr [ %i.hm, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hm, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.ct, %bb.g ], [ %i.ct, %bb.e ], [ %i.ct, %bb.d ] ; 3 uses
  %i.jv = phi ptr [ %i.hn, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hn, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cu, %bb.g ], [ %i.cu, %bb.e ], [ %i.cu, %bb.d ] ; 8 uses
  %i.jw = load ptr, ptr %i.h, align 8, !tbaa !329, !nonnull !110, !align !113
  %i.jx = load ptr, ptr %.val, align 8, !tbaa !325, !nonnull !110, !align !113
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !33
  %i.jz = load ptr, ptr %i.f, align 8, !tbaa !323, !nonnull !110, !align !111 ; 2 uses
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.jz, align 4 ; 2 uses
  %.sroa.215.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.sroa.215.0.copyload.i.i.i = load i32, ptr %.sroa.215.0..sroa_idx.i.i.i, align 4, !tbaa !34
  %i.ka = load ptr, ptr %i.e, align 8, !tbaa !326, !nonnull !110, !align !111 ; 2 uses
  %i.kb = load <4 x i32>, ptr %i.ka, align 4, !tbaa !34 ; 3 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !34
  store <4 x i32> %i.kb, ptr %9, align 16, !tbaa !34
  %i.kd = load ptr, ptr %i.l, align 8, !tbaa !330, !nonnull !110, !align !111 ; 2 uses
  %i.ke = load <4 x i32>, ptr %i.kd, align 4, !tbaa !34
  store <4 x i32> %i.ke, ptr %10, align 16, !tbaa !34
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kg = load <4 x i32>, ptr %i.kf, align 4, !tbaa !34
  store <4 x i32> %i.kg, ptr %i.u, align 16, !tbaa !34
  %i.kh = load ptr, ptr %i.n, align 8, !tbaa !331, !nonnull !110, !align !111 ; 10 uses
  %.sroa.0253.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %.sroa.0253.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %.sroa.0253.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.0253.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %.sroa.0253.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 20
  %.sroa.0253.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 28
  %.sroa.0253.sroa.8.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.0253.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %.sroa.0253.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 36
  %i.ki = load <2 x float>, ptr %i.kh, align 4    ; 2 uses
  %i.kj = load <2 x float>, ptr %.sroa.0253.sroa.5.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %i.kk = load <2 x float>, ptr %.sroa.0253.sroa.2.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.kl = load <2 x float>, ptr %.sroa.0253.sroa.6.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.km = load <2 x float>, ptr %.sroa.0253.sroa.9.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0253.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.0253.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %.sroa.0253.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.11.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0253.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kh, i64 44
  %.sroa.0253.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.12.0..sroa_idx.i.i.i, align 4
  %i.kn = load ptr, ptr %i.g, align 8, !tbaa !328, !nonnull !110, !align !111
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !12
  %i.kp = load ptr, ptr %i.o, align 8, !tbaa !332, !nonnull !110, !align !111
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.kr = load ptr, ptr %i.p, align 8, !tbaa !333, !nonnull !110
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !92, !range !334, !noundef !110
  %i.kt = trunc nuw i8 %i.ks to i1
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.014.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32
  %i.ku = icmp slt i32 %i.cg, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.ku, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.kv = mul nsw i32 %i.kc, %.0321.i.i.i
  %i.kw = extractelement <4 x i32> %i.kb, i64 1
  %i.kx = mul nsw i32 %i.kw, %i.cg
  %i.ky = add nsw i32 %i.kx, %i.kv
  %i.kz = extractelement <4 x i32> %i.kb, i64 2
  %i.la = mul nsw i32 %i.kz, %.062316.i.i.i
  %i.lb = add nsw i32 %i.ky, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.lc ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !119
  %i.lf = sitofp i8 %i.le to float
  %i.lg = fmul nnan float %i.lf, -7.812500e-03    ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !327
  %i.lj = icmp ne i8 %i.li, 0
  %i.lk = fcmp une float %i.lg, 1.000000e+00
  %or.cond.i75.i.i.i = and i1 %i.lj, %i.lk
  br i1 %or.cond.i75.i.i.i, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.ll = fcmp ogt float %i.df, 0.000000e+00
  %i.lm = fcmp olt float %i.lg, 0.000000e+00
  %or.cond3.i76.i.i.i = and i1 %i.ll, %i.lm
  br i1 %or.cond3.i76.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ln = fcmp olt float %i.df, 0.000000e+00
  %i.lo = fcmp ogt float %i.lg, 0.000000e+00
  %or.cond5.i77.i.i.i = and i1 %i.ln, %i.lo
  br i1 %or.cond5.i77.i.i.i, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.lp = fadd float %14, %i.ko
  %i.lq = call noundef float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.lr = call noundef float @llvm.fabs.f32(float %i.lg) ; 2 uses
  %i.ls = fadd nnan float %i.lq, %i.lr
  %i.lt = fdiv nnan float 1.000000e+00, %i.ls
  %i.lu = fmul float %i.lq, %i.lp
  %i.lv = call float @llvm.fmuladd.f32(float %14, float %i.lr, float %i.lu)
  %i.lw = fmul float %i.lv, %i.lt                 ; 3 uses
  %i.lx = shufflevector <2 x float> %i.kk, <2 x float> %i.kl, <2 x i32> <i32 0, i32 2>
  %i.ly = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul <2 x float> %i.lx, %i.lz
  %i.mb = shufflevector <2 x float> %i.ki, <2 x float> %i.kj, <2 x i32> <i32 0, i32 2>
  %20 = insertelement <2 x float> poison, float %13, i64 0
  %i.mc = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.mc, <2 x float> %i.ma)
  %i.me = shufflevector <2 x float> %i.kk, <2 x float> %i.kl, <2 x i32> <i32 1, i32 3>
  %i.mf = insertelement <2 x float> poison, float %i.do, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> %i.mg, <2 x float> %i.md)
  %i.mi = insertelement <2 x float> poison, float %.sroa.0253.sroa.4.0.copyload.i.i.i, i64 0
  %i.mj = insertelement <2 x float> %i.mi, float %.sroa.0253.sroa.8.0.copyload.i.i.i, i64 1
  %i.mk = fadd <2 x float> %i.mj, %i.mh           ; 2 uses
  %i.ml = fmul float %.sroa.0253.sroa.10.0.copyload.i.i.i, %i.lw
  %i.mm = extractelement <2 x float> %i.km, i64 0
  %i.mn = call float @llvm.fmuladd.f32(float %i.mm, float %13, float %i.ml)
  %i.mo = call float @llvm.fmuladd.f32(float %.sroa.0253.sroa.11.0.copyload.i.i.i, float %i.do, float %i.mn)
  %i.mp = fadd float %.sroa.0253.sroa.12.0.copyload.i.i.i, %i.mo ; 2 uses
  %.not.i.i.i80.i.i.i = icmp eq ptr %i.jv, %i.js
  br i1 %.not.i.i.i80.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.mk, ptr %i.jv, align 4, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store float %i.mp, ptr %i.mq, align 4, !tbaa !12
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store float 0.000000e+00, ptr %i.mr, align 4, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  store ptr %i.ms, ptr %i.q, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.mt = ptrtoint ptr %i.js to i64
  %i.mu = ptrtoint ptr %i.jt to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 4 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775792
  br i1 %i.mw, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i: ; preds = %bb.v
  %i.mx = ashr exact i64 %i.mv, 4                 ; 3 uses
  %.sroa.speculated.i.i189.i.i.i = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i189.i.i.i, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 576460752303423487)
  %i.nb = select i1 %i.mz, i64 576460752303423487, i64 %i.na ; 3 uses
  %.not.i.i190.i.i.i = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i190.i.i.i)
  %i.nc = shl nuw nsw i64 %i.nb, 4
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #23
          to label %.noexc207.i.i.i unwind label %.loopexit.i.i.i ; 6 uses

.noexc207.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mv ; 3 uses
  store <2 x float> %i.mk, ptr %i.ne, align 4, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store float %i.mp, ptr %i.nf, align 4, !tbaa !12
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  store float 0.000000e+00, ptr %i.ng, align 4, !tbaa !12
  %.not13.i.i.i.i.i.i191.i.i.i = icmp eq ptr %i.jt, %i.js
  br i1 %.not13.i.i.i.i.i.i191.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i, label %.lr.ph.i.i.i.i.i.i192.i.i.i

.lr.ph.i.i.i.i.i.i192.i.i.i:                      ; preds = %.noexc207.i.i.i, %.lr.ph.i.i.i.i.i.i192.i.i.i
  %.015.i.i.i.i.i.i193.i.i.i = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i192.i.i.i ], [ %i.nd, %.noexc207.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i194.i.i.i = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i.i192.i.i.i ], [ %i.jt, %.noexc207.i.i.i ] ; 5 uses
  %i.nh = load float, ptr %.01214.i.i.i.i.i.i194.i.i.i, align 4, !tbaa !12
  store float %i.nh, ptr %.015.i.i.i.i.i.i193.i.i.i, align 4, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !12
  %i.nk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 4
  store float %i.nj, ptr %i.nk, align 4, !tbaa !12
  %i.nl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 8
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12
  %i.nn = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 8
  store float %i.nm, ptr %i.nn, align 4, !tbaa !12
  %i.no = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 12
  %i.np = load float, ptr %i.no, align 4, !tbaa !12
  %i.nq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 12
  store float %i.np, ptr %i.nq, align 4, !tbaa !12
  %i.nr = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i195.i.i.i = icmp eq ptr %i.nr, %i.js
  br i1 %.not.i.i.i.i.i.i195.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i, label %.lr.ph.i.i.i.i.i.i192.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i192.i.i.i, %.noexc207.i.i.i
  %.0.lcssa.i.i.i.i.i.i197.i.i.i = phi ptr [ %i.nd, %.noexc207.i.i.i ], [ %i.ns, %.lr.ph.i.i.i.i.i.i192.i.i.i ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i197.i.i.i, i64 16 ; 2 uses
  %.not.i35.i205.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i35.i205.i.i.i, label %.noexc91.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.mv) #24
  br label %.noexc91.i.i.i

.noexc91.i.i.i:                                   ; preds = %bb.w, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i
  store ptr %i.nd, ptr %5, align 8, !tbaa !106
  store ptr %i.nt, ptr %i.q, align 8, !tbaa !105
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %i.nb ; 3 uses
  store ptr %i.nu, ptr %i.r, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i: ; preds = %.noexc91.i.i.i, %bb.u
  %i.nv = phi ptr [ %i.nu, %.noexc91.i.i.i ], [ %i.jr, %bb.u ] ; 2 uses
  %i.nw = phi ptr [ %i.nu, %.noexc91.i.i.i ], [ %i.js, %bb.u ] ; 4 uses
  %i.nx = phi ptr [ %i.nd, %.noexc91.i.i.i ], [ %i.jt, %bb.u ] ; 2 uses
  %i.ny = phi ptr [ %i.nt, %.noexc91.i.i.i ], [ %i.ms, %bb.u ] ; 2 uses
  br i1 %i.kt, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.nz = fmul float %13, %i.kq
  %i.oa = fmul float %i.kq, %i.lw
  %i.ob = fmul float %i.do, %i.kq
  %.sroa.0.0.vec.insert.i73.i82.i.i.i = insertelement <2 x float> poison, float %i.nz, i64 0
  %.sroa.0.4.vec.insert.i74.i83.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i73.i82.i.i.i, float %i.oa, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i74.i83.i.i.i, ptr %3, align 8
  store float %i.ob, ptr %.sroa.215.0..sroa_idx.i84.i.i.i, align 8
  %i.oc = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.jw, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(32) %10, i64 %.sroa.014.0.copyload.i.i.i, i32 %.sroa.215.0.copyload.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc92.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc92.i.i.i:                                   ; preds = %bb.x
  %.fca.0.extract6.i85.i.i.i = extractvalue { <2 x float>, float } %i.oc, 0 ; 2 uses
  %.fca.1.extract7.i86.i.i.i = extractvalue { <2 x float>, float } %i.oc, 1
  %i.od = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oe = insertelement <4 x float> %i.od, float 0.000000e+00, i64 3
  %i.of = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.og = shufflevector <4 x float> %i.oe, <4 x float> %i.of, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.oh = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oi = shufflevector <4 x float> %i.og, <4 x float> %i.oh, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.oj = shufflevector <2 x float> %.fca.0.extract6.i85.i.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ok = insertelement <4 x float> %i.oj, float -0.000000e+00, i64 3
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> %i.ok, <4 x float> zeroinitializer)
  %i.om = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.od, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.on = shufflevector <4 x float> %i.om, <4 x float> %i.of, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> %i.oh, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.op = shufflevector <2 x float> %.fca.0.extract6.i85.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.oq = insertelement <4 x float> %i.op, float -0.000000e+00, i64 3
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> %i.oq, <4 x float> %i.ol)
  %i.os = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ot = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.os, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ou = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ov = shufflevector <4 x float> %i.ot, <4 x float> %i.ou, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ow = insertelement <4 x float> %i.ov, float %.sroa.0253.sroa.11.0.copyload.i.i.i, i64 2
  %i.ox = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7.i86.i.i.i, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ow, <4 x float> %i.oy, <4 x float> %i.or) ; 2 uses
  %i.pa = load ptr, ptr %i.s, align 8, !tbaa !105 ; 6 uses
  %i.pb = load ptr, ptr %i.t, align 8, !tbaa !108
  %.not.i.i79.i89.i.i.i = icmp eq ptr %i.pa, %i.pb
  br i1 %.not.i.i79.i89.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc92.i.i.i
  %i.pc = insertelement <4 x float> %i.oz, float 0.000000e+00, i64 3
  store <4 x float> %i.pc, ptr %i.pa, align 4, !tbaa !12
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store ptr %i.pd, ptr %i.s, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i

bb.z:                                             ; preds = %.noexc92.i.i.i
  %i.pe = load ptr, ptr %6, align 8, !tbaa !106   ; 5 uses
  %i.pf = ptrtoint ptr %i.pa to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg                    ; 4 uses
  %i.pi = icmp eq i64 %i.ph, 9223372036854775792
  br i1 %i.pi, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i: ; preds = %bb.z
  %i.pj = ashr exact i64 %i.ph, 4                 ; 3 uses
  %.sroa.speculated.i.i168.i.i.i = call i64 @llvm.umax.i64(i64 %i.pj, i64 1)
  %i.pk = add nsw i64 %.sroa.speculated.i.i168.i.i.i, %i.pj ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.pj
  %i.pm = call i64 @llvm.umin.i64(i64 %i.pk, i64 576460752303423487)
  %i.pn = select i1 %i.pl, i64 576460752303423487, i64 %i.pm ; 3 uses
  %.not.i.i169.i.i.i = icmp ne i64 %i.pn, 0
  call void @llvm.assume(i1 %.not.i.i169.i.i.i)
  %i.po = shl nuw nsw i64 %i.pn, 4
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #23
          to label %.noexc186.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc186.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ph
  store <4 x float> %i.oz, ptr %i.pq, align 4, !tbaa !12
  %.not13.i.i.i.i.i.i170.i.i.i = icmp eq ptr %i.pe, %i.pa
  br i1 %.not13.i.i.i.i.i.i170.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i, label %.lr.ph.i.i.i.i.i.i171.i.i.i

.lr.ph.i.i.i.i.i.i171.i.i.i:                      ; preds = %.noexc186.i.i.i, %.lr.ph.i.i.i.i.i.i171.i.i.i
  %.015.i.i.i.i.i.i172.i.i.i = phi ptr [ %i.qc, %.lr.ph.i.i.i.i.i.i171.i.i.i ], [ %i.pp, %.noexc186.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i173.i.i.i = phi ptr [ %i.qb, %.lr.ph.i.i.i.i.i.i171.i.i.i ], [ %i.pe, %.noexc186.i.i.i ] ; 5 uses
  %i.pr = load float, ptr %.01214.i.i.i.i.i.i173.i.i.i, align 4, !tbaa !12
  store float %i.pr, ptr %.015.i.i.i.i.i.i172.i.i.i, align 4, !tbaa !12
  %i.ps = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 4
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !12
  %i.pu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 4
  store float %i.pt, ptr %i.pu, align 4, !tbaa !12
  %i.pv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !12
  %i.px = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 8
  store float %i.pw, ptr %i.px, align 4, !tbaa !12
  %i.py = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 12
  %i.pz = load float, ptr %i.py, align 4, !tbaa !12
  %i.qa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 12
  store float %i.pz, ptr %i.qa, align 4, !tbaa !12
  %i.qb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 16 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i174.i.i.i = icmp eq ptr %i.qb, %i.pa
  br i1 %.not.i.i.i.i.i.i174.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i, label %.lr.ph.i.i.i.i.i.i171.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i171.i.i.i, %.noexc186.i.i.i
  %.0.lcssa.i.i.i.i.i.i176.i.i.i = phi ptr [ %i.pp, %.noexc186.i.i.i ], [ %i.qc, %.lr.ph.i.i.i.i.i.i171.i.i.i ]
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i176.i.i.i, i64 16
  %.not.i35.i184.i.i.i = icmp eq ptr %i.pe, null
  br i1 %.not.i35.i184.i.i.i, label %.noexc93.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.ph) #24
  br label %.noexc93.i.i.i

.noexc93.i.i.i:                                   ; preds = %bb.aa, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i
  store ptr %i.pp, ptr %6, align 8, !tbaa !106
  store ptr %i.qd, ptr %i.s, align 8, !tbaa !105
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %i.pn
  store ptr %i.qe, ptr %i.t, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i: ; preds = %.noexc93.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i, %bb.s, %bb.q, %bb.p
  %i.qf = phi ptr [ %i.nv, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.nv, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jr, %bb.s ], [ %i.jr, %bb.q ], [ %i.jr, %bb.p ] ; 8 uses
  %i.qg = phi ptr [ %i.nw, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.nw, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.js, %bb.s ], [ %i.js, %bb.q ], [ %i.js, %bb.p ] ; 3 uses
  %i.qh = phi ptr [ %i.nx, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.nx, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jt, %bb.s ], [ %i.jt, %bb.q ], [ %i.jt, %bb.p ] ; 9 uses
  %i.qi = phi ptr [ %i.nw, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.nw, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.ju, %bb.s ], [ %i.ju, %bb.q ], [ %i.ju, %bb.p ] ; 3 uses
  %i.qj = phi ptr [ %i.ny, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.ny, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jv, %bb.s ], [ %i.jv, %bb.q ], [ %i.jv, %bb.p ] ; 8 uses
  %i.qk = load ptr, ptr %i.h, align 8, !tbaa !329, !nonnull !110, !align !113
  %i.ql = load ptr, ptr %.val, align 8, !tbaa !325, !nonnull !110, !align !113
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !33
  %i.qn = load ptr, ptr %i.f, align 8, !tbaa !323, !nonnull !110, !align !111 ; 2 uses
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.qn, align 4
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %.sroa.27.0.copyload.i.i.i = load i32, ptr %.sroa.27.0..sroa_idx.i.i.i, align 4, !tbaa !34 ; 2 uses
  %i.qo = load ptr, ptr %i.e, align 8, !tbaa !326, !nonnull !110, !align !111 ; 2 uses
  %i.qp = load <4 x i32>, ptr %i.qo, align 4, !tbaa !34 ; 3 uses
  %i.qq = load i32, ptr %i.qo, align 4, !tbaa !34
  store <4 x i32> %i.qp, ptr %11, align 16, !tbaa !34
  %i.qr = load ptr, ptr %i.l, align 8, !tbaa !330, !nonnull !110, !align !111 ; 2 uses
  %i.qs = load <4 x i32>, ptr %i.qr, align 4, !tbaa !34
  store <4 x i32> %i.qs, ptr %12, align 16, !tbaa !34
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qu = load <4 x i32>, ptr %i.qt, align 4, !tbaa !34
  store <4 x i32> %i.qu, ptr %i.v, align 16, !tbaa !34
  %i.qv = load ptr, ptr %i.n, align 8, !tbaa !331, !nonnull !110, !align !111 ; 10 uses
  %.sroa.0252.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %.sroa.0252.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  %.sroa.0252.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.0252.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %.sroa.0252.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 20
  %.sroa.0252.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 28
  %.sroa.0252.sroa.8.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.0252.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %.sroa.0252.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 36
  %i.qw = load <2 x float>, ptr %i.qv, align 4    ; 2 uses
  %i.qx = load <2 x float>, ptr %.sroa.0252.sroa.5.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %i.qy = load <2 x float>, ptr %.sroa.0252.sroa.2.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.qz = load <2 x float>, ptr %.sroa.0252.sroa.6.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.ra = load <2 x float>, ptr %.sroa.0252.sroa.9.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0252.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.0252.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  %.sroa.0252.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.11.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0252.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 44
  %.sroa.0252.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.12.0..sroa_idx.i.i.i, align 4
  %i.rb = load ptr, ptr %i.g, align 8, !tbaa !328, !nonnull !110, !align !111
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !12
  %i.rd = load ptr, ptr %i.o, align 8, !tbaa !332, !nonnull !110, !align !111
  %i.re = load float, ptr %i.rd, align 4, !tbaa !12 ; 3 uses
  %i.rf = load ptr, ptr %i.p, align 8, !tbaa !333, !nonnull !110
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !92, !range !334, !noundef !110
  %i.rh = trunc nuw i8 %i.rg to i1
  %i.ri = add nuw nsw i32 %.062316.i.i.i, 1       ; 7 uses
  %i.rj = icmp slt i32 %i.ri, %.sroa.27.0.copyload.i.i.i
  br i1 %i.rj, label %bb.ac, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.rk = mul nsw i32 %i.qq, %.0321.i.i.i
  %i.rl = extractelement <4 x i32> %i.qp, i64 1
  %i.rm = mul nsw i32 %i.rl, %.061317.i.i.i
  %i.rn = add nsw i32 %i.rm, %i.rk
  %i.ro = extractelement <4 x i32> %i.qp, i64 2
  %i.rp = mul nsw i32 %i.ro, %i.ri
  %i.rq = add nsw i32 %i.rn, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.rr ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !119
  %i.ru = sitofp i8 %i.rt to float
  %i.rv = fmul nnan float %i.ru, -7.812500e-03    ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !327
  %i.ry = icmp ne i8 %i.rx, 0
  %i.rz = fcmp une float %i.rv, 1.000000e+00
  %or.cond.i95.i.i.i = and i1 %i.ry, %i.rz
  br i1 %or.cond.i95.i.i.i, label %bb.ad, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.sa = fcmp ogt float %i.df, 0.000000e+00
  %i.sb = fcmp olt float %i.rv, 0.000000e+00
  %or.cond3.i96.i.i.i = and i1 %i.sa, %i.sb
  br i1 %or.cond3.i96.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.sc = fcmp olt float %i.df, 0.000000e+00
  %i.sd = fcmp ogt float %i.rv, 0.000000e+00
  %or.cond5.i97.i.i.i = and i1 %i.sc, %i.sd
  br i1 %or.cond5.i97.i.i.i, label %bb.af, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.se = fadd float %i.do, %i.rc
  %i.sf = call noundef float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.sg = call noundef float @llvm.fabs.f32(float %i.rv) ; 2 uses
  %i.sh = fadd nnan float %i.sf, %i.sg
  %i.si = fdiv nnan float 1.000000e+00, %i.sh
  %i.sj = fmul float %i.sf, %i.se
  %i.sk = call float @llvm.fmuladd.f32(float %i.do, float %i.sg, float %i.sj)
  %i.sl = fmul float %i.sk, %i.si                 ; 3 uses
  %21 = insertelement <2 x float> poison, float %14, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sm = shufflevector <2 x float> %i.qy, <2 x float> %i.qz, <2 x i32> <i32 0, i32 2>
  %i.sn = fmul <2 x float> %22, %i.sm
  %i.so = shufflevector <2 x float> %i.qw, <2 x float> %i.qx, <2 x i32> <i32 0, i32 2>
  %23 = insertelement <2 x float> poison, float %13, i64 0
  %i.sp = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.so, <2 x float> %i.sp, <2 x float> %i.sn)
  %i.sr = shufflevector <2 x float> %i.qy, <2 x float> %i.qz, <2 x i32> <i32 1, i32 3>
  %i.ss = insertelement <2 x float> poison, float %i.sl, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sr, <2 x float> %i.st, <2 x float> %i.sq)
  %i.sv = insertelement <2 x float> poison, float %.sroa.0252.sroa.4.0.copyload.i.i.i, i64 0
  %i.sw = insertelement <2 x float> %i.sv, float %.sroa.0252.sroa.8.0.copyload.i.i.i, i64 1
  %i.sx = fadd <2 x float> %i.sw, %i.su           ; 2 uses
  %i.sy = fmul float %14, %.sroa.0252.sroa.10.0.copyload.i.i.i
  %i.sz = extractelement <2 x float> %i.ra, i64 0
  %i.ta = call float @llvm.fmuladd.f32(float %i.sz, float %13, float %i.sy)
  %i.tb = call float @llvm.fmuladd.f32(float %.sroa.0252.sroa.11.0.copyload.i.i.i, float %i.sl, float %i.ta)
  %i.tc = fadd float %.sroa.0252.sroa.12.0.copyload.i.i.i, %i.tb ; 2 uses
  %.not.i.i.i100.i.i.i = icmp eq ptr %i.qj, %i.qf
  br i1 %.not.i.i.i100.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store <2 x float> %i.sx, ptr %i.qj, align 4, !tbaa !12
  %i.td = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store float %i.tc, ptr %i.td, align 4, !tbaa !12
  %i.te = getelementptr inbounds nuw i8, ptr %i.qj, i64 12
  store float 0.000000e+00, ptr %i.te, align 4, !tbaa !12
  %i.tf = getelementptr inbounds nuw i8, ptr %i.qj, i64 16 ; 2 uses
  store ptr %i.tf, ptr %i.q, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.tg = ptrtoint ptr %i.qf to i64
  %i.th = ptrtoint ptr %i.qh to i64
  %i.ti = sub i64 %i.tg, %i.th                    ; 4 uses
  %i.tj = icmp eq i64 %i.ti, 9223372036854775792
  br i1 %i.tj, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i: ; preds = %bb.ah
  %i.tk = ashr exact i64 %i.ti, 4                 ; 3 uses
  %.sroa.speculated.i.i231.i.i.i = call i64 @llvm.umax.i64(i64 %i.tk, i64 1)
  %i.tl = add nsw i64 %.sroa.speculated.i.i231.i.i.i, %i.tk ; 2 uses
  %i.tm = icmp ult i64 %i.tl, %i.tk
  %i.tn = call i64 @llvm.umin.i64(i64 %i.tl, i64 576460752303423487)
  %i.to = select i1 %i.tm, i64 576460752303423487, i64 %i.tn ; 3 uses
  %.not.i.i232.i.i.i = icmp ne i64 %i.to, 0
  call void @llvm.assume(i1 %.not.i.i232.i.i.i)
  %i.tp = shl nuw nsw i64 %i.to, 4
  %i.tq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tp) #23
          to label %.noexc249.i.i.i unwind label %.loopexit.i.i.i ; 6 uses

.noexc249.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.ti ; 3 uses
  store <2 x float> %i.sx, ptr %i.tr, align 4, !tbaa !12
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store float %i.tc, ptr %i.ts, align 4, !tbaa !12
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store float 0.000000e+00, ptr %i.tt, align 4, !tbaa !12
  %.not13.i.i.i.i.i.i233.i.i.i = icmp eq ptr %i.qh, %i.qf
  br i1 %.not13.i.i.i.i.i.i233.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i, label %.lr.ph.i.i.i.i.i.i234.i.i.i

.lr.ph.i.i.i.i.i.i234.i.i.i:                      ; preds = %.noexc249.i.i.i, %.lr.ph.i.i.i.i.i.i234.i.i.i
  %.015.i.i.i.i.i.i235.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i234.i.i.i ], [ %i.tq, %.noexc249.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i236.i.i.i = phi ptr [ %i.ue, %.lr.ph.i.i.i.i.i.i234.i.i.i ], [ %i.qh, %.noexc249.i.i.i ] ; 5 uses
  %i.tu = load float, ptr %.01214.i.i.i.i.i.i236.i.i.i, align 4, !tbaa !12
  store float %i.tu, ptr %.015.i.i.i.i.i.i235.i.i.i, align 4, !tbaa !12
  %i.tv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 4
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !12
  %i.tx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 4
  store float %i.tw, ptr %i.tx, align 4, !tbaa !12
  %i.ty = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 8
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !12
  %i.ua = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 8
  store float %i.tz, ptr %i.ua, align 4, !tbaa !12
  %i.ub = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 12
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !12
  %i.ud = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 12
  store float %i.uc, ptr %i.ud, align 4, !tbaa !12
  %i.ue = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 16 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i237.i.i.i = icmp eq ptr %i.ue, %i.qf
  br i1 %.not.i.i.i.i.i.i237.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i, label %.lr.ph.i.i.i.i.i.i234.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i234.i.i.i, %.noexc249.i.i.i
  %.0.lcssa.i.i.i.i.i.i239.i.i.i = phi ptr [ %i.tq, %.noexc249.i.i.i ], [ %i.uf, %.lr.ph.i.i.i.i.i.i234.i.i.i ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i239.i.i.i, i64 16 ; 2 uses
  %.not.i35.i247.i.i.i = icmp eq ptr %i.qh, null
  br i1 %.not.i35.i247.i.i.i, label %.noexc111.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.ti) #24
  br label %.noexc111.i.i.i

.noexc111.i.i.i:                                  ; preds = %bb.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i
  store ptr %i.tq, ptr %5, align 8, !tbaa !106
  store ptr %i.ug, ptr %i.q, align 8, !tbaa !105
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %i.tq, i64 %i.to ; 2 uses
  store ptr %i.uh, ptr %i.r, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i: ; preds = %.noexc111.i.i.i, %bb.ag
  %i.ui = phi ptr [ %i.uh, %.noexc111.i.i.i ], [ %i.qf, %bb.ag ] ; 6 uses
  %i.uj = phi ptr [ %i.tq, %.noexc111.i.i.i ], [ %i.qh, %bb.ag ] ; 2 uses
  %i.uk = phi ptr [ %i.ug, %.noexc111.i.i.i ], [ %i.tf, %bb.ag ] ; 2 uses
  br i1 %i.rh, label %bb.aj, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.aj:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ul = fmul float %13, %i.re
  %i.um = fmul float %14, %i.re
  %i.un = fmul float %i.re, %i.sl
  %.sroa.0.0.vec.insert.i73.i102.i.i.i = insertelement <2 x float> poison, float %i.ul, i64 0
  %.sroa.0.4.vec.insert.i74.i103.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i73.i102.i.i.i, float %i.um, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i74.i103.i.i.i, ptr %2, align 8
  store float %i.un, ptr %.sroa.215.0..sroa_idx.i104.i.i.i, align 8
  %i.uo = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.qk, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(32) %12, i64 %.sroa.06.0.copyload.i.i.i, i32 %.sroa.27.0.copyload.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %.noexc112.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc112.i.i.i:                                  ; preds = %bb.aj
  %.fca.0.extract6.i105.i.i.i = extractvalue { <2 x float>, float } %i.uo, 0 ; 2 uses
  %.fca.1.extract7.i106.i.i.i = extractvalue { <2 x float>, float } %i.uo, 1
  %i.up = shufflevector <2 x float> %i.qw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uq = insertelement <4 x float> %i.up, float 0.000000e+00, i64 3
  %i.ur = shufflevector <2 x float> %i.qx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.us = shufflevector <4 x float> %i.uq, <4 x float> %i.ur, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ut = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uu = shufflevector <4 x float> %i.us, <4 x float> %i.ut, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.uv = shufflevector <2 x float> %.fca.0.extract6.i105.i.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.uw = insertelement <4 x float> %i.uv, float -0.000000e+00, i64 3
  %i.ux = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.uw, <4 x float> zeroinitializer)
  %i.uy = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.up, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> %i.ur, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.va = shufflevector <4 x float> %i.uz, <4 x float> %i.ut, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.vb = shufflevector <2 x float> %.fca.0.extract6.i105.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.vc = insertelement <4 x float> %i.vb, float -0.000000e+00, i64 3
  %i.vd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.va, <4 x float> %i.vc, <4 x float> %i.ux)
  %i.ve = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vf = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ve, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.vg = shufflevector <2 x float> %i.qz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vh = shufflevector <4 x float> %i.vf, <4 x float> %i.vg, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.vi = insertelement <4 x float> %i.vh, float %.sroa.0252.sroa.11.0.copyload.i.i.i, i64 2
  %i.vj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7.i106.i.i.i, i64 0
  %i.vk = shufflevector <4 x float> %i.vj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.vl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vi, <4 x float> %i.vk, <4 x float> %i.vd) ; 2 uses
  %i.vm = load ptr, ptr %i.s, align 8, !tbaa !105 ; 6 uses
  %i.vn = load ptr, ptr %i.t, align 8, !tbaa !108
  %.not.i.i79.i109.i.i.i = icmp eq ptr %i.vm, %i.vn
  br i1 %.not.i.i79.i109.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.noexc112.i.i.i
  %i.vo = insertelement <4 x float> %i.vl, float 0.000000e+00, i64 3
  store <4 x float> %i.vo, ptr %i.vm, align 4, !tbaa !12
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store ptr %i.vp, ptr %i.s, align 8, !tbaa !105
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i

bb.al:                                            ; preds = %.noexc112.i.i.i
  %i.vq = load ptr, ptr %6, align 8, !tbaa !106   ; 5 uses
  %i.vr = ptrtoint ptr %i.vm to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = sub i64 %i.vr, %i.vs                    ; 4 uses
  %i.vu = icmp eq i64 %i.vt, 9223372036854775792
  br i1 %i.vu, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i: ; preds = %bb.al
  %i.vv = ashr exact i64 %i.vt, 4                 ; 3 uses
  %.sroa.speculated.i.i210.i.i.i = call i64 @llvm.umax.i64(i64 %i.vv, i64 1)
  %i.vw = add nsw i64 %.sroa.speculated.i.i210.i.i.i, %i.vv ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.vv
  %i.vy = call i64 @llvm.umin.i64(i64 %i.vw, i64 576460752303423487)
  %i.vz = select i1 %i.vx, i64 576460752303423487, i64 %i.vy ; 3 uses
  %.not.i.i211.i.i.i = icmp ne i64 %i.vz, 0
  call void @llvm.assume(i1 %.not.i.i211.i.i.i)
  %i.wa = shl nuw nsw i64 %i.vz, 4
  %i.wb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wa) #23
          to label %.noexc228.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc228.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.vt
  store <4 x float> %i.vl, ptr %i.wc, align 4, !tbaa !12
  %.not13.i.i.i.i.i.i212.i.i.i = icmp eq ptr %i.vq, %i.vm
  br i1 %.not13.i.i.i.i.i.i212.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i, label %.lr.ph.i.i.i.i.i.i213.i.i.i

.lr.ph.i.i.i.i.i.i213.i.i.i:                      ; preds = %.noexc228.i.i.i, %.lr.ph.i.i.i.i.i.i213.i.i.i
  %.015.i.i.i.i.i.i214.i.i.i = phi ptr [ %i.wo, %.lr.ph.i.i.i.i.i.i213.i.i.i ], [ %i.wb, %.noexc228.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i215.i.i.i = phi ptr [ %i.wn, %.lr.ph.i.i.i.i.i.i213.i.i.i ], [ %i.vq, %.noexc228.i.i.i ] ; 5 uses
  %i.wd = load float, ptr %.01214.i.i.i.i.i.i215.i.i.i, align 4, !tbaa !12
  store float %i.wd, ptr %.015.i.i.i.i.i.i214.i.i.i, align 4, !tbaa !12
  %i.we = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 4
  %i.wf = load float, ptr %i.we, align 4, !tbaa !12
  %i.wg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 4
  store float %i.wf, ptr %i.wg, align 4, !tbaa !12
  %i.wh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 8
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !12
  %i.wj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 8
  store float %i.wi, ptr %i.wj, align 4, !tbaa !12
  %i.wk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 12
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !12
  %i.wm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 12
  store float %i.wl, ptr %i.wm, align 4, !tbaa !12
  %i.wn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 16 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i216.i.i.i = icmp eq ptr %i.wn, %i.vm
  br i1 %.not.i.i.i.i.i.i216.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i, label %.lr.ph.i.i.i.i.i.i213.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i213.i.i.i, %.noexc228.i.i.i
  %.0.lcssa.i.i.i.i.i.i218.i.i.i = phi ptr [ %i.wb, %.noexc228.i.i.i ], [ %i.wo, %.lr.ph.i.i.i.i.i.i213.i.i.i ]
  %i.wp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i218.i.i.i, i64 16
  %.not.i35.i226.i.i.i = icmp eq ptr %i.vq, null
  br i1 %.not.i35.i226.i.i.i, label %.noexc113.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %i.vt) #24
  br label %.noexc113.i.i.i

.noexc113.i.i.i:                                  ; preds = %bb.am, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i
  store ptr %i.wb, ptr %6, align 8, !tbaa !106
  store ptr %i.wp, ptr %i.s, align 8, !tbaa !105
  %i.wq = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.vz
  store ptr %i.wq, ptr %i.t, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i: ; preds = %.noexc113.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i, %bb.aj, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i, %bb.x, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.l, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i.i:                         ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i: ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i, %bb.ae, %bb.ac, %bb.ab, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre335.i.i.i, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.ri, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.ri, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.ri, %bb.ae ], [ %i.ri, %bb.ac ], [ %i.ri, %bb.ab ] ; 2 uses
  %i.wr = phi ptr [ %i.cq, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.ui, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.ui, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qf, %bb.ae ], [ %i.qf, %bb.ac ], [ %i.qf, %bb.ab ] ; 2 uses
  %i.ws = phi ptr [ %i.cr, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.ui, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.ui, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qg, %bb.ae ], [ %i.qg, %bb.ac ], [ %i.qg, %bb.ab ] ; 2 uses
  %i.wt = phi ptr [ %i.cs, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.uj, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.uj, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qh, %bb.ae ], [ %i.qh, %bb.ac ], [ %i.qh, %bb.ab ] ; 2 uses
  %i.wu = phi ptr [ %i.ct, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.ui, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.ui, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qi, %bb.ae ], [ %i.qi, %bb.ac ], [ %i.qi, %bb.ab ] ; 2 uses
  %i.wv = phi ptr [ %i.cu, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.uk, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.uk, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qj, %bb.ae ], [ %i.qj, %bb.ac ], [ %i.qj, %bb.ab ] ; 2 uses
  %i.ww = load ptr, ptr %i.f, align 8, !tbaa !323, !nonnull !110, !align !111 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !36 ; 2 uses
  %i.wz = icmp slt i32 %.pre-phi.i.i.i, %i.wy
  br i1 %i.wz, label %bb.c, label %._crit_edge.i.i.i, !llvm.loop !321

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i: ; preds = %._crit_edge325.i.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !335, !nonnull !110, !align !113 ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 3 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !101 ; 9 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !109
  %.not.i.i.i.i = icmp eq ptr %i.xd, %i.xf
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  %i.xg = ptrtoint ptr %i.ab to i64
  %i.xh = ptrtoint ptr %i.aa to i64
  %i.xi = sub i64 %i.xg, %i.xh                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xd, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc116.i.thread.i.i, label %bb.ao

.noexc116.i.thread.i.i:                           ; preds = %bb.an
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xk = getelementptr inbounds nuw i8, ptr null, i64 %i.xi
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, i8 0, i64 16, i1 false)
  store ptr %i.xk, ptr %i.xl, align 8, !tbaa !108
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.xm = icmp ugt i64 %i.xi, 9223372036854775792
  br i1 %i.xm, label %.noexc.i.i.i128.invoke.i.i.i, label %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !121

_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.xn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xi) #23
          to label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i unwind label %bb.aw ; 4 uses

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  store ptr %i.xn, ptr %i.xd, align 8, !tbaa !106
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 2 uses
  store ptr %i.xn, ptr %i.xo, align 8, !tbaa !105
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xi
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  store ptr %i.xp, ptr %i.xq, align 8, !tbaa !108
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i
  %.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.xn, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %i.xr = load float, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, align 4, !tbaa !12
  store float %i.xr, ptr %.013.i.i.i.i.i.i.i.i.i, align 4, !tbaa !12
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 4
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !12
  %i.xu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !12
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 8
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !12
  %i.xx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.xw, ptr %i.xx, align 4, !tbaa !12
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 12
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !12
  %i.ya = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.xz, ptr %i.ya, align 4, !tbaa !12
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_0
