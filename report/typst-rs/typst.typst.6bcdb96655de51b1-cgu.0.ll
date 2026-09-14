Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvMNtCs9fPPV5zPXBl_5typst5worldNtB2_11SystemWorld3new:bb.a
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [56 x i8], align 8               ; 22 uses
  %i.ag = alloca [72 x i8], align 8               ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [104 x i8], align 8              ; 8 uses
  %i.aj = alloca [104 x i8], align 8              ; 13 uses
  %i.ak = alloca [16 x i8], align 8               ; 8 uses
  %.sroa.4225 = alloca [39 x i8], align 1         ; 2 uses
  %.sroa.25 = alloca [96 x i8], align 8           ; 2 uses
  %i.al = alloca [112 x i8], align 16             ; 9 uses
  %i.am = alloca [240 x i8], align 16             ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.023 = alloca [352 x i8], align 16        ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.12 = alloca [12 x i8], align 8           ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [216 x i8], align 8              ; 6 uses
  %i.av = load i64, ptr %3, align 8, !range !33, !noundef !28
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsf1gSX8u3EQ2_10rayon_core20ThreadPoolBuildErrorEECs9fPPV5zPXBl_5typst.exit

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !28273
  store i64 0, ptr %i.ak, align 8, !noalias !28273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !28273
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store ptr %i.ak, ptr %i.az, align 8, !noalias !28273
  store i64 0, ptr %i.aj, align 8, !noalias !28274
  %.sroa.2133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ay, ptr %.sroa.2133.0..sroa_idx, align 8, !noalias !28274
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr null, ptr %.sroa.4134.0..sroa_idx, align 8, !noalias !28274
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr null, ptr %.sroa.5135.0..sroa_idx, align 8, !noalias !28274
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr null, ptr %.sroa.6137.0..sroa_idx, align 8, !noalias !28274
  %.sroa.7139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store ptr null, ptr %.sroa.7139.0..sroa_idx, align 8, !noalias !28274
  %.sroa.8140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i8 1, ptr %.sroa.8140.0..sroa_idx, align 8, !noalias !28274
  %.sroa.10141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 89
  store i8 0, ptr %.sroa.10141.0..sroa_idx, align 1, !noalias !28274
  %i.ba = load atomic i32, ptr @_RNvNtCsf1gSX8u3EQ2_10rayon_core8registry16THE_REGISTRY_SET acquire, align 4, !noalias !28275
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !28275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.aj, i64 104, i1 false), !noalias !28273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !28275
  store ptr %i.ai, ptr %i.ah, align 8, !noalias !28275
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtCsf1gSX8u3EQ2_10rayon_core8registry16THE_REGISTRY_SET, i1 noundef zeroext false, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214)
          to label %bb.g unwind label %bb.e, !noalias !28275

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsf1gSX8u3EQ2_10rayon_core17ThreadPoolBuilderECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.aj)
          to label %_RINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0ECs9fPPV5zPXBl_5typst.exit.i unwind label %bb.j, !noalias !28273

bb.e:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load i64, ptr %i.ai, align 8, !range !32, !alias.scope !28276, !noalias !28275, !noundef !28
  %i.be = icmp eq i64 %i.bd, 2
  br i1 %i.be, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsf1gSX8u3EQ2_10rayon_core17ThreadPoolBuilderECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.ai)
          to label %.body.i.i unwind label %bb.i, !noalias !28275

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !28275
  %i.bf = load i64, ptr %i.ai, align 8, !range !32, !alias.scope !28277, !noalias !28275, !noundef !28
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EECs9fPPV5zPXBl_5typst.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsf1gSX8u3EQ2_10rayon_core17ThreadPoolBuilderECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EECs9fPPV5zPXBl_5typst.exit4.i.i.i unwind label %bb.j, !noalias !28273

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EECs9fPPV5zPXBl_5typst.exit4.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !28275
  br label %_RINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0ECs9fPPV5zPXBl_5typst.exit.i

bb.i:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28275
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.f, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.bc, %bb.f ], [ %i.bc, %bb.e ]
  %.val.i.i = load i64, ptr %i.ak, align 8, !range !56, !noalias !28273, !noundef !28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val1.i.i = load ptr, ptr %i.bj, align 8, !noalias !28273
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsf1gSX8u3EQ2_10rayon_core8registry8RegistryENtB1A_20ThreadPoolBuildErrorEECs9fPPV5zPXBl_5typst(i64 %.val.i.i, ptr %.val1.i.i) #62
          to label %common.resume unwind label %bb.k, !noalias !28273

