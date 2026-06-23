inline.NumInlined: 8496
inline.NumDeleted: 3150
begin_hunk_0_@_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel21flatten_junction_expr:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel22to_binary_predicate_op(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, i8 noundef range(i8 0, 42) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.g, align 1
  switch i8 %1, label %.split [
    i8 0, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.d
    i8 13, label %bb.e
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs0_NtCs90oH6M0AZ2B_22datafusion_expr_common8operatorNtB5_8OperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @221, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.h, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.j, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ 7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27 ], [ 20, %bb.e ], [ 20, %bb.d ], [ 20, %bb.c ], [ 20, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

.body:                                            ; preds = %bb.l, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.l, %bb.g ], [ %i.v, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #59
          to label %common.resume unwind label %bb.p

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.i, %.split
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.split
  %i.m = load i64, ptr %i.a, align 8, !range !38, !noundef !27
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !66, !noundef !27 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j, !prof !67

bb.i:                                             ; preds = %bb.h
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #56
          to label %bb.q unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.s, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.t, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @29, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #59
          to label %.body unwind label %bb.p

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27 unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.n ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.f

bb.p:                                             ; preds = %bb.k, %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.q:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalar(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = alloca [96 x i8], align 16               ; 4 uses
  %i.k = alloca [96 x i8], align 16               ; 4 uses
  %i.l = alloca [96 x i8], align 16               ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.o = alloca [96 x i8], align 16               ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.6142.sroa.7 = alloca [24 x i8], align 8  ; 7 uses
  %.sroa.6136.sroa.7 = alloca [24 x i8], align 8  ; 7 uses
  %i.v = alloca [96 x i8], align 16               ; 8 uses
  %i.w = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.679 = alloca [40 x i8], align 8          ; 6 uses
  %.sroa.576 = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 5 uses
  %.sroa.469 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.47 = alloca [24 x i8], align 8           ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.m, %bb.a
  %.tr242 = phi ptr [ %1, %bb.a ], [ %i.bo, %bb.m ] ; 31 uses
  %i.y = load i128, ptr %.tr242, align 16, !range !4450, !noundef !27 ; 3 uses
  %i.z = icmp ne i128 %i.y, 10
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw nsw i128 %i.y to i64
  %i.ab = add nsw i64 %i.aa, -2
  %i.ac = icmp samesign ugt i128 %i.y, 1
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 8
  switch i64 %i.ad, label %.split [
    i64 1, label %bb.b
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 7, label %bb.e
    i64 9, label %bb.f
    i64 10, label %bb.g
    i64 11, label %bb.h
    i64 12, label %bb.i
    i64 17, label %bb.al
    i64 18, label %bb.al
    i64 19, label %bb.al
    i64 20, label %bb.ao
    i64 21, label %bb.ao
    i64 22, label %bb.ao
    i64 23, label %bb.ao
    i64 27, label %bb.j
    i64 29, label %bb.k
    i64 37, label %bb.l
    i64 47, label %bb.m
  ]

.split:                                           ; preds = %tailrecurse
  store ptr %.tr242, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.x, ptr %i.r, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4155.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @238, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bo unwind label %bb.bn

bb.b:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.af = load i8, ptr %i.ae, align 16, !range !2090, !noundef !27 ; 2 uses
  %.not211 = icmp eq i8 %i.af, 2
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not211, label %bb.o, label %bb.n

bb.c:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.ah = load i32, ptr %i.ag, align 16, !range !697, !noundef !27
  %i.ai = trunc nuw i32 %i.ah to i1
  br i1 %i.ai, label %bb.q, label %bb.r

bb.d:                                             ; preds = %tailrecurse
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.ak = load i64, ptr %i.aj, align 16, !range !38, !noundef !27
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.s, label %bb.t

bb.e:                                             ; preds = %tailrecurse
  %i.am = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.an = load i128, ptr %i.am, align 16, !range !15981, !noundef !27
  %i.ao = trunc nuw i128 %i.an to i1
  br i1 %i.ao, label %bb.u, label %bb.v

bb.f:                                             ; preds = %tailrecurse
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.aq = load i8, ptr %i.ap, align 16, !range !1786, !noundef !27
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.ad, label %bb.ae

bb.g:                                             ; preds = %tailrecurse
  %i.as = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.at = load i16, ptr %i.as, align 16, !range !16419, !noundef !27
  %i.au = trunc nuw i16 %i.at to i1
  br i1 %i.au, label %bb.af, label %bb.ag

bb.h:                                             ; preds = %tailrecurse
  %i.av = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.aw = load i32, ptr %i.av, align 16, !range !697, !noundef !27
  %i.ax = trunc nuw i32 %i.aw to i1
  br i1 %i.ax, label %bb.ah, label %bb.ai

bb.i:                                             ; preds = %tailrecurse
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.az = load i64, ptr %i.ay, align 16, !range !38, !noundef !27
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.aj, label %bb.ak

bb.j:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6136.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6142.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.bc = load ptr, ptr %i.bb, align 16, !nonnull !27, !noundef !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt10from_array(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.u, ptr noundef nonnull %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @234, i64 noundef 0)
  %i.be = load i64, ptr %i.u, align 16, !range !4761, !noundef !27 ; 2 uses
  %.not205 = icmp eq i64 %i.be, -9223372036854775792
  br i1 %.not205, label %bb.as, label %bb.ar

bb.k:                                             ; preds = %tailrecurse
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.bg = load i32, ptr %i.bf, align 16, !range !697, !noundef !27
  %i.bh = trunc nuw i32 %i.bg to i1
  br i1 %i.bh, label %bb.bf, label %bb.bg

bb.l:                                             ; preds = %tailrecurse
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr242, i64 32
  %i.bj = load ptr, ptr %i.bi, align 16, !noundef !27
  %.not = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr242, i64 16
  %i.bl = load i64, ptr %i.bk, align 16, !range !38, !noundef !27
  %i.bm = trunc nuw i64 %i.bl to i1               ; 2 uses
  br i1 %.not, label %bb.bi, label %bb.bh

bb.m:                                             ; preds = %tailrecurse
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr242, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !27, !noundef !27
  br label %tailrecurse

bb.n:                                             ; preds = %bb.b
  store i64 -9223372036854775801, ptr %0, align 16
  store i8 %i.af, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.b
  store i64 -9223372036854775795, ptr %0, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @117, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.ap, %bb.aq, %bb.am, %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit218, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.bf, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalars1_0Bb_.exit, %bb.ar, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n
  ret void

bb.q:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr242, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !noundef !27
  store i64 -9223372036854775804, ptr %0, align 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bq, ptr %.sroa.437.0..sroa_idx, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.c
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @228, i64 16, i1 false)
  br label %bb.p

bb.s:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %.tr242, i64 24
  %i.bs = load double, ptr %i.br, align 8, !noundef !27
  store i64 -9223372036854775803, ptr %0, align 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bs, ptr %.sroa.443.0..sroa_idx, align 8
  br label %bb.p

bb.t:                                             ; preds = %bb.d
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.446.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @229, i64 16, i1 false)
  br label %bb.p

bb.u:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.576)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.679)
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr242, i64 32
  %i.bu = load i128, ptr %i.bt, align 16, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr242, i64 48
  %i.bw = load i8, ptr %i.bv, align 16, !noundef !27
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr242, i64 49
  %i.by = load i8, ptr %i.bx, align 1, !noundef !27
  call void @_RNvMsv_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_11DecimalType7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.w, i8 noundef %i.bw, i8 noundef %i.by)
  %i.bz = load i64, ptr %i.w, align 16, !range !107, !noundef !27
  %.not209 = icmp eq i64 %i.bz, -9223372036854775743
  br i1 %.not209, label %bb.z, label %bb.y

