inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_22VariableTupleSlicePlan9into_type:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !26090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false), !alias.scope !26091, !noalias !26092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !26093
  %.sroa.5.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sink9.i.i.i, ptr %.sroa.5.0..sroa_idx.i10, align 8, !alias.scope !26069, !noalias !26093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cg = invoke { i32, i32 } @_RNvMsE_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_9TupleType3new(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_(ptr noalias noundef align 8 dereferenceable(48) %i.j) #50
          to label %common.resume unwind label %bb.af

bb.aa:                                            ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_19VariableLengthTupleNtB8_4TypeNtB6_15VariableSegmentE5mixedINtCsddXFpJ32JCa_6either6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedIB1Y_INtNtB2x_7step_by6StepByINtNtB2x_4take4TakeINtNtB2x_4skip4SkipINtNtNtB2B_5slice4iter4IterB1k_EEEEIB3s_IB3Q_IB49_INtNtB2x_3rev3RevB4r_EEEEEEINtNtNtB2z_7sources5empty5EmptyB1k_EEB1X_EBa_.exit
  %i.ci = extractvalue { i32, i32 } %i.cg, 0      ; 2 uses
  %.not.i11 = icmp eq i32 %i.ci, 0
  br i1 %.not.i11, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = extractvalue { i32, i32 } %i.cg, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 6, ptr %i.ck, align 4, !alias.scope !26094
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ci, ptr %.sroa.45.0..sroa_idx.i, align 4, !alias.scope !26094
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.cj, ptr %.sroa.56.0..sroa_idx.i, align 4, !alias.scope !26094
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %storemerge.i = phi i32 [ 18, %bb.ab ], [ 6, %bb.aa ]
  store i32 %storemerge.i, ptr %0, align 4, !alias.scope !26094
  call void @llvm.experimental.noalias.scope.decl(metadata !26097)
  %i.cl = load i32, ptr %i.j, align 8, !range !13569, !alias.scope !26097, !noundef !15
  %i.cm = icmp eq i32 %i.cl, -2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val1.i = load i64, ptr %i.cn, align 8, !alias.scope !26097, !noundef !15 ; 2 uses
  %i.co = icmp eq i64 %.val1.i, 0
  br i1 %i.co, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i12 = load ptr, ptr %i.cp, align 8, !alias.scope !26097, !nonnull !15, !noundef !15
  %i.cq = shl nuw nsw i64 %.val1.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i12, i64 noundef %i.cq, i64 noundef 4) #48, !noalias !26097
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtBG_4TypeNtBE_15VariableSegmentEEBI_.exit: ; preds = %bb.ad, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.h

bb.af:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18forward_slice_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef range(i32 0, 2) %2, i32 %3, i32 noundef range(i32 0, 2) %4, i32 %5, i64 noundef range(i64 1, 0) %6) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp ne i32 %2, 0
  %i.a = trunc nuw i32 %4 to i1                   ; 8 uses
  %or.cond42.i = and i1 %.not.i, %i.a
  %i.b = icmp eq i32 %3, %5
  %or.cond43.i = select i1 %or.cond42.i, i1 %i.b, i1 false
  br i1 %or.cond43.i, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.i.i.i = select i1 %i.a, i32 %5, i32 undef ; 2 uses
  %i.c = or i32 %.sroa.4.0.i.i.i, %5
  %i.d = icmp sgt i32 %i.c, -1                    ; 2 uses
  %or.cond.i.i = select i1 %i.a, i1 %i.d, i1 false ; 4 uses
  %i.e = zext nneg i32 %.sroa.4.0.i.i.i to i64    ; 8 uses
  %i.f = trunc nuw i32 %2 to i1                   ; 11 uses
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %3, -1                      ; 2 uses
  %i.h = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i45.i = select i1 %i.g, i64 %i.h, i64 undef
  %.sroa.3.0.i.i = select i1 %i.f, i64 %.sroa.4.0.i.i45.i, i64 0
  %not..i.i = xor i1 %i.f, true
  %narrow.i.i = select i1 %not..i.i, i1 true, i1 %i.g
  %i.i = icmp uge i64 %.sroa.3.0.i.i, %i.e
  %or.cond.i = select i1 %narrow.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i, label %select.unfold, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond.i49.i = icmp ugt i32 %3, -2147483648
  %or.cond44.i = and i1 %or.cond.i49.i, %i.a
  %or.cond55.i = select i1 %i.f, i1 %or.cond44.i, i1 false
  br i1 %or.cond55.i, label %..thread.i_crit_edge, label %.thread186

