Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion:bb.a
  unreachable

bb.z:                                             ; preds = %bb.x
  store ptr %i.ar, ptr %.sink18.i.sroa.gep1.i.i.i, align 8, !alias.scope !660, !noalias !659
  store i64 %i.as, ptr %.sink15.i.sroa.gep2.i.i.i, align 8, !alias.scope !660, !noalias !659
  br label %.sink.split.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.o
  %.sink12.i.i.i.i = phi i64 [ 8, %bb.o ], [ %.sink12.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink10.i.i.i.i = phi ptr [ %i.ar, %bb.o ], [ %.sink10.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink9.i.i.i.i = phi i64 [ 16, %bb.o ], [ %.sink9.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink7.i.i.i.i = phi i64 [ %i.as, %bb.o ], [ %.sink7.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink12.i.i.i.i
  store ptr %.sink10.i.i.i.i, ptr %i.bq, align 8, !alias.scope !660, !noalias !659
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink9.i.i.i.i
  store i64 %.sink7.i.i.i.i, ptr %i.br, align 8, !alias.scope !660, !noalias !659
  %.sroa.5.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa.0.0.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sink18.i.sroa.gep1.i.i.i, i64 48, i1 false), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  %i.bs = add nuw nsw i64 %.sroa.03.037.i.i, 1    ; 2 uses
  store i64 %i.aq, ptr %.sroa.0.038.i.i, align 8, !noalias !658
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 56 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bs, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.split.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  store i64 0, ptr %i.ai, align 8, !alias.scope !654, !noalias !652
  %i.bu = load i64, ptr %i.b, align 8, !range !316, !alias.scope !662, !noalias !652, !noundef !313
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.ah unwind label %.body.i, !noalias !652

._crit_edge.thread.i.i.loopexit.unr-lcssa:        ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil.preheader

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil.preheader: ; preds = %._crit_edge.thread.i.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.preheader
  %.sroa.0.038.i.us.i.epil.init = phi ptr [ %.sroa.10.0.i.i, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.preheader ], [ %i.bh, %._crit_edge.thread.i.i.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil: ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil.preheader
  %.sroa.0.038.i.us.i.epil = phi ptr [ %i.bw, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil ], [ %.sroa.0.038.i.us.i.epil.init, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil ], [ 0, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  store i64 -1, ptr %.sroa.0.038.i.us.i.epil, align 8, !noalias !658
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.us.i.epil, i64 56 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil, !llvm.loop !638

._crit_edge.thread.i.i:                           ; preds = %_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i, %._crit_edge.thread.i.i.loopexit.unr-lcssa, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil, %._crit_edge.i.i
  %.sroa.0.0.lcssa47.i.i = phi ptr [ %.sroa.10.0.i.i, %._crit_edge.i.i ], [ %i.bw, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.us.i.epil ], [ %i.bh, %._crit_edge.thread.i.i.loopexit.unr-lcssa ], [ %i.bt, %_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.lcssa47.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !663
  store i64 %i.n, ptr %i.ai, align 8, !alias.scope !654, !noalias !652
  %.pre = load ptr, ptr %i.i, align 8
  br label %bb.ah

.body.i:                                          ; preds = %bb.ac
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73
          to label %.body12 unwind label %bb.ad, !noalias !652

bb.ad:                                            ; preds = %bb.af, %.body.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !664
  unreachable

bb.ae:                                            ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load i64, ptr %i.h, align 8, !range !316, !alias.scope !665, !noundef !313
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %.body12, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.body12 unwind label %bb.ad, !noalias !664

.body12:                                          ; preds = %.body.i, %bb.ae, %bb.af
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.bx, %.body.i ], [ %i.bz, %bb.af ] ; 2 uses
  %i.cc = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !666
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.body12
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.thread unwind label %bb.an

bb.ah:                                            ; preds = %._crit_edge.thread.i.i, %bb.ac, %bb.ab
  %i.ce = phi ptr [ %.pre, %._crit_edge.thread.i.i ], [ %i.y, %bb.ac ], [ %i.y, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.cg, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema11check_names(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #73
          to label %.thread unwind label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.ci = load i64, ptr %i.g, align 8, !range !318, !noundef !313
  %.not = icmp eq i64 %i.ci, -1
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common8dfschema8DFSchemaECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.an:                                            ; preds = %bb.ag, %.thread18, %bb.ai
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.thread:                                          ; preds = %.body12, %bb.ag, %bb.ai, %.thread18
  %.pn17 = phi { ptr, i32 } [ %eh.lpad-body13, %.body12 ], [ %eh.lpad-body21, %.thread18 ], [ %i.ch, %bb.ai ], [ %eh.lpad-body13, %bb.ag ]
  resume { ptr, i32 } %.pn17

.thread18:                                        ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body21 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.k) #73
          to label %.thread unwind label %bb.an
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !680
  %i.b = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 17) 1) #71, !noalias !680 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %2) #72, !noalias !681
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !682
  br label %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit

_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.b, %bb.e
  %.sroa.5.0.i.i = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %2, ptr %0, align 8, !alias.scope !683
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !683
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !683
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.g

bb.g:                                             ; preds = %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc85D0lJ81Z_16lance_datafusion.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offsetINtB3_12OffsetBufferlE12from_lengthsAjj1_ECsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !691
  %i.b = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !691 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 8) #72
  unreachable

.thread47.loopexit.split-lp:                      ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !692
  store i64 1, ptr %i.a, align 8, !noalias !692
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !noalias !692
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8, !noalias !692
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 8, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !692
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !692
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !692
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 8, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !692
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !693
  %i.f = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !693 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.i, !prof !314

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i unwind label %bb.e, !noalias !692

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.f, !noalias !692

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !692
  unreachable

bb.g:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit22
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #72
          to label %bb.h unwind label %.thread47.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !692
  store ptr %i.f, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 8, ptr %.sroa.531.0..sroa_idx, align 8
  ret void

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit22: ; preds = %bb.a
  store i32 0, ptr %i.b, align 4
  %i.j = trunc i64 %1 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = icmp ult i64 %1, 2147483648
  br i1 %i.l, label %bb.c, label %bb.g, !prof !319

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.e, %.thread47.loopexit.split-lp
  %.pn1640 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread47.loopexit.split-lp ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn1640
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericStringTypelEE12append_valueRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !313, !noundef !313
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !313 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !707, !noundef !313 ; 5 uses
  %i.e = load i64, ptr %0, align 8, !range !320, !alias.scope !707, !noundef !313
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %.val1.i, %i.f
  br i1 %i.g, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, !prof !314

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %.val1.i, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.c, align 8, !alias.scope !706, !noundef !313 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  br label %bb.b

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.a
  %i.j = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not.i = icmp eq i64 %.val1.i, 0
  br i1 %.not.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.k = phi i64 [ %i.h, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %i.d, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !706, !nonnull !313, !noundef !313
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val.i, i64 %.val1.i, i1 false), !noalias !706
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %i.d, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.p = add i64 %i.o, %.val1.i                   ; 2 uses
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !706
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.r = load i64, ptr %i.q, align 8, !range !321, !alias.scope !708, !noundef !313
  %.not1.i = icmp eq i64 %i.r, 0
  br i1 %.not1.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !710, !noundef !313 ; 3 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.u, 7
  %.not.i2.i = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not.i2.i to i64
  %.sroa.0.0.i3.i = add nuw nsw i64 %i.v, %i.x    ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !710, !noundef !313 ; 3 uses
  %i.aa = icmp ugt i64 %.sroa.0.0.i3.i, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit9.i

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nuw nsw i64 %.sroa.0.0.i3.i, %i.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !712, !noundef !313 ; 2 uses
  %i.ae = icmp ugt i64 %.sroa.0.0.i3.i, %i.ad
  br i1 %i.ae, label %bb.e, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i4.i, !prof !314

bb.e:                                             ; preds = %bb.d
  %i.af = and i64 %.sroa.0.0.i3.i, 63
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %reass.sub.i.i5.i = and i64 %.sroa.0.0.i3.i, 4611686018427387840
  %i.ah = add nuw nsw i64 %reass.sub.i.i5.i, 64   ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, %.sroa.0.0.i3.i
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.i6.i = phi i64 [ %.sroa.0.0.i3.i, %bb.e ], [ %i.ah, %bb.f ]
  %i.aj = shl nuw nsw i64 %i.ad, 1
  %.sroa.0.0.i.i7.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aj, i64 %.sroa.4.0.i.i6.i)
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q, i64 noundef %.sroa.0.0.i.i7.i)
  %.pre.i8.i = load i64, ptr %i.y, align 8, !alias.scope !710
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i4.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @563, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #72, !noalias !712
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i4.i: ; preds = %bb.g, %bb.d
  %i.ak = phi i64 [ %i.z, %bb.d ], [ %.pre.i8.i, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !710, !nonnull !313, !noundef !313
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 0, i64 %i.ab, i1 false)
  store i64 %.sroa.0.0.i3.i, ptr %i.y, align 8, !alias.scope !710
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit9.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit9.i: ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i4.i, %bb.c
  store i64 %i.u, ptr %i.s, align 8, !alias.scope !710
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !708, !nonnull !313, !noundef !313
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder14subquery_aliasNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion:bb.a
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(320) %i.ai)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.aj, ptr noundef nonnull align 16 dereferenceable(336) %i.ag, i64 336, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !26687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.aj, ptr %i.af, align 8, !noalias !26687
  %.sink18.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink18.i.sroa.gep101.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink15.i.sroa.gep102.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !26687
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.g unwind label %.thread106.i, !noalias !26687

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit
  br i1 %.sroa.032.2110.i, label %bb.eg, label %.body.thread

.thread106.i:                                     ; preds = %bb.g, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !26687, !nonnull !313, !noundef !313
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !26687, !nonnull !313, !noundef !313
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  invoke void @_RNvNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan7builder20unique_field_aliases(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.h unwind label %.thread106.i, !noalias !26687

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !26687, !nonnull !313, !noundef !313 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !26687, !noundef !313 ; 9 uses
  %.idx = mul nuw nsw i64 %i.ax, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  %.not3.not.not.i.not.i177 = icmp eq i64 %i.ax, 0
  br i1 %.not3.not.not.i.not.i177, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %.not3.not.not.i.not.i = icmp eq ptr %i.az, %i.ay
  br i1 %.not3.not.not.i.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.ba = phi ptr [ %i.az, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %.val.i.i = load i64, ptr %i.ba, align 8, !range !332, !noalias !26688, !noundef !313
  %.not.i.i = icmp eq i64 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.i, label %bb.n

.body59.thread.i:                                 ; preds = %bb.ef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i, %bb.bz, %.body.i.i.i, %bb.m
  %.sroa.032.4.ph.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ false, %bb.ef ], [ true, %.body.i.i.i ], [ %.sroa.032.5.i, %bb.m ], [ false, %bb.bz ] ; 2 uses
  %.pn53.ph.i = phi { ptr, i32 } [ %.pn49.pn.pn116.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %.pn49.pn.pn116.i, %bb.ef ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %i.bl, %bb.m ], [ %i.fg, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26689)
  call void @llvm.experimental.noalias.scope.decl(metadata !26690), !noalias !26687
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.body59.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.bd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %.body59.thread.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0.09.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26691), !noalias !26687
  %i.be = load i64, ptr %i.bc, align 8, !range !332, !alias.scope !26692, !noalias !26693, !noundef !313 ; 3 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26694), !noalias !26687
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !26695, !noalias !26693, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !26696
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.bi = icmp eq i64 %i.bd, %i.ax
  br i1 %i.bi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %.body59.thread.i
  %.val2.i = load i64, ptr %i.ad, align 8, !range !320, !alias.scope !26689, !noalias !26687, !noundef !313 ; 2 uses
  %i.bj = icmp eq i64 %.val2.i, 0
  br i1 %i.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB7_6string6StringEENtNtNtBK_3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.bk = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.av, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !26693
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion.exit

.thread.i:                                        ; preds = %bb.dm
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #73, !noalias !26687
  br label %.body.thread

bb.m:                                             ; preds = %bb.ds, %.loopexit.i, %bb.t, %bb.p, %bb.n
  %.sroa.032.5.i = phi i1 [ false, %bb.ds ], [ true, %bb.n ], [ false, %.loopexit.i ], [ true, %bb.t ], [ true, %bb.p ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body59.thread.i

._crit_edge:                                      ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !26687
  store ptr %i.aj, ptr %i.ac, align 8, !noalias !26687
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !26687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !26687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !26687
  %i.bm = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.an)
          to label %bb.p unwind label %bb.m, !noalias !26687

bb.o:                                             ; preds = %bb.cb, %._crit_edge
  %i.bn = phi ptr [ %i.fe, %bb.cb ], [ %i.aj, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !26687
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bo)
          to label %bb.cc unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsc85D0lJ81Z_16lance_datafusion.exit.thread226.i, !noalias !26687

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bm, align 8, !noalias !26687, !nonnull !313, !noundef !313
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  invoke void @_RNvMNtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB2_8DFSchema4iter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.br)
          to label %bb.q unwind label %bb.m, !noalias !26687

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !26697)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !26698, !noalias !26687 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !26698, !noalias !26687 ; 2 uses
  %i.bs = sub i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bs, i64 %i.ax) ; 6 uses
  %.sroa.699.16.copyload.i = load ptr, ptr %i.aa, align 8, !alias.scope !26699, !noalias !26687 ; 2 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.9.16.copyload.i = load ptr, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !26699, !noalias !26687 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !26687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26700
  %i.bt = mul i64 %.sroa.0.0.i.i.i.i, 112         ; 3 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i, 82351536043346212
  br i1 %or.cond.i.i.i.i.i, label %bb.t, label %bb.r, !prof !315

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !26701
  %i.bv = call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bt, i64 noundef range(i64 1, 17) 16) #71, !noalias !26701 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 16, %bb.s ], [ 0, %bb.q ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bt) #72
          to label %.noexc.i unwind label %bb.m, !noalias !26687

.noexc.i:                                         ; preds = %bb.t
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.r ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.0.0.i.i.i.i, %bb.s ] ; 2 uses
  %i.bx = icmp samesign ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.bx)
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.j, align 8, !noalias !26700
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.by, align 8, !noalias !26700
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26702)
  call void @llvm.experimental.noalias.scope.decl(metadata !26703)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.699.16.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload.i) ]
  %.sink18.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sink18.i7.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink18.i7.sroa.gep10.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sink15.i9.sroa.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink15.i9.sroa.gep11.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.63.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.11.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.13.0..sroa_idx14.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.05.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i.i.i.i.i.i.i.i.i.i.i, i64 56
  br label %bb.u

bb.u:                                             ; preds = %bb.bt, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val13.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.bt ] ; 5 uses
  %i.ca = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.val13.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cc = add i64 %.val13.i.i.i.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %.sroa.699.16.copyload.i, i64 %i.cc ; 18 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.9.16.copyload.i, i64 %i.cc ; 2 uses
  %i.cf = load i64, ptr %i.cd, align 8, !range !316, !alias.scope !26704, !noalias !26705, !noundef !313 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cf, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26706
  call void @llvm.experimental.noalias.scope.decl(metadata !26707)
  call void @llvm.experimental.noalias.scope.decl(metadata !26708)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !26708, !noalias !26706, !noundef !313 ; 3 uses
  %i.ck = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !26709
  %i.cl = icmp slt i64 %i.ck, 0                   ; 3 uses
  switch i64 %i.cf, label %default.unreachable [
    i64 0, label %bb.w
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

default.unreachable:                              ; preds = %bb.aq, %bb.v, %bb.cn
  unreachable

bb.w:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.z, label %bb.aj

bb.x:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.ab, label %bb.aa

bb.y:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.ae, label %bb.ad

bb.z:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ah, %bb.aa
  %.sink18.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ct, %bb.ah ], [ %i.ch, %bb.aa ]
  %.sink15.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ]
  %.sink13.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.ah ], [ %i.cj, %bb.aa ]
  %.sink12.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 40, %bb.ah ], [ 24, %bb.aa ]
  %.sink10.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %bb.ah ], [ %i.cn, %bb.aa ]
  %.sink9.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 48, %bb.ah ], [ 32, %bb.aa ]
  %.sink7.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.ah ], [ %i.cp, %bb.aa ]
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  store i64 %.sink13.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !26708, !noalias !26706, !noundef !313
  %i.cq = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8, !noalias !26709
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.ac, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !26708, !noalias !26706, !noundef !313
  %i.cw = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !26709
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !26708, !noalias !26706, !nonnull !313, !noundef !313 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !26708, !noalias !26706, !noundef !313
  %i.dc = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8, !noalias !26709
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.af
  store ptr %i.ch, ptr %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  store i64 %i.cj, ptr %.sink15.i.sroa.gep9.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26707, !noalias !26706
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w
  %.sink12.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.w ], [ %.sink12.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink10.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.w ], [ %.sink10.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink9.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 16, %bb.w ], [ %.sink9.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %bb.w ], [ %.sink7.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink12.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sink10.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !26707, !noalias !26706
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink9.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sink7.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.df, align 8, !alias.scope !26707, !noalias !26706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.63.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sink18.i.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !26706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26706
  %i.dg = load ptr, ptr %i.ce, align 8, !noalias !26706, !nonnull !313, !noundef !313
  br label %bb.al

bb.ak:                                            ; preds = %bb.u
  %i.dh = load ptr, ptr %i.ce, align 8, !noalias !26706, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26711
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.ak ], [ %i.dg, %bb.aj ]
  store i64 %i.cf, ptr %i.e, align 8, !noalias !26712
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26710
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.am, !noalias !26713

bb.am:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.e)
          to label %.body.i.i.i unwind label %bb.ao, !noalias !26713

bb.ao:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !26713
  unreachable

_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !26714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !26714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !26715
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i)
  %i.dl = load i64, ptr %i.cb, align 8, !range !332, !noalias !26706, !noundef !313
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, -1
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %bb.bt, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs_NtCs2bHstFFhpHt_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26706
  store i64 4, ptr %i.i, align 16, !noalias !26716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !26715
  store i64 0, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26716
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !26716
  store i64 0, ptr %.sroa.13.0..sroa_idx14.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !26716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26706
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26706
  call void @llvm.experimental.noalias.scope.decl(metadata !26717)
  call void @llvm.experimental.noalias.scope.decl(metadata !26718)
  %i.dm = load i64, ptr %i.cd, align 8, !range !337, !alias.scope !26718, !noalias !26706, !noundef !313 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
end_hunk_1
begin_hunk_2_@_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1B_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EB1w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvXso_B5s_IB5q_INtNtB2N_3vec3VecB1w_EB6c_EINtNtNtB4_6traits7collect12FromIteratorIB5q_B1w_B6c_EE9from_iterBQ_E0B7t_ECsc85D0lJ81Z_16lance_datafusion:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.n, !noalias !27424

bb.f:                                             ; preds = %.noexc
  %i.p = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27424
  store ptr %i.p, ptr %i.c, align 8, !noalias !27424
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27427
  %i.q = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #71, !noalias !27427 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #72
          to label %.noexc8.i.i.i.i unwind label %bb.c, !noalias !27424

.noexc8.i.i.i.i:                                  ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.q, align 8, !noalias !27424
  store i64 4, ptr %i.d, align 8, !noalias !27424
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27424
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !27424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !27428
  call void @llvm.experimental.noalias.scope.decl(metadata !27429)
  call void @llvm.experimental.noalias.scope.decl(metadata !27430)
  %i.s = invoke fastcc { i64, ptr } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1I_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !27424 ; 2 uses

.noexc9.i.i.i.i:                                  ; preds = %bb.h
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtB3y_5slice4iter4IterBR_ENCINvNtNtBW_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EINtNtB3y_6result6ResultNtNtB3y_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc9.i.i.i.i, %.noexc10.i.i.i.i
  %i.v = phi ptr [ %i.ac, %.noexc10.i.i.i.i ], [ %i.q, %.noexc9.i.i.i.i ]
  %i.w = phi i64 [ %i.ae, %.noexc10.i.i.i.i ], [ 1, %.noexc9.i.i.i.i ] ; 5 uses
  %i.x = phi { i64, ptr } [ %i.af, %.noexc10.i.i.i.i ], [ %i.s, %.noexc9.i.i.i.i ]
  %i.y = extractvalue { i64, ptr } %i.x, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27431
  store ptr %i.y, ptr %i.a, align 8, !noalias !27431
  %i.z = icmp samesign ult i64 %i.w, 1152921504606846976
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.d, align 8, !range !320, !alias.scope !27432, !noalias !27424, !noundef !313
  %i.ab = icmp eq i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.l, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ac = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  store ptr %i.y, ptr %i.ad, align 8, !noalias !27431
  %i.ae = add nuw nsw i64 %i.w, 1                 ; 2 uses
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27432, !noalias !27424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27431
  %i.af = invoke fastcc { i64, ptr } @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEENCINvNtNtB1I_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc10.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !27424 ; 2 uses

.noexc10.i.i.i.i:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtB3y_5slice4iter4IterBR_ENCINvNtNtBW_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EINtNtB3y_6result6ResultNtNtB3y_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

bb.i:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i6.i.i.i.i.i.i, label %.body.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !27433
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %.body.i.i.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body.i.i.i.i unwind label %bb.m, !noalias !27431

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.w, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i unwind label %bb.i, !noalias !27434

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.l
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27432, !noalias !27424
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27431
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i, %bb.h
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.j, %bb.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ai, %bb.k ], [ %i.ai, %bb.j ], [ %lpad.loopexit.split-lp20, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.d) #73
          to label %.body unwind label %bb.n, !noalias !27424

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtB3y_5slice4iter4IterBR_ENCINvNtNtBW_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EINtNtB3y_6result6ResultNtNtB3y_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %.noexc10.i.i.i.i, %.noexc9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !27435
  br label %bb.p

bb.n:                                             ; preds = %.body.i.i.i.i, %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27424
  unreachable

.body:                                            ; preds = %bb.o, %.body.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.ap, %bb.o ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.m, %bb.e ]
  %.sroa.03.0 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ %.sroa.03.1, %bb.o ], [ true, %.body.i.i.i.i ], [ true, %bb.e ]
  %i.an = load i64, ptr %i.g, align 8, !range !318, !noundef !313
  %i.ao = icmp ne i64 %i.an, -1
  %or.cond = and i1 %.sroa.03.0, %i.ao
  br i1 %or.cond, label %bb.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEECsc85D0lJ81Z_16lance_datafusion.exit

bb.o:                                             ; preds = %bb.a, %bb.s
  %.sroa.03.1 = phi i1 [ false, %bb.s ], [ true, %bb.a ]
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtB3y_5slice4iter4IterBR_ENCINvNtNtBW_13type_coercion9functions34value_fields_with_higher_order_udfuEs1_0EINtNtB3y_6result6ResultNtNtB3y_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEE11spec_extendCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27419
  %i.aq = load i64, ptr %i.g, align 8, !range !318, !noundef !313
  %.not.not = icmp eq i64 %i.aq, -1
  br i1 %.not.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !27436
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCs1Jc0oVeks7E_15datafusion_expr21higher_order_function13ValueOrLambdaINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEuEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.o

bb.t:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.u, %.body
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %.body
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EB1w_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvXso_B4U_IB4S_INtNtCs40k4W9msRzi_5alloc3vec3VecB1w_EB5E_EINtNtNtB4_6traits7collect12FromIteratorIB4S_B1w_B5E_EE9from_iterBQ_E0B6V_EB3s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i = alloca [104 x i8], align 8 ; 7 uses
  %i.a = alloca [112 x i8], align 16              ; 7 uses
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.410.i.i.i.i.i.i.i.i.i.i = alloca [104 x i8], align 8 ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 7 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -1, ptr %i.f, align 8
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx10, align 8, !nonnull !313, !noundef !313 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27511)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i.i.i.i.i.i)
  %i.g = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %i.g, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.410.48..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i.i.i.i.i.i.i.i, i64 40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27512
  %i.n = load ptr, ptr %i.j, align 8, !noalias !27513, !nonnull !313, !noundef !313
  %i.o = load i64, ptr %i.k, align 8, !noalias !27513, !noundef !313
  invoke void @_RNvNtCsf6gb3FOA7sv_14datafusion_sql5utils11rebase_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.n, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.sroa.6.0.copyload)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 16, !noalias !27514 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.f, align 8, !range !318, !alias.scope !27515, !noalias !27516, !noundef !313
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.g unwind label %bb.e, !noalias !27517

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !27518
  br label %.body

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !27512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !27512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27512
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -3
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i
  %i.t = icmp eq ptr %i.m, %.sroa.4.0.copyload
  br i1 %i.t, label %.loopexit15.i.i.i.i, label %bb.b

