Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json:bb.a
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.an, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7845)
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !7845, !noalias !7844 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i, 0
  br i1 %i.al, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i = load ptr, ptr %i.am, align 8, !alias.scope !7845, !noalias !7844, !nonnull !10, !noundef !10
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !7846
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = load i8, ptr %i.ao, align 8, !range !20, !alias.scope !7843, !noalias !7842, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !7843, !noalias !7842, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.at = load i8, ptr %i.as, align 1, !range !20, !alias.scope !7843, !noalias !7842, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7844
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au)
          to label %_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit unwind label %bb.k, !noalias !7842

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %bb.g unwind label %bb.l, !noalias !7842

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7842
  unreachable

common.resume:                                    ; preds = %bb.ao, %bb.al, %.body, %bb.w, %bb.s, %bb.o, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.dw, %bb.al ], [ %.pn.i, %bb.g ], [ %i.bj, %bb.o ], [ %i.bt, %bb.s ], [ %i.cg, %bb.w ], [ %eh.lpad-body26, %.body ], [ %.pn.i, %bb.h ], [ %i.eg, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !7843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !7843
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !7843
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.ap, ptr %i.az, align 8, !alias.scope !7842, !noalias !7843
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ar, ptr %i.ba, align 8, !alias.scope !7842, !noalias !7843
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.at, ptr %i.bb, align 1, !alias.scope !7842, !noalias !7843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7844
  br label %bb.aq

bb.m:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json19is_arrow_json_field.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.be)
  store i64 1, ptr %i.m, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.bg, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7847
  %i.bh = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7847 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.n, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit10, !prof !11

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m) #37
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit10: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bh, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bh, ptr %i.bl, align 8
  store i8 27, ptr %i.o, align 8
  br label %bb.an

bb.q:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json19is_arrow_json_field.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !10, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bo)
  store i64 1, ptr %i.k, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.bq, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7848
  %i.br = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7848 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.r, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit9, !prof !11

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc11 unwind label %bb.s

.noexc11:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.k) #37
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit9: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.br, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.br, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.bw, ptr %i.by, align 4
  store i8 29, ptr %i.o, align 8
  br label %bb.an

bb.u:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json19is_arrow_json_field.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !10, !noundef !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cb)
  store i64 1, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.cd, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7849
  %i.ce = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7849 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit8, !prof !11

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc13 unwind label %bb.w

.noexc13:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.l) #37
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit8: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ce, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ce, ptr %i.ci, align 8
  store i8 30, ptr %i.o, align 8
  br label %bb.an

bb.y:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json19is_arrow_json_field.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !10, !noundef !10
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !10 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7850
  %i.co = shl nuw nsw i64 %i.cm, 3                ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cm, 1152921504606846975
  br i1 %.not.i.i, label %bb.ab, label %bb.z, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.cp = icmp eq i64 %i.cm, 0
  br i1 %i.cp, label %.noexc20.thread, label %bb.aa

.noexc20.thread:                                  ; preds = %bb.z
  store i64 0, ptr %i.f, align 8, !noalias !7850
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cq, align 8, !noalias !7850
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.cr, align 8, !noalias !7850
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0EE9from_iterB3Y_.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7851
  %i.cs = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.co, i64 noundef range(i64 1, 9) 8) #39, !noalias !7851 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ab, label %.preheader

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.sroa.10.0.ph.i = phi i64 [ %i.co, %bb.aa ], [ undef, %bb.y ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.aa ], [ 0, %bb.y ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #36, !noalias !7850
  unreachable

.preheader:                                       ; preds = %bb.aa
  store i64 %i.cm, ptr %i.f, align 8, !noalias !7850
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cs, ptr %i.cu, align 8, !noalias !7850
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i
  %.sroa.6.0 = phi i64 [ %i.dh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i ], [ 0, %.preheader ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.6.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7852)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7853
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !7852, !noalias !7854, !nonnull !10, !noundef !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  invoke void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.db)
          to label %.noexc24 unwind label %bb.ac, !inline_history !7827

.noexc24:                                         ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7853
  store i64 1, ptr %i.a, align 8, !noalias !7853
  store i64 1, ptr %i.cw, align 8, !noalias !7853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cx, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !7853
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7855, !inline_history !7827
  %i.dc = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7855, !inline_history !7827 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ae, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i, !prof !11

bb.ae:                                            ; preds = %.noexc24
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc.i unwind label %bb.af, !noalias !7853, !inline_history !7827