bb.v:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr242, i64 48
  %i.cb = load i8, ptr %i.ca, align 16, !noundef !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr242, i64 49
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !27
  call void @_RNvMsv_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_11DecimalType7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.v, i8 noundef %i.cb, i8 noundef %i.cd)
  %i.ce = load i64, ptr %i.v, align 16, !range !107, !noundef !27
  %.not208 = icmp eq i64 %i.ce, -9223372036854775743
  br i1 %.not208, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false)
  call fastcc void @_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalars0_0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.j) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.0120.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6122.0.copyload = load i8, ptr %.sroa.6122.0..sroa_idx, align 8
  %.sroa.8125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.8125.0.copyload = load i8, ptr %.sroa.8125.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0120.0.copyload, ptr %i.cf, align 8
  %.sroa.2177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.6122.0.copyload, ptr %.sroa.2177.0..sroa_idx, align 16
  %.sroa.3178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.8125.0.copyload, ptr %.sroa.3178.0..sroa_idx, align 1
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4179.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %i.i, i64 30, i1 false)
  store i64 -9223372036854775792, ptr %0, align 16
  br label %bb.p

bb.x:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ch = load i8, ptr %i.cg, align 8, !noundef !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.5102.0..sroa_idx, align 8
  %.sroa.5102.sroa.5.0..sroa.5102.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 12, ptr %.sroa.5102.sroa.5.0..sroa.5102.0..sroa_idx.sroa_idx, align 1
  %.sroa.5102.sroa.5.sroa.5.0..sroa.5102.sroa.5.0..sroa.5102.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ch, ptr %.sroa.5102.sroa.5.sroa.5.0..sroa.5102.sroa.5.0..sroa.5102.0..sroa_idx.sroa_idx.sroa_idx, align 2
  %.sroa.5102.sroa.5.sroa.6.0..sroa.5102.sroa.5.0..sroa.5102.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.cj, ptr %.sroa.5102.sroa.5.sroa.6.0..sroa.5102.sroa.5.0..sroa.5102.0..sroa_idx.sroa_idx.sroa_idx, align 1
  br label %bb.p

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.o, ptr noundef nonnull align 16 dereferenceable(96) %i.w, i64 96, i1 false)
  call fastcc void @_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalar0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.o) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.089.0.copyload = load i64, ptr %i.m, align 8
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.691.0.copyload = load i8, ptr %.sroa.691.0..sroa_idx, align 8
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.894.0.copyload = load i8, ptr %.sroa.894.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.089.0.copyload, ptr %i.ck, align 8
  %.sroa.2165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.691.0.copyload, ptr %.sroa.2165.0..sroa_idx, align 16
  %.sroa.3166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.894.0.copyload, ptr %.sroa.3166.0..sroa_idx, align 1
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4167.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %i.n, i64 30, i1 false)
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.679)
  br label %bb.ac

