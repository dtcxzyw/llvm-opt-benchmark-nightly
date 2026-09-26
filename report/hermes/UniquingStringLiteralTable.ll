Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/UniquingStringLiteralTable?download=true
inline.NumInlined: 1211
inline.NumDeleted: 559
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES1_b:bb.a
  %i.dw = ashr exact i64 %i.du, 5                 ; 3 uses
  %i.dx = icmp eq ptr %.sroa.26.0269, %.sroa.0.0267 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.dx, i64 1, i64 %i.dw
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dw
  %i.ea = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 288230376151711743)
  %i.eb = select i1 %i.dz, i64 288230376151711743, i64 %i.ea ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ec = shl nuw nsw i64 %i.eb, 5
  %i.ed = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #20 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.du ; 4 uses
  %i.ef = load ptr, ptr %storemerge.i.i.i.i.i241, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i241, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !41
  store i64 %storemerge270, ptr %i.ee, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !22
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %i.eh, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !54
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i32 %..i, ptr %i.ej, align 8, !tbaa !131
  br i1 %i.dx, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i, label %.lr.ph.i.i.i.i.i127

.lr.ph.i.i.i.i.i127:                              ; preds = %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i127
  %.03.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i127 ], [ %i.ed, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i127 ], [ %.sroa.0.0267, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !61, !alias.scope !132
  %i.ek = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i128 = icmp eq ptr %i.ek, %.sroa.26.0269
  br i1 %.not.i.i.i.i.i128, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i, label %.lr.ph.i.i.i.i.i127, !llvm.loop !117

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i: ; preds = %.lr.ph.i.i.i.i.i127, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i129 = phi ptr [ %i.ed, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.el, %.lr.ph.i.i.i.i.i127 ]
  %.not.i29.i.i = icmp eq ptr %.sroa.0.0267, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0267, i64 noundef %i.du) #22
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28.i.i
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %i.eb
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE12emplace_backIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEERS3_DpOT_.exit: ; preds = %bb.p, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0.2 = phi ptr [ %i.ed, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0.0267, %bb.p ] ; 12 uses
  %.0.lcssa.i.i.i.i.i129.pn = phi ptr [ %.0.lcssa.i.i.i.i.i129, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.18.0237268, %bb.p ]
  %.sroa.26.2 = phi ptr [ %i.em, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EE17_M_realloc_insertIJRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_10StringKind4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.26.0269, %bb.p ] ; 3 uses
  %.sroa.18.2239 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i129.pn, i64 32 ; 9 uses
  %i.en = add nuw i64 %storemerge270, 1           ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.al
  br i1 %i.eo, label %bb.k, label %._crit_edge, !llvm.loop !118

._crit_edge279:                                   ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit
  %.sroa.0185.0.lcssa = phi ptr [ %.sroa.0185.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.0185.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.0185.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.10.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ]
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.18.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.18.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ep = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.eq = ptrtoint ptr %.sroa.0185.0.lcssa to i64 ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0185.0.lcssa, i64 %i.er
  call void @_ZN6hermes3hbc24ConsecutiveStringStorageC2IPKN4llvh9StringRefESt17integral_constantIbLb0EEEET_S9_T0_b(ptr noundef nonnull align 8 dereferenceable(50) %4, ptr noundef %.sroa.0185.0.lcssa, ptr noundef %i.es, i1 noundef zeroext %2) #21
  call void @_ZN6hermes3hbc24ConsecutiveStringStorage13appendStorageEOS1_(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(50) %4) #21
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i130 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i130, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge279
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !24
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.t, %._crit_edge279
  %i.fa = load ptr, ptr %4, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !20
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #22
  br label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit

_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i.i.i131 = icmp eq ptr %.sroa.0185.0.lcssa, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit
  %i.fg = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.fh = sub i64 %i.fg, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0.lcssa, i64 noundef %i.fh) #22
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit:  ; preds = %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit, %bb.v
  %i.fi = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  br i1 %.not, label %._crit_edge289, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit
  %i.fj = mul nuw nsw i64 %i.am, 12
  %i.fk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #20 ; 3 uses
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.fk, i64 %i.am
  br label %.lr.ph288

