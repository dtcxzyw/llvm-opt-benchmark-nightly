Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.14?download=true
inline.NumInlined: 895
inline.NumDeleted: 521
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs2_NtNtCsg06799QCvd1_17wasmi_collections5arena5dedupINtB5_10DedupArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1f_6engine10func_types13DedupFuncTypeENtNtNtB1f_4func2ty8FuncTypeE5allocB1f_:bb.a
bb.ak:                                            ; preds = %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB11_6engine10func_types13DedupFuncTypeENtNtNtB11_4func2ty8FuncTypeE5allocB11_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.cr = load ptr, ptr %.sroa.85.0..sroa_idx6, align 8, !alias.scope !1151, !nonnull !4, !noundef !4
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !1151
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map11VacantEntryNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1A_6handle9RawHandleNtNtNtB1A_6engine10func_types13DedupFuncTypeEEEB1A_.exit70

bb.al:                                            ; preds = %bb.ak
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.85.0..sroa_idx6) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map11VacantEntryNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1A_6handle9RawHandleNtNtNtB1A_6engine10func_types13DedupFuncTypeEEEB1A_.exit70

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map11VacantEntryNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1A_6handle9RawHandleNtNtNtB1A_6engine10func_types13DedupFuncTypeEEEB1A_.exit70: ; preds = %bb.al, %bb.ak, %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB11_6engine10func_types13DedupFuncTypeENtNtNtB11_4func2ty8FuncTypeE5allocB11_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit

.body66.thread:                                   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %.body66
  %eh.lpad-body67119 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp121, %.body66 ], [ %i.bl, %bb.z ], [ %i.bl, %bb.x ], [ %i.bl, %bb.y ], [ %i.bt, %bb.ad ], [ %i.bt, %bb.ab ], [ %i.bt, %bb.ac ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.cu = load i8, ptr %i.g, align 8, !range !14, !alias.scope !1157, !noundef !4
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75, label %bb.am

bb.am:                                            ; preds = %.body66.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.cw = load ptr, ptr %.sroa.85.0..sroa_idx6, align 8, !alias.scope !1160, !nonnull !4, !noundef !4
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !1160
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.85.0..sroa_idx6) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.at, %bb.an
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ap:                                            ; preds = %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1d_6handle9RawHandleNtNtNtB1d_6engine10func_types13DedupFuncTypeEE5entryB1d_.exit.thread
  %i.da = extractvalue { ptr, ptr } %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.db = load i32, ptr %i.da, align 4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %i.dc = load i8, ptr %1, align 8, !range !14, !alias.scope !1164, !noundef !4
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !1167, !nonnull !4, !noundef !4
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !1167
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75: ; preds = %bb.am, %.body66.thread, %bb.an, %bb.as, %.thread89, %bb.at
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body92, %bb.as ], [ %eh.lpad-body67119, %bb.am ], [ %eh.lpad-body92, %bb.at ], [ %eh.lpad-body92, %.thread89 ], [ %eh.lpad-body67119, %.body66.thread ], [ %eh.lpad-body67119, %bb.an ]
  resume { ptr, i32 } %.pn88

.thread89:                                        ; preds = %bb.o, %bb.n, %bb.m, %.thread94
  %eh.lpad-body92 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread94 ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.ak, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.di = load i8, ptr %1, align 8, !range !14, !alias.scope !1171, !noundef !4
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75, label %bb.as