bb.k:                                             ; preds = %.body.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28273
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.fh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsdaEETE4DqmE_13typst_library8FeaturesECs9fPPV5zPXBl_5typst.exit, %bb.fk, %.thread, %bb.n, %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i4.i.i.i.i, %.body.i.i.i, %bb.bl, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.mr, %bb.bl ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cr, %bb.n ], [ %i.cr, %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i4.i.i.i.i ], [ %.pn75240, %bb.fh ], [ %.pn73, %bb.bz ], [ %.pn233, %.thread ], [ %.pn233, %bb.fk ], [ %lpad.thr_comm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsdaEETE4DqmE_13typst_library8FeaturesECs9fPPV5zPXBl_5typst.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0ECs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EECs9fPPV5zPXBl_5typst.exit4.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !28273
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8, !noalias !28278 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !28278 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !28273
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %_RNvMs0_Csf1gSX8u3EQ2_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalCs9fPPV5zPXBl_5typst.exit.thread, label %bb.bq

_RNvMs0_Csf1gSX8u3EQ2_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalCs9fPPV5zPXBl_5typst.exit.thread: ; preds = %_RINvNtCsf1gSX8u3EQ2_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0ECs9fPPV5zPXBl_5typst.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.bl = load ptr, ptr %.sroa.5.0.copyload.i, align 8, !noalias !28279, !nonnull !28, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  call void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry17wait_until_primed(ptr noundef nonnull align 128 %i.bm), !noalias !28279
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsf1gSX8u3EQ2_10rayon_core20ThreadPoolBuildErrorEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsf1gSX8u3EQ2_10rayon_core20ThreadPoolBuildErrorEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs0_Csf1gSX8u3EQ2_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalCs9fPPV5zPXBl_5typst.exit.thread, %bb.bq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !28, !noundef !28
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !28 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !28280
  call void @llvm.experimental.noalias.scope.decl(metadata !28281)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.thread357, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsf1gSX8u3EQ2_10rayon_core20ThreadPoolBuildErrorEECs9fPPV5zPXBl_5typst.exit
  %i.bs = icmp ult i64 %i.bq, 15
  br i1 %i.bs, label %.thread.i.i.i.i.i.i.i, label %bb.m

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.l
  %i.bt = icmp samesign ult i64 %i.bq, 4
  %i.bu = and i64 %i.bq, 8
  %..i.i.i.i.i.i.i.i = add nuw nsw i64 %i.bu, 8
  %.sroa.03.0.i.i.i.i.i.i.i.i = select i1 %i.bt, i64 4, i64 %..i.i.i.i.i.i.i.i
  br label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bv = shl nuw nsw i64 %i.bq, 3
  %i.bw = udiv i64 %i.bv, 7
  %i.bx = add nsw i64 %i.bw, -1
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = lshr i64 -1, %i.by
  %i.ca = add nuw nsw i64 %i.bz, 1
  br label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %.thread.i.i.i.i.i.i.i
  %.sroa.4.0.i.ph8.i.i.i.i.i.i.i = phi i64 [ %.sroa.03.0.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.ca, %bb.m ] ; 5 uses
  %i.cb = shl nuw nsw i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 3
  %i.cc = add nuw nsw i64 %i.cb, 8
  %i.cd = and i64 %i.cc, 9223372036854775792      ; 2 uses
  %i.ce = add nuw nsw i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.cf = add nuw nsw i64 %i.cd, %i.ce            ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28282
  %i.cg = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !28282 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i.i.i, label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.ci = call { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.cf), !noalias !28282 ; 2 uses
  %.sroa.12.012.i.i.i.i.i.i.i = extractvalue { i64, i64 } %i.ci, 1
  %.sroa.7.013.i.i.i.i.i.i.i = extractvalue { i64, i64 } %i.ci, 0
  br label %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.cj = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 9
  %i.ck = add nsw i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cl = lshr i64 %.sroa.4.0.i.ph8.i.i.i.i.i.i.i, 3
  %i.cm = mul nuw nsw i64 %i.cl, 7
  %.sroa.09.0.i.i.i.i.i.i.i.i = select i1 %i.cj, i64 %i.ck, i64 %i.cm
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.cn, i8 -1, i64 %i.ce, i1 false), !noalias !28283
  br label %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %.sroa.12.012.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.09.0.i.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.7.013.i.i.i.i.i.i.i, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i.i.i ], [ %i.ck, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ null, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i.i.i ], [ %i.cn, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.co = mul i64 %i.bq, 56                       ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.bq, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i, label %bb.o, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !28284

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28285
  %i.cp = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28285 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.o, label %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = icmp eq i64 %.sroa.6.0.i.i.i.i.i.i, 0
  br i1 %i.cs, label %common.resume, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i4.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i4.i.i.i.i: ; preds = %bb.n
  %or.cond.i.i.i.i.i5.i.i.i.i = icmp slt i64 %.sroa.6.0.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i5.i.i.i.i), !noalias !28286
  %i.ct = shl i64 %.sroa.6.0.i.i.i.i.i.i, 3
  %i.cu = and i64 %i.ct, -16                      ; 2 uses
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add nsw i64 %.sroa.6.0.i.i.i.i.i.i, 17
  %i.cx = add i64 %i.cw, %i.cv                    ; 3 uses
  %i.cy = icmp uge i64 %i.cx, %i.cv
  call void @llvm.assume(i1 %i.cy), !noalias !28286
  %i.cz = icmp ult i64 %i.cx, 9223372036854775793
  call void @llvm.assume(i1 %i.cz), !noalias !28286
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i) ], !noalias !28286
  %i.da = sub nuw nsw i64 -16, %i.cu
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.da
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !28287
  br label %common.resume

