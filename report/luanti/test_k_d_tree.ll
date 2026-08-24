Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_k_d_tree?download=true
inline.NumInlined: 1717
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN8k_d_tree14DynamicKdTreesILh3EftE6insertERKSt5arrayIfLm3EEt:bb.a

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.co) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !72  ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i41, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i42

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i42: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i42, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !95  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cr = load ptr, ptr %0, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw [88 x i8], ptr %i.cr, i64 %i.aq ; 11 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !97
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  store ptr null, ptr %i.ct, align 8, !tbaa !95
  %.not.i.i.i.i.i.i.i43 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i43, label %_ZN8k_d_tree6PointsILh3EfEaSEOS1_.exit.i.i45, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i44

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i44: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #20
  br label %_ZN8k_d_tree6PointsILh3EfEaSEOS1_.exit.i.i45

_ZN8k_d_tree6PointsILh3EfEaSEOS1_.exit.i.i45:     ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i44, %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 0, ptr %i.cv, align 8, !tbaa !74
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !72 ; 2 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i46, label %_ZN8k_d_tree12SortedPointsILh3EfEaSEOS1_.exit.i48, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i47

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i47: ; preds = %_ZN8k_d_tree6PointsILh3EfEaSEOS1_.exit.i.i45
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #20
  br label %_ZN8k_d_tree12SortedPointsILh3EfEaSEOS1_.exit.i48

_ZN8k_d_tree12SortedPointsILh3EfEaSEOS1_.exit.i48: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i47, %_ZN8k_d_tree6PointsILh3EfEaSEOS1_.exit.i.i45
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72 ; 2 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !72
  %.not.i.i.i.i.i49 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i49, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit.i51, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i50

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i50: ; preds = %_ZN8k_d_tree12SortedPointsILh3EfEaSEOS1_.exit.i48
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit.i51

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit.i51: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i50, %_ZN8k_d_tree12SortedPointsILh3EfEaSEOS1_.exit.i48
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !72 ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !72
  %.not.i.i.i.i5.i52 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i5.i52, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit7.i54, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i6.i53

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i6.i53: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit.i51
  call void @_ZdaPv(ptr noundef nonnull %i.db) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit7.i54

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit7.i54: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i6.i53, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit.i51
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i55, label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit77, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit7.i54
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 80 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !85 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dk
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.di) #20
  store ptr null, ptr %i.dc, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i56 = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i56, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i57 = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i57, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i58, align 8
  store ptr null, ptr %i.de, align 8
  br label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit77

_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit77:           ; preds = %bb.l, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EEaSEOS3_.exit7.i54
  %i.dm = add i8 %.012110, 1                      ; 3 uses
  %i.dn = zext i8 %i.dm to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i8 0, i64 40, i1 false)
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 88
  %i.du = icmp eq i64 %i.dt, %i.dn
  br i1 %i.du, label %._crit_edge, label %bb.e, !llvm.loop !105

bb.m:                                             ; preds = %bb.h
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.p

bb.n:                                             ; preds = %_ZN8k_d_tree14DynamicKdTreesILh3EftE16updateDelEntriesEh.exit17, %_ZN8k_d_tree14DynamicKdTreesILh3EftE16updateDelEntriesEh.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !106
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !106
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !82 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i78, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i79, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !85 ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 2 uses
  %i.eg = ashr exact i64 %i.ef, 3
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eh
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.ef) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i79

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i79:         ; preds = %bb.o, %bb.n
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !72 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i80, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i82, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i81

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i81: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i79
  call void @_ZdaPv(ptr noundef nonnull %i.ek) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i82

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i82: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i81, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i79
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.em = load ptr, ptr %i.el, align 16, !tbaa !72 ; 2 uses
  %.not.i1.i83 = icmp eq ptr %i.em, null
  br i1 %.not.i1.i83, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i85, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i84

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i84: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i82
  call void @_ZdaPv(ptr noundef nonnull %i.em) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i85

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i85: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i84, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i82
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i86, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i88, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i87

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i87: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i85
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i88

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i88: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i87, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i85
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i89, label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit91, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i90

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i90: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i88
  call void @_ZdaPv(ptr noundef nonnull %i.eq) #20
  br label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit91