bb.g:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !27518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27512
  br label %.loopexit15.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i.i.i.i.i.i.i.i.i, i64 104, i1 false), !noalias !27510
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.d, align 16, !noalias !27510
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27519
  %i.u = tail call noundef align 16 dereferenceable_or_null(448) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 448, i64 noundef range(i64 1, 17) 16) #71, !noalias !27519 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.j

.loopexit15.i.i.i.i:                              ; preds = %bb.f, %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i.i.i.i.i.i)
  br label %bb.w

bb.h:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d) #73
          to label %.body unwind label %bb.u, !noalias !27510

bb.i:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 16, i64 448) #72
          to label %.noexc.i.i.i.i unwind label %bb.h, !noalias !27510

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.u, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !27510
  store i64 4, ptr %i.e, align 8, !noalias !27510
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27510
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !27510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27521)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.x = icmp eq ptr %i.m, %.sroa.4.0.copyload
  br i1 %i.x, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i:                 ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.410.48..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i
  %i.aa = phi ptr [ %i.u, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i ], [ %i.ap, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ab = phi i64 [ 1, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i ], [ %i.ar, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ] ; 7 uses
  %i.ac = phi ptr [ %i.m, %.lr.ph.i.i.i.i.lr.ph.i.i.i.i.i.i ], [ %i.ae, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27522)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.o ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27523
  %i.af = load ptr, ptr %i.j, align 8, !noalias !27524, !nonnull !313, !noundef !313
  %i.ag = load i64, ptr %i.k, align 8, !noalias !27524, !noundef !313
  invoke void @_RNvNtCsf6gb3FOA7sv_14datafusion_sql5utils11rebase_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ad, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.af, i64 noundef %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.sroa.6.0.copyload)
          to label %.noexc5.i.i.i.i unwind label %bb.t, !noalias !27510

.noexc5.i.i.i.i:                                  ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 16, !noalias !27525 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.ah, label %bb.l, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.noexc5.i.i.i.i
  %i.ai = load i64, ptr %i.f, align 8, !range !318, !alias.scope !27526, !noalias !27527, !noundef !313
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.p unwind label %bb.n, !noalias !27528

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !27529
  br label %.body.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc5.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !27523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !27523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27523
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i.i.i
  %i.al = icmp eq ptr %i.ae, %.sroa.4.0.copyload
  br i1 %i.al, label %.loopexit.i.i.i.i, label %bb.k

bb.p:                                             ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false), !noalias !27529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27523
  br label %.loopexit.i.i.i.i

bb.q:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtBa_6result6ResultB10_NtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3a_B10_EENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1K_NtNtBa_7convert10InfallibleB29_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8k_12try_for_each4callB10_B3O_NcNtB3O_5Break0E0B3O_E0E0B5b_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i, i64 104, i1 false), !noalias !27530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 16, !noalias !27530
  %i.am = icmp samesign ult i64 %i.ab, 82351536043346213
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %i.e, align 8, !range !320, !alias.scope !27531, !noalias !27510, !noundef !313
  %i.ao = icmp eq i64 %i.ab, %i.an
  br i1 %i.ao, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i.i.i: ; preds = %bb.q
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ab, i64 noundef 1, i64 noundef 16, i64 noundef 112)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i unwind label %bb.r, !noalias !27532

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27531, !noalias !27510
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i, %bb.q
  %i.ap = phi ptr [ %.pre.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i ], [ %i.aa, %bb.q ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aq, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !27530
  %i.ar = add nuw nsw i64 %i.ab, 1                ; 3 uses
  store i64 %i.ar, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27531, !noalias !27510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27530
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.as = icmp eq ptr %i.ae, %.sroa.4.0.copyload
  br i1 %i.as, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans5_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3z_.exit.i.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #73
          to label %.body.i.i.i.i unwind label %bb.s, !noalias !27530

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !27530
  unreachable

bb.t:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.t, %bb.r, %bb.n
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.t ], [ %i.ak, %bb.n ], [ %i.at, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #73
end_hunk_2
begin_hunk_3_@_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0ENtB1y_5IdentINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuENCINvXso_B5m_IB5k_INtNtCs40k4W9msRzi_5alloc3vec3VecB57_EuEINtNtNtB4_6traits7collect12FromIteratorIB5k_B57_uEE9from_iterBQ_E0B6q_EB3G_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !27765
  %i.x = load i64, ptr %i.v, align 8, !range !332, !alias.scope !27766, !noalias !27765, !noundef !313
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0B1l_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0B1l_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %.noexc5.i.i.i.i unwind label %bb.m, !noalias !27752

.noexc5.i.i.i.i:                                  ; preds = %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0B1l_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !range !539, !alias.scope !27766, !noalias !27765, !noundef !313
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.24..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !27767
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !27768 ; 5 uses
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ac, label %bb.n, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtNtBa_6result6ResultNtB12_5IdentuEuINtNtNtBa_3ops12control_flow11ControlFlowIB2o_B28_EENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB3o_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3d_EIB1N_NtNtBa_7convert10InfallibleuEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB28_B32_NcNtB32_5Break0E0B32_E0E0B4A_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtNtBa_6result6ResultNtB12_5IdentuEuINtNtNtBa_3ops12control_flow11ControlFlowIB2o_B28_EENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB3o_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3d_EIB1N_NtNtBa_7convert10InfallibleuEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB28_B32_NcNtB32_5Break0E0B32_E0E0B4A_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc5.i.i.i.i
  %.sroa.5.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !27769 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !27769
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !27765
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtNtBa_6result6ResultNtB12_5IdentuEuINtNtNtBa_3ops12control_flow11ControlFlowIB2o_B28_EENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB3o_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3d_EIB1N_NtNtBa_7convert10InfallibleuEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB28_B32_NcNtB32_5Break0E0B32_E0E0B4A_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.5.i.i.i.i.i.i.i)
  %i.ad = icmp eq ptr %i.w, %2
  br i1 %i.ad, label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69, label %bb.h

bb.j:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartINtNtBa_6result6ResultNtB12_5IdentuEuINtNtNtBa_3ops12control_flow11ControlFlowIB2o_B28_EENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB3o_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3d_EIB1N_NtNtBa_7convert10InfallibleuEENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callB28_B32_NcNtB32_5Break0E0B32_E0E0B4A_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.75.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.sroa.5.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !27770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.5.i.i.i.i.i.i.i)
  %i.ae = icmp samesign ult i64 %i.t, 144115188075855872
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.a, align 8, !range !320, !alias.scope !27771, !noalias !27752, !noundef !313
  %i.ag = icmp eq i64 %i.t, %i.af
  br i1 %i.ag, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i.i.i.i.i: ; preds = %bb.j
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.t, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i unwind label %bb.k, !noalias !27772

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27771, !noalias !27752
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i, %bb.j
  %i.ah = phi ptr [ %.pre.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge.i.i.i.i ], [ %i.s, %bb.j ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %i.t ; 4 uses
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.512.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.75.i.i.i.i.i.i, i64 40, i1 false), !noalias !27770
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ai, align 8, !noalias !27770
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.5.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !27770
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 %i.aa, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !27770
  %i.aj = add nuw nsw i64 %i.t, 1                 ; 3 uses
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27771, !noalias !27752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i.i.i.i)
  %i.ak = icmp eq ptr %i.w, %2
  br i1 %i.ak, label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleuEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_.exit.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %.body.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27773
  br label %.body.i.i.i.i

bb.m:                                             ; preds = %_RNCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtBa_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0B1l_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.m, %bb.l, %bb.k
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %bb.k ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !27752
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %.body.i.i.i.i, %bb.e, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.o, %bb.d ], [ %i.o, %bb.e ]
  resume { ptr, i32 } %.pn.i.i.i.i

_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i, %bb.i, %bb.g
  %.sroa.8.0.copyload42.ph = phi i64 [ %i.t, %bb.i ], [ 1, %bb.g ], [ %i.aj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ]
  %.sroa.0.0.copyload3872 = load i64, ptr %i.a, align 8, !noalias !27774
  %.sroa.6.0.copyload4073 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27774
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread

_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread: ; preds = %bb.c, %bb.a, %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69
  %.sroa.0.04459 = phi i64 [ %.sroa.0.0.copyload3872, %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69 ], [ 0, %bb.a ], [ 0, %bb.c ]
  %.sroa.6.058 = phi ptr [ %.sroa.6.0.copyload4073, %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69 ], [ inttoptr (i64 8 to ptr), %bb.a ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %.sroa.8.057 = phi i64 [ %.sroa.8.0.copyload42.ph, %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread69 ], [ 0, %bb.a ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27752
  store i64 %.sroa.0.04459, ptr %0, align 8, !alias.scope !27775
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.058, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !27775
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.057, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !27775
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.thread, %bb.p, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEuEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_uEE9from_iterINtNtNtB26_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtB1m_14ObjectNamePartENCNvMs_NtNtCsf6gb3FOA7sv_14datafusion_sql4expr8functionINtNtB4u_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE20sql_function_to_exprsi_0EE0B5G_.exit.thread
  ret void

bb.n:                                             ; preds = %.noexc5.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !27765
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.5.i.i.i.i.i.i.i)
  %.sroa.0.0.copyload38 = load i64, ptr %i.a, align 8, !noalias !27774 ; 2 uses
  %.sroa.6.0.copyload40 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !27774 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27752
  store i64 -1, ptr %0, align 8, !alias.scope !27758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27776)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %.sroa.6.0.copyload40, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27778)
  %.val.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !27779, !noalias !27780 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !27779, !noalias !27780, !nonnull !313, !noundef !313
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27781
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i
  %i.as = icmp eq i64 %i.ap, %i.t
  br i1 %i.as, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.at = icmp eq i64 %.sroa.0.0.copyload38, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.p

bb.p:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.au = shl nuw i64 %.sroa.0.0.copyload38, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload40, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27780
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsc85D0lJ81Z_16lance_datafusion.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2f_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0ENtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENCINvXso_B5r_IB5p_INtNtCs40k4W9msRzi_5alloc3vec3VecB4F_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4F_B6b_EE9from_iterBQ_E0B7s_EB3k_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %.sroa.410.i.i20 = alloca [104 x i8], align 8   ; 6 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.681 = alloca [104 x i8], align 8         ; 5 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.669 = alloca [104 x i8], align 8         ; 5 uses
  %.sroa.6202 = alloca [104 x i8], align 8        ; 6 uses
  %i.e = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.5200 = alloca [104 x i8], align 8        ; 5 uses
  %i.f = alloca [112 x i8], align 16              ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -1, ptr %i.h, align 8
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !nonnull !313, !noundef !313 ; 5 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.sroa.6.0.copyload = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.sroa.7.0.copyload = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27834
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5200)
  %i.i = icmp eq ptr %.sroa.0.sroa.0.0.copyload, %.sroa.0.sroa.4.0.copyload
  br i1 %i.i, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.5.0.copyload) ]
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.410.48..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i20, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.090.0173 = phi ptr [ %.sroa.0.sroa.0.0.copyload, %.lr.ph ], [ %i.j, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.090.0173, i64 328 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27835
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.090.0173)
          to label %.noexc30 unwind label %bb.r, !inline_history !27796

.noexc30:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.6.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.7.0.copyload) ]
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.sroa.5.0.copyload, ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.sroa.6.0.copyload, ptr noalias noundef align 8 dereferenceable(152) %.sroa.0.sroa.7.0.copyload)
          to label %.noexc31 unwind label %bb.r, !inline_history !27796

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27835
  %.sroa.084.0.copyload = load i64, ptr %i.b, align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i20)
  %i.k = icmp eq i64 %.sroa.084.0.copyload, -2
  br i1 %i.k, label %bb.c, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27

bb.c:                                             ; preds = %.noexc31
  %i.l = load i64, ptr %i.h, align 8, !range !318, !alias.scope !27836, !noalias !27837, !noundef !313
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27.thread unwind label %bb.e, !noalias !27837, !inline_history !27796

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.485.0..sroa_idx, i64 40, i1 false)
  br label %.body

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.485.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i20)
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27: ; preds = %.noexc31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.485.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i25, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.786.0..sroa_idx, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.681, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i20, i64 104, i1 false), !noalias !27838
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i20)
  %.not.i.i28 = icmp eq i64 %.sroa.084.0.copyload, -3
  br i1 %.not.i.i28, label %bb.f, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i

bb.f:                                             ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681)
  %i.o = icmp eq ptr %i.j, %.sroa.0.sroa.4.0.copyload
  br i1 %i.o, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i.thread, label %bb.b

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i: ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i27.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5200, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.681, i64 104, i1 false), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681)
  %.not.i.i = icmp eq i64 %.sroa.084.0.copyload, -2
  br i1 %.not.i.i, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i.thread, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i
  %.sroa.7.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx37, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5200, i64 104, i1 false), !noalias !27834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5200)
  store i64 %.sroa.084.0.copyload, ptr %i.f, align 16, !noalias !27834
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27839, !inline_history !27804
  %i.p = call noundef align 16 dereferenceable_or_null(448) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 448, i64 noundef range(i64 1, 17) 16) #71, !noalias !27839, !inline_history !27804 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i.thread: ; preds = %bb.f, %bb.a, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6A_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7M_ENcNtB8v_5Break0E0B8v_EB3s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5200)
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B24_EE9from_iterINtNtNtB3a_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB5M_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EE0B6R_.exit

bb.g:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.f) #73
          to label %.body unwind label %bb.q, !noalias !27840, !inline_history !27804

bb.h:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 16, i64 448) #72
          to label %.noexc.i unwind label %bb.g, !noalias !27840, !inline_history !27804

.noexc.i:                                         ; preds = %bb.h
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.p, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !noalias !27840
  store i64 4, ptr %i.g, align 8, !noalias !27834
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !27834
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !27834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27834
  call void @llvm.experimental.noalias.scope.decl(metadata !27841)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6202)
  %i.s = icmp eq ptr %i.j, %.sroa.0.sroa.4.0.copyload
  br i1 %i.s, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1L_3map3MapINtNtNtB1P_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB41_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB1P_6result6ResultNtNtB1P_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEEB56_.exit.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph.lr.ph

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph.lr.ph: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  %.sroa.749.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph.lr.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.t = phi ptr [ %i.p, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph.lr.ph ], [ %i.ae, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 3 uses
  %i.u = phi i64 [ 1, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph.lr.ph ], [ %i.ag, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 7 uses
  %.sroa.087.0176 = phi ptr [ %i.j, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph.lr.ph ], [ %i.v, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  br label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph, %bb.l
  %.sroa.087.1174 = phi ptr [ %.sroa.087.0176, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph ], [ %i.v, %bb.l ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.087.1174, i64 328 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27842
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.087.1174)
          to label %.noexc16 unwind label %bb.p, !inline_history !27821

.noexc16:                                         ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RNvMNtCsf6gb3FOA7sv_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24sql_expr_to_logical_exprB16_(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.sroa.5.0.copyload, ptr noalias noundef align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.sroa.6.0.copyload, ptr noalias noundef align 8 dereferenceable(152) %.sroa.0.sroa.7.0.copyload)
          to label %.noexc17 unwind label %bb.p, !inline_history !27821

.noexc17:                                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27842
  %.sroa.072.0.copyload = load i64, ptr %i.d, align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i)
  %i.w = icmp eq i64 %.sroa.072.0.copyload, -2
  br i1 %i.w, label %bb.i, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i

bb.i:                                             ; preds = %.noexc17
  %i.x = load i64, ptr %i.h, align 8, !range !318, !alias.scope !27843, !noalias !27844, !noundef !313
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i.thread unwind label %bb.k, !noalias !27844, !inline_history !27821

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.473.0..sroa_idx, i64 40, i1 false)
  br label %.body.i7

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i.thread: ; preds = %bb.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.473.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i)
  br label %.noexc10.i

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i: ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.473.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.774.0..sroa_idx, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.669, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false), !noalias !27845
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i)
  %.not.i.i.i14 = icmp eq i64 %.sroa.072.0.copyload, -3
  br i1 %.not.i.i.i14, label %bb.l, label %.noexc10.i

bb.l:                                             ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669)
  %i.aa = icmp eq ptr %i.v, %.sroa.0.sroa.4.0.copyload
  br i1 %i.aa, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1L_3map3MapINtNtNtB1P_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB41_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB1P_6result6ResultNtNtB1P_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEEB56_.exit.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i

.noexc10.i:                                       ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2p_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8x_5Break0E0B8x_E0B3u_.exit.i.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6202, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.669, i64 104, i1 false), !noalias !27846
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669)
  %.not.i.i8.i = icmp eq i64 %.sroa.072.0.copyload, -2
  br i1 %.not.i.i8.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1L_3map3MapINtNtNtB1P_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB41_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB1P_6result6ResultNtNtB1P_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEEB56_.exit.i, label %bb.m

bb.m:                                             ; preds = %.noexc10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.749.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6202, i64 104, i1 false), !noalias !27847
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6202)
  store i64 %.sroa.072.0.copyload, ptr %i.e, align 16, !noalias !27847
  %i.ab = icmp samesign ult i64 %i.u, 82351536043346213
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.g, align 8, !range !320, !alias.scope !27841, !noalias !27834, !noundef !313
  %i.ad = icmp eq i64 %i.u, %i.ac
  br i1 %i.ad, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i: ; preds = %bb.m
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.u, i64 noundef 1, i64 noundef 16, i64 noundef 112)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge unwind label %bb.n, !noalias !27840, !inline_history !27828

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27841, !noalias !27834
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge, %bb.m
  %i.ae = phi ptr [ %.pre, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i_crit_edge ], [ %i.t, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %i.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.af, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false)
  %i.ag = add nuw nsw i64 %i.u, 1                 ; 3 uses
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !27841, !noalias !27834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27847
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6202)
  %i.ah = icmp eq ptr %i.v, %.sroa.0.sroa.4.0.copyload
  br i1 %i.ah, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1L_3map3MapINtNtNtB1P_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB41_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB1P_6result6ResultNtNtB1P_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEEB56_.exit.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.lr.ph

bb.n:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE14select_to_plans9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3r_.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.e) #73
          to label %.body.i7 unwind label %bb.o, !noalias !27848, !inline_history !27828

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1A_17AsyncStreamReader4open00ENtNtBT_8schedule16BlockingScheduleEB1C_:bb.a
  %i.ds = call noundef i32 @close(i32 noundef %.val2.i.i111.i.i.i.i.i.i.i.i.i.i.i) #71, !noalias !28759 ; 0 uses
  %.val.i112.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !28756, !noalias !28722 ; 2 uses
  %i.dt = icmp eq i64 %.val.i112.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val1.i113.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28756, !noalias !28722, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i113.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i112.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !28760
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.split.thread.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pn71197.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i.i, %.split.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn69.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %i.v) #73, !noalias !28722
  br label %.body.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit104.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.q
  %.sroa.13.sroa.9.2.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.13.sroa.9.0.extract.trunc13.i.i.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.13.sroa.9.0.extract.trunc13.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.13.sroa.9.1.i.i.i.i.i.i.i.i.i, %bb.ar ], [ %.sroa.13.sroa.9.1.i.i.i.i.i.i.i.i.i, %bb.as ], [ %.sroa.13.sroa.9.0.extract.trunc.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit104.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.sroa.0.2.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.13.sroa.0.0.extract.trunc10.i.i.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.13.sroa.0.0.extract.trunc10.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.13.sroa.0.1.i.i.i.i.i.i.i.i.i, %bb.ar ], [ %.sroa.13.sroa.0.1.i.i.i.i.i.i.i.i.i, %bb.as ], [ %.sroa.13.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit104.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.229.0.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.ar ], [ undef, %bb.as ], [ %i.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit104.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.18.2.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.i.i.sroa.8.0.copyload29.i.i.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.5.i.i.sroa.8.0.copyload29.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.sroa.18.1.i.i.i.i.i.i.i.i.i, %bb.ar ], [ %.sroa.18.1.i.i.i.i.i.i.i.i.i, %bb.as ], [ %.sroa.026.i.i.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit104.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.1.i.i.i.i.i.i.i.i.i = phi i64 [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.ar ], [ -1, %bb.as ], [ %.sroa.026.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message7MessageNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutable13MutableBufferEEECsc85D0lJ81Z_16lance_datafusion.exit104.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !28722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !28717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !28717
  %i.du = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.du, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.sroa.9.3.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.13.sroa.9.4.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.13.sroa.9.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.13.sroa.0.3.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.13.sroa.0.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.229.1.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.au ], [ %.sroa.229.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.18.3.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.18.20.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.18.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.03.2.i.i.i.i.i.i.i.i.i = phi i64 [ -1, %bb.au ], [ %.sroa.03.1.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !28717
  br label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.j
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !28717
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28717 ; 2 uses
  %.sroa.810.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.sroa.13.sroa.9.4.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.810.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !28761 ; 2 uses
  %.sroa.18.20..sroa.810.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.18.20.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.18.20..sroa.810.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28761 ; 2 uses
  %.sroa.20.20..sroa.810.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.20.20.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.20.20..sroa.810.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28761
  store i64 %.sroa.20.20.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.20.i.i.i.i.i.i.i.i.i, align 8, !noalias !28761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !28717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !28717
  store i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28716, !noalias !28715
  %i.dv = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dv, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.d
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.dx = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dx, label %.body.i.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !28762
  br label %.body.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @348, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #72
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.bd, !noalias !28712

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.e
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.ay, %bb.aw, %bb.av, %bb.h, %.body.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dy, %bb.ay ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.av ], [ %i.dw, %bb.aw ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.body.i.i.i.i.i.i unwind label %bb.az, !noalias !28711

bb.az:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !28711
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i: ; preds = %bb.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.sroa.9.4.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.13.sroa.9.4.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.13.sroa.9.3.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.sroa.9.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.13.sroa.0.4.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.13.sroa.0.3.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.sroa.0.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.229.2.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.au ], [ %.sroa.229.1.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.229.0.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.18.4.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.18.20.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.18.3.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.18.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.075.0.copyload.i.i.i = phi i64 [ -1, %bb.au ], [ %.sroa.03.2.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBL_17AsyncStreamReader4open00EBN_.exit37.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.03.1.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5qKAdtC2BLj_9arrow_ipc6reader13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB1z_2fs4FileEEECsc85D0lJ81Z_16lance_datafusion.exit114.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %.sroa.075.0.copyload.i.i.i, ptr %i.ab, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.i.i.i.i.i.i.i.i.i, align 8, !noalias !28715 ; 2 uses
  store i64 %.sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.13.sroa.9.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %.sroa.13.sroa.9.4.i.i.i.i.i.i.i.i.i to i64
  %.sroa.13.sroa.9.0.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.13.sroa.9.0.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.13.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i32 %.sroa.13.sroa.0.4.i.i.i.i.i.i.i.i.i to i64
  %.sroa.13.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.13.sroa.9.0.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.13.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %.sroa.13.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %.sroa.18.4.i.i.i.i.i.i.i.i.i, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.20.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.0..sroa.20.i.i.i.i.i.0..sroa.20.i.i.i.i.0..sroa.20.i.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.0..sroa.20.i.i.0..sroa.20.i.0..sroa.20.i.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.20.i.i.i.i.i.i.i.i.i, align 8, !noalias !28715 ; 2 uses
  store i64 %.sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.0..sroa.20.i.i.i.i.i.0..sroa.20.i.i.i.i.0..sroa.20.i.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.0..sroa.20.i.i.0..sroa.20.i.0..sroa.20.i.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.026.i.i.sroa.8.i.i.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !28764
  %.sroa.229.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  store ptr %.sroa.229.2.i.i.i.i.i.i.i.i.i, ptr %.sroa.229.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !28764
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  store i8 0, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !28763, !noalias !28709
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 217
  store i8 0, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !28763, !noalias !28709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026.i.i.sroa.8.i.i.i.i.i.i.i.i.i)
  %i.ea = inttoptr i64 %.sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %i.eb = inttoptr i64 %.sroa.13.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.bd, !noalias !28712

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !28711
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.075.0.copyload.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bw, label %bb.ba

bb.ba:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !28709
  store i32 2, ptr %i.aa, align 8, !noalias !28709
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.aa)
          to label %bb.bg unwind label %bb.bb, !noalias !28709

bb.bb:                                            ; preds = %bb.ba
  %i.ec = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB2j_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(224) %i.ab) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.bc, !noalias !28709

bb.bc:                                            ; preds = %bb.bb
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !28709
  unreachable

bb.bd:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i, %bb.ax, %bb.c
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.bd, %bb.bb, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ee, %bb.bd ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.ec, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !28712
  store i32 2, ptr %i.f, align 8, !noalias !28712
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.f)
          to label %.body.i.i.i unwind label %bb.be, !noalias !28712