.lr.ph278:                                        ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %.sroa.0184.0277 = phi ptr [ %i.gc, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.0.0.lcssa332, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.18.0276 = phi ptr [ %.sroa.18.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.18.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 5 uses
  %.sroa.10.0275 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.0185.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 3 uses
  %.sroa.0185.0274 = phi ptr [ %.sroa.0185.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.0185.1, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0184.0277, i64 8 ; 2 uses
  %.not.i141 = icmp eq ptr %.sroa.10.0275, %.sroa.18.0276
  br i1 %.not.i141, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph278
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0275, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !55
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.x:                                             ; preds = %.lr.ph278
  %i.fn = ptrtoint ptr %.sroa.18.0276 to i64
  %i.fo = ptrtoint ptr %.sroa.0185.0274 to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 4 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775792
  br i1 %i.fq, label %bb.y, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.fr = ashr exact i64 %i.fp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i142 = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i142, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 576460752303423487)
  %i.fv = select i1 %i.ft, i64 576460752303423487, i64 %i.fu ; 3 uses
  %.not.i.i.i143 = icmp ne i64 %i.fv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i143)
  %i.fw = shl nuw nsw i64 %i.fv, 4
  %i.fx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #20 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !55
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0185.0274, %.sroa.18.0276
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i144

.lr.ph.i.i.i.i.i144:                              ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i144
  %.012.i.i.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i144 ], [ %i.fx, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i144 ], [ %.sroa.0185.0274, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !55, !alias.scope !134
  %i.fz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.fz, %.sroa.18.0276
  br i1 %.not.i.i.i.i.i145, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i144, !llvm.loop !122

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i144, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i146 = phi ptr [ %i.fx, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ga, %.lr.ph.i.i.i.i.i144 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0185.0274, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0274, i64 noundef %i.fp) #22
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fv
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %bb.w, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.0185.2 = phi ptr [ %i.fx, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0185.0274, %bb.w ] ; 2 uses
  %.0.lcssa.i.i.i.i.i146.pn = phi ptr [ %.0.lcssa.i.i.i.i.i146, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.0275, %bb.w ]
  %.sroa.18.2 = phi ptr [ %i.gb, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.0276, %bb.w ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i146.pn, i64 16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0184.0277, i64 32 ; 2 uses
  %.not247.a = icmp eq ptr %i.gc, %.sroa.18.0237.lcssa333
  br i1 %.not247.a, label %._crit_edge279, label %.lr.ph278

._crit_edge289.loopexit:                          ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit
  %i.gd = ptrtoint ptr %.sroa.24.2 to i64
  br label %._crit_edge289

._crit_edge289:                                   ; preds = %._crit_edge289.loopexit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit
  %.sroa.0209.0.lcssa = phi ptr [ null, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit ], [ %.sroa.0209.2, %._crit_edge289.loopexit ] ; 8 uses
  %.sroa.24.0.lcssa = phi i64 [ 0, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit ], [ %i.gd, %._crit_edge289.loopexit ]
  %i.ge = getelementptr inbounds [12 x i8], ptr %.sroa.0209.0.lcssa, i64 %i.bz
  %i.gf = getelementptr inbounds [12 x i8], ptr %.sroa.0209.0.lcssa, i64 %i.cb ; 2 uses
  call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %i.ge, ptr %i.gf)
  %i.gg = getelementptr inbounds [12 x i8], ptr %.sroa.0209.0.lcssa, i64 %i.cd ; 2 uses
  call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %i.gf, ptr %i.gg)
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0209.0.lcssa, i64 %i.am
  call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %i.gg, ptr %i.gh)
  br i1 %.not, label %._crit_edge296, label %.lr.ph294