.thread186:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26100, !noalias !26105, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !26100, !noalias !26105
  br label %bb.k

..thread.i_crit_edge:                             ; preds = %bb.d
  %.pre = sub nsw i32 0, %3
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  %or.cond.i47.i = icmp ugt i32 %3, -2147483648
  %or.cond56.i = select i1 %i.f, i1 %or.cond.i47.i, i1 false
  br i1 %or.cond56.i, label %bb.f, label %.thread183

.thread183:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !26100, !noalias !26105, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !26100, !noalias !26105
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = sub nsw i32 0, %3                        ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !26115, !noalias !26120, !noundef !15
  %.not.i.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !26115, !noalias !26120
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %i.w, i64 %i.s)
  %i.y = select i1 %.not.i.i, i64 0, i64 %i.x
  %.not41.i = icmp ult i64 %i.y, %i.e
  br i1 %.not41.i, label %.thread.i, label %select.unfold

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.f
  %.pre-phi = phi i32 [ %.pre, %..thread.i_crit_edge ], [ %i.r, %bb.f ]
  %or.cond.i52.i = icmp ugt i32 %5, -2147483648
  %i.z = sub nsw i32 0, %5
  %i.aa = icmp ule i32 %.pre-phi, %i.z
  %or.cond5.i = select i1 %or.cond.i52.i, i1 %i.aa, i1 false
  br i1 %or.cond5.i, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !26100, !noalias !26105, !noundef !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !26100, !noalias !26105 ; 2 uses
  br i1 %i.d, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread183, %bb.g
  %i.af = phi i64 [ %i.q, %.thread183 ], [ %i.ae, %bb.g ] ; 6 uses
  %i.ag = phi i64 [ %i.o, %.thread183 ], [ %i.ac, %bb.g ] ; 6 uses
  %.not.i.i.i.i185 = icmp ne i64 %i.ag, 0
  %i.ah = icmp slt i32 %3, 0                      ; 2 uses
  %i.ai = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i11.i.i.i = select i1 %i.ah, i64 undef, i64 %i.ai
  %.sroa.3.0.i.i.i.i = select i1 %i.f, i64 %.sroa.4.0.i.i11.i.i.i, i64 0 ; 4 uses
  %narrow.i.not.i.i.i = select i1 %i.f, i1 %i.ah, i1 false
  br i1 %narrow.i.not.i.i.i, label %.thread136, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ult i64 %.sroa.3.0.i.i.i.i, %i.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = xor i64 %.sroa.3.0.i.i.i.i, -1
  %i.ak = add nsw i64 %i.e, %i.aj
  %.fr.i.i.i = freeze i64 %i.ak                   ; 2 uses
  %i.al = urem i64 %.fr.i.i.i, %6
  %i.am = add i64 %.fr.i.i.i, %.sroa.3.0.i.i.i.i
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %i.af, %i.an
  %i.ap = select i1 %.not.i.i.i.i185, i1 %i.ao, i1 false
  br i1 %i.ap, label %select.unfold, label %bb.k

select.unfold:                                    ; preds = %bb.f, %bb.a, %bb.c, %.thread.i, %bb.j
  %.sroa.1350.0 = phi i64 [ %i.e, %bb.j ], [ undef, %.thread.i ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.f ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.3.0.i.i.i.i, %bb.j ], [ undef, %.thread.i ], [ undef, %bb.c ], [ undef, %bb.a ], [ undef, %bb.f ]
  %.sroa.048.0 = phi i32 [ 4, %bb.j ], [ 3, %.thread.i ], [ 3, %bb.c ], [ 3, %bb.a ], [ 3, %bb.f ]
  %.sroa.15.sroa.5.0.extract.shift = lshr i64 %.sroa.1350.0, 32
  %.sroa.15.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.15.sroa.5.0.extract.shift to i32
  br label %bb.n