bb.be:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !28712
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !28712
  %i.eg = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.eh = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.eg)
          to label %.thread.i.i.i unwind label %bb.bf ; 2 uses

bb.bf:                                            ; preds = %.body.i.i.i
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.ej = extractvalue { ptr, ptr } %i.eh, 0
  %i.ek = extractvalue { ptr, ptr } %i.eh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !28709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !28709
  %cond.i.i.i = icmp eq i64 %.sroa.075.0.copyload.i.i.i, -3
  br i1 %cond.i.i.i, label %bb.bh, label %bb.bi, !prof !543

bb.bh:                                            ; preds = %bb.bg, %.thread.i.i.i
  %.sroa.8.098.i.i.i = phi ptr [ %i.ej, %.thread.i.i.i ], [ %i.ea, %bb.bg ] ; 2 uses
  %.sroa.10.097.i.i.i = phi ptr [ %i.ek, %.thread.i.i.i ], [ %i.eb, %bb.bg ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.098.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.097.i.i.i) ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.em = load i64, ptr %i.el, align 8, !range !341, !noundef !313
  %i.en = inttoptr i64 %i.em to ptr
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.12.sroa.5.sroa.5.i.i.i, i64 184, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.i.0..sroa.20.i.i.i.i.i.0..sroa.20.i.i.i.i.i.0..sroa.20.i.i.i.i.0..sroa.20.i.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.0..sroa.20.i.i.0..sroa.20.i.0..sroa.20.i.0..sroa.20.0..sroa.20.0..sroa.20.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bi ], [ undef, %bb.bh ]
  %.sroa.6.sroa.7.0.in.i.i.i = phi ptr [ %.sroa.18.4.i.i.i.i.i.i.i.i.i, %bb.bi ], [ %.sroa.10.097.i.i.i, %bb.bh ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %i.eb, %bb.bi ], [ %.sroa.8.098.i.i.i, %bb.bh ]
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %i.ea, %bb.bi ], [ %i.en, %bb.bh ]
  %.sroa.012.0.i.i.i = phi i64 [ %.sroa.075.0.copyload.i.i.i, %bb.bi ], [ -2, %bb.bh ]
  %.sroa.6.sroa.7.0.i.i.i = ptrtoint ptr %.sroa.6.sroa.7.0.in.i.i.i to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28765
  store i64 %.sroa.012.0.i.i.i, ptr %i.eo, align 8
  %.sroa.678.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.678.0..sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.sroa.5.i.i.i, i64 184, i1 false)
  store i32 1, ptr %i.e, align 8, !noalias !28765
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.e)
          to label %.thread102.i.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  %i.er = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.eq)
          to label %bb.bm unwind label %bb.bl     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

.thread102.i.i.i:                                 ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28765
  br label %bb.bx

bb.bm:                                            ; preds = %bb.bk
  %i.et = extractvalue { ptr, ptr } %i.er, 0      ; 4 uses
  %i.eu = extractvalue { ptr, ptr } %i.er, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %.not.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i, label %bb.bx, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ev = load ptr, ptr %i.eu, align 8, !invariant.load !313 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void %i.ev(ptr noundef nonnull %i.et)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.bx, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bp
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) %i.fa) #71
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bo
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.bq
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) %i.fg) #71
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ch, %bb.cg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bq
  %common.resume.op.i = phi { ptr, i32 } [ %i.fz, %bb.ch ], [ %i.fy, %bb.cg ], [ %i.fb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.fb, %bb.bq ]
  resume { ptr, i32 } %common.resume.op.i

bb.br:                                            ; preds = %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.c)
          to label %bb.bu unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  %i.fk = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.fj)
          to label %bb.bv unwind label %bb.bt     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.fm = extractvalue { ptr, ptr } %i.fk, 0
  %i.fn = extractvalue { ptr, ptr } %i.fk, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i: ; preds = %bb.bv, %bb.bu
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bu ], [ %i.fn, %bb.bv ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bu ], [ %i.fm, %bb.bv ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !341, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -2, ptr %i.fo, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cd

bb.bw:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !28709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.fp = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.fp, label %default.unreachable [
    i8 3, label %bb.by
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit
    i8 1, label %bb.ce
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i
  ]

bb.bx:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bp, %bb.bm, %.thread102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.cd

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.a)
          to label %bb.cb unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  %i.fs = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.fr)
          to label %bb.cc unwind label %bb.ca     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i

bb.cc:                                            ; preds = %bb.bz
  %i.fu = extractvalue { ptr, ptr } %i.fs, 0
  %i.fv = extractvalue { ptr, ptr } %i.fs, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i: ; preds = %bb.cc, %bb.cb
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.cb ], [ %i.fv, %bb.cc ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.cb ], [ %i.fu, %bb.cc ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.ah, align 8, !range !341, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -2, ptr %i.fw, align 8
  %.sroa.5.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.0.i4.i.i, ptr %.sroa.5.0..sroa_idx.i5.i.i, align 8
end_hunk_4
begin_hunk_5_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1A_17AsyncStreamReader4read00ENtNtBT_8schedule16BlockingScheduleEB1C_:bb.a
  %i.mo = extractelement <2 x i64> %i.me, i64 1   ; 2 uses
  switch i64 %.sroa.615.0.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn [
    i64 -2, label %bb.cp
    i64 -1, label %bb.co
  ]

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.thread111.i.i.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i.i.i
  %.sroa.16.1109.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 43, %.thread111.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.44.5.ph.i.i.i.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.14.1108.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mi, %.thread111.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.38.5.ph.i.i.i.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.9.1107.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775795, %.thread111.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.1924.5.ph.i.i.i.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.12.1106.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 43, %.thread111.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.31.5.ph.i.i.i.i.i.i.i.i.i.i.i, %.thread100.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.sroa.2.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm, %.thread94.i.i.i.i.i.i.i.i.i.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.cm
  %.sroa.14.0.copyload.i.i.i = phi i64 [ undef, %bb.co ], [ %i.mo, %bb.cn ], [ %i.mo, %bb.cm ], [ %.sroa.16.1109.ph.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0.copyload.i.i.i = phi i64 [ undef, %bb.co ], [ %i.mn, %bb.cn ], [ %i.mn, %bb.cm ], [ %.sroa.14.1108.ph.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.co ], [ %.sroa.38.3.i.i.i.i.i.i.i.i.i.i.i, %bb.cn ], [ %.sroa.38.3.i.i.i.i.i.i.i.i.i.i.i, %bb.cm ], [ %.sroa.12.1106.ph.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.co ], [ %.sroa.31.3.i.i.i.i.i.i.i.i.i.i.i, %bb.cn ], [ %.sroa.31.3.i.i.i.i.i.i.i.i.i.i.i, %bb.cm ], [ %.sroa.9.1107.ph.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.076.0.copyload.i.i.i = phi i64 [ -2, %bb.co ], [ %.sroa.615.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cn ], [ -1, %bb.cm ], [ -1, %.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  br i1 %i.by, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mp = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !29015
  %i.mq = and i64 %i.mp, 9223372036854775807
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr, !prof !319

bb.cr:                                            ; preds = %bb.cq
  %i.ms = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc19.i.i.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !29015

.noexc19.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cr
  br i1 %i.ms, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.bt monotonic, align 4, !noalias !29015
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cs, %.noexc19.i.i.i.i.i.i.i.i.i.i, %bb.cq, %bb.cp
  %i.mt = atomicrmw xchg ptr %i.bh, i32 0 release, align 4, !noalias !29015
  %i.mu = icmp eq i32 %i.mt, 2
  br i1 %i.mu, label %bb.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBK_2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i, !prof !314

bb.ct:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bh)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBK_2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !29015

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBK_2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mv = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !29117
  %i.mw = icmp eq i64 %i.mv, 1
  br i1 %i.mw, label %bb.cu, label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBK_2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBP_2io8buffered9bufreader9BufReaderNtNtBP_2fs4FileEEEE9drop_slowCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ar)
          to label %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i unwind label %bb.da, !noalias !29010

bb.cv:                                            ; preds = %.body14.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29015
  unreachable

bb.cw:                                            ; preds = %bb.d
  %i.my = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.mz = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !29118
  %i.na = icmp eq i64 %i.mz, 1
  br i1 %i.na, label %bb.cx, label %.body.i.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBP_2io8buffered9bufreader9BufReaderNtNtBP_2fs4FileEEEE9drop_slowCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.as)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cy, !noalias !29014

bb.cy:                                            ; preds = %bb.cx
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29014
  unreachable

bb.cz:                                            ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @348, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #72
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.df, !noalias !29011

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cu, %bb.e
  %i.nc = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.da, %bb.cx, %bb.cw, %bb.i, %.body.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.nc, %bb.da ], [ %i.my, %bb.cw ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.my, %bb.cx ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.body.i.i.i.i.i.i unwind label %bb.db, !noalias !29010

bb.db:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29010
  unreachable

_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i: ; preds = %bb.cu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBK_2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEEEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !29014
  store i64 %.sroa.076.0.copyload.i.i.i, ptr %i.av, align 8, !alias.scope !29119, !noalias !29008
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29119, !noalias !29008
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29119, !noalias !29008
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %.sroa.13.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29119, !noalias !29008
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %.sroa.14.0.copyload.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29119, !noalias !29008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !29014
  %i.ne = inttoptr i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %i.nf = inttoptr i64 %.sroa.8.0.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.df, !noalias !29011

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !29010
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.076.0.copyload.i.i.i, -3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dx, label %bb.dc

bb.dc:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !29008
  store i32 2, ptr %i.au, align 8, !noalias !29008
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.au)
          to label %bb.di unwind label %bb.dd, !noalias !29008

bb.dd:                                            ; preds = %bb.dc
  %i.ng = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(40) %i.av) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.de, !noalias !29008

bb.de:                                            ; preds = %bb.dd
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29008
  unreachable

bb.df:                                            ; preds = %_RNCNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleE4poll0B1O_.exit.i.i.i.i.i.i.i, %bb.cz, %bb.c
  %i.ni = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.df, %bb.dd, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ni, %bb.df ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.dd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29011
  store i32 2, ptr %i.f, align 8, !noalias !29011
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.f)
          to label %.body.i.i.i unwind label %bb.dg, !noalias !29011

bb.dg:                                            ; preds = %.body.i.i.i.i.i.i
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29011
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29011
  %i.nk = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.nl = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.nk)
          to label %.thread.i.i.i unwind label %bb.dh ; 2 uses

bb.dh:                                            ; preds = %.body.i.i.i
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.nn = extractvalue { ptr, ptr } %i.nl, 0
  %i.no = extractvalue { ptr, ptr } %i.nl, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.no) ]
  br label %bb.dj

bb.di:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !29008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !29008
  %cond.i.i.i = icmp eq i64 %.sroa.076.0.copyload.i.i.i, -4
  br i1 %cond.i.i.i, label %bb.dj, label %bb.dk, !prof !543

bb.dj:                                            ; preds = %bb.di, %.thread.i.i.i
  %.sroa.8.099.i.i.i = phi ptr [ %i.nn, %.thread.i.i.i ], [ %i.ne, %bb.di ] ; 2 uses
  %.sroa.10.098.i.i.i = phi ptr [ %i.no, %.thread.i.i.i ], [ %i.nf, %bb.di ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.099.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.098.i.i.i) ]
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nq = load i64, ptr %i.np, align 8, !range !341, !noundef !313
  %i.nr = ptrtoint ptr %.sroa.10.098.i.i.i to i64
  %i.ns = inttoptr i64 %i.nq to ptr
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.sroa.6.sroa.7.0.i.i.i = phi i64 [ %i.nr, %bb.dj ], [ %.sroa.13.0.copyload.i.i.i, %bb.di ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.8.099.i.i.i, %bb.dj ], [ %i.nf, %bb.di ]
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %i.ns, %bb.dj ], [ %i.ne, %bb.di ]
  %.sroa.7.0.i.i.i = phi i64 [ undef, %bb.dj ], [ %.sroa.14.0.copyload.i.i.i, %bb.di ]
  %.sroa.012.0.i.i.i = phi i64 [ -3, %bb.dj ], [ %.sroa.076.0.copyload.i.i.i, %bb.di ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !29120
  store i64 %.sroa.012.0.i.i.i, ptr %i.nt, align 8
  %.sroa.678.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.678.0..sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.6.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.e, align 8, !noalias !29120
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.e)
          to label %.thread103.i.i.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  %i.nw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.nv)
          to label %bb.dn unwind label %bb.dm     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

.thread103.i.i.i:                                 ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29120
  br label %bb.ed

bb.dn:                                            ; preds = %bb.dl
  %i.ny = extractvalue { ptr, ptr } %i.nw, 0      ; 4 uses
  %i.nz = extractvalue { ptr, ptr } %i.nw, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nz) ]
  %.not.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i, label %bb.ed, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.oa = load ptr, ptr %i.nz, align 8, !invariant.load !313 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void %i.oa(ptr noundef nonnull %i.ny)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %bb.ed, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.dq
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ny, i64 noundef %i.oc, i64 noundef range(i64 1, -9223372036854775807) %i.of) #71
  br label %bb.ed

bb.dr:                                            ; preds = %bb.dp
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 0
  br i1 %i.oj, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.dr
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ny, i64 noundef %i.oi, i64 noundef range(i64 1, -9223372036854775807) %i.ol) #71
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.eh, %bb.eg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.dr
  %common.resume.op.i = phi { ptr, i32 } [ %i.pe, %bb.eh ], [ %i.pd, %bb.eg ], [ %i.og, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.og, %bb.dr ]
  resume { ptr, i32 } %common.resume.op.i

bb.ds:                                            ; preds = %bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.om, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.dv unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  %i.op = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.oo)
          to label %bb.dw unwind label %bb.du     ; 2 uses

bb.du:                                            ; preds = %bb.dt
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.dv:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i

bb.dw:                                            ; preds = %bb.dt
  %i.or = extractvalue { ptr, ptr } %i.op, 0
  %i.os = extractvalue { ptr, ptr } %i.op, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.os) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i: ; preds = %bb.dw, %bb.dv
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.dv ], [ %i.os, %bb.dw ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.dv ], [ %i.or, %bb.dw ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !341, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -3, ptr %i.ot, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.om, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ed

bb.dx:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !29008
  %i.ou = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.ou, label %default.unreachable [
    i8 3, label %bb.dy
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4read00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit
    i8 1, label %bb.ee
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4read00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i
  ]

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.eb unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  %i.ox = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ow)
          to label %bb.ec unwind label %bb.ea     ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i

bb.ec:                                            ; preds = %bb.dz
  %i.oz = extractvalue { ptr, ptr } %i.ox, 0
  %i.pa = extractvalue { ptr, ptr } %i.ox, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pa) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i: ; preds = %bb.ec, %bb.eb
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.eb ], [ %i.pa, %bb.ec ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.eb ], [ %i.oz, %bb.ec ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.bb, align 8, !range !341, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -3, ptr %i.pb, align 8
  %.sroa.5.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.0.i4.i.i, ptr %.sroa.5.0..sroa_idx.i5.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4read00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ed

bb.ed:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4read00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.dq, %bb.dn, %.thread103.i.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4read00ENtNtB19_8schedule16BlockingScheduleE8completeB1S_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4read00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit

end_hunk_5
begin_hunk_6_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1x_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3A_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4L_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtBT_8schedule16BlockingScheduleEB1B_:bb.a
bb.h:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtBO_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1Z_6marker4SendEL_ENtNtNtNtB1Z_4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.s, align 8, !invariant.load !313, !alias.scope !29155, !noalias !29154 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.x(ptr noundef nonnull %i.q)
          to label %bb.j unwind label %bb.k, !noalias !29156

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !320, !invariant.load !313, !alias.scope !29155, !noalias !29154 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.s, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !338, !invariant.load !313, !alias.scope !29155, !noalias !29154
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #71, !noalias !29156
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !320, !invariant.load !313, !alias.scope !29155, !noalias !29154 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.body.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !338, !invariant.load !313, !alias.scope !29155, !noalias !29154
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #71, !noalias !29156
  br label %.body.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB1d_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EECsc85D0lJ81Z_16lance_datafusion(ptr nonnull %i.q, ptr nonnull readonly align 8 dereferenceable(64) %i.s) #73
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !29159

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29156
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtBI_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2K_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0EBM_(ptr nonnull %i.q, ptr nonnull %i.s) #73
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !29154

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29154
  unreachable

bb.p:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @348, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #72
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.z, !noalias !29151

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.q, %bb.n, %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.q ], [ %i.al, %bb.n ], [ %i.aj, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.i.i.i.i.i.i unwind label %bb.r, !noalias !29150

bb.r:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29150
  unreachable

bb.s:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.g
  %.sroa.8.0.copyload.i.i.i = phi ptr [ undef, %bb.j ], [ undef, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29156
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !29160, !noalias !29148
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29160, !noalias !29148
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.w, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29160, !noalias !29148
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !29161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.z, !noalias !29151

.noexc2.i.i.i.i.i.i:                              ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !29148
  store i32 2, ptr %i.f, align 8, !noalias !29148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29162
  %i.ap = load i64, ptr %i.m, align 8, !range !341, !noalias !29162, !noundef !313
  %i.aq = invoke noundef i64 @_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.ap)
          to label %bb.t unwind label %bb.w, !noalias !29162

bb.t:                                             ; preds = %.noexc2.i.i.i.i.i.i
  store i64 %i.aq, ptr %i.c, align 8, !noalias !29162
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2b_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4e_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0EEEB2f_(ptr noalias noundef align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core11TaskIdGuardECsc85D0lJ81Z_16lance_datafusion.exit3.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !29162

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !29148
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.v, !noalias !29162

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core11TaskIdGuardECsc85D0lJ81Z_16lance_datafusion.exit3.i.i.i.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !29148
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %._crit_edge.i.i.i unwind label %bb.x, !noalias !29148

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29148
  unreachable

bb.w:                                             ; preds = %.noexc2.i.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2b_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4e_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0EEEB2f_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f) #73
          to label %.body.i.i.i.i.i.i.i unwind label %bb.v, !noalias !29148

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core11TaskIdGuardECsc85D0lJ81Z_16lance_datafusion.exit3.i.i.i.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.x, %bb.w, %bb.u
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.au, %bb.x ], [ %i.ar, %bb.u ], [ %i.at, %bb.w ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB1A_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EB2G_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.y, !noalias !29148

bb.y:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29148
  unreachable

bb.z:                                             ; preds = %bb.s, %bb.p, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.z, %.body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.z ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNCNvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBM_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2w_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4z_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB1S_8schedule16BlockingScheduleEEB2A_(ptr nonnull align 8 %i.i) #73
          to label %.body.i.i.i unwind label %bb.aa, !noalias !29151

bb.aa:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29151
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.az = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ay)
          to label %.thread.i.i.i unwind label %bb.ab ; 2 uses

bb.ab:                                            ; preds = %.body.i.i.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

._crit_edge.i.i.i:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core11TaskIdGuardECsc85D0lJ81Z_16lance_datafusion.exit3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29148
  %.sroa.13.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bb = load <2 x ptr>, ptr %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29148
  %.pre.i.i.i = load i64, ptr %i.m, align 8, !range !341, !noalias !29163
  br label %bb.ac

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.az, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !range !341, !noundef !313 ; 2 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.bc, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.thread.i.i.i, %._crit_edge.i.i.i
  %i.bi = phi i64 [ %i.bf, %.thread.i.i.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.6.sroa.0.0.i.i.i = phi i64 [ %i.bf, %.thread.i.i.i ], [ %.sroa.13.sroa.0.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.012.sroa.5.0.i.i.i = phi ptr [ undef, %.thread.i.i.i ], [ %.sroa.8.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.012.sroa.0.0.i.i.i = phi ptr [ undef, %.thread.i.i.i ], [ %i.q, %._crit_edge.i.i.i ]
  %.sroa.716.0.i.i.i = phi i64 [ undef, %.thread.i.i.i ], [ %.sroa.14.0.copyload.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.5.0.i.i.i = phi i64 [ -3, %.thread.i.i.i ], [ %i.w, %._crit_edge.i.i.i ]
  %i.bj = phi <2 x ptr> [ %i.bh, %.thread.i.i.i ], [ %i.bb, %._crit_edge.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29164
  store ptr %.sroa.012.sroa.0.0.i.i.i, ptr %i.bk, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.012.sroa.5.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x ptr> %i.bj, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.716.0.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.b, align 8, !noalias !29164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29163
  %i.bl = invoke noundef i64 @_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.bi)
          to label %bb.ad unwind label %bb.ag, !noalias !29163

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.bl, ptr %i.a, align 8, !noalias !29163
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2b_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4e_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0EEEB2f_(ptr noalias noundef align 8 dereferenceable(64) %i.j)
          to label %_RNvXsl_NtNtCscI6d9CVNmLh_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2W_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB9_6result6ResultNtB4Z_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB9_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB30_.exit.i.i.i.i unwind label %bb.ae, !noalias !29163

bb.ae:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !29164
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body75.i.i.i unwind label %bb.af, !noalias !29163

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29164
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2b_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4e_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0EEEB2f_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #73
          to label %.body75.i.i.i unwind label %bb.af, !noalias !29164

_RNvXsl_NtNtCscI6d9CVNmLh_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2W_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB9_6result6ResultNtB4Z_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB9_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB30_.exit.i.i.i.i: ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !29164
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread123.i.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %_RNvXsl_NtNtCscI6d9CVNmLh_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2W_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB9_6result6ResultNtB4Z_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB9_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB30_.exit.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body75.i.i.i

.body75.i.i.i:                                    ; preds = %bb.ah, %bb.ag, %bb.ae
  %eh.lpad-body76.i.i.i = phi { ptr, i32 } [ %i.bp, %bb.ah ], [ %i.bm, %bb.ae ], [ %i.bo, %bb.ag ]
  %i.bq = extractvalue { ptr, i32 } %eh.lpad-body76.i.i.i, 0
  %i.br = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bq)
          to label %bb.aj unwind label %bb.ai     ; 2 uses

bb.ai:                                            ; preds = %.body75.i.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

.thread123.i.i.i:                                 ; preds = %_RNvXsl_NtNtCscI6d9CVNmLh_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2W_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB9_6result6ResultNtB4Z_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB9_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB30_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29164
  br label %bb.ao

bb.aj:                                            ; preds = %.body75.i.i.i
  %i.bt = extractvalue { ptr, ptr } %i.br, 0      ; 4 uses
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !313 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void %i.bv(ptr noundef nonnull %i.bt)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.ao, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #71
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %common.resume.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.am
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) %i.cg) #71
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ap, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.am
  %common.resume.op.i = phi { ptr, i32 } [ %i.ci, %bb.ap ], [ %i.cb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.cb, %bb.am ]
  resume { ptr, i32 } %common.resume.op.i

bb.an:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1J_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3M_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4X_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB15_8schedule16BlockingScheduleEB1N_(ptr noundef nonnull align 8 %i.ch)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.al, %.thread123.i.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE8completeB1R_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE4pollB1R_.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1R_.exit.i: ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2a_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4d_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB1w_8schedule16BlockingScheduleEEB2e_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2K_18BackgroundIteratorIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4i_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB25_8schedule16BlockingScheduleEEEB2O_.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1R_.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #71
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2K_18BackgroundIteratorIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4i_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB25_8schedule16BlockingScheduleEEEB2O_.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1R_.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #71
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE4pollB1R_.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1N_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3Q_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB51_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB19_8schedule16BlockingScheduleE4pollB1R_.exit: ; preds = %bb.a, %bb.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2K_18BackgroundIteratorIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4i_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB25_8schedule16BlockingScheduleEEEB2O_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1D_17AsyncStreamReader4open00ENtNtBW_8schedule16BlockingScheduleEB1F_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2d_17AsyncStreamReader4open00ENtNtB1w_8schedule16BlockingScheduleEEB2f_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1D_17AsyncStreamReader4read00ENtNtBW_8schedule16BlockingScheduleEB1F_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2d_17AsyncStreamReader4read00ENtNtB1w_8schedule16BlockingScheduleEEB2f_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4read00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #71
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4read00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #71
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw7deallocINtNtNtB6_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB1A_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3D_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4O_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtBW_8schedule16BlockingScheduleEB1E_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2a_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4d_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB1w_8schedule16BlockingScheduleEEB2e_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2K_18BackgroundIteratorIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4i_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB25_8schedule16BlockingScheduleEEEB2O_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #71
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB2K_18BackgroundIteratorIBC_DNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4i_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next0ENtNtB25_8schedule16BlockingScheduleEEEB2O_.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #71
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw8scheduleNtNtNtB6_8blocking8schedule16BlockingScheduleECsc85D0lJ81Z_16lance_datafusion(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !313, !align !322, !noundef !313
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !313
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  tail call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1E_17AsyncStreamReader4open00ENtNtBX_8schedule16BlockingScheduleEB1G_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 8 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE8shutdownB1S_.exit

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2d_17AsyncStreamReader4open00ENtNtB1w_8schedule16BlockingScheduleEEB2f_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  resume { ptr, i32 } %i.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE8shutdownB1S_.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.k = extractvalue { ptr, ptr } %i.i, 0
  %i.l = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.h ], [ %i.l, %bb.i ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.h ], [ %i.k, %bb.i ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !341, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -2, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.b)
end_hunk_6
begin_hunk_7_@_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion:bb.a
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx126
  %i.no = icmp eq i64 %i.nm, 0
  br i1 %i.no, label %_RINvXs2V_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit26, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.af, %.lr.ph104
  %.sroa.0.0.i.i24103 = phi ptr [ %i.np, %.lr.ph104 ], [ %i.nk, %bb.af ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i24103, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i24103, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32458, !inline_history !32123
  %i.nq = icmp eq ptr %i.np, %i.nn
  br i1 %i.nq, label %_RINvXs2V_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit26, label %.lr.ph104

_RINvXs2V_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit26: ; preds = %.lr.ph104, %bb.af
  %i.nr = getelementptr inbounds nuw i8, ptr %.tr, i64 73
  %i.ns = load i8, ptr %i.nr, align 1, !range !548, !alias.scope !32457, !noundef !313
  %i.nt = zext nneg i8 %i.ns to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !32460
  store i64 %i.nt, ptr %i.ah, align 8, !noalias !32460
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !32460
  %i.nu = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %.val.i6 = load i8, ptr %i.nu, align 8, !range !325, !alias.scope !32457, !noundef !313
  %i.nv = zext nneg i8 %.val.i6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !32461
  store i64 %i.nv, ptr %i.ai, align 8, !noalias !32461
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !32461
  br label %common.ret

bb.ag:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32462)
  %i.nw = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !32462, !nonnull !313, !noundef !313
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  tail call fastcc void @_RINvXsP_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ny, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32462, !inline_history !76
  %i.nz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !alias.scope !32462, !nonnull !313, !noundef !313 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !32462, !noundef !313 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !32463
  store i64 %i.oc, ptr %i.af, align 8, !noalias !32463
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8), !noalias !32462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !32463
  %.idx125 = mul nuw nsw i64 %i.oc, 112
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.idx125
  %i.oe = icmp eq i64 %i.oc, 0
  br i1 %i.oe, label %common.ret, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ag, %.lr.ph102
  %.sroa.0.0.i27101 = phi ptr [ %i.of, %.lr.ph102 ], [ %i.oa, %bb.ag ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i27101, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i27101, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32462, !inline_history !32140
  %i.og = icmp eq ptr %i.of, %i.od
  br i1 %i.og, label %common.ret, label %.lr.ph102

bb.ah:                                            ; preds = %tailrecurse
  %i.oh = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.oi = load i64, ptr %i.oh, align 8, !range !316, !noundef !313
  %i.oj = icmp ne i64 %i.oi, -1                   ; 2 uses
  %i.ok = zext i1 %i.oj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !32464
  store i64 %i.ok, ptr %i.cd, align 8, !noalias !32464
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !32464
  br i1 %i.oj, label %bb.bd, label %bb.be

bb.ai:                                            ; preds = %tailrecurse
  %i.ol = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32465)
  %i.om = load i64, ptr %i.ol, align 8, !range !337, !alias.scope !32465, !noundef !313 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32466
  store i64 %i.om, ptr %i.ab, align 8, !noalias !32466
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8), !noalias !32465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32466
  %i.on = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.oo = load ptr, ptr %i.on, align 8, !alias.scope !32465, !nonnull !313, !noundef !313 ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.oq = load i64, ptr %i.op, align 8, !alias.scope !32465, !noundef !313 ; 8 uses
  switch i64 %i.om, label %default.unreachable389 [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

default.unreachable389:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !32467
  store i64 %i.oq, ptr %i.ac, align 8, !noalias !32467
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8), !noalias !32465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !32467
  %.idx124 = mul nuw nsw i64 %i.oq, 112
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.idx124
  %i.os = icmp eq i64 %i.oq, 0
  br i1 %i.os, label %common.ret, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.aj, %.lr.ph100
  %.sroa.0.0.i3199 = phi ptr [ %i.ot, %.lr.ph100 ], [ %i.oo, %bb.aj ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3199, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i3199, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32465, !inline_history !32155
  %i.ou = icmp eq ptr %i.ot, %i.or
  br i1 %i.ou, label %common.ret, label %.lr.ph100

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !32468
  store i64 %i.oq, ptr %i.ad, align 8, !noalias !32468
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8), !noalias !32465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !32468
  %.idx123 = mul nuw nsw i64 %i.oq, 112
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.idx123
  %i.ow = icmp eq i64 %i.oq, 0
  br i1 %i.ow, label %common.ret, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.ak, %.lr.ph98
  %.sroa.0.0.i2997 = phi ptr [ %i.ox, %.lr.ph98 ], [ %i.oo, %bb.ak ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2997, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i2997, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32465, !inline_history !32155
  %i.oy = icmp eq ptr %i.ox, %i.ov
  br i1 %i.oy, label %common.ret, label %.lr.ph98

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32469
  store i64 %i.oq, ptr %i.ae, align 8, !noalias !32469
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8), !noalias !32465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !32469
  tail call fastcc void @_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.oo, i64 noundef %i.oq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32465, !inline_history !32164
  br label %common.ret