_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit91:           ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i88, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.p:                                             ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.d ], [ %i.dv, %bb.m ]
  call void @_ZN8k_d_tree6KdTreeILh3EftED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %5 = alloca %"class.Catch::BinaryExpr", align 8 ; 11 uses
  %6 = alloca %"struct.std::array.34", align 8    ; 6 uses
  %7 = alloca %"struct.std::array.34", align 8    ; 6 uses
  %8 = alloca %"class.std::unordered_set", align 8 ; 18 uses
  %9 = alloca %class.anon.99, align 8             ; 5 uses
  %10 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %11 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.b = load ptr, ptr %0, align 8, !tbaa !112, !nonnull !114, !align !115 ; 2 uses
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !36
  %i.c = mul i32 %.promoted, 1103515245
  %12 = add i32 %i.c, 12345                       ; 2 uses
  %13 = mul i32 %12, 1103515245
  %14 = insertelement <2 x i32> poison, i32 %12, i64 0
  %i.d = add i32 %13, 12345                       ; 2 uses
  %i.e = mul i32 %i.d, 1103515245
  %i.f = add i32 %i.e, 12345                      ; 2 uses
  %i.g = insertelement <2 x i32> %14, i32 %i.f, i64 1
  %i.h = sdiv <2 x i32> %i.g, splat (i32 65536)
  %i.i = trunc nsw <2 x i32> %i.h to <2 x i16>
  %i.j = and <2 x i16> %i.i, splat (i16 32767)
  %i.k = urem <2 x i16> %i.j, splat (i16 3001)
  %15 = add nsw <2 x i16> %i.k, splat (i16 -1500)
  %i.l = sitofp <2 x i16> %15 to <2 x float>      ; 4 uses
  store <2 x float> %i.l, ptr %6, align 8, !tbaa !116
  %i.m = mul i32 %i.f, 1103515245
  %i.n = add i32 %i.m, 12345                      ; 2 uses
  %i.o = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.p = insertelement <2 x i32> %i.o, i32 %i.n, i64 1
  %i.q = sdiv <2 x i32> %i.p, splat (i32 65536)
  %i.r = trunc nsw <2 x i32> %i.q to <2 x i16>
  %i.s = and <2 x i16> %i.r, splat (i16 32767)
  %i.t = urem <2 x i16> %i.s, splat (i16 2500)
  %i.u = add nuw nsw <2 x i16> %i.t, splat (i16 1)
  %i.v = uitofp nneg <2 x i16> %i.u to <2 x float>
  %i.w = fadd nsz <2 x float> %i.l, %i.v          ; 3 uses
  store <2 x float> %i.w, ptr %7, align 8, !tbaa !116
  %i.x = mul i32 %i.n, 1103515245
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = add i32 %i.x, 12345                      ; 2 uses
  %i.aa = mul i32 %i.z, 1103515245
  %i.ab = add i32 %i.aa, 12345                    ; 2 uses
  %i.ac = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.ab, i64 1
  %i.ae = sdiv <2 x i32> %i.ad, splat (i32 65536)
  %i.af = trunc nsw <2 x i32> %i.ae to <2 x i16>
  %i.ag = and <2 x i16> %i.af, splat (i16 32767)
  %i.ah = urem <2 x i16> %i.ag, <i16 3001, i16 2500> ; 2 uses
  %i.ai = extractelement <2 x i16> %i.ah, i64 0
  %.zext.i.2 = zext nneg i16 %i.ai to i32
  %i.aj = add nsw i32 %.zext.i.2, -1500
  %i.ak = sitofp nsz i32 %i.aj to float           ; 3 uses
  store float %i.ak, ptr %i.y, align 8, !tbaa !116
  %i.al = extractelement <2 x i16> %i.ah, i64 1
  %narrow.2 = add nuw nsw i16 %i.al, 1
  %i.am = uitofp nneg i16 %narrow.2 to float
  %i.an = fadd nsz float %i.ak, %i.am             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.an, ptr %i.ao, align 8, !tbaa !116
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.aq, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120, !nonnull !114, !align !121 ; 2 uses
  %.val = load ptr, ptr %i.av, align 8, !tbaa !54 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val17 = load ptr, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %.not10.i = icmp eq ptr %.val, %.val17
  br i1 %.not10.i, label %"_ZN12ObjectVectorILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE_EEvRKSt5arrayIfLm3EES8_RKS3_.exit", label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64
  %16 = extractelement <2 x float> %i.l, i64 0
  %17 = extractelement <2 x float> %i.l, i64 1
  %i.bg = extractelement <2 x float> %i.w, i64 0
  %i.bh = extractelement <2 x float> %i.w, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i, %.preheader.lr.ph.i
  %.sroa.03.011.i = phi ptr [ %.val, %.preheader.lr.ph.i ], [ %i.dh, %.thread.i ] ; 5 uses
  %i.bi = load float, ptr %.sroa.03.011.i, align 4, !tbaa !116 ; 2 uses
  %i.bj = fcmp nsz olt float %i.bi, %16
  %i.bk = fcmp nsz ogt float %i.bi, %i.bg
  %or.cond34 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond34, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !116 ; 2 uses
  %i.bn = fcmp nsz olt float %i.bm, %17
  %i.bo = fcmp nsz ogt float %i.bm, %i.bh
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !116 ; 2 uses
  %i.br = fcmp nsz olt float %i.bq, %i.ak
  %i.bs = fcmp nsz ogt float %i.bq, %i.an
  %or.cond32 = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond32, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i, i64 12
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !55 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bu, ptr %i.a, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr @.str, ptr %4, align 8, !tbaa !9
  store i64 91, ptr %i.ax, align 8, !tbaa !14
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.10, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.12, i64 27, i32 noundef 2)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bv = load i64, ptr %i.ay, align 8, !tbaa !122
  %.not.not.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader12.i, label %bb.f

.preheader12.i:                                   ; preds = %.noexc, %bb.e
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.ar, %.noexc ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !27 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader12.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !25
  %i.by = icmp eq i16 %i.bu, %i.bx
  br i1 %i.by, label %.loopexit.i.i, label %.preheader12.i, !llvm.loop !123

