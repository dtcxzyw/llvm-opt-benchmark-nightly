inline.NumInlined: 3868
inline.NumDeleted: 1539
begin_hunk_0_@_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks:bb.a

.body.i:                                          ; preds = %.body.i.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l, !noalias !6303

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.y, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !6309, !noalias !6324
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !6314, !noalias !6315, !noundef !8
  store i64 %i.bg, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !6309, !noalias !6324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6303
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6303
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.bi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2y_4SendEL_EENtNtB2A_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6328)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6328, !noalias !6331, !noundef !8 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 24) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = add nuw i64 %i.h, 8
  %i.j = and i64 %i.i, -16                        ; 3 uses
  %i.k = add i64 %i.c, 17                         ; 2 uses
  %i.l = add i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = icmp ugt i64 %i.l, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6333
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6333 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !6333
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.l) #36, !noalias !6333
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i11.i.i.i = phi ptr [ %i.p, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i.i, i64 %i.j ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !6341, !noalias !6342, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.r, ptr nonnull align 1 %i.s, i64 %i.k, i1 false), !noalias !6344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6345)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !6348, !noalias !6349, !noundef !8 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val4.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !6351
  %i.w = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = ptrtoint ptr %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.14.023.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.ao, %bb.h ]
  %.sroa.10.022.i.i = phi i16 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %bb.h ] ; 2 uses
  %.sroa.6.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.013.020.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.022.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.aa = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.021.i.i, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.013.020.i.i, %bb.f ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !6352
  %i.ac = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -384 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ac to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.020.i.i, %bb.f ], [ %i.ad, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.021.i.i, %bb.f ], [ %i.ae, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.022.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [24 x i8], ptr %.sroa.013.1.i.i, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  %.val.i.i.i = load i8, ptr %i.aj, align 1, !range !1579, !alias.scope !6355, !noalias !6358, !noundef !8
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.val1.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !6355, !noalias !6358, !nonnull !8, !noundef !8 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.val2.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !6355, !noalias !6358 ; 2 uses
  %i.am = atomicrmw add ptr %.val1.i.i.i, i64 1 monotonic, align 8, !noalias !6360
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %.loopexit.i.i
  %i.ao = add i64 %.sroa.14.023.i.i, -1           ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.z, %i.ar
  %.neg.i.i = sdiv exact i64 %i.as, -24
  %i.at = getelementptr inbounds [24 x i8], ptr %i.r, i64 %.neg.i.i ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -24
  store i8 %.val.i.i.i, ptr %i.au, align 8, !noalias !6344
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.at, i64 -16
  store ptr %.val1.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !6344
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.at, i64 -8
  store ptr %.val2.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !6344
  %i.av = icmp eq i64 %i.ao, 0
  br i1 %i.av, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %bb.h, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !6341, !noalias !6342, !noundef !8
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.u, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.ax, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.r, %.loopexit.i ], [ @4, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.ay, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6361, !noalias !6364, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6361
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6366
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6367
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6367 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6367
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6367
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6366
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6366
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6366
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6380)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6382, !noalias !6383, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !6384
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6382, !noalias !6383, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !6385
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ax, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6388

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.au, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ar, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !6389
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6384
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6384

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6384

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6384

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6384
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ah, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6384
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6384
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6366

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6392, !noalias !6388
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6382, !noalias !6383, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6392, !noalias !6388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6366
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6366
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6393, !noalias !6396, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6393
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6398
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6399
  %i.t = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6399 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6399
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !6399
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.n
  %i.y = icmp ult i64 %i.g, 8
  %i.z = lshr i64 %i.i, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.07.0.i.i.i = select i1 %i.y, i64 %i.g, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6398
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6398
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6398
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6398
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6412)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !6414, !noalias !6415, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ab, i64 %.pre-phi.i, i1 false), !noalias !6416
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6414, !noalias !6415, !noundef !8 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !6417
  %i.af = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6420

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bj, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ax, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ag, %.lr.ph.i.i.i ], [ %i.au, %bb.l ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.am = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.am, align 16, !noalias !6421
  %i.ao = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -640 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ao to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.av ; 4 uses
  %i.ax = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6416
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6427)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6416

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !6427, !noalias !6429, !nonnull !8, !noundef !8 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !6427, !noalias !6429 ; 2 uses
  %i.bb = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6429
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  store ptr %.val.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6424, !noalias !6430
  store ptr %.val1.i.i.i.i, ptr %i.aj, align 8, !alias.scope !6424, !noalias !6430
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub i64 %i.ak, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40                ; 2 uses
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6416
  %i.bj = add nsw i64 %i.bf, 1
  %i.bk = icmp eq i64 %i.ax, 0
  br i1 %i.bk, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6416
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6398

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6431, !noalias !6420
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !6414, !noalias !6415, !noundef !8
  store i64 %i.bn, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6431, !noalias !6420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6398
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6398
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.al

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6432)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6432, !noalias !6435, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6432
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6437
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6438
  %i.t = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6438 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6438
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !6438
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.n
  %i.y = icmp ult i64 %i.g, 8
  %i.z = lshr i64 %i.i, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.07.0.i.i.i = select i1 %i.y, i64 %i.g, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6437
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6437
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6437
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6451)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !6453, !noalias !6454, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ab, i64 %.pre-phi.i, i1 false), !noalias !6455
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6453, !noalias !6454, !noundef !8 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !6456
  %i.af = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6459

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bj, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ax, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ag, %.lr.ph.i.i.i ], [ %i.au, %bb.l ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.am = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.am, align 16, !noalias !6460
  %i.ao = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -640 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ao to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.av ; 4 uses
  %i.ax = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6455
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6466)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6455

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !6466, !noalias !6468, !nonnull !8, !noundef !8 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !6466, !noalias !6468 ; 2 uses
  %i.bb = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6468
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  store ptr %.val.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6463, !noalias !6469
  store ptr %.val1.i.i.i.i, ptr %i.aj, align 8, !alias.scope !6463, !noalias !6469
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub i64 %i.ak, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40                ; 2 uses
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6455
  %i.bj = add nsw i64 %i.bf, 1
  %i.bk = icmp eq i64 %i.ax, 0
  br i1 %i.bk, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6455
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6437

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6470, !noalias !6459
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !6453, !noalias !6454, !noundef !8
  store i64 %i.bn, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6470, !noalias !6459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6437
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6437
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.al

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6471)
end_hunk_0
begin_hunk_1_@_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6672
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6672 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6672
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6672
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6671
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6671
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6671
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6685)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6687, !noalias !6688, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6689
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6687, !noalias !6688, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !6690
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6693

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.be, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.at, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.aq, %bb.l ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !6694
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6689
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6700)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6689

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !6700, !noalias !6702, !nonnull !8, !noundef !8 ; 2 uses
  %i.aw = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6702
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6697, !noalias !6703
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = ashr exact i64 %i.az, 5                 ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6689
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.at, 0
  br i1 %i.bf, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6689
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6671

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6704, !noalias !6693
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !6687, !noalias !6688, !noundef !8
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6704, !noalias !6693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6671
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6671
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6705)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6705, !noalias !6708, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6705
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6710
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6711
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6711 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6711
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6711
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6710
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6710
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6710
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6724)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6726, !noalias !6727, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !6728
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6726, !noalias !6727, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !6729
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ay, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1W_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.o, !noalias !6732

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bg, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.au, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ar, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !6733
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6728
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6739)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6728

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6744)
  %i.ax = load i64, ptr %i.aw, align 8, !range !311, !alias.scope !6746, !noalias !6747, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.m, !noalias !6728

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.ag, align 8, !alias.scope !6748, !noalias !6749
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.n, !noalias !6728

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6728
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.ah, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6728
  %i.bg = add nsw i64 %i.bc, 1
  %i.bh = icmp eq i64 %i.au, 0
  br i1 %i.bh, label %.loopexit.i, label %bb.j