bb.am:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32470)
  %i.oz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !alias.scope !32470, !nonnull !313, !noundef !313
  %i.pb = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.pc = load i64, ptr %i.pb, align 8, !alias.scope !32470, !noundef !313
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pa, i64 noundef %i.pc), !noalias !32470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !32471
  store i8 -1, ptr %i.cc, align 1, !noalias !32471
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef 1), !noalias !32472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !32471
  %i.pd = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !alias.scope !32470, !noundef !313 ; 2 uses
  %i.pf = icmp ne ptr %i.pe, null                 ; 2 uses
  %i.pg = zext i1 %i.pf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !32473
  store i64 %i.pg, ptr %i.cb, align 8, !noalias !32473
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef 8), !noalias !32470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !32473
  br i1 %i.pf, label %bb.an, label %common.ret

bb.an:                                            ; preds = %bb.am
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  tail call fastcc void @_RINvXs3_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5FieldNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ph, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32470
  br label %common.ret

bb.ao:                                            ; preds = %tailrecurse
  %i.pi = getelementptr inbounds nuw i8, ptr %.tr, i64 104
  %i.pj = load ptr, ptr %i.pi, align 8, !nonnull !313, !noundef !313
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  tail call fastcc void @_RINvXs3_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5FieldNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.pk, ptr noalias noundef align 8 dereferenceable(72) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32474)
  %i.pl = icmp ne i64 %i.ck, -1                   ; 2 uses
  %i.pm = zext i1 %i.pl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !32475
  store i64 %i.pm, ptr %i.ca, align 8, !noalias !32475
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef 8), !noalias !32474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !32475
  br i1 %i.pl, label %bb.ap, label %_RINvXsb_NtCs2bHstFFhpHt_17datafusion_common6columnNtB6_6ColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit7

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsb_NtCs2bHstFFhpHt_17datafusion_common6columnNtB6_6ColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit7

_RINvXsb_NtCs2bHstFFhpHt_17datafusion_common6columnNtB6_6ColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit7: ; preds = %bb.ao, %bb.ap
  %i.pn = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.po = load ptr, ptr %i.pn, align 8, !alias.scope !32474, !nonnull !313, !noundef !313
  %i.pp = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.pq = load i64, ptr %i.pp, align 8, !alias.scope !32474, !noundef !313
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.po, i64 noundef %i.pq), !noalias !32474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !32476
  store i8 -1, ptr %i.bz, align 1, !noalias !32476
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef 1), !noalias !32477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !32476
  br label %common.ret

bb.aq:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32478)
  %i.pr = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !alias.scope !32478, !nonnull !313, !noundef !313 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %.val.i8 = load ptr, ptr %i.pt, align 8, !noalias !32479 ; 2 uses
  %i.pu = getelementptr i8, ptr %i.ps, i64 24
  %.val1.i9 = load ptr, ptr %i.pu, align 8, !noalias !32479 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !32480
  store ptr %1, ptr %i.z, align 8, !noalias !32480
  %i.pv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @250, ptr %i.pv, align 8, !noalias !32480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !32481
  store i64 3511740339093709383, ptr %i.y, align 8, !noalias !32481
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8), !noalias !32482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !32481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i8) ], !noalias !32478
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i9) ], !noalias !32478
  %i.pw = getelementptr inbounds nuw i8, ptr %.val1.i9, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !range !338, !invariant.load !313, !noalias !32483
  %i.py = add nsw i64 %i.px, -1
  %i.pz = and i64 %i.py, -16
  %i.qa = getelementptr inbounds nuw i8, ptr %.val.i8, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = getelementptr i8, ptr %.val1.i9, i64 48
  %.val.i.i.i = load ptr, ptr %i.qc, align 8, !noalias !32483
  call void %.val.i.i.i(ptr noundef nonnull %i.qb, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @251), !noalias !32478, !inline_history !32202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32480
  %i.qd = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !alias.scope !32478, !nonnull !313, !noundef !313 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.qg = load i64, ptr %i.qf, align 8, !alias.scope !32478, !noundef !313 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !32484
  store i64 %i.qg, ptr %i.aa, align 8, !noalias !32484
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8), !noalias !32478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32484
  %.idx = mul nuw nsw i64 %i.qg, 112
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.idx
  %i.qi = icmp eq i64 %i.qg, 0
  br i1 %i.qi, label %common.ret, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.aq, %.lr.ph96
  %.sroa.0.0.i3395 = phi ptr [ %i.qj, %.lr.ph96 ], [ %i.qe, %bb.aq ] ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3395, i64 112 ; 2 uses
  call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i3395, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32478, !inline_history !32207
  %i.qk = icmp eq ptr %i.qj, %i.qh
  br i1 %i.qk, label %common.ret, label %.lr.ph96

bb.ar:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32485)
  %i.ql = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.qm = load ptr, ptr %i.ql, align 16, !alias.scope !32485, !nonnull !313, !noundef !313 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.qo = load i64, ptr %i.qn, align 8, !alias.scope !32485, !noundef !313 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !32486
  store i64 %i.qo, ptr %i.w, align 8, !noalias !32486
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8), !noalias !32485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !32486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32487)
  %.idx.i35 = mul nuw nsw i64 %i.qo, 24
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 %.idx.i35
  %i.qq = icmp eq i64 %i.qo, 0
  br i1 %i.qq, label %tailrecurse.backedge.sink.split, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.ar, %.lr.ph.i36
  %.sroa.0.04.i37 = phi ptr [ %i.qr, %.lr.ph.i36 ], [ %i.qm, %bb.ar ] ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i37, i64 24 ; 2 uses
  %i.qs = getelementptr i8, ptr %.sroa.0.04.i37, i64 8
  %.sroa.0.0.val.i38 = load ptr, ptr %i.qs, align 8, !alias.scope !32487, !noalias !32485, !nonnull !313, !noundef !313
  %i.qt = getelementptr i8, ptr %.sroa.0.04.i37, i64 16
  %.sroa.0.0.val3.i39 = load i64, ptr %i.qt, align 8, !alias.scope !32487, !noalias !32485, !noundef !313
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i38, i64 noundef %.sroa.0.0.val3.i39), !noalias !32488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !32489
  store i8 -1, ptr %i.x, align 1, !noalias !32489
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1), !noalias !32490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32489
  %i.qu = icmp eq ptr %i.qr, %i.qp
  br i1 %i.qu, label %tailrecurse.backedge.sink.split, label %.lr.ph.i36

bb.as:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32491)
  %i.qv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !alias.scope !32491, !nonnull !313, !noundef !313
  %i.qx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !32491, !noundef !313
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qw, i64 noundef %i.qy), !noalias !32491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !32492
  store i8 -1, ptr %i.by, align 1, !noalias !32492
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef 1), !noalias !32493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !32492
  %i.qz = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.ra = load ptr, ptr %i.qz, align 8, !alias.scope !32491, !noundef !313 ; 2 uses
  %i.rb = icmp ne ptr %i.ra, null                 ; 2 uses
  %i.rc = zext i1 %i.rb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !32494
  store i64 %i.rc, ptr %i.bx, align 8, !noalias !32494
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef 8), !noalias !32491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !32494
  br i1 %i.rb, label %bb.at, label %common.ret

bb.at:                                            ; preds = %bb.as
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  tail call fastcc void @_RINvXs3_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5FieldNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.rd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !32491
  br label %common.ret

bb.au:                                            ; preds = %bb.h
  %i.re = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32495)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.rg = load i64, ptr %i.rf, align 8, !alias.scope !32495, !noundef !313 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32496
  store i64 %i.rg, ptr %i.m, align 8, !noalias !32496
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 8), !noalias !32495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32496
  %i.rh = load ptr, ptr %i.re, align 8, !alias.scope !32495, !noundef !313 ; 2 uses
  %.not.i = icmp ne ptr %i.rh, null
  %i.ri = icmp ne i64 %i.rg, 0
  %.not63.i = and i1 %i.ri, %.not.i
  br i1 %.not63.i, label %.lr.ph.preheader.i, label %common.ret

.lr.ph.preheader.i:                               ; preds = %bb.au
  %i.rj = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !32495
  %i.rl = ptrtoint ptr %i.rh to i64
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph.preheader.i, %.loopexit.i
  %.sroa.5.04055.i = phi ptr [ %.sroa.07.0.i.i.i.i, %.loopexit.i ], [ null, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.14.054.i = phi i64 [ %.sroa.78.0.i.i.i.i, %.loopexit.i ], [ %i.rk, %.lr.ph.preheader.i ] ; 6 uses
  %.sroa.22.053.i = phi i64 [ %i.rm, %.loopexit.i ], [ %i.rg, %.lr.ph.preheader.i ]
  %.sroa.9.052.i = phi i64 [ 0, %.loopexit.i ], [ %i.rl, %.lr.ph.preheader.i ] ; 2 uses
  %i.rm = add i64 %.sroa.22.053.i, -1             ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.04055.i, null
  br i1 %.not.i.i.i, label %bb.aw, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.rn = inttoptr i64 %.sroa.9.052.i to ptr      ; 3 uses
  %i.ro = icmp eq i64 %.sroa.14.054.i, 0
  br i1 %i.ro, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aw
  %xtraiter = and i64 %.sroa.14.054.i, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.013.017.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.rn, %.lr.ph.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.prol = phi i64 [ %i.rq, %.lr.ph.i.i.i.prol ], [ %.sroa.14.054.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.prol, i64 544
  %i.rq = add i64 %.sroa.011.016.i.i.i.prol, -1   ; 2 uses
  %.sroa.013.0.i.i.i.prol = load ptr, ptr %i.rp, align 8, !noalias !32497, !nonnull !313, !noundef !313 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !32249

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.013.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.013.017.i.i.i.unr = phi ptr [ %i.rn, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.011.016.i.i.i.unr = phi i64 [ %.sroa.14.054.i, %.lr.ph.i.i.i.preheader ], [ %i.rq, %.lr.ph.i.i.i.prol ]
  %i.rr = icmp ult i64 %.sroa.14.054.i, 8
  br i1 %i.rr, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.013.017.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ], [ %.sroa.013.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i = phi i64 [ %i.sa, %.lr.ph.i.i.i ], [ %.sroa.011.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i, i64 544
  %.sroa.013.0.i.i.i = load ptr, ptr %i.rs, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i, i64 544
  %.sroa.013.0.i.i.i.1 = load ptr, ptr %i.rt, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.1, i64 544
  %.sroa.013.0.i.i.i.2 = load ptr, ptr %i.ru, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.3 = load ptr, ptr %i.rv, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.4 = load ptr, ptr %i.rw, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.5 = load ptr, ptr %i.rx, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.6 = load ptr, ptr %i.ry, align 8, !noalias !32497, !nonnull !313, !noundef !313
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.6, i64 544
  %i.sa = add i64 %.sroa.011.016.i.i.i, -8        ; 2 uses
  %.sroa.013.0.i.i.i.7 = load ptr, ptr %i.rz, align 8, !noalias !32497, !nonnull !313, !noundef !313 ; 2 uses
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %.lr.ph.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.aw, %bb.av
  %.sroa.59.0.copyload.i.i.i = phi i64 [ %.sroa.14.054.i, %bb.av ], [ 0, %bb.aw ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i = phi i64 [ %.sroa.9.052.i, %bb.av ], [ 0, %bb.aw ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i = phi ptr [ %.sroa.5.04055.i, %bb.av ], [ %i.rn, %bb.aw ], [ %.sroa.013.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ] ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i, i64 538
  %i.sd = load i16, ptr %i.sc, align 2, !noalias !32498, !noundef !313
  %i.se = zext i16 %i.sd to i64
  %i.sf = icmp ult i64 %.sroa.59.0.copyload.i.i.i, %i.se
  br i1 %i.sf, label %bb.az, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.ax
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.sg, %bb.ax ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.si, %bb.ax ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringB1J_E10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  %i.sg = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !32499, !noundef !313 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.ax
  %i.sh = zext i16 %i.sk to i64
  br label %bb.az

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.si = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 536
  %i.sk = load i16, ptr %i.sj, align 8, !noalias !32499 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 538
  %i.sm = load i16, ptr %i.sl, align 2, !noalias !32498, !noundef !313
  %i.sn = icmp ult i16 %i.sk, %i.sm
  br i1 %i.sn, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #72
end_hunk_7
begin_hunk_8_@_RINvXszh_NtCs40MM8ukkVQd_9sqlparser3astNtB7_20ShowStatementOptionsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion:bb.a
  store i64 %i.ca, ptr %i.p, align 8, !noalias !67298
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !67298
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_RINvXsu_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB6_5ValueNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cb = load i64, ptr %0, align 8, !range !342, !noundef !313 ; 2 uses
  %i.cc = icmp ne i64 %i.cb, -1                   ; 2 uses
  %i.cd = zext i1 %i.cc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !67299
  store i64 %i.cd, ptr %i.o, align 8, !noalias !67299
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !67299
  br i1 %i.cc, label %bb.p, label %_RINvXszr_NtCs40MM8ukkVQd_9sqlparser3astNtB7_27ShowStatementFilterPositionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !67300
  store i64 %i.cb, ptr %i.i, align 8, !noalias !67300
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8), !noalias !67301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !67300
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXsr1_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXszr_NtCs40MM8ukkVQd_9sqlparser3astNtB7_27ShowStatementFilterPositionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXszr_NtCs40MM8ukkVQd_9sqlparser3astNtB7_27ShowStatementFilterPositionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXszj_NtCs40MM8ukkVQd_9sqlparser3astNtB7_20ShowStatementOptionsNtNtB7_7visitor8VisitMut5visitINtB14_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1X_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB32_(ptr noalias noundef nonnull align 8 dereferenceable(856) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load i64, ptr %i.a, align 8, !range !351, !alias.scope !67324, !noundef !313
  %switch = icmp ugt i64 %i.b, -3
  br i1 %switch, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67325)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !67325, !nonnull !313, !noundef !313 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !67325, !noundef !313 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 88
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not33 = icmp eq i64 %i.f, 0
  br i1 %.not33, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.thread, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.b, %.loopexit
  %.sroa.05.0.i34 = phi ptr [ %i.p, %.loopexit ], [ %i.d, %bb.b ] ; 4 uses
  %i.h = load i64, ptr %.sroa.05.0.i34, align 8, !range !332, !alias.scope !67326, !noalias !67325, !noundef !313
  %.not.i.i = icmp eq i64 %i.h, -1
  br i1 %.not.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67328)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i34, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !67329, !noalias !67325, !nonnull !313, !noundef !313 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i34, i64 80
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !67329, !noalias !67325, !noundef !313 ; 2 uses
  %.idx36 = mul nuw nsw i64 %i.l, 784
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx36
  %.not3031 = icmp eq i64 %i.l, 0
  br i1 %.not3031, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i32, i64 784 ; 2 uses
  %.not30 = icmp eq ptr %i.n, %i.m
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i.i32 = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RINvXsjW_NtCs40MM8ukkVQd_9sqlparser3astNtB7_11FunctionArgNtNtB7_7visitor8VisitMut5visitINtBV_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1N_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2S_(ptr noalias noundef align 8 dereferenceable(784) %.sroa.05.0.i.i.i32, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !67330, !inline_history !67312
  br i1 %i.o, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.c, %.lr.ph35
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i34, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.g
  br i1 %.not, label %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.thread, label %.lr.ph35

_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.thread: ; preds = %.loopexit, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.val12 = load i64, ptr %i.q, align 8, !range !374, !noundef !313 ; 2 uses
  %.not.i14 = icmp eq i64 %.val12, -1
  br i1 %.not.i14, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.thread
  %i.r = icmp ne i64 %.val12, -9223372036854775806
  tail call void @llvm.assume(i1 %i.r)
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit: ; preds = %_RINvXs2_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtB8_14ObjectNamePartENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2n_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3s_.exit.thread, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !345, !alias.scope !67331, !noundef !313
  %.not.i15 = icmp eq i64 %i.t, -4
  br i1 %.not.i15, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit
  %i.u = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !94
  br i1 %i.u, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val = load i64, ptr %i.v, align 8, !range !374, !noundef !313 ; 2 uses
  %.not.i17 = icmp eq i64 %.val, -1
  br i1 %.not.i17, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18, label %bb.f

bb.f:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread
  %i.w = icmp ne i64 %.val, -9223372036854775806
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18: ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit.thread, %bb.f
  %i.x = load i64, ptr %0, align 8, !range !342, !alias.scope !67332, !noundef !313
  switch i64 %i.x, label %bb.g [
    i64 -1, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit
    i64 0, label %bb.h
  ]

bb.g:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !438, !alias.scope !67333, !noundef !313 ; 2 uses
  %i.aa = icmp ne i64 %i.z, 68
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp slt i64 %i.z, 66
  br i1 %i.ab, label %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i, label %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread

_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i: ; preds = %bb.g
  %i.ac = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !67321
  br i1 %i.ac, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit, label %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread

bb.h:                                             ; preds = %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !438, !alias.scope !67334, !noundef !313 ; 2 uses
  %i.af = icmp ne i64 %i.ae, 68
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp slt i64 %i.ae, 66
  br i1 %i.ag, label %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit6.i, label %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread

_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit6.i: ; preds = %bb.h
  %i.ah = tail call fastcc noundef zeroext i1 @_RINvXs7T_NtCs40MM8ukkVQd_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB2K_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !67321
  br i1 %i.ah, label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit, label %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread

_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread: ; preds = %bb.h, %bb.g, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit6.i, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i
  br label %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit

_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_15ShowStatementInENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2t_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3y_.exit: ; preds = %.lr.ph, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit6.i, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3m_.exit ], [ true, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i ], [ false, %_RINvXs1_NtNtCs40MM8ukkVQd_9sqlparser3ast7visitorINtNtCscI6d9CVNmLh_4core6option6OptionNtNtB8_5value13ValueWithSpanENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB2z_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB3E_.exit18 ], [ true, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit6.i ], [ false, %_RINvXsr3_NtCs40MM8ukkVQd_9sqlparser3astNtB7_19ShowStatementFilterNtNtB7_7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsf6gb3FOA7sv_14datafusion_sql6selectINtNtB1W_7planner8SqlToRelNtNtCsc85D0lJ81Z_16lance_datafusion7planner20LanceContextProviderE24match_window_definitionss_0EEB31_.exit.i.thread ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit._crit_edge, label %.lr.ph5

_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.loopexit: ; preds = %.lr.ph, %.lr.ph5
  %i.d = icmp eq ptr %i.e, %i.b
  br i1 %i.d, label %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.loopexit
  %.sroa.0.04 = phi ptr [ %i.e, %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.loopexit ], [ %0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67342)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !67342, !nonnull !313, !noundef !313 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !67342, !noundef !313 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67343
  store i64 %i.i, ptr %i.a, align 8, !noalias !67343
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !67342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67343
  %.idx6 = mul nuw nsw i64 %i.i, 112
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx6
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph5, %.lr.ph
  %.sroa.0.0.i3 = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %.lr.ph5 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i3, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !noalias !67342, !inline_history !67341
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.loopexit, label %.lr.ph

_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit._crit_edge: ; preds = %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsc85D0lJ81Z_16lance_datafusion(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !338, !invariant.load !313
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !67344 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !313, !nonnull !313
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !67344
  %i.n = load i128, ptr %i.a, align 16, !noundef !313
  %i.o = icmp ne i128 %i.n, -161552374697213817395454635259496115404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !314

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #72
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsc85D0lJ81Z_16lance_datafusion(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !338, !invariant.load !313
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !67345 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !313, !nonnull !313
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !67345
  %i.n = load i128, ptr %i.a, align 16, !noundef !313
  %i.o = icmp ne i128 %i.n, 90189382463122623267183234748201210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !314

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #72
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvYINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %2) unnamed_addr #20 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.03 = phi ptr [ %i.e, %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit ], [ %0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67361)
  %i.f = load i64, ptr %.sroa.0.03, align 8, !range !332, !alias.scope !67361, !noundef !313
  %i.g = icmp ne i64 %i.f, -1                     ; 2 uses
  %i.h = zext i1 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67362
  store i64 %i.h, ptr %i.b, align 8, !noalias !67362
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !67361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67362
  br i1 %i.g, label %bb.b, label %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !67361, !nonnull !313, !noundef !313
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !67361, !noundef !313
  tail call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !noalias !67361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67363
  store i8 -1, ptr %i.a, align 1, !noalias !67363
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !67364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67363
  br label %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit

_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph, %bb.b
  %i.k = icmp eq ptr %i.e, %i.c
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc85D0lJ81Z_16lance_datafusion.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtCscI6d9CVNmLh_4core6option6OptionNtNtBW_9arguments12ArgumentNameEEENtNtNtNtB1G_4iter6traits8iterator8Iterator5unzipBS_B1B_INtB8_3VecBS_EIB3F_B1B_EECsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !67392
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !67392
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !67392
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !67392
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !67392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67394)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !67394, !nonnull !313, !noundef !313 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !67394, !nonnull !313, !noundef !313 ; 3 uses
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 144                 ; 3 uses
  %.not.i = icmp eq ptr %.val3.i, %.val.i
  br i1 %.not.i, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, i64 noundef 0, i64 noundef range(i64 1, 0) %i.h, i64 noundef 16, i64 noundef 112)
          to label %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i unwind label %bb.g, !noalias !67394

_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !67395, !noundef !313 ; 3 uses
  %i.k = load i64, ptr %i.i, align 8, !range !320, !alias.scope !67395, !noundef !313
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.h, %i.l
  br i1 %i.m, label %bb.c, label %.lr.ph.i.i.i, !prof !314

bb.c:                                             ; preds = %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.j, i64 noundef range(i64 1, 0) %i.h, i64 noundef 8, i64 noundef 32)
          to label %..lr.ph.i.i.i_crit_edge unwind label %bb.g, !noalias !67394

..lr.ph.i.i.i_crit_edge:                          ; preds = %bb.c
  %.promoted10.i.i.i.pre = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !67396, !noalias !67397
  br label %.lr.ph.i.i.i

_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.a
  %.sroa.09.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !67394
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67399)
  br label %bb.d

.lr.ph.i.i.i:                                     ; preds = %..lr.ph.i.i.i_crit_edge, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %.promoted10.i.i.i = phi i64 [ %.promoted10.i.i.i.pre, %..lr.ph.i.i.i_crit_edge ], [ %i.j, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  %.sroa.09.0.copyload18.i = load ptr, ptr %1, align 8, !alias.scope !67394
  %.sroa.5.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload20.i = load i64, ptr %.sroa.5.0..sroa_idx19.i, align 8, !alias.scope !67394
  %i.n = load ptr, ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !67400, !noalias !67397, !nonnull !313, !noundef !313
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.p = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !67396, !noalias !67397, !nonnull !313, !noundef !313
  %.promoted8.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !67400, !noalias !67397
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.f
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !67400, !noalias !67397
  store i64 %i.ab, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !67396, !noalias !67397
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.5.0.copyload24.i = phi i64 [ %.sroa.5.0.copyload20.i, %._crit_edge.i.i.i ], [ %.sroa.5.0.copyload.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 2 uses
  %.sroa.09.0.copyload22.i = phi ptr [ %.sroa.09.0.copyload18.i, %._crit_edge.i.i.i ], [ %.sroa.09.0.copyload.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE14extend_reserveCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 2 uses
  %i.q = icmp eq i64 %.sroa.5.0.copyload24.i, 0
  br i1 %i.q, label %_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIB17_INtNtBc_6option6OptionNtNtB1H_9arguments12ArgumentNameEEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_B2s_EEE6extendCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload22.i) ]
  %i.r = mul nuw i64 %.sroa.5.0.copyload24.i, 144
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload22.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !67401
  br label %_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIB17_INtNtBc_6option6OptionNtNtB1H_9arguments12ArgumentNameEEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_B2s_EEE6extendCsc85D0lJ81Z_16lance_datafusion.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.s = phi i64 [ %.promoted10.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.t = phi i64 [ %.promoted8.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.u = phi ptr [ %.val.i, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.u, i64 144, i1 false), !noalias !67401
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67402)
  %i.w = icmp ult i64 %i.t, 82351536043346213
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.x, ptr noundef nonnull align 16 dereferenceable(112) %i.u, i64 112, i1 false), !noalias !67401
  %i.y = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.z = icmp ult i64 %i.s, 288230376151711744
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !67403
  %i.ab = add nuw nsw i64 %i.s, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.not.i.i.i = icmp eq ptr %i.v, %.val3.i
  br i1 %.not.not.i.i.i, label %._crit_edge.i.i.i, label %bb.f

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1u_9arguments12ArgumentNameEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #73
          to label %.body unwind label %bb.h, !noalias !67393

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !67404
  unreachable

.body:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIBD_INtNtB4_6option6OptionNtNtB1d_9arguments12ArgumentNameEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.b) #73
          to label %bb.j unwind label %bb.i

_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEIB17_INtNtBc_6option6OptionNtNtB1H_9arguments12ArgumentNameEEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_B2s_EEE6extendCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

end_hunk_8
begin_hunk_9_@_RNCNvXs1_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameNtB7_12DataFrameExt15group_by_stream0B9_:bb.a
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cy, 1      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 1680
  store ptr %i.cz, ptr %i.db, align 16, !noalias !70611
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store ptr %i.da, ptr %i.dc, align 8, !noalias !70611
  br label %bb.at

.body.i.i.i:                                      ; preds = %bb.ay, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ax, %bb.as
  %i.dd = phi ptr [ %i.do, %bb.as ], [ %i.cd, %bb.ay ], [ %i.do, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.do, %bb.ax ]
  %i.de = phi ptr [ %i.dp, %bb.as ], [ %i.ce, %bb.ay ], [ %i.dp, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dp, %bb.ax ]
  %i.df = phi ptr [ %i.dq, %bb.as ], [ %i.cf, %bb.ay ], [ %i.dq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dq, %bb.ax ]
  %i.dg = phi ptr [ %i.dr, %bb.as ], [ %i.cg, %bb.ay ], [ %i.dr, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.dr, %bb.ax ] ; 2 uses
  %i.dh = phi ptr [ %i.ds, %bb.as ], [ %i.cj, %bb.ay ], [ %i.ds, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.ds, %bb.ax ]
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.as ], [ %i.el, %bb.ay ], [ %i.ef, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.ef, %bb.ax ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.dg) #73
          to label %bb.ap unwind label %bb.ba, !noalias !70616

bb.ap:                                            ; preds = %bb.az, %.body.i.i.i, %bb.al
  %i.di = phi ptr [ %i.cd, %bb.al ], [ %i.do, %bb.az ], [ %i.dd, %.body.i.i.i ]
  %i.dj = phi ptr [ %i.ce, %bb.al ], [ %i.dp, %bb.az ], [ %i.de, %.body.i.i.i ]
  %i.dk = phi ptr [ %i.cf, %bb.al ], [ %i.dq, %bb.az ], [ %i.df, %.body.i.i.i ]
  %i.dl = phi ptr [ %i.cg, %bb.al ], [ %i.dr, %bb.az ], [ %i.dg, %.body.i.i.i ]
  %i.dm = phi ptr [ %i.cj, %bb.al ], [ %i.ds, %bb.az ], [ %i.dh, %.body.i.i.i ]
  %.pn2.pn.i.i.i = phi { ptr, i32 } [ %i.ck, %bb.al ], [ %i.em, %bb.az ], [ %.pn.i.i.i, %.body.i.i.i ]
  store i8 2, ptr %i.dm, align 16, !noalias !70611
  br label %.body.i.i

bb.aq:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #72
          to label %.noexc.i11.i unwind label %bb.ai, !noalias !70609

.noexc.i11.i:                                     ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #72
          to label %.noexc4.i.i unwind label %bb.ai, !noalias !70609

.noexc4.i.i:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.at
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70611
  %.val6.i.i.i = load ptr, ptr %i.dt, align 16, !noalias !70611
  %.val7.i.i.i = load ptr, ptr %i.du, align 8, !noalias !70611, !nonnull !313, !align !322, !noundef !313
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr %.val6.i.i.i, ptr nonnull %.val7.i.i.i) #73
          to label %.body.i.i.i unwind label %bb.ba, !noalias !70616

