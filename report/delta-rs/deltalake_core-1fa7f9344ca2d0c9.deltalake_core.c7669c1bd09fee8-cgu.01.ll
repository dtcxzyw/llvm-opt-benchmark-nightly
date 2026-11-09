Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.01?download=true
inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr15evaluate_boundsCs14kWLkQVSKO_14deltalake_core:.split
          to label %.body unwind label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27 unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.v, align 16
  store i128 50, ptr %0, align 16
  ret void

bb.j:                                             ; preds = %bb.e, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.k:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr18evaluate_selectionCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !36599 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 16               ; 7 uses
  %.sroa.616 = alloca [40 x i8], align 16         ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.611 = alloca [32 x i8], align 8          ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 16               ; 19 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [8 x i8], align 8                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i64, ptr %i.u, align 8, !noundef !40 ; 4 uses
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !40 ; 2 uses
  %.not = icmp eq i64 %i.v, %i.x
  br i1 %.not, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef i64 @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB4_12BooleanArray10true_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3) ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %bb.d, label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.x, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.t, ptr %i.aa, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @1821, ptr noundef nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aw unwind label %bb.av

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs0_NtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6columnNtB5_6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr8evaluate(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  br label %bb.at

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !40, !noundef !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @_RNvXs0_NtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6columnNtB5_6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr9data_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ae)
  %i.af = load i64, ptr %i.k, align 8, !range !43, !noundef !40 ; 2 uses
  %.not70 = icmp eq i64 %i.af, 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  br i1 %.not70, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtCsa7Blp2W9WhU_12arrow_select6filter19filter_record_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3)
  %i.ah = load i64, ptr %i.i, align 8, !range !45, !noundef !40 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.ai, label %bb.n, label %bb.o

bb.g:                                             ; preds = %bb.e
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.655.0.copyload = load i64, ptr %.sroa.655.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.257.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ak, align 16
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.655.0.copyload, ptr %.sroa.358.0..sroa_idx, align 16
  store i128 51, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.al = invoke { ptr, ptr } @_RNvNtCs1N9T06jgEdt_11arrow_array5array15new_empty_array(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.l) #42
          to label %common.resume unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.an = extractvalue { ptr, ptr } %i.al, 0
  %i.ao = extractvalue { ptr, ptr } %i.al, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.an, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ao, ptr %i.aq, align 8
  store i128 50, ptr %i.m, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %bb.j
  %i.ar = load i128, ptr %i.m, align 16, !range !113, !noundef !40 ; 3 uses
  %.not71 = icmp eq i128 %i.ar, 50
  br i1 %.not71, label %bb.t, label %4

bb.l:                                             ; preds = %bb.az, %.body82, %bb.an, %.body, %bb.p, %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.i, %bb.p, %.body, %.body82
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.p ], [ %.pn76, %.body82 ], [ %.pn, %.body ], [ %i.am, %bb.i ], [ %i.cs, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.au, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  store i128 51, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  br label %bb.au

bb.o:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611, i64 32, i1 false)
  store i64 %i.ah, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs0_NtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6columnNtB5_6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr8evaluate(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.j) #42
          to label %common.resume unwind label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.av = load i128, ptr %i.h, align 16, !range !36600, !noundef !40 ; 2 uses
  %i.aw = icmp eq i128 %i.av, 51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.616, ptr noundef nonnull align 16 dereferenceable(40) %i.ax, i64 40, i1 false)
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ay, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.616, i64 40, i1 false)
  store i128 51, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.j)
  br label %bb.au

bb.s:                                             ; preds = %bb.q
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.663.0.copyload = load i64, ptr %.sroa.663.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.616, i64 40, i1 false)
  store i128 %i.av, ptr %i.m, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.663.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

4:                                                ; preds = %bb.k
  %5 = icmp ne i128 %i.ar, 10
  call void @llvm.assume(i1 %5)
  %6 = icmp eq i128 %i.ar, 3
  br i1 %6, label %bb.ad, label %bb.ae

bb.t:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ba = load ptr, ptr %i.az, align 16, !nonnull !40, !noundef !40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !40, !align !49, !noundef !40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !59, !invariant.load !40
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = and i64 %i.bf, -16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  invoke void @_RNvNtCs3LxfdNfGUeX_31datafusion_physical_expr_common5utils7scatter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bc)
          to label %bb.v unwind label %bb.u