bb.o:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6728
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1n_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.q unwind label %bb.p, !noalias !6710

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6750, !noalias !6732
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !6726, !noalias !6727, !noundef !8
  store i64 %i.bk, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6750, !noalias !6732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6710
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %.body.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6710
  unreachable

bb.q:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6751)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6751, !noalias !6754, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6751
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6756
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 144) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6757
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6757 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6757
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6757
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6756
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6756
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6756
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6770)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6772, !noalias !6773, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !6774
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6772, !noalias !6773, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !6775
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ax, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6778

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.au, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ar, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !6779
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -2304 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6774
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6774

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ag, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aw)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6774

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6774

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6774
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ah, %i.az
  %i.bb = sdiv exact i64 %i.ba, 144               ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [144 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.be, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6774
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6774
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.n, !noalias !6756

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6782, !noalias !6778
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6772, !noalias !6773, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6782, !noalias !6778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6756
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6756
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x i64>, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6783)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6783, !noalias !6786, !noundef !8 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6783
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6788
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.j, i64 56) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6789
  %i.u = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6789 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6789
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !6789
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.x, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.o
  %i.z = icmp ult i64 %i.h, 8
  %i.aa = lshr i64 %i.j, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.07.0.i.i.i = select i1 %i.z, i64 %i.h, i64 %i.ab
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.c, align 8, !noalias !6788
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6788
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6802)
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !6804, !noalias !6805, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ac, i64 %.pre-phi.i, i1 false), !noalias !6806
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !6804, !noalias !6805, !noundef !8 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !6807
  %i.ag = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = ptrtoint ptr %i.ac to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.bj, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.030.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.c) #34
          to label %.body.i unwind label %bb.x, !noalias !6810

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.br, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.029.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.az, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.028.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.027.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.026.i.i.i = phi i16 [ %i.ah, %.lr.ph.i.i.i ], [ %i.aw, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.026.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ao = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.sroa.6.027.i.i.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.013.028.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ao, align 16, !noalias !6811
  %i.aq = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -896 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aq to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.027.i.i.i, %bb.j ], [ %i.as, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.028.i.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.026.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.at = add i16 %.lcssa.i.i.i.i, -1
  %i.au = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = and i16 %i.at, %.lcssa.i.i.i.i
  %i.ax = sub nsw i64 0, %i.av
  %i.ay = getelementptr inbounds [56 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ax ; 7 uses
  %i.az = add i64 %.sroa.1015.029.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6806
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !6814)
  call void @llvm.experimental.noalias.scope.decl(metadata !6817)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ba)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6806

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -32 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6819)
  call void @llvm.experimental.noalias.scope.decl(metadata !6822)
  %i.bc = load i8, ptr %i.bb, align 8, !range !1836, !alias.scope !6824, !noalias !6825, !noundef !8 ; 3 uses
  %i.bd = add nsw i8 %i.bc, -6
  %i.be = icmp samesign ugt i8 %i.bc, 5
  %narrow.i.i.i.i.i = select i1 %i.be, i8 %i.bd, i8 3
  switch i8 %narrow.i.i.i.i.i, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.k:                                             ; preds = %.noexc.i.i.i
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !alias.scope !6826, !noalias !6806
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %.noexc.i.i.i.i unwind label %bb.v, !noalias !6806

