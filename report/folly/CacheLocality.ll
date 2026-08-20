inline.NumInlined: 1619
inline.NumDeleted: 787
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly13CacheLocality24readFromProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %.not34.i.i60.i = icmp eq ptr %i.bs, null
  br i1 %.not34.i.i60.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i
  %i.bt = load i64, ptr %i.bs, align 1
  %i.bu = xor i64 %i.bt, 8030889439828865648
  %i.bv = getelementptr i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i64
  %i.by = xor i64 %i.bx, 114
  %i.bz = or i64 %i.bu, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.bb, %i.ce                    ; 2 uses
  %.not33.i.i63.i = icmp ult i64 %i.cf, 9
  br i1 %.not33.i.i63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i, !llvm.loop !181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61.i
  %i.cg = icmp eq ptr %i.bs, %.val.i
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread81.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread81.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i
  %i.ch = invoke fastcc noundef i64 @_ZN5follyL18parseLeadingNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %.loopexit  ; 3 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread81.i
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 %.0124.i) ; 2 uses
  %.not.i65.i = icmp eq ptr %.sroa.17.0, %.sroa.25.0
  br i1 %.not.i65.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %i.ch, ptr %.sroa.17.0, align 8, !tbaa !182
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 8
  store i64 %.087, ptr %i.ci, align 8, !tbaa !184
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 16
  store i64 %.0, ptr %i.cj, align 8, !tbaa !186
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i

