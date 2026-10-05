Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RINvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB6_15RleDecompressor14decode_generichEBc_:switch.lookup
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.044.0.copyload, 0
  br i1 %i.bp, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.546.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.546.0.copyload, i64 noundef %.sroa.044.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2201
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.split141
  store i64 %.sroa.044.0.copyload, ptr %i.bm, align 8
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 8
  %.sroa.649.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %.sroa.649.0.copyload, ptr %.sroa.649.0..sroa_idx51, align 8
  store i8 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @189, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.bc

.body.thread124.loopexit:                         ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit, %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread124.loopexit.split-lp:                ; preds = %bb.t, %bb.ai, %bb.ah, %bb.aq, %bb.ao, %bb.y, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.ar
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit216

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2202
  store ptr %i.o, ptr %i.a, align 8, !noalias !2202
  %.sroa.42.0..sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i182, align 8, !noalias !2202
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @480, ptr noundef nonnull %i.a)
          to label %.noexc185 unwind label %.body.thread124.loopexit.split-lp

.noexc185:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2202
  %.sroa.08.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !2202 ; 3 uses
  %.sroa.5.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i183, align 8, !noalias !2202 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2202
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2203
  %i.bq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !2203 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.p, label %bb.az, !prof !77

bb.p:                                             ; preds = %.noexc185
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i184 unwind label %bb.q, !noalias !2204

.noexc.i184:                                      ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.08.0.copyload.i, 0
  br i1 %i.bt, label %.body.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.08.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2205
  br label %.body.thread

bb.s:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !2198, !nonnull !75, !noundef !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2198
  store ptr %i.bv, ptr %i.bh, align 8
  %i.bw = icmp sgt i64 %i.bg, -1
  tail call void @llvm.assume(i1 %i.bw)
  store i64 %i.bg, ptr %i.d, align 8
  %.pre = load i64, ptr %i.ab, align 8            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bx = icmp eq i64 %.pre, 0
  br i1 %i.bx, label %bb.t, label %bb.u, !prof !108

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #66
          to label %.noexc189 unwind label %.body.thread124.loopexit.split-lp

.noexc189:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.thread, %bb.s
  %i.by = phi i64 [ %switch.ext, %.thread ], [ %.pre, %bb.s ] ; 3 uses
  %i.bz = phi ptr [ inttoptr (i64 1 to ptr), %.thread ], [ %i.bv, %bb.s ]
  %i.ca = udiv i64 %.16.val, %i.by
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.ag) ; 2 uses
  %.not147 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not147, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph: ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph, %bb.ag
  %i.cb = phi ptr [ %i.bz, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph ], [ %i.cw, %bb.ag ]
  %i.cc = phi i64 [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph ], [ %i.dc, %bb.ag ] ; 6 uses
  %.sroa.13.0146 = phi i64 [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph ], [ %i.cd, %bb.ag ] ; 3 uses
  %i.cd = add nuw i64 %.sroa.13.0146, 1           ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.13.0146 ; 2 uses
  %i.cf = mul i64 %.sroa.13.0146, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cf
  %i.ch = invoke fastcc noundef i64 @_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB2_14RunLengthWidth11read_length(i8 noundef %.72.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.by)
          to label %bb.v unwind label %.body.thread124.loopexit ; 7 uses

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.ag, %._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge, %bb.u
  %i.ci = phi i64 [ %.pre157, %._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge ], [ 0, %bb.u ], [ %i.dc, %bb.ag ] ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  tail call void @llvm.assume(i1 %i.cj)
  %.not150 = icmp eq i64 %i.ci, %i.bg
  br i1 %.not150, label %bb.ap, label %bb.ao

bb.v:                                             ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit
  %i.ck = icmp eq i64 %i.ch, 0
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2206
  %i.cl = tail call noundef dereferenceable_or_null(42) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 42, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2206 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cn = icmp sgt i64 %i.cc, -1
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = sub i64 %i.bg, %i.cc
  %i.cp = icmp ugt i64 %i.ch, %i.co
  br i1 %i.cp, label %bb.af, label %bb.ad

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #66
          to label %bb.ac unwind label %.body.thread124.loopexit.split-lp

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.cl, ptr noundef nonnull align 1 dereferenceable(42) @179, i64 42, i1 false)
  %i.cq = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.ab unwind label %bb.aa, !noalias !2207 ; 4 uses

bb.aa:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 42, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2208
  br label %.body.thread

bb.ab:                                            ; preds = %bb.z
  store i64 42, ptr %i.cq, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cl, ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 42, ptr %.sroa.799.0..sroa_idx, align 8
  br label %bb.am

bb.ac:                                            ; preds = %bb.y
  unreachable

bb.ad:                                            ; preds = %bb.x
  %i.cs = load i8, ptr %i.ce, align 1, !noundef !75 ; 2 uses
  %i.ct = load i64, ptr %i.d, align 8, !range !76, !noundef !75
  %i.cu = sub nsw i64 %i.ct, %i.cc
  %i.cv = icmp ugt i64 %i.ch, %i.cu
  br i1 %i.cv, label %bb.ae, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.cc, i64 noundef %i.ch, i64 noundef 1, i64 noundef 1)
          to label %.noexc199 unwind label %.body.thread124.loopexit

.noexc199:                                        ; preds = %bb.ae
  %.pre.i.i = load i64, ptr %i.bi, align 8
  %.pre156 = load ptr, ptr %i.bh, align 8
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %.noexc199, %bb.ad
  %i.cw = phi ptr [ %i.cb, %bb.ad ], [ %.pre156, %.noexc199 ] ; 3 uses
  %i.cx = phi i64 [ %i.cc, %bb.ad ], [ %.pre.i.i, %.noexc199 ] ; 4 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr i8, ptr %i.cw, i64 %i.cx  ; 2 uses
  %.not140 = icmp eq i64 %i.ch, 1
  br i1 %.not140, label %bb.ag, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.da = add nsw i64 %i.ch, -1                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cz, i8 %i.cs, i64 range(i64 0, -1) %i.da, i1 false), !noalias !2209
  %i.db = add nuw i64 %i.cx, %i.da                ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.cw, i64 %i.db
  br label %bb.ag

bb.af:                                            ; preds = %bb.x
  br i1 %3, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.thread.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  %storemerge.lcssa27.i.i = phi i64 [ %i.db, %._crit_edge.thread.i.i ], [ %i.cx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  store i8 %i.cs, ptr %.sroa.0.0.lcssa28.i.i, align 1, !noalias !2209
  %i.dc = add nuw i64 %storemerge.lcssa27.i.i, 1  ; 3 uses
  store i64 %i.dc, ptr %i.bi, align 8
  %i.dd = icmp ult i64 %i.cd, %.sroa.0.0.i.i.i
  br i1 %i.dd, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.de = add nuw i64 %i.cc, %i.ch
  store i64 %i.de, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4100.0..sroa_idx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.o, ptr %i.df, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4104.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @181, ptr noundef nonnull %i.l)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %.body.thread124.loopexit.split-lp

bb.ai:                                            ; preds = %bb.af
  %i.dg = load i8, ptr %i.ce, align 1, !noundef !75
  invoke fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.d, i64 noundef %i.bg, i8 noundef %i.dg)
          to label %._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge unwind label %.body.thread124.loopexit.split-lp

._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge: ; preds = %bb.ai
  %.pre157 = load i64, ptr %i.bi, align 8
  br label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.0104.0.copyload = load i64, ptr %i.n, align 8 ; 3 uses
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5106.0.copyload = load ptr, ptr %.sroa.5106.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6109.0.copyload = load i64, ptr %.sroa.6109.0..sroa_idx, align 8
  %i.dh = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.al unwind label %bb.aj, !noalias !2210 ; 4 uses

bb.aj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = icmp eq i64 %.sroa.0104.0.copyload, 0
  br i1 %i.dj, label %.body.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5106.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5106.0.copyload, i64 noundef %.sroa.0104.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2211
  br label %.body.thread

bb.al:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit
  store i64 %.sroa.0104.0.copyload, ptr %i.dh, align 8
  %.sroa.5106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %.sroa.5106.0.copyload, ptr %.sroa.5106.0..sroa_idx107, align 8
  %.sroa.6109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %.sroa.6109.0.copyload, ptr %.sroa.6109.0..sroa_idx110, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ab, %bb.al, %bb.az, %bb.ay
  %.sink180 = phi ptr [ %i.cq, %bb.ab ], [ %i.dh, %bb.al ], [ %i.bq, %bb.az ], [ %i.dz, %bb.ay ]
  %.sink179 = phi ptr [ @180, %bb.ab ], [ @182, %bb.al ], [ @481, %bb.az ], [ @187, %bb.ay ]
  store i8 0, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink180, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink179, ptr %.sroa.629.0..sroa_idx, align 8
  %.val.i204 = load i64, ptr %i.d, align 8        ; 2 uses
  %i.dk = icmp eq i64 %.val.i204, 0
  br i1 %i.dk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1.i = load ptr, ptr %i.bh, align 8, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i204, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2212
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit

bb.ao:                                            ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.ci, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4110.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.o, ptr %i.dl, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @186, ptr noundef nonnull %i.i)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit207 unwind label %.body.thread124.loopexit.split-lp

bb.ap:                                            ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  %i.dm = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 6
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = icmp samesign ugt i64 %i.dm, 4
  br i1 %i.do, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @175, ptr %i.h, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ad, ptr %i.g, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4120.0..sroa_idx, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.dq, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.4124.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @185, ptr %i.f, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 40, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @185, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 40, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @184, ptr %i.du, align 8
  invoke fastcc void @_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding(ptr noundef nonnull @183, ptr noundef nonnull %i.g, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.as unwind label %.body.thread124.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vechEB5_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.at unwind label %.body

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  %i.dw = load ptr, ptr %i.p, align 8, !alias.scope !2217, !nonnull !75, !noundef !75
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !2217
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.av

bb.av:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit161, %bb.bc, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit162, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBufferhEECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit207: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.0112.0.copyload = load i64, ptr %i.k, align 8 ; 3 uses
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6117.0.copyload = load i64, ptr %.sroa.6117.0..sroa_idx, align 8
  %i.dz = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.ay unwind label %bb.aw, !noalias !2218 ; 4 uses

bb.aw:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit207
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = icmp eq i64 %.sroa.0112.0.copyload, 0
  br i1 %i.eb, label %.body.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5114.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5114.0.copyload, i64 noundef %.sroa.0112.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2219
  br label %.body.thread

end_hunk_0
begin_hunk_1_@_RINvNtCs1BCiKJoB9mN_4fsst4fsst10decompresslECsjjpCCFGI3ul_14lance_encoding:vector.ph
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1280
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1296
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1312
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1328
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.70.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1344
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.71.0..sroa_idx, align 8
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1360
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.72.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1376
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1392
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1408
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1424
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1440
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1456
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.78.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1472
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1488
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.80.0..sroa_idx, align 8
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1504
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.81.0..sroa_idx, align 8
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1520
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.82.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1536
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.83.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1552
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1568
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1584
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.86.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1600
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.87.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1616
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1632
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1648
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.90.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1664
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.91.0..sroa_idx, align 8
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1680
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.92.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1696
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1712
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.95.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1728
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.95.0..sroa_idx, align 8
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1744
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.96.0..sroa_idx, align 8
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1760
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.97.0..sroa_idx, align 8
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1776
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.98.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1792
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.99.0..sroa_idx, align 8
  %.sroa.100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1808
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.100.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1824
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.101.0..sroa_idx, align 8
  %.sroa.102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1840
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.102.0..sroa_idx, align 8
  %.sroa.103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1856
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.103.0..sroa_idx, align 8
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1872
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.104.0..sroa_idx, align 8
  %.sroa.105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1888
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.105.0..sroa_idx, align 8
  %.sroa.106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1904
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.106.0..sroa_idx, align 8
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1920
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.107.0..sroa_idx, align 8
  %.sroa.108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1936
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.108.0..sroa_idx, align 8
  %.sroa.109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1952
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.109.0..sroa_idx, align 8
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1968
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.110.0..sroa_idx, align 8
  %.sroa.111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1984
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.111.0..sroa_idx, align 8
  %.sroa.112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2000
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.112.0..sroa_idx, align 8
  %.sroa.113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2016
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.113.0..sroa_idx, align 8
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2032
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.114.0..sroa_idx, align 8
  %.sroa.115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2048
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.115.0..sroa_idx, align 8
  %.sroa.116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2064
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.116.0..sroa_idx, align 8
  %.sroa.117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2080
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.117.0..sroa_idx, align 8
  %.sroa.118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2096
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.118.0..sroa_idx, align 8
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2112
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.119.0..sroa_idx, align 8
  %.sroa.120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2128
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.120.0..sroa_idx, align 8
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2144
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.121.0..sroa_idx, align 8
  %.sroa.122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2160
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.122.0..sroa_idx, align 8
  %.sroa.123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.123.0..sroa_idx, align 8
  %.sroa.124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2192
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.124.0..sroa_idx, align 8
  %.sroa.125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2208
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.125.0..sroa_idx, align 8
  %.sroa.126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2224
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.126.0..sroa_idx, align 8
  %.sroa.127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2240
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.127.0..sroa_idx, align 8
  %.sroa.128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2256
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.128.0..sroa_idx, align 8
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2272
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.129.0..sroa_idx, align 8
  %.sroa.130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2288
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.130.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2304 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !75 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !75 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.v = icmp eq i64 %1, 2312
  br i1 %i.v, label %bb.a, label %.split66.i

bb.a:                                             ; preds = %vector.ph
  %.sroa.026.0.copyload.i = load i64, ptr %0, align 1, !alias.scope !3884, !noalias !3883 ; 3 uses
  %i.w = and i64 %.sroa.026.0.copyload.i, 5067485625964298240
  %i.x = icmp eq i64 %i.w, 5067485625964298240
  br i1 %i.x, label %bb.b, label %bb.c

.split66.i:                                       ; preds = %vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3885
  store ptr @2101, ptr %i.m, align 8, !noalias !3885
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !3885
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @2121, ptr noundef nonnull %i.m), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3885
  %i.y = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 20, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !3885
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.z = and i64 %.sroa.026.0.copyload.i, 16777216 ; 2 uses
  %.not73.not.i = icmp eq i64 %i.z, 0
  %.lobit.i = lshr exact i64 %i.z, 24
  %i.aa = trunc nuw nsw i64 %.lobit.i to i8       ; 2 uses
  store i8 %i.aa, ptr %i.q, align 8, !alias.scope !3883, !noalias !3884
  br i1 %.not73.not.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2120, i64 noundef 52), !noalias !3885
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.d:                                             ; preds = %bb.b
  %.not23.i = icmp samesign ugt i64 %3, %i.s
  br i1 %.not23.i, label %bb.g, label %.thread.i

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp samesign ugt i64 %3, 2305843009213693951
  %i.ad = shl i64 %3, 3
  %i.ae = icmp ugt i64 %i.ad, %i.s
  %or.cond.i = or i1 %i.ac, %i.ae
  br i1 %or.cond.i, label %bb.f, label %.thread.i, !prof !80

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2117, i64 noundef 40), !noalias !3885
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.ag = icmp samesign ugt i64 %5, %i.u
  br i1 %i.ag, label %.split62.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ah = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2117, i64 noundef 40), !noalias !3885
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.h:                                             ; preds = %.thread.i
  %i.ai = and i64 %.sroa.026.0.copyload.i, 255    ; 3 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 1 %scevgep, i64 range(i64 0, 2041) %i.aj, i1 false), !alias.scope !3885, !noalias !75
  %i.ak = add nuw nsw i64 %i.aj, 8
  br label %.lr.ph11.preheader.i

.split62.i:                                       ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3885
  store i64 %i.u, ptr %i.k, align 8, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3885
  store i64 %5, ptr %i.j, align 8, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3885
  store ptr %i.k, ptr %i.i, align 8, !noalias !3885
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !3885
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.al, align 8, !noalias !3885
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !3885
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @2119, ptr noundef nonnull %i.i), !noalias !3887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3885
  %i.am = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 20, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !3885
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

.lr.ph11.preheader.i:                             ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.043.010.i = phi i64 [ %i.at, %bb.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.012.19.i = phi i64 [ %i.av, %bb.i ], [ %i.ak, %.lr.ph.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3885
  store i64 %.sroa.043.010.i, ptr %i.h, align 8, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3885
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.012.19.i
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !3884, !noalias !3883, !noundef !75 ; 3 uses
  store i8 %i.ao, ptr %i.g, align 1, !noalias !3885
  %i.ap = add i8 %i.ao, -1
  %spec.select.i.i = icmp ult i8 %i.ap, 8
  br i1 %spec.select.i.i, label %bb.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph11.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3885
  store ptr %i.h, ptr %i.e, align 8, !noalias !3885
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !3885
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.aq, align 8, !noalias !3885
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !3885
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @15, ptr %i.ar, align 8, !noalias !3885
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !3885
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @2118, ptr noundef nonnull %i.e), !noalias !3888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3885
  %i.as = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3885
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.i:                                             ; preds = %.lr.ph11.preheader.i
  %i.at = add nuw nsw i64 %.sroa.043.010.i, 1     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.043.010.i
  store i8 %i.ao, ptr %i.au, align 1, !alias.scope !3883, !noalias !3884
  %i.av = add nuw nsw i64 %.sroa.012.19.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3885
  %exitcond16.not.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond16.not.i, label %.loopexit.loopexit, label %.lr.ph11.preheader.i

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.f, %bb.g, %.split62.i, %.split.i, %.split66.i, %bb.c
  %.sroa.0.0.i.ph = phi ptr [ %i.ab, %bb.c ], [ %i.y, %.split66.i ], [ %i.as, %.split.i ], [ %i.am, %.split62.i ], [ %i.ah, %bb.g ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre = load i8, ptr %i.q, align 8, !range !89, !alias.scope !3889, !noalias !3890
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h
  %i.aw = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ay = tail call fastcc noundef ptr @_RINvNtCs1BCiKJoB9mN_4fsst4fsst16validate_offsetslECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !3895 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i8, label %bb.bo, label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.k:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  %i.az = tail call fastcc noundef ptr @_RINvNtCs1BCiKJoB9mN_4fsst4fsst16validate_offsetslECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !3901 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.l, label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(2048) %i.p, i64 2048, i1 false), !noalias !3903
  %i.ba = icmp eq i64 %5, 0
  br i1 %i.ba, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.m

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.l
  %i.bb = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.bb)
  store i64 0, ptr %i.r, align 8, !alias.scope !3904, !noalias !3905
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18

bb.m:                                             ; preds = %bb.l
  %.not19.i.i = icmp eq i64 %i.u, 0
  br i1 %.not19.i.i, label %bb.n, label %.split.i.i

.split.i.i:                                       ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3906, !noalias !3907, !nonnull !75, !noundef !75 ; 2 uses
  store i32 0, ptr %i.bd, align 4, !noalias !3902
  %.not195.i.i = icmp eq i64 %5, 1
  br i1 %.not195.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i.i

._crit_edge.i.thread.i:                           ; preds = %.split.i.i
  %i.be = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.be)
  br label %bb.r

.lr.ph.i.i:                                       ; preds = %.split.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !3893, !noalias !3908, !nonnull !75 ; 17 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #66, !noalias !3902
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3909)
  %i.bh = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i64 %.sroa.045.6.i.i, %i.s
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bj = sub nuw nsw i64 %.sroa.045.6.i.i, %i.s  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3910)
  %i.bk = load i64, ptr %6, align 8, !range !76, !alias.scope !3911, !noalias !3905, !noundef !75
  %i.bl = sub nsw i64 %i.bk, %i.s
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i, !prof !81

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.s, i64 noundef %i.bj, i64 noundef 1, i64 noundef 1), !noalias !3905
  %.pre.i.i28.i.i = load i64, ptr %i.r, align 8, !alias.scope !3912, !noalias !3905
  %.pre148.i = load ptr, ptr %i.bf, align 8, !alias.scope !3912, !noalias !3905
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i: ; preds = %bb.p, %bb.o
  %i.bn = phi ptr [ %i.bg, %bb.o ], [ %.pre148.i, %bb.p ] ; 2 uses
  %i.bo = phi i64 [ %i.s, %bb.o ], [ %.pre.i.i28.i.i, %bb.p ] ; 4 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.bo  ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bj, 1
  br i1 %i.br, label %._crit_edge.thread.i.i26.i.i, label %._crit_edge.i.i23.i.i

._crit_edge.thread.i.i26.i.i:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i
  %i.bs = add nsw i64 %i.bj, -1                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 range(i64 0, -1) %i.bs, i1 false), !noalias !3913
  %i.bt = add nuw i64 %i.bo, %i.bs                ; 2 uses
  %scevgep.i.i27.i.i = getelementptr i8, ptr %i.bn, i64 %i.bt
  br label %._crit_edge.i.i23.i.i