bb.k:                                             ; preds = %.thread186, %bb.g, %bb.j, %bb.i
  %i.aq = phi i64 [ %i.ae, %bb.g ], [ %i.af, %bb.j ], [ %i.af, %bb.i ], [ %i.m, %.thread186 ] ; 7 uses
  %i.ar = phi i64 [ %i.ac, %bb.g ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ], [ %i.k, %.thread186 ] ; 7 uses
  %or.cond.i.i.i.i4 = icmp ugt i32 %3, -2147483648
  %or.cond149 = select i1 %i.f, i1 %or.cond.i.i.i.i4, i1 false
  br i1 %or.cond149, label %bb.l, label %bb.o

.thread136:                                       ; preds = %bb.h
  %.not.i.i.i.i3133 = icmp eq i64 %i.ag, 0
  %.sink9.i.i.i.i134 = select i1 %.not.i.i.i.i3133, i64 0, i64 %i.af
  %or.cond.i.i.i.i4138.not = icmp eq i32 %3, -2147483648
  %i.as = sub nsw i32 0, %3
  %i.at = zext nneg i32 %i.as to i64
  br i1 %or.cond.i.i.i.i4138.not, label %.thread144, label %.thread140

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i3 = icmp eq i64 %i.ar, 0
  %.sink9.i.i.i.i = select i1 %.not.i.i.i.i3, i64 0, i64 %i.aq ; 2 uses
  %i.au = sub nsw i32 0, %3
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  br i1 %i.a, label %.thread140, label %bb.m

.thread140:                                       ; preds = %.thread136, %bb.l
  %i.aw = phi i64 [ %i.aq, %bb.l ], [ %i.af, %.thread136 ] ; 2 uses
  %i.ax = phi i64 [ %i.ar, %bb.l ], [ %i.ag, %.thread136 ] ; 2 uses
  %.sink9.i.i.i.i135139143 = phi i64 [ %.sink9.i.i.i.i, %bb.l ], [ %.sink9.i.i.i.i134, %.thread136 ]
  %i.ay = phi i64 [ %i.av, %bb.l ], [ %i.at, %.thread136 ]
  %or.cond.i20.i.i.i = icmp ugt i32 %5, -2147483648
  %i.az = sub nsw i32 0, %5
  %i.ba = zext nneg i32 %i.az to i64
  br i1 %or.cond.i20.i.i.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread140, %bb.l
  %i.bb = phi i64 [ %i.aw, %.thread140 ], [ %i.aq, %bb.l ]
  %i.bc = phi i64 [ %i.ax, %.thread140 ], [ %i.ar, %bb.l ]
  %.sink9.i.i.i.i135139142 = phi i64 [ %.sink9.i.i.i.i135139143, %.thread140 ], [ %.sink9.i.i.i.i, %bb.l ]
  %i.bd = phi i64 [ %i.ay, %.thread140 ], [ %i.av, %bb.l ] ; 3 uses
  %.sroa.611.0.i.i.i = phi i64 [ %i.ba, %.thread140 ], [ 0, %bb.l ] ; 2 uses
  %.not.i.i.i5 = icmp samesign uge i64 %.sroa.611.0.i.i.i, %i.bd
  %.not19.i.i.i = icmp ult i64 %.sink9.i.i.i.i135139142, %i.bd
  %or.cond = select i1 %.not.i.i.i5, i1 true, i1 %.not19.i.i.i
  br i1 %or.cond, label %.thread188, label %bb.n

bb.n:                                             ; preds = %bb.m, %select.unfold
  %.sroa.15.sroa.5.0 = phi i32 [ %.sroa.15.sroa.5.0.extract.trunc, %select.unfold ], [ 0, %bb.m ]
  %.sroa.15.sroa.0.0.in = phi i64 [ %.sroa.1350.0, %select.unfold ], [ %.sroa.611.0.i.i.i, %bb.m ]
  %.sroa.18.sroa.0.0 = phi i32 [ 0, %select.unfold ], [ 1, %bb.m ]
  %.sroa.13.0 = phi i64 [ %.sroa.11.0, %select.unfold ], [ %i.bd, %bb.m ]
  %.sroa.040.0 = phi i32 [ %.sroa.048.0, %select.unfold ], [ 4, %bb.m ]
  %.sroa.15.sroa.0.0 = trunc i64 %.sroa.15.sroa.0.0.in to i32
  %.sroa.10.sroa.0.0 = trunc i64 %6 to i32
  %.sroa.10.sroa.5.0.in = lshr i64 %6, 32
  %.sroa.10.sroa.5.0 = trunc nuw i64 %.sroa.10.sroa.5.0.in to i32
  br label %bb.an