bb.o:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %.sroa.413.0.ph.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %_RNvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.413.0.ph.i.i.i.i.i, i64 %i.co) #61
          to label %bb.p unwind label %bb.n, !noalias !28287

bb.p:                                             ; preds = %bb.o
  unreachable

_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  store i64 %i.bq, ptr %i.af, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 10 uses
  store ptr %i.cp, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 6 uses
  store i64 %.sroa.9.0.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 3 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  call void @llvm.experimental.noalias.scope.decl(metadata !28288)
  call void @llvm.experimental.noalias.scope.decl(metadata !28289)
  %i.dc = icmp ugt i64 %i.bq, %.sroa.9.0.i.i.i.i.i.i
  br i1 %i.dc, label %bb.q, label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, !prof !28290

bb.q:                                             ; preds = %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.dd = invoke { i64, i64 } @_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueE0EB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx6.i.i.i.i, i64 noundef %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef 0, i1 noundef zeroext true) #63
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !28280 ; 0 uses

.noexc.i.i.i:                                     ; preds = %bb.q
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !range !37, !alias.scope !28291, !noalias !28280
  %.pre62.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28291, !noalias !28280
  br label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.de = phi i64 [ %.pre62.i.i.i, %.noexc.i.i.i ], [ 0, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 5 uses
  %i.df = phi i64 [ %.pre.i.i.i, %.noexc.i.i.i ], [ %i.bq, %_RNvMs1_NtCsjFU9swAW47b_8indexmap3mapINtB5_8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtBR_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 3 uses
  %i.dg = icmp ult i64 %i.de, 164703072086692426
  call void @llvm.assume(i1 %i.dg)
  %i.dh = sub nsw i64 %i.df, %i.de
  %i.di = icmp ugt i64 %i.bq, %i.dh
  br i1 %i.di, label %bb.r, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.thread357: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCsf1gSX8u3EQ2_10rayon_core20ThreadPoolBuildErrorEECs9fPPV5zPXBl_5typst.exit
  store i64 0, ptr %i.af, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28281, !noalias !28280
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false), !noalias !28280
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTNtNtCs1xwejQucwHj_5alloc6string6StringB1i_EENCNvMNtCs9fPPV5zPXBl_5typst5worldNtB25_11SystemWorld3new0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB4l_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB27_.exit.i

bb.r:                                             ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28292)
  %i.dj = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28293, !noalias !28280, !noundef !28
  %i.dk = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28293, !noalias !28280, !noundef !28
  %i.dl = add i64 %i.dk, %i.dj                    ; 2 uses
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dl, i64 164703072086692425) ; 3 uses
  %i.dm = sub nsw i64 %..i.i.i.i.i.i.i, %i.de
  %i.dn = icmp ugt i64 %i.dm, %i.bq
  br i1 %i.dn, label %bb.t, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.t, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !28294)
  call void @llvm.experimental.noalias.scope.decl(metadata !28295)
  call void @llvm.experimental.noalias.scope.decl(metadata !28296)
  %i.do = add nuw nsw i64 %i.de, %i.bq            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !28297
  %.val12.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28298, !noalias !28280
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, i64 %i.df, ptr %.val12.i.i.i.i.i.i.i.i.i, i64 noundef %i.do, i64 noundef 8, i64 noundef 56), !noalias !28299
  %i.dp = load i64, ptr %i.ae, align 8, !range !33, !noalias !28297, !noundef !28
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.dq, label %bb.s, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.ds = load i64, ptr %i.dr, align 8, !range !106, !noalias !28297, !noundef !28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !28297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !28297
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ds, i64 %i.du) #61
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !28280

.noexc3.i.i.i:                                    ; preds = %bb.s
  unreachable

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i
  %i.dv = load ptr, ptr %i.dr, align 8, !noalias !28297, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !28297
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.thread