._crit_edge.i.i23.i.i:                            ; preds = %._crit_edge.thread.i.i26.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i
  %.sroa.0.0.lcssa28.i.i24.i.i = phi ptr [ %scevgep.i.i27.i.i, %._crit_edge.thread.i.i26.i.i ], [ %i.bq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i ]
  %storemerge.lcssa27.i.i25.i.i = phi i64 [ %i.bt, %._crit_edge.thread.i.i26.i.i ], [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i22.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i24.i.i, align 1, !noalias !3913
  %i.bu = add nuw i64 %storemerge.lcssa27.i.i25.i.i, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.bm, %.lr.ph.i.i
  %.sroa.014.0194.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %i.bv, %bb.bm ] ; 4 uses
  %.sroa.045.0193.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.sroa.045.6.i.i, %bb.bm ] ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.014.0194.i.i, 1  ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %4, i64 %.sroa.014.0194.i.i ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !3914, !noalias !3901, !noundef !75
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %i.ca = load i32, ptr %i.bw, align 4, !alias.scope !3914, !noalias !3901, !noundef !75
  %i.cb = sext i32 %i.ca to i64                   ; 6 uses
  %i.cc = add nsw i64 %i.bz, 4                    ; 2 uses
  %.not212.i.i.i = icmp ugt i64 %i.cc, %i.cb
  br i1 %.not212.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i23.i.i, %._crit_edge.i.i, %._crit_edge.i.thread.i
  %storemerge.i21.i.i = phi i64 [ %.sroa.045.6.i.i, %._crit_edge.i.i ], [ %i.bu, %._crit_edge.i.i23.i.i ], [ 0, %._crit_edge.i.thread.i ]
  store i64 %storemerge.i21.i.i, ptr %i.r, align 8, !alias.scope !3915, !noalias !3905
  %i.cd = icmp ult i64 %i.u, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cd)
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18

.preheader.i.i.i:                                 ; preds = %bb.ak, %bb.q
  %.sroa.045.2.i.i = phi i64 [ %.sroa.045.0193.i.i, %bb.q ], [ %.sroa.045.1.i.i, %bb.ak ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %i.bz, %bb.q ], [ %.sroa.0.3.i.i.i, %bb.ak ] ; 2 uses
  %i.ce = icmp ult i64 %.sroa.0.0.lcssa.i.i.i, %i.cb
  br i1 %i.ce, label %.lr.ph216.i.i.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.ak
  %i.cf = phi i64 [ %i.fg, %bb.ak ], [ %i.cc, %bb.q ] ; 6 uses
  %.sroa.0.0213.i.i.i = phi i64 [ %.sroa.0.3.i.i.i, %bb.ak ], [ %i.bz, %bb.q ] ; 21 uses
  %i.cg = phi i64 [ %.sroa.045.1.i.i, %bb.ak ], [ %.sroa.045.0193.i.i, %bb.q ] ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0213.i.i.i
  %.sroa.086.0.copyload.i.i.i = load i32, ptr %i.ch, align 1, !alias.scope !3916, !noalias !3917 ; 9 uses
  %i.ci = and i32 %.sroa.086.0.copyload.i.i.i, -2139062144
  %i.cj = and i32 %.sroa.086.0.copyload.i.i.i, 2139062143
  %i.ck = sub nuw i32 -16843010, %i.cj
  %i.cl = xor i32 %i.ck, -2139062144
  %i.cm = and i32 %i.ci, %i.cl                    ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = lshr i32 %.sroa.086.0.copyload.i.i.i, 8 ; 4 uses
  %i.cp = trunc i32 %i.co to i8
  %i.cq = lshr i32 %.sroa.086.0.copyload.i.i.i, 16 ; 3 uses
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = lshr i32 %.sroa.086.0.copyload.i.i.i, 24 ; 2 uses
  %i.ct = trunc nuw i32 %i.cs to i8
  br i1 %i.cn, label %bb.aa, label %bb.ab

.lr.ph216.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.y
  %.sroa.0.1215.i.i.i = phi i64 [ %.sroa.0.2.i.i.i, %bb.y ], [ %.sroa.0.0.lcssa.i.i.i, %.preheader.i.i.i ] ; 6 uses
  %i.cu = phi i64 [ %.sroa.045.4.i.i, %bb.y ], [ %.sroa.045.2.i.i, %.preheader.i.i.i ] ; 4 uses
  %i.cv = icmp ult i64 %.sroa.0.1215.i.i.i, %3
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph216.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.1215.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !3916, !noalias !3917, !noundef !75 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, -1
  br i1 %i.cy, label %bb.u, label %bb.z

bb.t:                                             ; preds = %.lr.ph216.i.i.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1215.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #66, !noalias !3918
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = add nuw nsw i64 %.sroa.0.1215.i.i.i, 1  ; 4 uses
  %.not137.i.i.i = icmp ult i64 %i.cz, %i.cb
  br i1 %.not137.i.i.i, label %bb.v, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.da = icmp ult i64 %i.cz, %3
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !3916, !noalias !3917, !noundef !75
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cu
  store i8 %i.dc, ptr %i.dd, align 1, !noalias !3918
  %i.de = add i64 %i.cu, 1
  %i.df = add nuw i64 %.sroa.0.1215.i.i.i, 2
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cz, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #66, !noalias !3918
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.045.4.i.i = phi i64 [ %i.de, %bb.w ], [ %i.dp, %bb.z ] ; 2 uses
  %.sroa.0.2.i.i.i = phi i64 [ %i.df, %bb.w ], [ %i.dl, %bb.z ] ; 2 uses
  %i.dg = icmp ult i64 %.sroa.0.2.i.i.i, %i.cb
  br i1 %i.dg, label %.lr.ph216.i.i.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.z:                                             ; preds = %bb.s
  %i.dh = zext i8 %i.cx to i64                    ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !noalias !3918, !noundef !75
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cu
  store i64 %i.dj, ptr %i.dk, align 1, !noalias !3918
  %i.dl = add nuw nsw i64 %.sroa.0.1215.i.i.i, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.dh
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.do = zext i8 %i.dn to i64
  %i.dp = add i64 %i.cu, %i.do
  br label %bb.y

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.dq = icmp ult i64 %.sroa.0.0213.i.i.i, %3
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.dr = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.cm, i1 true)
  %i.ds = lshr i32 %i.dr, 3
  switch i32 %i.ds, label %default.unreachable [
    i32 3, label %bb.al
    i32 2, label %bb.av
    i32 1, label %bb.bc
    i32 0, label %bb.bd
  ]

bb.ac:                                            ; preds = %bb.aa
  %i.dt = and i32 %.sroa.086.0.copyload.i.i.i, 255
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.du
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !3918, !noundef !75
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  store i64 %i.dy, ptr %i.dz, align 1, !noalias !3918
  %i.ea = add nuw nsw i64 %.sroa.0.0213.i.i.i, 1  ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %3
  br i1 %i.eb, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0213.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #66, !noalias !3918
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ec = zext i8 %i.dw to i64
  %i.ed = add i64 %i.cg, %i.ec                    ; 2 uses
  %.mask318.i.i = and i32 %i.co, 255
  %i.ee = zext nneg i32 %.mask318.i.i to i64      ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ee
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !3918, !noundef !75
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ed
  store i64 %i.ei, ptr %i.ej, align 1, !noalias !3918
  %i.ek = add nuw i64 %.sroa.0.0213.i.i.i, 2      ; 2 uses
  %i.el = icmp ult i64 %i.ek, %3
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ac
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #66, !noalias !3918
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.em = zext i8 %i.eg to i64
  %i.en = add i64 %i.ed, %i.em                    ; 2 uses
  %.mask319.i.i = and i32 %i.cq, 255
  %i.eo = zext nneg i32 %.mask319.i.i to i64      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.eo
  %i.es = load i64, ptr %i.er, align 8, !noalias !3918, !noundef !75
  %i.et = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.en
  store i64 %i.es, ptr %i.et, align 1, !noalias !3918
  %i.eu = add nuw i64 %.sroa.0.0213.i.i.i, 3      ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %3
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @502) #66, !noalias !3918
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ew = zext i8 %i.eq to i64
  %i.ex = add i64 %i.en, %i.ew                    ; 2 uses
  %i.ey = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ey
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !3918, !noundef !75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ex
  store i64 %i.fd, ptr %i.fe, align 1, !noalias !3918
  %i.ff = add i64 %i.ex, %i.fb
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @503) #66, !noalias !3918
end_hunk_1
begin_hunk_2_@_RINvNtCs1BCiKJoB9mN_4fsst4fsst10decompresslECsjjpCCFGI3ul_14lance_encoding:vector.ph
bb.as:                                            ; preds = %bb.aq
  %i.gk = icmp ult i64 %i.cf, %3
  br i1 %i.gk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 %i.cf
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !3916, !noalias !3917, !noundef !75
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.gj
  store i8 %i.gm, ptr %i.gn, align 1, !noalias !3918
  %i.go = add i64 %i.gj, 1
  %i.gp = add nuw i64 %.sroa.0.0213.i.i.i, 5
  br label %bb.ak

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #66, !noalias !3918
  unreachable

bb.av:                                            ; preds = %bb.ab
  %i.gq = icmp ult i64 %.sroa.0.0213.i.i.i, %3
  br i1 %i.gq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.mask297.i.i.i = and i32 %.sroa.086.0.copyload.i.i.i, 255
  %i.gr = zext nneg i32 %.mask297.i.i.i to i64    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gr
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !3918, !noundef !75
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  store i64 %i.gv, ptr %i.gw, align 1, !noalias !3918
  %i.gx = add nuw nsw i64 %.sroa.0.0213.i.i.i, 1  ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %3
  br i1 %i.gy, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0213.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @507) #66, !noalias !3918
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gz = zext i8 %i.gt to i64
  %i.ha = add i64 %i.cg, %i.gz                    ; 2 uses
  %.mask.i.i = and i32 %i.co, 255
  %i.hb = zext nneg i32 %.mask.i.i to i64         ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hb
  %i.hf = load i64, ptr %i.he, align 8, !noalias !3918, !noundef !75
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ha
  store i64 %i.hf, ptr %i.hg, align 1, !noalias !3918
  %i.hh = add nuw i64 %.sroa.0.0213.i.i.i, 3      ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %3
  br i1 %i.hi, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gx, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @508) #66, !noalias !3918
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hj = zext i8 %i.hd to i64
  %i.hk = add i64 %i.ha, %i.hj                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.hk
  store i8 %i.ct, ptr %i.hl, align 1, !noalias !3918
  %i.hm = add i64 %i.hk, 1
  br label %bb.ak

bb.bb:                                            ; preds = %bb.ay
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hh, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #66, !noalias !3918
  unreachable

bb.bc:                                            ; preds = %bb.ab
  %i.hn = icmp ult i64 %.sroa.0.0213.i.i.i, %3
  br i1 %i.hn, label %bb.be, label %bb.bf

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.bd:                                            ; preds = %bb.ab
  %i.ho = add i64 %.sroa.0.0213.i.i.i, 1          ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %3
  br i1 %i.hp, label %bb.bi, label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %.mask.i.i.i = and i32 %.sroa.086.0.copyload.i.i.i, 255
  %i.hq = zext nneg i32 %.mask.i.i.i to i64       ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !3919, !noalias !3920, !noundef !75
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hq
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !3918, !noundef !75
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  store i64 %i.hu, ptr %i.hv, align 1, !noalias !3918
  %i.hw = add nuw i64 %.sroa.0.0213.i.i.i, 2      ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %3
  br i1 %i.hx, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bc
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0213.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @510) #66, !noalias !3918
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hy = zext i8 %i.hs to i64
  %i.hz = add i64 %i.cg, %i.hy                    ; 2 uses
  %i.ia = add nuw i64 %.sroa.0.0213.i.i.i, 3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.hz
  store i8 %i.cr, ptr %i.ib, align 1, !noalias !3918
  %i.ic = add i64 %i.hz, 1
  br label %bb.ak

bb.bh:                                            ; preds = %bb.be
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hw, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @511) #66, !noalias !3918
  unreachable

bb.bi:                                            ; preds = %bb.bd
  %i.id = add i64 %.sroa.0.0213.i.i.i, 2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  store i8 %i.cp, ptr %i.ie, align 1, !noalias !3918
  %i.if = add i64 %i.cg, 1
  br label %bb.ak

bb.bj:                                            ; preds = %bb.bd
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @512) #66, !noalias !3918
  unreachable

_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.y, %.preheader.i.i.i
  %.sroa.045.6.i.i = phi i64 [ %.sroa.045.2.i.i, %.preheader.i.i.i ], [ %.sroa.045.4.i.i, %bb.y ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3902
  store i64 %.sroa.045.6.i.i, ptr %i.c, align 8, !noalias !3921
  %i.ig = icmp ult i64 %.sroa.045.6.i.i, 2147483648
  br i1 %i.ig, label %bb.bl, label %bb.bk

_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i: ; preds = %bb.aq, %bb.u
  %i.ih = tail call noundef nonnull ptr @_RNvNtCs1BCiKJoB9mN_4fsst4fsst28missing_escape_payload_error(), !noalias !3902
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit

bb.bk:                                            ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3922
  store ptr %i.c, ptr %i.a, align 8, !noalias !3922
  %.sroa.42.0..sroa_idx.i.i37.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i37.i.i, align 8, !noalias !3922
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @497, ptr noundef nonnull %i.a), !noalias !3923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3922
  %i.ii = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3902
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit

bb.bl:                                            ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3902
  %exitcond.not.i.i = icmp eq i64 %.sroa.014.0194.i.i, %i.u
  br i1 %exitcond.not.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = trunc nuw nsw i64 %.sroa.045.6.i.i to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.014.0194.i.i
  store i32 %i.ij, ptr %i.ik, align 4, !noalias !3902
  %exitcond276.not.i.i = icmp eq i64 %i.bv, %5
  br i1 %exitcond276.not.i.i, label %._crit_edge.i.i, label %bb.q

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #66, !noalias !3902
  unreachable

bb.bo:                                            ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3924)
  %i.il = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.il)
  %i.im = icmp samesign ugt i64 %3, %i.s
  br i1 %i.im, label %bb.bp, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.bo
  store i64 %3, ptr %i.r, align 8, !alias.scope !3925, !noalias !3908
  %.in.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i = load ptr, ptr %.in.phi.trans.insert.i, align 8, !alias.scope !3893, !noalias !3908
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14

bb.bp:                                            ; preds = %bb.bo
  %i.in = sub nuw nsw i64 %3, %i.s                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  %i.io = load i64, ptr %6, align 8, !range !76, !alias.scope !3927, !noalias !3908, !noundef !75
  %i.ip = sub nsw i64 %i.io, %i.s
  %i.iq = icmp ugt i64 %i.in, %i.ip
  br i1 %i.iq, label %bb.bq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

bb.bq:                                            ; preds = %bb.bp
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.s, i64 noundef %i.in, i64 noundef 1, i64 noundef 1), !noalias !3908
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !3928, !noalias !3908
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  %i.ir = phi i64 [ %i.s, %bb.bp ], [ %.pre.i.i.i, %bb.bq ] ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !3928, !noalias !3908, !nonnull !75, !noundef !75 ; 3 uses
  %i.iu = icmp sgt i64 %i.ir, -1
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = getelementptr i8, ptr %i.it, i64 %i.ir  ; 2 uses
  %i.iw = icmp samesign ugt i64 %i.in, 1
  br i1 %i.iw, label %._crit_edge.thread.i.i.i, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.ix = add nsw i64 %i.in, -1                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.iv, i8 0, i64 range(i64 0, -1) %i.ix, i1 false), !noalias !3929
  %i.iy = add nuw i64 %i.ir, %i.ix                ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.it, i64 %i.iy
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.0.0.lcssa28.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.iv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %storemerge.lcssa27.i.i.i = phi i64 [ %i.iy, %._crit_edge.thread.i.i.i ], [ %i.ir, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i, align 1, !noalias !3929
  %i.iz = add nuw i64 %storemerge.lcssa27.i.i.i, 1 ; 3 uses
  store i64 %i.iz, ptr %i.r, align 8, !alias.scope !3925, !noalias !3908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %.not.i10.i = icmp eq i64 %i.iz, %3
  br i1 %.not.i10.i, label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14, label %bb.br, !prof !113

bb.br:                                            ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i
  tail call void @_RNvNvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.iz, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2116) #66, !noalias !3932
  unreachable

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14: ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.ja = phi ptr [ %i.it, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.pre.i, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !alias.scope !3933, !noalias !3934
  %i.jb = icmp ult i64 %i.u, 2305843009213693952
  tail call void @llvm.assume(i1 %i.jb)
  store i64 %5, ptr %i.t, align 8, !alias.scope !3935, !noalias !3936
  %.in27.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre147.i = load ptr, ptr %.in27.phi.trans.insert.i, align 8, !alias.scope !3894, !noalias !3936
  %i.jc = shl nuw nsw i64 %5, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre147.i, ptr nonnull readonly align 4 %4, i64 %i.jc, i1 false), !alias.scope !3937, !noalias !3938
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18: ; preds = %bb.r, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  store i64 %5, ptr %i.t, align 8, !alias.scope !3906, !noalias !3907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3902
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i, %bb.bk
  %.sroa.0.1.ph.i.i = phi ptr [ %i.ih, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i ], [ %i.ii, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3902
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit, %bb.j, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ay, %bb.j ], [ %.sroa.0.0.i.ph, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %.sroa.0.1.ph.i.i, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.az, %bb.k ], [ null, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18 ], [ null, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderlE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCs1BCiKJoB9mN_4fsst4fsst10decompressxECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly align 8 captures(address) %4, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %6, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [2048 x i8], align 8              ; 15 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [2312 x i8], align 8              ; 144 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.o, i8 0, i64 256, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256 ; 3 uses
  store <2 x i64> splat (i64 32774747032022883), ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 496
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 528
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 544
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 560
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 592
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 608
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 624
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 656
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 672
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 704
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 720
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 736
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 752
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 768
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 784
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 800
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 816
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.38.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 848
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.40.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 864
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 880
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 912
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 928
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 944
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 960
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 976
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 992
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1008
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1024
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1040
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1056
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1072
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1088
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1104
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1120
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1136
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1152
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1168
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.60.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1184
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.61.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1200
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1216
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1232
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1248
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1264
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1280
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1296
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1312
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1328
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.70.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1344
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.71.0..sroa_idx, align 8
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1360
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.72.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1376
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1392
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1408
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1424
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1440
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1456
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.78.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1472
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1488
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.80.0..sroa_idx, align 8
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1504
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.81.0..sroa_idx, align 8
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1520
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.82.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1536
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.83.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1552
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1568
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1584
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.86.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1600
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.87.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1616
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1632
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1648
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.90.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1664
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.91.0..sroa_idx, align 8
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1680
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.92.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1696
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1712
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.95.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1728
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.95.0..sroa_idx, align 8
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1744
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.96.0..sroa_idx, align 8
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1760
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.97.0..sroa_idx, align 8
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1776
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.98.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1792
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.99.0..sroa_idx, align 8
  %.sroa.100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1808
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.100.0..sroa_idx, align 8
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1824
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.101.0..sroa_idx, align 8
  %.sroa.102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1840
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.102.0..sroa_idx, align 8
  %.sroa.103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1856
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.103.0..sroa_idx, align 8
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1872
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.104.0..sroa_idx, align 8
  %.sroa.105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1888
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.105.0..sroa_idx, align 8
  %.sroa.106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1904
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.106.0..sroa_idx, align 8
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1920
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.107.0..sroa_idx, align 8
  %.sroa.108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1936
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.108.0..sroa_idx, align 8
  %.sroa.109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1952
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.109.0..sroa_idx, align 8
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1968
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.110.0..sroa_idx, align 8
  %.sroa.111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1984
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.111.0..sroa_idx, align 8
  %.sroa.112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2000
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.112.0..sroa_idx, align 8
  %.sroa.113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2016
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.113.0..sroa_idx, align 8
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2032
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.114.0..sroa_idx, align 8
  %.sroa.115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2048
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.115.0..sroa_idx, align 8
  %.sroa.116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2064
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.116.0..sroa_idx, align 8
  %.sroa.117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2080
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.117.0..sroa_idx, align 8
  %.sroa.118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2096
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.118.0..sroa_idx, align 8
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2112
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.119.0..sroa_idx, align 8
  %.sroa.120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2128
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.120.0..sroa_idx, align 8
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2144
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.121.0..sroa_idx, align 8
  %.sroa.122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2160
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.122.0..sroa_idx, align 8
  %.sroa.123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.123.0..sroa_idx, align 8
  %.sroa.124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2192
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.124.0..sroa_idx, align 8
  %.sroa.125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2208
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.125.0..sroa_idx, align 8
  %.sroa.126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2224
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.126.0..sroa_idx, align 8
  %.sroa.127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2240
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.127.0..sroa_idx, align 8
  %.sroa.128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2256
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.128.0..sroa_idx, align 8
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2272
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.129.0..sroa_idx, align 8
  %.sroa.130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2288
  store <2 x i64> splat (i64 32774747032022883), ptr %.sroa.130.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2304 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !75 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !75 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.v = icmp eq i64 %1, 2312
  br i1 %i.v, label %bb.a, label %.split66.i

bb.a:                                             ; preds = %vector.ph
  %.sroa.026.0.copyload.i = load i64, ptr %0, align 1, !alias.scope !3994, !noalias !3993 ; 3 uses
  %i.w = and i64 %.sroa.026.0.copyload.i, 5067485625964298240
  %i.x = icmp eq i64 %i.w, 5067485625964298240
  br i1 %i.x, label %bb.b, label %bb.c

.split66.i:                                       ; preds = %vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3995
  store ptr @2101, ptr %i.m, align 8, !noalias !3995
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !3995
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @2121, ptr noundef nonnull %i.m), !noalias !3996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3995
  %i.y = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 20, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !3995
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.z = and i64 %.sroa.026.0.copyload.i, 16777216 ; 2 uses
  %.not73.not.i = icmp eq i64 %i.z, 0
  %.lobit.i = lshr exact i64 %i.z, 24
  %i.aa = trunc nuw nsw i64 %.lobit.i to i8       ; 2 uses
  store i8 %i.aa, ptr %i.q, align 8, !alias.scope !3993, !noalias !3994
  br i1 %.not73.not.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2120, i64 noundef 52), !noalias !3995
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.d:                                             ; preds = %bb.b
  %.not23.i = icmp samesign ugt i64 %3, %i.s
  br i1 %.not23.i, label %bb.g, label %.thread.i

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp samesign ugt i64 %3, 2305843009213693951
  %i.ad = shl i64 %3, 3
  %i.ae = icmp ugt i64 %i.ad, %i.s
  %or.cond.i = or i1 %i.ac, %i.ae
  br i1 %or.cond.i, label %bb.f, label %.thread.i, !prof !80

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2117, i64 noundef 40), !noalias !3995
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.ag = icmp samesign ugt i64 %5, %i.u
  br i1 %i.ag, label %.split62.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ah = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 20, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2117, i64 noundef 40), !noalias !3995
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.h:                                             ; preds = %.thread.i
  %i.ai = and i64 %.sroa.026.0.copyload.i, 255    ; 3 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 1 %scevgep, i64 range(i64 0, 2041) %i.aj, i1 false), !alias.scope !3995, !noalias !75
  %i.ak = add nuw nsw i64 %i.aj, 8
  br label %.lr.ph11.preheader.i