bb.at:                                            ; preds = %bb.ao, %._crit_edge.i.i.i
  %i.do = phi ptr [ %i.au, %._crit_edge.i.i.i ], [ %i.cd, %bb.ao ] ; 6 uses
  %i.dp = phi ptr [ %i.at, %._crit_edge.i.i.i ], [ %i.ce, %bb.ao ] ; 5 uses
  %i.dq = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i.i.i ], [ %i.cf, %bb.ao ] ; 6 uses
  %i.dr = phi ptr [ %i.bn, %._crit_edge.i.i.i ], [ %i.cg, %bb.ao ] ; 6 uses
  %i.ds = phi ptr [ %.phi.trans.insert.i.i, %._crit_edge.i.i.i ], [ %i.cj, %bb.ao ] ; 6 uses
  %.val11.i.i.i = phi ptr [ %.val11.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.da, %bb.ao ]
  %.val10.i.i.i = phi ptr [ %.val10.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.cz, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70611
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 1688      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val11.i.i.i, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !invariant.load !313, !noalias !70617, !nonnull !313
  invoke void %i.dw(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %.val10.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i unwind label %bb.as, !noalias !70616, !inline_history !216

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.at
  %i.dx = load i64, ptr %i.a, align 8, !range !553, !noalias !70611, !noundef !313 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, -2
  br i1 %i.dy, label %.thread.i.i, label %bb.au

.thread.i.i:                                      ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70611
  store i8 3, ptr %i.ds, align 16, !noalias !70611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  br label %.thread

bb.au:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.754.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.754.0.copyload.i = load ptr, ptr %.sroa.754.0..sroa_idx.i, align 8, !noalias !70611
  %.sroa.856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.856.0.copyload.i = load ptr, ptr %.sroa.856.0..sroa_idx.i, align 8, !noalias !70611
  %.sroa.958.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.0..sroa_idx.i, i64 16, i1 false), !noalias !70611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70611
  %.val.i.i.i = load ptr, ptr %i.dt, align 16, !noalias !70611 ; 5 uses
  %.val5.i.i.i = load ptr, ptr %i.du, align 8, !noalias !70611, !nonnull !313, !align !322, !noundef !313 ; 5 uses
  %i.dz = load ptr, ptr %.val5.i.i.i, align 8, !invariant.load !313, !noalias !70616 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.dz(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aw unwind label %bb.ax, !noalias !70616

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ea = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !320, !invariant.load !313, !noalias !70616 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !338, !invariant.load !313, !noalias !70616
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) %i.ee) #71, !noalias !70616
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !320, !invariant.load !313, !noalias !70616 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.body.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ax
  %i.ej = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !range !338, !invariant.load !313, !noalias !70616
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) %i.ek) #71, !noalias !70616
  br label %.body.i.i.i

bb.ay:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.aw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.dr)
          to label %.thread.i unwind label %bb.az, !noalias !70616

.thread.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.943.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i, i64 16, i1 false), !noalias !70618
  store i8 1, ptr %i.ds, align 16, !noalias !70611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  br label %bb.bc

bb.az:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ba:                                            ; preds = %bb.as, %.body.i.i.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !70616
  unreachable

bb.bb:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.sroa.9.i, i64 16, i1 false), !noalias !70611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.sroa.9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.943.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i, i64 16, i1 false), !noalias !70618
  store i8 1, ptr %i.cj, align 16, !noalias !70611
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i)
  %i.eo = icmp eq i64 %.sroa.8.i.i.sroa.0.0.copyload.i, -2
  br i1 %i.eo, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %i.ep = phi ptr [ %i.do, %.thread.i ], [ %i.cd, %bb.bb ] ; 7 uses
  %i.eq = phi ptr [ %i.dp, %.thread.i ], [ %i.ce, %bb.bb ] ; 7 uses
  %i.er = phi ptr [ %i.dq, %.thread.i ], [ %i.cf, %bb.bb ] ; 2 uses
  %i.es = phi ptr [ %i.dr, %.thread.i ], [ %i.cg, %bb.bb ]
  %.sroa.052.070.i = phi i64 [ %i.dx, %.thread.i ], [ %.sroa.8.i.i.sroa.0.0.copyload.i, %bb.bb ] ; 2 uses
  %.sroa.754.069.i = phi ptr [ %.sroa.754.0.copyload.i, %.thread.i ], [ %.sroa.8.i.i.sroa.7.0.copyload.i, %bb.bb ] ; 3 uses
  %.sroa.856.068.i = phi ptr [ %.sroa.856.0.copyload.i, %.thread.i ], [ %.sroa.8.i.i.sroa.8.0.copyload.i, %bb.bb ] ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtNtCseMy6uzTzNin_10datafusion9execution13session_stateNtBJ_12SessionState20create_physical_plan0ECsc85D0lJ81Z_16lance_datafusion(ptr noundef nonnull align 16 %i.es)
          to label %bb.bf unwind label %bb.bd, !noalias !70610

bb.bd:                                            ; preds = %bb.bc
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body12.thread.i

bb.be:                                            ; preds = %.body.i.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !70610
  unreachable

.thread:                                          ; preds = %.thread.i.i, %bb.bb
  %i.ev = phi ptr [ %i.cd, %bb.bb ], [ %i.do, %.thread.i.i ]
  %i.ew = phi ptr [ %i.cf, %bb.bb ], [ %i.dq, %.thread.i.i ]
  store i8 3, ptr %i.ew, align 8, !noalias !70608
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.943.sroa.7.i)
  store i8 3, ptr %i.ev, align 8, !noalias !70603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.848.i)
  br label %bb.bt

bb.bf:                                            ; preds = %bb.bc
  store i8 1, ptr %i.er, align 8, !noalias !70608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.848.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.943.sroa.7.i, i64 16, i1 false), !noalias !70603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.943.sroa.7.i)
  %.not.i.i = icmp eq i64 %.sroa.052.070.i, -1
  br i1 %.not.i.i, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.754.069.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.856.068.i) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 1753 ; 2 uses
  store i8 0, ptr %i.ex, align 1, !noalias !70603
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 1744
  %i.ez = load ptr, ptr %i.ey, align 16, !noalias !70603, !nonnull !313, !noundef !313
  invoke void @_RNvNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan14execute_stream(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %.sroa.754.069.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.856.068.i, ptr noundef nonnull %i.ez)
          to label %bb.bi unwind label %bb.bh, !noalias !70604

bb.bh:                                            ; preds = %bb.bg
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtBJ_9DataFrame20create_physical_plan0ECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.bi:                                            ; preds = %bb.bg
  store i8 0, ptr %i.ex, align 1, !noalias !70603
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70619)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %.val.i.i = load ptr, ptr %i.fc, align 16, !alias.scope !70619, !noalias !70603, !nonnull !313, !noundef !313 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(1904) %.val.i.i)
          to label %.invoke.i unwind label %.body.i19.i, !noalias !70620

.body.i19.i:                                      ; preds = %bb.bi
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 1904, i64 noundef 8) #71, !noalias !70620
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.fb) #73
          to label %.body21.i unwind label %bb.bj, !noalias !70604

bb.bj:                                            ; preds = %.body.i19.i
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !70604
  unreachable

.body21.i:                                        ; preds = %.body.i25.i, %bb.bk, %.body.i19.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i
  %i.ff = phi ptr [ %i.bi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i ], [ %i.ep, %.body.i19.i ], [ %i.ep, %bb.bk ], [ %i.ep, %.body.i25.i ]
  %i.fg = phi ptr [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i ], [ %i.eq, %.body.i19.i ], [ %i.eq, %bb.bk ], [ %i.eq, %.body.i25.i ]
  %.pn9.i = phi { ptr, i32 } [ %.pn7.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i ], [ %i.fd, %.body.i19.i ], [ %i.fh, %bb.bk ], [ %i.fv, %.body.i25.i ]
  store i8 2, ptr %i.ff, align 8, !noalias !70603
  br label %.body

bb.bk:                                            ; preds = %.invoke.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtBJ_9DataFrame20create_physical_plan0ECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body12.i, %bb.ae, %.body12.thread.i, %bb.bh
  %i.fi = phi ptr [ %i.ep, %bb.bh ], [ %i.bv, %.body12.thread.i ], [ %i.au, %bb.ae ], [ %i.au, %.body12.i ] ; 3 uses
  %i.fj = phi ptr [ %i.eq, %bb.bh ], [ %i.bw, %.body12.thread.i ], [ %i.at, %bb.ae ], [ %i.at, %.body12.i ] ; 3 uses
  %.pn4.pn.i = phi { ptr, i32 } [ %i.fa, %bb.bh ], [ %.pn2.i.i, %.body12.thread.i ], [ %i.bm, %bb.ae ], [ %i.bm, %.body12.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1753
  %i.fl = load i8, ptr %i.fk, align 1, !range !325, !noalias !70603, !noundef !313
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.bq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i

bb.bl:                                            ; preds = %bb.bf
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.848.i, i64 16, i1 false), !noalias !70603
  store i64 %.sroa.052.070.i, ptr %i.d, align 8, !alias.scope !70621, !noalias !70603
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.754.069.i, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !70621, !noalias !70603
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.856.068.i, ptr %.sroa.651.0..sroa_idx.i, align 8, !alias.scope !70621, !noalias !70603
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70622)
  call void @llvm.experimental.noalias.scope.decl(metadata !70623)
  %i.fo = load ptr, ptr %i.fn, align 16, !alias.scope !70624, !noalias !70603, !nonnull !313, !noundef !313
  %i.fp = atomicrmw add ptr %i.fo, i64 -1 release, align 8, !noalias !70625
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.bn, !noalias !70604

bb.bn:                                            ; preds = %bb.bm
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.bm, %bb.bl
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 1753
  store i8 0, ptr %i.fs, align 1, !noalias !70603
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70626)
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %.val.i24.i = load ptr, ptr %i.fu, align 16, !alias.scope !70626, !noalias !70603, !nonnull !313, !noundef !313 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(1904) %.val.i24.i)
          to label %.invoke.i unwind label %.body.i25.i, !noalias !70627

.body.i25.i:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i, i64 noundef 1904, i64 noundef 8) #71, !noalias !70627
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ft) #73
          to label %.body21.i unwind label %bb.bo, !noalias !70604

.invoke.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.bi
  %.val.i.sink.i = phi ptr [ %.val.i.i, %bb.bi ], [ %.val.i24.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.fw = phi ptr [ %i.fb, %bb.bi ], [ %i.ft, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.sink.i, i64 noundef 1904, i64 noundef 8) #71, !noalias !70604
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.fw)
          to label %bb.bs unwind label %bb.bk, !noalias !70604

bb.bo:                                            ; preds = %.body.i25.i
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !70604
  unreachable

bb.bp:                                            ; preds = %bb.br, %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !70604
  unreachable

bb.bq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtBJ_9DataFrame20create_physical_plan0ECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70628)
  call void @llvm.experimental.noalias.scope.decl(metadata !70629)
  %i.ga = load ptr, ptr %i.fz, align 16, !alias.scope !70630, !noalias !70603, !nonnull !313, !noundef !313
  %i.gb = atomicrmw add ptr %i.ga, i64 -1 release, align 8, !noalias !70631
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsc85D0lJ81Z_16lance_datafusion.exit31.i unwind label %bb.bp, !noalias !70604

bb.bs:                                            ; preds = %.invoke.i
  %.sroa.0105.0.copyload106 = load i64, ptr %i.d, align 8, !noalias !70632 ; 3 uses
  %.sroa.8107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8107.sroa.0.0.copyload = load ptr, ptr %.sroa.8107.0..sroa_idx108, align 8, !noalias !70632 ; 4 uses
  %.sroa.8107.sroa.6.0..sroa.8107.0..sroa_idx108.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8107.sroa.6.0.copyload = load ptr, ptr %.sroa.8107.sroa.6.0..sroa.8107.0..sroa_idx108.sroa_idx, align 8, !noalias !70632 ; 4 uses
  %.sroa.8107.sroa.7.0..sroa.8107.0..sroa_idx108.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gd = load <2 x i64>, ptr %.sroa.8107.sroa.7.0..sroa.8107.0..sroa_idx108.sroa_idx, align 8, !noalias !70632
  store i8 1, ptr %i.ep, align 8, !noalias !70603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.848.i)
  %i.ge = icmp eq i64 %.sroa.0105.0.copyload106, -2
  br i1 %i.ge, label %bb.bt, label %bb.bu

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit62, %bb.bt
  %storemerge = phi i8 [ 3, %bb.bt ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit62 ]
  store i8 %storemerge, ptr %i.l, align 16
  ret void

bb.bt:                                            ; preds = %.thread, %bb.bs
  store i128 -3, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %common.ret

bb.bu:                                            ; preds = %bb.bs
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtBJ_9DataFrame14execute_stream0ECsc85D0lJ81Z_16lance_datafusion(ptr noundef nonnull align 16 %i.eq)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.bw:                                            ; preds = %bb.bu
  %.not.i48 = icmp eq i64 %.sroa.0105.0.copyload106, -1
  br i1 %.not.i48, label %bb.bx, label %bb.ci

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8107.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8107.sroa.6.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !313
  %.not16 = icmp eq i64 %i.gh, 0
  br i1 %.not16, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.gj = load ptr, ptr %i.gi, align 16, !nonnull !313, !align !322, !noundef !313 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !313, !noundef !313
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !noundef !313 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70633)
  call void @llvm.experimental.noalias.scope.decl(metadata !70634)
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !70635
  %i.go = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gm, i64 noundef range(i64 1, 17) 1) #71, !noalias !70635 ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.gm) #72
          to label %.noexc51 unwind label %bb.ch

.noexc51:                                         ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull readonly align 1 %i.gk, i64 range(i64 0, -9223372036854775808) %i.gm, i1 false), !noalias !70636
  br label %bb.cf

bb.cc:                                            ; preds = %bb.bx
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @418) #72
          to label %bb.ce unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cf
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.ce:                                            ; preds = %bb.cc
  unreachable

bb.cf:                                            ; preds = %bb.cb, %bb.by
  %.sroa.5.0.i.i = phi ptr [ %i.go, %bb.cb ], [ inttoptr (i64 1 to ptr), %bb.by ]
  store i64 %i.gm, ptr %i.f, align 8, !alias.scope !70637
  %.sroa.5.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i49, align 8, !alias.scope !70637
  %.sroa.7.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.gm, ptr %.sroa.7.0..sroa_idx.i.i50, align 8, !alias.scope !70637
  invoke void @_RNvMs_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtB4_18BatchStreamGrouper3new(ptr noalias noundef nonnull sret([208 x i8]) align 16 captures(none) dereferenceable(208) %i.g, ptr noundef nonnull %.sroa.8107.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.8107.sroa.6.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.cg unwind label %bb.cd

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i128, ptr %i.g, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.10.sroa.6.0.copyload = load ptr, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, align 16
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gq = load <2 x i64>, ptr %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.13.sroa.3.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.13.sroa.3, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.13.sroa.3.0..sroa.13.0..sroa_idx.sroa_idx, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 1761
  store i8 0, ptr %i.gr, align 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit62

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit62: ; preds = %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit, %bb.cg
  %.sroa.10.sroa.6.1 = phi ptr [ %.sroa.10.sroa.6.0.copyload, %bb.cg ], [ %.sroa.10.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.10.sroa.6.0, %bb.co ]
  %.sroa.10.sroa.0.1 = phi i64 [ %.sroa.10.sroa.0.0.copyload, %bb.cg ], [ %.sroa.10.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.10.sroa.0.0, %bb.co ]
  %.sroa.6.1 = phi i64 [ %.sroa.6.0.copyload, %bb.cg ], [ %.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.6.0, %bb.co ]
  %.sroa.0.1 = phi i128 [ %.sroa.0.0.copyload, %bb.cg ], [ -2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit ], [ -2, %bb.co ]
  %i.gs = phi <2 x i64> [ %i.gq, %bb.cg ], [ %i.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit ], [ %i.ai, %bb.co ]
  store i128 %.sroa.0.1, ptr %0, align 16
  %.sroa.6.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.1, ptr %.sroa.6.0..sroa_idx64, align 16
  %.sroa.10.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.sroa.0.1, ptr %.sroa.10.0..sroa_idx66, align 8
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.sroa.6.1, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx66.sroa_idx, align 16
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.gs, ptr %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx66.sroa_idx, align 8
  %.sroa.13.sroa.3.0..sroa.13.0..sroa_idx67.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.13.sroa.3.0..sroa.13.0..sroa_idx67.sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.13.sroa.3, i64 152, i1 false)
  br label %common.ret