.body:                                            ; preds = %bb.ai, %bb.u, %bb.an
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.an ], [ %i.bj, %bb.u ], [ %i.bz, %bb.ai ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.m) #42
          to label %common.resume unwind label %bb.l

bb.u:                                             ; preds = %bb.af, %bb.ar, %bb.al, %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.t
  %i.bk = load i64, ptr %i.g, align 8, !range !43, !noundef !40
  %.not72 = icmp eq i64 %i.bk, 20
  br i1 %.not72, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load <2 x ptr>, ptr %i.bm, align 8
  store <2 x ptr> %i.bn, ptr %.sroa.490.0..sroa_idx, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi i128 [ 50, %bb.x ], [ 51, %bb.w ]
  store i128 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.z:                                             ; preds = %bb.as, %bb.ak, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !36601)
  %i.bo = load i128, ptr %i.m, align 16, !range !113, !alias.scope !36601, !noundef !40
  %i.bp = icmp eq i128 %i.bo, 50
  br i1 %i.bp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36602)
  call void @llvm.experimental.noalias.scope.decl(metadata !36603)
  %i.br = load ptr, ptr %i.bq, align 16, !alias.scope !36604, !nonnull !40, !noundef !40
  %i.bs = atomicrmw add ptr %i.br, i64 -1 release, align 8, !noalias !36604
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.z
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bv = load i8, ptr %i.bu, align 16, !range !54, !noundef !40
  switch i8 %i.bv, label %bb.ah [
    i8 2, label %bb.af
    i8 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.m, i64 64, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemINtNtCsbvkFyIu7lgC_4core6option6OptionbENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.v)
          to label %bb.al unwind label %bb.u

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.m, i64 64, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsf_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %3)
  store i64 1, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bx, align 8
  %i.by = invoke fastcc noundef ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 104)
          to label %bb.ak unwind label %bb.ai, !noalias !36605 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #42
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i128 50, ptr %0, align 16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.by, ptr %.sroa.424.0..sroa_idx, align 16
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1820, ptr %.sroa.525.0..sroa_idx, align 8
  br label %bb.z

bb.al:                                            ; preds = %bb.af
  invoke void @_RNvXs3_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5_12BooleanArrayINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1j_6option6OptionbEEE4from(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.am unwind label %bb.u

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvNtCs3LxfdNfGUeX_31datafusion_physical_expr_common5utils7scatter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @1820)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f) #42
          to label %.body unwind label %bb.l

bb.ao:                                            ; preds = %bb.am
  %i.cc = load i64, ptr %i.d, align 8, !range !43, !noundef !40
  %.not74 = icmp eq i64 %i.cc, 20
  br i1 %.not74, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load <2 x ptr>, ptr %i.ce, align 8
  store <2 x ptr> %i.cf, ptr %.sroa.494.0..sroa_idx, align 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink97 = phi i128 [ 50, %bb.aq ], [ 51, %bb.ap ]
  store i128 %.sink97, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.as unwind label %bb.u

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit, %bb.m, %bb.d
  ret void

bb.au:                                            ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.m

.body82:                                          ; preds = %bb.ba, %bb.av, %bb.az
  %.pn76 = phi { ptr, i32 } [ %i.cp, %bb.az ], [ %i.cg, %bb.av ], [ %i.cq, %bb.ba ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #42
          to label %common.resume unwind label %bb.l

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ax, %.split
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.aw:                                            ; preds = %.split
  %i.ch = load i64, ptr %i.c, align 8, !range !44, !noundef !40
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !45, !noundef !40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ci, label %bb.ax, label %bb.ay, !prof !38

bb.ax:                                            ; preds = %bb.aw
  %i.cm = load i64, ptr %i.cl, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ck, i64 %i.cm) #41
          to label %bb.be unwind label %bb.av

bb.ay:                                            ; preds = %bb.aw
  %i.cn = load ptr, ptr %i.cl, align 8, !nonnull !40, !noundef !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ck, ptr %i.o, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cn, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.539.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.r, ptr %i.n, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.co, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @52, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #42
          to label %.body82 unwind label %bb.l

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body82 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.av

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86 unwind label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.cu, align 16
  store i128 51, ptr %0, align 16
  br label %bb.at

bb.be:                                            ; preds = %bb.ax
  unreachable
}

end_hunk_0