.noexc.i:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #37
          to label %.body unwind label %bb.ag, !noalias !7853, !inline_history !7827

bb.ag:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7853, !inline_history !7827
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i: ; preds = %.noexc24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dc, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !7853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7853
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sroa.6.0
  store ptr %i.dc, ptr %i.dg, align 8, !noalias !7856
  %i.dh = add nuw i64 %.sroa.6.0, 1               ; 2 uses
  %i.di = icmp eq i64 %i.dh, %i.cm
  br i1 %i.di, label %bb.ah, label %bb.ad

bb.ah:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i
  store i64 %i.cm, ptr %i.cv, align 8, !noalias !7854
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0EE9from_iterB3Y_.exit

.body:                                            ; preds = %bb.ac, %bb.af
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.cy, %bb.ac ], [ %i.de, %bb.af ]
  store i64 %.sroa.6.0, ptr %i.cv, align 8, !noalias !7854
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.f) #37
          to label %common.resume unwind label %bb.ai, !noalias !7850, !inline_history !7834

bb.ai:                                            ; preds = %.body
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7850, !inline_history !7834
  unreachable

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0EE9from_iterB3Y_.exit: ; preds = %.noexc20.thread, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7850
  %i.dk = call { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n) ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.dl, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.dm, ptr %i.do, align 8
  store i8 32, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.an

bb.aj:                                            ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json19is_arrow_json_field.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !10, !noundef !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dr)
  store i64 1, ptr %i.j, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.dt, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7857
  %i.du = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7857 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ak, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit, !prof !11

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc16 unwind label %bb.al

.noexc16:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j) #37
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.du, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dz = load i8, ptr %i.dy, align 1, !range !20, !noundef !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.du, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.dz, ptr %i.eb, align 1
  store i8 39, ptr %i.o, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24arrow_json_to_lance_json0EE9from_iterB3Y_.exit, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit8, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit9, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit10
  call void @llvm.experimental.noalias.scope.decl(metadata !7858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7859
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ed = load i8, ptr %i.ec, align 8, !range !20, !alias.scope !7858, !noalias !7860, !noundef !10
  %i.ee = trunc nuw i8 %i.ed to i1
  call fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newRNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, i1 noundef zeroext %i.ee), !noalias !7861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7859
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ef)
          to label %_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type.exit unwind label %bb.ao, !noalias !7860

bb.ao:                                            ; preds = %bb.an
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.e) #37
          to label %common.resume unwind label %bb.ap, !noalias !7860

bb.ap:                                            ; preds = %bb.ao
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7860
  unreachable

_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type.exit: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !7859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7859
  call void @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5Field13with_metadata(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !noalias !7862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7859
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type.exit, %_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.e
end_hunk_0
begin_hunk_1_@_RNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json:bb.a
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.am, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7904)
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !7904, !noalias !7903 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i, 0
  br i1 %i.ak, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i = load ptr, ptr %i.al, align 8, !alias.scope !7904, !noalias !7903, !nonnull !10, !noundef !10
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !7905
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i8, ptr %i.an, align 8, !range !20, !alias.scope !7902, !noalias !7901, !noundef !10
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !7902, !noalias !7901, !noundef !10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.as = load i8, ptr %i.ar, align 1, !range !20, !alias.scope !7902, !noalias !7901, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7903
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit unwind label %bb.j, !noalias !7901

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %bb.f unwind label %bb.k, !noalias !7901

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7901
  unreachable

common.resume:                                    ; preds = %bb.an, %bb.ak, %.body, %bb.v, %bb.r, %bb.n, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %bb.ak ], [ %.pn.i, %bb.f ], [ %i.bi, %bb.n ], [ %i.bs, %bb.r ], [ %i.cf, %bb.v ], [ %eh.lpad-body26, %.body ], [ %.pn.i, %bb.g ], [ %i.ef, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !7902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !7902
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !7902
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.ao, ptr %i.ay, align 8, !alias.scope !7901, !noalias !7902
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.aq, ptr %i.az, align 8, !alias.scope !7901, !noalias !7902
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.as, ptr %i.ba, align 1, !alias.scope !7901, !noalias !7902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7903
  br label %bb.ap

bb.l:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json13is_json_field.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !10, !noundef !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bd)
  store i64 1, ptr %i.m, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.bf, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7906
  %i.bg = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7906 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.m, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit10, !prof !11

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m) #37
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit10: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %i.m, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bg, ptr %i.bk, align 8
  store i8 27, ptr %i.o, align 8
  br label %bb.am