.noexc.i.i.i.i:                                   ; preds = %bb.m
  store i8 7, ptr %i.aj, align 8, !alias.scope !6827, !noalias !6828
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.n:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !alias.scope !6826, !noalias !6806
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6829
  call void @llvm.experimental.noalias.scope.decl(metadata !6830)
  switch i8 %i.bc, label %default.unreachable1.i.i.i.i.i.i [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
  ]

default.unreachable1.i.i.i.i.i.i:                 ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.a, align 8, !alias.scope !6833, !noalias !6835
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !alias.scope !6836, !noalias !6825
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !alias.scope !6836, !noalias !6825
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds i8, ptr %i.ay, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc1.i.i.i.i unwind label %bb.v, !noalias !6837

.noexc1.i.i.i.i:                                  ; preds = %bb.s
  store i8 3, ptr %i.a, align 8, !alias.scope !6833, !noalias !6835
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds i8, ptr %i.ay, i64 -24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %.noexc2.i.i.i.i unwind label %bb.v, !noalias !6837

.noexc2.i.i.i.i:                                  ; preds = %bb.t
  store i8 4, ptr %i.a, align 8, !alias.scope !6833, !noalias !6835
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds i8, ptr %i.ay, i64 -24
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %.noexc3.i.i.i.i unwind label %bb.v, !noalias !6837