.lr.ph294:                                        ; preds = %._crit_edge289
  %7 = load ptr, ptr %i.a, align 8, !tbaa !58
  br label %.lr.ph295

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit
  %.055287 = phi i64 [ %i.hg, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit ], [ %i.i, %.lr.ph288.preheader ] ; 2 uses
  %.056286 = phi i64 [ %i.hf, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit ], [ 0, %.lr.ph288.preheader ] ; 2 uses
  %.sroa.24.0285 = phi ptr [ %.sroa.24.2, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit ], [ %i.fl, %.lr.ph288.preheader ] ; 5 uses
  %.sroa.17.0284 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit ], [ %i.fk, %.lr.ph288.preheader ] ; 4 uses
  %.sroa.0209.0283 = phi ptr [ %.sroa.0209.2, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit ], [ %i.fk, %.lr.ph288.preheader ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.lcssa332, i64 %.056286
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.055287 ; 2 uses
  %.not.i159 = icmp eq ptr %.sroa.17.0284, %.sroa.24.0285
  br i1 %.not.i159, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph288
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !60
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.gk, align 4, !tbaa !15
  store i32 %i.gl, ptr %.sroa.17.0284, align 4, !tbaa !136
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.17.0284, i64 4
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.gm, align 4, !tbaa !15
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit

bb.ab:                                            ; preds = %.lr.ph288
  %i.gn = ptrtoint ptr %.sroa.24.0285 to i64
  %i.go = ptrtoint ptr %.sroa.0209.0283 to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 4 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gq, label %bb.ac, label %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.gr = sdiv exact i64 %i.gp, 12                ; 3 uses
  %i.gs = icmp eq ptr %.sroa.24.0285, %.sroa.0209.0283 ; 2 uses
  %.sroa.speculated.i.i.i160 = select i1 %i.gs, i64 1, i64 %i.gr
  %i.gt = add nsw i64 %.sroa.speculated.i.i.i160, %i.gr ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gr
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 768614336404564650)
  %i.gw = select i1 %i.gu, i64 768614336404564650, i64 %i.gv ; 3 uses
  %.not.i.i.i161 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i.i161)
  %i.gx = mul nuw nsw i64 %i.gw, 12
  %i.gy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #20 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gp ; 2 uses
  %i.ha = load i32, ptr %i.gj, align 4, !tbaa !60
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.gk, align 4, !tbaa !15
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !136
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.hb, align 4, !tbaa !15
  br i1 %i.gs, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27.i.i, label %.lr.ph.i.i.i.i.i162

.lr.ph.i.i.i.i.i162:                              ; preds = %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i162
  %.03.i.i.i.i.i163 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i162 ], [ %i.gy, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i164 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i162 ], [ %.sroa.0209.0283, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.03.i.i.i.i.i163, ptr noundef nonnull readonly align 4 dereferenceable(12) %.092.i.i.i.i.i164, i64 12, i1 false), !tbaa.struct !69, !alias.scope !137
  %i.hc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i164, i64 12 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i163, i64 12 ; 2 uses
  %.not.i.i.i.i.i165 = icmp eq ptr %i.hc, %.sroa.24.0285
  br i1 %.not.i.i.i.i.i165, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27.i.i, label %.lr.ph.i.i.i.i.i162, !llvm.loop !126

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27.i.i: ; preds = %.lr.ph.i.i.i.i.i162, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i166 = phi ptr [ %i.gy, %_ZNKSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hd, %.lr.ph.i.i.i.i.i162 ]
  %.not.i28.i.i = icmp eq ptr %.sroa.0209.0283, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0283, i64 noundef %i.gp) #22
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27.i.i
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.gy, i64 %i.gw
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE12emplace_backIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEERS3_DpOT_.exit: ; preds = %bb.aa, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0209.2 = phi ptr [ %i.gy, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0209.0283, %bb.aa ] ; 2 uses
  %.0.lcssa.i.i.i.i.i166.pn = phi ptr [ %.0.lcssa.i.i.i.i.i166, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.17.0284, %bb.aa ]
  %.sroa.24.2 = phi ptr [ %i.he, %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EE17_M_realloc_insertIJRNS0_10StringKind4KindERNS0_16StringTableEntryEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.24.0285, %bb.aa ] ; 2 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i166.pn, i64 12
  %i.hf = add nuw i64 %.056286, 1                 ; 2 uses
  %i.hg = add i64 %.055287, 1
  %exitcond.not = icmp eq i64 %i.hf, %i.am
  br i1 %exitcond.not, label %._crit_edge289.loopexit, label %.lr.ph288, !llvm.loop !127

._crit_edge296:                                   ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %._crit_edge289
  %i.hh = load <2 x ptr>, ptr %1, align 8, !tbaa !18
  store <2 x ptr> %i.hh, ptr %5, align 16, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ho = load ptr, ptr %i.hj, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %1, i8 0, i64 24, i1 false)
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !133
  %i.hq = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !22
  %i.hr = insertelement <4 x ptr> poison, ptr %i.ho, i64 0
  %i.hs = insertelement <4 x ptr> %i.hr, ptr %i.hp, i64 1
  %i.ht = shufflevector <2 x ptr> %i.hq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x ptr> %i.hs, <4 x ptr> %i.ht, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.hu, ptr %i.hi, align 16, !tbaa !138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hx = load i16, ptr %i.hw, align 8
  store i16 %i.hx, ptr %i.hv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  store ptr null, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.72.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i, align 8
  call void @_ZN6hermes3hbc22StringLiteralIDMappingC2ENS0_24ConsecutiveStringStorageESt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.hy = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %.not.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge296
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !141 ; 2 uses
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 2 uses
  %i.ie = ashr exact i64 %i.id, 3
  %i.if = sub nsw i64 0, %i.ie
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.if
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.id) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge296, %bb.ae
  %i.ih = load ptr, ptr %i.hk, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i167, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i168, label %bb.af

