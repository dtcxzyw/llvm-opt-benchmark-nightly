Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genion?download=true
inline.NumInlined: 841
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL12update_topolPKciiS0_S0_Pc:bb.a
bb.ax:                                            ; preds = %bb.aw, %bb.at, %bb.ai, %bb.t, %bb.e
  %.pn67 = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.bx, %bb.ai ], [ %.pn, %bb.aw ], [ %i.dc, %bb.at ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  resume { ptr, i32 } %.pn67
}

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN3gmx14makeRandomSeedEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERN3gmx16ThreeFry2x64FastILj64EEEEvT_SB_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(52) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %mul.ov = icmp ugt i64 %i.d, 17179869180
  %.sroa.017.048 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  br i1 %mul.ov, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not4349 = icmp eq ptr %.sroa.017.048, %1
  br i1 %.not4349, label %.loopexit, label %.lr.ph51

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.d, 4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_.exit, label %bb.d

_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.i = lshr i64 %i.h, 63
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %.sroa.017.048, align 4, !tbaa !12
  %i.l = load i32, ptr %i.j, align 4, !tbaa !12
  store i32 %i.l, ptr %.sroa.017.048, align 4, !tbaa !12
  store i32 %i.k, ptr %i.j, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_.exit, %bb.c
  %.sroa.024.0 = phi ptr [ %i.g, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_.exit ], [ %.sroa.017.048, %bb.c ] ; 2 uses
  %.not46 = icmp eq ptr %.sroa.024.0, %1
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit
  %.sroa.024.147 = phi ptr [ %i.an, %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit ], [ %.sroa.024.0, %bb.d ] ; 5 uses
  %i.m = ptrtoint ptr %.sroa.024.147 to i64
  %i.n = sub i64 %i.m, %i.c
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = add nsw i64 %i.o, 1
  %i.q = add nsw i64 %i.o, 2                      ; 3 uses
  %i.r = mul i64 %i.q, %i.p                       ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = add i64 %i.r, -1
  %i.t = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.u = zext i64 %i.t to i128
  %i.v = zext i64 %i.r to i128                    ; 2 uses
  %i.w = mul nuw i128 %i.u, %i.v                  ; 2 uses
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %.not21.i.i.i = icmp ult i64 %i.s, %i.x
  %extract15.i.i.i.i = lshr i128 %i.w, 64
  %extract.t16.i.i.i.i = trunc nuw i128 %extract15.i.i.i.i to i64 ; 2 uses
  br i1 %.not21.i.i.i, label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sub i64 0, %i.r
  %i.z = urem i64 %i.y, %i.r                      ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.x
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ab = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, %i.v                ; 2 uses
  %i.ae = trunc i128 %i.ad to i64
  %i.af = icmp ugt i64 %i.z, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i, !llvm.loop !134

..loopexit_crit_edge.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %extract19.le.i.i.i.i = lshr i128 %i.ad, 64
  %extract.t20.le.i.i.i.i = trunc nuw i128 %extract19.le.i.i.i.i to i64
  br label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ag = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  br label %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit

_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit: ; preds = %bb.e, %bb.f, %..loopexit_crit_edge.i.i.i.i, %bb.g
  %.0.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %extract.t16.i.i.i.i, %bb.e ], [ %extract.t20.le.i.i.i.i, %..loopexit_crit_edge.i.i.i.i ], [ %extract.t16.i.i.i.i, %bb.f ] ; 2 uses
  %i.ah = udiv i64 %.0.i.i.i, %i.q
  %i.ai = urem i64 %.0.i.i.i, %i.q
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.024.147, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.al = load i32, ptr %.sroa.024.147, align 4, !tbaa !12
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !12
  store i32 %i.am, ptr %.sroa.024.147, align 4, !tbaa !12
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.024.147, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !12
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !12
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !12
  %.not = icmp eq ptr %i.an, %1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !135

