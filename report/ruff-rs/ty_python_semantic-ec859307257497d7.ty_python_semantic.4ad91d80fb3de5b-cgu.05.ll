Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.05?download=true
inline.NumInlined: 9178
inline.NumDeleted: 3311
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9overrides44check_enum_member_against_constructor_method:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ci = getelementptr i8, ptr %0, i64 48
  %.val38 = load ptr, ptr %i.ci, align 8, !nonnull !9, !align !17, !noundef !9
  invoke void @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition11focus_range(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.i, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val36, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val38)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintNtNtCs56aZGHL6Dc6_7ruff_db5files9FileRangeEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic18INVALID_ASSIGNMENT, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.i)
          to label %bb.at unwind label %bb.aq

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cj = load i64, ptr %i.j, align 8, !range !53, !noundef !9
  %.not24 = icmp eq i64 %i.cj, -2
  br i1 %.not24, label %bb.ak, label %bb.av

bb.au:                                            ; preds = %bb.av
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %..i = select i1 %8, i64 8, i64 7
  %.1.i = select i1 %8, ptr @230, ptr @229
  store ptr %.1.i, ptr %i.f, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %..i, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.w, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.48.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.cm, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g, ptr noundef nonnull @350, ptr noundef nonnull %i.e)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cn = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %bb.ay unwind label %bb.ax

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit: ; preds = %bb.ba, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.co, %bb.ax ], [ %i.cq, %bb.ba ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #39
          to label %bb.ap unwind label %bb.y

bb.ax:                                            ; preds = %bb.bc, %bb.ay, %bb.aw
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB7_4Type7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val36, ptr noundef nonnull align 4 %.val37)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsf_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.cp = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 1, ptr noundef nonnull @351, ptr noundef nonnull %i.c)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.cr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.y

bb.bb:                                            ; preds = %bb.az
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noalias noundef nonnull align 8 %i.cp)
          to label %bb.bc unwind label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.cs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit48 unwind label %bb.ax

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit48: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h)
          to label %bb.bd unwind label %bb.aq

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsNtB11_9CallErrorEEB15_.exit: ; preds = %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintSetBuilderEBH_(ptr noalias noundef align 8 dereferenceable(696) %i.p)
          to label %bb.be unwind label %bb.ad

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsNtB11_9CallErrorEEB15_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ct = load i64, ptr %i.q, align 8, !range !18, !alias.scope !7917, !noundef !9
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEEB1i_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body49 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEEB1i_.exit unwind label %bb.aa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEEB1i_.exit: ; preds = %bb.be, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEEB1i_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEEB1i_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.z
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument0EB1Q_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.i = load i64, ptr %i.h, align 8, !noundef !9 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %.idx.i.i = mul nuw nsw i64 %i.i, 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument0EB1Q_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i
  %i.l = phi ptr [ %i.m, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i ], [ %i.g, %bb.c ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 95
  %i.o = load i8, ptr %i.n, align 1, !range !44, !noalias !7922, !noundef !9 ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7923, !noalias !7922, !noundef !9
  %i.r = and i64 %i.q, 72057594037927935
  %i.s = icmp ult i8 %i.o, -48
  %i.t = zext i8 %i.o to i64
  %i.u = add nsw i64 %i.t, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.s, i64 %spec.store.select.i.i.i.i.i, i64 %i.r
  %i.v = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 5
  br i1 %i.v, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i

_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i: ; preds = %bb.d
  %i.w = icmp ugt i8 %i.o, -49
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !7923, !noalias !7922
  %.sroa.01.0.i.i.i.i.i = select i1 %i.w, ptr %i.y, ptr %i.x ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i) ]
  %i.z = load i32, ptr %.sroa.01.0.i.i.i.i.i, align 1
  %i.aa = xor i32 %i.z, 1702060386
  %i.ab = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 4
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 %i.ad, 115
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument0EB1Q_.exit, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i