.split62.i:                                       ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3995
  store i64 %i.u, ptr %i.k, align 8, !noalias !3995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3995
  store i64 %5, ptr %i.j, align 8, !noalias !3995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3995
  store ptr %i.k, ptr %i.i, align 8, !noalias !3995
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !3995
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.al, align 8, !noalias !3995
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !3995
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @2119, ptr noundef nonnull %i.i), !noalias !3997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3995
  %i.am = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 20, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !3995
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

.lr.ph11.preheader.i:                             ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.043.010.i = phi i64 [ %i.at, %bb.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.012.19.i = phi i64 [ %i.av, %bb.i ], [ %i.ak, %.lr.ph.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3995
  store i64 %.sroa.043.010.i, ptr %i.h, align 8, !noalias !3995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3995
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.012.19.i
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !3994, !noalias !3993, !noundef !75 ; 3 uses
  store i8 %i.ao, ptr %i.g, align 1, !noalias !3995
  %i.ap = add i8 %i.ao, -1
  %spec.select.i.i = icmp ult i8 %i.ap, 8
  br i1 %spec.select.i.i, label %bb.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph11.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3995
  store ptr %i.h, ptr %i.e, align 8, !noalias !3995
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !3995
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.aq, align 8, !noalias !3995
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !3995
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @15, ptr %i.ar, align 8, !noalias !3995
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !3995
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @2118, ptr noundef nonnull %i.e), !noalias !3998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3995
  %i.as = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3995
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.i:                                             ; preds = %.lr.ph11.preheader.i
  %i.at = add nuw nsw i64 %.sroa.043.010.i, 1     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.043.010.i
  store i8 %i.ao, ptr %i.au, align 1, !alias.scope !3993, !noalias !3994
  %i.av = add nuw nsw i64 %.sroa.012.19.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3995
  %exitcond16.not.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond16.not.i, label %.loopexit.loopexit, label %.lr.ph11.preheader.i

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.f, %bb.g, %.split62.i, %.split.i, %.split66.i, %bb.c
  %.sroa.0.0.i.ph = phi ptr [ %i.ab, %bb.c ], [ %i.y, %.split66.i ], [ %i.as, %.split.i ], [ %i.am, %.split62.i ], [ %i.ah, %bb.g ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

.loopexit.loopexit:                               ; preds = %bb.i
  %.pre = load i8, ptr %i.q, align 8, !range !89, !alias.scope !3999, !noalias !4000
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h
  %i.aw = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ay = tail call fastcc noundef ptr @_RINvNtCs1BCiKJoB9mN_4fsst4fsst16validate_offsetsxECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 1152921504606846976) %5, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !4005 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i8, label %bb.bn, label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.k:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4010)
  %i.az = tail call fastcc noundef ptr @_RINvNtCs1BCiKJoB9mN_4fsst4fsst16validate_offsetsxECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 1152921504606846976) %5, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !4011 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.l, label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(2048) %i.p, i64 2048, i1 false), !noalias !4013
  %i.ba = icmp eq i64 %5, 0
  br i1 %i.ba, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.m

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.l
  %i.bb = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.bb)
  store i64 0, ptr %i.r, align 8, !alias.scope !4014, !noalias !4015
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18

bb.m:                                             ; preds = %bb.l
  %.not26.i.i = icmp eq i64 %i.u, 0
  br i1 %.not26.i.i, label %bb.n, label %.split.i.i

.split.i.i:                                       ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !4016, !noalias !4017, !nonnull !75, !noundef !75 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !noalias !4012
  %.not192.i.i = icmp eq i64 %5, 1
  br i1 %.not192.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i.i

._crit_edge.i.thread.i:                           ; preds = %.split.i.i
  %i.be = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.be)
  br label %bb.r

.lr.ph.i.i:                                       ; preds = %.split.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !4003, !noalias !4018, !nonnull !75 ; 17 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #66, !noalias !4012
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  %i.bh = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i64 %.sroa.053.6.i.i, %i.s
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bj = sub nuw nsw i64 %.sroa.053.6.i.i, %i.s  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  %i.bk = load i64, ptr %6, align 8, !range !76, !alias.scope !4021, !noalias !4015, !noundef !75
  %i.bl = sub nsw i64 %i.bk, %i.s
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i, !prof !81

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.s, i64 noundef %i.bj, i64 noundef 1, i64 noundef 1), !noalias !4015
  %.pre.i.i34.i.i = load i64, ptr %i.r, align 8, !alias.scope !4022, !noalias !4015
  %.pre148.i = load ptr, ptr %i.bf, align 8, !alias.scope !4022, !noalias !4015
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i: ; preds = %bb.p, %bb.o
  %i.bn = phi ptr [ %i.bg, %bb.o ], [ %.pre148.i, %bb.p ] ; 2 uses
  %i.bo = phi i64 [ %i.s, %bb.o ], [ %.pre.i.i34.i.i, %bb.p ] ; 4 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.bo  ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bj, 1
  br i1 %i.br, label %._crit_edge.thread.i.i32.i.i, label %._crit_edge.i.i29.i.i

._crit_edge.thread.i.i32.i.i:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i
  %i.bs = add nsw i64 %i.bj, -1                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 range(i64 0, -1) %i.bs, i1 false), !noalias !4023
  %i.bt = add nuw i64 %i.bo, %i.bs                ; 2 uses
  %scevgep.i.i33.i.i = getelementptr i8, ptr %i.bn, i64 %i.bt
  br label %._crit_edge.i.i29.i.i

._crit_edge.i.i29.i.i:                            ; preds = %._crit_edge.thread.i.i32.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i
  %.sroa.0.0.lcssa28.i.i30.i.i = phi ptr [ %scevgep.i.i33.i.i, %._crit_edge.thread.i.i32.i.i ], [ %i.bq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i ]
  %storemerge.lcssa27.i.i31.i.i = phi i64 [ %i.bt, %._crit_edge.thread.i.i32.i.i ], [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i28.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i30.i.i, align 1, !noalias !4023
  %i.bu = add nuw i64 %storemerge.lcssa27.i.i31.i.i, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.bl, %.lr.ph.i.i
  %.sroa.021.0191.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %i.bv, %bb.bl ] ; 4 uses
  %.sroa.053.0190.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.sroa.053.6.i.i, %bb.bl ] ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.021.0191.i.i, 1  ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %4, i64 %.sroa.021.0191.i.i ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !4024, !noalias !4011, !noundef !75 ; 3 uses
  %i.bz = load i64, ptr %i.bw, align 8, !alias.scope !4024, !noalias !4011, !noundef !75 ; 6 uses
  %i.ca = add i64 %i.by, 4                        ; 2 uses
  %.not212.i.i.i = icmp ugt i64 %i.ca, %i.bz
  br i1 %.not212.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i29.i.i, %._crit_edge.i.i, %._crit_edge.i.thread.i
  %storemerge.i27.i.i = phi i64 [ %.sroa.053.6.i.i, %._crit_edge.i.i ], [ %i.bu, %._crit_edge.i.i29.i.i ], [ 0, %._crit_edge.i.thread.i ]
  store i64 %storemerge.i27.i.i, ptr %i.r, align 8, !alias.scope !4025, !noalias !4015
  %i.cb = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cb)
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18

.preheader.i.i.i:                                 ; preds = %bb.ak, %bb.q
  %.sroa.053.2.i.i = phi i64 [ %.sroa.053.0190.i.i, %bb.q ], [ %.sroa.053.1.i.i, %bb.ak ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %i.by, %bb.q ], [ %.sroa.0.3.i.i.i, %bb.ak ] ; 2 uses
  %i.cc = icmp ult i64 %.sroa.0.0.lcssa.i.i.i, %i.bz
  br i1 %i.cc, label %.lr.ph216.i.i.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.ak
  %i.cd = phi i64 [ %i.fe, %bb.ak ], [ %i.ca, %bb.q ] ; 6 uses
  %.sroa.0.0213.i.i.i = phi i64 [ %.sroa.0.3.i.i.i, %bb.ak ], [ %i.by, %bb.q ] ; 21 uses
  %i.ce = phi i64 [ %.sroa.053.1.i.i, %bb.ak ], [ %.sroa.053.0190.i.i, %bb.q ] ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0213.i.i.i
  %.sroa.086.0.copyload.i.i.i = load i32, ptr %i.cf, align 1, !alias.scope !4026, !noalias !4027 ; 9 uses
  %i.cg = and i32 %.sroa.086.0.copyload.i.i.i, -2139062144
  %i.ch = and i32 %.sroa.086.0.copyload.i.i.i, 2139062143
  %i.ci = sub nuw i32 -16843010, %i.ch
  %i.cj = xor i32 %i.ci, -2139062144
  %i.ck = and i32 %i.cg, %i.cj                    ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = lshr i32 %.sroa.086.0.copyload.i.i.i, 8 ; 4 uses
  %i.cn = trunc i32 %i.cm to i8
  %i.co = lshr i32 %.sroa.086.0.copyload.i.i.i, 16 ; 3 uses
  %i.cp = trunc i32 %i.co to i8
  %i.cq = lshr i32 %.sroa.086.0.copyload.i.i.i, 24 ; 2 uses
  %i.cr = trunc nuw i32 %i.cq to i8
  br i1 %i.cl, label %bb.aa, label %bb.ab

.lr.ph216.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.y
  %.sroa.0.1215.i.i.i = phi i64 [ %.sroa.0.2.i.i.i, %bb.y ], [ %.sroa.0.0.lcssa.i.i.i, %.preheader.i.i.i ] ; 6 uses
  %i.cs = phi i64 [ %.sroa.053.4.i.i, %bb.y ], [ %.sroa.053.2.i.i, %.preheader.i.i.i ] ; 4 uses
  %i.ct = icmp ult i64 %.sroa.0.1215.i.i.i, %3
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph216.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.1215.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !4026, !noalias !4027, !noundef !75 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, -1
  br i1 %i.cw, label %bb.u, label %bb.z

bb.t:                                             ; preds = %.lr.ph216.i.i.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1215.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @498) #66, !noalias !4028
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cx = add nuw nsw i64 %.sroa.0.1215.i.i.i, 1  ; 4 uses
  %.not137.i.i.i = icmp ult i64 %i.cx, %i.bz
  br i1 %.not137.i.i.i, label %bb.v, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.cy = icmp ult i64 %i.cx, %3
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !4026, !noalias !4027, !noundef !75
  %i.db = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cs
  store i8 %i.da, ptr %i.db, align 1, !noalias !4028
  %i.dc = add i64 %i.cs, 1
  %i.dd = add nuw i64 %.sroa.0.1215.i.i.i, 2
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #66, !noalias !4028
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.053.4.i.i = phi i64 [ %i.dc, %bb.w ], [ %i.dn, %bb.z ] ; 2 uses
  %.sroa.0.2.i.i.i = phi i64 [ %i.dd, %bb.w ], [ %i.dj, %bb.z ] ; 2 uses
  %i.de = icmp ult i64 %.sroa.0.2.i.i.i, %i.bz
  br i1 %i.de, label %.lr.ph216.i.i.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.z:                                             ; preds = %bb.s
  %i.df = zext i8 %i.cv to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !4028, !noundef !75
  %i.di = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cs
  store i64 %i.dh, ptr %i.di, align 1, !noalias !4028
  %i.dj = add nuw nsw i64 %.sroa.0.1215.i.i.i, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.df
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add i64 %i.cs, %i.dm
  br label %bb.y

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.do = icmp ult i64 %.sroa.0.0213.i.i.i, %3
  br i1 %i.do, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.dp = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.ck, i1 true)
  %i.dq = lshr i32 %i.dp, 3
  switch i32 %i.dq, label %default.unreachable [
    i32 3, label %bb.al
    i32 2, label %bb.av
    i32 1, label %bb.bc
    i32 0, label %bb.bd
  ]

bb.ac:                                            ; preds = %bb.aa
  %i.dr = and i32 %.sroa.086.0.copyload.i.i.i, 255
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ds
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !4028, !noundef !75
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i64 %i.dw, ptr %i.dx, align 1, !noalias !4028
  %i.dy = add nuw nsw i64 %.sroa.0.0213.i.i.i, 1  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %3
  br i1 %i.dz, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0213.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #66, !noalias !4028
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ea = zext i8 %i.du to i64
  %i.eb = add i64 %i.ce, %i.ea                    ; 2 uses
  %.mask315.i.i = and i32 %i.cm, 255
  %i.ec = zext nneg i32 %.mask315.i.i to i64      ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ec
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !4028, !noundef !75
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.eb
  store i64 %i.eg, ptr %i.eh, align 1, !noalias !4028
  %i.ei = add nuw i64 %.sroa.0.0213.i.i.i, 2      ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %3
  br i1 %i.ej, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ac
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #66, !noalias !4028
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ek = zext i8 %i.ee to i64
  %i.el = add i64 %i.eb, %i.ek                    ; 2 uses
  %.mask316.i.i = and i32 %i.co, 255
  %i.em = zext nneg i32 %.mask316.i.i to i64      ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.em
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !4028, !noundef !75
  %i.er = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.el
  store i64 %i.eq, ptr %i.er, align 1, !noalias !4028
  %i.es = add nuw i64 %.sroa.0.0213.i.i.i, 3      ; 2 uses
  %i.et = icmp ult i64 %i.es, %3
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @502) #66, !noalias !4028
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eu = zext i8 %i.eo to i64
  %i.ev = add i64 %i.el, %i.eu                    ; 2 uses
  %i.ew = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ew
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !4028, !noundef !75
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ev
  store i64 %i.fb, ptr %i.fc, align 1, !noalias !4028
  %i.fd = add i64 %i.ev, %i.ez
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.es, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @503) #66, !noalias !4028
  unreachable

end_hunk_2
begin_hunk_3_@_RINvNtCs1BCiKJoB9mN_4fsst4fsst10decompressxECsjjpCCFGI3ul_14lance_encoding:vector.ph

bb.as:                                            ; preds = %bb.aq
  %i.gi = icmp ult i64 %i.cd, %3
  br i1 %i.gi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 %i.cd
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !4026, !noalias !4027, !noundef !75
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.gh
  store i8 %i.gk, ptr %i.gl, align 1, !noalias !4028
  %i.gm = add i64 %i.gh, 1
  %i.gn = add nuw i64 %.sroa.0.0213.i.i.i, 5
  br label %bb.ak

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #66, !noalias !4028
  unreachable

bb.av:                                            ; preds = %bb.ab
  %i.go = icmp ult i64 %.sroa.0.0213.i.i.i, %3
  br i1 %i.go, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.mask297.i.i.i = and i32 %.sroa.086.0.copyload.i.i.i, 255
  %i.gp = zext nneg i32 %.mask297.i.i.i to i64    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gp
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !4028, !noundef !75
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i64 %i.gt, ptr %i.gu, align 1, !noalias !4028
  %i.gv = add nuw nsw i64 %.sroa.0.0213.i.i.i, 1  ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %3
  br i1 %i.gw, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0213.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @507) #66, !noalias !4028
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gx = zext i8 %i.gr to i64
  %i.gy = add i64 %i.ce, %i.gx                    ; 2 uses
  %.mask.i.i = and i32 %i.cm, 255
  %i.gz = zext nneg i32 %.mask.i.i to i64         ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gz
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !4028, !noundef !75
  %i.he = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.gy
  store i64 %i.hd, ptr %i.he, align 1, !noalias !4028
  %i.hf = add nuw i64 %.sroa.0.0213.i.i.i, 3      ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %3
  br i1 %i.hg, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gv, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @508) #66, !noalias !4028
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.hh = zext i8 %i.hb to i64
  %i.hi = add i64 %i.gy, %i.hh                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.hi
  store i8 %i.cr, ptr %i.hj, align 1, !noalias !4028
  %i.hk = add i64 %i.hi, 1
  br label %bb.ak

bb.bb:                                            ; preds = %bb.ay
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #66, !noalias !4028
  unreachable

bb.bc:                                            ; preds = %bb.ab
  %i.hl = icmp ult i64 %.sroa.0.0213.i.i.i, %3
  br i1 %i.hl, label %bb.be, label %bb.bf

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.bd:                                            ; preds = %bb.ab
  %i.hm = add i64 %.sroa.0.0213.i.i.i, 1          ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %3
  br i1 %i.hn, label %bb.bi, label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %.mask.i.i.i = and i32 %.sroa.086.0.copyload.i.i.i, 255
  %i.ho = zext nneg i32 %.mask.i.i.i to i64       ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !4029, !noalias !4030, !noundef !75
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ho
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !4028, !noundef !75
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i64 %i.hs, ptr %i.ht, align 1, !noalias !4028
  %i.hu = add nuw i64 %.sroa.0.0213.i.i.i, 2      ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %3
  br i1 %i.hv, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bc
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0213.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @510) #66, !noalias !4028
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.hw = zext i8 %i.hq to i64
  %i.hx = add i64 %i.ce, %i.hw                    ; 2 uses
  %i.hy = add nuw i64 %.sroa.0.0213.i.i.i, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.hx
  store i8 %i.cp, ptr %i.hz, align 1, !noalias !4028
  %i.ia = add i64 %i.hx, 1
  br label %bb.ak

bb.bh:                                            ; preds = %bb.be
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @511) #66, !noalias !4028
  unreachable

bb.bi:                                            ; preds = %bb.bd
  %i.ib = add i64 %.sroa.0.0213.i.i.i, 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cn, ptr %i.ic, align 1, !noalias !4028
  %i.id = add i64 %i.ce, 1
  br label %bb.ak

bb.bj:                                            ; preds = %bb.bd
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hm, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @512) #66, !noalias !4028
  unreachable

_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.y, %.preheader.i.i.i
  %.sroa.053.6.i.i = phi i64 [ %.sroa.053.2.i.i, %.preheader.i.i.i ], [ %.sroa.053.4.i.i, %bb.y ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4012
  store i64 %.sroa.053.6.i.i, ptr %i.c, align 8, !noalias !4012
  %i.ie = icmp sgt i64 %.sroa.053.6.i.i, -1
  br i1 %i.ie, label %bb.bk, label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13encode_offsetxECsjjpCCFGI3ul_14lance_encoding.exit47.thread.i.i

_RINvNtCs1BCiKJoB9mN_4fsst4fsst13encode_offsetxECsjjpCCFGI3ul_14lance_encoding.exit47.thread.i.i: ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4031
  store ptr %i.c, ptr %i.a, align 8, !noalias !4031
  %.sroa.42.0..sroa_idx.i.i44.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i.i, align 8, !noalias !4031
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @497, ptr noundef nonnull %i.a), !noalias !4032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4031
  %i.if = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4012
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit

_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i: ; preds = %bb.aq, %bb.u
  %i.ig = tail call noundef nonnull ptr @_RNvNtCs1BCiKJoB9mN_4fsst4fsst28missing_escape_payload_error(), !noalias !4012
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit

bb.bk:                                            ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4012
  %exitcond.not.i.i = icmp eq i64 %.sroa.021.0191.i.i, %i.u
  br i1 %exitcond.not.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.021.0191.i.i
  store i64 %.sroa.053.6.i.i, ptr %i.ih, align 8, !noalias !4012
  %exitcond273.not.i.i = icmp eq i64 %i.bv, %5
  br i1 %exitcond273.not.i.i, label %._crit_edge.i.i, label %bb.q

bb.bm:                                            ; preds = %bb.bk
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #66, !noalias !4012
  unreachable

bb.bn:                                            ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4033)
  %i.ii = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp samesign ugt i64 %3, %i.s
  br i1 %i.ij, label %bb.bo, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.bn
  store i64 %3, ptr %i.r, align 8, !alias.scope !4034, !noalias !4018
  %.in.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i = load ptr, ptr %.in.phi.trans.insert.i, align 8, !alias.scope !4003, !noalias !4018
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14

bb.bo:                                            ; preds = %bb.bn
  %i.ik = sub nuw nsw i64 %3, %i.s                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  %i.il = load i64, ptr %6, align 8, !range !76, !alias.scope !4036, !noalias !4018, !noundef !75
  %i.im = sub nsw i64 %i.il, %i.s
  %i.in = icmp ugt i64 %i.ik, %i.im
  br i1 %i.in, label %bb.bp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