.noexc3.i.i.i.i:                                  ; preds = %bb.u
  store i8 5, ptr %i.a, align 8, !alias.scope !6833, !noalias !6835
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %.noexc3.i.i.i.i, %.noexc2.i.i.i.i, %.noexc1.i.i.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6829
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #34
          to label %.body.i.i.i unwind label %bb.w, !noalias !6806

bb.w:                                             ; preds = %bb.v
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6806
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.n, %.noexc.i.i.i.i, %bb.l
  %i.bl = ptrtoint ptr %i.ay to i64
  %i.bm = sub i64 %i.am, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 56                ; 2 uses
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [56 x i8], ptr %.sroa.0.0.i, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !6806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6806
  %i.br = add nsw i64 %i.bn, 1
  %i.bs = icmp eq i64 %i.az, 0
  br i1 %i.bs, label %.loopexit.i, label %bb.j

bb.x:                                             ; preds = %.body.i.i.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6806
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #34
          to label %bb.z unwind label %bb.y, !noalias !6788

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6838, !noalias !6810
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !6804, !noalias !6805, !noundef !8
  store i64 %i.bv, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6838, !noalias !6810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !6783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6788
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.y:                                             ; preds = %.body.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6788
  unreachable

bb.z:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.f, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <2 x i64>, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6839)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !6839, !noalias !6842, !noundef !8 ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6839
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6844
  %i.m = add i64 %i.k, 1                          ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.m, i64 136) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = add nuw i64 %i.p, 8
  %i.r = and i64 %i.q, -16                        ; 3 uses
  %i.s = add i64 %i.k, 17                         ; 2 uses
  %i.t = add i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp ult i64 %i.t, %i.r
  %i.v = icmp ugt i64 %i.t, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6845
  %i.x = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6845 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6845
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.aa = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.t), !noalias !6845
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.aa, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.x, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.r
  %i.ac = icmp ult i64 %i.k, 8
  %i.ad = lshr i64 %i.m, 3
  %i.ae = mul nuw nsw i64 %i.ad, 7
  %.sroa.07.0.i.i.i = select i1 %i.ac, i64 %i.k, i64 %i.ae
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.s, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.ab, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.f, align 8, !noalias !6844
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6844
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6844
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  %i.af = load ptr, ptr %1, align 8, !alias.scope !6860, !noalias !6861, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.af, i64 %.pre-phi.i, i1 false), !noalias !6862
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !6860, !noalias !6861, !noundef !8 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !6863
  %i.aj = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = ptrtoint ptr %i.af to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.av, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.032.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.f) #34
          to label %.body.i unwind label %bb.z, !noalias !6866

bb.j:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.012.032.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ck, %bb.y ]
  %.sroa.1015.031.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i ], [ %i.bh, %bb.y ]
  %.sroa.013.030.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.y ] ; 2 uses
  %.sroa.6.029.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.y ] ; 2 uses
  %.sroa.814.028.i.i.i = phi i16 [ %i.ak, %.lr.ph.i.i.i ], [ %i.be, %bb.y ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.028.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aw = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.sroa.6.029.i.i.i, %bb.j ] ; 2 uses
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.sroa.013.030.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !6867
  %i.ay = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -2176 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ay to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.029.i.i.i, %bb.j ], [ %i.ba, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.030.i.i.i, %bb.j ], [ %i.az, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.028.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bb = add i16 %.lcssa.i.i.i.i, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.lcssa.i.i.i.i
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [136 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.bf ; 10 uses
  %i.bh = add i64 %.sroa.1015.031.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6862
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6873)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bi)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6862

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6878)
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bk = load i8, ptr %i.bj, align 8, !range !810, !alias.scope !6880, !noalias !6881, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6882
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -80 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !311, !alias.scope !6880, !noalias !6881, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.bm, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %.noexc.i.i.i.i unwind label %bb.w, !noalias !6883

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !6882
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 -7
  %i.bo = load i8, ptr %i.bn, align 1, !range !810, !alias.scope !6880, !noalias !6881, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6882
  %i.bp = getelementptr inbounds i8, ptr %i.bg, i64 -56 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !311, !alias.scope !6880, !noalias !6881, !noundef !8
  %.not4.i.i.i.i.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not4.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6882
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.r unwind label %bb.q, !noalias !6881

