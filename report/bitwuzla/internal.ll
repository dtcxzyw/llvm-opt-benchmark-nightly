Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/internal?download=true
inline.NumInlined: 2057
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  store i8 %.sroa.4.8.copyload, ptr %i.ah, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !507
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store i8 %.sroa.4.8.copyload, ptr %i.ai, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !507
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.aj, %i.aa
  br i1 %.not.i.i.i.3, label %_ZSt4fillIPN7CaDiCaL3VarES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !504

bb.l:                                             ; preds = %bb.c
  %i.ak = icmp eq i64 %2, %i.k
  br i1 %i.ak, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = sub nuw i64 %2, %i.k
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.al, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i.i.i.i.i, align 8
  %.sroa.9.8..06.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !507
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !504

_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !235
  %i.ao = icmp sgt i64 %i.j, 16
  br i1 %i.ao, label %bb.n, label %bb.o, !prof !305

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ap = icmp eq i64 %i.j, 16
  br i1 %i.ap, label %bb.p, label %_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !508
  br label %_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !235
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.j
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !235
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPN7CaDiCaL3VarES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.as, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i72, align 8
  %.sroa.9.8..06.i.i.i72.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.8..06.i.i.i72.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false), !tbaa.struct !507
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.as, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPN7CaDiCaL3VarES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !504

_ZSt4fillIPN7CaDiCaL3VarES1_EvT_S3_RKT0_.exit:    ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.ac

bb.q:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %0, align 8, !tbaa !187   ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = sub i64 %i.f, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 4 uses
  %i.ax = sub nsw i64 576460752303423487, %i.aw
  %i.ay = icmp ult i64 %i.ax, %2
  br i1 %i.ay, label %bb.r, label %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %2)
  %i.az = add nsw i64 %.sroa.speculated.i, %i.aw  ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.aw
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %i.bd = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.be = sub i64 %i.bd, %i.au                    ; 4 uses
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bf = shl nuw nsw i64 %i.bc, 4
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bh = phi ptr [ %i.bg, %bb.s ], [ null, %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.be ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 4       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i.i.i75
  %i.bk = add nsw i64 %.idx.i.i.i.i.i75, -16      ; 2 uses
  %i.bl = lshr exact i64 %i.bk, 4
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter114 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.06.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bi, %bb.t ] ; 2 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i77.prol, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !508
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77.prol, i64 16 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !505

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.06.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bi, %bb.t ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bo = icmp ult i64 %i.bk, 48
  br i1 %i.bo, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !508
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !508
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !508
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !508
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i78.3 = icmp eq ptr %i.bs, %i.bj
  br i1 %.not.i.i.i.i.i.i.i78.3, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !504