bb.ch:                                            ; preds = %bb.ca, %bb.cc
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr nonnull %.sroa.8107.sroa.0.0.copyload, ptr nonnull %.sroa.8107.sroa.6.0.copyload) #73
          to label %bb.e unwind label %bb.n

bb.ci:                                            ; preds = %bb.bw
  %i.gt = ptrtoint ptr %.sroa.8107.sroa.0.0.copyload to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.ck, %bb.l
  store i8 0, ptr %i.aj, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 1762
  %i.gv = load i8, ptr %i.gu, align 2, !range !325, !noundef !313
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit62

bb.cj:                                            ; preds = %bb.l
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70638)
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.val.i = load ptr, ptr %i.gy, align 16, !alias.scope !70638, !nonnull !313, !noundef !313 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(1904) %.val.i)
          to label %bb.ck unwind label %.body.i53, !noalias !70638

.body.i53:                                        ; preds = %bb.cj
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1904, i64 noundef 8) #71, !noalias !70638
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.gx) #73
          to label %.body55 unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1904, i64 noundef 8) #71, !noalias !70638
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.gx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.cm

bb.cl:                                            ; preds = %.body.i53
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body55:                                          ; preds = %bb.cm, %.body.i53, %bb.cr, %bb.o
  %.pn29 = phi { ptr, i32 } [ %.pn27, %bb.o ], [ %.pn27, %bb.cr ], [ %i.hf, %bb.cm ], [ %i.gz, %.body.i53 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 1761
  store i8 0, ptr %i.hb, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 1762
  %i.hd = load i8, ptr %i.hc, align 2, !range !325, !noundef !313
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.cs, label %.body60

bb.cm:                                            ; preds = %bb.ck
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body55

bb.cn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !70639)
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.val.i57 = load ptr, ptr %i.hg, align 16, !alias.scope !70639, !nonnull !313, !noundef !313 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(1904) %.val.i57)
          to label %bb.co unwind label %.body.i58, !noalias !70639

.body.i58:                                        ; preds = %bb.cn
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i57, i64 noundef 1904, i64 noundef 8) #71, !noalias !70639
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %1) #73
          to label %.body60 unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i57, i64 noundef 1904, i64 noundef 8) #71, !noalias !70639
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(336) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion.exit62 unwind label %bb.cq

bb.cp:                                            ; preds = %.body.i58
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body60:                                          ; preds = %bb.cq, %.body.i58, %bb.cs, %.body55
  %.pn31 = phi { ptr, i32 } [ %.pn29, %.body55 ], [ %.pn29, %bb.cs ], [ %i.hj, %bb.cq ], [ %i.hh, %.body.i58 ]
  store i8 2, ptr %i.l, align 16
  resume { ptr, i32 } %.pn31

bb.cq:                                            ; preds = %bb.co
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.cr:                                            ; preds = %bb.o
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 352
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(336) %i.hk) #73
          to label %.body55 unwind label %bb.n

bb.cs:                                            ; preds = %.body55
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 16 dereferenceable(336) %1) #73
          to label %.body60 unwind label %bb.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvXs2_NtNtCs4ytUTZt2Gw9_11arrow_array5array15list_view_arrayINtB7_20GenericListViewArraylENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_9
begin_hunk_10_@_RNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB8_5table13TableProvider14scan_with_args0Csc85D0lJ81Z_16lance_datafusion:bb.a

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val14.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert55 = getelementptr i8, ptr %1, i64 152
  %.val15.pre = load ptr, ptr %.phi.trans.insert55, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !313, !align !322, !noundef !313
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr i8, ptr %1, i64 88
  %.val16 = load ptr, ptr %i.g, align 8, !align !347, !noundef !313 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val17 = load i64, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val16, null             ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val16
  %.5.i = select i1 %.not.i, i64 0, i64 %.val17
  %i.i = getelementptr i8, ptr %1, i64 104
  %.val18 = load ptr, ptr %i.i, align 8, !align !322, !noundef !313 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 112
  %.val19 = load i64, ptr %i.j, align 8           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71312)
  %.not.i22 = icmp eq ptr %.val18, null
  br i1 %.not.i22, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.val19, 3               ; 3 uses
  %i.m = icmp eq i64 %.val19, 0
  br i1 %i.m, label %_RNCNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBa_5table13TableProvider14scan_with_args00Csc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !71313
  %i.n = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !71313 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #72
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val18, i64 %i.l, i1 false), !noalias !71314
  br label %_RNCNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBa_5table13TableProvider14scan_with_args00Csc85D0lJ81Z_16lance_datafusion.exit.i

_RNCNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBa_5table13TableProvider14scan_with_args00Csc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.g ], [ inttoptr (i64 8 to ptr), %bb.d ]
  store i64 %.val19, ptr %i.k, align 8, !alias.scope !71312
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !71312
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val19, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !71312
  %i.p = icmp eq i64 %.val19, -1
  %i.q = select i1 %i.p, ptr null, ptr %i.k
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  store i64 -1, ptr %i.k, align 8, !alias.scope !71312
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNCNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBa_5table13TableProvider14scan_with_args00Csc85D0lJ81Z_16lance_datafusion.exit.i
  %.not.i23 = phi ptr [ null, %bb.h ], [ %i.q, %_RNCNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtBa_5table13TableProvider14scan_with_args00Csc85D0lJ81Z_16lance_datafusion.exit.i ]
  %.val20 = load i64, ptr %i.f, align 8, !range !324, !noundef !313
  %i.r = getelementptr i8, ptr %1, i64 80
  %.val21 = load i64, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !313, !noundef !313
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !313, !align !322, !noundef !313
  %i.w = invoke { ptr, ptr } @_RNvXs0_NtCs5q7AjagIPjV_18datafusion_catalog9streamingNtB5_14StreamingTableNtNtB7_5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i23, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val20, i64 %.val21)
          to label %bb.j unwind label %bb.u       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.y, ptr %i.aa, align 8
  br label %bb.o

.body:                                            ; preds = %bb.u, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.t, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.af, %bb.n ], [ %i.az, %bb.u ], [ %i.at, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val8 = load i64, ptr %i.ab, align 8, !range !332, !noundef !313 ; 2 uses
  %i.ac = icmp sgt i64 %.val8, 0
  br i1 %i.ac, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit

bb.k:                                             ; preds = %.body
  %i.ad = getelementptr i8, ptr %1, i64 128
  %.val9 = load ptr, ptr %i.ad, align 8, !nonnull !313, !noundef !313
  %i.ae = shl nuw i64 %.val8, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !71315
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.k, %.body, %bb.w
  %.pn3 = phi { ptr, i32 } [ %i.bd, %bb.w ], [ %.pn, %.body ], [ %.pn, %bb.k ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @471) #72
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @471) #72
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val12 = load ptr, ptr %i.ag, align 8
  %.val13 = load ptr, ptr %i.ah, align 8, !nonnull !313, !align !322, !noundef !313
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion(ptr %.val12, ptr nonnull %.val13) #73
          to label %.body unwind label %bb.y

bb.o:                                             ; preds = %bb.b, %bb.j
  %.val15 = phi ptr [ %.val15.pre, %bb.b ], [ %i.y, %bb.j ]
  %.val14 = phi ptr [ %.val14.pre, %bb.b ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !313, !noalias !71316, !nonnull !313
  invoke void %i.aj(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %.val14, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.n, !inline_history !216

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.o
  %i.ak = load i64, ptr %i.a, align 8, !range !553, !noundef !313 ; 3 uses
  %i.al = icmp eq i64 %i.ak, -2
  br i1 %i.al, label %bb.p, label %bb.q

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29, %bb.p
  %storemerge = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29 ], [ 3, %bb.p ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.p:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.q:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load <2 x ptr>, ptr %.sroa.347.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val10 = load ptr, ptr %i.ag, align 8          ; 5 uses
  %.val11 = load ptr, ptr %i.ah, align 8, !nonnull !313, !align !322, !noundef !313 ; 5 uses
  %i.an = load ptr, ptr %.val11, align 8, !invariant.load !313 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  invoke void %i.an(ptr noundef nonnull %.val10)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !338, !invariant.load !313
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) %i.as) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit

bb.t:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !320, !invariant.load !313 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !338, !invariant.load !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %i.ay) #71
  br label %.body

bb.u:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.s
  %.not.i26 = icmp eq i64 %i.ak, -1
  br i1 %.not.i26, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit
  %i.ba = extractelement <2 x ptr> %i.am, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = extractelement <2 x ptr> %i.am, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val6 = load i64, ptr %3, align 8, !range !332, !noundef !313 ; 2 uses
  %i.bc = icmp sgt i64 %.val6, 0
  br i1 %i.bc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29

bb.w:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29.sink.split: ; preds = %bb.v, %bb.x
  %.val.sink = phi i64 [ %.val, %bb.x ], [ %.val6, %bb.v ]
  %i.be = getelementptr i8, ptr %1, i64 128
  %.val5 = load ptr, ptr %i.be, align 8, !nonnull !313, !noundef !313
  %i.bf = shl nuw i64 %.val.sink, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !313
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29.sink.split, %bb.x, %bb.v
  store i64 %i.ak, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.am, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val = load i64, ptr %4, align 8, !range !332, !noundef !313 ; 2 uses
  %i.bg = icmp sgt i64 %.val, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecjEEECsc85D0lJ81Z_16lance_datafusion.exit29

bb.y:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableNtNtB8_5table13TableProvider6update0Csc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !389, !noundef !313
  switch i8 %i.k, label %default.unreachable52 [
    i8 0, label %bb.b
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 1, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @472, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit38: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !71332)
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !71332 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit38
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !71332, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !71332
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !71333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.547.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.p, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.549.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @184, ptr noundef nonnull %i.a)
          to label %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit35 unwind label %bb.g

bb.f:                                             ; preds = %bb.g
  %.val1.i37 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !71334, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i37, i64 noundef %.val.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !71334
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit38

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !71334)
  %.val.i36 = load i64, ptr %i.b, align 8, !alias.scope !71334 ; 2 uses
  %i.r = icmp eq i64 %.val.i36, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit38, label %bb.f

_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit35:     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !71335)
  %.val.i39 = load i64, ptr %i.b, align 8, !alias.scope !71335 ; 2 uses
  %i.s = icmp eq i64 %.val.i39, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit41, label %bb.h

bb.h:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit35
  %.val1.i40 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !71335, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i40, i64 noundef %.val.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !71335
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit41

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit41: ; preds = %bb.h, %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !71336)
  %.val.i42 = load i64, ptr %i.f, align 8, !alias.scope !71336 ; 2 uses
  %i.t = icmp eq i64 %.val.i42, 0
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit41
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i43 = load ptr, ptr %i.u, align 8, !alias.scope !71336, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i43, i64 noundef %.val.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !71336
  br label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit38, %bb.c
  %.pn15 = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.m, %bb.c ], [ %i.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #73
          to label %.body unwind label %bb.t

bb.j:                                             ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !71337)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !71338, !nonnull !313, !noundef !313 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !71338, !noundef !313 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i64 %i.ac, %i.y
  br i1 %i.aa, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i53 = phi i64 [ %i.ac, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.0.i.i53
  %i.ac = add i64 %.sroa.0.0.i.i53, 1             ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ab) #74
          to label %bb.k unwind label %bb.m, !noalias !71337, !inline_history !0

bb.l:                                             ; preds = %.lr.ph55
  %i.ad = add i64 %.sroa.0.1.i.i54, 1             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.y
  br i1 %i.ae, label %.body.i, label %.lr.ph55

bb.m:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq i64 %i.ac, %i.y
  br i1 %i.ag, label %.body.i, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.m, %bb.l
  %.sroa.0.1.i.i54 = phi i64 [ %i.ad, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.1.i.i54
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ah) #75
          to label %bb.l unwind label %bb.n, !noalias !71337, !inline_history !0

bb.n:                                             ; preds = %.lr.ph55
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !71337, !inline_history !0
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.m
  %.val2.i = load i64, ptr %i.h, align 8, !range !320, !alias.scope !71337, !noundef !313 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i, 0
  br i1 %i.aj, label %.body, label %bb.o

bb.o:                                             ; preds = %.body.i
  %i.ak = mul nuw i64 %.val2.i, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !71337, !inline_history !333
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.k, %bb.j
  %.val.i45 = load i64, ptr %i.h, align 8, !range !320, !alias.scope !71337, !noundef !313 ; 2 uses
  %i.al = icmp eq i64 %.val.i45, 0
end_hunk_10
begin_hunk_11_@_RNvNtNtCsc85D0lJ81Z_16lance_datafusion3udf4json33json_array_contains_columnar_impl:bb.a
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub nuw i64 %i.fj, %i.fk
  %i.fm = udiv exact i64 %i.fl, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !90237), !noalias !90235
  %i.fn = icmp eq ptr %i.fe, %i.fi
  br i1 %i.fn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.fp = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !90237, !noalias !90238 ; 2 uses
  %i.fq = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.fq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.fr = getelementptr i8, ptr %i.fo, i64 8
  %.val9.i.i.i = load ptr, ptr %i.fr, align 8, !alias.scope !90237, !noalias !90238, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90239
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i
  %i.fs = icmp eq i64 %i.fp, %i.fm
  br i1 %i.fs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit118.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %i.ft = icmp eq i64 %i.fb, 0
  br i1 %i.ft, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %i.fu = mul nuw i64 %i.fb, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90238
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !90234
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.15.i.sroa.0.1 = phi i56 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.15.i.sroa.0.0.copyload49, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  %.sroa.15.i.sroa.6.1 = phi ptr [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.15.i.sroa.6.0.copyload50, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  %.sroa.15.i.sroa.7.1 = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.15.i.sroa.7.0.copyload51, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  %.sroa.9.0.i = phi i8 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit ], [ %.sroa.9.8.copyload114.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 2 uses
  %.sroa.0112.0.i = phi i64 [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit ], [ 9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5error5ErrorECsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !90234
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.n), !noalias !90235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !90234
  call void @llvm.experimental.noalias.scope.decl(metadata !90240)
  call void @llvm.experimental.noalias.scope.decl(metadata !90241)
  %i.fv = icmp eq i64 %.sroa.6.i.sroa.7.i.sroa.8.0.copyload58, 0
  br i1 %i.fv, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i126.i.i, label %.lr.ph449

bb.al:                                            ; preds = %bb.bi, %bb.ah
  %.sroa.09.0.i.i = phi i64 [ 0, %bb.ah ], [ %i.go, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !90234
  invoke void @_RNvMNtNtCskKR1pP4skmg_5jsonb9functions4pathNtNtB6_3raw8RawJsonb12get_by_index(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %.sroa.09.0.i.i)
          to label %bb.an unwind label %bb.am, !noalias !90235

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.i.i: ; preds = %bb.au, %.body.i.i, %bb.am
  %.pn58.i.i = phi { ptr, i32 } [ %i.fx, %bb.am ], [ %.pn.i.i, %bb.au ], [ %.pn.i.i, %.body.i.i ]
  %i.fw = icmp eq i64 %.sroa.0.0.copyload129.i.i, 0
  br i1 %i.fw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.thread.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.thread.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload129.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90235
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.fx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fh, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !90234
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.i.i

bb.an:                                            ; preds = %bb.al
  %i.fy = load i64, ptr %i.j, align 8, !range !381, !noalias !90234, !noundef !313 ; 6 uses
  %.not49.i.i = icmp eq i64 %i.fy, -1
  br i1 %.not49.i.i, label %bb.ao, label %bb.bu

bb.ao:                                            ; preds = %bb.an
  %i.fz = load i64, ptr %.sink2.i.sink.i.sroa.gep135.i.i, align 8, !range !332, !noalias !90234, !noundef !313
  %.not50.i.i = icmp eq i64 %i.fz, -1
  br i1 %.not50.i.i, label %.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !90234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sink2.i.sink.i.sroa.gep135.i.i, i64 24, i1 false), !noalias !90234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90242
  store i64 0, ptr %i.c, align 8, !noalias !90242
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i102.i, align 8, !noalias !90242
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !90242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90242
  store i32 1610612768, ptr %i.cu, align 8, !noalias !90242
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !90242
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !90242
  store ptr %i.c, ptr %i.b, align 8, !noalias !90242
  store ptr @2522, ptr %i.cv, align 8, !noalias !90242
  %i.ga = invoke noundef zeroext i1 @_RNvXs3_NtCskKR1pP4skmg_5jsonb5ownedNtB5_10OwnedJsonbNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.as unwind label %.loopexit.i.i, !noalias !90243

.loopexit.i.i:                                    ; preds = %bb.ap
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fh, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !90234
  br label %bb.aq

.loopexit.split-lp.i.i:                           ; preds = %bb.at
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90244)
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !90244, !noalias !90242 ; 2 uses
  %i.gb = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.gb, label %.body.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val1.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i102.i, align 8, !alias.scope !90244, !noalias !90242, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90245
  br label %.body.i.i

bb.as:                                            ; preds = %bb.ap
  br i1 %i.ga, label %bb.at, label %bb.av, !prof !314

bb.at:                                            ; preds = %bb.as
  store ptr %i.fh, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !90234
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2523, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @494, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2525) #72
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !90243

.noexc.i.i.i:                                     ; preds = %bb.at
  unreachable

.body.i.i:                                        ; preds = %bb.ba, %bb.az, %bb.ar, %bb.aq
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.aq ], [ %i.gi, %bb.ba ], [ %lpad.phi.i.i, %bb.ar ], [ %i.gi, %bb.az ] ; 2 uses
  %.val77.i.i = load i64, ptr %i.i, align 8, !noalias !90234 ; 2 uses
  %i.gc = icmp eq i64 %.val77.i.i, 0
  br i1 %i.gc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.i.i, label %bb.au

bb.au:                                            ; preds = %.body.i.i
  %.val78.i.i = load ptr, ptr %i.cw, align 8, !noalias !90234, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val78.i.i, i64 noundef %.val77.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90235
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit81.i.i

bb.av:                                            ; preds = %bb.as
  %.sroa.0140.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !90246 ; 6 uses
  %.sroa.7141.0.copyload.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i102.i, align 8, !noalias !90246 ; 10 uses
  %.sroa.12143.0.copyload.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !90246 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90242
  %i.gd = load i64, ptr %i.cl, align 8, !noalias !90234, !noundef !313
  %i.ge = icmp eq i64 %.sroa.12143.0.copyload.i.i, %i.gd
  br i1 %i.ge, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gf = load ptr, ptr %i.q, align 8, !noalias !90234, !nonnull !313, !noundef !313
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7141.0.copyload.i.i) ]
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.sroa.7141.0.copyload.i.i, ptr nonnull %i.gf, i64 %.sroa.12143.0.copyload.i.i), !noalias !90235
  %i.gg = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.gg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit91.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !90234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !90234
  store ptr %i.q, ptr %i.g, align 8, !noalias !90234
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !90234
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @878, ptr noundef nonnull %i.g)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit82.i.i unwind label %bb.az, !noalias !90235

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit91.i.i: ; preds = %bb.aw, %bb.bf, %bb.be
  %i.gh = icmp eq i64 %.sroa.0140.0.copyload.i.i, 0
  br i1 %i.gh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit91.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7141.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7141.0.copyload.i.i, i64 noundef %.sroa.0140.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90247
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.fh, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !90234
  %i.gj = icmp eq i64 %.sroa.0140.0.copyload.i.i, 0
  br i1 %i.gj, label %.body.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7141.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7141.0.copyload.i.i, i64 noundef %.sroa.0140.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90248
  br label %.body.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit82.i.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !90234
  %.sroa.0145.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !90234 ; 4 uses
  %.sroa.6146.0.copyload.i.i = load ptr, ptr %.sroa.6146.0..sroa_idx.i.i, align 8, !noalias !90234 ; 5 uses
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !90234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !90234
  %i.gk = icmp eq i64 %.sroa.12143.0.copyload.i.i, %.sroa.9.0.copyload.i.i
  br i1 %i.gk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit82.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6146.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7141.0.copyload.i.i) ]
  %bcmp51.i.i = call i32 @bcmp(ptr nonnull %.sroa.7141.0.copyload.i.i, ptr nonnull %.sroa.6146.0.copyload.i.i, i64 %.sroa.12143.0.copyload.i.i), !noalias !90235
  %i.gl = icmp eq i32 %bcmp51.i.i, 0
  br i1 %i.gl, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit82.i.i
  %i.gm = icmp eq i64 %.sroa.0145.0.copyload.i.i, 0
  br i1 %i.gm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit88.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6146.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6146.0.copyload.i.i, i64 noundef %.sroa.0145.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90249
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit88.i.i

bb.be:                                            ; preds = %bb.bb
  %i.gn = icmp eq i64 %.sroa.0145.0.copyload.i.i, 0
  br i1 %i.gn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit91.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6146.0.copyload.i.i, i64 noundef %.sroa.0145.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90250
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit91.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit88.i.i: ; preds = %bb.bd, %bb.bc
  %i.go = add i64 %.sroa.09.0.i.i, 1
  %i.gp = icmp eq i64 %.sroa.0140.0.copyload.i.i, 0
  br i1 %i.gp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit94.i.i, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit88.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7141.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7141.0.copyload.i.i, i64 noundef %.sroa.0140.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90251
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit94.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit94.i.i: ; preds = %bb.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit88.i.i
  %.val75.i.i = load i64, ptr %i.i, align 8, !noalias !90234 ; 2 uses
  %i.gq = icmp eq i64 %.val75.i.i, 0
  br i1 %i.gq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit94.i.i
  %.val76.i.i = load ptr, ptr %i.cw, align 8, !noalias !90234, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76.i.i, i64 noundef %.val75.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90235
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !90234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !90234
  br label %bb.al

bb.bj:                                            ; preds = %bb.ac
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90235
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit91.i.i
  %.val73.i.i = load i64, ptr %i.i, align 8, !noalias !90234 ; 2 uses
  %i.gs = icmp eq i64 %.val73.i.i, 0
  br i1 %i.gs, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %.val74.i.i = load ptr, ptr %i.cw, align 8, !noalias !90234, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74.i.i, i64 noundef %.val73.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90235
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !90234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !90234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90234
  %i.gt = icmp eq i64 %.sroa.0.0.copyload129.i.i, 0
  br i1 %i.gt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit106.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload129.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90235
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit106.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit106.i.i: ; preds = %bb.bm, %bb.bl
  %i.gu = ptrtoint ptr %i.fe to i64
  %i.gv = ptrtoint ptr %i.fh to i64
  %i.gw = sub nuw i64 %i.gu, %i.gv
  %i.gx = udiv exact i64 %i.gw, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !90252)
  %i.gy = icmp eq ptr %i.fe, %i.fh
  br i1 %i.gy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit106.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.ha, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit106.i.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.gz, align 8, !alias.scope !90252, !noalias !90253 ; 2 uses
  %i.hb = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.hb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hc = getelementptr i8, ptr %i.gz, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !90252, !noalias !90253, !nonnull !313, !noundef !313
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !90254
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i: ; preds = %bb.bn, %.lr.ph.i.i.i.i.i
  %i.hd = icmp eq i64 %i.ha, %i.gx
  br i1 %i.hd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit106.i.i
  %i.he = icmp eq i64 %i.fb, 0
  br i1 %i.he, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.hf = mul nuw i64 %i.fb, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef %i.hf, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90253
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.bo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !90234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !90234
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath8selector8SelectorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.n), !noalias !90235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !90234
  call void @llvm.experimental.noalias.scope.decl(metadata !90255)
  call void @llvm.experimental.noalias.scope.decl(metadata !90256)
  %i.hg = icmp eq i64 %.sroa.6.i.sroa.7.i.sroa.8.0.copyload58, 0
  br i1 %i.hg, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