bb.n:                                             ; preds = %.noexc.i.i.i.i
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !6882
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.br = getelementptr inbounds i8, ptr %i.bg, i64 -32 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !311, !alias.scope !6880, !noalias !6881, !noundef !8
  %.not5.i.i.i.i.i = icmp eq i64 %i.bs, -9223372036854775808
  br i1 %.not5.i.i.i.i.i, label %bb.y, label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.q
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.t ], [ %i.bt, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #34
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !6881

bb.q:                                             ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6882
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6882
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.u unwind label %bb.t, !noalias !6881

bb.t:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.p unwind label %bb.v, !noalias !6881

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6882
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.p
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6881
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.w ], [ %.pn.i.i.i.i.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.e) #34
          to label %.body.i.i.i unwind label %bb.x, !noalias !6862

bb.x:                                             ; preds = %.body.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6862
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.o
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.u ], [ -9223372036854775808, %bb.o ]
  %i.by = getelementptr inbounds i8, ptr %i.bg, i64 -112
  %i.bz = load i64, ptr %i.by, align 8, !range !181, !alias.scope !6880, !noalias !6881, !noundef !8
  %i.ca = getelementptr inbounds i8, ptr %i.bg, i64 -104
  %i.cb = load double, ptr %i.ca, align 8, !alias.scope !6880, !noalias !6881
  %i.cc = getelementptr inbounds i8, ptr %i.bg, i64 -96
  store i8 %i.bk, ptr %i.an, align 8, !alias.scope !6884, !noalias !6885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6885
  store i8 %i.bo, ptr %i.ap, align 1, !alias.scope !6884, !noalias !6885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6885
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ar, align 8, !alias.scope !6884, !noalias !6885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !6885
  store i64 %i.bz, ptr %i.am, align 8, !alias.scope !6884, !noalias !6885
  store double %i.cb, ptr %i.as, align 8, !alias.scope !6884, !noalias !6885
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !6880, !noalias !6881
  store <2 x i64> %i.cd, ptr %i.at, align 8, !alias.scope !6884, !noalias !6885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6882
  %i.ce = ptrtoint ptr %i.bg to i64
  %i.cf = sub i64 %i.au, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 136               ; 2 uses
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr inbounds [136 x i8], ptr %.sroa.0.0.i, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cj, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !6862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6862
  %i.ck = add nsw i64 %i.cg, 1
  %i.cl = icmp eq i64 %i.bh, 0
  br i1 %i.cl, label %.loopexit.i, label %bb.j

bb.z:                                             ; preds = %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6862
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aa, !noalias !6844

.loopexit.i:                                      ; preds = %bb.y, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6886, !noalias !6866
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !6860, !noalias !6861, !noundef !8
  store i64 %i.co, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6886, !noalias !6866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !6839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6844
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.aa:                                            ; preds = %.body.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6844
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.i, ptr %i.cq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6887)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6887, !noalias !6890, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6887
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6892
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6893
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6893 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6893
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6893
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6892
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6892
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6892
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6906)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6908, !noalias !6909, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !6910
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6908, !noalias !6909, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !6911
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ax, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6914

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.au, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ar, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !6915
  %i.al = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6910
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6910

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6910

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6910

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6910
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ah, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6910
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6910
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6892

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6918, !noalias !6914
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6908, !noalias !6909, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6918, !noalias !6914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6892
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6892
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6919)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6919, !noalias !6922, !noundef !8 ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6919
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6924
  %i.k = add i64 %i.i, 1                          ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.k, i64 72) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = add nuw i64 %i.n, 8
  %i.p = and i64 %i.o, -16                        ; 3 uses
  %i.q = add i64 %i.i, 17                         ; 2 uses
  %i.r = add i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = icmp ugt i64 %i.r, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6925
  %i.v = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6925 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6925
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.y = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.r), !noalias !6925
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.y, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.v, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.p
  %i.aa = icmp ult i64 %i.i, 8
  %i.ab = lshr i64 %i.k, 3
  %i.ac = mul nuw nsw i64 %i.ab, 7
  %.sroa.07.0.i.i.i = select i1 %i.aa, i64 %i.i, i64 %i.ac
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.q, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.z, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.d, align 8, !noalias !6924
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6924
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6924
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6938)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !6940, !noalias !6941, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ad, i64 %.pre-phi.i, i1 false), !noalias !6942
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !6940, !noalias !6941, !noundef !8 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ad, align 16, !noalias !6943
  %i.ah = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.am = ptrtoint ptr %i.ad to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.030.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #34
          to label %.body.i unwind label %bb.r, !noalias !6946