.lr.ph51:                                         ; preds = %.preheader, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit
  %.sroa.017.050 = phi ptr [ %.sroa.017.0, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit ], [ %.sroa.017.048, %.preheader ] ; 4 uses
  %i.ar = ptrtoint ptr %.sroa.017.050 to i64
  %i.as = sub i64 %i.ar, %i.c                     ; 2 uses
  %i.at = ashr exact i64 %i.as, 2                 ; 3 uses
  %.not.i = icmp eq i64 %i.as, -4
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph51
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.av = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.aw = zext i64 %i.av to i128
  %i.ax = zext i64 %i.au to i128                  ; 2 uses
  %i.ay = mul nuw i128 %i.aw, %i.ax               ; 2 uses
  %i.az = trunc i128 %i.ay to i64                 ; 2 uses
  %.not21.i = icmp ult i64 %i.at, %i.az
  %extract15.i.i = lshr i128 %i.ay, 64
  %extract.t16.i.i = trunc nuw i128 %extract15.i.i to i64 ; 2 uses
  br i1 %.not21.i, label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = xor i64 %i.at, -1
  %i.bb = urem i64 %i.ba, %i.au                   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.az
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.bd = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw i128 %i.be, %i.ax               ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = icmp ugt i64 %i.bb, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !134

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph.i.i
  %extract19.le.i.i = lshr i128 %i.bf, 64
  %extract.t20.le.i.i = trunc nuw i128 %extract19.le.i.i to i64
  br label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit

bb.j:                                             ; preds = %.lr.ph51
  %i.bi = tail call noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %2)
  br label %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit

_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit: ; preds = %bb.h, %bb.i, %..loopexit_crit_edge.i.i, %bb.j
  %.0.i = phi i64 [ %i.bi, %bb.j ], [ %extract.t16.i.i, %bb.h ], [ %extract.t20.le.i.i, %..loopexit_crit_edge.i.i ], [ %extract.t16.i.i, %bb.i ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.i ; 2 uses
  %i.bk = load i32, ptr %.sroa.017.050, align 4, !tbaa !12
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !12
  store i32 %i.bl, ptr %.sroa.017.050, align 4, !tbaa !12
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !12
  %.sroa.017.0 = getelementptr inbounds nuw i8, ptr %.sroa.017.050, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.017.0, %1
  br i1 %.not43, label %.loopexit, label %.lr.ph51, !llvm.loop !136

.loopexit:                                        ; preds = %_ZSt22__gen_two_uniform_intsImRN3gmx16ThreeFry2x64FastILj64EEEESt4pairIT_S5_ES5_S5_OT0_.exit, %_ZNSt24uniform_int_distributionImEclIN3gmx16ThreeFry2x64FastILj64EEEEEmRT_RKNS0_10param_typeE.exit, %bb.d, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10insert_ioniPSt6vectorIiSaIiEEPiN3gmx8ArrayRefIKiEEPA3_fP5t_pbciiPKcP7t_atomsfS2_(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef range(i32 -1, 2) %6, i32 noundef %7, ptr noundef %8, ptr nofree noundef nonnull readonly captures(none) %9, float noundef %10, ptr nofree noundef nonnull captures(none) %11) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 10 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = sext i32 %0 to i64                       ; 6 uses
  %i.g = icmp slt i32 %0, 0
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #23, !noalias !145
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %0, 0             ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit, label %.noexc11.i

.noexc11.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28, !noalias !145 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  store i32 0, ptr %i.i, align 4, !tbaa !12, !noalias !145
  %i.k = getelementptr i8, ptr %i.i, i64 4        ; 3 uses
  %i.l = add nsw i64 %i.f, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc11.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !12, !noalias !145
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc11.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.n, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.k, %.noexc11.i ]
  %i.o = mul nsw i32 %i.e, %0
  %i.p = sext i32 %i.o to i64
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.p
  %i.q = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %invariant.gep.i, i64 %i.q, i1 false), !tbaa !12, !noalias !145
  br label %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit

_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.18.4 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.j, %.lr.ph.i ] ; 4 uses
  %.sroa.14.2 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i.ph.i, %.lr.ph.i ] ; 4 uses
  %.sroa.069.4 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.i, %.lr.ph.i ] ; 5 uses
  %i.r = fcmp ogt float %10, 0.000000e+00
  br i1 %i.r, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.t = fmul float %10, %10                      ; 2 uses
  %i.u = load ptr, ptr %11, align 8, !tbaa !55    ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %.not47.i93 = icmp eq ptr %i.u, %i.v
  br i1 %.not47.i93, label %.critedge, label %.lr.ph46.i.lr.ph