bb.bp:                                            ; preds = %bb.bo
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.s, i64 noundef %i.ik, i64 noundef 1, i64 noundef 1), !noalias !4018
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !4037, !noalias !4018
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.bp, %bb.bo
  %i.io = phi i64 [ %i.s, %bb.bo ], [ %.pre.i.i.i, %bb.bp ] ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !4037, !noalias !4018, !nonnull !75, !noundef !75 ; 3 uses
  %i.ir = icmp sgt i64 %i.io, -1
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr i8, ptr %i.iq, i64 %i.io  ; 2 uses
  %i.it = icmp samesign ugt i64 %i.ik, 1
  br i1 %i.it, label %._crit_edge.thread.i.i.i, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.iu = add nsw i64 %i.ik, -1                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.is, i8 0, i64 range(i64 0, -1) %i.iu, i1 false), !noalias !4038
  %i.iv = add nuw i64 %i.io, %i.iu                ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.iq, i64 %i.iv
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.0.0.lcssa28.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.is, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %storemerge.lcssa27.i.i.i = phi i64 [ %i.iv, %._crit_edge.thread.i.i.i ], [ %i.io, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i, align 1, !noalias !4038
  %i.iw = add nuw i64 %storemerge.lcssa27.i.i.i, 1 ; 3 uses
  store i64 %i.iw, ptr %i.r, align 8, !alias.scope !4034, !noalias !4018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  %.not.i10.i = icmp eq i64 %i.iw, %3
  br i1 %.not.i10.i, label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14, label %bb.bq, !prof !113

bb.bq:                                            ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i
  tail call void @_RNvNvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.iw, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2116) #66, !noalias !4041
  unreachable

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14: ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.ix = phi ptr [ %i.iq, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.pre.i, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !alias.scope !4042, !noalias !4043
  %i.iy = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.iy)
  store i64 %5, ptr %i.t, align 8, !alias.scope !4044, !noalias !4045
  %.in27.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre147.i = load ptr, ptr %.in27.phi.trans.insert.i, align 8, !alias.scope !4004, !noalias !4045
  %i.iz = shl nuw nsw i64 %5, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.pre147.i, ptr nonnull readonly align 8 %4, i64 %i.iz, i1 false), !alias.scope !4046, !noalias !4047
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18: ; preds = %bb.r, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  store i64 %5, ptr %i.t, align 8, !alias.scope !4016, !noalias !4017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4012
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13encode_offsetxECsjjpCCFGI3ul_14lance_encoding.exit47.thread.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i
  %.sroa.0.1.ph.i.i = phi ptr [ %i.ig, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst15decompress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i ], [ %i.if, %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13encode_offsetxECsjjpCCFGI3ul_14lance_encoding.exit47.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4012
  br label %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit, %bb.j, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ay, %bb.j ], [ %.sroa.0.0.i.ph, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE4initCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %.sroa.0.1.ph.i.i, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.az, %bb.k ], [ null, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread18 ], [ null, %_RNvMsb_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstDecoderxE10decompressCsjjpCCFGI3ul_14lance_encoding.exit.thread14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCs1BCiKJoB9mN_4fsst4fsst16validate_offsetslECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.p, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = load i32, ptr %0, align 4, !noundef !75  ; 3 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst15offset_to_usizelECsjjpCCFGI3ul_14lance_encoding.exit.thread

_RINvNtCs1BCiKJoB9mN_4fsst4fsst15offset_to_usizelECsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = sext i32 %i.q to i64
  store i64 %i.s, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @513, ptr %i.t, align 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @514, ptr noundef nonnull %i.d), !noalias !4058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.u = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.k, %.split64, %_RINvNtCs1BCiKJoB9mN_4fsst4fsst15offset_to_usizelECsjjpCCFGI3ul_14lance_encoding.exit.thread, %bb.e
  %.sroa.0.0.ph = phi ptr [ null, %bb.e ], [ %i.u, %_RINvNtCs1BCiKJoB9mN_4fsst4fsst15offset_to_usizelECsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %.sroa.0.2, %bb.k ], [ %i.aa, %.split64 ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %i.q to i64                ; 3 uses
  store i64 %i.v, ptr %i.o, align 8
  %i.w = icmp samesign ult i64 %2, %i.v
  br i1 %i.w, label %.split64, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx = shl nuw nsw i64 %1, 2
  %i.x = getelementptr i8, ptr %0, i64 %.idx      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = icmp eq i64 %1, 1
  br i1 %i.y, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.080.0100 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

.split64:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.p, ptr %i.z, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @339, ptr noundef nonnull %i.m), !noalias !4059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.aa = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.080.0102 = phi ptr [ %.sroa.080.0100, %.lr.ph ], [ %.sroa.080.0, %bb.i ] ; 2 uses
  %.sroa.8.0101 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.i ]
  %i.ab = phi i64 [ %i.v, %.lr.ph ], [ %i.ai, %bb.i ] ; 4 uses
  %i.ac = add nuw nsw i64 %.sroa.8.0101, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ad = load i32, ptr %.sroa.080.0102, align 4, !noundef !75 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst15offset_to_usizelECsjjpCCFGI3ul_14lance_encoding.exit79.thread

_RINvNtCs1BCiKJoB9mN_4fsst4fsst15offset_to_usizelECsjjpCCFGI3ul_14lance_encoding.exit79.thread: ; preds = %bb.f
  store i64 %i.ab, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = sext i32 %i.ad to i64
  store i64 %i.af, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i.i75 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i75, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @513, ptr %i.ag, align 8
  %.sroa.46.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i76, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @514, ptr noundef nonnull %i.a), !noalias !4060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECs6DHzcf4wXa8_6rustls(i8 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %i.ad to i64              ; 4 uses
  store i64 %i.ai, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.ac, ptr %i.k, align 8
  %i.aj = icmp samesign ugt i64 %i.ab, %i.ai
  br i1 %i.aj, label %.split60, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp samesign ult i64 %2, %i.ai
  br i1 %i.ak, label %.split, label %bb.i

.split60:                                         ; preds = %bb.g
  store i64 %i.ab, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.al, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.o, ptr %i.am, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @338, ptr noundef nonnull %i.i), !noalias !4061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_3
begin_hunk_4_@_RINvNtCs1BCiKJoB9mN_4fsst4fsst8compresslECsjjpCCFGI3ul_14lance_encoding:bb.a
bb.fk:                                            ; preds = %_RINvNtCs1BCiKJoB9mN_4fsst4fsst18build_symbol_tablelECsjjpCCFGI3ul_14lance_encoding.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsjjpCCFGI3ul_14lance_encoding.exit92.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4441
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 156176, i64 noundef 8) #63, !noalias !4441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4440
  call void @llvm.experimental.noalias.scope.decl(metadata !4619)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.thread.i
  %.sroa.8.0 = phi i8 [ 0, %.thread.i ], [ 1, %bb.fk ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ac, %.thread.i ], [ %i.lh, %bb.fk ] ; 19 uses
  %i.bcg = zext nneg i8 %.sroa.8.0 to i64
  %i.bch = shl nuw nsw i64 %i.bcg, 24
  %i.bci = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 156164
  %i.bcj = load i16, ptr %i.bci, align 4, !noalias !4620, !noundef !75
  %i.bck = and i16 %i.bcj, 255
  %i.bcl = zext nneg i16 %i.bck to i64
  %i.bcm = shl nuw nsw i64 %i.bcl, 16
  %i.bcn = or disjoint i64 %i.bcm, %i.bch
  %i.bco = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 156162
  %i.bcp = load i16, ptr %i.bco, align 2, !noalias !4620, !noundef !75 ; 2 uses
  %i.bcq = shl i16 %i.bcp, 8
  %i.bcr = zext i16 %i.bcq to i64
  %i.bcs = or disjoint i64 %i.bcn, %i.bcr
  %i.bct = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 156160
  %i.bcu = load i16, ptr %i.bct, align 8, !noalias !4620, !noundef !75 ; 4 uses
  %i.bcv = and i16 %i.bcu, 255
  %i.bcw = zext nneg i16 %i.bcv to i64
  %i.bcx = or disjoint i64 %i.bcs, %i.bcw
  %i.bcy = or disjoint i64 %i.bcx, 5067485625964298240
  store i64 %i.bcy, ptr %0, align 1, !alias.scope !4621, !noalias !4622
  %i.bcz = zext i16 %i.bcu to i64                 ; 3 uses
  %.not15.i.i = icmp eq i16 %i.bcu, 0
  br i1 %.not15.i.i, label %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderlE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fl
  %i.bda = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 147456 ; 3 uses
  %i.bdb = add nsw i64 %i.bcz, -1                 ; 2 uses
  %i.bdc = call i64 @llvm.umin.i64(i64 %i.bdb, i64 288) ; 2 uses
  %min.iters.check = icmp ult i16 %i.bcu, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i
  %.sroa.0.011.i.i.ph = phi i64 [ 8, %.lr.ph.i.i ], [ %i.bdi, %vector.body ]
  %.sroa.011.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %i.bdd = add nuw nsw i64 %i.bdc, 1              ; 2 uses
  %i.bde = and i64 %i.bdd, 3                      ; 2 uses
  %i.bdf = icmp eq i64 %i.bde, 0
  %i.bdg = select i1 %i.bdf, i64 4, i64 %i.bde
  %n.vec = sub nsw i64 %i.bdd, %i.bdg             ; 3 uses
  %i.bdh = shl nsw i64 %n.vec, 3
  %i.bdi = add nsw i64 %i.bdh, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bdj = shl nuw i64 %index, 3
  %i.bdk = getelementptr inbounds nuw [16 x i8], ptr %i.bda, i64 %index
  %i.bdl = getelementptr inbounds nuw [16 x i8], ptr %i.bda, i64 %index
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 32
  %wide.vec = load <4 x i64>, ptr %i.bdk, align 8, !noalias !4620
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec1287 = load <4 x i64>, ptr %i.bdm, align 8, !noalias !4620
  %strided.vec1288 = shufflevector <4 x i64> %wide.vec1287, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bdn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bdj ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 8
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdn, i64 24
  store <2 x i64> %strided.vec, ptr %i.bdo, align 1, !alias.scope !4623, !noalias !4624
  store <2 x i64> %strided.vec1288, ptr %i.bdp, align 1, !alias.scope !4623, !noalias !4624
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bdq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !4381

.preheader.i.i:                                   ; preds = %bb.fn
  %i.bdr = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) 2312, i64 %i.beu)
  %i.bds = shl nuw nsw i64 %i.bdc, 3
  %i.bdt = call i64 @llvm.usub.sat.i64(i64 2296, i64 %i.bds)
  %i.bdu = call i64 @llvm.umin.i64(i64 %i.bdb, i64 %i.bdt) ; 2 uses
  %min.iters.check1291 = icmp samesign ult i64 %i.bdu, 4
  br i1 %min.iters.check1291, label %.lr.ph14.i.i.preheader, label %vector.ph1292

vector.ph1292:                                    ; preds = %.preheader.i.i
  %i.bdv = add nuw nsw i64 %i.bdu, 1              ; 2 uses
  %i.bdw = and i64 %i.bdv, 3                      ; 2 uses
  %i.bdx = icmp eq i64 %i.bdw, 0
  %i.bdy = select i1 %i.bdx, i64 4, i64 %i.bdw
  %n.vec1293 = sub nsw i64 %i.bdv, %i.bdy         ; 3 uses
  %i.bdz = add i64 %i.beu, %n.vec1293
  %i.bea = getelementptr inbounds nuw i8, ptr %0, i64 %i.beu
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1300, %vector.body1294 ] ; 4 uses
  %i.beb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.1, i64 %index1295
  %i.bec = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.1, i64 %index1295
  %i.bed = getelementptr inbounds nuw i8, ptr %i.beb, i64 147464
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bec, i64 147496
  %wide.vec1296 = load <4 x i64>, ptr %i.bed, align 8, !noalias !4620
  %strided.vec1297 = shufflevector <4 x i64> %wide.vec1296, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec1298 = load <4 x i64>, ptr %i.bee, align 8, !noalias !4620
  %strided.vec1299 = shufflevector <4 x i64> %wide.vec1298, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bef = lshr <2 x i64> %strided.vec1297, splat (i64 28)
  %i.beg = lshr <2 x i64> %strided.vec1299, splat (i64 28)
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bea, i64 %index1295 ; 2 uses
  %i.bei = trunc <2 x i64> %i.bef to <2 x i8>
  %i.bej = trunc <2 x i64> %i.beg to <2 x i8>
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beh, i64 2
  store <2 x i8> %i.bei, ptr %i.beh, align 1, !alias.scope !4625, !noalias !4626
  store <2 x i8> %i.bej, ptr %i.bek, align 1, !alias.scope !4625, !noalias !4626
  %index.next1300 = add nuw i64 %index1295, 4     ; 2 uses
  %i.bel = icmp eq i64 %index.next1300, %n.vec1293
  br i1 %i.bel, label %.lr.ph14.i.i.preheader, label %vector.body1294, !llvm.loop !4382

.lr.ph14.i.i.preheader:                           ; preds = %vector.body1294, %.preheader.i.i
  %.sroa.0.113.i.i.ph = phi i64 [ %i.beu, %.preheader.i.i ], [ %i.bdz, %vector.body1294 ]
  %.sroa.013.012.i.i.ph = phi i64 [ 0, %.preheader.i.i ], [ %n.vec1293, %vector.body1294 ]
  br label %.lr.ph14.i.i

.lr.ph14.i.i:                                     ; preds = %.lr.ph14.i.i.preheader, %bb.fm
  %.sroa.0.113.i.i = phi i64 [ %i.bet, %bb.fm ], [ %.sroa.0.113.i.i.ph, %.lr.ph14.i.i.preheader ] ; 3 uses
  %.sroa.013.012.i.i = phi i64 [ %i.bem, %bb.fm ], [ %.sroa.013.012.i.i.ph, %.lr.ph14.i.i.preheader ] ; 3 uses
  %exitcond29.not.i.i = icmp eq i64 %.sroa.013.012.i.i, %i.bdr
  br i1 %exitcond29.not.i.i, label %.invoke1009, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph14.i.i
  %i.bem = add nuw nsw i64 %.sroa.013.012.i.i, 1  ; 2 uses
  %i.ben = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.1, i64 %.sroa.013.012.i.i
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 147464
  %i.bep = load i64, ptr %i.beo, align 8, !noalias !4620, !noundef !75
  %i.beq = lshr i64 %i.bep, 28
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.113.i.i
  %i.bes = trunc i64 %i.beq to i8
  store i8 %i.bes, ptr %i.ber, align 1, !alias.scope !4625, !noalias !4626
  %i.bet = add nuw nsw i64 %.sroa.0.113.i.i, 1
  %exitcond30.not.i.i = icmp eq i64 %i.bem, %i.bcz
  br i1 %exitcond30.not.i.i, label %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderlE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i, label %.lr.ph14.i.i, !llvm.loop !4383

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fn
  %.sroa.0.011.i.i = phi i64 [ %i.beu, %bb.fn ], [ %.sroa.0.011.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.011.010.i.i = phi i64 [ %i.bev, %bb.fn ], [ %.sroa.011.010.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.beu = add nuw nsw i64 %.sroa.0.011.i.i, 8    ; 6 uses
  %exitcond26.i.i = icmp eq i64 %.sroa.011.010.i.i, 288
  br i1 %exitcond26.i.i, label %.invoke1011, label %bb.fn, !prof !81

bb.fn:                                            ; preds = %scalar.ph
  %i.bev = add nuw nsw i64 %.sroa.011.010.i.i, 1  ; 2 uses
  %i.bew = getelementptr inbounds nuw [16 x i8], ptr %i.bda, i64 %.sroa.011.010.i.i
  %i.bex = load i64, ptr %i.bew, align 8, !noalias !4620, !noundef !75
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.011.i.i
  store i64 %i.bex, ptr %i.bey, align 1, !alias.scope !4623, !noalias !4624
  %exitcond27.not.i.i = icmp eq i64 %i.bev, %i.bcz
  br i1 %exitcond27.not.i.i, label %.preheader.i.i, label %scalar.ph, !llvm.loop !4384

_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderlE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.fm, %bb.fl
  %i.bez = trunc nuw i8 %.sroa.8.0 to i1
  br i1 %i.bez, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderlE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4627)
  %i.bfa = load i64, ptr %i.af, align 8, !alias.scope !4628, !noalias !4437, !noundef !75 ; 6 uses
  %i.bfb = icmp sgt i64 %i.bfa, -1
  call void @llvm.assume(i1 %i.bfb)
  %i.bfc = icmp samesign ugt i64 %3, %i.bfa
  br i1 %i.bfc, label %bb.fp, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.fo
  store i64 %3, ptr %i.af, align 8, !alias.scope !4628, !noalias !4437
  br label %bb.gi

bb.fp:                                            ; preds = %bb.fo
  %i.bfd = sub nuw nsw i64 %3, %i.bfa             ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4629)
  %i.bfe = load i64, ptr %6, align 8, !range !76, !alias.scope !4630, !noalias !4437, !noundef !75
  %i.bff = sub nsw i64 %i.bfe, %i.bfa
  %i.bfg = icmp ugt i64 %i.bfd, %i.bff
  br i1 %i.bfg, label %bb.fq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

bb.fq:                                            ; preds = %bb.fp
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bfa, i64 noundef %i.bfd, i64 noundef 1, i64 noundef 1)
          to label %.noexc14 unwind label %bb.gl

.noexc14:                                         ; preds = %bb.fq
  %.pre.i.i14.i = load i64, ptr %i.af, align 8, !alias.scope !4631, !noalias !4437
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %.noexc14, %bb.fp
  %i.bfh = phi i64 [ %i.bfa, %bb.fp ], [ %.pre.i.i14.i, %.noexc14 ] ; 4 uses
  %i.bfi = load ptr, ptr %i.ae, align 8, !alias.scope !4631, !noalias !4437, !nonnull !75, !noundef !75 ; 2 uses
  %i.bfj = icmp sgt i64 %i.bfh, -1
  call void @llvm.assume(i1 %i.bfj)
  %i.bfk = getelementptr i8, ptr %i.bfi, i64 %i.bfh ; 2 uses
  %i.bfl = icmp samesign ugt i64 %i.bfd, 1
  br i1 %i.bfl, label %._crit_edge.thread.i.i.i, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.bfm = add nsw i64 %i.bfd, -1                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.bfk, i8 0, i64 range(i64 0, -1) %i.bfm, i1 false), !noalias !4632
  %i.bfn = add nuw i64 %i.bfh, %i.bfm             ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.bfi, i64 %i.bfn
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.0.0.lcssa28.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.bfk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %storemerge.lcssa27.i.i.i = phi i64 [ %i.bfn, %._crit_edge.thread.i.i.i ], [ %i.bfh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i, align 1, !noalias !4632
  %i.bfo = add nuw i64 %storemerge.lcssa27.i.i.i, 1 ; 3 uses
  store i64 %i.bfo, ptr %i.af, align 8, !alias.scope !4628, !noalias !4437
  %.not.i.i = icmp eq i64 %i.bfo, %3
  br i1 %.not.i.i, label %bb.gi, label %.invoke, !prof !113

bb.fr:                                            ; preds = %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderlE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4633)
  call void @llvm.experimental.noalias.scope.decl(metadata !4634)
  call void @llvm.experimental.noalias.scope.decl(metadata !4635)
  call void @llvm.experimental.noalias.scope.decl(metadata !4636)
  %i.bfp = load i64, ptr %i.ai, align 8, !alias.scope !4637, !noalias !4638, !noundef !75 ; 11 uses
  %.not.i15.i = icmp eq i64 %i.bfp, 0
  br i1 %.not.i15.i, label %.invoke1009, label %.split.i16.i

.split.i16.i:                                     ; preds = %bb.fr
  %i.bfq = load ptr, ptr %i.ah, align 8, !alias.scope !4637, !noalias !4638, !nonnull !75, !noundef !75 ; 3 uses
  store i32 0, ptr %i.bfq, align 4, !noalias !4639
  %i.bfr = icmp samesign ugt i64 %5, 1
  br i1 %i.bfr, label %.lr.ph99.i.i, label %._crit_edge100.i.thread.i

.lr.ph99.i.i:                                     ; preds = %.split.i16.i
  %i.bfs = trunc i16 %i.bcp to i8
  %i.bft = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 131072
  %i.bfu = load i64, ptr %i.af, align 8, !alias.scope !4434, !noalias !4437 ; 10 uses
  %i.bfv = load ptr, ptr %i.ae, align 8, !alias.scope !4434, !noalias !4437, !nonnull !75 ; 3 uses
  br label %bb.fu

._crit_edge100.i.i:                               ; preds = %bb.fz
  call void @llvm.experimental.noalias.scope.decl(metadata !4640)
  %i.bfw = icmp sgt i64 %i.bfu, -1
  call void @llvm.assume(i1 %i.bfw)
  %i.bfx = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i, %i.bfu
  br i1 %i.bfx, label %bb.fs, label %._crit_edge100.i.thread.i

bb.fs:                                            ; preds = %._crit_edge100.i.i
  %i.bfy = sub nuw nsw i64 %.sroa.0.1.lcssa.i.i, %i.bfu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4641)
  %i.bfz = load i64, ptr %6, align 8, !range !76, !alias.scope !4642, !noalias !4643, !noundef !75
  %i.bga = sub nsw i64 %i.bfz, %i.bfu
  %i.bgb = icmp ugt i64 %i.bfy, %i.bga
  br i1 %i.bgb, label %bb.ft, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i, !prof !81