bb.o:                                             ; preds = %bb.k
  %i.be = icmp eq i64 %6, 1
  br i1 %i.be, label %bb.p, label %bb.q

.thread188:                                       ; preds = %bb.m
  %i.bf = icmp eq i64 %6, 1
  br i1 %i.bf, label %bb.p, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

.thread144:                                       ; preds = %.thread136
  %i.bg = icmp eq i64 %6, 1
  br i1 %i.bg, label %._crit_edge.i.i.i.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

.thread:                                          ; preds = %.thread140
  %i.bh = icmp eq i64 %6, 1
  br i1 %i.bh, label %._crit_edge.i.i.i.thread, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.p:                                             ; preds = %.thread188, %bb.o
  %i.bi = phi i64 [ %i.bc, %.thread188 ], [ %i.ar, %bb.o ] ; 3 uses
  %i.bj = phi i64 [ %i.bb, %.thread188 ], [ %i.aq, %bb.o ] ; 3 uses
  %.not165.i.i.i = icmp eq i32 %4, 0
  br i1 %.not165.i.i.i, label %bb.r, label %._crit_edge.i.i.i

bb.q:                                             ; preds = %bb.o
  br i1 %i.f, label %bb.ae, label %bb.af

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.p
  %i.bk = icmp slt i32 %3, 0                      ; 2 uses
  %i.bl = zext nneg i32 %3 to i64
  %.sroa.4.0.i.i.i.i.i8 = select i1 %i.bk, i64 undef, i64 %i.bl
  %spec.select = select i1 %i.f, i64 %.sroa.4.0.i.i.i.i.i8, i64 0
  %i.bm = select i1 %i.f, i1 %i.bk, i1 false
  br label %._crit_edge.i.i.i.thread