bb.p:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json13is_json_field.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !10, !noundef !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bn)
  store i64 1, ptr %i.k, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.bp, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7907
  %i.bq = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7907 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.q, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit9, !prof !11

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.k) #37
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit9: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bq, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bq, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.bv, ptr %i.bx, align 4
  store i8 29, ptr %i.o, align 8
  br label %bb.am

bb.t:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json13is_json_field.exit.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !10, !noundef !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ca)
  store i64 1, ptr %i.l, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.cc, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7908
  %i.cd = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7908 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.u, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit8, !prof !11

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc13 unwind label %bb.v

.noexc13:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.l) #37
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit8: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cd, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cd, ptr %i.ch, align 8
  store i8 30, ptr %i.o, align 8
  br label %bb.am

bb.x:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json13is_json_field.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !10, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !10 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7909
  %i.cn = shl nuw nsw i64 %i.cl, 3                ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cl, 1152921504606846975
  br i1 %.not.i.i, label %bb.aa, label %bb.y, !prof !27

bb.y:                                             ; preds = %bb.x
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %.noexc20.thread, label %bb.z

.noexc20.thread:                                  ; preds = %bb.y
  store i64 0, ptr %i.f, align 8, !noalias !7909
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cp, align 8, !noalias !7909
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.cq, align 8, !noalias !7909
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0EE9from_iterB3Y_.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7910
  %i.cr = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.cn, i64 noundef range(i64 1, 9) 8) #39, !noalias !7910 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.aa, label %.preheader

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.sroa.10.0.ph.i = phi i64 [ %i.cn, %bb.z ], [ undef, %bb.x ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.z ], [ 0, %bb.x ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #36, !noalias !7909
  unreachable

.preheader:                                       ; preds = %bb.z
  store i64 %i.cl, ptr %i.f, align 8, !noalias !7909
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !noalias !7909
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i
  %.sroa.6.0 = phi i64 [ %i.dg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i ], [ 0, %.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.sroa.6.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7912
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !7911, !noalias !7913, !nonnull !10, !noundef !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  invoke void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.da)
          to label %.noexc24 unwind label %bb.ab, !inline_history !7886

.noexc24:                                         ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7912
  store i64 1, ptr %i.a, align 8, !noalias !7912
  store i64 1, ptr %i.cv, align 8, !noalias !7912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cw, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !7912
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7914, !inline_history !7886
  %i.db = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7914, !inline_history !7886 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ad, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i, !prof !11

bb.ad:                                            ; preds = %.noexc24
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc.i unwind label %bb.ae, !noalias !7912, !inline_history !7886

.noexc.i:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #37
          to label %.body unwind label %bb.af, !noalias !7912, !inline_history !7886

bb.af:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7912, !inline_history !7886
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i: ; preds = %.noexc24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.db, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !7912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7912
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.6.0
  store ptr %i.db, ptr %i.df, align 8, !noalias !7915
  %i.dg = add nuw i64 %.sroa.6.0, 1               ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.cl
  br i1 %i.dh, label %bb.ag, label %bb.ac

bb.ag:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEBV_uNCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0B2m_.exit.i.i
  store i64 %i.cl, ptr %i.cu, align 8, !noalias !7913
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0EE9from_iterB3Y_.exit

.body:                                            ; preds = %bb.ab, %bb.ae
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.cx, %bb.ab ], [ %i.dd, %bb.ae ]
  store i64 %.sroa.6.0, ptr %i.cu, align 8, !noalias !7913
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.f) #37
          to label %common.resume unwind label %bb.ah, !noalias !7909, !inline_history !7893

bb.ah:                                            ; preds = %.body
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7909, !inline_history !7893
  unreachable

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0EE9from_iterB3Y_.exit: ; preds = %.noexc20.thread, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7909
  %i.dj = call { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n) ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.dk, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.dl, ptr %i.dn, align 8
  store i8 32, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.am

bb.ai:                                            ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json13is_json_field.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !10, !noundef !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dq)
  store i64 1, ptr %i.j, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ds, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !7916
  %i.dt = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !7916 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.aj, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit, !prof !11

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc16 unwind label %bb.ak

.noexc16:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j) #37
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dt, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dy = load i8, ptr %i.dx, align 1, !range !20, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.dt, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.dy, ptr %i.ea, align 1
  store i8 39, ptr %i.o, align 8
  br label %bb.am