.lr.ph46.i.lr.ph:                                 ; preds = %.preheader
  %i.w = ptrtoint ptr %.sroa.069.4 to i64         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.z = shl nuw nsw i64 %i.f, 2
  %i.aa = add nsw i64 %i.f, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %.idx.i.i.i.i.i.i.i.i33 = shl nuw nsw i64 %i.aa, 2 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph46.i.us, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %.lr.ph46.i.lr.ph
  %wide.trip.count.i36 = zext nneg i32 %0 to i64
  %i.ac = shl nuw nsw i64 %wide.trip.count.i36, 2
  br label %.lr.ph46.i

.lr.ph46.i.us:                                    ; preds = %.lr.ph46.i.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit.us
  %i.ad = phi ptr [ %i.bc, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %i.v, %.lr.ph46.i.lr.ph ]
  %i.ae = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %i.u, %.lr.ph46.i.lr.ph ]
  %i.af = phi i64 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %i.w, %.lr.ph46.i.lr.ph ]
  %.sroa.069.096.us = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.069.4, %.lr.ph46.i.lr.ph ] ; 9 uses
  %.sroa.14.095.us = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.14.2, %.lr.ph46.i.lr.ph ] ; 4 uses
  %.sroa.18.094.us = phi ptr [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.18.4, %.lr.ph46.i.lr.ph ] ; 5 uses
  %.not43.i.us = icmp eq ptr %.sroa.069.096.us, %.sroa.14.095.us
  br i1 %.not43.i.us, label %.critedge, label %.lr.ph.i28.us

.lr.ph.i28.us:                                    ; preds = %.lr.ph46.i.us, %..critedge_crit_edge.i.us
  %.sroa.036.045.i.us = phi ptr [ %i.au, %..critedge_crit_edge.i.us ], [ %i.ae, %.lr.ph46.i.us ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.036.045.i.us, align 4, !tbaa !12
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ah
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i28.us
  %.sroa.0.044.i.us = phi ptr [ %.sroa.069.096.us, %.lr.ph.i28.us ], [ %i.at, %bb.c ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.044.i.us, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ak
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.ai, ptr noundef %i.al, ptr noundef nonnull %i.a)
          to label %.noexc.us unwind label %.loopexit.split.us

.noexc.us:                                        ; preds = %bb.b
  %i.am = load float, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.an = load float, ptr %i.x, align 4, !tbaa !17 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ao)
  %i.aq = load float, ptr %i.y, align 4, !tbaa !17 ; 2 uses
  %i.ar = call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ap)
  %i.as = fcmp uge float %i.ar, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.as, label %bb.c, label %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us

bb.c:                                             ; preds = %.noexc.us
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.044.i.us, i64 4 ; 2 uses
  %.not.i.us = icmp eq ptr %i.at, %.sroa.14.095.us
  br i1 %.not.i.us, label %..critedge_crit_edge.i.us, label %bb.b

..critedge_crit_edge.i.us:                        ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.036.045.i.us, i64 4 ; 2 uses
  %.not48.i.us = icmp eq ptr %i.au, %i.ad
  br i1 %.not48.i.us, label %.critedge, label %.lr.ph.i28.us

_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us: ; preds = %.noexc.us
  %i.av = load ptr, ptr %1, align 8, !tbaa !50
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.critedge, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us: ; preds = %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.i.i.i46.us = icmp eq ptr %.sroa.069.096.us, null
  br i1 %.not.i.i.i.i.i46.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit.us, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us
  %i.az = ptrtoint ptr %.sroa.18.094.us to i64
  %i.ba = sub i64 %i.az, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.096.us, i64 noundef %i.ba) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.us

_ZNSt6vectorIiSaIiEED2Ev.exit.us:                 ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29.us
  %i.bb = load ptr, ptr %11, align 8, !tbaa !55   ; 2 uses
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !54  ; 2 uses
  %.not47.i.us = icmp eq ptr %i.bb, %i.bc
  br i1 %.not47.i.us, label %.critedge, label %.lr.ph46.i.us, !llvm.loop !139