bb.af:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.ii = load ptr, ptr %i.hn, align 8, !tbaa !24
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.il) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i168

_ZNSt6vectorIhSaIhEED2Ev.exit.i168:               ; preds = %bb.af, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.im = load ptr, ptr %5, align 16, !tbaa !44   ; 3 uses
  %.not.i.i.i1.i169 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i1.i169, label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit170, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i168
  %i.in = load ptr, ptr %i.hi, align 16, !tbaa !20
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.iq) #22
  br label %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit170

_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit170: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i168, %bb.ag
  %.not.i.i.i171 = icmp eq ptr %.sroa.0209.0.lcssa, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit170
  %i.ir = ptrtoint ptr %.sroa.0209.0.lcssa to i64
  %i.is = sub i64 %.sroa.24.0.lcssa, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0.lcssa, i64 noundef %i.is) #22
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EED2Ev.exit

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EED2Ev.exit: ; preds = %_ZN6hermes3hbc24ConsecutiveStringStorageD2Ev.exit170, %bb.ah
  %.not.i.i.i172 = icmp eq ptr %.sroa.0.0.lcssa332, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EED2Ev.exit
  %i.it = ptrtoint ptr %.sroa.26.0.lcssa334 to i64
  %i.iu = ptrtoint ptr %.sroa.0.0.lcssa332 to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa332, i64 noundef %i.iv) #22
  br label %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EED2Ev.exit

_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE5IndexSaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES2_bE11KindedEntrySaIS3_EED2Ev.exit, %bb.ai
  ret void

.lr.ph295:                                        ; preds = %.lr.ph294, %_ZNSt14_Bit_referenceaSEb.exit
  %.0293 = phi i64 [ %i.i, %.lr.ph294 ], [ %i.jn, %_ZNSt14_Bit_referenceaSEb.exit ] ; 5 uses
  %.054292 = phi i64 [ 0, %.lr.ph294 ], [ %i.jm, %_ZNSt14_Bit_referenceaSEb.exit ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0209.0.lcssa, i64 %.054292 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.0293
  %i.iz = load i64, ptr %i.ix, align 4, !tbaa !15
  store i64 %i.iz, ptr %i.iy, align 4, !tbaa !15
  %i.ja = load i32, ptr %i.iw, align 4, !tbaa !136
  %.not248 = icmp eq i32 %i.ja, 0
  %i.jb = sdiv i64 %.0293, 64
  %i.jc = getelementptr inbounds [8 x i8], ptr %7, i64 %i.jb
  %i.jd = and i64 %.0293, -9223372036854775745
  %i.je = icmp ugt i64 %i.jd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i173 = select i1 %i.je, i64 -8, i64 0
  %storemerge.i.i.i.i.i174 = getelementptr inbounds i8, ptr %i.jc, i64 %storemerge.idx.i.i.i.i.i173 ; 3 uses
  %i.jf = and i64 %.0293, 63
  %i.jg = shl nuw i64 1, %i.jf                    ; 2 uses
  br i1 %.not248, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph295
  %i.jh = load i64, ptr %storemerge.i.i.i.i.i174, align 8, !tbaa !54
  %i.ji = or i64 %i.jh, %i.jg
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.ak:                                            ; preds = %.lr.ph295
  %i.jj = xor i64 %i.jg, -1
  %i.jk = load i64, ptr %storemerge.i.i.i.i.i174, align 8, !tbaa !54
  %i.jl = and i64 %i.jk, %i.jj
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.aj, %bb.ak
  %storemerge249 = phi i64 [ %i.jl, %bb.ak ], [ %i.ji, %bb.aj ]
  store i64 %storemerge249, ptr %storemerge.i.i.i.i.i174, align 8, !tbaa !54
  %i.jm = add nuw nsw i64 %.054292, 1             ; 2 uses
  %i.jn = add i64 %.0293, 1
  %exitcond310.not = icmp eq i64 %i.jm, %i.am
  br i1 %exitcond310.not, label %._crit_edge296, label %.lr.ph295, !llvm.loop !128
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 512
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr nonnull %i.i)
  %.not4.i.i.i = icmp eq ptr %i.i, %1
  br i1 %.not4.i.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i ], [ %i.i, %bb.c ] ; 6 uses
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i, align 8, !tbaa !54
  %.sroa.4.0..val3.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.sroa.5.0..val3.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i, align 8, !tbaa !54 ; 4 uses
  %.sroa.6.0..val3.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 24
  %.sroa.6.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.0..val3.sroa_idx.i.i.i.i, align 8, !tbaa !60 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i, %.lr.ph.i.i.i
  %.sroa.010.0.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i ] ; 9 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i.i.i, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.010.0.i.i.i.i, i64 -8
  %i.k = getelementptr inbounds i8, ptr %.sroa.010.0.i.i.i.i, i64 -24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.0.i.i.i.i, i64 -16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !54 ; 3 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !60, !noalias !147 ; 2 uses
  %i.m = icmp ult i32 %.sroa.6.0.copyload.i.i.i.i, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.l, %.sroa.6.0.copyload.i.i.i.i
  br i1 %i.n, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = tail call i32 @memcmp(ptr noundef %.sroa.4.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #25
  %.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.p      ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvhltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.q = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i.i
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i

_ZN4llvhltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.inv.i.i.i.i.i.i.i.i.i.i.i = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.inv.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i: ; preds = %bb.f
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i.i
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i, %_ZN4llvhltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.010.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.0.i.i.i.i, i64 28, i1 false), !tbaa.struct !61
  br label %bb.d, !llvm.loop !0

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES5_bE5IndexNS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i, %_ZN4llvhltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i, %bb.e
  store i64 %.sroa.05.0.copyload.i.i.i.i, ptr %.sroa.010.0.i.i.i.i, align 8, !tbaa !54
  %.sroa.4.0..val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i, align 8, !tbaa !22
  %.sroa.5.0..val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i, i64 16
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i, align 8, !tbaa !54
  %.sroa.6.0..val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i.i, i64 24
  store i32 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..val.sroa_idx.i.i.i.i, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %1
  br i1 %.not.i.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1)
  br label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit

_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE5IndexSt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i, %bb.a, %bb.c, %bb.g
  ret void
}

declare void @_ZN6hermes3hbc24ConsecutiveStringStorage13appendStorageEOS1_(ptr noundef nonnull align 8 dereferenceable(50), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEEEvT_SB_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.KindedEntry, align 4        ; 4 uses
  %3 = alloca %struct.KindedEntry, align 4        ; 4 uses
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 12
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 192
  br i1 %i.h, label %.lr.ph.i.i.i, label %.preheader.i19.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep.i.i = getelementptr i8, ptr %0, i64 12
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.sroa.0.020.i.idx.i.i = phi i64 [ 12, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.add.i.i, %bb.j ] ; 4 uses
  %.pn19.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.ptr.i.i, %bb.j ] ; 3 uses
  %.sroa.0.020.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx.i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70, !noalias !179 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !71, !noalias !179 ; 2 uses
  %i.o = and i32 %i.n, 2147483647                 ; 2 uses
  %i.p = load i32, ptr %.sroa.0.020.i.ptr.i.i, align 4, !tbaa !60, !noalias !180 ; 5 uses
  %i.q = load i32, ptr %i.i, align 4, !tbaa !70, !noalias !181 ; 2 uses
  %i.r = load i32, ptr %i.j, align 4, !tbaa !71, !noalias !181
  %i.s = and i32 %i.r, 2147483647
  %i.t = load i32, ptr %0, align 4, !tbaa !60, !noalias !182 ; 2 uses
  %i.u = icmp ult i32 %i.p, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ult i32 %i.t, %i.p
  br i1 %i.v, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.i.preheader, label %bb.e

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, %bb.d
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ult i32 %i.l, %i.q
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i: ; preds = %bb.e
  %i.x = icmp uge i32 %i.q, %i.l
  %i.y = icmp samesign ult i32 %i.o, %i.s
  %spec.select.i.i.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %spec.select.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i.i.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.020.i.ptr.i.i, i64 12, i1 false), !tbaa.struct !69
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i, 12
  br i1 %i.z, label %bb.f, label %bb.g, !prof !62

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES6_bE11KindedEntrySt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6hermes3hbc32UniquingStringLiteralAccumulator7toTableES4_bE11KindedEntrySt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

end_hunk_0