bb.q:                                             ; preds = %bb.o
  %i.cl = ptrtoint ptr %.sroa.17.0 to i64
  %i.cm = ptrtoint ptr %.sroa.064.0 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 4 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.r, label %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.cp = sdiv exact i64 %i.cn, 24                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cq, i64 384307168202282325)
  %i.ct = select i1 %i.cr, i64 384307168202282325, i64 %i.cs ; 3 uses
  %.not.i.i52 = icmp ne i64 %i.ct, 0
  call void @llvm.assume(i1 %.not.i.i52)
  %i.cu = mul nuw nsw i64 %i.ct, 24
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #36
          to label %.noexc55 unwind label %.loopexit ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn ; 3 uses
  store i64 %i.ch, ptr %i.cw, align 8, !tbaa !182
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.087, ptr %i.cx, align 8, !tbaa !184
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %.0, ptr %i.cy, align 8, !tbaa !186
  %.not10.i.i.i.i = icmp eq ptr %.sroa.064.0, %.sroa.17.0
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc55, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %i.cv, %.noexc55 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.sroa.064.0, %.noexc55 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.cz = load <2 x i64>, ptr %.0911.i.i.i.i, align 8, !tbaa !60, !alias.scope !191, !noalias !188
  store <2 x i64> %i.cz, ptr %.012.i.i.i.i, align 8, !tbaa !60, !alias.scope !188, !noalias !191
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !60, !alias.scope !191, !noalias !188
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !60, !alias.scope !188, !noalias !191
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.dd, %.sroa.17.0
  br i1 %.not.i.i.i.i53, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i, label %.lr.ph.i.i.i.i, !llvm.loop !193

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i: ; preds = %.lr.ph.i.i.i.i, %.noexc55
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cv, %.noexc55 ], [ %i.de, %.lr.ph.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24
  %.not.i25.i = icmp eq ptr %.sroa.064.0, null
  br i1 %.not.i25.i, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0, i64 noundef %i.cn) #37
  br label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24.i, %bb.s
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.ct
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread81.i, %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.sroa.25.0.lcssa127 = phi ptr [ %.sroa.25.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread81.i ], [ %.sroa.17.0, %_ZNKSt6vectorISt5tupleIJmmmEESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i: ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i, %bb.p, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i, %bb.j
  %.289 = phi i64 [ %.087, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.087, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %.087, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.087, %bb.j ], [ %.087, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.087, %bb.p ], [ %i.bq, %bb.m ], [ %.087, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.087, %bb.n ]
  %.sroa.064.5 = phi ptr [ %.sroa.064.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.sroa.064.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %i.cv, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.sroa.064.0, %bb.j ], [ %.sroa.064.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.sroa.064.0, %bb.p ], [ %.sroa.064.0, %bb.m ], [ %.sroa.064.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.sroa.064.0, %bb.n ]
  %.sroa.17.2 = phi ptr [ %.sroa.17.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.sroa.17.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %i.df, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.sroa.17.0, %bb.j ], [ %.sroa.17.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %i.ck, %bb.p ], [ %.sroa.17.0, %bb.m ], [ %.sroa.17.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.sroa.17.0, %bb.n ]
  %.sroa.25.5 = phi ptr [ %.sroa.25.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.sroa.25.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %i.dg, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.sroa.25.0, %bb.j ], [ %.sroa.25.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.sroa.25.0, %bb.p ], [ %.sroa.25.0, %bb.m ], [ %.sroa.25.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.sroa.25.0, %bb.n ]
  %.2 = phi i64 [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %.0, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.ax, %bb.j ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.0, %bb.p ], [ %.0, %bb.m ], [ %.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.0, %bb.n ]
  %.1.i = phi i64 [ %.0124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.0124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %.sroa.speculated.i, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.0124.i, %bb.j ], [ %.0124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.sroa.speculated.i, %bb.p ], [ %.0124.i, %bb.m ], [ %.0124.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.0124.i, %bb.n ]
  %.125.i = phi i64 [ %.024125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.024125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %.024125.i, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.ay, %bb.j ], [ %.024125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.024125.i, %bb.p ], [ %.024125.i, %bb.m ], [ %.024125.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.024125.i, %bb.n ]
  %.122.i = phi i64 [ %.021126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread.i ], [ %.021126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit50.thread.i ], [ %.021126.i, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %.021126.i, %bb.j ], [ %.021126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.i ], [ %.021126.i, %bb.p ], [ %i.br, %bb.m ], [ %.021126.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i59.i ], [ %.021126.i, %bb.n ]
  %i.dh = load ptr, ptr %2, align 8, !tbaa !49, !noalias !177 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.f
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i
  %i.dj = load i64, ptr %i.f, align 8, !tbaa !43, !noalias !177
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit64.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !177
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !168, !noalias !174
  br label %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i

_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.b
  %.188 = phi i64 [ %.087, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.087, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.087, %bb.c ], [ %.289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.087, %bb.b ]
  %.sroa.064.1 = phi ptr [ %.sroa.064.0, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.sroa.064.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.sroa.064.0, %bb.c ], [ %.sroa.064.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.064.0, %bb.b ] ; 16 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.sroa.17.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.sroa.17.0, %bb.c ], [ %.sroa.17.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.17.0, %bb.b ] ; 4 uses
  %.sroa.25.1 = phi ptr [ %.sroa.25.0, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.sroa.25.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.sroa.25.0, %bb.c ], [ %.sroa.25.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.25.0, %bb.b ] ; 10 uses
  %.1 = phi i64 [ %.0, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.0, %bb.c ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.0, %bb.b ]
  %i.dl = phi ptr [ %i.k, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %i.k, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %.2.i = phi i64 [ %.0124.i, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.0124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.0124.i, %bb.c ], [ %.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.0124.i, %bb.b ] ; 2 uses
  %.327.i = phi i64 [ %.024125.i, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.024125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.024125.i, %bb.c ], [ %.125.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.024125.i, %bb.b ] ; 2 uses
  %.3.i = phi i64 [ %.021126.i, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.021126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i ], [ %.021126.i, %bb.c ], [ %.122.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.021126.i, %bb.b ] ; 2 uses
  %i.dm = icmp eq ptr %i.l, %i.dl
  br i1 %i.dm, label %._crit_edge.i, label %bb.b, !llvm.loop !194

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.sroa.25.0132 = phi ptr [ %.sroa.25.0, %bb.k ], [ %.sroa.25.0.lcssa127, %.loopexit ], [ %.sroa.17.0, %.loopexit.split-lp ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dn = load ptr, ptr %2, align 8, !tbaa !49, !noalias !177 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.f
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %bb.t
  %i.dp = load i64, ptr %i.f, align 8, !tbaa !43, !noalias !177
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.25.0130 = phi ptr [ %.sroa.25.0132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %.sroa.25.0, %.loopexit.split-lp.i ], [ %.sroa.25.0, %.loopexit.i ], [ %.sroa.25.0132, %bb.t ]
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %.pn.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !177
  br label %bb.af

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.sroa.064.4 = phi ptr [ null, %bb.a ], [ %.sroa.064.1, %._crit_edge.i ] ; 2 uses
  %.sroa.25.4 = phi ptr [ null, %bb.a ], [ %.sroa.25.1, %._crit_edge.i ] ; 2 uses
  %i.dr = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull @.str.25)
          to label %.invoke.i unwind label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dr) #34
  br label %bb.af