_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i: ; preds = %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.aj = icmp eq ptr %i.m, %i.j
  br i1 %i.aj, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument0EB1Q_.exit, label %.lr.ph.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument0EB1Q_.exit: ; preds = %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ], [ null, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i ], [ %i.l, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference21type_param_validation33check_single_typevar_tuple_pep695(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 2) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [80 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = trunc nuw i64 %2 to i1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %. = select i1 %i.k, ptr @353, ptr @352
  %.27 = select i1 %i.k, i64 10, i64 13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %., ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.27, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %3, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.p, 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.04.031 = phi ptr [ %i.s, %bb.c ], [ %i.n, %bb.a ] ; 4 uses
  %.sroa.06.030 = phi ptr [ %.sroa.06.1, %bb.c ], [ null, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.031, i64 72 ; 2 uses
  %i.t = load i64, ptr %.sroa.04.031, align 8, !range !36, !noundef !9
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.031, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.030, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.06.1 = phi ptr [ %.sroa.06.030, %.lr.ph ], [ %i.v, %bb.b ]
  %i.w = icmp eq ptr %i.s, %i.q
  br i1 %i.w, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated21TypeParamTypeVarTupleEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_TYPE_FORM, ptr noundef nonnull align 8 %i.v)
  %i.x = load i64, ptr %i.g, align 8, !range !53, !noundef !9
  %.not26 = icmp eq i64 %i.x, -2
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.410.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %i.y, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.h, ptr noundef nonnull @354, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.031, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.z, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RINvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_19LintDiagnosticGuard30set_primary_annotation_messageNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull @355, ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %._crit_edge

bb.g:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #39
          to label %bb.q unwind label %bb.p

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext9secondaryRNtNtCskLngH8kgpZI_15ruff_python_ast9generated21TypeParamTypeVarTupleEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %.sroa.06.030)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.030, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ac, ptr %i.a, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  invoke void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation7messageNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noundef nonnull @356, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic8annotate(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 100)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias noundef nonnull align 8 %i.ae)
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %._crit_edge

bb.p:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.q:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