bb.as:                                            ; preds = %.thread89
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !1174, !nonnull !4, !noundef !4
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !1174
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit75 unwind label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner8get_fuel(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1584) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel8get_fuel(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.d = load i64, ptr %i.b, align 8, !range !20, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.f, ptr %i.h, align 8
  store i8 17, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs3_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner8set_fuel(ptr noalias nofree noundef align 8 dereferenceable(1584) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = tail call { i64, i64 } @_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel8set_fuel(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %1) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq i64 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.g, align 8
  store i8 17, ptr %i.a, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner10alloc_func(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1181, !noalias !1182, !noundef !4 ; 5 uses
  %i.c = icmp ugt i64 %i.b, 4294967295
  %i.d = trunc nuw i64 %i.b to i32
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %.not.i5 = icmp eq i32 %i.e, 0
  %.not.i = select i1 %i.c, i1 true, i1 %.not.i5
  br i1 %.not.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.f = add nuw nsw i64 %i.b, 32                 ; 2 uses
  %i.g = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true) ; 2 uses
  %i.h = lshr exact i64 -9223372036854775808, %i.g ; 2 uses
  %i.i = icmp samesign ult i64 %i.b, 4294967264
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw nsw i64 58, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1184, !noalias !1185, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %_RNvMs1_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCsefoF4u9kbII_5wasmi4func10FuncEntityE4pushB1i_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !1186
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = tail call { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtCsefoF4u9kbII_5wasmi4func10FuncEntityE16new_uninit_sliceBM_(i64 noundef %i.h), !noalias !1186
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  store ptr %i.o, ptr %i.l, align 8, !alias.scope !1184, !noalias !1185
  br label %_RNvMs1_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCsefoF4u9kbII_5wasmi4func10FuncEntityE4pushB1i_.exit.i

_RNvMs1_NtNtCsg06799QCvd1_17wasmi_collections5arena10stable_vecINtB5_9StableVecNtNtCsefoF4u9kbII_5wasmi4func10FuncEntityE4pushB1i_.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.e ], [ %i.m, %bb.c ]
  %i.p = sub nsw i64 %i.f, %i.h
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.i.i, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1184
  %i.r = add nuw nsw i64 %i.b, 1
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !1184, !noalias !1185
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.t = load i32, ptr %i.s, align 8, !noundef !4
  %i.u = insertvalue { i32, i32 } poison, i32 %i.e, 0
  %i.v = insertvalue { i32, i32 } %i.u, i32 %i.t, 1
  ret { i32, i32 } %i.v

.critedge:                                        ; preds = %bb.a
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 10) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner11alloc_table(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1193, !noalias !1194, !noundef !4 ; 5 uses
  %i.d = icmp ult i64 %i.c, 4294967296
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !1193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.e = add nuw nsw i64 %i.c, 32                 ; 2 uses
  %i.f = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = sub nuw nsw i64 58, %i.f                 ; 2 uses
  %i.h = lshr exact i64 -9223372036854775808, %i.f ; 2 uses
  %i.i = icmp samesign ult i64 %i.c, 4294967264
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1197, !noalias !1198, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.g, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableE5allocB1o_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %bb.f unwind label %bb.e, !noalias !1199

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core5table5TableECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #31
          to label %common.resume.i unwind label %bb.i, !noalias !1200

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.n = invoke { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtCs5zeGauAcNNa_10wasmi_core5table5TableE16new_uninit_sliceCsefoF4u9kbII_5wasmi(i64 noundef %i.h)
          to label %bb.h unwind label %bb.e, !noalias !1199

bb.h:                                             ; preds = %bb.g
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  store ptr %i.o, ptr %i.k, align 8, !alias.scope !1197, !noalias !1198
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableE5allocB1o_.exit

bb.i:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1200
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableE5allocB1o_.exit.thread unwind label %bb.k, !noalias !1193

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.l, !noalias !1193

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1193
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableE5allocB1o_.exit.thread: ; preds = %bb.j
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !1193
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 11) #33
  unreachable

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_5table5TableENtNtCs5zeGauAcNNa_10wasmi_core5table5TableE5allocB1o_.exit: ; preds = %bb.c, %bb.h
  %.sroa.0.0.i14.i = phi ptr [ %i.o, %bb.h ], [ %i.l, %bb.c ]
  %i.t = sub nsw i64 %i.e, %i.h
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i14.i, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !1193
  %i.v = add nuw nsw i64 %i.c, 1
  store i64 %i.v, ptr %i.b, align 8, !alias.scope !1197, !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1195
  %.sroa.6.0.extract.trunc = trunc nuw i64 %i.c to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.x = load i32, ptr %i.w, align 8, !noundef !4
  %i.y = insertvalue { i32, i32 } poison, i32 %i.x, 0
  %i.z = insertvalue { i32, i32 } %i.y, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12alloc_global(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1207, !noalias !1208, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalE5allocB1o_.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.d = add nuw nsw i64 %i.b, 32                 ; 2 uses
  %i.e = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true) ; 2 uses
  %i.f = sub nuw nsw i64 58, %i.e                 ; 2 uses
  %i.g = lshr exact i64 -9223372036854775808, %i.e ; 2 uses
  %i.h = icmp samesign ult i64 %i.b, 4294967264
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1210, !noalias !1211, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalE5allocB1o_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !1212
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = tail call { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalE16new_uninit_sliceCsefoF4u9kbII_5wasmi(i64 noundef %i.g), !noalias !1212
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  store ptr %i.m, ptr %i.j, align 8, !alias.scope !1210, !noalias !1211
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalE5allocB1o_.exit

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalE5allocB1o_.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0.i12.i = phi ptr [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  %i.n = sub nsw i64 %i.d, %i.g
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i12.i, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !1210
  %i.p = add nuw nsw i64 %i.b, 1
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !1210, !noalias !1211
  %.sroa.6.0.extract.trunc = trunc nuw i64 %i.b to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.r = load i32, ptr %i.q, align 8, !noundef !4
  %i.s = insertvalue { i32, i32 } poison, i32 %i.r, 0
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.t

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6global6GlobalENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalE5allocB1o_.exit.thread: ; preds = %bb.a
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 12) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner12alloc_memory(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1219, !noalias !1220, !noundef !4 ; 5 uses
  %i.d = icmp ult i64 %i.c, 4294967296
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryE5allocB1o_.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !1219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.e = add nuw nsw i64 %i.c, 32                 ; 2 uses
  %i.f = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = sub nuw nsw i64 58, %i.f                 ; 2 uses
  %i.h = lshr exact i64 -9223372036854775808, %i.f ; 2 uses
  %i.i = icmp samesign ult i64 %i.c, 4294967264
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1223, !noalias !1224, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.g, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryE5allocB1o_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %bb.f unwind label %bb.e, !noalias !1225

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBufferNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body.i unwind label %bb.i, !noalias !1226

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.o = invoke { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryE16new_uninit_sliceCsefoF4u9kbII_5wasmi(i64 noundef %i.h)
          to label %bb.h unwind label %bb.e, !noalias !1225

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  store ptr %i.p, ptr %i.k, align 8, !alias.scope !1223, !noalias !1224
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryE5allocB1o_.exit

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1226
  unreachable

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryE5allocB1o_.exit.thread: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBufferNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r), !noalias !1219
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 12) #33
  unreachable

.body.i:                                          ; preds = %bb.e
  resume { ptr, i32 } %i.m

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB1o_6memory6MemoryENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryE5allocB1o_.exit: ; preds = %bb.c, %bb.h
  %.sroa.0.0.i14.i = phi ptr [ %i.p, %bb.h ], [ %i.l, %bb.c ]
  %i.s = sub nsw i64 %i.e, %i.h
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i14.i, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !noalias !1219
  %i.u = add nuw nsw i64 %i.c, 1
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1223, !noalias !1224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1221
  %.sroa.6.0.extract.trunc = trunc nuw i64 %i.c to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.w = load i32, ptr %i.v, align 8, !noundef !4
  %i.x = insertvalue { i32, i32 } poison, i32 %i.w, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner14alloc_instance(ptr noalias nofree noundef align 8 dereferenceable(1584) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = tail call { ptr, i64 } @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6entityNtB4_14InstanceEntity10new_uninit() ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 4 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1233, !noalias !1234, !noundef !4 ; 4 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ult i64 %i.f, 4294967296
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.f, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %bb.d unwind label %bb.j, !noalias !1234

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0.i = phi i64 [ 513, %bb.a ], [ 1, %bb.d ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEEB1g_(ptr nonnull align 8 %i.c, i64 %i.d)
  br label %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_8instance8InstanceEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB1E_6entity14InstanceEntityEE5allocB11_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %.not.i = icmp eq i64 %i.j, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !1235, !noalias !1236, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !range !7, !alias.scope !1235, !noalias !1236, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEE8grow_oneB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !1236

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEEB1g_(ptr nonnull align 8 %i.c, i64 %i.d) #31
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1236
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1235, !noalias !1236, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.k ; 2 uses
  store ptr %i.c, ptr %i.r, align 8, !noalias !1236
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.d, ptr %i.s, align 8
  %i.t = add i64 %i.k, 1
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !1235, !noalias !1236
  %i.u = shl nuw i64 %i.f, 32
  br label %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_8instance8InstanceEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB1E_6entity14InstanceEntityEE5allocB11_.exit

.body.i:                                          ; preds = %bb.j, %bb.g
  %eh.lpad-body24.i = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body24.i

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEEB1g_(ptr nonnull align 8 %i.c, i64 %i.d) #31
          to label %.body.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1234
  unreachable

_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_8instance8InstanceEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB1E_6entity14InstanceEntityEE5allocB11_.exit: ; preds = %bb.c, %bb.i
  %.sroa.4.0.insert.insert.i = phi i64 [ %.sroa.4.0.i, %bb.c ], [ %i.u, %bb.i ] ; 3 uses
  %i.x = trunc i64 %.sroa.4.0.insert.insert.i to i1
  br i1 %i.x, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_8instance8InstanceEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB1E_6entity14InstanceEntityEE5allocB11_.exit
  %.sroa.43.0.extract.shift = lshr i64 %.sroa.4.0.insert.insert.i, 8
  %.sroa.43.0.extract.trunc = trunc i64 %.sroa.43.0.extract.shift to i8
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef %.sroa.43.0.extract.trunc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 21) #33
  unreachable

bb.m:                                             ; preds = %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_8instance8InstanceEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB1E_6entity14InstanceEntityEE5allocB11_.exit
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.4.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.z = load i32, ptr %i.y, align 8, !noundef !4
  %i.aa = insertvalue { i32, i32 } poison, i32 %i.z, 0
  %i.ab = insertvalue { i32, i32 } %i.aa, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16try_resolve_func(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %.not.i = icmp eq i32 %.val2, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtB17_10FuncEntityEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.d = add i32 %.val1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.f = load i64, ptr %i.c, align 8, !alias.scope !1253, !noalias !1254, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.f, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtB17_10FuncEntityEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %.val1, -31
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1255
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.e, 32                 ; 2 uses
  %i.i = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true) ; 2 uses
  %i.j = sub nuw nsw i64 58, %i.i
  %i.k = lshr exact i64 -9223372036854775808, %i.i
  %i.l = sub nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1253, !noalias !1254, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !1248, !noalias !1249
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtB17_10FuncEntityEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtB17_10FuncEntityEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1248, !noalias !1249
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17resolve_func_type(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RINvMs8_NtCsefoF4u9kbII_5wasmi6engineNtB6_11EngineInner17resolve_func_typeNvYNtNtNtB8_4func2ty8FuncTypeNtNtCskKLDkoKarTP_4core5clone5Clone5cloneB1d_EB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner17try_resolve_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.d = zext i32 %.val2 to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1272, !noalias !1273, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.e, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %.val2, -32
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1274
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1272, !noalias !1273, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1267, !noalias !1268
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1267, !noalias !1268
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18alloc_data_segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %0, ptr noundef %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !1299
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.d, align 8, !noalias !1299
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1299, !noundef !4 ; 5 uses
  %i.f = icmp ult i64 %i.e, 4294967296
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1299
  store ptr %1, ptr %i.a, align 8, !noalias !1301
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.g, align 8, !noalias !1301
  %i.h = add nuw nsw i64 %i.e, 32                 ; 2 uses
  %i.i = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true) ; 2 uses
  %i.j = sub nuw nsw i64 58, %i.i                 ; 2 uses
  %i.k = lshr exact i64 -9223372036854775808, %i.i ; 2 uses
  %i.l = icmp samesign ult i64 %i.e, 4294967264
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1301, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.i, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %bb.h unwind label %bb.e, !noalias !1301

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1302
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.i unwind label %bb.k, !noalias !1301

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.t = invoke { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6memory4data17DataSegmentEntityE16new_uninit_sliceBO_(i64 noundef %i.k)
          to label %bb.j unwind label %bb.e, !noalias !1301

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  store ptr %i.u, ptr %i.n, align 8, !alias.scope !1301
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit

bb.k:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1301
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %1, null
  br i1 %i.w, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1303
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.n, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29, !noalias !1299
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread

.body.i:                                          ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.p

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 18) #33
  unreachable

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit: ; preds = %bb.c, %bb.j
  %.sroa.0.0.i14.i = phi ptr [ %i.u, %bb.j ], [ %i.o, %bb.c ]
  %i.z = sub nsw i64 %i.h, %i.k
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i14.i, i64 %i.z ; 2 uses
  store ptr %1, ptr %i.aa, align 8, !noalias !1301
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %2, ptr %i.ab, align 8, !noalias !1301
  %i.ac = add nuw nsw i64 %i.e, 1
  store i64 %i.ac, ptr %i.c, align 8, !alias.scope !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6.0.extract.trunc = trunc nuw i64 %i.e to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !4
  %i.af = insertvalue { i32, i32 } poison, i32 %i.ae, 0
  %i.ag = insertvalue { i32, i32 } %i.af, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18try_resolve_global(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.d = zext i32 %.val2 to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1320, !noalias !1321, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.e, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %.val2, -32
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1322
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1320, !noalias !1321, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1315, !noalias !1316
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1315, !noalias !1316
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18try_resolve_memory(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.d = zext i32 %.val2 to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1339, !noalias !1340, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.e, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %.val2, -32
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1341
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1339, !noalias !1340, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1334, !noalias !1335
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1334, !noalias !1335
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner19alloc_extern_object(ptr noalias nofree noundef align 8 dereferenceable(1584) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1348, !noalias !1349, !noundef !4 ; 4 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %i.c, 4294967295
  %i.f = trunc nuw i64 %i.c to i32
  %i.g = add i32 %i.f, 1
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %i.g ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %bb.i unwind label %bb.n, !noalias !1349

bb.c:                                             ; preds = %bb.i, %bb.a
  %.sroa.4.0.i = phi i64 [ 512, %bb.a ], [ 0, %bb.i ] ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !invariant.load !4, !alias.scope !1349, !noalias !1348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.i(ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.g, !noalias !1349

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !7, !invariant.load !4, !alias.scope !1349, !noalias !1348 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_7reftype9ExternRefENtB1E_15ExternRefEntityE5allocB11_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !16, !invariant.load !4, !alias.scope !1349, !noalias !1348
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #30, !noalias !1349
  br label %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_7reftype9ExternRefENtB1E_15ExternRefEntityE5allocB11_.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !7, !invariant.load !4, !alias.scope !1349, !noalias !1348 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !alias.scope !1349, !noalias !1348
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #30, !noalias !1349
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.n, %bb.l, %bb.h, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.af, %bb.n ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.b
  %i.u = extractvalue { i64, i64 } %i.h, 0
  %.not16.i = icmp eq i64 %i.u, -1
  br i1 %.not16.i, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !1350, !noalias !1351, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !range !7, !alias.scope !1350, !noalias !1351, !noundef !4
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.k, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityE8push_mutBJ_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityE8push_mutBJ_.exit.i unwind label %bb.l, !noalias !1351

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityEBF_(ptr nonnull %1, ptr nonnull readonly align 8 dereferenceable(32) %2) #31
          to label %common.resume.i unwind label %bb.m

end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner19initialize_instance:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner19try_resolve_element(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtNtBa_5table7element14ElementSegmentINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %i.d = zext i32 %.val2 to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1407, !noalias !1408, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.e, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtNtBa_5table7element14ElementSegmentINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %.val2, -32
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1409
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1407, !noalias !1408, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1402, !noalias !1403
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtNtBa_5table7element14ElementSegmentINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtNtBa_5table7element14ElementSegmentINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1402, !noalias !1403
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner20try_resolve_func_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !4
  %.not = icmp eq i32 %i.d, %i.b
  br i1 %.not, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtB1c_10FuncEntityEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !range !24, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.g = add i32 %i.e, -1
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.i = load i64, ptr %i.f, align 8, !alias.scope !1426, !noalias !1427, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.i, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtB1c_10FuncEntityEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.e, -31
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1428
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.h, 32                 ; 2 uses
  %i.l = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true) ; 2 uses
  %i.m = sub nuw nsw i64 58, %i.l
  %i.n = lshr exact i64 -9223372036854775808, %i.l
  %i.o = sub nsw i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1426, !noalias !1427, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !1421, !noalias !1422
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtB1c_10FuncEntityEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_4func4FuncINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtB1c_10FuncEntityEEBa_.exit: ; preds = %bb.a, %bb.e, %bb.b
  %storemerge = phi i64 [ 2, %bb.b ], [ -1, %bb.e ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner20try_resolve_instance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val3 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val4 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_8instance8InstanceINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_EINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB17_6entity14InstanceEntityEEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %.val2 to i64                   ; 2 uses
  %i.f = icmp ugt i64 %.val4, %i.e
  br i1 %i.f, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_8instance8InstanceINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_EINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB17_6entity14InstanceEntityEEEBa_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val3, i64 %i.e ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1434, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !1434, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.k, align 8, !alias.scope !1433
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_8instance8InstanceINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_EINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB17_6entity14InstanceEntityEEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_8instance8InstanceINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_EINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB17_6entity14InstanceEntityEEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink5.i = phi i64 [ 8, %bb.a ], [ 16, %bb.c ], [ 8, %bb.b ]
  %.sink.i = phi i64 [ 1, %bb.a ], [ %i.j, %bb.c ], [ 2, %bb.b ]
  %storemerge3.i = phi i64 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink5.i
  store i64 %.sink.i, ptr %i.l, align 8, !alias.scope !1433
  store i64 %storemerge3.i, ptr %0, align 8, !alias.scope !1433
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner21alloc_element_segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1584) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1441, !noalias !1442, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 4294967296
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1442, !noalias !1441 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1442, !noalias !1441
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1442, !noalias !1441 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.e = add nuw nsw i64 %i.b, 32                 ; 2 uses
  %i.f = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = sub nuw nsw i64 58, %i.f                 ; 2 uses
  %i.h = lshr exact i64 -9223372036854775808, %i.f ; 2 uses
  %i.i = icmp samesign ult i64 %i.b, 4294967264
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1444, !noalias !1445, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE5allocB1o_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %bb.g unwind label %bb.e, !noalias !1446

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.n, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.o = shl nuw nsw i64 %.sroa.5.0.copyload.i, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef 4) #30, !noalias !1446
  br label %.body.i

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.p = invoke { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE16new_uninit_sliceCsefoF4u9kbII_5wasmi(i64 noundef %i.h)
          to label %bb.i unwind label %bb.e, !noalias !1446

bb.i:                                             ; preds = %bb.h
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %i.k, align 8, !alias.scope !1444, !noalias !1445
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE5allocB1o_.exit

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16.i = load i64, ptr %i.r, align 8, !alias.scope !1442, !noalias !1441, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val16.i, 0
  br i1 %i.s, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE5allocB1o_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val15.i = load ptr, ptr %1, align 8, !alias.scope !1442, !noalias !1441, !nonnull !4, !noundef !4
  %i.t = shl nuw nsw i64 %.val16.i, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i, i64 noundef range(i64 1, 0) %i.t, i64 noundef 4) #30, !noalias !1447
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE5allocB1o_.exit.thread

.body.i:                                          ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.m

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE5allocB1o_.exit: ; preds = %bb.c, %bb.i
  %.sroa.0.0.i17.i = phi ptr [ %i.q, %bb.i ], [ %i.l, %bb.c ]
  %i.u = sub nsw i64 %i.e, %i.h
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i17.i, i64 %i.u ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.v, align 8, !noalias !1448
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store <2 x i64> %i.d, ptr %.sroa.5.0..sroa_idx20.i, align 8, !noalias !1448
  %i.w = add nuw nsw i64 %i.b, 1
  store i64 %i.w, ptr %i.a, align 8, !alias.scope !1444, !noalias !1445
  %.sroa.6.0.extract.trunc = trunc nuw i64 %i.b to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.y = load i32, ptr %i.x, align 8, !noundef !4
  %i.z = insertvalue { i32, i32 } poison, i32 %i.y, 0
  %i.aa = insertvalue { i32, i32 } %i.z, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.aa

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_5table7element14ElementSegmentENtNtNtCs5zeGauAcNNa_10wasmi_core5table7element14ElementSegmentE5allocB1o_.exit.thread: ; preds = %bb.k, %bb.j
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 21) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner21try_resolve_externref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3 = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not.i = icmp eq i32 %.val2, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_7reftype9ExternRefINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_ENtB17_15ExternRefEntityEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val4 = load i64, ptr %i.d, align 8
  %.val1 = load i32, ptr %2, align 4
  %i.e = add i32 %.val1, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp ugt i64 %.val4, %i.f
  br i1 %i.g, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_7reftype9ExternRefINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_ENtB17_15ExternRefEntityEEBa_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.val3, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !1451
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_7reftype9ExternRefINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_ENtB17_15ExternRefEntityEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_7reftype9ExternRefINtNtCsg06799QCvd1_17wasmi_collections5arena5ArenaINtNtBa_6handle9RawHandleB15_ENtB17_15ExternRefEntityEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.c ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1451
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner21try_resolve_table_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = load i32, ptr %2, align 4, !noundef !4
  %.not = icmp eq i32 %i.c, %i.b
  br i1 %.not, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.g = zext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !1468, !noalias !1469, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.h, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.e, -32
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1470
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw nsw i64 %i.g, 32                 ; 2 uses
  %i.k = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = sub nuw nsw i64 58, %i.k
  %i.m = lshr exact i64 -9223372036854775808, %i.k
  %i.n = sub nsw i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1468, !noalias !1469, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !1463, !noalias !1464
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_5table5TableINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core5table5TableEEBa_.exit: ; preds = %bb.a, %bb.e, %bb.b
  %storemerge = phi i64 [ 2, %bb.b ], [ -1, %bb.e ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner22try_resolve_global_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = load i32, ptr %2, align 4, !noundef !4
  %.not = icmp eq i32 %i.c, %i.b
  br i1 %.not, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.g = zext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !1487, !noalias !1488, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.h, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.e, -32
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1489
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw nsw i64 %i.g, 32                 ; 2 uses
  %i.k = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = sub nuw nsw i64 58, %i.k
  %i.m = lshr exact i64 -9223372036854775808, %i.k
  %i.n = sub nsw i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1487, !noalias !1488, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !1482, !noalias !1483
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit: ; preds = %bb.a, %bb.e, %bb.b
  %storemerge = phi i64 [ 2, %bb.b ], [ -1, %bb.e ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner22try_resolve_memory_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  %i.c = load i32, ptr %2, align 4, !noundef !4
  %.not = icmp eq i32 %i.c, %i.b
  br i1 %.not, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %i.g = zext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !1506, !noalias !1507, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.h, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.e, -32
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1508
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw nsw i64 %i.g, 32                 ; 2 uses
  %i.k = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = sub nuw nsw i64 58, %i.k
  %i.m = lshr exact i64 -9223372036854775808, %i.k
  %i.n = sub nsw i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1506, !noalias !1507, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !1501, !noalias !1502
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner11resolve_mutNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB1a_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit: ; preds = %bb.a, %bb.e, %bb.b
end_hunk_1