bb.j:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.012.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bo, %bb.q ]
  %.sroa.1015.029.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %i.az, %bb.q ]
  %.sroa.013.028.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.q ] ; 2 uses
  %.sroa.6.027.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.q ] ; 2 uses
  %.sroa.814.026.i.i.i = phi i16 [ %i.ai, %.lr.ph.i.i.i ], [ %i.aw, %bb.q ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.026.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ao = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.sroa.6.027.i.i.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.013.028.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ao, align 16, !noalias !6947
  %i.aq = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -1152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aq to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.027.i.i.i, %bb.j ], [ %i.as, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.028.i.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.026.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.at = add i16 %.lcssa.i.i.i.i, -1
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = and i16 %i.at, %.lcssa.i.i.i.i
  %i.ax = sub nsw i64 0, %i.av
  %i.ay = getelementptr inbounds [72 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ax ; 4 uses
  %i.az = add i64 %.sroa.1015.029.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6942
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6953)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ba)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6942

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6958)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6960
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bb)
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !6961

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 -24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !311, !alias.scope !6962, !noalias !6963, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6960
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %bb.m unwind label %bb.l, !noalias !6963

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %.body.i.i.i.i unwind label %bb.n, !noalias !6963

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !6960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6960
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6963
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.l
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.be, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #34
          to label %.body.i.i.i unwind label %bb.p, !noalias !6942

bb.p:                                             ; preds = %.body.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6942
  unreachable

bb.q:                                             ; preds = %bb.m, %.noexc.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.m ], [ -9223372036854775808, %.noexc.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6964
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !6965, !noalias !6964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !6964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6960
  %i.bi = ptrtoint ptr %i.ay to i64
  %i.bj = sub i64 %i.am, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 72                ; 2 uses
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [72 x i8], ptr %.sroa.0.0.i, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bn, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !6942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6942
  %i.bo = add nsw i64 %i.bk, 1
  %i.bp = icmp eq i64 %i.az, 0
  br i1 %i.bp, label %.loopexit.i, label %bb.j

bb.r:                                             ; preds = %.body.i.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6942
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.s, !noalias !6924

.loopexit.i:                                      ; preds = %bb.q, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6966, !noalias !6946
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !6940, !noalias !6941, !noundef !8
  store i64 %i.bs, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6966, !noalias !6946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !6919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6924
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %.body.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6924
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.g, ptr %i.bu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6967)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6967, !noalias !6970, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6967
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6972
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 112) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6973
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6973 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6973
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6973
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6972
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6972
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6972
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6986)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6988, !noalias !6989, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !6990
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6988, !noalias !6989, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !6991
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.026.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.k, !noalias !6994

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bb, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.025.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.024.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.023.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.022.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.au, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.022.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.6.023.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.013.024.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !6995
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -1792 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.023.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.024.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.022.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ap ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6990
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar) #40
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.i, !noalias !6990

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.loopexit.i.i.i
  %i.as = add i64 %.sroa.1015.025.i.i.i, -1       ; 2 uses
  %i.at = add i16 %.lcssa.i.i.i.i, -1
  %i.au = and i16 %i.at, %.lcssa.i.i.i.i
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.ag, %i.av
  %i.ax = sdiv exact i64 %i.aw, 112               ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [112 x i8], ptr %.sroa.0.0.i, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ba, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !6990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6990
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.as, 0
  br i1 %i.bc, label %.loopexit.i, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6990
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.m unwind label %bb.l, !noalias !6972

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6998, !noalias !6994
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !6988, !noalias !6989, !noundef !8
  store i64 %i.bf, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6998, !noalias !6994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6972
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6972
  unreachable

bb.m:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load <2 x i64>, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6999)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6999, !noalias !7002, !noundef !8 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 4                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6231

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7004
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7004 ; 2 uses
end_hunk_1