bb.bp:                                            ; preds = %.lr.ph
  %i.hh = icmp eq i64 %i.hj, %.sroa.6.i.sroa.7.i.sroa.8.0.copyload58
  br i1 %i.hh, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.bp
  %.sroa.0.0.i.i.i.i.i447 = phi i64 [ %i.hj, %bb.bp ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.i.sroa.7.i.sroa.7.0.copyload55, i64 %.sroa.0.0.i.i.i.i.i447
  %i.hj = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i447, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.hi)
          to label %bb.bp unwind label %bb.br, !noalias !90257, !inline_history !68

bb.bq:                                            ; preds = %.lr.ph451
  %i.hk = add i64 %.sroa.0.1.i.i.i.i.i450, 1      ; 2 uses
  %i.hl = icmp eq i64 %i.hk, %.sroa.6.i.sroa.7.i.sroa.8.0.copyload58
  br i1 %i.hl, label %.body.i.i.i.i, label %.lr.ph451

bb.br:                                            ; preds = %.lr.ph
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = icmp eq i64 %i.hj, %.sroa.6.i.sroa.7.i.sroa.8.0.copyload58
  br i1 %i.hn, label %.body.i.i.i.i, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.br, %bb.bq
  %.sroa.0.1.i.i.i.i.i450 = phi i64 [ %i.hk, %bb.bq ], [ %i.hj, %bb.br ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.i.sroa.7.i.sroa.7.0.copyload55, i64 %.sroa.0.1.i.i.i.i.i450
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ho) #73
          to label %bb.bq unwind label %bb.bs, !noalias !90257, !inline_history !68

bb.bs:                                            ; preds = %.lr.ph451
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !90258, !inline_history !68
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.bq, %bb.br
  %.val2.i.i.i.i = load i64, ptr %i.p, align 8, !range !320, !alias.scope !90259, !noalias !90234, !noundef !313 ; 2 uses
  %i.hq = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.hq, label %.body.i, label %common.resume.sink.split.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %bb.bp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc85D0lJ81Z_16lance_datafusion.exit.i.i
  %.val.i.i109.i.i = load i64, ptr %i.p, align 8, !range !320, !alias.scope !90259, !noalias !90234, !noundef !313 ; 2 uses
  %i.hr = icmp eq i64 %.val.i.i109.i.i, 0
  br i1 %i.hr, label %.thread.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i
  %i.hs = shl nuw i64 %.val.i.i109.i.i, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.7.i.sroa.7.0.copyload55, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90257, !inline_history !67
  br label %.thread.i

common.resume.sink.split.i.i:                     ; preds = %.body.i.i123.i.i, %.body.i.i.i.i
  %.val2.i.i124.sink.i.i = phi i64 [ %.val2.i.i124.i.i, %.body.i.i123.i.i ], [ %.val2.i.i.i.i, %.body.i.i.i.i ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.in, %.body.i.i123.i.i ], [ %i.hm, %.body.i.i.i.i ]
  %i.ht = shl nuw i64 %.val2.i.i124.sink.i.i, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.7.i.sroa.7.0.copyload55, i64 noundef %i.ht, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !90235
  br label %.body.i

bb.bu:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !90260)
  %i.hu = add nsw i64 %i.fy, 9223372036854775789
  %i.hv = icmp ugt i64 %i.fy, -9223372036854775790
  %i.hw = select i1 %i.hv, i64 %i.hu, i64 18
  switch i64 %i.hw, label %bb.bv [
    i64 0, label %.thread.i.i
    i64 1, label %.thread.i.i
    i64 2, label %.thread.i.i
    i64 3, label %.thread.i.i
    i64 4, label %.thread.i.i
    i64 5, label %.thread.i.i
    i64 6, label %.thread.i.i
    i64 7, label %.thread.i.i
    i64 8, label %.thread.i.i
    i64 9, label %.thread.i.i
    i64 10, label %.thread.i.i
    i64 11, label %.thread.i.i
    i64 12, label %.thread.i.i
    i64 13, label %.thread.i.i
    i64 14, label %.thread.i.i
    i64 15, label %.thread.i.i
    i64 16, label %.thread.i.i
    i64 17, label %bb.bw
  ]
end_hunk_11
begin_hunk_12_@_RNvXs1I_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_16ProjectionSelectNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a
  br i1 %i.dj, label %bb.ab, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.ab:                                            ; preds = %.lr.ph54
  %i.dk = icmp eq i64 %i.de, 3
  br i1 %i.dk, label %_RNvXseY_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit88, label %_RNvXseY_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit88.thread

_RNvXseY_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit88: ; preds = %bb.ab
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.da), !noalias !93804, !inline_history !93790
  br i1 %i.dl, label %_RNvXseY_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19GroupByWithModifierNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit88.thread, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1M_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4LikeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !325, !noundef !313
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !325, !noundef !313
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.g = load i8, ptr %i.f, align 1, !range !325, !noundef !313
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1, !range !325, !noundef !313
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !313, !noundef !313
  %i.l = load ptr, ptr %1, align 8, !nonnull !313, !noundef !313
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l)
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !313, !noundef !313
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !313, !noundef !313
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !range !539, !noundef !313 ; 2 uses
  %.not = icmp eq i32 %i.t, -1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !range !539, !noundef !313 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.a, %bb.b, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.w, %bb.g ], [ false, %bb.c ], [ %i.x, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.t, %i.v
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.v, -1
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1N_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %1, align 8, !range !492, !noundef !313 ; 4 uses
  %i.e = icmp ne i64 %i.d, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %.inv = icmp samesign ult i64 %i.d, 2
  %i.g = select i1 %.inv, i64 2, i64 %i.f
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93820)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !93820
  %i.h = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !93820 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !314

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72, !noalias !93820
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !93820, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !93821
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.f, !inline_history !93811

common.resume:                                    ; preds = %bb.l, %bb.i, %bb.f
  %.sink = phi ptr [ %i.w, %bb.l ], [ %i.n, %bb.i ], [ %i.h, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.r, %bb.i ], [ %i.l, %bb.f ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 56, i64 noundef 8) #71, !noalias !313
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !93821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !93821
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.m, align 8
  store i64 3, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93822)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !93822
  %i.n = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !93822 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit6, !prof !314

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72, !noalias !93822
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit6: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !93822, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93823
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit2 unwind label %bb.i, !inline_history !93811

bb.i:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit6
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit2: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !93823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93823
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.u, align 8
  store i64 %i.d, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.v, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93824)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !93824
  %i.w = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !93824 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit8, !prof !314

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72, !noalias !93824
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit8: ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !93824, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93825
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.z)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit4 unwind label %bb.l, !inline_history !93811

bb.l:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit8
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit4: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !93825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93825
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ab, align 8
  store i64 5, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit4, %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit2, %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1O_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr nofree readonly captures(address) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr nofree readonly captures(address) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93830)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !93829, !nonnull !313, !noundef !313 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !93829, !noundef !313 ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !93830, !nonnull !313, !noundef !313 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !93830, !noundef !313
  %i.j = icmp eq ptr %i.d, %i.g
  %i.k = icmp eq i64 %i.f, %i.i                   ; 2 uses
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = icmp eq i64 %i.f, 0
  br i1 %i.o, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.v, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.07.i.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.p, align 8, !noalias !93831, !nonnull !313, !noundef !313 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.q, align 8, !noalias !93831, !nonnull !313, !noundef !313 ; 2 uses
  %i.r = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.r, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.u = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.t), !noalias !93831
  br i1 %i.u, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %i.v = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.f
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i, %bb.b, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.y = tail call fastcc noundef zeroext i1 @_RNvXs4_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eqCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
  br i1 %i.y, label %bb.e, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.a, %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.z = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.z, label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread, label %bb.f

_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.c, %bb.e, %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, %bb.f
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ %i.ac, %bb.f ], [ true, %bb.e ], [ false, %bb.c ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val3, i64 16
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab)
  br label %_RNvXse_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1P_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !492, !noundef !313 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !492, !noundef !313 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv2 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv2, i64 2, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.k
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.h, %bb.f, %bb.b, %bb.a, %bb.i, %bb.j, %bb.k, %bb.e
  %.sroa.0.0 = phi i1 [ %i.n, %bb.e ], [ false, %bb.a ], [ %i.aa, %bb.j ], [ false, %bb.f ], [ %i.w, %bb.i ], [ true, %bb.b ], [ %i.af, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !313, !noundef !313
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !313, !noundef !313
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !313, !noundef !313
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !313, !noundef !313
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
  br i1 %i.s, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.a to i1
  %i.v = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.w = xor i1 %i.v, true
  br label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.t, align 8, !noundef !313
  %i.z = load i64, ptr %i.x, align 8, !noundef !313
  %i.aa = icmp eq i64 %i.y, %i.z
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !313, !noundef !313
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !313, !noundef !313
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1Q_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_7SetExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(3408) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3408) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.c = alloca [3408 x i8], align 8              ; 4 uses
  %i.d = alloca [1400 x i8], align 8              ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %1, align 8, !range !529, !noundef !313
  switch i8 %i.f, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
    i8 8, label %bb.p
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93855)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !93855
  %i.g = tail call noalias noundef align 8 dereferenceable_or_null(2104) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 2104, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !93855 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !314

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2104) #72, !noalias !93855
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !93855, !nonnull !313, !noundef !313
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core5clone6uninitNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectNtB2_8CopySpec9clone_oneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2104) %i.j, ptr noundef %i.g)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.d, !noalias !93855, !inline_history !93834

common.resume:                                    ; preds = %bb.aa, %bb.y, %bb.j, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.q, %bb.g ], [ %i.y, %bb.j ], [ %eh.lpad-body.i, %bb.y ], [ %i.aw, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 2104, i64 noundef 8) #71, !noalias !93855
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6SelectE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.l, align 8
  store i8 0, ptr %0, align 8
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93856)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !93856, !inline_history !592
  %i.m = tail call noalias noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !93856, !inline_history !592 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i, !prof !314

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #72, !noalias !93856, !inline_history !592
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !93856, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !93857
  invoke fastcc void @_RNvXs1w_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_5QueryNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.p)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.g, !noalias !93856, !inline_history !235

bb.g:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 1400, i64 noundef 8) #71, !noalias !93856, !inline_history !592
  br label %common.resume

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !noalias !93857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !93857
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.r, align 8
  store i8 1, ptr %0, align 8
  br label %bb.z

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93858)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !93858, !inline_history !93859
  %i.u = tail call noalias noundef align 8 dereferenceable_or_null(3408) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3408, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !93858, !inline_history !93859 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i, !prof !314

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3408) #72, !noalias !93858, !inline_history !93859
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !93858, !nonnull !313, !noundef !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !93860
end_hunk_12
begin_hunk_13_@_RNvXs2Q_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !99924, !inline_history !99910
  %i.q = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 17) 16) #71, !noalias !99924, !inline_history !99910 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.m) #72
          to label %.noexc unwind label %bb.k, !inline_history !99910

.noexc:                                           ; preds = %bb.d
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  store i64 %i.l, ptr %i.b, align 8, !noalias !99923
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.s, align 8, !noalias !99923
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.y, %bb.f ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.x, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.v, %bb.f ], [ %i.l, %.lr.ph.preheader.i ]
  %i.v = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.w = icmp eq ptr %.sroa.012.023.i, %i.u
  br i1 %i.w, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99923
  invoke fastcc void @_RNvXs12_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.012.023.i)
          to label %bb.f unwind label %bb.h, !noalias !99925, !inline_history !99910

bb.f:                                             ; preds = %bb.e
  %i.x = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 112
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.z, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !99925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99923
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph.i

bb.g:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !99925, !inline_history !99910
  unreachable

bb.h:                                             ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.t, align 8, !noalias !99923
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73
          to label %.body unwind label %bb.g, !noalias !99925, !inline_history !99910

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.h, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.ae, %bb.k ], [ %lpad.loopexit.i, %bb.h ]
  %i.ac = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !99926
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEECsc85D0lJ81Z_16lance_datafusion.exit

bb.j:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.p

bb.k:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.f, %.lr.ph.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  %i.af = phi ptr [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc85D0lJ81Z_16lance_datafusion.exit.thread.i ], [ %i.t, %.lr.ph.i ], [ %i.t, %bb.f ]
  store i64 %i.l, ptr %i.af, align 8, !noalias !99923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !99927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99923
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !313, !noundef !313
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3 = load i64, ptr %i.ah, align 8, !noundef !313 ; 4 uses
  %i.ai = shl nuw nsw i64 %.val3, 5               ; 3 uses
  %i.aj = icmp eq i64 %.val3, 0
  br i1 %i.aj, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common5spans4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !99928
  %i.ak = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, 17) 8) #71, !noalias !99928 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ai) #72
          to label %.noexc4 unwind label %bb.o

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %.val, i64 %i.ai, i1 false), !noalias !99929
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common5spans4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit

bb.o:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73
          to label %.body unwind label %bb.p

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common5spans4SpanENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.n, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.5.0 = phi ptr [ %i.ak, %bb.n ], [ inttoptr (i64 8 to ptr), %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val3, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val3, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %bb.j, %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.body, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2S_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsM_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g)
  br i1 %i.h, label %bb.c, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !313 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !313
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !313, !noundef !313
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !313, !noundef !313
  %.not3.not = icmp eq i64 %i.j, 0
  br i1 %.not3.not, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.01.0.i4 = phi i64 [ %i.u, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %.sroa.01.0.i4
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %.sroa.01.0.i4
  %i.t = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s), !inline_history !239 ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i4, 1            ; 2 uses
  %exitcond.not = icmp ne i64 %i.u, %i.j
  %or.cond.not = select i1 %i.t, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit

_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph, %bb.d, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %i.t, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2T_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !324, !noundef !313 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !324, !noundef !313
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread, label %.split

.split:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs1Jc0oVeks7E_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs1Jc0oVeks7E_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %.split, %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99940)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !325, !alias.scope !99939, !noundef !313
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !325, !alias.scope !99940, !noundef !313
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !99939, !noundef !313 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !99940, !noundef !313
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !99940, !nonnull !313, !noundef !313
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !99939, !nonnull !313, !noundef !313
  %.not17.not = icmp eq i64 %i.t, 0
  br i1 %.not17.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i618, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.0.i618 = phi i64 [ %i.ab, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.aa, i64 %.sroa.01.0.i618
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %.sroa.01.0.i618
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ad), !noalias !99941, !inline_history !99933
  br i1 %i.ae, label %bb.g, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !99939, !noundef !313 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !99940, !noundef !313
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.al = load ptr, ptr %i.ak, align 16, !alias.scope !99940, !nonnull !313, !noundef !313
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load ptr, ptr %i.am, align 16, !alias.scope !99939, !nonnull !313, !noundef !313
  %.not1319.not = icmp eq i64 %i.ag, 0
  br i1 %.not1319.not, label %._crit_edge23, label %.lr.ph22

bb.i:                                             ; preds = %.lr.ph22
  %i.ao = add nuw i64 %.sroa.01.0.i520, 1         ; 2 uses
  %exitcond30.not = icmp eq i64 %i.ao, %i.ag
  br i1 %exitcond30.not, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.h, %bb.i
  %.sroa.01.0.i520 = phi i64 [ %i.ao, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [112 x i8], ptr %i.an, i64 %.sroa.01.0.i520
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.al, i64 %.sroa.01.0.i520
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aq), !noalias !99941, !inline_history !99933
  br i1 %i.ar, label %bb.i, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

._crit_edge23:                                    ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load i64, ptr %i.as, align 16, !alias.scope !99939, !noundef !313 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.av = load i64, ptr %i.au, align 16, !alias.scope !99940, !noundef !313
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %._crit_edge23
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !99940, !nonnull !313, !noundef !313
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !99939, !nonnull !313, !noundef !313
  %.not1424.not = icmp eq i64 %i.at, 0
  br i1 %.not1424.not, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph27

bb.k:                                             ; preds = %_RNvXs2r_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4SortNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  %i.bb = add nuw i64 %.sroa.01.0.i25, 1          ; 2 uses
  %exitcond31.not = icmp eq i64 %i.bb, %i.at
  br i1 %exitcond31.not, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.j, %bb.k
  %.sroa.01.0.i25 = phi i64 [ %i.bb, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %i.ba, i64 %.sroa.01.0.i25 ; 3 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.ay, i64 %.sroa.01.0.i25 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99943)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bf = load i8, ptr %i.be, align 16, !range !325, !alias.scope !99942, !noalias !99941, !noundef !313
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bh = load i8, ptr %i.bg, align 16, !range !325, !alias.scope !99943, !noalias !99941, !noundef !313
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 113
  %i.bk = load i8, ptr %i.bj, align 1, !range !325, !alias.scope !99942, !noalias !99941, !noundef !313
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 113
  %i.bm = load i8, ptr %i.bl, align 1, !range !325, !alias.scope !99943, !noalias !99941, !noundef !313
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bn, label %_RNvXs2r_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4SortNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs2r_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4SortNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l
  %i.bo = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.bc, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.bd), !noalias !99941, !inline_history !99937
  br i1 %i.bo, label %bb.k, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.k, %bb.j
  %i.bp = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs1Jc0oVeks7E_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1), !inline_history !99938
  br i1 %i.bp, label %bb.m, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !99939, !align !347, !noundef !313 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !99940, !align !347, !noundef !313 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bu, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.split12

bb.o:                                             ; preds = %bb.m
  br i1 %i.bu, label %bb.p, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split12:                                         ; preds = %bb.n
  %i.bv = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.br, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bt), !inline_history !99938
  br i1 %i.bv, label %bb.p, label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.split12, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bx = load i8, ptr %i.bw, align 1, !range !389, !alias.scope !99939, !noundef !313 ; 2 uses
  %.not5.i = icmp eq i8 %i.bx, 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bz = load i8, ptr %i.by, align 1, !range !389, !alias.scope !99940, !noundef !313 ; 2 uses
  br i1 %.not5.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp eq i8 %i.bx, %i.bz
  br label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.p
  %i.cb = icmp eq i8 %i.bz, 2
  br label %_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs30_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph22, %.lr.ph27, %bb.l, %_RNvXs2r_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4SortNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, %bb.q, %bb.a, %bb.r, %bb.o, %bb.n, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit, %._crit_edge23, %._crit_edge, %bb.e, %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread, %.split12, %.split, %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %.split ], [ false, %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ false, %.split12 ], [ false, %.lr.ph22 ], [ %i.ca, %bb.q ], [ %i.cb, %bb.r ], [ false, %bb.n ], [ false, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit ], [ false, %._crit_edge23 ], [ false, %._crit_edge ], [ false, %bb.e ], [ false, %_RNvXs2N_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.a ], [ false, %.lr.ph27 ], [ false, %_RNvXs2r_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4SortNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ false, %bb.l ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2V_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_6SelectNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [328 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [776 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [328 x i8], align 8               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [152 x i8], align 8               ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [328 x i8], align 8               ; 4 uses
  %i.q = alloca [88 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5207 = alloca [64 x i8], align 8         ; 5 uses
  %.sroa.6209 = alloca [80 x i8], align 8         ; 4 uses
end_hunk_13
begin_hunk_14_@_RNvXs3_NtCs5E8EBwPtAkp_24datafusion_physical_plan6streamINtB5_24RecordBatchStreamAdapterINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB1t_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB4O_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB5Z_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB5Z_7convert4FromB6P_E4fromEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB2W_:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val28.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !101433 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101438
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 -4, ptr %i.bu, align 16, !noalias !101438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101438
  %i.bv = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !389, !noalias !101439, !noundef !313
  switch i8 %i.bx, label %default.unreachable [
    i8 0, label %bb.an
    i8 1, label %bb.ao
    i8 2, label %.thread8.i.i.i.i.i.i.i
  ], !prof !573

default.unreachable:                              ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bv, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsc85D0lJ81Z_16lance_datafusion)
          to label %.noexc.i36.i.i.i.i.i.i unwind label %.thread5.i.i.i.i.i.i.i, !noalias !101440

.noexc.i36.i.i.i.i.i.i:                           ; preds = %bb.an
  store i8 1, ptr %i.bw, align 8, !noalias !101439
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc.i36.i.i.i.i.i.i, %bb.am
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 68
  %i.bz = load i8, ptr %i.by, align 4, !range !325, !noalias !101441, !noundef !313 ; 2 uses
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 69 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !101441 ; 4 uses
  br i1 %i.ca, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.at unwind label %.thread5.i.i.i.i.i.i.i, !noalias !101442

bb.ar:                                            ; preds = %bb.ap
  %i.cd = add i8 %i.cc, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.sroa.33.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cd, %bb.ar ], [ %i.cc, %bb.ao ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i.i, ptr %i.cb, align 1, !noalias !101441
  br label %bb.at

.thread5.i.i.i.i.i.i.i:                           ; preds = %bb.at, %bb.aq, %bb.an
  %lpad.thr_comm.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i33.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cc, %bb.as ], [ 0, %bb.aq ]
  %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.as ], [ true, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101438
  store i24 0, ptr %i.b, align 4, !noalias !101438
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.ce)
          to label %bb.au unwind label %.thread5.i.i.i.i.i.i.i, !noalias !101442

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101438
  br i1 %.sroa.0.0.i.i9.i.i.i.i.i.i.i.i, label %bb.av, label %.thread8.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101438
  call void @llvm.experimental.noalias.scope.decl(metadata !101443)
  %i.cf = load i64, ptr %i.bu, align 16, !range !403, !alias.scope !101443, !noalias !101438, !noundef !313 ; 2 uses
  %.not.i.i34.i.i.i.i.i.i = icmp eq i64 %i.cf, -4
  br i1 %.not.i.i34.i.i.i.i.i.i, label %bb.br, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !101444)
  %.not.i.i.i35.i.i.i.i.i.i = icmp eq i64 %i.cf, -3
  br i1 %.not.i.i.i35.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB1A_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EB2G_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !noalias !101442
  br label %bb.br

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !101445)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 16, !alias.scope !101446, !noalias !101438, !noundef !313 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !101446, !noalias !101438 ; 6 uses
  %i.ci = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.ci, label %bb.br, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i) ]
  %i.cj = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !313, !noalias !101447 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void %i.cj(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i)
          to label %bb.bb unwind label %bb.bc, !noalias !101447

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !320, !invariant.load !313, !noalias !101447 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.br, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !338, !invariant.load !313, !noalias !101447
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.co) #71, !noalias !101447
  br label %bb.br

bb.bc:                                            ; preds = %bb.ba
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !320, !invariant.load !313, !noalias !101447 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !338, !invariant.load !313, !noalias !101447
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) %i.cu) #71, !noalias !101447
  br label %common.resume

.thread8.i.i.i.i.i.i.i:                           ; preds = %bb.au, %bb.am
  %.sroa.03.011.i10.off8.i.i.i.i.i.i.i = phi i8 [ %i.bz, %bb.au ], [ 0, %bb.am ]
  %.sroa.03.011.i10.off16.i.i.i.i.i.i.i = phi i8 [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ 0, %bb.am ]
  store i8 %.sroa.03.011.i10.off8.i.i.i.i.i.i.i, ptr %i.c, align 1, !noalias !101438
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.011.i10.off16.i.i.i.i.i.i.i, ptr %i.cv, align 1, !noalias !101438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i.i.i.i.i.i) ]
  %i.cw = load ptr, ptr %2, align 8, !alias.scope !101448, !nonnull !313, !align !322, !noundef !313
  %i.cx = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i.i, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !101440, !nonnull !313, !align !322, !noundef !313
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !101442, !nonnull !313, !noundef !313
  invoke void %i.da(ptr noundef nonnull %.val28.i.i.i.i.i.i, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw)
          to label %bb.be unwind label %bb.bd, !noalias !101442

bb.bd:                                            ; preds = %.thread8.i.i.i.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c)
          to label %.thread.i33.i.i.i.i.i.i unwind label %bb.bf, !noalias !101442

bb.be:                                            ; preds = %.thread8.i.i.i.i.i.i.i
  %i.dc = load i64, ptr %i.bu, align 16, !range !403, !noalias !101438, !noundef !313 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dc, -4
  br i1 %.not.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.be
  store i8 0, ptr %i.c, align 1, !noalias !101438
  %i.dd = load <2 x ptr>, ptr %i.d, align 16, !noalias !101449 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !101403
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.9.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !101449
  call void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c), !noalias !101442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101438
  switch i64 %i.dc, label %bb.bh [
    i64 -3, label %bb.bg
    i64 -2, label %bb.bj
  ]

bb.bf:                                            ; preds = %.thread.i33.i.i.i.i.i.i, %bb.bd
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !101442
  unreachable

.thread.i33.i.i.i.i.i.i:                          ; preds = %bb.bd, %.thread5.i.i.i.i.i.i.i
  %.pn4.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i, %.thread5.i.i.i.i.i.i.i ], [ %i.db, %bb.bd ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemIB11_NtB2l_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EB3r_EENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(56) %i.d) #73
          to label %common.resume unwind label %bb.bf, !noalias !101442