._crit_edge.i.i.i.thread:                         ; preds = %._crit_edge.i.i.i, %.thread, %.thread144
  %narrow.i.not.i.i.i10 = phi i1 [ %i.bm, %._crit_edge.i.i.i ], [ true, %.thread ], [ true, %.thread144 ] ; 2 uses
  %i.bn = phi i64 [ %i.bi, %._crit_edge.i.i.i ], [ %i.ax, %.thread ], [ %i.ag, %.thread144 ] ; 4 uses
  %i.bo = phi i64 [ %i.bj, %._crit_edge.i.i.i ], [ %i.aw, %.thread ], [ %i.af, %.thread144 ] ; 4 uses
  %i.bp = phi i64 [ %spec.select, %._crit_edge.i.i.i ], [ undef, %.thread ], [ undef, %.thread144 ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !26123, !noalias !26126 ; 15 uses
  %.not166.i.i.i = icmp ugt i64 %i.bp, %i.br      ; 3 uses
  %or.cond.i.i.i = select i1 %narrow.i.not.i.i.i10, i1 true, i1 %.not166.i.i.i
  %or.cond.not.i.i.i = xor i1 %or.cond.i.i.i, true
  %i.bs = icmp slt i32 %5, 0                      ; 2 uses
  %i.bt = and i1 %i.a, %or.cond.not.i.i.i
  %or.cond398.i.i.i = select i1 %i.bt, i1 %i.bs, i1 false
  br i1 %or.cond398.i.i.i, label %bb.t, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i

bb.r:                                             ; preds = %bb.p
  %..i.i.i = select i1 %i.f, i32 %3, i32 0        ; 5 uses
  %i.bu = icmp sgt i32 %..i.i.i, -1
  br i1 %i.bu, label %bb.s, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bv = zext nneg i32 %..i.i.i to i64           ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !26123, !noalias !26126, !noundef !15 ; 5 uses
  %.not167.i.i.i = icmp ult i64 %i.bx, %i.bv
  br i1 %.not167.i.i.i, label %bb.ac, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i, %bb.u, %bb.t, %._crit_edge.i.i.i.thread
  br i1 %narrow.i.not.i.i.i10, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i, label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i.i.thread
  %or.cond.i.not.i.i.i.i = icmp eq i32 %5, -2147483648
  %i.by = sub nsw i32 0, %5
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  br i1 %or.cond.i.not.i.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  %.sink9.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.bo ; 3 uses
  %i.ca = sub i64 %.sink9.i.i.i.i.i, %i.br
  %.not.i.i.i.i12 = icmp ult i64 %i.ca, %i.bz
  br i1 %.not.i.i.i.i12, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i: ; preds = %bb.u
  %i.cb = add i64 %i.br, %i.bz                    ; 2 uses
  %i.cc = sub i64 %.sink9.i.i.i.i.i, %i.cb        ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 2147483648
  br i1 %i.cd, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.i.i.i
  %i.ce = trunc nuw nsw i64 %i.cc to i32
  %i.cf = icmp ult i64 %i.bp, %i.br               ; 2 uses
  %i.cg = icmp ult i64 %i.bp, 2147483648          ; 2 uses
  %i.ch = trunc nuw nsw i64 %i.bp to i32
  %.sroa.05.0.i.i.i.i.i.i = zext i1 %i.cg to i32
  %i.ci = and i1 %i.cg, %i.cf
  %.sroa.4331.0.i.i.i = select i1 %i.ci, i32 %i.ch, i32 undef
  %.sink.i.i.i.i.i = select i1 %i.cf, i32 %.sroa.05.0.i.i.i.i.i.i, i32 2
  %.not395.i.i.i = icmp eq i64 %.sink9.i.i.i.i.i, %i.cb ; 2 uses
  %.sroa.6338.0.i.i.i = select i1 %.not395.i.i.i, i32 undef, i32 %i.ce
  %.sink.i.i184.i.i.i = select i1 %.not395.i.i.i, i32 2, i32 0
  br label %bb.an

bb.v:                                             ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i
  %.sroa.4.0.i.i.i.i = select i1 %or.cond.i.i, i64 %i.e, i64 undef ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.4.0.i.i.i.i, %i.br
  %or.cond172.i.i.i = select i1 %or.cond.i.i, i1 %i.cj, i1 false
  br i1 %or.cond172.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = and i1 %.not166.i.i.i, %i.a
  %or.cond399.i.i.i = select i1 %i.ck, i1 %i.bs, i1 false
  br i1 %or.cond399.i.i.i, label %bb.y, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.cl = sub nuw nsw i64 %.sroa.4.0.i.i.i.i, %i.br
  %.not.i5.i.i.i.i.i = icmp eq i64 %i.bn, 0
  %.sink9.i7.i.i.i.i.i = select i1 %.not.i5.i.i.i.i.i, i64 0, i64 %i.bo
  %i.cm = sub i64 %.sink9.i7.i.i.i.i.i, %i.br
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cl) ; 2 uses
  br i1 %.not166.i.i.i, label %bb.an, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i: ; preds = %bb.x
  %i.cn = icmp ult i64 %i.bp, %i.br               ; 2 uses
  %i.co = icmp ult i64 %i.bp, 2147483648          ; 2 uses
  %i.cp = trunc nuw nsw i64 %i.bp to i32
  %.sroa.05.0.i.i.i.i.i.i.i = zext i1 %i.co to i32
  %i.cq = and i1 %i.co, %i.cn
  %.sroa.4.0.i191.i.i.i = select i1 %i.cq, i32 %i.cp, i32 undef
  %.sink.i.i.i.i.i.i = select i1 %i.cn, i32 %.sroa.05.0.i.i.i.i.i.i.i, i32 2
  br label %bb.an

