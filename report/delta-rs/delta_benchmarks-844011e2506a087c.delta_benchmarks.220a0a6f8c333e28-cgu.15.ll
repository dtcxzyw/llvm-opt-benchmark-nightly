inline.NumInlined: 3868
inline.NumDeleted: 1539
begin_hunk_0_@_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks:bb.a
.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -112
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.aa) #34
          to label %bb.i unwind label %bb.h, !noalias !411

bb.h:                                             ; preds = %.body.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !411
  unreachable

bb.i:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -112
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ac), !noalias !411
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.b
  %i.ae = add i64 %i.b, 1
  %i.af = mul nuw i64 %i.ae, %2                   ; 2 uses
  %i.ag = add i64 %3, -1
  %i.ah = add i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub i64 0, %3
  %i.ak = and i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = add i64 %i.b, 17
  %i.am = add i64 %i.al, %i.ak                    ; 4 uses
  %i.an = icmp uge i64 %i.am, %i.ak
  %i.ao = sub nuw i64 -9223372036854775808, %3
  %i.ap = icmp ule i64 %i.am, %i.ao
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.as = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.at = sub nsw i64 0, %i.ak
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %3) #37
  br label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.j, %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB32_4SendEL_EENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !424, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2Z_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !430, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %.val4.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !433
  %i.h = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.c
  %.sroa.14.010.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %.sroa.10.09.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i ] ; 2 uses
  %.sroa.6.08.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i ] ; 2 uses
  %.sroa.04.07.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.04.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.10.09.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2J_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sroa.6.08.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.04.07.i, %bb.d ]
  %.val9.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !434
  %i.m = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.m to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2J_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2J_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.1.i = phi ptr [ %.sroa.04.07.i, %bb.d ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.08.i, %bb.d ], [ %i.o, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.09.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.04.1.i, i64 %i.t
  %i.v = add i64 %.sroa.14.010.i, -1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !446, !noalias !424, !nonnull !8, !noundef !8
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !447
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2J_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1J_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #35, !noalias !424
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e, %_RINvMsh_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2J_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2Z_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2Z_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_11VarProviderNtNtB4_6marker4SyncNtB2v_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.b
  %i.ab = add i64 %i.b, 1
  %i.ac = mul nuw i64 %i.ab, %2                   ; 2 uses
  %i.ad = add i64 %3, -1
  %i.ae = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = sub i64 0, %3
  %i.ah = and i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = add i64 %i.b, 17
  %i.aj = add i64 %i.ai, %i.ah                    ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  %i.al = sub nuw i64 -9223372036854775808, %3
  %i.am = icmp ule i64 %i.aj, %i.al
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.aj, 0
  br i1 %i.ao, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2Z_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ap = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.aq = sub nsw i64 0, %i.ah
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) %3) #37
  br label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.f, %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2Z_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #37
  br label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i75 = alloca [40 x i8], align 8        ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75.a = alloca [40 x i8], align 8      ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 16              ; 9 uses
  store ptr %2, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %3, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  %i.ad = load i64, ptr %i.z, align 8, !range !186, !noundef !8
  %switch.idx.mult = shl nuw nsw i64 %i.ad, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.e

default.unreachable158:                           ; preds = %bb.ai
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !448
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread126

.noexc:                                           ; preds = %bb.c
  %i.ai = load i64, ptr %i.m, align 8, !range !181, !noalias !448, !noundef !8
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !311, !noalias !448, !noundef !8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.f, !prof !229

bb.d:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8, !noalias !448
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #36
          to label %.noexc56 unwind label %.thread126

.noexc56:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ao = load ptr, ptr %i.aa, align 16, !nonnull !8, !noundef !8
  %i.ap = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !462, !invariant.load !8
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !8, !nonnull !8
  %i.ay = invoke noundef nonnull ptr %i.ax(ptr noundef nonnull %i.av)
          to label %bb.s unwind label %.thread126

.thread126:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63, %bb.d, %bb.bj, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

bb.f:                                             ; preds = %.noexc
  %i.az = load ptr, ptr %i.am, align 8, !noalias !448, !nonnull !8, !noundef !8 ; 2 uses
  %i.ba = icmp ugt i64 %i.al, 25
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(26) @11, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !463
  store i64 %i.al, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx105, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g

.body59:                                          ; preds = %bb.l, %bb.g, %bb.k
  %.pn45 = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bb, %bb.g ], [ %i.bl, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #34
          to label %.thread122 unwind label %bb.q

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.i, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.h:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.q, align 8, !range !181, !noundef !8
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !311, !noundef !8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j, !prof !229

bb.i:                                             ; preds = %bb.h
  %i.bh = load i64, ptr %i.bg, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #36
          to label %bb.r unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.bf, ptr %i.w, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bj, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @12, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #34
          to label %.body59 unwind label %bb.q

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body59 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63 unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread122 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67 unwind label %.thread126

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.bp, align 8
  store i64 2, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %bb.bq unwind label %bb.b

bb.q:                                             ; preds = %bb.cd, %bb.t, %bb.cb, %bb.ca, %.thread122, %.body.thread133, %bb.k, %.body59
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.r:                                             ; preds = %bb.i
  unreachable

bb.s:                                             ; preds = %bb.e
  store ptr %i.ay, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.br = load ptr, ptr %i.aa, align 16, !nonnull !8, !noundef !8
  %i.bs = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !462, !invariant.load !8
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = and i64 %i.bv, -16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !8, !nonnull !8
  %i.cb = invoke noundef align 8 ptr %i.ca(ptr noundef nonnull %i.by)
          to label %bb.v unwind label %bb.u

.body.thread:                                     ; preds = %bb.bm, %bb.bg, %bb.bc, %bb.az, %.body, %.body.thread133, %bb.u
  %.pn = phi { ptr, i32 } [ %eh.lpad-body136, %.body.thread133 ], [ %lpad.thr_comm.split-lp139, %.body ], [ %i.cf, %bb.u ], [ %i.ez, %bb.bg ], [ %i.eq, %bb.az ], [ %i.es, %bb.bc ], [ %i.fj, %bb.bm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.cc = load ptr, ptr %i.u, align 8, !alias.scope !470, !nonnull !8, !noundef !8
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !470
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.t, label %.thread122

bb.t:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %.thread122 unwind label %bb.q

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !8
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies20new_from_constraints(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.cb, i64 noundef %i.ci)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.cj = load i64, ptr %4, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.cj, -9223372036854775808
  br i1 %.not, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val54 = load ptr, ptr %i.ck, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val55 = load i64, ptr %i.cl, align 8, !noundef !8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !474
  %i.cm = icmp ult i64 %.val55, 1152921504606846976
  call void @llvm.assume(i1 %i.cm)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies31project_functional_dependencies(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val54, i64 noundef %.val55, i64 noundef %.val55)
          to label %.noexc69 unwind label %.body.thread140

.noexc69:                                         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !474
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %.val55
  store ptr %.val54, ptr %i.i, align 8, !noalias !474
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !noalias !474
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.cp, align 8, !noalias !474
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.u, ptr %i.cq, align 8, !noalias !474
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newNtNtB6_6string6StringE00EE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.y unwind label %.thread5.i, !noalias !474

.thread5.i:                                       ; preds = %.noexc69
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.y:                                             ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !474
  %i.cs = load ptr, ptr %i.u, align 8, !noalias !474, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !474
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct)
          to label %bb.aa unwind label %bb.ag, !noalias !474

bb.z:                                             ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !474
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema17new_with_metadata(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ab unwind label %bb.z, !noalias !474

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !474
  %i.cv = load i64, ptr %i.k, align 8, !range !311, !noalias !474, !noundef !8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, -9223372036854775808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !noalias !474
  br i1 %i.cw, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !474
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, i64 40, i1 false), !noalias !476
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !471, !noalias !476
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ad, !noalias !474

bb.ad:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread133 unwind label %bb.ae, !noalias !474

bb.ae:                                            ; preds = %bb.ad
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !474
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bf unwind label %.body.thread140

bb.af:                                            ; preds = %bb.ab
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.68.0.copyload.i = load i64, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !474
  store i64 %i.cv, ptr %i.g, align 8, !noalias !474
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, i64 40, i1 false), !noalias !474
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.68.0.copyload.i, ptr %.sroa.8.0..sroa_idx3.i, align 8, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !474
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc74 unwind label %.body.thread140