bb.v:                                             ; preds = %.invoke.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.w:                                             ; preds = %._crit_edge.i
  %i.du = ptrtoint ptr %.sroa.17.1 to i64
  %i.dv = ptrtoint ptr %.sroa.064.1 to i64        ; 3 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = sdiv exact i64 %i.dw, 24                ; 4 uses
  %i.dy = add nsw i64 %i.dx, -1
  %.not.i = icmp eq i64 %.2.i, %i.dy
  br i1 %.not.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull @.str.26)
          to label %.invoke.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dz) #34
  br label %bb.af

bb.z:                                             ; preds = %bb.w
  br i1 %i.h, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eb = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull @.str.27)
          to label %.invoke.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eb) #34
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  br i1 %i.i, label %bb.ad, label %_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ed = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull @.str.28)
          to label %.invoke.i unwind label %bb.ae

.invoke.i:                                        ; preds = %bb.ad, %bb.aa, %bb.x, %._crit_edge.thread.i
  %.sroa.064.3 = phi ptr [ %.sroa.064.4, %._crit_edge.thread.i ], [ %.sroa.064.1, %bb.aa ], [ %.sroa.064.1, %bb.ad ], [ %.sroa.064.1, %bb.x ]
  %.sroa.25.3 = phi ptr [ %.sroa.25.4, %._crit_edge.thread.i ], [ %.sroa.25.1, %bb.aa ], [ %.sroa.25.1, %bb.ad ], [ %.sroa.25.1, %bb.x ]
  %i.ee = phi ptr [ %i.dr, %._crit_edge.thread.i ], [ %i.eb, %bb.aa ], [ %i.ed, %bb.ad ], [ %i.dz, %bb.x ]
  invoke void @__cxa_throw(ptr nonnull %i.ee, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.cont.i unwind label %bb.v

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ed) #34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i
  %.sroa.064.2 = phi ptr [ %.sroa.064.3, %bb.v ], [ %.sroa.064.4, %bb.u ], [ %.sroa.064.1, %bb.ab ], [ %.sroa.064.1, %bb.ae ], [ %.sroa.064.1, %bb.y ], [ %.sroa.064.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ] ; 3 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.3, %bb.v ], [ %.sroa.25.4, %bb.u ], [ %.sroa.25.1, %bb.ab ], [ %.sroa.25.1, %bb.ae ], [ %.sroa.25.1, %bb.y ], [ %.sroa.25.0130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ]
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.dt, %bb.v ], [ %i.ds, %bb.u ], [ %i.ec, %bb.ab ], [ %i.ef, %bb.ae ], [ %i.ea, %bb.y ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.064.2, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = ptrtoint ptr %.sroa.25.2 to i64
  %i.eh = ptrtoint ptr %.sroa.064.2 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.2, i64 noundef %i.ei) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.bn, %bb.bm, %bb.af, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.af ], [ %.pn.pn.pn.i, %bb.ag ], [ %.pn.pn.pn, %bb.bm ], [ %.pn.pn.pn, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit: ; preds = %bb.ac
  invoke void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.064.1, ptr %.sroa.17.1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit unwind label %bb.as

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ej = icmp ugt i64 %i.dx, 384307168202282325
  br i1 %i.ej, label %bb.ah, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ah:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #35
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.ah
  unreachable

_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #36
          to label %bb.ai unwind label %bb.at     ; 6 uses

bb.ai:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.ek, ptr %3, align 8, !tbaa !62
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.dw  ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ek, i8 0, i64 %i.dw, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.el, ptr %i.en, align 8, !tbaa !66
  store ptr %i.el, ptr %i.em, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.0.0.copyload.peel = load i64, ptr %.sroa.064.1, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %.sroa.0.0.copyload.peel, ptr %i.a, align 8, !tbaa !60
  store i64 %.sroa.0.0.copyload.peel, ptr %i.eo, align 8, !tbaa !60
  store i64 %.sroa.0.0.copyload.peel, ptr %i.ep, align 8, !tbaa !60
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %.sroa.0.0.copyload.peel ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !59
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !56 ; 7 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 24
  br i1 %i.ex, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 5 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !61 ; 2 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.ev                    ; 9 uses
  %.not.i56.peel = icmp ult i64 %i.fb, 24
  br i1 %.not.i56.peel, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.peel, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.pre.i57.peel = load ptr, ptr %i.ey, align 8, !tbaa !61
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %.not.i16.i.peel = icmp eq ptr %.pre.i57.peel, %i.fc
  br i1 %.not.i16.i.peel, label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.peel

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.peel:   ; preds = %bb.ak
  store ptr %i.fc, ptr %i.ey, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.peel: ; preds = %bb.aj
  %.sink.i.i.peel = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb ; 2 uses
  %i.fd = icmp samesign ugt i64 %i.fb, 8
  br i1 %i.fd, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel, label %bb.al, !prof !98

bb.al:                                            ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.peel
  %i.fe = icmp eq i64 %i.fb, 8
  br i1 %i.fe, label %bb.am, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel.thread

bb.am:                                            ; preds = %bb.al
  store i64 %.sroa.0.0.copyload.peel, ptr %i.et, align 8, !tbaa !60
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel.thread

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel.thread: ; preds = %bb.am, %bb.al
  %gepdiff.peel185 = sub nuw nsw i64 24, %i.fb
  br label %bb.ap

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel:        ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.et, ptr nonnull align 8 %i.a, i64 %i.fb, i1 false)
  %.pre21.i.peel = load ptr, ptr %i.ey, align 8, !tbaa !61 ; 4 uses
  %gepdiff.peel = sub nuw nsw i64 24, %i.fb       ; 2 uses
  %i.ff = icmp samesign ult i64 %i.fb, 16
  br i1 %i.ff, label %bb.ap, label %bb.an, !prof !195