bb.y:                                             ; preds = %bb.w
  %or.cond.i.not.i197.i.i.i = icmp eq i32 %5, -2147483648
  %i.cr = sub nsw i32 0, %5
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  br i1 %or.cond.i.not.i197.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i198.i.i.i = icmp eq i64 %i.bn, 0
  %.sink9.i.i199.i.i.i = select i1 %.not.i.i198.i.i.i, i64 0, i64 %i.bo ; 2 uses
  %i.ct = sub i64 %.sink9.i.i199.i.i.i, %i.br
  %.not.i200.i.i.i = icmp ult i64 %i.ct, %i.cs
  br i1 %.not.i200.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i: ; preds = %bb.z
  %i.cu = add nuw nsw i64 %i.br, %i.cs
  %i.cv = sub i64 %.sink9.i.i199.i.i.i, %i.cu     ; 4 uses
  %i.cw = icmp ult i64 %i.cv, 2147483648
  br i1 %i.cw, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i
  %i.cx = trunc nuw nsw i64 %i.cv to i32
  %i.cy = sub nuw nsw i64 %i.bp, %i.br            ; 2 uses
  %.sroa.0.0.i.i214.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %i.cy) ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cv               ; 3 uses
  %i.da = trunc nuw nsw i64 %.sroa.0.0.i.i214.i.i.i to i32
  %.sroa.026.0.i.i.i.i = select i1 %i.cz, i32 1, i32 2
  %.sroa.527.0.i.i.i.i = select i1 %i.cz, i32 %i.da, i32 undef
  %.sroa.7.0.i216.i.i.i = select i1 %i.cz, i32 %i.cx, i32 undef
  br label %bb.an

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i: ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit.thread.i.i.i
  %or.cond.i.not.i227.i.i.i = icmp eq i32 %3, -2147483648
  %i.db = sub nsw i32 0, %3
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  br i1 %or.cond.i.not.i227.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i
  %.not.i.i228.i.i.i = icmp eq i64 %i.bn, 0
  %.sink9.i.i229.i.i.i = select i1 %.not.i.i228.i.i.i, i64 0, i64 %i.bo ; 2 uses
  %i.dd = sub i64 %.sink9.i.i229.i.i.i, %i.br     ; 2 uses
  %.not.i230.i.i.i = icmp ult i64 %i.dd, %i.dc
  br i1 %.not.i230.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i: ; preds = %bb.aa
  %i.de = add i64 %i.br, %i.dc
  %i.df = sub i64 %.sink9.i.i229.i.i.i, %i.de     ; 3 uses
  %i.dg = icmp ult i64 %i.df, 2147483648
  %i.dh = icmp ult i64 %i.br, %i.e
  %i.di = and i1 %i.dg, %or.cond.i.i
  %or.cond195 = select i1 %i.di, i1 %i.dh, i1 false
  br i1 %or.cond195, label %bb.ab, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ab:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i
  %i.dj = sub nuw nsw i64 %i.e, %i.br
  %.sroa.0.0.i240.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dj) ; 2 uses
  %i.dk = icmp samesign ugt i64 %.sroa.0.0.i240.i.i.i, %i.df
  br i1 %i.dk, label %bb.an, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ac:                                            ; preds = %bb.s
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %.sink9.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.bj
  %i.dl = sub i64 %.sink9.i.i.i.i.i.i, %i.bx      ; 4 uses
  %i.dm = sub nuw nsw i64 %i.bv, %i.bx            ; 2 uses
  %.sroa.0.0.i.i251.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dm) ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  br i1 %i.dn, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.do = trunc nuw nsw i64 %.sroa.0.0.i.i251.i.i.i to i32
  %i.dp = icmp ult i64 %i.dl, 2147483648          ; 2 uses
  %i.dq = trunc nuw nsw i64 %i.dl to i32
  %.sroa.06.0.i.i.i.i266.i.i.i = zext i1 %i.dp to i32
  %.sroa.67.0.i.i.i.i.i.i.i = select i1 %i.dp, i32 %i.dq, i32 undef
  br label %bb.an

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i: ; preds = %bb.s
  %i.dr = icmp ugt i64 %i.bx, %i.bv
  %spec.select.i.i.i = select i1 %i.dr, i32 1, i32 2
  %.not.i.i275.i.i.i = icmp eq i64 %i.bi, 0
  %.sink9.i.i276.i.i.i = select i1 %.not.i.i275.i.i.i, i64 0, i64 %i.bj
  %.not396.i.i.i = icmp eq i64 %.sink9.i.i276.i.i.i, %i.bx
  %.sink.i.i278.i.i.i = select i1 %.not396.i.i.i, i32 2, i32 0
  br label %bb.an