.noexc74:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !474
  br label %bb.bf

bb.ag:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #34
          to label %.thread.i unwind label %bb.ah, !noalias !474

bb.ah:                                            ; preds = %.thread.i, %bb.ag
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !474
  unreachable

.thread.i:                                        ; preds = %bb.ag, %bb.z, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %i.cr, %.thread5.i ], [ %i.cu, %bb.z ], [ %i.db, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body.thread133 unwind label %bb.ah, !noalias !474

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.de, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !482
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !480, !noalias !477, !nonnull !8, !align !461, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.dh = load i64, ptr %i.dg, align 8, !range !186, !alias.scope !486, !noalias !488, !noundef !8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !486, !noalias !488, !nonnull !8, !noundef !8 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !486, !noalias !488, !noundef !8 ; 3 uses
  %i.dm = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8, !noalias !489
  %i.dn = icmp slt i64 %i.dm, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink18.i.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink15.i.sroa.gep11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.dh, label %default.unreachable158 [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.am, label %bb.aw

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.ar, label %bb.aq

bb.am:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.au, %bb.an
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.au ], [ %.sink18.i.sroa.gep10.i, %bb.an ]
  %.sink16.i.i = phi ptr [ %i.dv, %bb.au ], [ %i.dj, %bb.an ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.au ], [ %.sink15.i.sroa.gep11.i, %bb.an ]
  %.sink13.i.i = phi i64 [ %i.dx, %bb.au ], [ %i.dl, %bb.an ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.au ], [ 24, %bb.an ]
  %.sink10.ph.i.i = phi ptr [ %i.eb, %bb.au ], [ %i.dp, %bb.an ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.au ], [ 32, %bb.an ]
  %.sink7.ph.i.i = phi i64 [ %i.ed, %bb.au ], [ %i.dr, %bb.an ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !483, !noalias !490
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !483, !noalias !490
  br label %bb.aw

bb.an:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !486, !noalias !488, !nonnull !8, !noundef !8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !486, !noalias !488, !noundef !8
  %i.ds = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !489
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.ap, label %.sink.split.i.i

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !486, !noalias !488, !nonnull !8, !noundef !8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !486, !noalias !488, !noundef !8
  %i.dy = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !noalias !489
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !486, !noalias !488, !nonnull !8, !noundef !8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !486, !noalias !488, !noundef !8
  %i.ee = atomicrmw add ptr %i.eb, i64 1 monotonic, align 8, !noalias !489
  %i.ef = icmp slt i64 %i.ee, 0
  br i1 %i.ef, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  store ptr %i.dj, ptr %.sink18.i.sroa.gep10.i, align 8, !alias.scope !483, !noalias !490
  store i64 %i.dl, ptr %.sink15.i.sroa.gep11.i, align 8, !alias.scope !483, !noalias !490
  br label %.sink.split.i.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %.sink.split.i.i, %bb.aj
  %.sink12.i.i = phi i64 [ 8, %bb.aj ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.dj, %bb.aj ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.aj ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.dl, %bb.aj ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.eg, align 8, !alias.scope !483, !noalias !490
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.eh, align 8, !alias.scope !483, !noalias !490
  store i64 %i.dh, ptr %i.c, align 8, !alias.scope !483, !noalias !490
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !480, !noalias !477, !nonnull !8, !align !461, !noundef !8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !482, !nonnull !8, !noundef !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  invoke void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.el)
          to label %bb.ax unwind label %bb.bc, !noalias !482

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !482
  %i.em = load i64, ptr %i.d, align 8, !range !311, !noalias !482, !noundef !8 ; 2 uses
  %i.en = icmp eq i64 %i.em, -9223372036854775808
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i64 40, i1 false), !noalias !482
  br i1 %i.en, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !482
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, i64 40, i1 false), !noalias !480
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !477, !noalias !480
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.az, !noalias !477

bb.az:                                            ; preds = %bb.ay
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body.thread unwind label %bb.ba, !noalias !477

bb.ba:                                            ; preds = %bb.az
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !477
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.be unwind label %.body

bb.bb:                                            ; preds = %bb.ax
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.67.0.copyload.i = load i64, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !482
  store i64 %i.em, ptr %i.b, align 8, !noalias !482
  %.sroa.6.0..sroa_idx2.i78 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i78, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, i64 40, i1 false), !noalias !482
  %.sroa.8.0..sroa_idx3.i79 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.67.0.copyload.i, ptr %.sroa.8.0..sroa_idx3.i79, align 8, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 24, i1 false), !noalias !477
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc84 unwind label %.body

.noexc84:                                         ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  br label %bb.be

bb.bc:                                            ; preds = %bb.aw
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #34
          to label %.body.thread unwind label %bb.bd, !noalias !477

bb.bd:                                            ; preds = %bb.bc
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !477
  unreachable

.body.thread140:                                  ; preds = %bb.af, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %lpad.thr_comm138 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread133

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85
  %lpad.thr_comm.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.be:                                            ; preds = %.noexc84, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.eu = load i64, ptr %i.s, align 8, !range !311, !noundef !8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, -9223372036854775808
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.ew, i64 40, i1 false)
  br i1 %i.ev, label %bb.bi, label %bb.bk

bb.bf:                                            ; preds = %.noexc74, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.ey, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body.thread unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %.body

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.fc = load ptr, ptr %i.u, align 8, !alias.scope !497, !nonnull !8, !noundef !8
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !497
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91 unwind label %.thread126

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.640.0.copyload = load i64, ptr %.sroa.640.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %i.n, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.eu, ptr %i.fg, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.640.0.copyload, ptr %.sroa.313.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !498
  %i.fh = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !498 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.bl, label %bb.bo, !prof !229

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #36
          to label %.noexc92 unwind label %bb.bm