bb.an:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel
  %i.fg = icmp eq i64 %i.fb, 16
  br i1 %i.fg, label %bb.ao, label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i.peel

bb.ao:                                            ; preds = %bb.an
  %i.fh = load i64, ptr %.sink.i.i.peel, align 8, !tbaa !60
  store i64 %i.fh, ptr %.pre21.i.peel, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i.peel

bb.ap:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel.thread, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel
  %gepdiff.peel186 = phi i64 [ %gepdiff.peel185, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel.thread ], [ %gepdiff.peel, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel ] ; 2 uses
  %i.fi = phi ptr [ %i.ez, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel.thread ], [ %.pre21.i.peel, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.peel ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fi, ptr nonnull align 8 %.sink.i.i.peel, i64 %gepdiff.peel186, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i.peel

_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i.peel: ; preds = %bb.ap, %bb.ao, %bb.an
  %gepdiff.peel187 = phi i64 [ %gepdiff.peel186, %bb.ap ], [ 8, %bb.ao ], [ %gepdiff.peel, %bb.an ]
  %i.fj = phi ptr [ %i.fi, %bb.ap ], [ %.pre21.i.peel, %bb.ao ], [ %.pre21.i.peel, %bb.an ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %gepdiff.peel187
  store ptr %i.fk, ptr %i.ey, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel

bb.aq:                                            ; preds = %bb.ai
  %i.fl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc59.peel unwind label %.loopexit.split-lp144 ; 3 uses

.noexc59.peel:                                    ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.not.i.i58.peel = icmp eq ptr %i.et, null
  br i1 %.not.i.i58.peel, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.peel, label %bb.ar

bb.ar:                                            ; preds = %.noexc59.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ew) #37
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.peel

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.peel: ; preds = %bb.ar, %.noexc59.peel
  store ptr %i.fl, ptr %i.eq, align 8, !tbaa !56
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !61
  store ptr %i.fn, ptr %i.er, align 8, !tbaa !59
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel

_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel: ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.peel, %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i.peel, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.peel, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %5 = icmp samesign ugt i64 %i.dx, 1
  br i1 %5, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel
  store ptr %i.ek, ptr %4, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.fo, align 8, !tbaa !65
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.el, ptr %i.fp, align 8, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5folly13CacheLocalityC1ESt6vectorIS1_ImSaImEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 %4)
          to label %bb.bg unwind label %bb.bj