_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.bt = icmp sgt i64 %i.be, 16
  br i1 %i.bt, label %bb.u, label %bb.v, !prof !305

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bh, ptr align 8 %i.at, i64 %i.be, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL3VarEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80
  %i.bu = icmp eq i64 %i.be, 16
  br i1 %i.bu, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !508
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %2 ; 3 uses
  %i.bw = sub i64 %i.f, %i.bd                     ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 16
  br i1 %i.bx, label %bb.x, label %bb.y, !prof !305

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %1, i64 %i.bw, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL3VarES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.by = icmp eq i64 %i.bw, 16
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !508
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw
  %.not.i82 = icmp eq ptr %i.at, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #22
  br label %_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bh, ptr %0, align 8, !tbaa !187
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !235
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bc
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !506
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt4fillIPN7CaDiCaL3VarES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 4, !tbaa !174    ; 11 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !305

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !237
  br label %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 4, !tbaa !174
  store i64 %i.s, ptr %i.d, align 4, !tbaa !174
  br label %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %4 = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %2
  store ptr %i.t, ptr %i.c, align 8, !tbaa !237
  %i.u = sub i64 %i.p, %i.j                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !305

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %1, i64 %i.u, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.z = icmp eq i64 %i.u, 8
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ab = load i64, ptr %1, align 4, !tbaa !174
  store i64 %i.ab, ptr %i.aa, align 4, !tbaa !174
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ad = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.k, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.prol ], [ %1, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.k ]
  store i64 %i.i, ptr %.06.i.i.i.prol, align 4, !tbaa !174
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !509

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.k
  %.06.i.i.i.unr = phi ptr [ %1, %bb.k ], [ %i.ag, %.lr.ph.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.i, ptr %.06.i.i.i, align 4, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store i64 %i.i, ptr %i.ai, align 4, !tbaa !174
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i64 %i.i, ptr %i.aj, align 4, !tbaa !174
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store i64 %i.i, ptr %i.ak, align 4, !tbaa !174
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  store i64 %i.i, ptr %i.al, align 4, !tbaa !174
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  store i64 %i.i, ptr %i.am, align 4, !tbaa !174
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store i64 %i.i, ptr %i.an, align 4, !tbaa !174
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  store i64 %i.i, ptr %i.ao, align 4, !tbaa !174
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !510

bb.l:                                             ; preds = %bb.c
  %i.aq = icmp eq i64 %2, %i.l
  br i1 %i.aq, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !174
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !510

_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !237
  %i.au = icmp sgt i64 %i.k, 8
  br i1 %i.au, label %bb.n, label %bb.o, !prof !305

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !237
  br label %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.av = icmp eq i64 %i.k, 8
  br i1 %i.av, label %bb.p, label %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %1, align 4, !tbaa !174
  store i64 %i.aw, ptr %.0.i.i.i.i.i, align 4, !tbaa !174
  br label %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69

_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %5 = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 %i.k
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !237
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ay, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !174
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ay, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !510

bb.q:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %0, align 8, !tbaa !189   ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = sub i64 %i.f, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 4 uses
  %i.bd = sub nsw i64 1152921504606846975, %i.bc
  %i.be = icmp ult i64 %i.bd, %2
  br i1 %i.be, label %bb.r, label %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %2)
  %i.bf = add nsw i64 %.sroa.speculated.i, %i.bc  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bc
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.ba                    ; 4 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bl = shl nuw nsw i64 %i.bi, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bn = phi ptr [ %i.bm, %bb.s ], [ null, %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bk ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i.i.i75
  %i.bq = load i64, ptr %3, align 4, !tbaa !174   ; 9 uses
  %i.br = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1
  %xtraiter113 = and i64 %i.bt, 7                 ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.06.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bo, %bb.t ] ; 2 uses
  %prol.iter115 = phi i64 [ %prol.iter115.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  store i64 %i.bq, ptr %.06.i.i.i.i.i.i.i77.prol, align 4, !tbaa !174
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77.prol, i64 8 ; 2 uses
  %prol.iter115.next = add i64 %prol.iter115, 1   ; 2 uses
  %prol.iter115.cmp.not = icmp eq i64 %prol.iter115.next, %xtraiter113
  br i1 %prol.iter115.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !511

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.06.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bo, %bb.t ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bv = icmp ult i64 %i.br, 56
  br i1 %i.bv, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store i64 %i.bq, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !174
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8
  store i64 %i.bq, ptr %i.bw, align 4, !tbaa !174
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 16
  store i64 %i.bq, ptr %i.bx, align 4, !tbaa !174
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 24
  store i64 %i.bq, ptr %i.by, align 4, !tbaa !174
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 32
  store i64 %i.bq, ptr %i.bz, align 4, !tbaa !174
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 40
  store i64 %i.bq, ptr %i.ca, align 4, !tbaa !174
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 48
  store i64 %i.bq, ptr %i.cb, align 4, !tbaa !174
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 56
  store i64 %i.bq, ptr %i.cc, align 4, !tbaa !174
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cd, %i.bp
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !510

_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.ce = icmp sgt i64 %i.bk, 8
  br i1 %i.ce, label %bb.u, label %bb.v, !prof !305

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bn, ptr align 4 %i.az, i64 %i.bk, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPN7CaDiCaL4LinkEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit80
  %i.cf = icmp eq i64 %i.bk, 8
  br i1 %i.cf, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cg = load i64, ptr %i.az, align 4, !tbaa !174
  store i64 %i.cg, ptr %i.bn, align 4, !tbaa !174
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %2 ; 3 uses
  %i.ci = sub i64 %i.f, %i.bj                     ; 4 uses
  %i.cj = icmp sgt i64 %i.ci, 8
  br i1 %i.cj, label %bb.x, label %bb.y, !prof !305

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %1, i64 %i.ci, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ck = icmp eq i64 %i.ci, 8
  br i1 %i.ck, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cl = load i64, ptr %1, align 4, !tbaa !174
  store i64 %i.cl, ptr %i.ch, align 4, !tbaa !174
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %i.ci
  %.not.i82 = icmp eq ptr %i.az, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #22
  br label %_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bn, ptr %0, align 8, !tbaa !189
  store ptr %i.cm, ptr %i.c, align 8, !tbaa !237
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bi
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !512
  br label %_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit

_ZSt4fillIPN7CaDiCaL4LinkES1_EvT_S3_RKT0_.exit:   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN7CaDiCaL4LinkES2_SaIS1_EET0_T_S5_S4_RT1_.exit69, %_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !516
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !233    ; 11 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 5 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !305

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !238
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !233
  store i64 %i.s, ptr %i.d, align 8, !tbaa !233
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !238
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !305

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !233
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !233
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %bb.k, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.prol ], [ %1, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %bb.k ]
  store i64 %i.i, ptr %.06.i.i.i.prol, align 8, !tbaa !233
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !513

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.k
  %.06.i.i.i.unr = phi ptr [ %1, %bb.k ], [ %i.ah, %.lr.ph.i.i.i.prol ]
  %i.ai = icmp ult i64 %i.ae, 56
  br i1 %i.ai, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !233
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store i64 %i.i, ptr %i.aj, align 8, !tbaa !233
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i64 %i.i, ptr %i.ak, align 8, !tbaa !233
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store i64 %i.i, ptr %i.al, align 8, !tbaa !233
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  store i64 %i.i, ptr %i.am, align 8, !tbaa !233
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  store i64 %i.i, ptr %i.an, align 8, !tbaa !233
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store i64 %i.i, ptr %i.ao, align 8, !tbaa !233
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  store i64 %i.i, ptr %i.ap, align 8, !tbaa !233
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !514

bb.l:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %2, %i.l
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !233
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !514

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !238
  %i.av = icmp sgt i64 %i.k, 8
  br i1 %i.av, label %bb.n, label %bb.o, !prof !305

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !238
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 8
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %1, align 8, !tbaa !233
  store i64 %i.ax, ptr %.0.i.i.i.i.i, align 8, !tbaa !233
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !238
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !233
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !514

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !185   ; 5 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = sub i64 %i.f, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 4 uses
  %i.bf = sub nsw i64 1152921504606846975, %i.be
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %bb.r, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

end_hunk_0