.noexc92:                                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.fg)
          to label %.body.thread unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i64 %6, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %7, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fl = load <2 x ptr>, ptr %i.aa, align 16
  store <2 x ptr> %i.fl, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fh, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !507, !nonnull !8, !noundef !8
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !507
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.p

bb.bq:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cb unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bs
  %i.fs = load i64, ptr %4, align 8, !range !311, !alias.scope !508, !noundef !8
  %i.ft = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %i.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cc unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.fx = load ptr, ptr %i.aa, align 16, !alias.scope !517, !nonnull !8, !noundef !8
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !517
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

.body.thread133:                                  ; preds = %.thread.i, %bb.ad, %.body.thread140
  %eh.lpad-body136 = phi { ptr, i32 } [ %lpad.thr_comm138, %.body.thread140 ], [ %i.cz, %bb.ad ], [ %.pn4.i, %.thread.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.t) #34
          to label %.body.thread unwind label %bb.q

.thread122:                                       ; preds = %.body.thread, %bb.t, %.body59, %bb.n, %.thread126
  %.pn45.pn121 = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %lpad.thr_comm, %.thread126 ], [ %.pn45, %.body59 ], [ %.pn, %bb.t ], [ %.pn, %.body.thread ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z) #34
          to label %bb.ca unwind label %bb.q

bb.ca:                                            ; preds = %.thread122, %bb.b
  %.pn45.pn.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.b ], [ %.pn45.pn121, %.thread122 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #34
          to label %bb.cb unwind label %bb.q

bb.cb:                                            ; preds = %bb.ca, %bb.br, %bb.bu
  %.pn45.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.pn.ph, %bb.ca ], [ %i.fr, %bb.bu ], [ %i.fp, %bb.br ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %4) #34
          to label %bb.cc unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103: ; preds = %bb.cc, %bb.cd
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.ph

bb.cc:                                            ; preds = %bb.cb, %bb.bw, %bb.by
  %.pn45.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.pn.pn.ph, %bb.cb ], [ %i.fw, %bb.by ], [ %i.fu, %bb.bw ]
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.ga = load ptr, ptr %i.aa, align 16, !alias.scope !524, !nonnull !8, !noundef !8
  %i.gb = atomicrmw sub ptr %i.ga, i64 1 release, align 8, !noalias !524
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %.sroa.6.i75 = alloca [40 x i8], align 8        ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75.a = alloca [40 x i8], align 8      ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 16              ; 8 uses
  store ptr %2, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %3, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !525
  %i.ac = load i64, ptr %i.z, align 8, !range !186, !noundef !8
  %switch.idx.mult = shl nuw nsw i64 %i.ac, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.b, label %bb.d

bb.a:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.thread

default.unreachable158:                           ; preds = %bb.ah
  unreachable

bb.b:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !532
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread126

.noexc:                                           ; preds = %bb.b
  %i.ai = load i64, ptr %i.m, align 8, !range !181, !noalias !532, !noundef !8
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !311, !noalias !532, !noundef !8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.e, !prof !229

bb.c:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8, !noalias !532
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #36
          to label %.noexc56 unwind label %.thread126

.noexc56:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !462, !invariant.load !8
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = and i64 %i.aq, -16
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !8, !nonnull !8
  %i.aw = invoke noundef nonnull ptr %i.av(ptr noundef nonnull %i.at)
          to label %bb.r unwind label %.thread126

.thread126:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63, %bb.c, %bb.bi, %bb.d, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

bb.e:                                             ; preds = %.noexc
  %i.ax = load ptr, ptr %i.am, align 8, !noalias !532, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = icmp ugt i64 %i.al, 25
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !532
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ax, ptr noundef nonnull readonly align 1 dereferenceable(26) @11, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !545
  store i64 %i.al, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx105, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %bb.f

.body59:                                          ; preds = %bb.k, %bb.f, %bb.j
  %.pn45 = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.az, %bb.f ], [ %i.bj, %bb.k ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #34
          to label %.thread122 unwind label %bb.p

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.h, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.g:                                             ; preds = %bb.e
  %i.ba = load i64, ptr %i.q, align 8, !range !181, !noundef !8
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !311, !noundef !8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.h, label %bb.i, !prof !229

bb.h:                                             ; preds = %bb.g
  %i.bf = load i64, ptr %i.be, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #36
          to label %bb.q unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.be, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.bd, ptr %i.w, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bg, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bh, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @12, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #34
          to label %.body59 unwind label %bb.p

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body59 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63 unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread122 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67 unwind label %.thread126

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.bn, align 8
  store i64 2, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %bb.bp unwind label %bb.a

bb.p:                                             ; preds = %bb.cb, %bb.s, %bb.bz, %.thread, %.thread122, %.body.thread133, %bb.j, %.body59
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.q:                                             ; preds = %bb.h
  unreachable

bb.r:                                             ; preds = %bb.d
  store ptr %i.aw, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bp = load ptr, ptr %i.aa, align 16, !nonnull !8, !noundef !8
  %i.bq = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !462, !invariant.load !8
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = and i64 %i.bt, -16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !8, !nonnull !8
  %i.bz = invoke noundef align 8 ptr %i.by(ptr noundef nonnull %i.bw)
          to label %bb.u unwind label %bb.t

.body.thread:                                     ; preds = %bb.bl, %bb.bf, %bb.bb, %bb.ay, %.body, %.body.thread133, %bb.t
  %.pn = phi { ptr, i32 } [ %eh.lpad-body136, %.body.thread133 ], [ %lpad.thr_comm.split-lp139, %.body ], [ %i.cd, %bb.t ], [ %i.ex, %bb.bf ], [ %i.eo, %bb.ay ], [ %i.eq, %bb.bb ], [ %i.fh, %bb.bl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.ca = load ptr, ptr %i.u, align 8, !alias.scope !552, !nonnull !8, !noundef !8
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !552
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.thread122

bb.s:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %.thread122 unwind label %bb.p

bb.t:                                             ; preds = %bb.u, %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.u:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !8
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies20new_from_constraints(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.bz, i64 noundef %i.cg)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ch = load i64, ptr %4, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %.not, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val54 = load ptr, ptr %i.ci, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val55 = load i64, ptr %i.cj, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !556
  %i.ck = icmp ult i64 %.val55, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ck)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies31project_functional_dependencies(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val54, i64 noundef %.val55, i64 noundef %.val55)
          to label %.noexc69 unwind label %.body.thread140

.noexc69:                                         ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !556
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %.val55
  store ptr %.val54, ptr %i.i, align 8, !noalias !556
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !noalias !556
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.cn, align 8, !noalias !556
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.u, ptr %i.co, align 8, !noalias !556
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newB1x_E00EE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.x unwind label %.thread5.i, !noalias !556

.thread5.i:                                       ; preds = %.noexc69
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.x:                                             ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !556
  %i.cq = load ptr, ptr %i.u, align 8, !noalias !556, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !556
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cr)
          to label %bb.z unwind label %bb.af, !noalias !556