._crit_edge:                                      ; preds = %bb.c, %bb.f, %bb.o, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference21type_param_validation43check_no_default_after_typevar_tuple_pep695(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 12 uses
  %i.p = alloca [80 x i8], align 8                ; 6 uses
  %i.q = alloca [80 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs0_NvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtBd_7NewType9lazy_base1__NtB5_25lazy_base__Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !range !20, !alias.scope !8845, !noalias !8846, !noundef !9
  %i.am = load i32, ptr %i.aj, align 4, !range !20, !alias.scope !8846, !noalias !8845, !noundef !9
  %i.an = icmp eq i32 %i.al, %i.am
  br label %_RNvXsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB5_11NewTypeBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !range !20, !alias.scope !8845, !noalias !8846, !noundef !9
  %i.ar = load i32, ptr %i.ao, align 4, !range !20, !alias.scope !8846, !noalias !8845, !noundef !9
  %i.as = icmp eq i32 %i.aq, %i.ar
  br label %_RNvXsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB5_11NewTypeBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !20, !alias.scope !8841, !noalias !8842, !noundef !9
  %i.aw = load i32, ptr %i.at, align 4, !range !20, !alias.scope !8842, !noalias !8841, !noundef !9
  %i.ax = icmp eq i32 %i.av, %i.aw
  br label %_RNvXsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB5_11NewTypeBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !8837, !noalias !8838, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !8838, !noalias !8837, !noundef !9
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.t, label %_RNvXsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB5_11NewTypeBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !range !20, !alias.scope !8837, !noalias !8838, !noundef !9
  %i.bg = load i32, ptr %i.bd, align 4, !range !20, !alias.scope !8838, !noalias !8837, !noundef !9
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br label %_RNvXsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB5_11NewTypeBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB5_11NewTypeBaseNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ %i.bh, %bb.t ], [ true, %bb.b ], [ %i.ax, %bb.r ], [ false, %bb.c ], [ false, %bb.e ], [ %i.y, %bb.m ], [ false, %bb.f ], [ %i.ad, %bb.n ], [ false, %bb.h ], [ %i.ai, %bb.o ], [ false, %bb.i ], [ %i.an, %bb.p ], [ false, %bb.j ], [ %i.as, %bb.q ], [ false, %bb.k ], [ false, %bb.l ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtBd_7NewType9lazy_base1__NtB5_25lazy_base__Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8855)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8857)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !9, !alias.scope !8858, !noalias !8859, !nonnull !9
  %i.d = tail call noundef nonnull align 8 ptr %i.c(ptr noundef nonnull %1), !noalias !8860, !inline_history !8852 ; 2 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype7NewTypeEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype1__NtB9_7NewType10ingredient5CACHE, ptr noundef nonnull align 8 %i.d), !noalias !8860
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype7NewTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.d, i32 noundef range(i32 1, 0) %5, i32 noundef %6), !noalias !8860
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 2, ptr %i.a, align 4, !alias.scope !8861, !noalias !8856
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load <2 x i32>, ptr %i.g, align 8, !noalias !8860
  store <2 x i32> %i.h, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !alias.scope !8861, !noalias !8856
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8856
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtBd_7NewType9lazy_base1__NtB5_25lazy_base__Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtB8_7NewType9lazy_baseBX_NtB2_11InnerTrait_10lazy_base_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs0_NvNvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtypeNtBd_7NewType9lazy_base1__NtB5_25lazy_base__Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_size(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype11NewTypeBaseE0jE0jEB45_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @418, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0)
  %i.b = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.a, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBd_19DynamicClassLiteral14explicit_bases1__NtB5_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration12values_equal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.g = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.h = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBd_19DynamicClassLiteral14explicit_bases1__NtB5_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %2, ptr %i.d, align 4, !noalias !8904
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %3, ptr %i.e, align 4, !noalias !8904
  %i.f = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition12program_file(i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1        ; 2 uses
  %i.i = tail call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile11python_fileDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1v_(i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1) ; 2 uses
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = extractvalue { i32, i32 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8904
  store i32 1, ptr %i.c, align 4, !alias.scope !8905, !noalias !8904
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.g, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !alias.scope !8905, !noalias !8904
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.h, ptr %.sroa.56.0..sroa_idx.i.i, align 4, !alias.scope !8905, !noalias !8904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8904
  %i.l = tail call noundef nonnull align 8 ptr @_RNvNtCs56aZGHL6Dc6_7ruff_db6parsed13parsed_module(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef %i.j, i32 noundef %i.k)
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db6parsedNtB2_12ParsedModule4load(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  %i.m = invoke noundef nonnull align 8 ptr @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core10definition1__NtB8_10Definition4kindDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.q, %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument.exit.i, %.invoke.i, %bb.h, %bb.c, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(32) %i.b) #39
          to label %common.resume.i unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.o = invoke noundef align 8 ptr @_RNvMsu_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_14DefinitionKind5value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.b       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.invoke.i, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.o, align 8, !range !62, !noundef !9
  %i.q = icmp eq i32 %i.p, 16
  br i1 %i.q, label %bb.f, label %.invoke.i, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  br label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument.exit.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.y = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %.noexc.i unwind label %bb.b   ; 3 uses

.noexc.i:                                         ; preds = %bb.h
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %.idx.i.i.i.i = mul nuw nsw i64 %i.aa, 120
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i
  %i.ad = phi ptr [ %i.ae, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i ], [ %i.y, %.noexc.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 95
  %i.ag = load i8, ptr %i.af, align 1, !range !44, !noalias !8906, !noundef !9 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !8907, !noalias !8906, !noundef !9
  %i.aj = and i64 %i.ai, 72057594037927935
  %i.ak = icmp ult i8 %i.ag, -48
  %i.al = zext i8 %i.ag to i64
  %i.am = add nsw i64 %i.al, -192
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.ak, i64 %spec.store.select.i.i.i.i.i.i.i, i64 %i.aj
  %i.an = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i, 5
  br i1 %i.an, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i.i.i, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i

_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ao = icmp ugt i8 %i.ag, -49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !8907, !noalias !8906
  %.sroa.01.0.i.i.i.i.i.i.i = select i1 %i.ao, ptr %i.aq, ptr %i.ap ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i) ]
  %i.ar = load i32, ptr %.sroa.01.0.i.i.i.i.i.i.i, align 1
  %i.as = xor i32 %i.ar, 1702060386
  %i.at = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 4
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.av, 115
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument.exit.i, label %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i

_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i: ; preds = %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i.i.i
  %i.bb = icmp eq ptr %i.ae, %i.ab
  br i1 %i.bb, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.invoke.i:                                        ; preds = %bb.e, %bb.d
  %i.bc = phi ptr [ @384, %bb.d ], [ @386, %bb.e ]
  %i.bd = phi i64 [ 66, %bb.d ], [ 44, %bb.e ]
  %i.be = phi ptr [ @385, %bb.d ], [ @387, %bb.e ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #41
          to label %.cont.i unwind label %bb.b

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument.exit.i: ; preds = %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i.i.i, %bb.g
  %.sroa.0.0.i.i.i = phi ptr [ %i.w, %bb.g ], [ %i.ad, %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8904
  store ptr %0, ptr %i.a, align 8, !noalias !8904
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.bf, align 8, !noalias !8904
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.bg, align 8, !noalias !8904
  %i.bh = invoke { ptr, i64 } @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types9iteration43extract_fixed_length_iterable_element_typesNCNvNvXs0_NvNvMsg_NtNtB4_5class15dynamic_literalNtB1U_19DynamicClassLiteral14explicit_bases1__NtB1M_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_0EB6_(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %i.c, ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.b       ; 2 uses

.loopexit.i:                                      ; preds = %_RNCNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument00Bb_.exit.thread.i.i.i.i.i, %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8908)
  call void @llvm.experimental.noalias.scope.decl(metadata !8909)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8910)
  call void @llvm.experimental.noalias.scope.decl(metadata !8911)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !8912, !noalias !8904, !nonnull !9, !noundef !9
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !8912
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.j:                                             ; preds = %.loopexit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8913)
  call void @llvm.experimental.noalias.scope.decl(metadata !8914)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !8915, !noalias !8904, !nonnull !9, !noundef !9
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !8916
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.l, label %common.resume.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %common.resume.i unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.j, %.loopexit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8917)
  call void @llvm.experimental.noalias.scope.decl(metadata !8918)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !8919, !noalias !8904, !nonnull !9, !noundef !9
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !8920
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RNvNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBf_19DynamicClassLiteral14explicit_bases1__NtB7_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume.i:                                  ; preds = %bb.v, %bb.u, %bb.l, %bb.k, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.ce, %bb.u ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ], [ %i.ce, %bb.v ], [ %i.n, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument.exit.i
  %i.bw = extractvalue { ptr, i64 } %i.bh, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8904
  %.not12.i = icmp eq ptr %i.bw, null
  br i1 %.not12.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = extractvalue { ptr, i64 } %i.bh, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !8921
  %i.by = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 16, i64 noundef range(i64 4, 9) 4) #42, !noalias !8921 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 16) #41
          to label %.noexc13.i unwind label %bb.b

