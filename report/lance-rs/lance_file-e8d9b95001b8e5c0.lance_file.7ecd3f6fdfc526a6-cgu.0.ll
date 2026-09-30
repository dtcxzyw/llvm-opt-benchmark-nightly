Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19do_decode_gbo_table:bb.a
  %i.u = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.v = icmp ult i64 %i.u, 8
  br i1 %i.v, label %bb.g, label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25: ; preds = %bb.n, %bb.m, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.g, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val13 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.w = icmp eq i64 %.val13, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val14 = load ptr, ptr %i.m, align 8, !nonnull !62, !noundef !62
  %i.x = shl nuw i64 %.val13, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull @1221, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @716)
          to label %bb.o unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.d
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !34497, !nonnull !62, !noundef !62 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i
  %i.z = load i64, ptr %i.y, align 1, !alias.scope !34498, !noalias !34499
  %i.aa = or disjoint i64 %.sroa.6.043, 8
  %.sroa.0.0.i.i.i.i19 = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.aa) ; 2 uses
  %i.ab = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i19
  %i.ac = icmp ult i64 %i.ab, 8
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull @1221, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @715)
          to label %bb.l unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i19
  %i.ae = load i64, ptr %i.ad, align 1, !alias.scope !34500, !noalias !34501
  %i.af = add nuw nsw i64 %.sroa.6.043, 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34502)
  %i.ag = load i64, ptr %i.c, align 8, !range !65, !alias.scope !34502, !noundef !62
  %i.ah = icmp eq i64 %i.s, %i.ag
  br i1 %i.ah, label %bb.k, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge unwind label %.loopexit

._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !34502
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit: ; preds = %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge, %bb.j
  %i.ai = phi ptr [ %.pre, %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorE8push_mutBJ_.exit_crit_edge ], [ %i.r, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.s ; 2 uses
  store i64 %i.z, ptr %i.aj, align 8, !noalias !34502
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ae, ptr %i.ak, align 8, !noalias !34502
  %i.al = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.al, ptr %i.n, align 8
  %exitcond.not = icmp eq i32 %i.t, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.am = icmp eq i64 %.val, 0
  br i1 %i.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val12 = load ptr, ptr %i.m, align 8, !nonnull !62, !noundef !62
  %i.an = shl nuw i64 %.val, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit25

bb.o:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file6reader16BufferDescriptorEEB1c_.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_10FileReader19read_range_blocking(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 16               ; 10 uses
  %i.i = alloca [80 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 3 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  store i64 %2, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8
  store i32 %4, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val53 = load ptr, ptr %i.q, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.r = getelementptr i8, ptr %.val53, i64 48
  %.val.i = load ptr, ptr %i.r, align 8, !noalias !34526, !nonnull !62, !noundef !62 ; 2 uses
  %i.s = getelementptr i8, ptr %.val53, i64 56
  %.val1.i = load i64, ptr %i.s, align 8, !noalias !34526, !noundef !62 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34527)
  %i.t = shl nuw nsw i64 %.val1.i, 3              ; 2 uses
  %i.u = icmp eq i64 %.val1.i, 0
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !34528
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 8) #44, !noalias !34528 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %.lr.ph.preheader.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.t) #49
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.val1.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.013.023.i.i.i = phi ptr [ %i.ad, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.ac, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.y, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %.val1.i, %.lr.ph.preheader.i.i.i ]
  %i.y = add nsw i64 %.sroa.10.021.i.i.i, -1      ; 2 uses
  %i.z = icmp eq ptr %.sroa.013.023.i.i.i, %i.x
  br i1 %i.z, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.val12.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !34527, !noalias !34529, !nonnull !62, !noundef !62 ; 2 uses
  %i.aa = atomicrmw add ptr %.val12.i.i.i, i64 1 monotonic, align 8, !noalias !34530
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.d
  %i.ac = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.7.022.i.i.i
  store ptr %.val12.i.i.i, ptr %i.ae, align 8, !noalias !34530
  %i.af = icmp eq i64 %i.y, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit:                                        ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.v, %.lr.ph.i.i.i ], [ %i.v, %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  store i64 %.val1.i, ptr %i.m, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val1.i, ptr %.sroa.577.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ai = load i64, ptr %1, align 8, !range !72, !noundef !62
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = trunc nuw i64 %i.ai to i1
  %8 = load ptr, ptr %i.aj, align 8, !nonnull !62
  %storemerge.in.v = select i1 %7, i64 64, i64 96
  %storemerge.in = getelementptr inbounds nuw i8, ptr %8, i64 %storemerge.in.v
  %storemerge = load i64, ptr %storemerge.in, align 8, !noundef !62
  store i64 %storemerge, ptr %i.l, align 8
  %i.ak = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 6
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp samesign ugt i64 %i.ak, 3
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.val1.i, ptr %i.k, align 8
  %i.an = icmp ult i64 %.val1.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !62, !noundef !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !62 ; 2 uses
  store i64 %i.ar, ptr %i.j, align 8
  %i.as = icmp ult i64 %i.ar, 48038396025285291
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.o, ptr %i.i, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.426.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.n, ptr %i.at, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.au, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.k, ptr %i.av, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.j, ptr %i.aw, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34531
  store i64 0, ptr %i.b, align 8, !noalias !34531
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @714, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 18, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @245, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 29, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @714, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 18, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 1389, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !34531
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @717, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !34531
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !34531
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.j unwind label %bb.g

bb.i:                                             ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.bd = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.bf, align 8, !nonnull !62, !noundef !62
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.bm, ptr noundef nonnull align 8 dereferenceable(3) %i.bl, i64 3, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.bc, ptr %i.bn, align 16
  %i.bo = load i32, ptr %i.n, align 4, !noundef !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.bo, ptr %i.bp, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <2 x ptr> %i.bg, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.ay, ptr %i.br, align 8
  %i.bs = load <2 x i64>, ptr %i.bk, align 8
  store <2 x i64> %i.bs, ptr %i.h, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.bt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #44 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.p, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !61

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #49
          to label %.noexc56 unwind label %bb.r

.noexc56:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.o
  %i.bv = load <2 x i64>, ptr %i.o, align 16
  store <2 x i64> %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.bw, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bt, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.58.0..sroa_idx, align 8
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !62, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 16 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @_RNvNtCsjjpCCFGI3ul_14lance_encoding7decoder28schedule_and_decode_blocking(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.by, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.r:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder22SchedulerDecoderConfigECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(56) %i.h) #50
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.w, %bb.u, %bb.t, %bb.r
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.g
  %.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.bz, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.m) #50
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t, %bb.f
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %.pn.ph, %bb.t ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34532)
  call void @llvm.experimental.noalias.scope.decl(metadata !34533)
  call void @llvm.experimental.noalias.scope.decl(metadata !34534)
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !34535, !noundef !62
  %i.cd = load ptr, ptr %6, align 8, !alias.scope !34535, !nonnull !62, !align !63, !noundef !62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !34535, !nonnull !62, !noundef !62
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