bb.y:                                             ; preds = %bb.z
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !556
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema17new_with_metadata(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.aa unwind label %bb.y, !noalias !556

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !556
  %i.ct = load i64, ptr %i.k, align 8, !range !311, !noalias !556, !noundef !8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -9223372036854775808
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false), !noalias !556
  br i1 %i.cu, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !556
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, i64 40, i1 false), !noalias !558
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !553, !noalias !558
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ac, !noalias !556

bb.ac:                                            ; preds = %bb.ab
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread133 unwind label %bb.ad, !noalias !556

bb.ad:                                            ; preds = %bb.ac
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !556
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.be unwind label %.body.thread140

bb.ae:                                            ; preds = %bb.aa
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.68.0.copyload.i = load i64, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !556
  store i64 %i.ct, ptr %i.g, align 8, !noalias !556
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, i64 40, i1 false), !noalias !556
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.68.0.copyload.i, ptr %.sroa.8.0..sroa_idx3.i, align 8, !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !556
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc74 unwind label %.body.thread140

.noexc74:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !556
  br label %bb.be

bb.af:                                            ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #34
          to label %.thread.i unwind label %bb.ag, !noalias !556

bb.ag:                                            ; preds = %.thread.i, %bb.af
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !556
  unreachable

.thread.i:                                        ; preds = %bb.af, %bb.y, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %i.cp, %.thread5.i ], [ %i.cs, %bb.y ], [ %i.cz, %bb.af ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body.thread133 unwind label %bb.ag, !noalias !556

bb.ah:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.dc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !564
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !562, !noalias !559, !nonnull !8, !align !461, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.df = load i64, ptr %i.de, align 8, !range !186, !alias.scope !568, !noalias !570, !noundef !8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !568, !noalias !570, !nonnull !8, !noundef !8 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !568, !noalias !570, !noundef !8 ; 3 uses
  %i.dk = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8, !noalias !571
  %i.dl = icmp slt i64 %i.dk, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink18.i.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink15.i.sroa.gep11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.df, label %default.unreachable158 [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dl, label %bb.al, label %bb.av

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.dl, label %bb.an, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  br i1 %i.dl, label %bb.aq, label %bb.ap

bb.al:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.at, %bb.am
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.at ], [ %.sink18.i.sroa.gep10.i, %bb.am ]
  %.sink16.i.i = phi ptr [ %i.dt, %bb.at ], [ %i.dh, %bb.am ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.at ], [ %.sink15.i.sroa.gep11.i, %bb.am ]
  %.sink13.i.i = phi i64 [ %i.dv, %bb.at ], [ %i.dj, %bb.am ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.at ], [ 24, %bb.am ]
  %.sink10.ph.i.i = phi ptr [ %i.dz, %bb.at ], [ %i.dn, %bb.am ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.at ], [ 32, %bb.am ]
  %.sink7.ph.i.i = phi i64 [ %i.eb, %bb.at ], [ %i.dp, %bb.am ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !565, !noalias !572
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !565, !noalias !572
  br label %bb.av

bb.am:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !568, !noalias !570, !nonnull !8, !noundef !8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !568, !noalias !570, !noundef !8
  %i.dq = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !571
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.ao, label %.sink.split.i.i

bb.an:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !568, !noalias !570, !nonnull !8, !noundef !8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !568, !noalias !570, !noundef !8
  %i.dw = atomicrmw add ptr %i.dt, i64 1 monotonic, align 8, !noalias !571
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !568, !noalias !570, !nonnull !8, !noundef !8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !568, !noalias !570, !noundef !8
  %i.ec = atomicrmw add ptr %i.dz, i64 1 monotonic, align 8, !noalias !571
  %i.ed = icmp slt i64 %i.ec, 0
  br i1 %i.ed, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ar
  store ptr %i.dh, ptr %.sink18.i.sroa.gep10.i, align 8, !alias.scope !565, !noalias !572
  store i64 %i.dj, ptr %.sink15.i.sroa.gep11.i, align 8, !alias.scope !565, !noalias !572
  br label %.sink.split.i.i

bb.au:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %.sink.split.i.i, %bb.ai
  %.sink12.i.i = phi i64 [ 8, %bb.ai ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.dh, %bb.ai ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.ai ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.dj, %bb.ai ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.ee, align 8, !alias.scope !565, !noalias !572
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.ef, align 8, !alias.scope !565, !noalias !572
  store i64 %i.df, ptr %i.c, align 8, !alias.scope !565, !noalias !572
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !562, !noalias !559, !nonnull !8, !align !461, !noundef !8
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !564, !nonnull !8, !noundef !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  invoke void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ej)
          to label %bb.aw unwind label %bb.bb, !noalias !564

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !564
  %i.ek = load i64, ptr %i.d, align 8, !range !311, !noalias !564, !noundef !8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, -9223372036854775808
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, ptr noundef nonnull align 8 dereferenceable(40) %i.em, i64 40, i1 false), !noalias !564
  br i1 %i.el, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !564
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.en, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, i64 40, i1 false), !noalias !562
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !559, !noalias !562
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ay, !noalias !559

bb.ay:                                            ; preds = %bb.ax
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body.thread unwind label %bb.az, !noalias !559

bb.az:                                            ; preds = %bb.ay
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !559
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.bd unwind label %.body

bb.ba:                                            ; preds = %bb.aw
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.67.0.copyload.i = load i64, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !564
  store i64 %i.ek, ptr %i.b, align 8, !noalias !564
  %.sroa.6.0..sroa_idx2.i78 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i78, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, i64 40, i1 false), !noalias !564
  %.sroa.8.0..sroa_idx3.i79 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.67.0.copyload.i, ptr %.sroa.8.0..sroa_idx3.i79, align 8, !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 24, i1 false), !noalias !559
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc84 unwind label %.body

.noexc84:                                         ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  br label %bb.bd

bb.bb:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #34
          to label %.body.thread unwind label %bb.bc, !noalias !559

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !559
  unreachable

.body.thread140:                                  ; preds = %bb.ae, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %lpad.thr_comm138 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread133

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85
  %lpad.thr_comm.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bd:                                            ; preds = %.noexc84, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.es = load i64, ptr %i.s, align 8, !range !311, !noundef !8 ; 2 uses
  %i.et = icmp eq i64 %i.es, -9223372036854775808
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.eu, i64 40, i1 false)
  br i1 %i.et, label %bb.bh, label %bb.bj