.noexc13.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  store i32 4, ptr %i.by, align 4
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx3.i.i, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.bx, %bb.o ], [ 1, %bb.r ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bw, %bb.o ], [ %i.by, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8922)
  call void @llvm.experimental.noalias.scope.decl(metadata !8923)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8924)
  call void @llvm.experimental.noalias.scope.decl(metadata !8925)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !8926, !noalias !8904, !nonnull !9, !noundef !9
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !8926
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8927)
  call void @llvm.experimental.noalias.scope.decl(metadata !8928)
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !8929, !noalias !8904, !nonnull !9, !noundef !9
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !8930
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.v, label %common.resume.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %common.resume.i unwind label %bb.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i: ; preds = %bb.t, %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8931)
  call void @llvm.experimental.noalias.scope.decl(metadata !8932)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !8933, !noalias !8904, !nonnull !9, !noundef !9
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !8934
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RNvNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBf_19DynamicClassLiteral14explicit_bases1__NtB7_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.w:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %.sink.i = phi ptr [ %i.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.cj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i ]
  %.sroa.4.1.ph.i = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %.sroa.4.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i ]
  %.sroa.0.1.ph.i = phi ptr [ inttoptr (i64 4 to ptr), %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i ]
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i)
  br label %_RNvNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBf_19DynamicClassLiteral14explicit_bases1__NtB7_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit

bb.x:                                             ; preds = %bb.b
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RNvNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBf_19DynamicClassLiteral14explicit_bases1__NtB7_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %.sroa.4.1.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i14.i ], [ inttoptr (i64 4 to ptr), %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %.sroa.0.1.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8904
  %i.cp = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.cq = insertvalue { ptr, i64 } %i.cp, i64 %.sroa.4.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.cq
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs0_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBd_19DynamicClassLiteral14explicit_bases1__NtB5_38deferred_explicit_bases_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration9heap_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerEEE4withNCINvCsdNa9EhS036s_17ruff_memory_usage12with_trackerNCINvB2V_9heap_sizeINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEE0jE0jEB4C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @418, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.b = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.a, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
