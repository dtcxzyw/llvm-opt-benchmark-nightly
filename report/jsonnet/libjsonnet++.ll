Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/libjsonnet++?download=true
inline.NumInlined: 163
inline.NumDeleted: 85
begin_hunk_0_@jsonnet_set_trailing_newline
declare void @jsonnet_set_trailing_newline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet7Jsonnet13addImportPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  tail call void @jsonnet_jpath_add(ptr noundef %i.a, ptr noundef %i.b)
  ret void
}

declare void @jsonnet_jpath_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet7Jsonnet11setMaxTraceEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @jsonnet_max_trace(ptr noundef %i.a, i32 noundef %1)
  ret void
}

declare void @jsonnet_max_trace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet7Jsonnet10bindTlaVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  tail call void @jsonnet_tla_var(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  ret void
}

declare void @jsonnet_tla_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet7Jsonnet14bindTlaCodeVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  tail call void @jsonnet_tla_code(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  ret void
}

declare void @jsonnet_tla_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet7Jsonnet10bindExtVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  tail call void @jsonnet_ext_var(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  ret void
}

declare void @jsonnet_ext_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7jsonnet7Jsonnet14bindExtCodeVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = load ptr, ptr %2, align 8, !tbaa !21
  tail call void @jsonnet_ext_code(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  ret void
}

declare void @jsonnet_ext_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7jsonnet7Jsonnet12evaluateFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !21
  %i.e = call ptr @jsonnet_evaluate_file(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.a) ; 5 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #16
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.e, i64 noundef %i.j) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #16
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.e, i64 noundef %i.n) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !17
  %i.q = call ptr @jsonnet_realloc(ptr noundef %i.p, ptr noundef nonnull %i.e, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i1 [ %.not, %bb.e ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @jsonnet_evaluate_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @jsonnet_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7jsonnet7Jsonnet15evaluateSnippetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !21
  %i.e = load ptr, ptr %2, align 8, !tbaa !21
  %i.f = call ptr @jsonnet_evaluate_snippet(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull %i.a) ; 5 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  %i.l = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.f, i64 noundef %i.k) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.f, i64 noundef %i.o) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !17
  %i.r = call ptr @jsonnet_realloc(ptr noundef %i.q, ptr noundef nonnull %i.f, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i1 [ %.not, %bb.e ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @jsonnet_evaluate_snippet(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7jsonnet7Jsonnet17evaluateFileMultiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.3", align 8      ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !21
  %i.e = call ptr @jsonnet_evaluate_file_multi(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.a) ; 5 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #16
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.e, i64 noundef %i.j) ; 0 uses
  br label %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.e, align 1, !tbaa !20
  %.not18.i = icmp eq i8 %i.l, 0
  br i1 %.not18.i, label %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.lr.ph.i
  %.019.i = phi ptr [ %i.e, %.preheader.lr.ph.i ], [ %i.o, %.preheader.i ] ; 3 uses
  %scevgep.i = getelementptr nuw i8, ptr %.019.i, i64 1
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %scevgep20.i = getelementptr i8, ptr %.019.i, i64 %strlen.i ; 2 uses
  %i.n = getelementptr i8, ptr %scevgep20.i, i64 2 ; 2 uses
  %strlen21.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %scevgep23.i = getelementptr i8, ptr %scevgep20.i, i64 %strlen21.i
  %i.o = getelementptr i8, ptr %scevgep23.i, i64 3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %.019.i, ptr %3, align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.p = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJS6_IPKcSH_EEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.q = load i8, ptr %i.o, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit, label %.preheader.i, !llvm.loop !0

_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit: ; preds = %.preheader.i, %bb.d, %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !17
  %i.s = call ptr @jsonnet_realloc(ptr noundef %i.r, ptr noundef nonnull %i.e, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit
  %.1 = phi i1 [ %.not, %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @jsonnet_evaluate_file_multi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7jsonnet7Jsonnet20evaluateSnippetMultiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.3", align 8      ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !21
  %i.e = load ptr, ptr %2, align 8, !tbaa !21
  %i.f = call ptr @jsonnet_evaluate_snippet_multi(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull %i.a) ; 5 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  %i.l = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.f, i64 noundef %i.k) ; 0 uses
  br label %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.f, align 1, !tbaa !20
  %.not18.i = icmp eq i8 %i.m, 0
  br i1 %.not18.i, label %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.lr.ph.i
  %.019.i = phi ptr [ %i.f, %.preheader.lr.ph.i ], [ %i.p, %.preheader.i ] ; 3 uses
  %scevgep.i = getelementptr nuw i8, ptr %.019.i, i64 1
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %scevgep20.i = getelementptr i8, ptr %.019.i, i64 %strlen.i ; 2 uses
  %i.o = getelementptr i8, ptr %scevgep20.i, i64 2 ; 2 uses
  %strlen21.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.o)
  %scevgep23.i = getelementptr i8, ptr %scevgep20.i, i64 %strlen21.i
  %i.p = getelementptr i8, ptr %scevgep23.i, i64 3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %.019.i, ptr %4, align 8
  store ptr %i.o, ptr %i.n, align 8
  %i.q = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJS6_IPKcSH_EEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.r = load i8, ptr %i.p, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit, label %.preheader.i, !llvm.loop !0

_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit: ; preds = %.preheader.i, %bb.d, %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !17
  %i.t = call ptr @jsonnet_realloc(ptr noundef %i.s, ptr noundef nonnull %i.f, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit
  %.1 = phi i1 [ %.not, %_ZN7jsonnet12_GLOBAL__N_116parseMultiOutputEPKcPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE.exit ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @jsonnet_evaluate_snippet_multi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7jsonnet7Jsonnet9lastErrorB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.f, ptr %i.a, align 8, !tbaa !22
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.i = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.i, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !20
  store i8 %i.k, ptr %i.j, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !19
  %i.n = load ptr, ptr %0, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJS6_IPKcSH_EEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %0, ptr %2, align 8, !tbaa !33
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IPKcSA_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #14
  invoke void @__cxa_rethrow() #17
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #15
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !28
  %i.j = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 5 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.p) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.x = sub i64 %i.p, %i.r
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.z = phi i1 [ %i.y, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !34
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.j:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !20
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #14
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
end_hunk_0