bb.ae:                                            ; preds = %bb.q
  %i.ds = icmp sgt i32 %3, -1
  br i1 %i.ds, label %bb.ag, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.af:                                            ; preds = %bb.ag, %bb.q
  %.sroa.085.0.i.i.i = phi i1 [ %.not.i284.i.i.i, %bb.ag ], [ true, %bb.q ] ; 2 uses
  %.sroa.689.0.i.i.i = phi i64 [ %i.dt, %bb.ag ], [ 0, %bb.q ] ; 4 uses
  br i1 %i.a, label %bb.ah, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dt = zext nneg i32 %3 to i64                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val176.i.i.i = load i64, ptr %i.du, align 8, !alias.scope !26123, !noalias !26126, !noundef !15
  %.not.i284.i.i.i = icmp uge i64 %.val176.i.i.i, %i.dt
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.dv = icmp sgt i32 %5, -1
  br i1 %i.dv, label %bb.am, label %bb.ai

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i: ; preds = %bb.af, %bb.am
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !26123, !noalias !26126 ; 2 uses
  %i.dx = icmp ult i64 %.sroa.689.0.i.i.i, %.val.i.i.i
  %i.dy = trunc nuw nsw i64 %.sroa.689.0.i.i.i to i32
  %i.dz = select i1 %.sroa.085.0.i.i.i, i1 %i.dx, i1 false ; 2 uses
  %.sroa.0368.1.i.i.i = select i1 %i.dz, i32 1, i32 2
  %.sroa.8369.1.i.i.i = select i1 %i.dz, i32 %i.dy, i32 undef
  %.not.i317.i.i.i = icmp eq i64 %i.ar, 0
  %.sink9.i319.i.i.i = select i1 %.not.i317.i.i.i, i64 0, i64 %i.aq
  %i.ea = sub i64 %.sink9.i319.i.i.i, %.val.i.i.i
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %or.cond.i.i288.not.i.i.i = icmp eq i32 %5, -2147483648
  %i.eb = sub nsw i32 0, %5
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  br i1 %or.cond.i.i288.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i289.i.i.i = icmp eq i64 %i.ar, 0
  %.sink9.i.i290.i.i.i = select i1 %.not.i.i289.i.i.i, i64 0, i64 %i.aq ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !26133, !noalias !26126, !noundef !15 ; 3 uses
  %i.ef = sub i64 %.sink9.i.i290.i.i.i, %i.ee
  %.not.i291.i.i.i = icmp ult i64 %i.ef, %i.ec
  br i1 %.not.i291.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i

_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i: ; preds = %bb.aj
  %i.eg = add i64 %i.ee, %i.ec
  %i.eh = sub i64 %.sink9.i.i290.i.i.i, %i.eg     ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 2147483648
  br i1 %i.ei, label %bb.ak, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