bb.z:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cm = load i8, ptr %i.cl, align 8, !noundef !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.co = load i8, ptr %i.cn, align 1, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RINvMNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB3_11DecimalData7try_newnECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.k, i128 noundef %i.bu, i8 noundef %i.cm, i8 noundef %i.co)
  %i.cp = load i64, ptr %i.k, align 16, !range !107, !noundef !27
  %.not210 = icmp eq i64 %i.cp, -9223372036854775743
  br i1 %.not210, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  call fastcc void @_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalars_0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(40) %.sroa.679, ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.l) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.576, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.679, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.679)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.576, i64 40, i1 false)
  store i64 -9223372036854775792, ptr %0, align 16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.679)
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %i.cr, i64 32, i1 false)
  store i64 -9223372036854775796, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.576)
  br label %bb.p

bb.ac:                                            ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.576)
  br label %bb.p

bb.ad:                                            ; preds = %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr242, i64 17
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !27
  store i64 -9223372036854775805, ptr %0, align 16
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ct, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.p

bb.ae:                                            ; preds = %bb.f
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @230, i64 16, i1 false)
  br label %bb.p

bb.af:                                            ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr242, i64 18
  %i.cv = load i16, ptr %i.cu, align 2, !noundef !27
  store i64 -9223372036854775806, ptr %0, align 16
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.cv, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.p

bb.ag:                                            ; preds = %bb.g
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @231, i64 16, i1 false)
  br label %bb.p

bb.ah:                                            ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr242, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !27
  store i64 -9223372036854775808, ptr %0, align 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cx, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.p

bb.ai:                                            ; preds = %bb.h
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @232, i64 16, i1 false)
  br label %bb.p

bb.aj:                                            ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr242, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !27
  store i64 -9223372036854775807, ptr %0, align 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %.sroa.431.0..sroa_idx, align 8
  br label %bb.p

bb.ak:                                            ; preds = %bb.i
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.434.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @233, i64 16, i1 false)
  br label %bb.p

bb.al:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  %.sroa.04.0 = getelementptr inbounds nuw i8, ptr %.tr242, i64 16 ; 2 uses
  %i.da = load i64, ptr %.sroa.04.0, align 8, !range !66, !noundef !27
  %.not207 = icmp eq i64 %i.da, -9223372036854775808
  br i1 %.not207, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.47, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.04.0)
  store i64 -9223372036854775802, ptr %0, align 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  br label %bb.p

bb.an:                                            ; preds = %bb.al
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.p

bb.ao:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %.sroa.066.0 = getelementptr inbounds nuw i8, ptr %.tr242, i64 16 ; 2 uses
  %i.db = load i64, ptr %.sroa.066.0, align 8, !range !66, !noundef !27
  %.not206 = icmp eq i64 %i.db, -9223372036854775808
  br i1 %.not206, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.469)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.469, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.066.0)
  store i64 -9223372036854775797, ptr %0, align 16
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.469)
  br label %bb.p

bb.aq:                                            ; preds = %bb.ao
  store i64 -9223372036854775795, ptr %0, align 16
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.472.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @152, i64 16, i1 false)
  br label %bb.p