bb.f:                                             ; preds = %.noexc
  %i.bz = zext i16 %i.bu to i64
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !119 ; 2 uses
  %i.cb = urem i64 %i.bz, %i.ca                   ; 2 uses
  %i.cc = load ptr, ptr %8, align 8, !tbaa !117
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !25
  %i.ci = icmp eq i16 %i.bu, %i.ch
  br i1 %i.ci, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.cj = icmp eq i16 %i.bu, %i.cm
  br i1 %i.cj, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !125

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.ck, %bb.h ], [ %i.cf, %bb.g ]
  %i.ck = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !27 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !25 ; 2 uses
  %i.cn = zext i16 %i.cm to i64
  %i.co = urem i64 %i.cn, %i.ca
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.cb
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !125

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !125

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h, %bb.e, %.preheader12.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.06.1.i.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ null, %.preheader12.i ], [ %i.cf, %bb.g ], [ null, %bb.f ], [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ null, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ck, %bb.h ]
  %.not.i.i.i.i = icmp ne ptr %.sroa.06.1.i.i.i.i.i, null ; 2 uses
  %..i.i.i.i = zext i1 %.not.i.i.i.i to i64
  %i.cp = xor i1 %.not.i.i.i.i, true
  %i.cq = zext i1 %i.cp to i8
  store i8 1, ptr %i.az, align 8, !tbaa !126, !alias.scope !129
  store i8 %i.cq, ptr %i.ba, align 1, !tbaa !132, !alias.scope !129
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprImiEE, i64 16), ptr %5, align 8, !tbaa !133, !alias.scope !129
  store i64 %..i.i.i.i, ptr %i.bb, align 8, !tbaa !135, !alias.scope !129
  store ptr @.str.13, ptr %i.bc, align 8, !tbaa !138, !alias.scope !129
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !139, !alias.scope !129
  store i32 0, ptr %i.bd, align 8, !tbaa !140, !alias.scope !129
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.m

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ct = call ptr @__cxa_begin_catch(ptr %i.cs) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.j
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cu = load i8, ptr %i.be, align 1, !tbaa !141, !range !147, !noundef !114
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %"_ZZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvENKUlT_tE_clISt5arrayIfLm3EEEEDaS0_t.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !148, !nonnull !114, !align !121 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !133
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 160
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %"_ZZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvENKUlT_tE_clISt5arrayIfLm3EEEEDaS0_t.exit.i" unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #21
  unreachable

bb.q:                                             ; preds = %bb.k
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.dd, %bb.r ], [ %i.dc, %bb.q ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #21
  unreachable

"_ZZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvENKUlT_tE_clISt5arrayIfLm3EEEEDaS0_t.exit.i": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %8, ptr %2, align 8, !tbaa !149
  %i.dg = invoke { ptr, i8 } @_ZNSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKtSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeItLb0EEEEEEEESt4pairINS1_14_Node_iteratorItLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc21 unwind label %bb.w   ; 0 uses

.noexc21:                                         ; preds = %"_ZZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvENKUlT_tE_clISt5arrayIfLm3EEEEDaS0_t.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread.i

.thread.i:                                        ; preds = %.noexc21, %bb.c, %bb.b, %.preheader.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, %.val17
  br i1 %.not.i, label %"_ZN12ObjectVectorILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE_EEvRKSt5arrayIfLm3EES8_RKS3_.exit", label %.preheader.i

"_ZN12ObjectVectorILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE_EEvRKSt5arrayIfLm3EES8_RKS3_.exit": ; preds = %.thread.i, %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !151, !nonnull !114, !align !121 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %8, ptr %9, align 8, !tbaa !152
  %.val19 = load ptr, ptr %i.dj, align 8, !tbaa !154 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val20 = load ptr, ptr %i.dk, align 8, !tbaa !154 ; 2 uses
  %.not4.i = icmp eq ptr %.val19, %.val20
  br i1 %.not4.i, label %"_ZNK8k_d_tree14DynamicKdTreesILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE0_EEvRKSt5arrayIfLm3EES9_RKS4_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN12ObjectVectorILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE_EEvRKSt5arrayIfLm3EES8_RKS3_.exit", %.noexc25
  %.sroa.01.05.i = phi ptr [ %i.dl, %.noexc25 ], [ %.val19, %"_ZN12ObjectVectorILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE_EEvRKSt5arrayIfLm3EES8_RKS3_.exit" ] ; 2 uses
  invoke fastcc void @"_ZNK8k_d_tree6KdTreeILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE0_EEvmhRKSt5arrayIfLm3EES9_RKS4_"(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.05.i, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc25 unwind label %bb.x

.noexc25:                                         ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 88 ; 2 uses
  %.not.i24 = icmp eq ptr %i.dl, %.val20
  br i1 %.not.i24, label %"_ZNK8k_d_tree14DynamicKdTreesILh3EftE10rangeQueryIZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clEvEUlT_tE0_EEvRKSt5arrayIfLm3EES9_RKS4_.exit", label %.lr.ph.i

end_hunk_0