bb.ft:                                            ; preds = %bb.fs
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bfu, i64 noundef %i.bfy, i64 noundef 1, i64 noundef 1)
          to label %.noexc17 unwind label %bb.gl

.noexc17:                                         ; preds = %bb.ft
  %.pre.i.i.i19.i = load i64, ptr %i.af, align 8, !alias.scope !4644, !noalias !4643
  %.pre615.i = load ptr, ptr %i.ae, align 8, !alias.scope !4644, !noalias !4643
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i: ; preds = %.noexc17, %bb.fs
  %i.bgc = phi ptr [ %i.bfv, %bb.fs ], [ %.pre615.i, %.noexc17 ] ; 2 uses
  %i.bgd = phi i64 [ %i.bfu, %bb.fs ], [ %.pre.i.i.i19.i, %.noexc17 ] ; 4 uses
  %i.bge = icmp sgt i64 %i.bgd, -1
  call void @llvm.assume(i1 %i.bge)
  %i.bgf = getelementptr i8, ptr %i.bgc, i64 %i.bgd ; 2 uses
  %i.bgg = icmp samesign ugt i64 %i.bfy, 1
  br i1 %i.bgg, label %._crit_edge.thread.i.i.i.i, label %._crit_edge.i.i.i18.i

._crit_edge.thread.i.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i
  %i.bgh = add nsw i64 %i.bfy, -1                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.bgf, i8 0, i64 range(i64 0, -1) %i.bgh, i1 false), !noalias !4645
  %i.bgi = add nuw i64 %i.bgd, %i.bgh             ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.bgc, i64 %i.bgi
  br label %._crit_edge.i.i.i18.i

._crit_edge.i.i.i18.i:                            ; preds = %._crit_edge.thread.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i
  %.sroa.0.0.lcssa28.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %i.bgf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i ]
  %storemerge.lcssa27.i.i.i.i = phi i64 [ %i.bgi, %._crit_edge.thread.i.i.i.i ], [ %i.bgd, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i.i, align 1, !noalias !4645
  %i.bgj = add nuw i64 %storemerge.lcssa27.i.i.i.i, 1
  br label %._crit_edge100.i.thread.i

bb.fu:                                            ; preds = %bb.fz, %.lr.ph99.i.i
  %.sroa.017.098.i.i = phi i64 [ 1, %.lr.ph99.i.i ], [ %i.bgk, %bb.fz ] ; 4 uses
  %.sroa.0.097.i.i = phi i64 [ 0, %.lr.ph99.i.i ], [ %.sroa.0.1.lcssa.i.i, %bb.fz ] ; 2 uses
  %i.bgk = add nuw nsw i64 %.sroa.017.098.i.i, 1  ; 2 uses
  %i.bgl = getelementptr [4 x i8], ptr %4, i64 %.sroa.017.098.i.i ; 2 uses
  %i.bgm = getelementptr i8, ptr %i.bgl, i64 -4
  %i.bgn = load i32, ptr %i.bgm, align 4, !alias.scope !4646, !noalias !4647, !noundef !75 ; 2 uses
  %i.bgo = load i32, ptr %i.bgl, align 4, !alias.scope !4646, !noalias !4647, !noundef !75 ; 2 uses
  %i.bgp = sext i32 %i.bgo to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4639
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(520) %i.a, i8 0, i64 520, i1 false), !noalias !4639
  %i.bgq = icmp ult i32 %i.bgn, %i.bgo
  br i1 %i.bgq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.fu
  %i.bgr = sext i32 %i.bgn to i64
  br label %.lr.ph.i21.i

._crit_edge100.i.thread.i:                        ; preds = %.split.i16.i, %._crit_edge.i.i.i18.i, %._crit_edge100.i.i
  %storemerge.i.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i, %._crit_edge100.i.i ], [ %i.bgj, %._crit_edge.i.i.i18.i ], [ 0, %.split.i16.i ]
  store i64 %storemerge.i.i.i, ptr %i.af, align 8, !alias.scope !4648, !noalias !4643
  call void @llvm.experimental.noalias.scope.decl(metadata !4649)
  %i.bgs = icmp ult i64 %i.bfp, 2305843009213693952
  call void @llvm.assume(i1 %i.bgs)
  %i.bgt = icmp samesign ugt i64 %5, %i.bfp
  br i1 %i.bgt, label %bb.fv, label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.fv:                                            ; preds = %._crit_edge100.i.thread.i
  %i.bgu = sub nuw nsw i64 %5, %i.bfp             ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4650)
  %i.bgv = load i64, ptr %7, align 8, !range !76, !alias.scope !4651, !noalias !4638, !noundef !75
  %i.bgw = sub nsw i64 %i.bgv, %i.bfp
  %i.bgx = icmp ugt i64 %i.bgu, %i.bgw
  br i1 %i.bgx, label %bb.fw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, !prof !81

bb.fw:                                            ; preds = %bb.fv
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.bfp, i64 noundef %i.bgu, i64 noundef 4, i64 noundef 4)
          to label %.noexc18 unwind label %bb.gl

.noexc18:                                         ; preds = %bb.fw
  %.pre.i.i34.i.i = load i64, ptr %i.ai, align 8, !alias.scope !4652, !noalias !4638
  %.pre.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !4652, !noalias !4638
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i: ; preds = %.noexc18, %bb.fv
  %i.bgy = phi ptr [ %i.bfq, %bb.fv ], [ %.pre.i.i, %.noexc18 ] ; 2 uses
  %i.bgz = phi i64 [ %i.bfp, %bb.fv ], [ %.pre.i.i34.i.i, %.noexc18 ] ; 5 uses
  %i.bha = icmp ult i64 %i.bgz, 2305843009213693952
  call void @llvm.assume(i1 %i.bha)
  %i.bhb = getelementptr [4 x i8], ptr %i.bgy, i64 %i.bgz ; 2 uses
  %i.bhc = icmp samesign ugt i64 %i.bgu, 1
  br i1 %i.bhc, label %.lr.ph.i.i.preheader.i.i, label %._crit_edge.i.i30.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %i.bhd = xor i64 %i.bfp, -1
  %i.bhe = add nsw i64 %5, %i.bhd
  %i.bhf = shl nuw nsw i64 %i.bhe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bhb, i8 0, i64 %i.bhf, i1 false), !noalias !4653
  %i.bhg = add nuw nsw i64 %i.bgu, %i.bgz
  %reass.sub.i = shl nuw i64 %i.bhg, 2
  %i.bhh = getelementptr i8, ptr %i.bgy, i64 %reass.sub.i
  %scevgep.i.i = getelementptr i8, ptr %i.bhh, i64 -4
  %i.bhi = add nsw i64 %i.bgu, -1
  %i.bhj = add nuw nsw i64 %i.bhi, %i.bgz
  br label %._crit_edge.i.i30.i.i

._crit_edge.i.i30.i.i:                            ; preds = %.lr.ph.i.i.preheader.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %.sroa.0.0.lcssa28.i.i31.i.i = phi ptr [ %scevgep.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.bhb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ]
  %storemerge.lcssa27.i.i32.i.i = phi i64 [ %i.bhj, %.lr.ph.i.i.preheader.i.i ], [ %i.bgz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ]
  store i32 0, ptr %.sroa.0.0.lcssa28.i.i31.i.i, align 4, !noalias !4653
  %i.bhk = add nuw nsw i64 %storemerge.lcssa27.i.i32.i.i, 1
  br label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklECsjjpCCFGI3ul_14lance_encoding.exit.i

._crit_edge.i.i:                                  ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, %bb.fu
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.097.i.i, %bb.fu ], [ %.sroa.0.2.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i ] ; 6 uses
  %i.bhl = icmp ult i64 %.sroa.0.1.lcssa.i.i, 2147483648
  %i.bhm = trunc nuw nsw i64 %.sroa.0.1.lcssa.i.i to i32
  br i1 %i.bhl, label %bb.fx, label %bb.fy, !prof !78

.lr.ph.i21.i:                                     ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.04.096.i.i = phi i64 [ %.sroa.0.0.i37.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i ], [ %i.bgr, %.lr.ph.preheader.i.i ] ; 6 uses
  %.sroa.0.195.i.i = phi i64 [ %.sroa.0.2.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i ], [ %.sroa.0.097.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bhn = add i64 %.sroa.04.096.i.i, 511         ; 2 uses
  %.sroa.0.0.i37.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bgp, i64 %i.bhn) ; 5 uses
  %i.bho = sub i64 %.sroa.0.0.i37.i.i, %.sroa.04.096.i.i ; 6 uses
  %i.bhp = icmp ult i64 %i.bho, 521
  br i1 %i.bhp, label %bb.ga, label %.invoke1011, !prof !114

bb.fx:                                            ; preds = %._crit_edge.i.i
  %exitcond.not.i20.i = icmp eq i64 %.sroa.017.098.i.i, %i.bfp
  br i1 %exitcond.not.i20.i, label %.invoke1009, label %bb.fz

bb.fy:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #66
          to label %.noexc19 unwind label %bb.gl

.noexc19:                                         ; preds = %bb.fy
  unreachable

bb.fz:                                            ; preds = %bb.fx
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.bfq, i64 %.sroa.017.098.i.i
  store i32 %i.bhm, ptr %i.bhq, align 4, !noalias !4639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4639
  %exitcond136.not.i.i = icmp eq i64 %i.bgk, %5
  br i1 %exitcond136.not.i.i, label %._crit_edge100.i.i, label %bb.fu

bb.ga:                                            ; preds = %.lr.ph.i21.i
  %i.bhr = icmp ugt i64 %.sroa.04.096.i.i, -512
  %.not26.i.i = icmp ugt i64 %.sroa.0.0.i37.i.i, %3
  %or.cond.i.i = or i1 %i.bhr, %.not26.i.i
  br i1 %or.cond.i.i, label %.invoke1011, label %bb.gb, !prof !100

bb.gb:                                            ; preds = %bb.ga
  %i.bhs = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.04.096.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull readonly align 1 %i.bhs, i64 range(i64 0, -9223372036854775808) %i.bho, i1 false), !alias.scope !4654, !noalias !4655
  %.not27.i.i = icmp eq i64 %i.bho, 520
  br i1 %.not27.i.i, label %.invoke1009, label %bb.gc

.invoke1011:                                      ; preds = %scalar.ph, %bb.ga, %.lr.ph.i21.i
  %i.bht = phi i64 [ 0, %.lr.ph.i21.i ], [ %.sroa.04.096.i.i, %bb.ga ], [ %.sroa.0.011.i.i, %scalar.ph ]
  %i.bhu = phi i64 [ %i.bho, %.lr.ph.i21.i ], [ %.sroa.0.0.i37.i.i, %bb.ga ], [ %i.beu, %scalar.ph ]
  %i.bhv = phi i64 [ 520, %.lr.ph.i21.i ], [ %3, %bb.ga ], [ 2312, %scalar.ph ]
  %i.bhw = phi ptr [ @334, %.lr.ph.i21.i ], [ @333, %bb.ga ], [ @2104, %scalar.ph ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.bht, i64 noundef %i.bhu, i64 noundef %i.bhv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhw) #66
          to label %.cont1012 unwind label %bb.gl

.cont1012:                                        ; preds = %.invoke1011
  unreachable

bb.gc:                                            ; preds = %bb.gb
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bho
  store i8 %i.bfs, ptr %i.bhx, align 1, !noalias !4639
  call void @llvm.experimental.noalias.scope.decl(metadata !4656)
  %.not.i.i22.i = icmp eq i64 %.sroa.0.0.i37.i.i, %.sroa.04.096.i.i
  br i1 %.not.i.i22.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulklE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %.lr.ph.i.i23.i

.lr.ph.i.i23.i:                                   ; preds = %bb.gc, %bb.gh
  %.sroa.0.07.i.i.i = phi i64 [ %i.bjc, %bb.gh ], [ 0, %bb.gc ] ; 2 uses
  %i.bhy = phi i64 [ %i.bjg, %bb.gh ], [ %.sroa.0.195.i.i, %bb.gc ] ; 5 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.07.i.i.i
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.bhz, align 1, !alias.scope !4656, !noalias !4657 ; 4 uses
  %i.bia = and i64 %.sroa.06.0.copyload.i.i.i, 65535
  %i.bib = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %i.bia
  %i.bic = load i16, ptr %i.bib, align 2, !alias.scope !4633, !noalias !4658, !noundef !75 ; 2 uses
  %i.bid = and i64 %.sroa.06.0.copyload.i.i.i, 16777215
  %i.bie = mul nuw nsw i64 %i.bid, 2971215073     ; 2 uses
  %i.bif = lshr i64 %i.bie, 15
  %i.big = xor i64 %i.bif, %i.bie
  %i.bih = and i64 %i.big, 1023
  %i.bii = getelementptr inbounds nuw [16 x i8], ptr %i.bft, i64 %i.bih ; 2 uses
  %i.bij = load i64, ptr %i.bii, align 8, !alias.scope !4633, !noalias !4658, !noundef !75
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bii, i64 8
  %i.bil = load i64, ptr %i.bik, align 8, !alias.scope !4633, !noalias !4658, !noundef !75 ; 3 uses
  %i.bim = add i64 %i.bhy, 1                      ; 3 uses
  %i.bin = icmp ult i64 %i.bim, %i.bfu
  br i1 %i.bin, label %bb.gd, label %.invoke1009

bb.gd:                                            ; preds = %.lr.ph.i.i23.i
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bim
  %i.bip = trunc i64 %.sroa.06.0.copyload.i.i.i to i8
  store i8 %i.bip, ptr %i.bio, align 1, !noalias !4659
  %i.biq = icmp ult i64 %i.bil, 4294967296
  br i1 %i.biq, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  %i.bir = and i64 %i.bil, 63
  %i.bis = lshr i64 -1, %i.bir
  %i.bit = and i64 %i.bis, %.sroa.06.0.copyload.i.i.i
  %i.biu = icmp eq i64 %i.bij, %i.bit
  br i1 %i.biu, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.biv = lshr i64 %i.bil, 16
  %i.biw = trunc nuw i64 %i.biv to i16
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd
  %.sroa.03.0.i.i.i = phi i16 [ %i.biw, %bb.gf ], [ %i.bic, %bb.ge ], [ %i.bic, %bb.gd ] ; 3 uses
  %i.bix = icmp ult i64 %i.bhy, %i.bfu
  br i1 %i.bix, label %bb.gh, label %.invoke1009

bb.gh:                                            ; preds = %bb.gg
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bhy
  %i.biz = trunc i16 %.sroa.03.0.i.i.i to i8
  store i8 %i.biz, ptr %i.biy, align 1, !noalias !4659
  %i.bja = lshr i16 %.sroa.03.0.i.i.i, 12
  %i.bjb = zext nneg i16 %i.bja to i64
  %i.bjc = add nuw nsw i64 %.sroa.0.07.i.i.i, %i.bjb ; 2 uses
  %i.bjd = lshr i16 %.sroa.03.0.i.i.i, 8
end_hunk_4
begin_hunk_5_@_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical4fsstNtB2_14FsstCompressed13fsst_compress:bb.a
  br i1 %i.yx, label %bb.co, label %bb.cn

_RINvNtCs1BCiKJoB9mN_4fsst4fsst18build_symbol_tablexECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit91.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !33127
  br label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCs1BCiKJoB9mN_4fsst4fsst18build_symbol_tablexECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsjjpCCFGI3ul_14lance_encoding.exit91.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !33126
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gc, i64 noundef 156176, i64 noundef 8) #63, !noalias !33126
  call void @llvm.experimental.noalias.scope.decl(metadata !33173)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bs, %bb.fx
  %.sroa.8.0.i = phi i8 [ 1, %bb.fx ], [ 0, %bb.bs ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.qk, %bb.fx ], [ %i.gc, %bb.bs ] ; 17 uses
  %i.yy = zext nneg i8 %.sroa.8.0.i to i64
  %i.yz = shl nuw nsw i64 %i.yy, 24
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 156164
  %i.zb = load i16, ptr %i.za, align 4, !noalias !33174, !noundef !75
  %i.zc = and i16 %i.zb, 255
  %i.zd = zext nneg i16 %i.zc to i64
  %i.ze = shl nuw nsw i64 %i.zd, 16
  %i.zf = or disjoint i64 %i.ze, %i.yz
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 156162
  %i.zh = load i16, ptr %i.zg, align 2, !noalias !33174, !noundef !75 ; 2 uses
  %i.zi = shl i16 %i.zh, 8
  %i.zj = zext i16 %i.zi to i64
  %i.zk = or disjoint i64 %i.zf, %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 156160
  %i.zm = load i16, ptr %i.zl, align 8, !noalias !33174, !noundef !75 ; 4 uses
  %i.zn = and i16 %i.zm, 255
  %i.zo = zext nneg i16 %i.zn to i64
  %i.zp = or disjoint i64 %i.zk, %i.zo
  %i.zq = or disjoint i64 %i.zp, 5067485625964298240
  store i64 %i.zq, ptr %i.fx, align 1, !alias.scope !33175, !noalias !33176
  %i.zr = zext i16 %i.zm to i64                   ; 3 uses
  %.not15.i.i.i = icmp eq i16 %i.zm, 0
  br i1 %.not15.i.i.i, label %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderxE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 147456 ; 3 uses
  %i.zt = add nsw i64 %i.zr, -1                   ; 2 uses
  %i.zu = call i64 @llvm.umin.i64(i64 %i.zt, i64 288) ; 2 uses
  %min.iters.check = icmp ult i16 %i.zm, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i.ph = phi i64 [ 8, %.lr.ph.i.i.i ], [ %i.aaa, %vector.body ]
  %.sroa.011.010.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %i.zv = add nuw nsw i64 %i.zu, 1                ; 2 uses
  %i.zw = and i64 %i.zv, 3                        ; 2 uses
  %i.zx = icmp eq i64 %i.zw, 0
  %i.zy = select i1 %i.zx, i64 4, i64 %i.zw
  %n.vec = sub nsw i64 %i.zv, %i.zy               ; 3 uses
  %i.zz = shl nsw i64 %n.vec, 3
  %i.aaa = add nsw i64 %i.zz, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aab = shl nuw i64 %index, 3
  %i.aac = getelementptr inbounds nuw [16 x i8], ptr %i.zs, i64 %index
  %i.aad = getelementptr inbounds nuw [16 x i8], ptr %i.zs, i64 %index
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 32
  %wide.vec = load <4 x i64>, ptr %i.aac, align 8, !noalias !33174
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec1298 = load <4 x i64>, ptr %i.aae, align 8, !noalias !33174
  %strided.vec1299 = shufflevector <4 x i64> %wide.vec1298, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.aab ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  store <2 x i64> %strided.vec, ptr %i.aag, align 1, !alias.scope !33177, !noalias !33178
  store <2 x i64> %strided.vec1299, ptr %i.aah, align 1, !alias.scope !33177, !noalias !33178
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aai = icmp eq i64 %index.next, %n.vec
  br i1 %i.aai, label %scalar.ph.preheader, label %vector.body, !llvm.loop !32853

.preheader.i.i.i:                                 ; preds = %bb.fz
  %i.aaj = sub nuw nsw i64 2304, %.sroa.0.011.i.i.i
  %i.aak = shl nuw nsw i64 %i.zu, 3
  %i.aal = sub nsw i64 2296, %i.aak
  %i.aam = call i64 @llvm.umin.i64(i64 %i.zt, i64 %i.aal) ; 2 uses
  %min.iters.check1302 = icmp ult i64 %i.aam, 4
  br i1 %min.iters.check1302, label %.lr.ph14.i.i.i.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %.preheader.i.i.i
  %i.aan = add nuw nsw i64 %i.aam, 1              ; 2 uses
  %i.aao = and i64 %i.aan, 3                      ; 2 uses
  %i.aap = icmp eq i64 %i.aao, 0
  %i.aaq = select i1 %i.aap, i64 4, i64 %i.aao
  %n.vec1304 = sub i64 %i.aan, %i.aaq             ; 3 uses
  %i.aar = add i64 %i.abm, %n.vec1304
  %i.aas = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.abm
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1311, %vector.body1305 ] ; 4 uses
  %i.aat = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.1.i, i64 %index1306
  %i.aau = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.1.i, i64 %index1306
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 147464
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aau, i64 147496
  %wide.vec1307 = load <4 x i64>, ptr %i.aav, align 8, !noalias !33174
  %strided.vec1308 = shufflevector <4 x i64> %wide.vec1307, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec1309 = load <4 x i64>, ptr %i.aaw, align 8, !noalias !33174
  %strided.vec1310 = shufflevector <4 x i64> %wide.vec1309, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aax = lshr <2 x i64> %strided.vec1308, splat (i64 28)
  %i.aay = lshr <2 x i64> %strided.vec1310, splat (i64 28)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 %index1306 ; 2 uses
  %i.aba = trunc <2 x i64> %i.aax to <2 x i8>
  %i.abb = trunc <2 x i64> %i.aay to <2 x i8>
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 2
  store <2 x i8> %i.aba, ptr %i.aaz, align 1, !alias.scope !33179, !noalias !33180
  store <2 x i8> %i.abb, ptr %i.abc, align 1, !alias.scope !33179, !noalias !33180
  %index.next1311 = add nuw i64 %index1306, 4     ; 2 uses
  %i.abd = icmp eq i64 %index.next1311, %n.vec1304
  br i1 %i.abd, label %.lr.ph14.i.i.i.preheader, label %vector.body1305, !llvm.loop !32854

