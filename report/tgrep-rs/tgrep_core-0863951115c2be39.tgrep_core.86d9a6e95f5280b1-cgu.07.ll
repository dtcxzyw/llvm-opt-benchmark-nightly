Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.07?download=true
inline.NumInlined: 999
inline.NumDeleted: 521
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex16update_from_disk:bb.a
bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.n, align 8, !nonnull !9
  %i.u = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1336
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram20extract_merged_masks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.u)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.k
  invoke void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex13commit_upsert(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex11upsert_file.exit unwind label %bb.i

_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex11upsert_file.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1336
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex11delete_file(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex11upsert_file.exit, %bb.l
  %i.v = load i64, ptr %i.b, align 8, !range !8, !alias.scope !1337, !noundef !9
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !1338 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i, 0
  br i1 %i.y, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1339, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1340
  br label %.body

bb.q:                                             ; preds = %bb.n
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !1338 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1339, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1341
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.r, %bb.q, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !1342 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i, 0
  br i1 %i.ab, label %.body12, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val3.i = load ptr, ptr %i.i, align 8, !alias.scope !1343, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1344
  br label %.body12

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core.exit
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !1342 ; 2 uses
  %i.ac = icmp eq i64 %.val.i, 0
  br i1 %i.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !1343, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1345
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit

.body12:                                          ; preds = %bb.w, %bb.t, %bb.s, %.body
  %.pn6 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ae, %bb.w ], [ %i.aa, %bb.t ], [ %i.aa, %bb.s ] ; 2 uses
  %i.ad = load i64, ptr %i.d, align 8, !range !8, !noundef !9
  %.not8 = icmp eq i64 %i.ad, -1
  br i1 %.not8, label %bb.af, label %bb.b

bb.w:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.af = load i64, ptr %i.d, align 8, !range !8, !noundef !9
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.af, %bb.i, %.body, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
          to label %bb.aa unwind label %bb.c

bb.aa:                                            ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1346 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.aj, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !1347, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1348
  br label %common.resume

bb.ad:                                            ; preds = %bb.aa
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1346 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1347, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1349
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit

common.resume:                                    ; preds = %bb.b, %bb.ab, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.ab ], [ %i.ai, %bb.ac ], [ %.pn9, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.af:                                            ; preds = %.body12
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #31
          to label %bb.b unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex17all_paths_ordered(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRmRNtNtB6_6string6StringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItermB15_EE9from_iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1363
  store ptr %i.a, ptr %i.b, align 8, !noalias !1364
  %i.k = icmp samesign ult i64 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i64 %i.j, 21
  br i1 %i.l, label %bb.d, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB17_5sliceSBZ_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2o_9LiveIndex17all_paths_ordered0E0INtNtB17_3vec3VecBZ_EEB2q_(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef range(i64 0, 576460752303423488) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %bb.e unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1u_5sliceSB1m_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2M_9LiveIndex17all_paths_ordered0E0EB2O_(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef range(i64 0, 576460752303423488) %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = load i64, ptr %i.e, align 8, !range !18, !noundef !9 ; 4 uses
  %i.n = icmp ult i64 %i.j, 576460752303423488
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.p = invoke noundef i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRmRNtNtBX_6string6StringEENCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2d_9LiveIndex17all_paths_ordereds_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB2f_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %bb.g, !noalias !1365 ; 6 uses

bb.f:                                             ; preds = %bb.g
  %i.q = shl nuw i64 %i.m, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1366
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %i.m, 0
  br i1 %i.s, label %.body, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc.i
  %xtraiter = and i64 %i.p, 1
  %2 = icmp eq i64 %i.p, 1
  br i1 %2, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.p, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ae, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.01.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1365, !nonnull !9, !align !15, !noundef !9 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !noalias !1365, !nonnull !9, !noundef !9
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val2.i.i.i = load i64, ptr %i.x, align 8, !noalias !1365, !noundef !9
  store ptr %.val1.i.i.i, ptr %i.t, align 8, !noalias !1367, !captures !1368
  store i64 %.val2.i.i.i, ptr %i.u, align 8, !noalias !1367
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.01.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1365, !nonnull !9, !align !15, !noundef !9 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val1.i.i.i.1 = load ptr, ptr %i.ac, align 8, !noalias !1365, !nonnull !9, !noundef !9
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val2.i.i.i.1 = load i64, ptr %i.ad, align 8, !noalias !1365, !noundef !9
  %i.ae = add nuw i64 %.sroa.0.01.i.i, 2          ; 2 uses
  store ptr %.val1.i.i.i.1, ptr %i.z, align 8, !noalias !1367, !captures !1368
  store i64 %.val2.i.i.i.1, ptr %i.aa, align 8, !noalias !1367
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.01.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod12)
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.0.01.i.i.epil.init ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1365, !nonnull !9, !align !15, !noundef !9 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val1.i.i.i.epil = load ptr, ptr %i.ai, align 8, !noalias !1365, !nonnull !9, !noundef !9
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val2.i.i.i.epil = load i64, ptr %i.aj, align 8, !noalias !1365, !noundef !9
  store ptr %.val1.i.i.i.epil, ptr %i.af, align 8, !noalias !1367, !captures !1368
  store i64 %.val2.i.i.i.epil, ptr %i.ag, align 8, !noalias !1367
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc.i
  store i64 %i.m, ptr %0, align 8, !alias.scope !1365, !noalias !1369
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.ak, align 8, !alias.scope !1365, !noalias !1369
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.al, align 8, !alias.scope !1365, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body:                                            ; preds = %bb.g, %bb.f, %bb.h
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body8

bb.h:                                             ; preds = %bb.c, %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRmRNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #31
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex17remove_file_by_id(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  store i32 %1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.f, align 8
  invoke void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmENtNtNtBY_4hash6random11RandomStateE6retainNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2A_9LiveIndex17remove_file_by_id0EB2C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 %i.d, ptr noundef nonnull align 8 %i.c)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.i, %bb.j, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %bb.b ], [ %i.n, %bb.j ], [ %i.n, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %common.resume unwind label %bb.r

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapTmmENtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6retainNCNvMs0_NtBW_4liveNtB2L_9LiveIndex17remove_file_by_ids_0EBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 4 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removemECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.b, align 8, !range !8, !noundef !9
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = invoke { i32, i32 } @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeBO_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #31
          to label %.body unwind label %bb.r

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !1388 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i, 0
  br i1 %i.o, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1389, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1390
  br label %.body

bb.k:                                             ; preds = %bb.h
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !1388 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i, 0
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1389, !nonnull !9, !noundef !9
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1391
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !1392 ; 2 uses
  %i.t = icmp eq i64 %.val2.i, 0
  br i1 %i.t, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !1393, !nonnull !9, !noundef !9
  %i.u = shl nuw i64 %.val2.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 4) #28, !noalias !1394
  br label %common.resume

bb.p:                                             ; preds = %bb.m
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !1392 ; 2 uses
  %i.v = icmp eq i64 %.val.i, 0
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !1393, !nonnull !9, !noundef !9
  %i.w = shl nuw i64 %.val.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 4) #28, !noalias !1395
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit

common.resume:                                    ; preds = %.body, %bb.n, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.n ], [ %i.s, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.r:                                             ; preds = %bb.g, %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex17snapshot_for_disk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call fastcc void @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex14remap_snapshot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB5_9LiveIndex19has_descendant_path(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
  %i.e = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringmENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.not7.not.i = icmp eq ptr %i.f, null
  br i1 %.not7.not.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtCsgCecv3eZDcN_5alloc6string6StringmENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3any5checkRBV_NCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB3b_9LiveIndex19has_descendant_path0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEEB3d_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB1W_9LiveIndex19has_descendant_path0E0B1Y_.exit.backedge.i
  %i.g = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB1W_9LiveIndex19has_descendant_path0E0B1Y_.exit.backedge.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val6.i = load i64, ptr %i.i, align 8, !noundef !9 ; 2 uses
  %i.j = call noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val5.i, i64 noundef %.val6.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.j, label %.split.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB1W_9LiveIndex19has_descendant_path0E0B1Y_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.k = sub nuw i64 %.val6.i, %2
  %i.l = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1398
  store i32 47, ptr %i.a, align 4, !noalias !1398
  %i.m = call noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1398
  br i1 %i.m, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysNtNtCsgCecv3eZDcN_5alloc6string6StringmENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3any5checkRBV_NCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB3b_9LiveIndex19has_descendant_path0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEEB3d_.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB1W_9LiveIndex19has_descendant_path0E0B1Y_.exit.backedge.i
end_hunk_0