bb.t:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !28300)
  call void @llvm.experimental.noalias.scope.decl(metadata !28301)
  %i.dw = icmp ult i64 %i.dl, %i.de
  br i1 %i.dw, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !28302
  %.val12.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28303, !noalias !28280
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, i64 %i.df, ptr %.val12.i.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 56), !noalias !28304
  %i.dx = load i64, ptr %i.ad, align 8, !range !33, !noalias !28302, !noundef !28
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.v, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !28302
  br label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !28302, !nonnull !28, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !28302
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.thread

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.thread: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i
  %storemerge.i.i.i.i = phi ptr [ %i.dv, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ], [ %i.ea, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ]
  %..i.sink.i.i.i.i.i.i = phi i64 [ %i.do, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !28293, !noalias !28280
  store i64 %..i.sink.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !28293, !noalias !28280
  br label %bb.w

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1R_5value5ValueE0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28305)
  call void @llvm.experimental.noalias.scope.decl(metadata !28306)
  call void @llvm.experimental.noalias.scope.decl(metadata !28307)
  br label %bb.w

bb.w:                                             ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB12_5value5ValueE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %.sroa.615.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.sroa.618.0..sroa_idx19.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 55 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRTNtNtCs1xwejQucwHj_5alloc6string6StringBW_ETNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1H_5value5ValueEuNCNvMNtCs9fPPV5zPXBl_5typst5worldNtB2Y_11SystemWorld3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXsb_NtCsjFU9swAW47b_8indexmap3mapINtB4U_8IndexMapB1D_B2x_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtB3Z_7collect6ExtendB1C_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2T_EE0E0E0B30_.exit.i.i.i.i.i.i.i, %bb.w
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.w ], [ %i.mk, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRTNtNtCs1xwejQucwHj_5alloc6string6StringBW_ETNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1H_5value5ValueEuNCNvMNtCs9fPPV5zPXBl_5typst5worldNtB2Y_11SystemWorld3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvXsb_NtCsjFU9swAW47b_8indexmap3mapINtB4U_8IndexMapB1D_B2x_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtB3Z_7collect6ExtendB1C_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2T_EE0E0E0B30_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.bo, i64 %.sroa.01.0.i.i.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !28309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !28310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !28311
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !28312, !noalias !28313, !nonnull !28, !noundef !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !28312, !noalias !28313, !noundef !28
  invoke void @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB5_3StrINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.er)
          to label %.noexc4.i.i.i unwind label %.loopexit.i.i.i, !noalias !28280

.noexc4.i.i.i:                                    ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !28311
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !28312, !noalias !28313, !nonnull !28, !noundef !28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !28312, !noalias !28313, !noundef !28
  invoke void @_RNvXs1q_NtNtCsdaEETE4DqmE_13typst_library11foundations3strReNtNtB8_4cast9IntoValue10into_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %_RNCNvMNtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorld3new0B6_.exit.i.i.i.i.i.i.i.i unwind label %bb.y, !noalias !28314

bb.y:                                             ; preds = %.noexc4.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !28315, !noalias !28311
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %.val1.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ex, align 1, !alias.scope !28315, !noalias !28311, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs9fPPV5zPXBl_5typst(ptr %.val.i.i.i.i.i.i.i.i.i, i8 %.val1.i.i.i.i.i.i.i.i.i) #62
          to label %.body.i.i.i unwind label %bb.z, !noalias !28314

bb.z:                                             ; preds = %bb.y
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !28314
  unreachable

_RNCNvMNtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorld3new0B6_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !noalias !28316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !28316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !28311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !28311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !noalias !28309
  call void @llvm.experimental.noalias.scope.decl(metadata !28317)
  call void @llvm.experimental.noalias.scope.decl(metadata !28318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !28319
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !28320)
  call void @llvm.experimental.noalias.scope.decl(metadata !28321)
  %i.ez = load i8, ptr %i.ec, align 1, !alias.scope !28322, !noalias !28323, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ez, -1 ; 2 uses
  %i.fa = and i8 %i.ez, 127
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = load ptr, ptr %i.ac, align 8, !alias.scope !28322, !noalias !28323 ; 10 uses
  %i.fd = load i64, ptr %i.ed, align 8, !alias.scope !28322, !noalias !28323 ; 4 uses
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fd, i64 %i.fb ; 11 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fc, ptr %i.ac ; 11 uses
  %i.fe = icmp samesign ult i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.ff = lshr i64 %i.fd, 56                      ; 2 uses
  %i.fg = trunc nuw i64 %i.ff to i8               ; 4 uses
  br i1 %i.fe, label %bb.aa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMNtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorld3new0B6_.exit.i.i.i.i.i.i.i.i
  %i.fh = add i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -17 ; 2 uses
  %i.fi = lshr i64 %i.fh, 4                       ; 2 uses
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %i.fk = icmp eq i64 %i.fi, 0
  br i1 %i.fk, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.fj, 2305843009213693950
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %_RNCNvMNtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorld3new0B6_.exit.i.i.i.i.i.i.i.i
  %i.fl = icmp samesign ugt i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.fl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.sroa.0.098.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.fv, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.097.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.gh, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %i.fw, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs9fPPV5zPXBl_5typst.exit70.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.018.096.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fm, align 1, !alias.scope !28324, !noalias !28325
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fn, align 1, !alias.scope !28324, !noalias !28325
  %i.fo = xor i64 %.sroa.034.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.098.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = xor i64 %.sroa.036.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -6626703657320631856
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst:bb.a
  %.pre74.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46674, !noalias !46595
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i44.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i44.i.i: ; preds = %.noexc156.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit43.i.i
  %i.aao = phi ptr [ %.pre74.i.i, %.noexc156.i ], [ %i.aak, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit43.i.i ] ; 2 uses
  %i.aap = phi i64 [ %.pre.i47.i.i, %.noexc156.i ], [ %i.aaj, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit43.i.i ] ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aam
  store i8 %i.ec, ptr %i.aaq, align 1, !noalias !46675
  %i.aar = add nuw i64 %i.yq, 13                  ; 3 uses
  store i64 %i.aar, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46674, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46676)
  call void @llvm.experimental.noalias.scope.decl(metadata !46677)
  %i.aas = icmp eq i64 %i.aap, %i.aar
  br i1 %i.aas, label %bb.ej, label %bb.ek, !prof !38

bb.ej:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i44.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aap, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc157.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc157.i:                                      ; preds = %bb.ej
  %.pre4.i46.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46678, !noalias !46595
  br label %bb.ek

bb.ek:                                            ; preds = %.noexc157.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i44.i.i
  %i.aat = phi ptr [ %.pre4.i46.i.i, %.noexc157.i ], [ %i.aao, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i44.i.i ]
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aar
  store i8 %i.ee, ptr %i.aau, align 1, !noalias !46679
  %i.aav = add nuw nsw i64 %i.yq, 14              ; 4 uses
  store i64 %i.aav, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46678, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46680)
  call void @llvm.experimental.noalias.scope.decl(metadata !46681)
  %i.aaw = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46682, !noalias !46595, !noundef !28 ; 2 uses
  %i.aax = icmp eq i64 %i.aaw, %i.aav
  br i1 %i.aax, label %bb.el, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i, !prof !38

bb.el:                                            ; preds = %bb.ek
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aav, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc158.i:                                      ; preds = %bb.el
  %.pre75.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46683, !noalias !46595
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i: ; preds = %.noexc158.i, %bb.ek
  %i.aay = phi i64 [ %i.aaw, %bb.ek ], [ %.pre75.i.i, %.noexc158.i ] ; 3 uses
  %i.aaz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46684, !noalias !46595, !nonnull !28, !noundef !28 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aav
  store i8 58, ptr %i.aba, align 1, !noalias !46685
  %i.abb = add nuw nsw i64 %i.yq, 15              ; 3 uses
  store i64 %i.abb, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46684, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46686)
  call void @llvm.experimental.noalias.scope.decl(metadata !46687)
  call void @llvm.experimental.noalias.scope.decl(metadata !46688)
  %i.abc = icmp eq i64 %i.aay, %i.abb
  br i1 %i.abc, label %bb.em, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i, !prof !38

bb.em:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aay, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc159.i:                                      ; preds = %bb.em
  %.pre.i55.i132.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46689, !noalias !46595
  %.pre76.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46690, !noalias !46595
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i: ; preds = %.noexc159.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i
  %i.abd = phi ptr [ %.pre76.i.i, %.noexc159.i ], [ %i.aaz, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i ] ; 2 uses
  %i.abe = phi i64 [ %.pre.i55.i132.i, %.noexc159.i ], [ %i.aay, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i129.i ] ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abb
  store i8 %i.fb, ptr %i.abf, align 1, !noalias !46691
  %i.abg = add nuw i64 %i.yq, 16                  ; 3 uses
  store i64 %i.abg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46690, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46692)
  call void @llvm.experimental.noalias.scope.decl(metadata !46693)
  %i.abh = icmp eq i64 %i.abe, %i.abg
  br i1 %i.abh, label %bb.en, label %bb.eo, !prof !38