.lr.ph14.i.i.i.preheader:                         ; preds = %vector.body1305, %.preheader.i.i.i
  %.sroa.0.113.i.i.i.ph = phi i64 [ %i.abm, %.preheader.i.i.i ], [ %i.aar, %vector.body1305 ]
  %.sroa.013.012.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i ], [ %n.vec1304, %vector.body1305 ]
  br label %.lr.ph14.i.i.i

.lr.ph14.i.i.i:                                   ; preds = %.lr.ph14.i.i.i.preheader, %bb.fy
  %.sroa.0.113.i.i.i = phi i64 [ %i.abl, %bb.fy ], [ %.sroa.0.113.i.i.i.ph, %.lr.ph14.i.i.i.preheader ] ; 3 uses
  %.sroa.013.012.i.i.i = phi i64 [ %i.abe, %bb.fy ], [ %.sroa.013.012.i.i.i.ph, %.lr.ph14.i.i.i.preheader ] ; 3 uses
  %exitcond29.not.i.i.i = icmp eq i64 %.sroa.013.012.i.i.i, %i.aaj
  br i1 %exitcond29.not.i.i.i, label %.invoke825.i, label %bb.fy

bb.fy:                                            ; preds = %.lr.ph14.i.i.i
  %i.abe = add nuw nsw i64 %.sroa.013.012.i.i.i, 1 ; 2 uses
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.1.i, i64 %.sroa.013.012.i.i.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 147464
  %i.abh = load i64, ptr %i.abg, align 8, !noalias !33174, !noundef !75
  %i.abi = lshr i64 %i.abh, 28
  %i.abj = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.0.113.i.i.i
  %i.abk = trunc i64 %i.abi to i8
  store i8 %i.abk, ptr %i.abj, align 1, !alias.scope !33179, !noalias !33180
  %i.abl = add nuw nsw i64 %.sroa.0.113.i.i.i, 1
  %exitcond30.not.i.i.i = icmp eq i64 %i.abe, %i.zr
  br i1 %exitcond30.not.i.i.i, label %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderxE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %.lr.ph14.i.i.i, !llvm.loop !32855

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.fz
  %.sroa.0.011.i.i.i = phi i64 [ %i.abm, %bb.fz ], [ %.sroa.0.011.i.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.011.010.i.i.i = phi i64 [ %i.abn, %bb.fz ], [ %.sroa.011.010.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.abm = add nuw nsw i64 %.sroa.0.011.i.i.i, 8  ; 5 uses
  %exitcond26.i.i.i = icmp eq i64 %.sroa.011.010.i.i.i, 288
  br i1 %exitcond26.i.i.i, label %.invoke827.i, label %bb.fz, !prof !81

bb.fz:                                            ; preds = %scalar.ph
  %i.abn = add nuw nsw i64 %.sroa.011.010.i.i.i, 1 ; 2 uses
  %i.abo = getelementptr inbounds nuw [16 x i8], ptr %i.zs, i64 %.sroa.011.010.i.i.i
  %i.abp = load i64, ptr %i.abo, align 8, !noalias !33174, !noundef !75
  %i.abq = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.0.011.i.i.i
  store i64 %i.abp, ptr %i.abq, align 1, !alias.scope !33177, !noalias !33178
  %exitcond27.not.i.i.i = icmp eq i64 %i.abn, %i.zr
  br i1 %exitcond27.not.i.i.i, label %.preheader.i.i.i, label %scalar.ph, !llvm.loop !32856

_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderxE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.fy, %.thread.i.i
  %i.abr = trunc nuw i8 %.sroa.8.0.i to i1
  br i1 %i.abr, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderxE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !33181)
  %i.abs = icmp slt i64 %i.fn, 0
  br i1 %i.abs, label %bb.gb, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i: ; preds = %bb.ga
  %.pre.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !33182, !noalias !33183
  br label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implxECsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.abt = sub i64 0, %i.fn                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33184)
  %i.abu = load i64, ptr %i.af, align 8, !range !76, !alias.scope !33185, !noalias !33183, !noundef !75
  %i.abv = sub nsw i64 %i.abu, %i.fo
  %i.abw = icmp ult i64 %i.abv, %i.abt
  br i1 %i.abw, label %bb.gc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, !prof !81

bb.gc:                                            ; preds = %bb.gb
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.fo, i64 noundef %i.abt, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i unwind label %bb.gu, !noalias !33186

.noexc14.i:                                       ; preds = %bb.gc
  %.pre.i.i14.i.i = load i64, ptr %i.fw, align 8, !alias.scope !33187, !noalias !33183
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i: ; preds = %.noexc14.i, %bb.gb
  %i.abx = phi i64 [ %i.fo, %bb.gb ], [ %.pre.i.i14.i.i, %.noexc14.i ] ; 4 uses
  %i.aby = load ptr, ptr %i.fv, align 8, !alias.scope !33187, !noalias !33183, !nonnull !75, !noundef !75 ; 3 uses
  %i.abz = icmp sgt i64 %i.abx, -1
  call void @llvm.assume(i1 %i.abz)
  %i.aca = getelementptr i8, ptr %i.aby, i64 %i.abx ; 2 uses
  %i.acb = icmp samesign ugt i64 %i.abt, 1
  br i1 %i.acb, label %._crit_edge.thread.i.i.i.i, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %i.acc = xor i64 %i.fn, -1                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aca, i8 0, i64 range(i64 0, -1) %i.acc, i1 false), !noalias !33188
  %i.acd = add nuw i64 %i.abx, %i.acc             ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.aby, i64 %i.acd
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %._crit_edge.thread.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %.sroa.0.0.lcssa28.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %i.aca, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ]
  %storemerge.lcssa27.i.i.i.i = phi i64 [ %i.acd, %._crit_edge.thread.i.i.i.i ], [ %i.abx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i.i, align 1, !noalias !33188
  %i.ace = add nuw i64 %storemerge.lcssa27.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ace, %i.fn
  br i1 %.not.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implxECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %.invoke.i, !prof !113

bb.gd:                                            ; preds = %_RNvMsa_NtCs1BCiKJoB9mN_4fsst4fsstINtB5_11FsstEncoderxE6exportCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !33189)
  call void @llvm.experimental.noalias.scope.decl(metadata !33190)
  call void @llvm.experimental.noalias.scope.decl(metadata !33191)
  call void @llvm.experimental.noalias.scope.decl(metadata !33192)
  %i.acf = load i64, ptr %i.fl, align 8, !alias.scope !33193, !noalias !33194, !noundef !75 ; 11 uses
  %.not.i15.i.i = icmp eq i64 %i.acf, 0
  br i1 %.not.i15.i.i, label %.invoke825.i, label %.split.i16.i.i

.split.i16.i.i:                                   ; preds = %bb.gd
  %i.acg = load ptr, ptr %i.fk, align 8, !alias.scope !33193, !noalias !33194, !nonnull !75, !noundef !75 ; 4 uses
  store i64 0, ptr %i.acg, align 8, !noalias !33195
  %i.ach = icmp ugt i64 %i.ew, 15
  br i1 %i.ach, label %.lr.ph97.i.i.i, label %._crit_edge98.i.thread.i.i

.lr.ph97.i.i.i:                                   ; preds = %.split.i16.i.i
  %i.aci = trunc i16 %i.zh to i8
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 131072
  %i.ack = load i64, ptr %i.fw, align 8, !alias.scope !33182, !noalias !33183 ; 10 uses
  %i.acl = load ptr, ptr %i.fv, align 8, !alias.scope !33182, !noalias !33183, !nonnull !75 ; 3 uses
  br label %bb.gg

._crit_edge98.i.i.i:                              ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !33196)
  %i.acm = icmp sgt i64 %i.ack, -1
  call void @llvm.assume(i1 %i.acm)
  %i.acn = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i, %i.ack
  br i1 %i.acn, label %bb.ge, label %._crit_edge98.i.thread.i.i

bb.ge:                                            ; preds = %._crit_edge98.i.i.i
  %i.aco = sub nuw nsw i64 %.sroa.0.1.lcssa.i.i.i, %i.ack ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33197)
  %i.acp = load i64, ptr %i.af, align 8, !range !76, !alias.scope !33198, !noalias !33199, !noundef !75
  %i.acq = sub nsw i64 %i.acp, %i.ack
  %i.acr = icmp ugt i64 %i.aco, %i.acq
  br i1 %i.acr, label %bb.gf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i, !prof !81

bb.gf:                                            ; preds = %bb.ge
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.ack, i64 noundef %i.aco, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.gu, !noalias !33186

.noexc17.i:                                       ; preds = %bb.gf
  %.pre.i.i.i19.i.i = load i64, ptr %i.fw, align 8, !alias.scope !33200, !noalias !33199
  %.pre522.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !33200, !noalias !33199
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i: ; preds = %.noexc17.i, %bb.ge
  %i.acs = phi ptr [ %i.acl, %bb.ge ], [ %.pre522.i.i, %.noexc17.i ] ; 2 uses
  %i.act = phi i64 [ %i.ack, %bb.ge ], [ %.pre.i.i.i19.i.i, %.noexc17.i ] ; 4 uses
  %i.acu = icmp sgt i64 %i.act, -1
  call void @llvm.assume(i1 %i.acu)
  %i.acv = getelementptr i8, ptr %i.acs, i64 %i.act ; 2 uses
  %i.acw = icmp samesign ugt i64 %i.aco, 1
  br i1 %i.acw, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i18.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i
  %i.acx = add nsw i64 %i.aco, -1                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.acv, i8 0, i64 range(i64 0, -1) %i.acx, i1 false), !noalias !33201
  %i.acy = add nuw i64 %i.act, %i.acx             ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.acs, i64 %i.acy
  br label %._crit_edge.i.i.i18.i.i

._crit_edge.i.i.i18.i.i:                          ; preds = %._crit_edge.thread.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i
  %.sroa.0.0.lcssa28.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.acv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i ]
  %storemerge.lcssa27.i.i.i.i.i = phi i64 [ %i.acy, %._crit_edge.thread.i.i.i.i.i ], [ %i.act, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i17.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i.i.i, align 1, !noalias !33201
  %i.acz = add nuw i64 %storemerge.lcssa27.i.i.i.i.i, 1
  br label %._crit_edge98.i.thread.i.i

bb.gg:                                            ; preds = %bb.gl, %.lr.ph97.i.i.i
  %.sroa.017.096.i.i.i = phi i64 [ 1, %.lr.ph97.i.i.i ], [ %i.ada, %bb.gl ] ; 4 uses
  %.sroa.0.095.i.i.i = phi i64 [ 0, %.lr.ph97.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i, %bb.gl ] ; 2 uses
  %i.ada = add nuw nsw i64 %.sroa.017.096.i.i.i, 1 ; 2 uses
  %i.adb = getelementptr [8 x i8], ptr %i.eu, i64 %.sroa.017.096.i.i.i ; 2 uses
  %i.adc = getelementptr i8, ptr %i.adb, i64 -8
  %i.add = load i64, ptr %i.adc, align 8, !alias.scope !33202, !noalias !33203, !noundef !75 ; 2 uses
  %i.ade = load i64, ptr %i.adb, align 8, !alias.scope !33202, !noalias !33203, !noundef !75 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(520) %i.c, i8 0, i64 520, i1 false), !noalias !33195
  %i.adf = icmp ult i64 %i.add, %i.ade
  br i1 %i.adf, label %.lr.ph.i21.i.i, label %._crit_edge.i.i.i

._crit_edge98.i.thread.i.i:                       ; preds = %.split.i16.i.i, %._crit_edge.i.i.i18.i.i, %._crit_edge98.i.i.i
  %storemerge.i.i.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i.i, %._crit_edge98.i.i.i ], [ %i.acz, %._crit_edge.i.i.i18.i.i ], [ 0, %.split.i16.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i.i, ptr %i.fw, align 8, !alias.scope !33204, !noalias !33199
  call void @llvm.experimental.noalias.scope.decl(metadata !33205)
  %i.adg = icmp ult i64 %i.acf, 1152921504606846976
  call void @llvm.assume(i1 %i.adg)
  %i.adh = icmp samesign ugt i64 %i.ex, %i.acf
  br i1 %i.adh, label %bb.gh, label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxECsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.gh:                                            ; preds = %._crit_edge98.i.thread.i.i
  %i.adi = sub nuw nsw i64 %i.ex, %i.acf          ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33206)
  %i.adj = load i64, ptr %i.ag, align 8, !range !76, !alias.scope !33207, !noalias !33194, !noundef !75
  %i.adk = sub nsw i64 %i.adj, %i.acf
  %i.adl = icmp ugt i64 %i.adi, %i.adk
  br i1 %i.adl, label %bb.gi, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, !prof !81

bb.gi:                                            ; preds = %bb.gh
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.acf, i64 noundef %i.adi, i64 noundef 8, i64 noundef 8)
          to label %.noexc18.i unwind label %bb.gu, !noalias !33208

.noexc18.i:                                       ; preds = %bb.gi
  %.pre.i.i34.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !33209, !noalias !33194
  %.pre.i.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !33209, !noalias !33194
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %.noexc18.i, %bb.gh
  %i.adm = phi ptr [ %i.acg, %bb.gh ], [ %.pre.i.i.i, %.noexc18.i ] ; 3 uses
  %i.adn = phi i64 [ %i.acf, %bb.gh ], [ %.pre.i.i34.i.i.i, %.noexc18.i ] ; 5 uses
  %i.ado = icmp ult i64 %i.adn, 1152921504606846976
  call void @llvm.assume(i1 %i.ado)
  %i.adp = getelementptr [8 x i8], ptr %i.adm, i64 %i.adn ; 2 uses
  %i.adq = icmp samesign ugt i64 %i.adi, 1
  br i1 %i.adq, label %.lr.ph.i.i.preheader.i.i.i, label %._crit_edge.i.i30.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %i.adr = xor i64 %i.acf, -1
  %i.ads = add nsw i64 %i.ex, %i.adr
  %i.adt = shl nuw nsw i64 %i.ads, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.adp, i8 0, i64 %i.adt, i1 false), !noalias !33210
  %i.adu = add nuw nsw i64 %i.adn, %i.adi
  %reass.sub.i.i = shl nuw i64 %i.adu, 3
  %i.adv = getelementptr i8, ptr %i.adm, i64 %reass.sub.i.i
  %scevgep.i.i.i = getelementptr i8, ptr %i.adv, i64 -8
  %i.adw = add nsw i64 %i.adi, -1
  %i.adx = add nuw nsw i64 %i.adw, %i.adn
  br label %._crit_edge.i.i30.i.i.i

._crit_edge.i.i30.i.i.i:                          ; preds = %.lr.ph.i.i.preheader.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %.sroa.0.0.lcssa28.i.i31.i.i.i = phi ptr [ %scevgep.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.adp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ]
  %storemerge.lcssa27.i.i32.i.i.i = phi i64 [ %i.adx, %.lr.ph.i.i.preheader.i.i.i ], [ %i.adn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ]
  store i64 0, ptr %.sroa.0.0.lcssa28.i.i31.i.i.i, align 8, !noalias !33210
  %i.ady = add nuw nsw i64 %storemerge.lcssa27.i.i32.i.i.i, 1
  br label %_RINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxECsjjpCCFGI3ul_14lance_encoding.exit.i.i

._crit_edge.i.i.i:                                ; preds = %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %bb.gg
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %.sroa.0.095.i.i.i, %bb.gg ], [ %.sroa.0.2.i.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 6 uses
  %i.adz = icmp sgt i64 %.sroa.0.1.lcssa.i.i.i, -1
  br i1 %i.adz, label %bb.gj, label %bb.gk, !prof !78

.lr.ph.i21.i.i:                                   ; preds = %bb.gg, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.04.094.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %i.add, %bb.gg ] ; 6 uses
  %.sroa.0.193.i.i.i = phi i64 [ %.sroa.0.2.i.i.i, %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ], [ %.sroa.0.095.i.i.i, %bb.gg ] ; 2 uses
  %i.aea = add i64 %.sroa.04.094.i.i.i, 511       ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ade, i64 %i.aea) ; 5 uses
  %i.aeb = sub i64 %.sroa.0.0.i.i.i.i, %.sroa.04.094.i.i.i ; 6 uses
  %i.aec = icmp ult i64 %i.aeb, 521
  br i1 %i.aec, label %bb.gm, label %.invoke827.i, !prof !114

bb.gj:                                            ; preds = %._crit_edge.i.i.i
  %exitcond.not.i20.i.i = icmp eq i64 %.sroa.017.096.i.i.i, %i.acf
  br i1 %exitcond.not.i20.i.i, label %.invoke825.i, label %bb.gl

bb.gk:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #66
          to label %.noexc19.i unwind label %bb.gu, !noalias !33103

.noexc19.i:                                       ; preds = %bb.gk
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %.sroa.017.096.i.i.i
  store i64 %.sroa.0.1.lcssa.i.i.i, ptr %i.aed, align 8, !noalias !33195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33195
  %exitcond134.not.i.i.i = icmp eq i64 %i.ada, %i.ex
  br i1 %exitcond134.not.i.i.i, label %._crit_edge98.i.i.i, label %bb.gg

bb.gm:                                            ; preds = %.lr.ph.i21.i.i
  %i.aee = icmp ugt i64 %.sroa.04.094.i.i.i, -512
  %.not26.i.i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.fn
  %or.cond.i.i.i = or i1 %i.aee, %.not26.i.i.i
  br i1 %or.cond.i.i.i, label %.invoke827.i, label %bb.gn, !prof !100

bb.gn:                                            ; preds = %bb.gm
  %i.aef = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.04.094.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %i.aef, i64 range(i64 0, -9223372036854775808) %i.aeb, i1 false), !alias.scope !33211, !noalias !33212
  %.not27.i.i.i = icmp eq i64 %i.aeb, 520
  br i1 %.not27.i.i.i, label %.invoke825.i, label %bb.go

.invoke827.i:                                     ; preds = %scalar.ph, %bb.gm, %.lr.ph.i21.i.i
  %i.aeg = phi i64 [ 0, %.lr.ph.i21.i.i ], [ %.sroa.04.094.i.i.i, %bb.gm ], [ %.sroa.0.011.i.i.i, %scalar.ph ]
  %i.aeh = phi i64 [ %i.aeb, %.lr.ph.i21.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.gm ], [ %i.abm, %scalar.ph ]
  %i.aei = phi i64 [ 520, %.lr.ph.i21.i.i ], [ %i.fn, %bb.gm ], [ 2312, %scalar.ph ]
  %i.aej = phi ptr [ @334, %.lr.ph.i21.i.i ], [ @333, %bb.gm ], [ @2104, %scalar.ph ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.aeg, i64 noundef %i.aeh, i64 noundef %i.aei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aej) #66
          to label %.cont828.i unwind label %bb.gu, !noalias !33103

.cont828.i:                                       ; preds = %.invoke827.i
  unreachable

bb.go:                                            ; preds = %bb.gn
  %i.aek = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aeb
  store i8 %i.aci, ptr %i.aek, align 1, !noalias !33195
  call void @llvm.experimental.noalias.scope.decl(metadata !33213)
  %.not.i.i22.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, %.sroa.04.094.i.i.i
  br i1 %.not.i.i22.i.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %.lr.ph.i.i23.i.i

.lr.ph.i.i23.i.i:                                 ; preds = %bb.go, %bb.gt
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.afp, %bb.gt ], [ 0, %bb.go ] ; 2 uses
  %i.ael = phi i64 [ %i.aft, %bb.gt ], [ %.sroa.0.193.i.i.i, %bb.go ] ; 5 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.07.i.i.i.i
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.aem, align 1, !alias.scope !33213, !noalias !33214 ; 4 uses
  %i.aen = and i64 %.sroa.06.0.copyload.i.i.i.i, 65535
  %i.aeo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1.i, i64 %i.aen
  %i.aep = load i16, ptr %i.aeo, align 2, !alias.scope !33189, !noalias !33215, !noundef !75 ; 2 uses
  %i.aeq = and i64 %.sroa.06.0.copyload.i.i.i.i, 16777215
  %i.aer = mul nuw nsw i64 %i.aeq, 2971215073     ; 2 uses
  %i.aes = lshr i64 %i.aer, 15
  %i.aet = xor i64 %i.aes, %i.aer
  %i.aeu = and i64 %i.aet, 1023
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %i.acj, i64 %i.aeu ; 2 uses
  %i.aew = load i64, ptr %i.aev, align 8, !alias.scope !33189, !noalias !33215, !noundef !75
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.aey = load i64, ptr %i.aex, align 8, !alias.scope !33189, !noalias !33215, !noundef !75 ; 3 uses
  %i.aez = add i64 %i.ael, 1                      ; 3 uses
  %i.afa = icmp ult i64 %i.aez, %i.ack
  br i1 %i.afa, label %bb.gp, label %.invoke825.i