bb.be:                                            ; preds = %.noexc74, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.ew, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body.thread unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85: ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %.body

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.fa = load ptr, ptr %i.u, align 8, !alias.scope !579, !nonnull !8, !noundef !8
  %i.fb = atomicrmw sub ptr %i.fa, i64 1 release, align 8, !noalias !579
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91 unwind label %.thread126

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.640.0.copyload = load i64, ptr %.sroa.640.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %i.n, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.es, ptr %i.fe, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.640.0.copyload, ptr %.sroa.313.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !580
  %i.ff = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !580 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.bk, label %bb.bn, !prof !229

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #36
          to label %.noexc92 unwind label %bb.bl

.noexc92:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.fe)
          to label %.body.thread unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ff, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i64 %6, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %7, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fj = load <2 x ptr>, ptr %i.aa, align 16
  store <2 x ptr> %i.fj, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ff, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.fk = load ptr, ptr %i.u, align 8, !alias.scope !589, !nonnull !8, !noundef !8
  %i.fl = atomicrmw sub ptr %i.fk, i64 1 release, align 8, !noalias !589
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.o

bb.bp:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bz unwind label %bb.bs

bb.br:                                            ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.br
  %i.fq = load i64, ptr %4, align 8, !range !311, !alias.scope !590, !noundef !8
  %i.fr = icmp eq i64 %i.fq, -9223372036854775808
  br i1 %i.fr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ca unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.fv = load ptr, ptr %i.aa, align 16, !alias.scope !599, !nonnull !8, !noundef !8
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !599
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

.body.thread133:                                  ; preds = %.thread.i, %bb.ac, %.body.thread140
  %eh.lpad-body136 = phi { ptr, i32 } [ %lpad.thr_comm138, %.body.thread140 ], [ %i.cx, %bb.ac ], [ %.pn4.i, %.thread.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.t) #34
          to label %.body.thread unwind label %bb.p

.thread122:                                       ; preds = %.body.thread, %bb.s, %.body59, %bb.m, %.thread126
  %.pn45.pn121 = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %lpad.thr_comm, %.thread126 ], [ %.pn45, %.body59 ], [ %.pn, %bb.s ], [ %.pn, %.body.thread ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z) #34
          to label %.thread unwind label %bb.p

.thread:                                          ; preds = %bb.a, %.thread122
  %.pn45.pn.pn115 = phi { ptr, i32 } [ %i.ah, %bb.a ], [ %.pn45.pn121, %.thread122 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #34
          to label %bb.bz unwind label %bb.p

bb.bz:                                            ; preds = %.thread, %bb.bq, %bb.bt
  %.pn45.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.pn115, %.thread ], [ %i.fp, %bb.bt ], [ %i.fn, %bb.bq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %4) #34
          to label %bb.ca unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103: ; preds = %bb.ca, %bb.cb
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.ph

bb.ca:                                            ; preds = %bb.bz, %bb.bv, %bb.bx
  %.pn45.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.pn.pn.ph, %bb.bz ], [ %i.fu, %bb.bx ], [ %i.fs, %bb.bv ]
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.fy = load ptr, ptr %i.aa, align 16, !alias.scope !606, !nonnull !8, !noundef !8
  %i.fz = atomicrmw sub ptr %i.fy, i64 1 release, align 8, !noalias !606
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103 unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScan7try_newReECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i75 = alloca [40 x i8], align 8        ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75.a = alloca [40 x i8], align 8      ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 16              ; 9 uses
  store ptr %3, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %4, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  %i.ad = load i64, ptr %i.z, align 8, !range !186, !noundef !8
  %switch.idx.mult = shl nuw nsw i64 %i.ad, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.e

default.unreachable158:                           ; preds = %bb.ai
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !607
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread126

.noexc:                                           ; preds = %bb.c
  %i.ai = load i64, ptr %i.m, align 8, !range !181, !noalias !607, !noundef !8
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !311, !noalias !607, !noundef !8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.f, !prof !229

bb.d:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8, !noalias !607
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #36
          to label %.noexc56 unwind label %.thread126

.noexc56:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ao = load ptr, ptr %i.aa, align 16, !nonnull !8, !noundef !8
  %i.ap = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !462, !invariant.load !8
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !8, !nonnull !8
  %i.ay = invoke noundef nonnull ptr %i.ax(ptr noundef nonnull %i.av)
          to label %bb.s unwind label %.thread126

.thread126:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63, %bb.d, %bb.bj, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

bb.f:                                             ; preds = %.noexc
  %i.az = load ptr, ptr %i.am, align 8, !noalias !607, !nonnull !8, !noundef !8 ; 2 uses
  %i.ba = icmp ugt i64 %i.al, 25
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(26) @11, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !620
  store i64 %i.al, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx105, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g

.body59:                                          ; preds = %bb.l, %bb.g, %bb.k
  %.pn45 = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bb, %bb.g ], [ %i.bl, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #34
          to label %.thread122 unwind label %bb.q

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.i, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.h:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.q, align 8, !range !181, !noundef !8
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !311, !noundef !8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j, !prof !229

bb.i:                                             ; preds = %bb.h
  %i.bh = load i64, ptr %i.bg, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #36
          to label %bb.r unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.bf, ptr %i.w, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bj, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @12, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #34
          to label %.body59 unwind label %bb.q

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body59 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit58
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63 unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.thread122 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67 unwind label %.thread126

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.bp, align 8
  store i64 2, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit67
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %bb.bq unwind label %bb.b

bb.q:                                             ; preds = %bb.cd, %bb.t, %bb.cb, %bb.ca, %.thread122, %.body.thread133, %bb.k, %.body59
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.r:                                             ; preds = %bb.i
  unreachable

bb.s:                                             ; preds = %bb.e
  store ptr %i.ay, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.br = load ptr, ptr %i.aa, align 16, !nonnull !8, !noundef !8
  %i.bs = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !462, !invariant.load !8
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = and i64 %i.bv, -16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !8, !nonnull !8
  %i.cb = invoke noundef align 8 ptr %i.ca(ptr noundef nonnull %i.by)
          to label %bb.v unwind label %bb.u

.body.thread:                                     ; preds = %bb.bm, %bb.bg, %bb.bc, %bb.az, %.body, %.body.thread133, %bb.u
  %.pn = phi { ptr, i32 } [ %eh.lpad-body136, %.body.thread133 ], [ %lpad.thr_comm.split-lp139, %.body ], [ %i.cf, %bb.u ], [ %i.ez, %bb.bg ], [ %i.eq, %bb.az ], [ %i.es, %bb.bc ], [ %i.fj, %bb.bm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.cc = load ptr, ptr %i.u, align 8, !alias.scope !627, !nonnull !8, !noundef !8
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !627
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.t, label %.thread122

bb.t:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %.thread122 unwind label %bb.q

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.v:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !8
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies20new_from_constraints(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.cb, i64 noundef %i.ci)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.cj = load i64, ptr %5, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.cj, -9223372036854775808
  br i1 %.not, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val54 = load ptr, ptr %i.ck, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val55 = load i64, ptr %i.cl, align 8, !noundef !8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !631
  %i.cm = icmp ult i64 %.val55, 1152921504606846976
  call void @llvm.assume(i1 %i.cm)
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common23functional_dependenciesNtB5_22FunctionalDependencies31project_functional_dependencies(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val54, i64 noundef %.val55, i64 noundef %.val55)
          to label %.noexc69 unwind label %.body.thread140

.noexc69:                                         ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !631
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %.val55
  store ptr %.val54, ptr %i.i, align 8, !noalias !631
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !noalias !631
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.z, ptr %i.cp, align 8, !noalias !631
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.u, ptr %i.cq, align 8, !noalias !631
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5i_9TableScan7try_newReE00EE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.y unwind label %.thread5.i, !noalias !631

.thread5.i:                                       ; preds = %.noexc69
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.y:                                             ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !631
  %i.cs = load ptr, ptr %i.u, align 8, !noalias !631, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !631
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct)
          to label %bb.aa unwind label %bb.ag, !noalias !631

bb.z:                                             ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !631
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema17new_with_metadata(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ab unwind label %bb.z, !noalias !631

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !631
  %i.cv = load i64, ptr %i.k, align 8, !range !311, !noalias !631, !noundef !8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, -9223372036854775808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !noalias !631
  br i1 %i.cw, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !631
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, i64 40, i1 false), !noalias !633
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !628, !noalias !633
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ad, !noalias !631

bb.ad:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread133 unwind label %bb.ae, !noalias !631

bb.ae:                                            ; preds = %bb.ad
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !631
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bf unwind label %.body.thread140

bb.af:                                            ; preds = %bb.ab
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.68.0.copyload.i = load i64, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !631
  store i64 %i.cv, ptr %i.g, align 8, !noalias !631
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75.a, i64 40, i1 false), !noalias !631
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.68.0.copyload.i, ptr %.sroa.8.0..sroa_idx3.i, align 8, !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !631
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc74 unwind label %.body.thread140