bb.en:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abe, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc160.i:                                      ; preds = %bb.en
  %.pre4.i54.i131.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46694, !noalias !46595
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc160.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i
  %i.abi = phi ptr [ %.pre4.i54.i131.i, %.noexc160.i ], [ %i.abd, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i52.i130.i ]
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abg
  store i8 %i.fd, ptr %i.abj, align 1, !noalias !46695
  %i.abk = add nuw nsw i64 %i.yq, 17              ; 4 uses
  store i64 %i.abk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46694, !noalias !46595
  call void @llvm.experimental.noalias.scope.decl(metadata !46696)
  call void @llvm.experimental.noalias.scope.decl(metadata !46697)
  %i.abl = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46698, !noundef !28
  %i.abm = icmp eq i64 %i.abl, %i.abk
  br i1 %i.abm, label %bb.ep, label %.noexc161.i, !prof !38

bb.ep:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc161.i:                                      ; preds = %bb.eo, %bb.ep
  %i.abn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46699, !nonnull !28, !noundef !28
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abk
  store i8 32, ptr %i.abo, align 1, !noalias !46699
  %i.abp = add nuw i64 %i.yq, 18
  store i64 %i.abp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46699
  %i.abq = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCseKXfNLkF2r6_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @223, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i32 noundef %i.de)
          to label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.eq:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !46700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !46701
  store i32 %i.df, ptr %i.p, align 4, !noalias !46701
  br i1 %or.cond.i93.i, label %bb.er, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46701
  store ptr %i.p, ptr %i.o, align 8, !noalias !46701
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !46701
  %i.abr = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @712, ptr noundef nonnull @224, ptr noundef nonnull %i.o)
          to label %.noexc98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc98.i:                                       ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46701
  br i1 %i.abr, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.thread.i, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !46702)
  call void @llvm.experimental.noalias.scope.decl(metadata !46703)
  call void @llvm.experimental.noalias.scope.decl(metadata !46704)
  %i.abs = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46705, !noalias !46706, !noundef !28 ; 8 uses
  %i.abt = icmp sgt i64 %i.abs, -1
  call void @llvm.assume(i1 %i.abt)
  %i.abu = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46707, !noalias !46706, !noundef !28 ; 2 uses
  %i.abv = icmp eq i64 %i.abu, %i.abs
  br i1 %i.abv, label %bb.es, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i, !prof !38

bb.es:                                            ; preds = %bb.er
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abs, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc99.i:                                       ; preds = %bb.es
  %.pre.i.i97.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46708, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i: ; preds = %.noexc99.i, %bb.er
  %i.abw = phi i64 [ %.pre.i.i97.i, %.noexc99.i ], [ %i.abu, %bb.er ] ; 2 uses
  %i.abx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46705, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 %i.abs
  store i8 %i.dj, ptr %i.aby, align 1, !noalias !46709
  %i.abz = add nuw nsw i64 %i.abs, 1              ; 3 uses
  store i64 %i.abz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46705, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46710)
  call void @llvm.experimental.noalias.scope.decl(metadata !46711)
  %i.aca = icmp eq i64 %i.abw, %i.abz
  br i1 %i.aca, label %bb.et, label %bb.ex, !prof !38

bb.et:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.abw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc100.i:                                      ; preds = %bb.et
  %.pre4.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46712, !noalias !46706
  br label %bb.ex

bb.eu:                                            ; preds = %.noexc98.i
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46713, !noalias !46706
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i, %bb.eu
  %i.acb = phi i64 [ %i.add, %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i ], [ %.pre.i.i, %bb.eu ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46714)
  call void @llvm.experimental.noalias.scope.decl(metadata !46715)
  %i.acc = icmp sgt i64 %i.acb, -1
  call void @llvm.assume(i1 %i.acc)
  %i.acd = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46716, !noalias !46706, !noundef !28
  %i.ace = icmp eq i64 %i.acd, %i.acb
  br i1 %i.ace, label %bb.ew, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i, !prof !38

bb.ew:                                            ; preds = %bb.ev
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.acb, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i: ; preds = %bb.ew, %bb.ev
  %i.acf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46713, !noalias !46706, !nonnull !28, !noundef !28
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.acb
  store i8 45, ptr %i.acg, align 1, !noalias !46717
  %i.ach = add nuw i64 %i.acb, 1                  ; 5 uses
  store i64 %i.ach, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46713, !noalias !46706
  br i1 %i.da, label %bb.fb, label %.invoke326.i

bb.ex:                                            ; preds = %.noexc100.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i
  %i.aci = phi ptr [ %.pre4.i.i.i, %.noexc100.i ], [ %i.abx, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i.i.i ]
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.abz
  store i8 %i.dl, ptr %i.acj, align 1, !noalias !46718
  %i.ack = add nuw i64 %i.abs, 2                  ; 5 uses
  store i64 %i.ack, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46712, !noalias !46706
  %i.acl = load i32, ptr %i.p, align 4, !noalias !46701, !noundef !28
  %i.acm = srem i32 %i.acl, 100                   ; 2 uses
  %i.acn = trunc nuw nsw i32 %i.acm to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46719)
  %i.aco = icmp slt i32 %i.acm, 0
  br i1 %i.aco, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.thread.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.acp = udiv i8 %i.acn, 10
  %i.acq = urem i8 %i.acn, 10
  %i.acr = or disjoint i8 %i.acp, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46720)
  call void @llvm.experimental.noalias.scope.decl(metadata !46721)
  %i.acs = icmp sgt i64 %i.ack, -1
  call void @llvm.assume(i1 %i.acs)
  %i.act = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46722, !noalias !46706, !noundef !28 ; 2 uses
  %i.acu = icmp eq i64 %i.act, %i.ack
  br i1 %i.acu, label %bb.ez, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i, !prof !38