bb.as:                                            ; preds = %_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.at:                                            ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.ah
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.peel.next:                                       ; preds = %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit
  %.024120 = phi i64 [ %i.gv, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit ], [ 1, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel ] ; 2 uses
  %.025119 = phi i64 [ %spec.select, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit ], [ %.sroa.0.0.copyload.peel, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel ]
  %.027118 = phi i64 [ %.12893, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit ], [ %.sroa.0.0.copyload.peel, %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit.peel ]
  %i.fs = getelementptr [24 x i8], ptr %.sroa.064.1, i64 %.024120 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %i.fs, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ft = getelementptr i8, ptr %i.fs, i64 -8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !60
  %.not = icmp eq i64 %.sroa.8.0.copyload, %i.fu  ; 2 uses
  br i1 %.not, label %bb.au, label %.thread94

bb.au:                                            ; preds = %.peel.next
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fv = getelementptr i8, ptr %i.fs, i64 -16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !60
  %.not29 = icmp eq i64 %.sroa.7.0.copyload, %i.fw
  br i1 %.not29, label %bb.av, label %.thread94

.thread94:                                        ; preds = %.peel.next, %bb.au
  br label %bb.av

bb.av:                                            ; preds = %.thread94, %bb.au
  %.12893 = phi i64 [ %.sroa.0.0.copyload, %.thread94 ], [ %.027118, %bb.au ] ; 4 uses
  %spec.select = select i1 %.not, i64 %.025119, i64 %.sroa.0.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %.12893, ptr %i.a, align 8, !tbaa !60
  store i64 %.12893, ptr %i.eo, align 8, !tbaa !60
  store i64 %spec.select, ptr %i.ep, align 8, !tbaa !60
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %.sroa.0.0.copyload ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !59
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !56 ; 7 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 24
  br i1 %i.ge, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %.noexc59 unwind label %.loopexit143 ; 3 uses

.noexc59:                                         ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.not.i.i58 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i58, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc59
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gd) #37
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.ax, %.noexc59
  store ptr %i.gf, ptr %i.fx, align 8, !tbaa !56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !61
  store ptr %i.gh, ptr %i.fy, align 8, !tbaa !59
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit

bb.ay:                                            ; preds = %bb.av
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 5 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !61 ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.gc                    ; 9 uses
  %.not.i56 = icmp ult i64 %i.gl, 24
  br i1 %.not.i56, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.pre.i57 = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  %.not.i16.i = icmp eq ptr %.pre.i57, %i.gm
  br i1 %.not.i16.i, label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.az
  store ptr %i.gm, ptr %i.gi, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.ay
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gl ; 2 uses
  %i.gn = icmp samesign ugt i64 %i.gl, 8
  br i1 %i.gn, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i, label %bb.ba, !prof !98

bb.ba:                                            ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.go = icmp eq i64 %i.gl, 8
  br i1 %i.go, label %bb.bb, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread

bb.bb:                                            ; preds = %bb.ba
  store i64 %.12893, ptr %i.ga, align 8, !tbaa !60
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread:      ; preds = %bb.bb, %bb.ba
  %gepdiff188 = sub nuw nsw i64 24, %i.gl
  br label %bb.bc

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i:             ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ga, ptr nonnull align 8 %i.a, i64 %i.gl, i1 false)
  %.pre21.i = load ptr, ptr %i.gi, align 8, !tbaa !61 ; 4 uses
  %gepdiff = sub nuw nsw i64 24, %i.gl            ; 2 uses
  %i.gp = icmp samesign ult i64 %i.gl, 16
  br i1 %i.gp, label %bb.bc, label %bb.bd, !prof !196