bb.am:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtCsc2V0exE7CWf_11lance_arrow4json24lance_json_to_arrow_json0EE9from_iterB3Y_.exit, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit8, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit9, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE3newCsc2V0exE7CWf_11lance_arrow.exit10
  call void @llvm.experimental.noalias.scope.decl(metadata !7917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7918
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ec = load i8, ptr %i.eb, align 8, !range !20, !alias.scope !7917, !noalias !7919, !noundef !10
  %i.ed = trunc nuw i8 %i.ec to i1
  call fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newRNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, i1 noundef zeroext %i.ed), !noalias !7920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7918
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ee)
          to label %_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type.exit unwind label %bb.an, !noalias !7919

bb.an:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.e) #37
          to label %common.resume unwind label %bb.ao, !noalias !7919

bb.ao:                                            ; preds = %bb.an
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !7919
  unreachable

_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type.exit: ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !7918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7918
  call void @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5Field13with_metadata(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d), !noalias !7921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7918
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type.exit, %_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.d
end_hunk_1
begin_hunk_2_@_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_batch:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_nulls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8544)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8544, !noalias !8545, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8544, !noalias !8545, !noundef !10
  call void @_RNvXs4_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e), !noalias !8544
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  call void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.g, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy16deep_copy_buffer(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  tail call void @_RNvXs4_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [184 x i8], align 8               ; 14 uses
  %i.i = alloca [184 x i8], align 8               ; 3 uses
  %i.j = alloca [184 x i8], align 8               ; 4 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !noundef !10
  %.not = icmp eq ptr %i.r, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8599
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8600, !noalias !8601, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !8600, !noalias !8601, !noundef !10
  invoke void @_RNvXs4_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !8598, !noalias !8597, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !8598, !noalias !8597, !noundef !10
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.x, i64 noundef %i.z)
          to label %.noexc17 unwind label %bb.d

.noexc17:                                         ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !8598, !noalias !8597, !noundef !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8597, !noalias !8598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8599
  br label %_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_nulls.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.l, align 8, !alias.scope !8597, !noalias !8598
  br label %_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_nulls.exit

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_nulls.exit: ; preds = %bb.c, %.noexc17
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !10, !noundef !10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8602
  %.idx = mul nuw nsw i64 %i.ai, 24               ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i, label %bb.e

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i: ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_nulls.exit
  store i64 0, ptr %i.d, align 8, !noalias !8602
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !noalias !8602
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.loopexit

bb.e:                                             ; preds = %_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy15deep_copy_nulls.exit
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !8603
  %i.am = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #39, !noalias !8603 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.f, label %.preheader.i.i.preheader.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #36
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %bb.f
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %bb.e
  store i64 %i.ai, ptr %i.d, align 8, !noalias !8602
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !noalias !8602
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8604)
  call void @llvm.experimental.noalias.scope.decl(metadata !8605)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g, %.preheader.i.i.preheader.i
  %.val15.i.i.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.val15.i.i.i.i.i.i ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !8606, !noalias !8607, !noundef !10
  %i.as = getelementptr i8, ptr %i.aq, i64 16
  %.val17.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !8606, !noalias !8607, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8608
  invoke void @_RNvXs4_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i.i.i.i.i.i, i64 noundef %.val17.i.i.i.i.i.i)
          to label %bb.g unwind label %.body.i, !noalias !8609

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.val15.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8610
  %i.au = add nuw i64 %.val15.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8608
  %i.av = icmp eq i64 %i.au, %i.ai
  br i1 %i.av, label %.loopexit, label %.preheader.i.i.i

.body.i:                                          ; preds = %.preheader.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !8611, !noalias !8612
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.d) #37
          to label %.thread50 unwind label %bb.h, !noalias !8602

bb.h:                                             ; preds = %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !8602
  unreachable

bb.i:                                             ; preds = %.thread54
  br i1 %.sroa.03.159, label %.thread50, label %.thread

bb.j:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread50

.loopexit:                                        ; preds = %bb.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i
  %i.az = phi ptr [ %i.al, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.thread.i ], [ %i.ap, %bb.g ]
  store i64 %i.ai, ptr %i.az, align 8, !alias.scope !8611, !noalias !8612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8602
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !10 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8613
  %i.be = mul nuw nsw i64 %i.bd, 136              ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bd, 67818912035696880
  br i1 %.not.i.i, label %bb.m, label %bb.k, !prof !27

bb.k:                                             ; preds = %.loopexit
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %.noexc25.thread, label %bb.l