bb.gp:                                            ; preds = %.lr.ph.i.i23.i.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.aez
  %i.afc = trunc i64 %.sroa.06.0.copyload.i.i.i.i to i8
  store i8 %i.afc, ptr %i.afb, align 1, !noalias !33216
  %i.afd = icmp ult i64 %i.aey, 4294967296
  br i1 %i.afd, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.afe = and i64 %i.aey, 63
  %i.aff = lshr i64 -1, %i.afe
  %i.afg = and i64 %i.aff, %.sroa.06.0.copyload.i.i.i.i
  %i.afh = icmp eq i64 %i.aew, %i.afg
  br i1 %i.afh, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.afi = lshr i64 %i.aey, 16
  %i.afj = trunc nuw i64 %i.afi to i16
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp
  %.sroa.03.0.i.i.i.i = phi i16 [ %i.afj, %bb.gr ], [ %i.aep, %bb.gq ], [ %i.aep, %bb.gp ] ; 3 uses
  %i.afk = icmp ult i64 %i.ael, %i.ack
  br i1 %i.afk, label %bb.gt, label %.invoke825.i

bb.gt:                                            ; preds = %bb.gs
  %i.afl = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.ael
  %i.afm = trunc i16 %.sroa.03.0.i.i.i.i to i8
  store i8 %i.afm, ptr %i.afl, align 1, !noalias !33216
  %i.afn = lshr i16 %.sroa.03.0.i.i.i.i, 12
  %i.afo = zext nneg i16 %i.afn to i64
  %i.afp = add nuw nsw i64 %.sroa.0.07.i.i.i.i, %i.afo ; 2 uses
  %i.afq = lshr i16 %.sroa.03.0.i.i.i.i, 8
  %i.afr = and i16 %i.afq, 1
  %narrow.i.i.i.i = add nuw nsw i16 %i.afr, 1
  %i.afs = zext nneg i16 %narrow.i.i.i.i to i64
  %i.aft = add nuw i64 %i.ael, %i.afs             ; 2 uses
  %i.afu = icmp samesign ult i64 %i.afp, %i.aeb
  br i1 %i.afu, label %.lr.ph.i.i23.i.i, label %_RNCINvNtCs1BCiKJoB9mN_4fsst4fsst13compress_bulkxE0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB5_21ConstantPageScheduler7try_new:bb.a
bb.ak:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.bf, ptr noundef nonnull readonly align 1 dereferenceable(60) @1481, i64 range(i64 0, -9223372036854775808) 60, i1 false), !noalias !35193
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !35194
  %i.bx = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !35194 ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.al, label %bb.am, !prof !77

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i77 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i76, !noalias !35195

.noexc.i77:                                       ; preds = %bb.al
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i76: ; preds = %bb.al
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef 60, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !35196
  br label %.body78

bb.am:                                            ; preds = %bb.ak
  store i64 60, ptr %i.bx, align 8, !noalias !35195
  %.sroa.5.0..sroa_idx2.i74 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bf, ptr %.sroa.5.0..sroa_idx2.i74, align 8, !noalias !35195
  %.sroa.6.0..sroa_idx4.i75 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 60, ptr %.sroa.6.0..sroa_idx4.i75, align 8, !noalias !35195
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ca, align 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bx, ptr %.sroa.4178.0..sroa_idx, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @83, ptr %.sroa.5179.0..sroa_idx, align 8
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @1482, ptr %.sroa.6180.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ao, %bb.am
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !75, !nonnull !75, !noundef !75
  invoke void %i.cc(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4150.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit82 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i95.thread264, !inline_history !102

bb.an:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !35197, !nonnull !75, !noundef !75
  invoke void %i.cf(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4150.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %.thread222 unwind label %bb.af, !inline_history !102

bb.ao:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.invoke

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit82: ; preds = %.invoke, %bb.l, %bb.m, %bb.q, %bb.at
  %i.ch = atomicrmw sub ptr %5, i64 1 release, align 8, !noalias !35198
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit87

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit82
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE9drop_slowBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.j)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit87

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit55: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !35199)
  %.sroa.06.0.copyload.i88 = load i64, ptr %i.e, align 8, !alias.scope !35200, !noalias !35201 ; 3 uses
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i90 = load ptr, ptr %.sroa.4.0..sroa_idx.i89, align 8, !alias.scope !35200, !noalias !35201 ; 3 uses
  %.sroa.57.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.57.0.copyload.i92 = load i64, ptr %.sroa.57.0..sroa_idx.i91, align 8, !alias.scope !35200, !noalias !35201
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !35202
  %i.cj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !35202 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.aq, label %bb.at, !prof !77

bb.aq:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit55
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i96 unwind label %bb.ar, !noalias !35203

.noexc.i96:                                       ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = icmp eq i64 %.sroa.06.0.copyload.i88, 0
  br i1 %i.cm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i95.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i90) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i90, i64 noundef %.sroa.06.0.copyload.i88, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !35204
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i95.thread

bb.at:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit55
  store i64 %.sroa.06.0.copyload.i88, ptr %i.cj, align 8, !noalias !35203
  %.sroa.5.0..sroa_idx2.i93 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.sroa.4.0.copyload.i90, ptr %.sroa.5.0..sroa_idx2.i93, align 8, !noalias !35203
  %.sroa.6.0..sroa_idx4.i94 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %.sroa.57.0.copyload.i92, ptr %.sroa.6.0..sroa_idx4.i94, align 8, !noalias !35203
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cn, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cj, ptr %.sroa.4195.0..sroa_idx, align 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @83, ptr %.sroa.5196.0..sroa_idx, align 8
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @1486, ptr %.sroa.6197.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !35205, !nonnull !75, !noundef !75
  invoke void %i.cp(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4150.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit82 unwind label %bb.c, !inline_history !102

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit: ; preds = %bb.b, %.thread222
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4) #67
          to label %bb.ax unwind label %bb.af

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit87: ; preds = %bb.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsjjpCCFGI3ul_14lance_encoding.exit82
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit87
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.av:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit87
  %i.cr = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !35206
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i95.thread: ; preds = %bb.ar, %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i95
  %eh.lpad-body99262 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i95 ], [ %i.cl, %bb.as ], [ %i.cl, %bb.ar ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !35207, !nonnull !75, !noundef !75
  invoke void %i.cu(ptr noundef %.sroa.6.0.copyload, ptr noundef %.sroa.4150.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %.thread222 unwind label %bb.af, !inline_history !102

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit, %bb.au
  %.pn48 = phi { ptr, i32 } [ %i.cq, %bb.au ], [ %.pn44, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit ]
  %i.cv = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !35208
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsjjpCCFGI3ul_14lance_encoding.exit105

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsjjpCCFGI3ul_14lance_encoding.exit105

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTyyEEECsjjpCCFGI3ul_14lance_encoding.exit105: ; preds = %bb.ay, %bb.ax
  resume { ptr, i32 } %.pn48
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35213)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35214, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35213
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35213, !nonnull !75, !noundef !75 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 range(i64 0, -1) %i.o, i1 false), !noalias !35213
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1, !noalias !35213
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35221)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35222, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 4, i64 noundef 4)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35221
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35221, !nonnull !75, !noundef !75
  %i.l = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !35221
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !noalias !35221
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !35219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i32 %2, ptr %.sroa.0.0.lcssa28.i, align 4, !noalias !35221
  %i.y = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1           ; 2 uses
  store i32 %2, ptr %.sroa.0.021.i, align 4, !noalias !35221
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !35220

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35229)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35230, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 4, i64 noundef 4)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35229
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35229, !nonnull !75, !noundef !75
  %i.l = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !35229
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !noalias !35229
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !35227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i32 %2, ptr %.sroa.0.0.lcssa28.i, align 4, !noalias !35229
  %i.y = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1           ; 2 uses
  store i32 %2, ptr %.sroa.0.021.i, align 4, !noalias !35229
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvXNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2_38PackedStructFixedWidthMiniBlockEncoderNtNtNtNtB6_7logical9primitive9miniblock19MiniBlockCompressor8compress:bb.a

bb.ay:                                            ; preds = %bb.bj, %bb.ax
  %i.gg = load i64, ptr %3, align 8, !range !149, !noundef !75 ; 2 uses
  %i.gh = icmp ne i64 %i.gg, -9223372036854775800
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp sgt i64 %i.gg, -1
  br i1 %i.gi, label %bb.bc, label %.sink.split

bb.az:                                            ; preds = %bb.bl, %bb.be, %bb.aw, %bb.as
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.ba:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, i64 56, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -2, ptr %i.gk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br i1 %i.dg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gl = shl nuw i64 %i.af, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i13.i, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !61373
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.gm = load i64, ptr %3, align 8, !range !149, !noundef !75 ; 2 uses
  %i.gn = icmp ne i64 %i.gm, -9223372036854775800
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp sgt i64 %i.gm, -1
  br i1 %i.go, label %bb.bc, label %.sink.split

.sink.split:                                      ; preds = %bb.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %3)
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.ay
  ret void

.thread61:                                        ; preds = %.body.i28, %bb.aq, %bb.ap
  %.pn19.pn65 = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %i.fy, %bb.aq ], [ %.pn19.i, %.body.i28 ] ; 2 uses
  %i.gp = icmp eq i64 %i.af, 0
  br i1 %i.gp, label %.body, label %bb.bd

bb.bd:                                            ; preds = %.thread61
  %i.gq = shl nuw i64 %i.af, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i13.i, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !61374
  br label %.body

.body:                                            ; preds = %bb.bd, %.thread61, %bb.ap, %bb.bh, %bb.bi, %bb.bf, %bb.be
  %.pn22.pn = phi { ptr, i32 } [ %eh.lpad-body27, %bb.be ], [ %i.gx, %bb.bh ], [ %i.gu, %bb.bf ], [ %i.gx, %bb.bi ], [ %.pn, %bb.ap ], [ %.pn19.pn65, %.thread61 ], [ %.pn19.pn65, %bb.bd ]
  %i.gr = load i64, ptr %3, align 8, !range !149, !noundef !75 ; 2 uses
  %i.gs = icmp ne i64 %i.gr, -9223372036854775800
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp sgt i64 %i.gr, -1
  br i1 %i.gt, label %bb.bk, label %bb.bl

bb.be:                                            ; preds = %.body.i, %bb.f
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ax, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data15StructDataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.y) #67
          to label %.body unwind label %bb.az

bb.bf:                                            ; preds = %switch.lookup
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.051.0.copyload = load i64, ptr %i.p, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx53, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx56, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !61375
  %i.gv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !61375 ; 5 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bg, label %bb.bj, !prof !77

bb.bg:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc48 unwind label %bb.bh

.noexc48:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = icmp eq i64 %.sroa.051.0.copyload, 0
  br i1 %i.gy, label %.body, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.051.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !61376
  br label %.body

bb.bj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit
  store i64 %.sroa.051.0.copyload, ptr %i.gv, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx54, align 8
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx57, align 8
  store i8 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gv, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2704, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -2, ptr %i.gz, align 8
  br label %bb.ay

bb.bk:                                            ; preds = %bb.bl, %.body
  resume { ptr, i32 } %.pn22.pn

bb.bl:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9DataBlockEBF_(ptr noalias noundef align 8 dereferenceable(80) %3) #67
          to label %bb.bk unwind label %bb.az
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2_19CachedConstantStateNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noundef !75
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -2
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noundef !75
  %.not7 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, -2
  %.sroa.03.0 = select i1 %.not7, i64 0, i64 %i.k
  %i.l = add i64 %.sroa.0.0, %i.a
  %i.m = add i64 %i.l, %.sroa.03.0
  ret i64 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB2_19Lz4BufferCompressorNtB4_16BufferCompressor10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 1                ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !75 ; 10 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61389)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %bb.c

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61390)
  %i.j = load i64, ptr %4, align 8, !range !76, !alias.scope !61391, !noundef !75
  %i.k = sub nsw i64 %i.j, %i.h
  %i.l = icmp ult i64 %i.k, %i.f
  br i1 %i.l, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.g, align 8, !alias.scope !61392
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.h, %bb.c ], [ %.pre.i.i, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !61392, !nonnull !75, !noundef !75 ; 3 uses
  %i.p = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr i8, ptr %i.o, i64 %i.m     ; 2 uses
  %.not63 = icmp eq i32 %i.e, 1
  br i1 %.not63, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.r = add nsw i64 %i.f, -1                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 range(i64 0, -1) %i.r, i1 false), !noalias !61392
  %i.s = add nuw i64 %i.m, %i.r                   ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.o, i64 %i.s
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, %._crit_edge.thread.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  %storemerge.lcssa27.i.i = phi i64 [ %i.s, %._crit_edge.thread.i.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i, align 1, !noalias !61392
  %i.t = add nuw i64 %storemerge.lcssa27.i.i, 1   ; 5 uses
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !61389
  %i.u = icmp ugt i64 %i.h, %i.t
  br i1 %i.u, label %bb.g, label %bb.f, !prof !61393

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !61394
  %i.v = tail call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !61394 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.p

bb.f:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit
  %i.x = phi ptr [ %.pre, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %i.o, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit ]
  %storemerge.i57 = phi i64 [ %i.h, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.thread ], [ %i.t, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit ] ; 2 uses
  %i.y = sub nuw i64 %storemerge.i57, %i.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.h
  %i.aa = tail call { i64, ptr } @_RNvNtCslBfgf0k95w8_3lz45block20decompress_to_buffer(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef 0, i32 undef, ptr noalias noundef nonnull %i.z, i64 noundef %i.y) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %bb.h, label %bb.l

bb.g:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.t, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2705) #66
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ac, ptr %i.c, align 8, !noalias !61395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61395
  store ptr %i.c, ptr %i.a, align 8, !noalias !61395
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !61395
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1073, ptr noundef nonnull %i.a)
          to label %_RNCNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB4_19Lz4BufferCompressorNtB6_16BufferCompressor10decompress0Bc_.exit unwind label %bb.i, !noalias !61395

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #67
          to label %bb.k unwind label %bb.j, !noalias !61395

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !61395
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ae

_RNCNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB4_19Lz4BufferCompressorNtB6_16BufferCompressor10decompress0Bc_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61395
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !61395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 11, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @1074 to i64), ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = add i64 %i.h, %i.ag                     ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, %storemerge.i57
  br i1 %i.ai, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !61396
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.l, %bb.m
  store i8 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit, %_RNCNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB4_19Lz4BufferCompressorNtB6_16BufferCompressor10decompress0Bc_.exit
  ret void

bb.o:                                             ; preds = %bb.e
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 29) #66
  unreachable

bb.p:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.v, ptr noundef nonnull align 1 dereferenceable(29) @2706, i64 29, i1 false)
  store i8 11, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2707, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB2_19Lz4BufferCompressorNtB4_16BufferCompressor6config(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4), (8, 9)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.a, align 4
  store i32 0, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB2_19Lz4BufferCompressorNtB4_16BufferCompressor8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !75 ; 12 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call { i64, ptr } @_RNvNtCslBfgf0k95w8_3lz45block14compress_bound(i64 noundef %3) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2709)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add nuw i64 %i.e, 4
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61407)
  %i.n = icmp ugt i64 %i.m, %i.e
  br i1 %i.n, label %bb.d, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit

bb.d:                                             ; preds = %bb.c
  %i.o = sub nuw i64 %i.m, %i.e                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61408)
  %i.p = load i64, ptr %4, align 8, !range !76, !alias.scope !61409, !noundef !75
  %i.q = sub nsw i64 %i.p, %i.e
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.e, i64 noundef %i.o, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !61410
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.e, %bb.d
  %i.s = phi i64 [ %i.e, %bb.d ], [ %.pre.i.i, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !61410, !nonnull !75, !noundef !75 ; 2 uses
  %i.v = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr i8, ptr %i.u, i64 %i.s     ; 2 uses
  %i.x = icmp ugt i64 %i.o, 1
  br i1 %i.x, label %._crit_edge.thread.i.i, label %._crit_edge.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.y = add i64 %i.o, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 range(i64 0, -1) %i.y, i1 false), !noalias !61410
  %i.z = add i64 %i.s, %i.y                       ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.u, i64 %i.z
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.thread.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.w, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  %storemerge.lcssa27.i.i = phi i64 [ %i.z, %._crit_edge.thread.i.i ], [ %i.s, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i, align 1, !noalias !61410
  %i.aa = add i64 %storemerge.lcssa27.i.i, 1
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.c, %._crit_edge.i.i
  %storemerge.i = phi i64 [ %i.m, %bb.c ], [ %i.aa, %._crit_edge.i.i ] ; 6 uses
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !61407
  %i.ab = icmp ugt i64 %i.e, %storemerge.i
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !81

bb.f:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !75, !noundef !75
  %i.ae = sub nuw i64 %storemerge.i, %i.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.e
  %i.ag = tail call { i64, ptr } @_RNvNtCslBfgf0k95w8_3lz45block18compress_to_buffer(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef -1, i32 undef, i1 noundef zeroext true, ptr noalias noundef nonnull %i.af, i64 noundef %i.ae) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %bb.h, label %bb.l

bb.g:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %storemerge.i, i64 noundef %storemerge.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2708) #66
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ai, ptr %i.c, align 8, !noalias !61411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61411
  store ptr %i.c, ptr %i.a, align 8, !noalias !61411
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !61411
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1075, ptr noundef nonnull %i.a)
          to label %_RNCNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB4_19Lz4BufferCompressorNtB6_16BufferCompressor8compress0Bc_.exit unwind label %bb.i, !noalias !61411

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #67
          to label %bb.k unwind label %bb.j, !noalias !61411

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !61411
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ak

_RNCNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB4_19Lz4BufferCompressorNtB6_16BufferCompressor8compress0Bc_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61411
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.637.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !61411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 11, ptr %0, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @1076 to i64), ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = add i64 %i.e, %i.am                     ; 2 uses
  %i.ao = icmp ugt i64 %i.an, %storemerge.i
  br i1 %i.ao, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.an, ptr %i.d, align 8, !alias.scope !61412
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.l, %bb.m
  store i8 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %_RNCNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block3lz4NtB4_19Lz4BufferCompressorNtB6_16BufferCompressor8compress0Bc_.exit, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE8truncateCsjjpCCFGI3ul_14lance_encoding.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB2_20ZstdBufferCompressorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2710, i64 noundef 20)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2712, i64 noundef 17, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2711)
  %i.d = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop() unnamed_addr #34 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull %i.a)
  store ptr %i.c, ptr %i.b, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsgczF5crJ4sT_3std7process5abort() #66
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvXs2r_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtBc_14ConstantLayoutNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtNtB5_13ScalarWrapperB1h_3fmtNtB2_5InnerB1h_3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !75, !align !139, !noundef !75 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !75 ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !61416, !noalias !61417, !noundef !75 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 67108864
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

switch.lookup:                                    ; preds = %bb.a
  %i.m = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNvXNvXsJ_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtBb_13FullZipLayoutNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtNtB5_13ScalarWrapperB1f_3fmtNtB2_5InnerB1f_3fmt, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.n = zext nneg i32 %i.b to i64
  %switch.gep10 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNvXNvXsJ_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtBb_13FullZipLayoutNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtNtB5_13ScalarWrapperB1f_3fmtNtB2_5InnerB1f_3fmt.4831, i64 %i.n
  %switch.load11 = load ptr, ptr %switch.gep10, align 8
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load11, i64 noundef %switch.ext)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.f, %bb.e, %bb.d, %switch.lookup
  %.sroa.0.0.in = phi i1 [ %i.o, %switch.lookup ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.j, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvXs2y_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtBc_10BlobLayoutNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtNtB5_13ScalarWrapperB1d_3fmtNtB2_5InnerB1d_3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !75, !align !139, !noundef !75 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !75 ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !61421, !noalias !61422, !noundef !75 ; 2 uses
  %i.f = and i32 %i.e, 33554432
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, 67108864
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.f:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

switch.lookup:                                    ; preds = %bb.a
  %i.m = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNvXNvXsJ_NtNtCsjjpCCFGI3ul_14lance_encoding6format4pb21NtBb_13FullZipLayoutNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtNtB5_13ScalarWrapperB1f_3fmtNtB2_5InnerB1f_3fmt, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
end_hunk_7
begin_hunk_8_@_RNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical8constantNtB5_20ConstantDecompressorNtNtBb_11compression25FixedPerValueDecompressor10decompress:bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63859)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !63860, !nonnull !75, !noundef !75
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !63861
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit.i unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i: ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63864)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !63865, !nonnull !75, !noundef !75
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !63866
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtCsjjpCCFGI3ul_14lance_encoding10statistics4StatIBx_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE9drop_slowB2h_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data19FixedWidthDataBlockEBF_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit.i, %bb.h
  ret void

bb.j:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noundef !75
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !75
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -7) i64 @_RNvXs0_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical8constantNtB5_20ConstantDecompressorNtNtBb_11compression25FixedPerValueDecompressor14bits_per_value(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !75
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = shl i64 %i.c, 3
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvXs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11chunk_indexNtB5_10RowMappingNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(48) %1) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !133, !noundef !75 ; 3 uses
  %i.b = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.c = select i1 %.inv, i64 2, i64 %i.b         ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !82, !alias.scope !63873, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !76, !alias.scope !63873
  %.sroa.0.0.v.i = or disjoint i64 %i.e, 2
  %.sroa.0.0.i = shl i64 %i.g, %.sroa.0.0.v.i
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !76, !alias.scope !63874
  %.sroa.0.0.v.i2 = add nuw nsw i64 %i.a, 2
  %.sroa.0.0.i3 = shl i64 %i.j, %.sroa.0.0.v.i2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i64, ptr %i.k, align 8, !noundef !75 ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.l, 7
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %i.p = load i64, ptr %i.h, align 8, !range !99, !alias.scope !63875, !noundef !75 ; 2 uses
  %.not.i = icmp eq i64 %i.p, -1
  %spec.select.i = select i1 %.not.i, i64 0, i64 %i.p
  %.sroa.01.0 = add i64 %i.m, %.sroa.0.0.i3
  %i.q = add i64 %.sroa.01.0, %i.o
  %i.r = add i64 %i.q, %spec.select.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.0.i, %bb.c ], [ %i.c, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB5_20ZstdBufferCompressorNtB7_16BufferCompressor10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8192 x i8], align 1              ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [88 x i8], align 8                ; 22 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 1, !alias.scope !64009, !noalias !64010
  %i.l = icmp eq i32 %.sroa.0.0.copyload.i, -47205080
  br i1 %i.l, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread5