.noexc74:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !631
  br label %bb.bf

bb.ag:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #34
          to label %.thread.i unwind label %bb.ah, !noalias !631

bb.ah:                                            ; preds = %.thread.i, %bb.ag
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !631
  unreachable

.thread.i:                                        ; preds = %bb.ag, %bb.z, %.thread5.i
  %.pn4.i = phi { ptr, i32 } [ %i.cr, %.thread5.i ], [ %i.cu, %bb.z ], [ %i.db, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body.thread133 unwind label %bb.ah, !noalias !631

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.de, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i75)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !639
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !637, !noalias !634, !nonnull !8, !align !461, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.dh = load i64, ptr %i.dg, align 8, !range !186, !alias.scope !643, !noalias !645, !noundef !8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !643, !noalias !645, !nonnull !8, !noundef !8 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !643, !noalias !645, !noundef !8 ; 3 uses
  %i.dm = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8, !noalias !646
  %i.dn = icmp slt i64 %i.dm, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink18.i.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink15.i.sroa.gep11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.dh, label %default.unreachable158 [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.am, label %bb.aw

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.ar, label %bb.aq

bb.am:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.au, %bb.an
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.au ], [ %.sink18.i.sroa.gep10.i, %bb.an ]
  %.sink16.i.i = phi ptr [ %i.dv, %bb.au ], [ %i.dj, %bb.an ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.au ], [ %.sink15.i.sroa.gep11.i, %bb.an ]
  %.sink13.i.i = phi i64 [ %i.dx, %bb.au ], [ %i.dl, %bb.an ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.au ], [ 24, %bb.an ]
  %.sink10.ph.i.i = phi ptr [ %i.eb, %bb.au ], [ %i.dp, %bb.an ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.au ], [ 32, %bb.an ]
  %.sink7.ph.i.i = phi i64 [ %i.ed, %bb.au ], [ %i.dr, %bb.an ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !640, !noalias !647
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !640, !noalias !647
  br label %bb.aw

bb.an:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !643, !noalias !645, !nonnull !8, !noundef !8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !643, !noalias !645, !noundef !8
  %i.ds = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !646
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.ap, label %.sink.split.i.i

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !643, !noalias !645, !nonnull !8, !noundef !8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !643, !noalias !645, !noundef !8
  %i.dy = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !noalias !646
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !643, !noalias !645, !nonnull !8, !noundef !8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !643, !noalias !645, !noundef !8
  %i.ee = atomicrmw add ptr %i.eb, i64 1 monotonic, align 8, !noalias !646
  %i.ef = icmp slt i64 %i.ee, 0
  br i1 %i.ef, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  store ptr %i.dj, ptr %.sink18.i.sroa.gep10.i, align 8, !alias.scope !640, !noalias !647
  store i64 %i.dl, ptr %.sink15.i.sroa.gep11.i, align 8, !alias.scope !640, !noalias !647
  br label %.sink.split.i.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %.sink.split.i.i, %bb.aj
  %.sink12.i.i = phi i64 [ 8, %bb.aj ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.dj, %bb.aj ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.aj ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.dl, %bb.aj ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.eg, align 8, !alias.scope !640, !noalias !647
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.eh, align 8, !alias.scope !640, !noalias !647
  store i64 %i.dh, ptr %i.c, align 8, !alias.scope !640, !noalias !647
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !637, !noalias !634, !nonnull !8, !align !461, !noundef !8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !639, !nonnull !8, !noundef !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  invoke void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.el)
          to label %bb.ax unwind label %bb.bc, !noalias !639

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !639
  %i.em = load i64, ptr %i.d, align 8, !range !311, !noalias !639, !noundef !8 ; 2 uses
  %i.en = icmp eq i64 %i.em, -9223372036854775808
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i64 40, i1 false), !noalias !639
  br i1 %i.en, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !639
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, i64 40, i1 false), !noalias !637
  store i64 -9223372036854775808, ptr %i.s, align 8, !alias.scope !634, !noalias !637
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.az, !noalias !634

bb.az:                                            ; preds = %bb.ay
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body.thread unwind label %bb.ba, !noalias !634

bb.ba:                                            ; preds = %bb.az
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !634
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.be unwind label %.body

bb.bb:                                            ; preds = %bb.ax
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.67.0.copyload.i = load i64, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !639
  store i64 %i.em, ptr %i.b, align 8, !noalias !639
  %.sroa.6.0..sroa_idx2.i78 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i78, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i75, i64 40, i1 false), !noalias !639
  %.sroa.8.0..sroa_idx3.i79 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.67.0.copyload.i, ptr %.sroa.8.0..sroa_idx3.i79, align 8, !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 24, i1 false), !noalias !634
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema28with_functional_dependencies(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc84 unwind label %.body

.noexc84:                                         ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !639
  br label %bb.be

bb.bc:                                            ; preds = %bb.aw
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #34
          to label %.body.thread unwind label %bb.bd, !noalias !634

bb.bd:                                            ; preds = %bb.bc
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !634
  unreachable

.body.thread140:                                  ; preds = %bb.af, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %lpad.thr_comm138 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread133

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85
  %lpad.thr_comm.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.be:                                            ; preds = %.noexc84, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.eu = load i64, ptr %i.s, align 8, !range !311, !noundef !8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, -9223372036854775808
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.ew, i64 40, i1 false)
  br i1 %i.ev, label %bb.bi, label %bb.bk