bb.ak:                                            ; preds = %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i
  br i1 %.sroa.085.0.i.i.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ej = icmp ult i64 %.sroa.689.0.i.i.i, %i.ee  ; 2 uses
  %i.ek = trunc nuw nsw i64 %.sroa.689.0.i.i.i to i32
  %spec.select390.i.i.i = select i1 %i.ej, i32 1, i32 2
  %spec.select391.i.i.i = select i1 %i.ej, i32 %i.ek, i32 undef
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.el = zext nneg i32 %5 to i64
  %.not.i307.i.i.i = icmp eq i64 %i.ar, 0
  %.sink9.i309.i.i.i = select i1 %.not.i307.i.i.i, i64 0, i64 %i.aq
  %.not.i.i.i7 = icmp ult i64 %.sink9.i309.i.i.i, %i.el
  br i1 %.not.i.i.i7, label %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread: ; preds = %.thread188, %.thread144, %bb.ab, %bb.w, %bb.ai, %bb.ae, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit233.i.i.i, %bb.aa, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.thread.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit203.i.i.i, %bb.z, %bb.y, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18suffix_slice_index.exit294.i.i.i, %bb.aj, %bb.am, %.thread
  store i32 6, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.ab, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i, %bb.n, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i, %bb.x, %bb.ad, %bb.ac, %bb.al, %bb.ak, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i
  %.sroa.10.sroa.5.0113 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ %.sroa.10.sroa.5.0, %bb.n ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ undef, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.55.0 = phi i64 [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.al ], [ undef, %bb.n ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 0, %bb.ad ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 0, %bb.ak ], [ %i.df, %bb.ab ]
  %.sroa.62.0 = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.x ], [ %.sroa.0.0.i.i251.i.i.i, %bb.ac ], [ %i.eh, %bb.al ], [ undef, %bb.n ], [ %.sroa.0.0.i.i214.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.0.0.i.i251.i.i.i, %bb.ad ], [ %i.ea, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ %i.eh, %bb.ak ], [ %.sroa.0.0.i240.i.i.i, %bb.ab ]
  %.sroa.67.0 = phi i8 [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 1, %bb.x ], [ 1, %bb.ac ], [ 1, %bb.al ], [ undef, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ad ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 1, %bb.ak ], [ 0, %bb.ab ]
  %.sroa.47.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ undef, %bb.n ], [ %.sroa.7.0.i216.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sroa.6338.0.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.67.0.i.i.i.i.i.i.i, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.43.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ %.sroa.18.sroa.0.0, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %.sroa.06.0.i.i.i.i266.i.i.i, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.41.0 = phi i32 [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ undef, %bb.ac ], [ undef, %bb.al ], [ %.sroa.15.sroa.5.0, %bb.n ], [ %.sroa.527.0.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %i.do, %bb.ad ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.34.0 = phi i32 [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %.sink.i.i278.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 2, %bb.x ], [ 2, %bb.ac ], [ 2, %bb.al ], [ %.sroa.15.sroa.0.0, %bb.n ], [ %.sroa.026.0.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sink.i.i184.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ad ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 2, %bb.ak ], [ 2, %bb.ab ]
  %.sroa.2820.0 = phi i64 [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 1, %bb.x ], [ 1, %bb.ac ], [ %6, %bb.al ], [ %.sroa.13.0, %bb.n ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 1, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 1, %bb.ad ], [ %6, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ %6, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.22.0 = phi i32 [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.al ], [ %.sroa.10.sroa.0.0, %bb.n ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 0, %bb.ad ], [ 0, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 0, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.17.0 = phi i32 [ %.sroa.4.0.i191.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %..i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ undef, %bb.x ], [ %..i.i.i, %bb.ac ], [ %spec.select391.i.i.i, %bb.al ], [ undef, %bb.n ], [ undef, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sroa.4331.0.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ %..i.i.i, %bb.ad ], [ %.sroa.8369.1.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ undef, %bb.ak ], [ undef, %bb.ab ]
  %.sroa.0.0 = phi i32 [ %.sink.i.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i.i ], [ %spec.select.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit274.i.i.i ], [ 2, %bb.x ], [ 2, %bb.ac ], [ %spec.select390.i.i.i, %bb.al ], [ %.sroa.040.0, %bb.n ], [ 2, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE27mixed_forward_approximation.exit223.i.i.i ], [ %.sink.i.i.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit.i.i.i ], [ 2, %bb.ad ], [ %.sroa.0368.1.i.i.i, %_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE18fixed_prefix_slice.exit316.i.i.i ], [ 2, %bb.ak ], [ 2, %bb.ab ]
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.10.sroa.5.0113, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.2820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2820.0, ptr %.sroa.2820.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.34.0, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.41.0, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.43.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.47.0, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.55.0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.62.0, ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.67.0, ptr %.sroa.67.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple22VariableTupleSlicePlanE7or_elseNCNvMse_BK_INtBK_19VariableLengthTupleNtBM_4TypeNtBK_15VariableSegmentE18forward_slice_plans0_0EBO_.exit.thread, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_19VariableLengthTupleNtB7_4TypeNtB5_15VariableSegmentE25type_at_negative_distance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = icmp eq i64 %5, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !26136, !noalias !26139, !noundef !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26141, !noalias !26144, !noundef !15
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26141, !noalias !26144
  %.sink9.i.i = select i1 %.not.i.i, i64 0, i64 %i.h ; 3 uses
  %i.i = sub i64 %.sink9.i.i, %i.d                ; 2 uses
  %i.j = icmp ugt i64 %5, %.sink9.i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ugt i64 %5, %i.i
  br i1 %.not, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit, label %bb.e

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_15VariableSegment12element_type.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = tail call { ptr, i64 } @_RNvXsp_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_EINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexINtNtB1D_5range7RangeTojEE5indexBM_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) ; 2 uses
end_hunk_0