bb.ez:                                            ; preds = %bb.ey
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ack, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc102.i:                                      ; preds = %bb.ez
  %.pre.i36.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46723, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i: ; preds = %.noexc102.i, %bb.ey
  %i.acv = phi i64 [ %.pre.i36.i.i, %.noexc102.i ], [ %i.act, %bb.ey ] ; 2 uses
  %i.acw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46724, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 %i.ack
  store i8 %i.acr, ptr %i.acx, align 1, !noalias !46725
  %i.acy = add nuw i64 %i.abs, 3                  ; 3 uses
  store i64 %i.acy, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46724, !noalias !46706
  %i.acz = or disjoint i8 %i.acq, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46726)
  call void @llvm.experimental.noalias.scope.decl(metadata !46727)
  %i.ada = icmp eq i64 %i.acv, %i.acy
  br i1 %i.ada, label %bb.fa, label %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i, !prof !38

bb.fa:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.acv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc103.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc103.i:                                      ; preds = %bb.fa
  %.pre4.i35.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46728, !noalias !46706
  br label %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i

_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit37.i.i: ; preds = %.noexc103.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i
  %i.adb = phi ptr [ %.pre4.i35.i.i, %.noexc103.i ], [ %i.acw, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i33.i.i ]
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.acy
  store i8 %i.acz, ptr %i.adc, align 1, !noalias !46729
  %i.add = add nuw i64 %i.abs, 4                  ; 2 uses
  store i64 %i.add, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46728, !noalias !46706
  br label %bb.ev

bb.fb:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i94.i
  %i.ade = load i8, ptr %i.db, align 1, !noalias !46701, !noundef !28 ; 2 uses
  %i.adf = zext i8 %i.ade to i32
  %i.adg = add nuw nsw i32 %i.cy, %i.adf          ; 3 uses
  %i.adh = lshr i32 %i.adg, 6
  %i.adi = trunc nuw nsw i32 %i.adh to i8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46730)
  %.cmp.i.i = icmp samesign ugt i32 %i.adg, 639
  %i.adj = zext i1 %.cmp.i.i to i8
  %i.adk = or disjoint i8 %i.adj, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46731)
  call void @llvm.experimental.noalias.scope.decl(metadata !46732)
  %i.adl = icmp sgt i64 %i.ach, -1
  call void @llvm.assume(i1 %i.adl)
  %i.adm = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46733, !noalias !46706, !noundef !28 ; 2 uses
  %i.adn = icmp eq i64 %i.adm, %i.ach
  br i1 %i.adn, label %bb.fc, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i, !prof !38

bb.fc:                                            ; preds = %bb.fb
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ach, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc104.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc104.i:                                      ; preds = %bb.fc
  %.pre.i41.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46734, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i: ; preds = %.noexc104.i, %bb.fb
  %i.ado = phi i64 [ %.pre.i41.i.i, %.noexc104.i ], [ %i.adm, %bb.fb ] ; 2 uses
  %i.adp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46735, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ach
  store i8 %i.adk, ptr %i.adq, align 1, !noalias !46736
  %i.adr = add nuw i64 %i.acb, 2                  ; 3 uses
  store i64 %i.adr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46735, !noalias !46706
  %.urem.i.i = add nsw i8 %i.adi, -10
  %.cmp91.i.i = icmp samesign ult i32 %i.adg, 640
  %i.ads = select i1 %.cmp91.i.i, i8 %i.adi, i8 %.urem.i.i
  %i.adt = or disjoint i8 %i.ads, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46737)
  call void @llvm.experimental.noalias.scope.decl(metadata !46738)
  %i.adu = icmp eq i64 %i.ado, %i.adr
  br i1 %i.adu, label %bb.fd, label %bb.fe, !prof !38

bb.fd:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ado, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc105.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc105.i:                                      ; preds = %bb.fd
  %.pre4.i40.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46739, !noalias !46706
  br label %bb.fe