bb.bf:                                            ; preds = %.noexc74, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i75.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.z, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.ey, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body.thread unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit.i85: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %.body

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.fc = load ptr, ptr %i.u, align 8, !alias.scope !654, !nonnull !8, !noundef !8
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !654
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91 unwind label %.thread126

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtBP_9TableScan7try_newReEs_0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.640.0.copyload = load i64, ptr %.sroa.640.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %i.n, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 %i.eu, ptr %i.fg, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.640.0.copyload, ptr %.sroa.313.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !655
  %i.fh = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !655 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.bl, label %bb.bo, !prof !229

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #36
          to label %.noexc92 unwind label %bb.bm

.noexc92:                                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %i.fg)
          to label %.body.thread unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  store i64 %7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fl = load <2 x ptr>, ptr %i.aa, align 16
  store <2 x ptr> %i.fl, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fh, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !664, !nonnull !8, !noundef !8
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !664
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.p

bb.bq:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.cb unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bs
  %i.fs = load i64, ptr %5, align 8, !range !311, !alias.scope !665, !noundef !8
  %i.ft = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %i.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cc unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.fx = load ptr, ptr %i.aa, align 16, !alias.scope !674, !nonnull !8, !noundef !8
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !674
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

.body.thread133:                                  ; preds = %.thread.i, %bb.ad, %.body.thread140
  %eh.lpad-body136 = phi { ptr, i32 } [ %lpad.thr_comm138, %.body.thread140 ], [ %i.cz, %bb.ad ], [ %.pn4.i, %.thread.i ]
end_hunk_0
begin_hunk_1_@_RNvMNtCs3gpiEk3WpjL_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entryCs2VbMhdeEr66_16delta_benchmarks:bb.a

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B28_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bk, align 8
  store ptr null, ptr %0, align 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %2)
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !6051, !noalias !6054, !noundef !8
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !229

bb.k:                                             ; preds = %bb.j
  %i.bo = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b ; 0 uses

bb.l:                                             ; preds = %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE11rustc_entry0ECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.m:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCskQDtHcQtBkN_5tokio4task8join_setINtB2_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs2VbMhdeEr66_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6056
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !6056 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot5MutexINtNtNtB19_4util17idle_notified_set10ListsInnerINtNtNtNtB19_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEEE3newCs2VbMhdeEr66_16delta_benchmarks.exit, !prof !229

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #36
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11parking_lot5MutexINtNtNtB19_4util17idle_notified_set10ListsInnerINtNtNtNtB19_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEEE3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i8 0, i64 48, i1 false)
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs0_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4keysCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 26), (32, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !6059
  %i.f = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !8
  store ptr %i.a, ptr %0, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6062, !noalias !6067, !noundef !8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !6071, !noalias !6072, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !6071, !noalias !6072, !noundef !8 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.04.122.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !6073 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.p, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = load ptr, ptr %1, align 8, !alias.scope !6071, !noalias !6076, !nonnull !8, !noundef !8
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -48
  %i.y = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.f, !prof !229

bb.e:                                             ; preds = %.noexc6
  %i.z = add i16 %.sroa.01.029.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.029.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !229

.thread24.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !229

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !8
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.n, !prof !229

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.n

bb.j:                                             ; preds = %.noexc6
  %i.at = load ptr, ptr %1, align 8, !alias.scope !6071, !noalias !6072, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds [48 x i8], ptr %i.at, i64 %i.v
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6079)
  %i.az = load ptr, ptr %1, align 8, !alias.scope !6079, !noalias !6082, !nonnull !8, !noundef !8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !6084, !noundef !8
  %i.bc = and i8 %i.bb, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !6079, !noalias !6082, !noundef !8
  %i.bg = and i64 %i.bf, %i.be
  store i8 %i.j, ptr %i.ba, align 1, !noalias !6084
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.j, ptr %i.bi, align 1, !noalias !6084
  %i.bj = load <2 x i64>, ptr %i.d, align 8, !alias.scope !6079, !noalias !6082
  %i.bk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bl = sub <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.d, align 8, !alias.scope !6079, !noalias !6082
  %i.bm = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.az, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %3) #34
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #34
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6085, !noalias !6090, !noundef !8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6094, !noalias !6095, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !6094, !noalias !6095, !noundef !8 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.04.122.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !6096 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.p, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = load ptr, ptr %0, align 8, !alias.scope !6094, !noalias !6099, !nonnull !8, !noundef !8
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.f, !prof !229

bb.e:                                             ; preds = %.noexc7
  %i.z = add i16 %.sroa.01.029.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.029.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !229

.thread24.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !229

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !8
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.n, !prof !229

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.n

bb.j:                                             ; preds = %.noexc7
  %i.at = load ptr, ptr %0, align 8, !alias.scope !6094, !noalias !6095, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.v
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !8, !noundef !8
  store ptr %2, ptr %i.av, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.noexc8, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %lpad.phi, %.noexc8 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.0 = phi ptr [ null, %bb.n ], [ %i.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6102)
  %i.az = load ptr, ptr %0, align 8, !alias.scope !6102, !noalias !6105, !nonnull !8, !noundef !8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !6107, !noundef !8
  %i.bc = and i8 %i.bb, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !6102, !noalias !6105, !noundef !8
  %i.bg = and i64 %i.bf, %i.be
  store i8 %i.j, ptr %i.ba, align 1, !noalias !6107
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.j, ptr %i.bi, align 1, !noalias !6107
  %i.bj = load <2 x i64>, ptr %i.d, align 8, !alias.scope !6102, !noalias !6105
  %i.bk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bl = sub <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.d, align 8, !alias.scope !6102, !noalias !6105
  %i.bm = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !noalias !6102
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !6102
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bp = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !6108
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %.noexc8

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #35
          to label %.noexc8 unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc8
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.noexc8:                                          ; preds = %bb.p, %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #34
          to label %common.resume unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([328 x i8]) align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(328) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [352 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6113, !noalias !6118, !noundef !8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !6122, !noalias !6123, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !6122, !noalias !6123, !noundef !8 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.04.122.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !6124 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.p, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = load ptr, ptr %1, align 8, !alias.scope !6122, !noalias !6127, !nonnull !8, !noundef !8
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [352 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -352
  %i.y = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.x)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.f, !prof !229

bb.e:                                             ; preds = %.noexc6
  %i.z = add i16 %.sroa.01.029.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.029.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !229

.thread24.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !229

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !8
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.n, !prof !229

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.n

bb.j:                                             ; preds = %.noexc6
  %i.at = load ptr, ptr %1, align 8, !alias.scope !6122, !noalias !6123, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds [352 x i8], ptr %i.at, i64 %i.v
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.av, i64 328, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.av, ptr noundef nonnull align 8 dereferenceable(328) %3, i64 328, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ay, ptr noundef nonnull align 8 dereferenceable(328) %3, i64 328, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6130)
  %i.az = load ptr, ptr %1, align 8, !alias.scope !6130, !noalias !6133, !nonnull !8, !noundef !8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !6135, !noundef !8
  %i.bc = and i8 %i.bb, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !6130, !noalias !6133, !noundef !8
  %i.bg = and i64 %i.bf, %i.be
  store i8 %i.j, ptr %i.ba, align 1, !noalias !6135
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.j, ptr %i.bi, align 1, !noalias !6135
  %i.bj = load <2 x i64>, ptr %i.d, align 8, !alias.scope !6130, !noalias !6133
  %i.bk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bl = sub <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.d, align 8, !alias.scope !6130, !noalias !6133
  %i.bm = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bn = getelementptr inbounds [352 x i8], ptr %i.az, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.a, i64 352, i1 false), !noalias !6130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 69, ptr %0, align 8
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %3) #34
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #34
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6136, !noalias !6141, !noundef !8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !6145, !noalias !6146, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !6145, !noalias !6146, !noundef !8 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.04.122.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !6147 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.p, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = load ptr, ptr %1, align 8, !alias.scope !6145, !noalias !6150, !nonnull !8, !noundef !8
  %i.v = sub nsw i64 0, %i.t                      ; 2 uses
  %i.w = getelementptr inbounds [144 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -144
  %i.y = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.x)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.f, !prof !229