_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !64011, !noundef !75
  %i.o = and i8 %i.n, 16
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread5

bb.e:                                             ; preds = %bb.aw, %bb.ay, %bb.ax, %bb.b
  ret void

_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread5: ; preds = %bb.d, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64013)
  %.sroa.0.0.copyload1.i = load i64, ptr %2, align 1, !alias.scope !64014, !noalias !64015 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !64013, !noalias !64016, !noundef !75 ; 10 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add i64 %i.q, %.sroa.0.0.copyload1.i     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64017)
  %i.t = icmp ugt i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.f:                                             ; preds = %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64018)
  %i.u = load i64, ptr %4, align 8, !range !76, !alias.scope !64019, !noalias !64016, !noundef !75
  %i.v = sub nsw i64 %i.u, %i.q
  %i.w = icmp ugt i64 %.sroa.0.0.copyload1.i, %i.v
  br i1 %i.w, label %bb.g, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.q, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef 1, i64 noundef 1), !noalias !64016
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !64020, !noalias !64016
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.x = phi i64 [ %i.q, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !64020, !noalias !64016, !nonnull !75, !noundef !75 ; 2 uses
  %i.aa = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.x    ; 2 uses
  %i.ac = icmp ugt i64 %.sroa.0.0.copyload1.i, 1
  br i1 %i.ac, label %._crit_edge.thread.i.i.i, label %._crit_edge.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.ad = add i64 %.sroa.0.0.copyload1.i, -1      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 range(i64 0, -1) %i.ad, i1 false), !noalias !64021
  %i.ae = add i64 %i.x, %i.ad                     ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %i.z, i64 %i.ae
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.thread.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.0.0.lcssa28.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.ab, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  %storemerge.lcssa27.i.i.i = phi i64 [ %i.ae, %._crit_edge.thread.i.i.i ], [ %i.x, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i.i, align 1, !noalias !64021
  %i.af = add i64 %storemerge.lcssa27.i.i.i, 1
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge.i.i.i, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread5
  %storemerge.i.i = phi i64 [ %i.s, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread5 ], [ %i.af, %._crit_edge.i.i.i ] ; 5 uses
  store i64 %storemerge.i.i, ptr %i.p, align 8, !alias.scope !64022, !noalias !64016
  %i.ag = icmp ugt i64 %i.q, %storemerge.i.i
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !81

bb.h:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !64013, !noalias !64016, !nonnull !75, !noundef !75
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = add nsw i64 %3, -8
  %i.al = sub nuw i64 %storemerge.i.i, %i.q
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.q
  %i.an = tail call { i64, ptr } @_RNvNtCskOWKGULsqwM_4zstd4bulk20decompress_to_buffer(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak, ptr noalias noundef nonnull %i.am, i64 noundef %i.al), !noalias !64023 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit.thread

bb.i:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.q, i64 noundef %storemerge.i.i, i64 noundef %storemerge.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2098) #66, !noalias !64024
  unreachable

_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit: ; preds = %bb.h
  %i.aq = extractvalue { i64, ptr } %i.an, 1
  call void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noundef nonnull %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2097), !noalias !64013
  %.pr = load i8, ptr %i.i, align 8
  %.not = icmp eq i8 %.pr, -1
  br i1 %.not, label %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit.thread, label %bb.aw

_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread: ; preds = %bb.c, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64025)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !64026
  %i.ar = tail call noundef i64 @_RNvMs5_CshGRE2o2IoKj_9zstd_safeNtB5_4DCtx7in_size(), !noalias !64027 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.j, !prof !80

bb.j:                                             ; preds = %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread
  %i.as = icmp eq i64 %i.ar, 0                    ; 3 uses
  br i1 %i.as, label %_RNvMNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEE13with_capacityCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !64028
  %i.at = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !64028 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RNvMNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEE13with_capacityCsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.m:                                             ; preds = %bb.k, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.k ], [ 0, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor20is_raw_stream_format.exit.thread ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ar) #66, !noalias !64029
  unreachable

_RNvMNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEE13with_capacityCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.l, %bb.j
  %.sroa.9.0.i.i.i.i = phi i64 [ %i.av, %bb.l ], [ 1, %bb.j ]
  %i.aw = inttoptr i64 %.sroa.9.0.i.i.i.i to ptr  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !64030
  invoke void @_RNvMs_NtNtCskOWKGULsqwM_4zstd6stream3rawNtB4_7Decoder15with_dictionary(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.o unwind label %bb.n, !noalias !64030

bb.n:                                             ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEE13with_capacityCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.as, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef 1) #63, !noalias !64030
  br label %common.resume.i

bb.o:                                             ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreaderINtB2_9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEE13with_capacityCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ay = load i64, ptr %i.g, align 8, !range !96, !noalias !64030, !noundef !75 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !64030, !noundef !75 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !64030
  br i1 %i.az, label %bb.p, label %.outer.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %i.as, label %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread10, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i17.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i17.i.i.i: ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef 1) #63, !noalias !64030
  br label %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread10

common.resume.i:                                  ; preds = %.body.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %i.ax, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread10: ; preds = %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i17.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !64026
  br label %bb.ay

.outer.i.i.i.i.i:                                 ; preds = %bb.o
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, i8 0, i64 17, i1 false), !noalias !64026
  %.sroa.10.i.i.sroa.4.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store ptr %2, ptr %.sroa.10.i.i.sroa.4.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !64026
  %.sroa.10.i.i.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 %3, ptr %.sroa.10.i.i.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !64026
  %.sroa.10.i.i.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.10.i.i.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !64026
  store i64 %i.ay, ptr %i.h, align 8, !noalias !64026
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !64026
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !64026
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  store i64 %i.ar, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !64026
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store i8 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !64026
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 81 ; 6 uses
  store i8 0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !noalias !64026
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 82 ; 7 uses
  store i8 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !noalias !64026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64034)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64035
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64037)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false), !noalias !64038
  br label %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i

_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i.critedge: ; preds = %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %.noexc25.i
  call void @llvm.experimental.noalias.scope.decl(metadata !64036)
  call void @llvm.experimental.noalias.scope.decl(metadata !64037)
  br label %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i

_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i.critedge, %.outer.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !64039)
  call void @llvm.experimental.noalias.scope.decl(metadata !64040)
  call void @llvm.experimental.noalias.scope.decl(metadata !64041)
  %i.bl = load i8, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !range !91, !alias.scope !64042, !noalias !64043, !noundef !75
  switch i8 %i.bl, label %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i.unreachabledefault [
    i8 0, label %bb.q
    i8 1, label %.loopexit66.i.i.i.i.i.i.i.i.i.i
    i8 2, label %.loopexit.i
  ]

bb.q:                                             ; preds = %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64044
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !64044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !noalias !64044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64044
  store ptr %i.f, ptr %i.c, align 8, !noalias !64044
  store i64 8192, ptr %i.bf, align 8, !noalias !64044
  store i64 0, ptr %i.bg, align 8, !noalias !64044
  %.val25.peel.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !64042, !noalias !64043 ; 2 uses
  %.val.peel.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !range !82, !alias.scope !64042, !noalias !64043
  %i.bm = trunc nuw i64 %.val.peel.pre.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.val5.i.peel.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val25.peel.pre.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !64045, !nonnull !75, !noundef !75
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.8.val.sink.i.peel.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val5.i.peel.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.val25.peel.pre.i.i.i.i.i.i.i.i.i.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64046
  store ptr %i.f, ptr %i.bh, align 8, !alias.scope !64047, !noalias !64048
  store i64 8192, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !64047, !noalias !64048
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !64047, !noalias !64048
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !64047, !noalias !64048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64046
  store ptr inttoptr (i64 1 to ptr), ptr %i.bi, align 8, !noalias !64046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !64044
  store ptr %i.d, ptr %i.a, align 8, !noalias !64046
  %i.bn = call noundef i64 @ZSTD_decompressStream(ptr noundef nonnull %.8.val.sink.i.peel.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi) #63, !noalias !64049
  %i.bo = invoke { i64, i64 } @_RNvCshGRE2o2IoKj_9zstd_safe10parse_code(i64 noundef %i.bn)
          to label %bb.t unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !64049 ; 2 uses

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsv_CshGRE2o2IoKj_9zstd_safeNtB5_15InBufferWrapperNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
end_hunk_8
begin_hunk_9_@_RNvXs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB5_20ZstdBufferCompressorNtB7_16BufferCompressor10decompress:bb.a
  %spec.select.i.i.i.i.i.i.i = select i1 %i.es, i8 %switch.idx.cast.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.et = icmp ne i8 %spec.select.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i8 %spec.select.i.i.i.i.i.i.i, 35
  br i1 %i.eu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.split36.i.i.i.i.i, %.split37.i.i.i.i.i, %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64035
  store ptr %.sroa.0.0.i.i13.i.i.i.i.i, ptr %i.e, align 8, !noalias !64035
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !64026

.noexc25.i:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64035
  br label %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i.critedge

.loopexit39.i:                                    ; preds = %bb.aj
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ar, %bb.ap, %_RINvXs1_NtNtCskOWKGULsqwM_4zstd6stream3rawNtB6_7DecoderNtB6_9Operation3runShECsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit44.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit47.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.loopexit73.i.i.i.i.i.i.i.i.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit39.i, %common.resume.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit39.i ], [ %lpad.loopexit44.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit47.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskOWKGULsqwM_4zstd6stream4read7DecoderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(88) %i.h) #67
          to label %common.resume.i unwind label %bb.av, !noalias !64026

bb.as:                                            ; preds = %bb.aq, %.split36.i.i.i.i.i, %.split37.i.i.i.i.i, %.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64035
  call void @llvm.experimental.noalias.scope.decl(metadata !64086)
  call void @llvm.experimental.noalias.scope.decl(metadata !64087)
  %.val1.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !64088, !noalias !64026, !noundef !75 ; 2 uses
  %i.ev = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ev, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i27.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i26.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i26.i: ; preds = %bb.as
  %.val.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !64088, !noalias !64026, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #63, !noalias !64089
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i27.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i27.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i26.i, %bb.as
  %i.ew = load i64, ptr %i.h, align 8, !range !82, !alias.scope !64090, !noalias !64026, !noundef !75
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.at, label %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i27.i
  call void @_RNvXs6_CshGRE2o2IoKj_9zstd_safeNtB5_4DCtxNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i), !noalias !64026
  br label %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit

.loopexit.i:                                      ; preds = %_RNvYINtNtNtCskOWKGULsqwM_4zstd6stream4read7DecoderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEEENtBT_4Read8read_bufCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %_RNvMs3_NtNtCscI6d9CVNmLh_4core2io12borrowed_bufNtB5_14BorrowedCursor11ensure_init.exit.i.i.i.i.i.i.i, %.backedge.peel.i.i.i.i.i.i.i.i.i.i, %_RNCNvYINtNtNtCskOWKGULsqwM_4zstd6stream4read7DecoderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEEENtBV_4Read8read_buf0CsjjpCCFGI3ul_14lance_encoding.exit.thread11.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64035
  call void @llvm.experimental.noalias.scope.decl(metadata !64091)
  call void @llvm.experimental.noalias.scope.decl(metadata !64092)
  %.val1.i.i28.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !64093, !noalias !64026, !noundef !75 ; 2 uses
  %i.ey = icmp eq i64 %.val1.i.i28.i, 0
  br i1 %i.ey, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i31.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i29.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i29.i: ; preds = %.loopexit.i
  %.val.i.i30.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !64093, !noalias !64026, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i30.i, i64 noundef %.val1.i.i28.i, i64 noundef 1) #63, !noalias !64094
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i31.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i31.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i29.i, %.loopexit.i
  %i.ez = load i64, ptr %i.h, align 8, !range !82, !alias.scope !64095, !noalias !64026, !noundef !75
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.au, label %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.au:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i31.i
  call void @_RNvXs6_CshGRE2o2IoKj_9zstd_safeNtB5_4DCtxNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i), !noalias !64026
  br label %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.av:                                            ; preds = %.body.i
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64026
  unreachable

_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i31.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !64026
  br label %bb.ax

_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderINtNtNtB4_2io6cursor6CursorRShEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i27.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !64026
  %.not3 = icmp eq ptr %.sroa.0.0.i.i13.i.i.i.i.i, null
  br i1 %.not3, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit.thread: ; preds = %bb.h, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread, %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit, %_RNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4_20ZstdBufferCompressor31decompress_length_prefixed_zstd.exit.thread
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.ay:                                            ; preds = %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread10, %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.0.0.i13 = phi ptr [ %i.bb, %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit.thread10 ], [ %.sroa.0.0.i.i13.i.i.i.i.i, %_RINvNtNtCskOWKGULsqwM_4zstd6stream9functions11copy_decodeINtNtNtCscI6d9CVNmLh_4core2io6cursor6CursorRShEQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit ]
  call void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %.sroa.0.0.i13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2823)
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB5_20ZstdBufferCompressorNtB7_16BufferCompressor6config(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 4
  store i32 1, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.b, ptr %i.d, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB5_20ZstdBufferCompressorNtB7_16BufferCompressor8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.787 = alloca [40 x i8], align 8          ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64125)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !64126, !noundef !75 ; 3 uses
  %i.l = load i64, ptr %4, align 8, !range !76, !alias.scope !64126, !noundef !75
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ult i64 %i.m, 8
  br i1 %i.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k, i64 noundef 8, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.j, align 8, !alias.scope !64125, !noundef !75
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %.sink102 = phi i64 [ %i.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i ], [ %i.k, %bb.a ] ; 3 uses
  %i.p = icmp sgt i64 %.sink102, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !64125, !nonnull !75, !noundef !75 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sink102
  store i64 %3, ptr %i.s, align 1, !noalias !64125
  %i.t = add nuw i64 %.sink102, 8                 ; 12 uses
  store i64 %i.t, ptr %i.j, align 8, !alias.scope !64125
  %i.u = tail call noundef i64 @_RNvCshGRE2o2IoKj_9zstd_safe14compress_bound(i64 noundef %3) ; 5 uses
  %i.v = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i64 %i.u, %i.t                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64127)
  %i.x = icmp ugt i64 %i.w, %i.t
  br i1 %i.x, label %bb.b, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64128)
  %i.y = load i64, ptr %4, align 8, !range !76, !alias.scope !64129, !noundef !75
  %i.z = sub nsw i64 %i.y, %i.t
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.t, i64 noundef %i.u, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !64130
  %.pre = load ptr, ptr %i.q, align 8, !alias.scope !64130
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ab = phi ptr [ %i.r, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.ac = phi i64 [ %i.t, %bb.b ], [ %.pre.i.i, %bb.c ] ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.ac  ; 2 uses
  %i.af = icmp ugt i64 %i.u, 1
  br i1 %i.af, label %._crit_edge.thread.i.i, label %._crit_edge.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.ag = add i64 %i.u, -1                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 range(i64 0, -1) %i.ag, i1 false), !noalias !64130
  %i.ah = add i64 %i.ac, %i.ag                    ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.ab, i64 %i.ah
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.thread.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.ae, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  %storemerge.lcssa27.i.i = phi i64 [ %i.ah, %._crit_edge.thread.i.i ], [ %i.ac, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i, align 1, !noalias !64130
  %i.ai = add i64 %storemerge.lcssa27.i.i, 1
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit, %._crit_edge.i.i
  %storemerge.i = phi i64 [ %i.w, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.ai, %._crit_edge.i.i ]
  store i64 %storemerge.i, ptr %i.j, align 8, !alias.scope !64127
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load atomic i32, ptr %i.aj acquire, align 8, !noalias !64131
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4e_20ZstdBufferCompressor14get_compressor0E0zEB4m_.exit.i, label %bb.d, !prof !78

bb.d:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit
  tail call fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE10initializeNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB49_20ZstdBufferCompressor14get_compressor0E0zEB4h_(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %1), !noalias !64131
  br label %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4e_20ZstdBufferCompressor14get_compressor0E0zEB4m_.exit.i

_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4e_20ZstdBufferCompressor14get_compressor0E0zEB4m_.exit.i: ; preds = %bb.d, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE6resizeCsjjpCCFGI3ul_14lance_encoding.exit
  %i.am = load i64, ptr %1, align 8, !range !99, !noalias !64131, !noundef !75
  %.not.i = icmp eq i64 %i.am, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4e_20ZstdBufferCompressor14get_compressor0E0zEB4m_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64131
  store ptr %1, ptr %i.e, align 8, !noalias !64132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !64132
  store ptr %i.e, ptr %i.d, align 8, !noalias !64132
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !64132
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull @851, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !64132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64131
  store i8 11, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.h, i64 7, i1 false)
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @852, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.643.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEECsjjpCCFGI3ul_14lance_encoding.exit70

bb.f:                                             ; preds = %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4e_20ZstdBufferCompressor14get_compressor0E0zEB4m_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.ap = cmpxchg ptr %i.ao, i32 0, i32 1 acquire monotonic, align 4, !noalias !64133
  %i.aq = extractvalue { i32, i1 } %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.g, !prof !78

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.ao), !noalias !64133
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !64133
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorE4lockCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.i, !prof !78

bb.i:                                             ; preds = %bb.h
  %i.au = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !64133
  %i.av = xor i1 %i.au, true
  %i.aw = zext i1 %i.av to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorE4lockCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorE4lockCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i.i = phi i8 [ %i.aw, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ay = load atomic i8, ptr %i.ax monotonic, align 4, !noalias !64133
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEINtBM_11PoisonErrorBH_EE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.j, !prof !78

bb.j:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorE4lockCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !64134
  store ptr %i.ao, ptr %i.g, align 8, !noalias !64134
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.az, align 8, !noalias !64134
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1246, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1254, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2824) #66
          to label %bb.l unwind label %bb.k, !noalias !64134

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #67
          to label %common.resume unwind label %bb.m, !noalias !64134

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64134
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEINtBM_11PoisonErrorBH_EE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorE4lockCsjjpCCFGI3ul_14lance_encoding.exit
  %i.bc = trunc nuw i8 %.sroa.01.0.i.i to i1      ; 2 uses
  %i.bd = load i64, ptr %i.j, align 8, !noundef !75 ; 5 uses
  %i.be = icmp ugt i64 %i.t, %i.bd
  br i1 %i.be, label %bb.p, label %bb.n, !prof !81

bb.n:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEINtBM_11PoisonErrorBH_EE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit
  %i.bf = load ptr, ptr %i.q, align 8, !nonnull !75, !noundef !75
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = sub nuw i64 %i.bd, %i.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64135)
  %i.bj = load ptr, ptr %i.bg, align 8, !alias.scope !64135, !noalias !64136, !nonnull !75, !noundef !75
  %i.bk = tail call noundef i64 @ZSTD_compress2(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bi, i64 noundef range(i64 0, -9223372036854775808) %i.bh, ptr noundef nonnull readonly %2, i64 noundef range(i64 0, -9223372036854775808) %3) #63, !noalias !64135
  %i.bl = invoke { i64, i64 } @_RNvCshGRE2o2IoKj_9zstd_safe10parse_code(i64 noundef %i.bk)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %bb.n
  %i.bm = extractvalue { i64, i64 } %i.bl, 0
  %i.bn = extractvalue { i64, i64 } %i.bl, 1      ; 2 uses
  %i.bo = trunc nuw i64 %i.bm to i1
  br i1 %i.bo, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.noexc
  %i.bp = invoke noundef nonnull ptr @_RNvCskOWKGULsqwM_4zstd14map_error_code(i64 noundef %i.bn)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEINtBM_11PoisonErrorBH_EE6unwrapCsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef %i.bd, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2825) #66
          to label %bb.af unwind label %bb.q

bb.q:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.o, %bb.n, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.br, %bb.s ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEECsjjpCCFGI3ul_14lance_encoding(ptr nonnull %i.ao, i8 %.sroa.01.0.i.i) #67
          to label %common.resume unwind label %bb.ag

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bp, ptr %i.c, align 8, !noalias !64137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64137
  store ptr %i.c, ptr %i.a, align 8, !noalias !64137
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !64137
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1085, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %bb.s, !noalias !64137

bb.s:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #67
          to label %.body unwind label %bb.t, !noalias !64137

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.787, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aa unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !64137
  unreachable

bb.u:                                             ; preds = %.noexc
  br i1 %i.bc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bu = and i64 %i.bt, 9223372036854775807
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w, !prof !78

bb.w:                                             ; preds = %bb.v
  %i.bw = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store atomic i8 1, ptr %i.ax monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.bx = atomicrmw xchg ptr %i.ao, i32 0 release, align 4
  %i.by = icmp eq i32 %i.bx, 2
  br i1 %i.by, label %bb.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEECsjjpCCFGI3ul_14lance_encoding.exit, !prof !81

bb.y:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ao)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorEECsjjpCCFGI3ul_14lance_encoding.exit
end_hunk_9