.critedge.i.i.i.i.i.i:                            ; preds = %bb.be
  call void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.c), !noalias !101442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101438
  br label %bb.br

bb.bg:                                            ; preds = %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !101403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i, i64 24, i1 false), !noalias !101403
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !101403, !noundef !313
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not12.i.i.i.i.i.i, label %bb.bl, label %bb.bk, !prof !314

.body.i.i.i.i.i.i:                                ; preds = %bb.bh
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = extractelement <2 x ptr> %i.dd, i64 1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  %i.dj = extractelement <2 x ptr> %i.dd, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  store i64 2, ptr %i.p, align 8, !alias.scope !101433, !noalias !101450
  %.sroa.596.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dj, ptr %.sroa.596.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !101433, !noalias !101450
  store ptr %i.di, ptr %i.bt, align 8, !alias.scope !101433, !noalias !101450
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(40) %i.l) #73
          to label %common.resume unwind label %bb.ak, !noalias !101405

bb.bh:                                            ; preds = %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !101403
  store i64 %i.dc, ptr %i.l, align 8, !noalias !101403
  %.sroa.6.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i, i64 24, i1 false), !noalias !101403
  %.sroa.7.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.9.0.copyload.i.i.i.i.i.i, ptr %.sroa.7.16..sroa_idx.i.i.i.i.i.i, align 8, !noalias !101403
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator19BackgroundIterStateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2B_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i unwind label %.body.i.i.i.i.i.i, !noalias !101451

bb.bi:                                            ; preds = %bb.bj
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store i64 4, ptr %i.p, align 8, !alias.scope !101433, !noalias !101452
  br label %common.resume

bb.bj:                                            ; preds = %_RNvXs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCscI6d9CVNmLh_4core6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB1a_6result6ResultNtB2k_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB1a_6marker4SendEL_EB3q_EEENtNtNtB1a_6future6future6Future4pollCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator19BackgroundIterStateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2B_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEEBI_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.thread2.i.i.i.i.i unwind label %bb.bi, !noalias !101453

_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.thread2.i.i.i.i.i: ; preds = %bb.bj
  store i64 4, ptr %i.p, align 8, !alias.scope !101433, !noalias !101452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !noalias !101399
  store i8 1, ptr %i.s, align 8, !alias.scope !101396
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bg
  %i.dl = call { ptr, ptr } @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5errorNtB2_9JoinError10into_panic(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.6.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4135), !noalias !101405 ; 2 uses
  %i.dm = extractvalue { ptr, ptr } %i.dl, 0
  %i.dn = extractvalue { ptr, ptr } %i.dl, 1
  call void @_RNvNtCsgczF5crJ4sT_3std5panic13resume_unwind(ptr noundef nonnull %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dn) #72, !noalias !101405
  unreachable

bb.bl:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !101403
  store ptr %i.k, ptr %i.j, align 8, !noalias !101403
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !101403
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @4136, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4137) #72
          to label %bb.bm unwind label %bb.bn, !noalias !101405

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %lpad.thr_comm.split-lp82.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #73
          to label %common.resume unwind label %bb.ak, !noalias !101405

_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i: ; preds = %bb.bh
  store i64 2, ptr %i.p, align 8, !alias.scope !101433, !noalias !101450
  %.sroa.596.0..sroa_idx97.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x ptr> %i.dd, ptr %.sroa.596.0..sroa_idx97.i.i.i.i.i.i, align 8, !alias.scope !101433, !noalias !101450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.16..sroa_idx.i.i.i.i.i.i, i64 32, i1 false), !noalias !101454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !101403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !noalias !101399
  %i.do = icmp eq i64 %i.dc, -1
  br i1 %i.do, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !101454
  call void @_RNvXs2_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !101456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101455
  br label %.critedge

bb.bp:                                            ; preds = %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.i.i.i.i.i
  store i64 %i.dc, ptr %i.r, align 8, !noalias !101454
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !101454
  br label %.critedge

bb.bq:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.bv

bb.br:                                            ; preds = %bb.av, %bb.ax, %bb.ay, %bb.bb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101438
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i), !noalias !101399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !101389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bv

.critedge:                                        ; preds = %bb.bo, %bb.bp
  %.sroa.04.0.i.i.ph = phi i64 [ 1, %bb.bo ], [ 0, %bb.bp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !101457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !101389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  store i64 %.sroa.04.0.i.i.ph, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bs

bb.bs:                                            ; preds = %.critedge, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB12_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4n_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4_7convert4FromB68_E4fromEEEB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bv

bb.bt:                                            ; preds = %_RNvXs_NtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iteratorINtB4_18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB26_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB3h_6marker4SendEL_EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextB8_.exit.thread2.i.i.i.i.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !101457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !101389
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  store i64 -1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator19BackgroundIterStateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB2B_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEEBI_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB12_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4n_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4_7convert4FromB68_E4fromEEEB2v_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(48) %i.o) #73
          to label %common.resume unwind label %bb.bw

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB12_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtB4_6result6ResultNtB4n_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4_7convert4FromB68_E4fromEEEB2v_.exit: ; preds = %bb.bt
  store i64 -1, ptr %i.p, align 8
  br label %bb.bs

bb.bv:                                            ; preds = %bb.bq, %bb.br, %bb.bs
  ret void

bb.bw:                                            ; preds = %bb.bu
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs3_NtCs5E8EBwPtAkp_24datafusion_physical_plan6streamINtB5_24RecordBatchStreamAdapterINtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream6MapErrINtNtNtB1t_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB4O_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB5Z_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB5Z_7convert4FromB6P_E4fromEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB2W_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !364, !noundef !313 ; 4 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101483)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !325, !alias.scope !101484, !noundef !313
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101486)
  %i.f = icmp ne i64 %i.b, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.b, -2
  %i.h = icmp samesign ugt i64 %i.b, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !101487, !nonnull !313, !noundef !313
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !101487, !nonnull !313, !align !322, !noundef !313
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !313, !noalias !101488, !nonnull !313
  tail call void %i.m(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %.val.i.i.i.i.i), !noalias !101487, !inline_history !101475
  br label %_RNvXsv_NtNtCs9p5Dg9WVwvP_12futures_util6stream10try_streamINtB5_6MapErrINtNtNtB7_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3x_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4I_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4I_7convert4FromB5y_E4fromENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB1F_.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !alias.scope !101489
  br label %_RNvXsv_NtNtCs9p5Dg9WVwvP_12futures_util6stream10try_streamINtB5_6MapErrINtNtNtB7_6stream4fuse4FuseINtNtNtCsc85D0lJ81Z_16lance_datafusion5utils19background_iterator18BackgroundIteratorINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCscI6d9CVNmLh_4core6result6ResultNtB3x_11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtB4I_6marker4SendEL_EEENvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorINtNtB4I_7convert4FromB5y_E4fromENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB1F_.exit

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !101490
end_hunk_14
begin_hunk_15_@_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.fs, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr3477 = phi ptr [ %i.fr, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr76 = phi ptr [ %i.fp, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.p
    i8 34, label %bb.t
    i8 35, label %bb.u
    i8 36, label %bb.v
    i8 37, label %bb.w
    i8 38, label %bb.x
    i8 39, label %bb.y
    i8 40, label %bb.z
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !355, !noundef !313
  %i.g = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !355, !noundef !313
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.aa, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !355, !noundef !313
  %i.l = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !355, !noundef !313
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !355, !noundef !313
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !355, !noundef !313
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !355, !noundef !313
  %i.v = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !355, !noundef !313
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !389, !noundef !313
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !389, !noundef !313
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !313
  %i.af = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !313
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !313
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !313
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.af, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val21 = load i64, ptr %i.bj, align 8, !noundef !313 ; 3 uses
  %.val22 = load ptr, ptr %i.bi, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val23 = load i64, ptr %i.bk, align 8, !noundef !313
  %i.bl = icmp eq ptr %.val, %.val22
  %i.bm = icmp eq i64 %.val21, %.val23            ; 2 uses
  %i.bn = and i1 %i.bl, %i.bm
  br i1 %i.bn, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103651)
  br i1 %i.bm, label %bb.o, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp eq i64 %.val21, 0
  br i1 %i.bq, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i
  %.sroa.01.07.i.i.i.i = phi i64 [ %i.bx, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.sroa.01.07.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.01.07.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !103650, !nonnull !313, !noundef !313 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !103651, !nonnull !313, !noundef !313 ; 2 uses
  %i.bt = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.bt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bv), !noalias !103652
  br i1 %i.bw, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bx = add nuw nsw i64 %.sroa.01.07.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %.val21
  br i1 %exitcond.not.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val24 = load ptr, ptr %i.by, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val25 = load i64, ptr %i.ca, align 8, !noundef !313 ; 3 uses
  %.val26 = load ptr, ptr %i.bz, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val27 = load i64, ptr %i.cb, align 8, !noundef !313
  %i.cc = icmp eq ptr %.val24, %.val26
  %i.cd = icmp eq i64 %.val25, %.val27            ; 2 uses
  %i.ce = and i1 %i.cc, %i.cd
  br i1 %i.ce, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103654)
  br i1 %i.cd, label %bb.r, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i64 %.val25, 0
  br i1 %i.ch, label %.loopexit, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %bb.r, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread9.i.i.i.i
  %.sroa.01.011.i.i.i.i = phi i64 [ %i.cq, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread9.i.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %.val.i.i.i.i30 = load i8, ptr %i.ci, align 1, !alias.scope !103653, !noundef !313
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val5.i.i.i.i31 = load ptr, ptr %i.ck, align 8, !alias.scope !103653 ; 3 uses
  %.val6.i.i.i.i = load i8, ptr %i.cj, align 1, !alias.scope !103654, !noundef !313
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val7.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !103654 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i30, %.val6.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i.i29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i31) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i) ]
  %i.cm = icmp eq ptr %.val5.i.i.i.i31, %.val7.i.i.i.i
  br i1 %i.cm, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread9.i.i.i.i, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i: ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i31, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 16
  %i.cp = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.co), !noalias !103655
  br i1 %i.cp, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread9.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread9.i.i.i.i: ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i, %bb.s
  %i.cq = add nuw nsw i64 %.sroa.01.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.cq, %.val25
  br i1 %exitcond.not.i.i.i.i32, label %.loopexit, label %.lr.ph.i.i.i.i29

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !313, !noundef !313
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !313, !noundef !313
  %i.cv = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
  br i1 %i.cv, label %tailrecurse, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !313
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !313
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.aj, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !noundef !313
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !noundef !313
  %i.df = icmp eq i8 %i.dc, %i.de
  br i1 %i.df, label %bb.ak, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !313
  %i.di = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !noundef !313
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !313
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noundef !313
  %i.dp = icmp eq i8 %i.dm, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !range !325, !noundef !313
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !325, !noundef !313
  %i.du = icmp eq i8 %i.dr, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.aq, label %bb.ap

bb.aa:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !313 ; 3 uses
  %.not = icmp eq ptr %i.eb, null                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noundef !313 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  %brmerge186 = or i1 %.not, %i.ee
  %.mux = and i1 %.not, %i.ee
  br i1 %brmerge186, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.eh = load i64, ptr %i.ef, align 8, !noundef !313 ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !noundef !313
  %i.ej = icmp eq ptr %i.eb, %i.ed                ; 2 uses
  %i.ek = icmp eq i64 %i.eh, %i.ei                ; 2 uses
  %i.el = and i1 %i.ej, %i.ek
  %.not20 = xor i1 %i.ek, true
  %brmerge = or i1 %i.ej, %.not20
  br i1 %brmerge, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.em, i64 %i.eh)
  %i.eo = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.er = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eq)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eu = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.et)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ff = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fe)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fi = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fh)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.loopexit:                                        ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit.thread9.i.i.i.i, %bb.p, %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !range !325, !noundef !313
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !325, !noundef !313
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.fs = load i8, ptr %i.fp, align 8, !range !462, !noundef !313 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 8, !range !462, !noundef !313
  %i.fu = icmp eq i8 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !noundef !313
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !noundef !313
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gb = load i8, ptr %i.ga, align 2, !noundef !313
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gd = load i8, ptr %i.gc, align 2, !noundef !313
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gg = load i8, ptr %i.gf, align 2, !noundef !313
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gi = load i8, ptr %i.gh, align 2, !noundef !313
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gl = load i8, ptr %i.gk, align 2, !noundef !313
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gn = load i8, ptr %i.gm, align 2, !noundef !313
  %i.go = icmp eq i8 %i.gl, %i.gn
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !313, !noundef !313 ; 2 uses
  %i.gt = icmp eq ptr %i.gq, %i.gs
  br i1 %i.gt, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gv)
end_hunk_15
begin_hunk_16_@_RNvXsK_NtNtCs40MM8ukkVQd_9sqlparser3ast3dmlNtB5_5MergeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a
  %.mux = and i1 %.not, %i.gb
  br i1 %brmerge, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread30, label %bb.am

_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread30: ; preds = %_RNvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit, %_RNvXs1q_NtNtCs40MM8ukkVQd_9sqlparser3ast3dmlNtB6_15MergeInsertKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i, %bb.w, %bb.ai, %bb.aj, %bb.al, %.split25, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.i.thread, %bb.t, %bb.u, %bb.v, %.split, %bb.j, %.lr.ph64, %bb.k, %bb.l, %bb.o, %bb.x, %.split95, %.split96, %.split97, %bb.ac, %bb.ab, %.lr.ph55, %_RNvXsjc_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10AssignmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, %.lr.ph61, %.lr.ph, %.lr.ph52, %.lr.ph58, %.lr.ph49, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread, %bb.c, %bb.f, %bb.a, %bb.b, %bb.d, %bb.e, %bb.g, %bb.am
  %.sroa.0.0.shrunk = phi i1 [ %i.gc, %bb.am ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.ac ], [ false, %bb.f ], [ %.mux, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ false, %.lr.ph58 ], [ false, %.lr.ph61 ], [ false, %.lr.ph49 ], [ false, %.lr.ph52 ], [ false, %_RNvXsjc_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10AssignmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph55 ], [ false, %bb.ab ], [ false, %.split97 ], [ false, %.split96 ], [ false, %.split95 ], [ false, %bb.x ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.k ], [ false, %.lr.ph64 ], [ false, %bb.j ], [ false, %.split ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.i.thread ], [ false, %.split25 ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.w ], [ false, %_RNvXs1q_NtNtCs40MM8ukkVQd_9sqlparser3ast3dmlNtB6_15MergeInsertKindNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i ], [ false, %_RNvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc85D0lJ81Z_16lance_datafusion.exit ]
  ret i1 %.sroa.0.0.shrunk

bb.am:                                            ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %i.gc = tail call fastcc noundef zeroext i1 @_RNvXs1U_NtNtCs40MM8ukkVQd_9sqlparser3ast3dmlNtB6_12OutputClauseNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.fz)
  br label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion.exit.thread30
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsL_NtCsc85D0lJ81Z_16lance_datafusion2pbNtB5_10FieldIdSetNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2748, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2750, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2749)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsM_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !464, !noundef !313 ; 3 uses
  %i.b = icmp ne i64 %i.a, 31
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -11
  %i.d = icmp samesign ugt i64 %i.a, 10
  %i.e = select i1 %i.d, i64 %i.c, i64 20         ; 2 uses
  %i.f = load i64, ptr %1, align 16, !range !464, !noundef !313 ; 3 uses
  %i.g = icmp ne i64 %i.f, 31
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.l = phi i64 [ %i.cw, %tailrecurse ], [ %i.e, %bb.a ]
  %.tr1694 = phi ptr [ %i.cr, %tailrecurse ], [ %1, %bb.a ] ; 42 uses
  %.tr93 = phi ptr [ %i.cq, %tailrecurse ], [ %0, %bb.a ] ; 42 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %bb.z
    i64 14, label %bb.aa
    i64 15, label %bb.ab
    i64 16, label %bb.ak
    i64 17, label %bb.al
    i64 18, label %bb.am
    i64 19, label %bb.an
    i64 20, label %bb.ao
    i64 21, label %bb.ap
    i64 22, label %bb.aq
    i64 23, label %bb.ar
    i64 24, label %bb.as
  ]

_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.split15, %.split, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit, %bb.a, %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.p, %bb.o, %bb.n, %bb.l, %._crit_edge, %bb.j, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aa, %bb.z, %bb.r, %bb.q, %bb.m, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.ah ], [ %i.bj, %bb.m ], [ false, %bb.aw ], [ %i.bv, %bb.q ], [ %i.by, %bb.r ], [ true, %bb.o ], [ %i.df, %bb.z ], [ %i.di, %bb.aa ], [ false, %bb.af ], [ %i.fa, %bb.ak ], [ %i.fd, %bb.al ], [ %i.fg, %bb.am ], [ %i.fj, %bb.an ], [ %i.fk, %bb.ao ], [ %i.fn, %bb.ap ], [ %i.fs, %bb.aq ], [ %i.fv, %bb.ar ], [ true, %bb.ai ], [ true, %._crit_edge ], [ %i.bg, %bb.l ], [ false, %bb.j ], [ false, %bb.n ], [ %i.bs, %bb.p ], [ false, %bb.au ], [ true, %bb.az ], [ %i.hi, %bb.ba ], [ false, %bb.at ], [ false, %bb.as ], [ false, %bb.ay ], [ false, %bb.a ], [ false, %bb.ad ], [ %i.ex, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit ], [ false, %.split15 ], [ false, %bb.x ], [ false, %bb.w ], [ false, %.split ], [ false, %bb.u ], [ false, %bb.t ], [ false, %tailrecurse ], [ true, %bb.y ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1a_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr93, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1694, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1n_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2A_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2G_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr93, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1694, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2N_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1B_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107668)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr93, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !107667, !noundef !313 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1694, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !107668, !noundef !313
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1694, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !107668, !nonnull !313, !noundef !313
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr93, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !107667, !nonnull !313, !noundef !313
  %.not106.not = icmp eq i64 %i.ai, 0
  br i1 %.not106.not, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.k, %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit.thread
  %.sroa.01.0.i107 = phi i64 [ %i.ay, %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit.thread ], [ 0, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.01.0.i107
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.0.i107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107670)
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !107669, !noalias !107671, !nonnull !313, !noundef !313 ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !107670, !noalias !107671, !nonnull !313, !noundef !313 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit

_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.lr.ph108
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXsM_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.av, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.aw), !noalias !107672, !inline_history !107653
  br i1 %i.ax, label %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %.lr.ph108, %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit
  %i.ay = add nuw i64 %.sroa.01.0.i107, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph108

._crit_edge:                                      ; preds = %_RNvXsP_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCsc85D0lJ81Z_16lance_datafusion.exit.thread, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.tr93, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !107667, !nonnull !313, !noundef !313 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1694, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !107668, !nonnull !313, !noundef !313 ; 2 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bf), !noalias !107671, !inline_history !107654
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.bj = tail call noundef zeroext i1 @_RNvXsg_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bi)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %.val = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr93, i64 16
  %.val2 = load i8, ptr %i.bm, align 8, !range !325, !noundef !313
  %.val3 = load ptr, ptr %i.bl, align 8           ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr1694, i64 16
  %.val4 = load i8, ptr %i.bn, align 8, !range !325, !noundef !313
  %i.bo = icmp eq i8 %.val2, %.val4
  br i1 %i.bo, label %bb.o, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.bp = icmp eq ptr %.val, %.val3
  br i1 %i.bp, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.bs = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.br)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.bv = tail call fastcc noundef zeroext i1 @_RNvXs2S_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bu)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.by = tail call fastcc noundef zeroext i1 @_RNvXs1h_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bx)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107674)
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr93, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !107673, !align !347, !noundef !313 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1694, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !107674, !align !347, !noundef !313 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null                 ; 2 uses
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.cf, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.split

bb.u:                                             ; preds = %bb.s
  br i1 %i.cf, label %bb.v, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.t
  %i.cg = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cc, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ce), !noalias !107675, !inline_history !107658
  br i1 %i.cg, label %bb.v, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.split, %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr93, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !107673, !align !347, !noundef !313 ; 2 uses
  %.not5.i = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr1694, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !107674, !align !347, !noundef !313 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null                 ; 2 uses
  br i1 %.not5.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.cl, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.split15

bb.x:                                             ; preds = %bb.v
  br i1 %i.cl, label %bb.y, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.split15:                                         ; preds = %bb.w
  %i.cm = tail call fastcc noundef zeroext i1 @_RNvXs14_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ci, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ck), !noalias !107675, !inline_history !107658
  br i1 %i.cm, label %bb.y, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.split15, %bb.x
  %i.cn = load ptr, ptr %i.bz, align 8, !alias.scope !107673, !nonnull !313, !noundef !313 ; 2 uses
  %i.co = load ptr, ptr %i.ca, align 8, !alias.scope !107674, !nonnull !313, !noundef !313 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cq, align 16, !range !464, !noundef !313 ; 3 uses
  %i.ct = icmp ne i64 %i.cs, 31
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = add nsw i64 %i.cs, -11
  %i.cv = icmp samesign ugt i64 %i.cs, 10
  %i.cw = select i1 %i.cv, i64 %i.cu, i64 20      ; 2 uses
  %i.cx = load i64, ptr %i.cr, align 16, !range !464, !noundef !313 ; 3 uses
  %i.cy = icmp ne i64 %i.cx, 31
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = add nsw i64 %i.cx, -11
  %i.da = icmp samesign ugt i64 %i.cx, 10
  %i.db = select i1 %i.da, i64 %i.cz, i64 20
  %i.dc = icmp eq i64 %i.cw, %i.db
  br i1 %i.dc, label %.lr.ph, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.df = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.de)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.di = tail call fastcc noundef zeroext i1 @_RNvXs15_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dh)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107677)
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr93, i64 48
  %i.dk = load i8, ptr %i.dj, align 8, !range !325, !alias.scope !107676, !noundef !313
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr1694, i64 48
  %i.dm = load i8, ptr %i.dl, align 8, !range !325, !alias.scope !107677, !noundef !313
  %i.dn = icmp eq i8 %i.dk, %i.dm
  br i1 %i.dn, label %bb.ac, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %.tr93, i64 49
  %i.dp = load i8, ptr %i.do, align 1, !range !325, !alias.scope !107676, !noundef !313
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr1694, i64 49
  %i.dr = load i8, ptr %i.dq, align 1, !range !325, !alias.scope !107677, !noundef !313
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.ad, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr93, i64 50
  %i.du = load i8, ptr %i.dt, align 2, !range !355, !alias.scope !107676, !noundef !313
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr1694, i64 50
  %i.dw = load i8, ptr %i.dv, align 2, !range !355, !alias.scope !107677, !noundef !313
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %bb.ae, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr93, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !107676, !nonnull !313, !noundef !313 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr1694, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !107677, !nonnull !313, !noundef !313 ; 2 uses
  %i.ec = icmp eq ptr %i.dz, %i.eb
  br i1 %i.ec, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = tail call fastcc noundef zeroext i1 @_RNvXsM_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ed, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ee), !noalias !107678, !inline_history !107662
  br i1 %i.ef, label %bb.ag, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr93, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !107676, !noundef !313 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1694, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !107677, !noundef !313
  %i.ek = icmp eq i64 %i.eh, %i.ej
  br i1 %i.ek, label %bb.ah, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1694, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !107677, !nonnull !313, !noundef !313
  %i.en = getelementptr inbounds nuw i8, ptr %.tr93, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !107676, !nonnull !313, !noundef !313
  %i.ep = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCscI6d9CVNmLh_4core5slice3cmpNtNtCs2bHstFFhpHt_17datafusion_common7display15StringifiedPlanINtB5_14SlicePartialEqBC_E17equal_same_lengthCsc85D0lJ81Z_16lance_datafusion(ptr noundef %i.eo, ptr noundef %i.em, i64 noundef %i.eh), !noalias !107678, !inline_history !107662
  br i1 %i.ep, label %bb.ai, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %.tr93, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !107676, !nonnull !313, !noundef !313 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.tr1694, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !107677, !nonnull !313, !noundef !313 ; 2 uses
  %i.eu = icmp eq ptr %i.er, %i.et
  br i1 %i.eu, label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ew), !noalias !107678, !inline_history !107662
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXs26_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %.lr.ph
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.fd = tail call noundef zeroext i1 @_RNvXss_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_9ExtensionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fc)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %.lr.ph
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.fg = tail call fastcc noundef zeroext i1 @_RNvXs2n_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ff)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %.lr.ph
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
  %i.fj = tail call noundef zeroext i1 @_RNvXs6_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fi)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fk = tail call fastcc noundef zeroext i1 @_RNvXsg_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %.tr93, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %.tr1694)
  br label %_RNvXs1I_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr93, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.tr1694, i64 8
end_hunk_16