.loopexit.split.us:                               ; preds = %bb.b
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bd = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.v, %.lr.ph46.i.preheader ]
  %i.be = phi ptr [ %i.ck, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.u, %.lr.ph46.i.preheader ]
  %i.bf = phi i64 [ %i.cj, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.w, %.lr.ph46.i.preheader ]
  %.sroa.069.096 = phi ptr [ %i.cb, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.069.4, %.lr.ph46.i.preheader ] ; 10 uses
  %.sroa.14.095 = phi ptr [ %.0.i.i.i.i.i.ph.i35, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.14.2, %.lr.ph46.i.preheader ] ; 4 uses
  %.sroa.18.094 = phi ptr [ %i.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.sroa.18.4, %.lr.ph46.i.preheader ] ; 6 uses
  %.not43.i = icmp eq ptr %.sroa.069.096, %.sroa.14.095
  br i1 %.not43.i, label %.critedge, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph46.i, %..critedge_crit_edge.i
  %.sroa.036.045.i = phi ptr [ %i.bu, %..critedge_crit_edge.i ], [ %i.be, %.lr.ph46.i ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.036.045.i, align 4, !tbaa !12
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [12 x i8], ptr %4, i64 %i.bh
  br label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.044.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, %.sroa.14.095
  br i1 %.not.i, label %..critedge_crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i28
  %.sroa.0.044.i = phi ptr [ %.sroa.069.096, %.lr.ph.i28 ], [ %i.bj, %bb.e ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.0.044.i, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [12 x i8], ptr %4, i64 %i.bl
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %5, ptr noundef %i.bi, ptr noundef %i.bm, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %.loopexit.split

.noexc:                                           ; preds = %bb.f
  %i.bn = load float, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.bo = load float, ptr %i.x, align 4, !tbaa !17 ; 2 uses
  %i.bp = fmul float %i.bo, %i.bo
  %i.bq = call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bp)
  %i.br = load float, ptr %i.y, align 4, !tbaa !17 ; 2 uses
  %i.bs = call noundef float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bq)
  %i.bt = fcmp uge float %i.bs, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.bt, label %bb.e, label %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit

..critedge_crit_edge.i:                           ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.036.045.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %i.bu, %i.bd
  br i1 %.not48.i, label %.critedge, label %.lr.ph.i28

_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit: ; preds = %.noexc
  %i.bv = load ptr, ptr %1, align 8, !tbaa !50
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !50  ; 3 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %.critedge, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29: ; preds = %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  store ptr %i.by, ptr %i.b, align 8, !tbaa !54
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28
          to label %.noexc44 unwind label %bb.h   ; 7 uses

.noexc44:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.f ; 2 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !12, !noalias !146
  %i.cd = getelementptr i8, ptr %i.cb, i64 4      ; 3 uses
  br i1 %i.ab, label %.lr.ph.i34, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32: ; preds = %.noexc44
  call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %.idx.i.i.i.i.i.i.i.i33, i1 false), !tbaa !12, !noalias !146
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i.i33
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32, %.noexc44
  %.0.i.i.i.i.i.ph.i35 = phi ptr [ %i.ce, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i32 ], [ %i.cd, %.noexc44 ] ; 2 uses
  %i.cf = mul nsw i32 %i.ca, %0
  %i.cg = sext i32 %i.cf to i64
  %invariant.gep.i37 = getelementptr [4 x i8], ptr %3, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %invariant.gep.i37, i64 %i.ac, i1 false), !tbaa !12, !noalias !146
  %.not.i.i.i.i.i46 = icmp eq ptr %.sroa.069.096, null
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i34
  %i.ch = ptrtoint ptr %.sroa.18.094 to i64
  %i.ci = sub i64 %i.ch, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.096, i64 noundef %i.ci) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %.lr.ph.i34
  %i.cj = ptrtoint ptr %i.cb to i64
  %i.ck = load ptr, ptr %11, align 8, !tbaa !55   ; 2 uses
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !54  ; 2 uses
  %.not47.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not47.i, label %.critedge, label %.lr.ph46.i, !llvm.loop !139