bb.bc:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i
  %gepdiff189 = phi i64 [ %gepdiff188, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread ], [ %gepdiff, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i ] ; 2 uses
  %i.gq = phi ptr [ %i.gj, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i.thread ], [ %.pre21.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gq, ptr nonnull align 8 %.sink.i.i, i64 %gepdiff189, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i

bb.bd:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i
  %i.gr = icmp eq i64 %i.gl, 16
  br i1 %i.gr, label %bb.be, label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.gs = load i64, ptr %.sink.i.i, align 8, !tbaa !60
  store i64 %i.gs, ptr %.pre21.i, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %gepdiff190 = phi i64 [ 8, %bb.be ], [ %gepdiff, %bb.bd ], [ %gepdiff189, %bb.bc ]
  %i.gt = phi ptr [ %.pre21.i, %bb.be ], [ %.pre21.i, %bb.bd ], [ %i.gq, %bb.bc ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %gepdiff190
  store ptr %i.gu, ptr %i.gi, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit

_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit: ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.az, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.gv = add nuw i64 %.024120, 1                 ; 2 uses
  %6 = icmp ult i64 %i.gv, %i.dx
  br i1 %6, label %.peel.next, label %._crit_edge, !llvm.loop !197

.loopexit143:                                     ; preds = %bb.aw
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp144:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp144, %.loopexit143
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit145, %.loopexit143 ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bk

bb.bg:                                            ; preds = %._crit_edge
  %i.gw = load ptr, ptr %4, align 8, !tbaa !62    ; 3 uses
  %i.gx = load ptr, ptr %i.fo, align 8, !tbaa !65 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gw, %i.gx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %bb.bg, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.he, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.gw, %bb.bg ] ; 3 uses
  %i.gy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i37
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !59
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hd) #37
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.bh, %.lr.ph.i.i.i37
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.he, %i.gx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i37, !llvm.loop !67

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.bg
  %i.hf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gw, %bb.bg ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %i.hg = load ptr, ptr %i.fp, align 8, !tbaa !66
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #37
  br label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.hk = ptrtoint ptr %.sroa.25.1 to i64
  %i.hl = sub i64 %i.hk, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.1, i64 noundef %i.hl) #37
  ret void

bb.bj:                                            ; preds = %._crit_edge
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bf
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bf ], [ %i.hm, %bb.bj ]
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #34
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bk ], [ %i.fr, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.as
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bl ], [ %i.fq, %bb.as ] ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %.sroa.064.1, null
  br i1 %.not.i.i.i50, label %common.resume, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hn = ptrtoint ptr %.sroa.25.1 to i64
  %i.ho = sub i64 %i.hn, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.1, i64 noundef %i.ho) #37
  br label %common.resume
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %i.h)
  %i.i = icmp sgt i64 %i.d, 384
  br i1 %i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %bb.c ] ; 3 uses
  %.sroa.07.018.i.idx = phi i64 [ %.sroa.07.018.i.add, %bb.i ], [ 24, %bb.c ] ; 3 uses
  %.pn17.i = phi ptr [ %.sroa.07.018.i.ptr, %bb.i ], [ %0, %bb.c ] ; 7 uses
  %.sroa.07.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.018.i.idx ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60   ; 6 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge: ; preds = %bb.d
  %i.p = icmp ult i64 %i.m, %i.n
  %.phi.trans.insert22.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %.pre.i.pre = load i64, ptr %.phi.trans.insert22.i.phi.trans.insert, align 8, !tbaa !60 ; 2 uses
  %.pre20.i18 = load i64, ptr %.sroa.07.018.i.ptr, align 8, !tbaa !60 ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60   ; 6 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  %i.u = load i64, ptr %.sroa.07.018.i.ptr, align 8, !tbaa !60 ; 5 uses
  br i1 %i.t, label %.split.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

.split.i:                                         ; preds = %bb.e
  %i.v = load i64, ptr %0, align 8, !tbaa !60
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.e
  %i.x = icmp ult i64 %i.r, %i.s
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.split.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge
  %i.y = phi i64 [ %i.r, %.split.i ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre.i.pre, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ]
  %i.z = phi i64 [ %i.u, %.split.i ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre20.i18, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 48
  %i.ab = udiv exact i64 %.sroa.07.018.i.idx, 24  ; 2 uses
  %i.ac = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !60
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !60
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !60
  %i.am = add nsw i64 %i.ab, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.018.i.ptr, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.an = icmp eq i64 %indvar, 0
  br i1 %i.an, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !60
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !60
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
end_hunk_0