bb.fe:                                            ; preds = %.noexc105.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i
  %i.adv = phi ptr [ %.pre4.i40.i.i, %.noexc105.i ], [ %i.adp, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i38.i.i ]
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.adr
  store i8 %i.adt, ptr %i.adw, align 1, !noalias !46740
  %i.adx = add nuw nsw i64 %i.acb, 3              ; 4 uses
  store i64 %i.adx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46739, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46741)
  call void @llvm.experimental.noalias.scope.decl(metadata !46742)
  %i.ady = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46743, !noalias !46706, !noundef !28
  %i.adz = icmp eq i64 %i.ady, %i.adx
  br i1 %i.adz, label %bb.ff, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i, !prof !38

bb.ff:                                            ; preds = %bb.fe
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.adx, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i: ; preds = %bb.ff, %bb.fe
  %i.aea = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46744, !noalias !46706, !nonnull !28, !noundef !28
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.adx
  store i8 45, ptr %i.aeb, align 1, !noalias !46745
  %i.aec = add nuw nsw i64 %i.acb, 4              ; 4 uses
  store i64 %i.aec, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46744, !noalias !46706
  %i.aed = add i8 %i.ade, %i.dm
  %i.aee = lshr i8 %i.aed, 1
  %i.aef = and i8 %i.aee, 31                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46746)
  %i.aeg = udiv i8 %i.aef, 10
  %i.aeh = urem i8 %i.aef, 10
  %i.aei = or disjoint i8 %i.aeg, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46747)
  call void @llvm.experimental.noalias.scope.decl(metadata !46748)
  %i.aej = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46749, !noalias !46706, !noundef !28 ; 2 uses
  %i.aek = icmp eq i64 %i.aej, %i.aec
  br i1 %i.aek, label %bb.fg, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i, !prof !38

bb.fg:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aec, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc108.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc108.i:                                      ; preds = %bb.fg
  %.pre.i48.i.i = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46750, !noalias !46706
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i: ; preds = %.noexc108.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i
  %i.ael = phi i64 [ %.pre.i48.i.i, %.noexc108.i ], [ %i.aej, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit44.i.i ] ; 2 uses
  %i.aem = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46751, !noalias !46706, !nonnull !28, !noundef !28 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aec
  store i8 %i.aei, ptr %i.aen, align 1, !noalias !46752
  %i.aeo = add nuw i64 %i.acb, 5                  ; 3 uses
  store i64 %i.aeo, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46751, !noalias !46706
  %i.aep = or disjoint i8 %i.aeh, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !46753)
  call void @llvm.experimental.noalias.scope.decl(metadata !46754)
  %i.aeq = icmp eq i64 %i.ael, %i.aeo
  br i1 %i.aeq, label %bb.fh, label %bb.fi, !prof !38

bb.fh:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.ael, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc109.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc109.i:                                      ; preds = %bb.fh
  %.pre4.i47.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46755, !noalias !46706
  br label %bb.fi

bb.fi:                                            ; preds = %.noexc109.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i
  %i.aer = phi ptr [ %.pre4.i47.i.i, %.noexc109.i ], [ %i.aem, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i45.i.i ]
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aeo
  store i8 %i.aep, ptr %i.aes, align 1, !noalias !46756
  %i.aet = add nuw nsw i64 %i.acb, 6              ; 4 uses
  store i64 %i.aet, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46755, !noalias !46706
  call void @llvm.experimental.noalias.scope.decl(metadata !46757)
  call void @llvm.experimental.noalias.scope.decl(metadata !46758)
  %i.aeu = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46759, !noalias !46706, !noundef !28
  %i.aev = icmp eq i64 %i.aeu, %i.aet
  br i1 %i.aev, label %bb.fj, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i, !prof !38

bb.fj:                                            ; preds = %bb.fi
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.aet, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i: ; preds = %bb.fj, %bb.fi
  %i.aew = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !46760, !noalias !46706, !nonnull !28, !noundef !28
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aet
  store i8 84, ptr %i.aex, align 1, !noalias !46761
  %i.aey = add nuw i64 %i.acb, 7                  ; 5 uses
  store i64 %i.aey, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !46760, !noalias !46706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46701
  store i32 %storemerge.i.i, ptr %i.n, align 4, !noalias !46701
  call void @llvm.experimental.noalias.scope.decl(metadata !46762)
  br i1 %i.dv, label %_RINvNtNtCseKXfNLkF2r6_6chrono6format10formatting14write_hundredsNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit56.thread.i.i, label %bb.fk

bb.fk:                                            ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit51.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !46763)
  call void @llvm.experimental.noalias.scope.decl(metadata !46764)
  %i.aez = icmp sgt i64 %i.aey, -1
  call void @llvm.assume(i1 %i.aez)
  %i.afa = load i64, ptr %i.bf, align 8, !range !37, !alias.scope !46765, !noalias !46706, !noundef !28 ; 2 uses
end_hunk_1