.noexc25.thread:                                  ; preds = %bb.k
  store i64 0, ptr %i.b, align 8, !noalias !8613
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bg, align 8, !noalias !8613
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bh, align 8, !noalias !8613
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !8614
  %i.bi = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.be, i64 noundef range(i64 1, 9) 8) #39, !noalias !8614 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.m, label %.preheader.preheader

bb.m:                                             ; preds = %bb.l, %.loopexit
  %.sroa.10.0.ph.i = phi i64 [ %i.be, %bb.l ], [ undef, %.loopexit ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.l ], [ 0, %.loopexit ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #36
          to label %.noexc27 unwind label %bb.q

.noexc27:                                         ; preds = %bb.m
  unreachable

.preheader.preheader:                             ; preds = %bb.l
  store i64 %i.bd, ptr %i.b, align 8, !noalias !8613
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bi, ptr %i.bk, align 8, !noalias !8613
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataBV_uNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_dataNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3N_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1I_EE0E0E0B1M_.exit.i.i
  %.sroa.6.0 = phi i64 [ %i.bo, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataBV_uNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_dataNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3N_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1I_EE0E0E0B1M_.exit.i.i ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [136 x i8], ptr %i.bb, i64 %.sroa.6.0
  invoke void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bm)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataBV_uNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_dataNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3N_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1I_EE0E0E0B1M_.exit.i.i unwind label %.body29, !inline_history !8579

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataBV_uNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_dataNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3N_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1I_EE0E0E0B1M_.exit.i.i: ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw [136 x i8], ptr %i.bi, i64 %.sroa.6.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  %i.bo = add nuw i64 %.sroa.6.0, 1               ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.bd
  br i1 %i.bp, label %bb.n, label %.preheader

bb.n:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataBV_uNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy20deep_copy_array_dataNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3N_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1I_EE0E0E0B1M_.exit.i.i
  store i64 %i.bd, ptr %i.bl, align 8, !noalias !8615
  br label %bb.r

.body29:                                          ; preds = %.preheader
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0, ptr %i.bl, align 8, !noalias !8615
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.b) #37
          to label %.thread54 unwind label %bb.o, !noalias !8613, !inline_history !8584

bb.o:                                             ; preds = %.body29
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !8613, !inline_history !8584
  unreachable

bb.p:                                             ; preds = %bb.u
  br i1 %.sroa.02.1.ph, label %.thread54, label %.thread

bb.q:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.thread54

bb.r:                                             ; preds = %.noexc25.thread, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 0, ptr %i.h, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.bx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 0, ptr %i.by, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store i8 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 177
  store i8 0, ptr %i.ca, align 1
  store i64 %i.p, ptr %i.bu, align 8
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i64 %i.ae, ptr %i.cb, align 8
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder7buffers(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10child_data(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.u:                                             ; preds = %bb.s, %bb.r
  %.sroa.02.1.ph = phi i1 [ true, %bb.r ], [ false, %bb.s ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.f) #37
          to label %bb.p unwind label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.y, %.thread54, %bb.u
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread54:                                        ; preds = %.body29, %bb.q, %bb.p
  %.sroa.03.159 = phi i1 [ false, %bb.p ], [ true, %bb.q ], [ true, %.body29 ]
  %.pn58 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.p ], [ %i.bs, %bb.q ], [ %i.bq, %.body29 ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.g) #37
          to label %bb.i unwind label %bb.v

.thread50:                                        ; preds = %.body.i, %bb.j, %bb.i
  %.pn.pn53 = phi { ptr, i32 } [ %.pn58, %bb.i ], [ %i.ay, %bb.j ], [ %i.aw, %.body.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8616)
  %i.cd = load ptr, ptr %i.l, align 8, !alias.scope !8616, !noundef !10 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread50
  %i.cf = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !8617
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %bb.v

.thread:                                          ; preds = %bb.p, %bb.i, %bb.y
  %.pn.pn.pn48 = phi { ptr, i32 } [ %.pn.pn.pn.ph, %bb.y ], [ %.pn58, %bb.i ], [ %lpad.thr_comm, %bb.p ]
  resume { ptr, i32 } %.pn.pn.pn48

bb.y:                                             ; preds = %bb.d, %bb.x, %.thread50, %bb.w
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %.pn.pn53, %bb.x ], [ %.pn.pn53, %.thread50 ], [ %.pn.pn53, %bb.w ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.m) #37
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy22deep_copy_array_sliced(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !10, !nonnull !10
  call void %i.d(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtCsc2V0exE7CWf_11lance_arrow8deepcopy27deep_copy_array_data_sliced(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.b) #37
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(136) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.f

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
end_hunk_2