.loopexit.split:                                  ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.thread:                                 ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i29
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.critedge:                                        ; preds = %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph46.i, %..critedge_crit_edge.i, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us, %_ZNSt6vectorIiSaIiEED2Ev.exit.us, %.lr.ph46.i.us, %..critedge_crit_edge.i.us, %.preheader, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit
  %.sroa.18.2 = phi ptr [ %.sroa.18.094.us, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us ], [ %.sroa.18.4, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit ], [ %.sroa.18.094, %..critedge_crit_edge.i ], [ %.sroa.18.4, %.preheader ], [ %.sroa.18.094.us, %..critedge_crit_edge.i.us ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.18.094.us, %.lr.ph46.i.us ], [ %.sroa.18.094, %.lr.ph46.i ], [ %.sroa.18.094, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit ], [ %i.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.095.us, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us ], [ %.sroa.14.2, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit ], [ %.sroa.14.095, %..critedge_crit_edge.i ], [ %.sroa.14.2, %.preheader ], [ %.sroa.14.095.us, %..critedge_crit_edge.i.us ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.069.096.us, %.lr.ph46.i.us ], [ %.sroa.069.096, %.lr.ph46.i ], [ %.sroa.14.095, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit ], [ %.0.i.i.i.i.i.ph.i35, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.sroa.069.2 = phi ptr [ %.sroa.069.096.us, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit.us ], [ %.sroa.069.4, %_ZL22solventMoleculeIndicesiiN3gmx8ArrayRefIKiEE.exit ], [ %.sroa.069.096, %..critedge_crit_edge.i ], [ %.sroa.069.4, %.preheader ], [ %.sroa.069.096.us, %..critedge_crit_edge.i.us ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit.us ], [ %.sroa.069.096.us, %.lr.ph46.i.us ], [ %.sroa.069.096, %.lr.ph46.i ], [ %.sroa.069.096, %_ZL29groupsCloserThanCutoffWithPbcP5t_pbcPA3_fN3gmx8ArrayRefIKiEES6_f.exit ], [ %i.cb, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 10 uses
  %.sroa.14.122 = ptrtoaddr ptr %.sroa.14.1 to i64
  %.sroa.069.223 = ptrtoaddr ptr %.sroa.069.2 to i64
  %i.cn = load ptr, ptr %1, align 8, !tbaa !50
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(69) @.str.39, i8 noundef zeroext 2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 167, ptr noundef nonnull @.str.80) #23
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.m ], [ %i.cq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.loopexit

bb.o:                                             ; preds = %.critedge
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ct = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12
  %i.cv = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cs, ptr noundef nonnull @.str.81, i32 noundef %i.cu, i32 noundef %i.cv, ptr noundef %8) #27 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !54 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !59
  %.not.i47 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr %11, align 8, !tbaa !55   ; 4 uses
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 5 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775804
  br i1 %i.dh, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #23
          to label %.noexc49 unwind label %.loopexit.thread

.noexc49:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.di = ashr exact i64 %i.dg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 2305843009213693951)
  %i.dm = select i1 %i.dk, i64 2305843009213693951, i64 %i.dl ; 3 uses
  %.not.i.i.i48 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i48)
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #28
          to label %.noexc50 unwind label %.loopexit.thread ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  %i.dq = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !12
  %i.dr = icmp sgt i64 %i.dg, 0
  br i1 %i.dr, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.do, ptr align 4 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dt = load ptr, ptr %i.cz, align 8, !tbaa !59
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dv) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.do, ptr %11, align 8, !tbaa !55
  store ptr %i.ds, ptr %i.cx, align 8, !tbaa !54
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dw, ptr %i.cz, align 8, !tbaa !59
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.p
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !12
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ea
  store i32 %6, ptr %i.eb, align 4, !tbaa !12
  %i.ec = sitofp i32 %7 to float
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !38 ; 7 uses
  %i.ef = load i32, ptr %.sroa.069.2, align 4, !tbaa !12
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store float %i.ec, ptr %i.ei, align 4, !tbaa !42
  %.sroa.056.0119 = getelementptr inbounds nuw i8, ptr %.sroa.069.2, i64 4 ; 6 uses
  %.not120 = icmp eq ptr %.sroa.056.0119, %.sroa.14.1
  br i1 %.not120, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ej = add i64 %.sroa.14.122, -8
  %i.ek = sub i64 %i.ej, %.sroa.069.223           ; 3 uses
  %i.el = lshr i64 %i.ek, 2
  %i.em = add nuw nsw i64 %i.el, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ek, 28
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.ek, 124
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.en = and i64 %i.em, 24
  %n.vec = and i64 %i.em, 9223372036854775776     ; 4 uses
  %i.eo = shl i64 %n.vec, 2
  %i.ep = getelementptr i8, ptr %.sroa.056.0119, i64 %i.eo
  br label %vector.body

end_hunk_0