bb.e:                                             ; preds = %.noexc6
  %i.z = add i16 %.sroa.01.029.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.029.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !229

.thread24.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !229

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !8
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.n, !prof !229

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.n

bb.j:                                             ; preds = %.noexc6
  %i.at = load ptr, ptr %1, align 8, !alias.scope !6145, !noalias !6146, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds [144 x i8], ptr %i.at, i64 %i.v
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -112 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.av, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.av, ptr noundef nonnull align 16 dereferenceable(112) %3, i64 112, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, ptr noundef nonnull align 16 dereferenceable(112) %3, i64 112, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6153)
  %i.az = load ptr, ptr %1, align 8, !alias.scope !6153, !noalias !6156, !nonnull !8, !noundef !8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !6158, !noundef !8
  %i.bc = and i8 %i.bb, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !6153, !noalias !6156, !noundef !8
  %i.bg = and i64 %i.bf, %i.be
  store i8 %i.j, ptr %i.ba, align 1, !noalias !6158
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.j, ptr %i.bi, align 1, !noalias !6158
  %i.bj = load <2 x i64>, ptr %i.d, align 8, !alias.scope !6153, !noalias !6156
  %i.bk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bl = sub <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.d, align 8, !alias.scope !6153, !noalias !6156
  %i.bm = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bn = getelementptr inbounds [144 x i8], ptr %i.az, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bo, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 37, ptr %0, align 16
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %3) #34
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #34
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6159, !noalias !6164, !noundef !8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.f = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB1z_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6168, !noalias !6169, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.g, align 8, !alias.scope !6168, !noalias !6169, !noundef !8 ; 3 uses
  %i.h = lshr i64 %i.b, 57
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %i.b, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.04.122.i.i, %bb.g ]
  %i.l = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.aj, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !6170 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.k
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.o, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i = phi i16 [ %i.z, %bb.e ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val7.i
  %i.t = load ptr, ptr %0, align 8, !alias.scope !6168, !noalias !6173, !nonnull !8, !noundef !8
  %i.u = sub nsw i64 0, %i.s                      ; 2 uses
  %i.v = getelementptr inbounds [40 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -40
  %i.x = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.x, label %bb.j, label %bb.e, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.f, !prof !229

bb.e:                                             ; preds = %.noexc7
  %i.y = add i16 %.sroa.01.029.i.i, -1
  %i.z = and i16 %i.y, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aa = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !229

.thread24.i.i:                                    ; preds = %bb.f
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ab, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.0.017.i.i, %i.ad
  %i.af = and i64 %i.ae, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.af, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !229

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.aj = add i64 %i.l, 16                        ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.am = load i8, ptr %i.al, align 1, !noundef !8
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %bb.i, label %bb.n, !prof !229

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ao = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.ap, 0
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.n

bb.j:                                             ; preds = %.noexc7
  %i.as = load ptr, ptr %0, align 8, !alias.scope !6168, !noalias !6169, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds [40 x i8], ptr %i.as, i64 %i.u ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !8
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !8, !align !30, !noundef !8
  store i64 %2, ptr %i.au, align 8
  store ptr %3, ptr %i.aw, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %lpad.phi, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.2.0 = phi ptr [ null, %bb.n ], [ %i.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %.sroa.0.0 = phi i64 [ undef, %bb.n ], [ %i.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %i.ba = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bb = insertvalue { i64, ptr } %i.ba, ptr %.sroa.2.0, 1
  ret { i64, ptr } %i.bb

bb.n:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ar, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6176)
  %i.bc = load ptr, ptr %0, align 8, !alias.scope !6176, !noalias !6179, !nonnull !8, !noundef !8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !noalias !6181, !noundef !8
  %i.bf = and i8 %i.be, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bi = load i64, ptr %i.g, align 8, !alias.scope !6176, !noalias !6179, !noundef !8
  %i.bj = and i64 %i.bi, %i.bh
  store i8 %i.i, ptr %i.bd, align 1, !noalias !6181
  %i.bk = getelementptr i8, ptr %i.bc, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store i8 %i.i, ptr %i.bl, align 1, !noalias !6181
  %i.bm = load <2 x i64>, ptr %i.c, align 8, !alias.scope !6176, !noalias !6179
  %i.bn = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bg, i64 0
  %i.bo = sub <2 x i64> %i.bm, %i.bn
  store <2 x i64> %i.bo, ptr %i.c, align 8, !alias.scope !6176, !noalias !6179
  %i.bp = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bq = getelementptr inbounds [40 x i8], ptr %i.bc, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !noalias !6176
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bq, i64 -16
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !6176
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #34
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6182, !noalias !6187, !noundef !8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %.loopexit.split-lp ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6191, !noalias !6192, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !6191, !noalias !6192, !noundef !8 ; 3 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %i.c, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.al, %bb.g ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.4.120.i.i, %bb.g ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.sroa.04.122.i.i, %bb.g ]
  %i.m = phi i64 [ 0, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ak, %bb.g ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !6193 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.p, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.01.029.i.i = phi i16 [ %i.aa, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = load ptr, ptr %0, align 8, !alias.scope !6191, !noalias !6196, !nonnull !8, !noundef !8
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [112 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -112
  %i.y = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.x)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.y, label %bb.j, label %bb.e, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.f, !prof !229

bb.e:                                             ; preds = %.noexc7
  %i.z = add i16 %.sroa.01.029.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.01.029.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !229

.thread24.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !229

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !8
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.l, !prof !229

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.l
end_hunk_1
