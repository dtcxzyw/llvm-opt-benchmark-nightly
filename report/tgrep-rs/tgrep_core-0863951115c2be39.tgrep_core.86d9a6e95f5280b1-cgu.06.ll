Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.06?download=true
inline.NumInlined: 905
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher10is_ignored:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.m = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = tail call { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore27matched_path_or_any_parentsRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3)
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.c

bb.e:                                             ; preds = %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher10is_ignored0B6_.exit, %bb.c, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ true, %bb.a ], [ %i.ax, %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher10is_ignored0B6_.exit ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !889
  call void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !889
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !889, !nonnull !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !890
  store i8 92, ptr %i.c, align 1, !noalias !890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !890
  store i8 47, ptr %i.b, align 1, !noalias !890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !890
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  store ptr %i.r, ptr %i.a, align 8, !noalias !890
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.v, align 8, !noalias !890
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.w, align 8, !noalias !890
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.x, align 8, !noalias !890
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.h unwind label %bb.g, !noalias !889

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #31
          to label %common.resume.i unwind label %bb.u, !noalias !889

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !890
  %i.z = load i64, ptr %i.e, align 8, !range !10, !alias.scope !891, !noalias !889, !noundef !5
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.j, !noalias !889

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.k, !noalias !889

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !889
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.l, !noalias !889

.body.i:                                          ; preds = %bb.q, %bb.o, %bb.l, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %i.ab, %bb.j ], [ %i.ad, %bb.l ], [ %i.az, %bb.q ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #31
          to label %common.resume.i unwind label %bb.u, !noalias !889

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.n, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !889
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !889, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !889, !noundef !5
  %i.ai = invoke { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 2)
          to label %bb.m unwind label %bb.l, !noalias !889 ; 2 uses

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = invoke { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchescECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak, i32 noundef 47)
          to label %bb.n unwind label %bb.l, !noalias !889 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !889
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !889, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !889, !noundef !5
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.l, !noalias !889

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !889, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !889, !noundef !5
  %i.ax = invoke noundef zeroext i1 @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore8excludes(ptr noundef nonnull align 8 %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw, i1 noundef zeroext %3)
          to label %bb.p unwind label %bb.o, !noalias !889

bb.o:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #31
          to label %.body.i unwind label %bb.u, !noalias !889

bb.p:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.q, !noalias !889

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.r, !noalias !889

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !889
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.l, !noalias !889

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !889
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher10is_ignored0B6_.exit unwind label %bb.s, !noalias !889

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.t, !noalias !889

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !889
  unreachable

common.resume.i:                                  ; preds = %bb.s, %.body.i, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.bb, %bb.s ], [ %.pn.i, %.body.i ], [ %i.y, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.u:                                             ; preds = %bb.o, %.body.i, %bb.g
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !889
  unreachable

_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher10is_ignored0B6_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !889
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher11with_nested(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([424 x i8]) align 8 captures(none) dereferenceable(424) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  call fastcc void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher16with_all_sources(ptr noalias nofree noundef align 8 captures(none) dereferenceable(424) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %1, i1 noundef zeroext false, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher14is_whitelisted(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i8 @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher17standard_decision(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext false)
  %.sroa.0.0 = icmp eq i8 %i.a, 0
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher16with_all_sources(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(424) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %5, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %6, ptr noundef %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [424 x i8], align 8               ; 14 uses
  %i.f = alloca [128 x i8], align 8               ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %7, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %3, align 8, !range !17, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = icmp ult i64 %i.p, 67818912035696881
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %i.m, i64 %i.p
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.n, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.r, ptr %.sroa.66.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1b_6filter6FilterINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore10IgnoreKindNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEENCNvMB36_NtB36_13IgnoreMatcher16with_all_sources0ENCB4G_s_0ENtB36_12NestedIgnoreEB38_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !921
  store ptr %i.a, ptr %i.c, align 8, !noalias !922
  %i.x = icmp samesign ult i64 %i.w, 2
  br i1 %i.x, label %bb.h, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i64 %i.w, 21
  br i1 %i.y, label %bb.f, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvMB11_NtB11_13IgnoreMatcher16with_all_sourcess0_0E0INtNtB1Z_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef range(i64 0, 67818912035696881) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #35
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore12NestedIgnoreNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCNvMB1o_NtB1o_13IgnoreMatcher16with_all_sourcess0_0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef range(i64 0, 67818912035696881) %i.w, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.sroa.022.2 = phi i1 [ false, %bb.h ], [ true, %bb.f ], [ true, %bb.e ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ac = load i64, ptr %4, align 8, !range !17, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 67818912035696881
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %i.ab, i64 %i.ae
  store ptr %i.ab, ptr %i.g, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ab, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ac, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ag, ptr %.sroa.614.0..sroa_idx, align 8
  invoke void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1b_6filter6FilterINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore10IgnoreKindNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEENCNvMB36_NtB36_13IgnoreMatcher16with_all_sourcess1_0ENCB4G_s2_0ENtB36_14AncestorIgnoreEB38_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i64, ptr %5, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 -1, ptr %i.f, align 8, !alias.scope !923, !noalias !924
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEE6filterNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2h_13IgnoreMatcher16with_all_sourcess3_0EB2j_.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !925
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !923
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx, i64 120, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val.i = load i64, ptr %i.ah, align 8, !noalias !925, !noundef !5
  %.not1.i = icmp eq i64 %.val.i, 0
  br i1 %.not1.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.m, !noalias !925

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %.body.i.i unwind label %bb.n, !noalias !925

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !925
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.o, !noalias !925

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.ai, %bb.m ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.al) #31
          to label %bb.bc unwind label %bb.p, !noalias !925

bb.p:                                             ; preds = %.body.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !925
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.an)
          to label %.noexc29 unwind label %bb.r

.noexc29:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !925
  store i64 -1, ptr %i.f, align 8, !alias.scope !923, !noalias !924
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEE6filterNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2h_13IgnoreMatcher16with_all_sourcess3_0EB2j_.exit

bb.q:                                             ; preds = %bb.k
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !alias.scope !925
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx37, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !925
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEE6filterNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2h_13IgnoreMatcher16with_all_sourcess3_0EB2j_.exit

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEE6filterNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2h_13IgnoreMatcher16with_all_sourcess3_0EB2j_.exit: ; preds = %bb.q, %.noexc29, %bb.j
  %i.ap = phi i1 [ true, %bb.q ], [ false, %.noexc29 ], [ false, %bb.j ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEE6filterNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2h_13IgnoreMatcher16with_all_sourcess3_0EB2j_.exit
  %i.at = icmp ult i64 %i.w, 67818912035696881
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.w, 0
  br i1 %i.au, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 67818912035696881
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
end_hunk_0