bb.ar:                                            ; preds = %bb.j
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5181.sroa.0.0.copyload = load i64, ptr %.sroa.5181.0..sroa_idx, align 8
  %.sroa.5181.sroa.5.0..sroa.5181.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6142.sroa.7, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5181.sroa.5.0..sroa.5181.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.5181.sroa.6.0..sroa.5181.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.5181.sroa.6.0.copyload = load i64, ptr %.sroa.5181.sroa.6.0..sroa.5181.0..sroa_idx.sroa_idx, align 8
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.3148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3148.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6182.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6142.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6142.sroa.7)
  %.sroa.2147.sroa.2.0..sroa.2147.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2147.sroa.2.0..sroa.2147.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.sroa.7, i64 24, i1 false)
  store i64 %i.be, ptr %0, align 16
  %.sroa.2147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5181.sroa.0.0.copyload, ptr %.sroa.2147.0..sroa_idx, align 8
  %.sroa.2147.sroa.3.0..sroa.2147.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5181.sroa.6.0.copyload, ptr %.sroa.2147.sroa.3.0..sroa.2147.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.sroa.7)
  br label %bb.p

bb.as:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16423
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !16423
  %i.dc = load i64, ptr %i.a, align 8, !range !38, !noalias !16423, !noundef !27
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !66, !noalias !16423, !noundef !27 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dd, label %bb.at, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i, !prof !67

bb.at:                                            ; preds = %bb.as
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !16423
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dh) #56, !noalias !16423
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.as
  %i.di = load ptr, ptr %i.dg, align 8, !noalias !16423, !nonnull !27, !noundef !27 ; 2 uses
  %i.dj = icmp ugt i64 %i.df, 41
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.di, ptr noundef nonnull readonly align 1 dereferenceable(42) @109, i64 range(i64 0, -9223372036854775808) 42, i1 false), !noalias !16436
  store i64 %i.df, ptr %i.e, align 8, !noalias !16420
  %.sroa.4.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.di, ptr %.sroa.4.0..sroa_idx25.i, align 8, !noalias !16420
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 42, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16420
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.av unwind label %bb.au, !noalias !16420

.body.i:                                          ; preds = %bb.az, %bb.ay, %bb.au
  %.pn.i = phi { ptr, i32 } [ %i.dt, %bb.ay ], [ %i.dk, %bb.au ], [ %i.du, %bb.az ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #59
          to label %common.resume unwind label %bb.bd, !noalias !16420

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.aw, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.av:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dl = load i64, ptr %i.b, align 8, !range !38, !noalias !16420, !noundef !27
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !66, !noalias !16420, !noundef !27 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.aw, label %bb.ax, !prof !67

bb.aw:                                            ; preds = %bb.av
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !16420
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #56
          to label %bb.be unwind label %bb.au, !noalias !16420

bb.ax:                                            ; preds = %bb.av
  %i.dr = load ptr, ptr %i.dp, align 8, !noalias !16420, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16420
  store i64 %i.do, ptr %i.d, align 8, !noalias !16420
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16420
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !16420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16420
  store ptr %i.e, ptr %i.c, align 8, !noalias !16420
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !16420
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.ds, align 8, !noalias !16420
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !16420
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @29, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit20.i unwind label %bb.ay, !noalias !16420

bb.ay:                                            ; preds = %bb.ax
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #59
          to label %.body.i unwind label %bb.bd, !noalias !16420

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit20.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16420
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.az, !noalias !16420

bb.az:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit20.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.ba, !noalias !16420

bb.ba:                                            ; preds = %bb.az
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !16420
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit20.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.au, !noalias !16420

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16420
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalars1_0Bb_.exit unwind label %bb.bb, !noalias !16420

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.bc, !noalias !16420

bb.bc:                                            ; preds = %bb.bb
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !16420
  unreachable

common.resume:                                    ; preds = %.body, %bb.bu, %.body.i, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %i.es, %bb.bu ], [ %.pn.i, %.body.i ], [ %i.dw, %bb.bb ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.bd:                                            ; preds = %bb.ay, %.body.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !16420
  unreachable

bb.be:                                            ; preds = %bb.aw
  unreachable

_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalars1_0Bb_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !16420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6142.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6142.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6142.sroa.7)
  %.sroa.2240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2240.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.sroa.7, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.dz, align 8
  store i64 -9223372036854775792, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.sroa.7)
  br label %bb.p

bb.bf:                                            ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr242, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !27
  store i64 -9223372036854775798, ptr %0, align 16
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.eb, ptr %.sroa.461.0..sroa_idx, align 8
  br label %bb.p

bb.bg:                                            ; preds = %bb.k
end_hunk_0
