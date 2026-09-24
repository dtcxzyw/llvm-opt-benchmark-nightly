Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB3g_9UpdateJob12execute_impl0s8_0EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12286)
  call void @llvm.experimental.noalias.scope.decl(metadata !12287)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !12288, !noalias !12265, !nonnull !416, !noundef !416 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !12288, !noalias !12265, !noundef !416 ; 2 uses
  %i.dx = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.dx, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i
  %i.dz = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.dy), !noalias !12289
  %i.ea = icmp eq i64 %i.dz, %.val1.i.i.i.i.i
  br i1 %i.ea, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.dt, align 8, !range !419, !alias.scope !12288, !noalias !12265, !noundef !416 ; 2 uses
  %i.eb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ec = mul nuw i64 %.val2.i.i.i.i.i, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12289
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.ar, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ed = icmp eq i64 %i.du, %.val1.i
  br i1 %i.ed, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.t
  %.val2.i = load i64, ptr %i.z, align 8, !range !419, !alias.scope !12265, !noundef !416 ; 2 uses
  %i.ee = icmp eq i64 %.val2.i, 0
  br i1 %i.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.as

bb.as:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ef = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12265
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.as, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110.sink.split

bb.at:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.eg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.au, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit169, !prof !448

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc168 unwind label %bb.aw

.noexc168:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit169
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.thread313

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit169: ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false)
  store i64 1, ptr %i.u, align 8
  store ptr %i.eg, ptr %.sroa.439.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.540.0..sroa_idx, align 8
  invoke void @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence6extend(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.outer.thread unwind label %bb.av

.outer.thread:                                    ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ej = add i64 %.lcssa444, %.sroa.05.0.ph428   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.outer._crit_edge

bb.aw:                                            ; preds = %bb.au
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.v) #73
  br label %.thread313

.thread313:                                       ; preds = %.loopexit.loopexit.split.loopexit, %.loopexit.loopexit.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %bb.aw, %bb.aj, %bb.af, %bb.av, %bb.ah, %bb.ao, %bb.ap, %bb.y, %bb.z
  %.pn312 = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.ek, %bb.aw ], [ %i.cv, %bb.y ], [ %lpad.thr_comm, %bb.aj ], [ %i.cv, %bb.z ], [ %i.ei, %bb.av ], [ %i.dr, %bb.ap ], [ %i.di, %bb.af ], [ %lpad.thr_comm.split-lp, %bb.ah ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp324, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp488, %.loopexit.loopexit.split.loopexit.split-lp ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #73
  br label %bb.g

bb.ax:                                            ; preds = %bb.h
  unreachable

.thread535:                                       ; preds = %bb.g, %bb.b, %.thread
  %.pn97.pn290 = phi { ptr, i32 } [ %.pn97.pn291, %.thread ], [ %.pn.pn, %bb.b ], [ %.pn.pn, %bb.g ]
  resume { ptr, i32 } %.pn97.pn290

.thread:                                          ; preds = %.thread538, %.body.i.i.i.i, %bb.c
  %.pn97.pn291 = phi { ptr, i32 } [ %i.be, %.thread538 ], [ %i.ah, %bb.c ], [ %i.av, %.body.i.i.i.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueANtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequencej1_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %1) #73
  br label %.thread535
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueANtNtCs4XDKJNDGLq7_5bytes5bytes5Bytesj2_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12304)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12305, !noundef !416
  %i.c = load ptr, ptr %0, align 8, !alias.scope !12305, !nonnull !416, !align !417, !noundef !416
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noalias !12305, !nonnull !416, !noundef !416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !12305, !noundef !416
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !12305, !noundef !416
  invoke void %i.e(ptr noundef %i.b, ptr noundef %i.g, i64 noundef %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit7.i, !noalias !12302, !inline_history !1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12307)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !12308, !noundef !416
  %i.m = load ptr, ptr %i.j, align 8, !alias.scope !12308, !nonnull !416, !align !417, !noundef !416
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !12308, !nonnull !416, !noundef !416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12308, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !12308, !noundef !416
  invoke void %i.o(ptr noundef %i.l, ptr noundef %i.q, i64 noundef %i.s)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.1 unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit7.i, !noalias !12302, !inline_history !1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.1: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit7.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.t, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit7.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !416, !align !417
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ab, align 8, !noalias !12309, !nonnull !416, !noundef !416
  invoke void %i.ae(ptr noundef %i.ad, ptr noundef %i.y, i64 noundef %i.w)
          to label %.critedge unwind label %bb.c, !noalias !12302, !inline_history !1

.critedge:                                        ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls.exit7.i
  resume { ptr, i32 } %i.u

bb.c:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !12302
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueANtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequencej1_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12318)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !12319, !nonnull !416, !noundef !416 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !12319, !noundef !416 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.d), !noalias !12319
  %i.f = icmp eq i64 %i.e, %.val1.i.i.i
  br i1 %i.f, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i
  %.val2.i.i.i = load i64, ptr %0, align 8, !range !419, !alias.scope !12319, !noundef !416 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.a

bb.a:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.h = mul nuw i64 %.val2.i.i.i, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12319
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINCNCNCNvNtNtCshkPeWWG1flk_5lance5index6scalar26infer_scalar_index_details000sEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !415, !noundef !416
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.f
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs8l9P2lL5xvY_16lance_index_core6scalar11IndexReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #68
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !420, !invariant.load !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #68
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.y, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val3 = load ptr, ptr %i.q, align 8            ; 5 uses
  %i.r = getelementptr i8, ptr %0, i64 144
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.s = load ptr, ptr %.val4, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.s(ptr noundef nonnull %.val3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs8l9P2lL5xvY_16lance_index_core6scalar11IndexReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i7

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i7: ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs8l9P2lL5xvY_16lance_index_core6scalar11IndexReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i6

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i6: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !420, !invariant.load !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #68
  br label %.body

.body:                                            ; preds = %bb.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsa7501wwoJJ1_11lance_index6scalar12lance_format15LanceIndexStoreECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ae) #73
          to label %common.resume unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs8l9P2lL5xvY_16lance_index_core6scalar11IndexReaderEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i7, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsa7501wwoJJ1_11lance_index6scalar12lance_format15LanceIndexStoreECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.af)
  br label %common.ret

bb.j:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i = load ptr, ptr %i.c, align 8, !nonnull !416, !noundef !416 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12370
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 acquire monotonic, align 4, !noalias !12371
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %.noexc, label %bb.b, !prof !439

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.g = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12371
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.c, !prof !439

bb.c:                                             ; preds = %.noexc
  %i.j = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc2 unwind label %bb.o

.noexc2:                                          ; preds = %bb.c
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.noexc2, %.noexc
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.l, %.noexc2 ], [ 0, %.noexc ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 20 ; 2 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !noalias !12371 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.o, align 8, !noalias !12370
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.p, align 8, !noalias !12370
  store ptr %i.d, ptr %i.a, align 8, !noalias !12370
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  invoke fastcc void @_RNvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB5_5InneruE6removeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 %0, i1 noundef zeroext true)
          to label %_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
          to label %.body unwind label %bb.i, !noalias !12370

_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.t = load i64, ptr %i.s, align 8, !noalias !12372, !noundef !416 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %i.v = load i64, ptr %i.u, align 8, !noalias !12372, !noundef !416
  %i.w = icmp ult i64 %i.t, %i.v
  %spec.store.select.i.i.i.i.i = select i1 %i.w, i64 %i.t, i64 -1
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 64
  store atomic i64 %spec.store.select.i.i.i.i.i, ptr %i.x release, align 8, !noalias !12372
  %i.y = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  br i1 %i.y, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.z = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12373
  %i.aa = and i64 %i.z, 9223372036854775807
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.f, !prof !439

bb.f:                                             ; preds = %bb.e
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc3 unwind label %bb.o

.noexc3:                                          ; preds = %bb.f
  br i1 %i.ac, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc3
  store atomic i8 1, ptr %i.m monotonic, align 4, !noalias !12373
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_17ManifestNamespace26base_objects_column_values:bb.a
  %i.bw = lshr i8 %i.bv, %i.bu
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !216933)
  %i.by = load i64, ptr %i.ba, align 8, !alias.scope !216933, !noundef !416
  %i.bz = lshr i64 %i.by, 2                       ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bj, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3281) #72
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.cb = load ptr, ptr %i.bb, align 8, !alias.scope !216933, !noundef !416 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bj
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !216933, !noundef !416
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.061.0223
  %i.cg = load i32, ptr %i.cf, align 4, !noalias !216933, !noundef !416
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = sub nsw i64 %i.ce, %i.ch
  %i.cj = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc, i64 noundef %i.ch, i64 noundef %i.ci)
          to label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %.loopexit ; 2 uses

bb.p:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 -1, ptr %i.u, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !216934)
  %i.ck = load i64, ptr %i.w, align 8, !range !419, !alias.scope !216934, !noalias !216935, !noundef !416
  %i.cl = icmp eq i64 %i.bi, %i.ck
  br i1 %i.cl, label %bb.q, label %bb.bf

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_3vec3VecNtNtB7_6string6StringEEE8grow_oneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %._crit_edge275 unwind label %bb.r, !noalias !216935

._crit_edge275:                                   ; preds = %bb.q
  %.pre = load ptr, ptr %i.au, align 8, !alias.scope !216934, !noalias !216935
  br label %bb.bf

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.u) #73, !noalias !216934
  br label %.body

_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.o
  %i.cn = extractvalue { ptr, ptr } %i.cj, 0
  %i.co = extractvalue { ptr, ptr } %i.cj, 1
  store ptr %i.cn, ptr %i.t, align 8
  store ptr %i.co, ptr %i.bd, align 8
  %i.cp = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
          to label %bb.u unwind label %.loopexit165 ; 2 uses

bb.s:                                             ; preds = %.loopexit165, %.loopexit.split-lp166, %bb.bd, %.body107
  %.pn = phi { ptr, i32 } [ %i.eb, %.body107 ], [ %eh.lpad-body108.ph, %bb.bd ], [ %lpad.loopexit167, %.loopexit165 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216936)
  call void @llvm.experimental.noalias.scope.decl(metadata !216937)
  %i.cq = load ptr, ptr %i.t, align 8, !alias.scope !216938, !nonnull !416, !noundef !416
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !216938
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.body unwind label %bb.be

.loopexit165:                                     ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.u
  %lpad.loopexit167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp166:                            ; preds = %bb.w, %bb.ae
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ct = extractvalue { ptr, ptr } %i.cp, 0      ; 9 uses
  %i.cu = extractvalue { ptr, ptr } %i.cp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !416, !nonnull !416
  invoke void %i.cw(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef %i.ct)
          to label %bb.v unwind label %.loopexit165

bb.v:                                             ; preds = %bb.u
  %i.cx = load i128, ptr %i.h, align 16, !noundef !416
  %i.cy = icmp eq i128 %i.cx, -7452801274563340147934147702000895189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.cy, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNCNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB7_17ManifestNamespace26base_objects_column_valuess_0Bb_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp166

bb.x:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !noundef !416
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nsw i64 %i.db, -1                   ; 6 uses
  %i.dd = mul i64 %i.dc, 24                       ; 3 uses
  %or.cond.i102 = icmp ugt i64 %i.dc, 384307168202282325
  br i1 %or.cond.i102, label %bb.ae, label %bb.y, !prof !441

bb.y:                                             ; preds = %bb.x
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit104, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216939
  %i.df = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216939 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = ptrtoint ptr %i.df to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit104

bb.ab:                                            ; preds = %bb.w
  %.sroa.032.0.copyload = load i8, ptr %i.g, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.472.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.634.0..sroa_idx, i64 7, i1 false)
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.636.0.copyload = load ptr, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.674.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.839.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 %.sroa.032.0.copyload, ptr %0, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.636.0.copyload, ptr %.sroa.573.0..sroa_idx, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !216940)
  call void @llvm.experimental.noalias.scope.decl(metadata !216941)
  %i.di = load ptr, ptr %i.t, align 8, !alias.scope !216942, !nonnull !416, !noundef !416
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !216942
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit106

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit106 unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.x, %bb.z
  %.sroa.4135.0.ph = phi i64 [ 8, %bb.z ], [ 0, %bb.x ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4135.0.ph, i64 %i.dd) #72
          to label %bb.av unwind label %.loopexit.split-lp166

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit104: ; preds = %bb.y, %bb.aa
  %.sroa.10137.0 = phi i64 [ %i.dh, %bb.aa ], [ 8, %bb.y ]
  %.sroa.4135.0 = phi i64 [ %i.dc, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %i.dl = inttoptr i64 %.sroa.10137.0 to ptr
  %i.dm = icmp samesign ule i64 %i.dc, %.sroa.4135.0
  call void @llvm.assume(i1 %i.dm)
  store i64 %.sroa.4135.0, ptr %i.s, align 8
  store ptr %i.dl, ptr %i.be, align 8
  store i64 0, ptr %i.bf, align 8
  %.not227 = icmp eq i64 %i.dc, 0
  br i1 %.not227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit104
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.au, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !216943)
  %i.dt = load i64, ptr %i.w, align 8, !range !419, !alias.scope !216943, !noalias !216944, !noundef !416
  %i.du = icmp eq i64 %i.bi, %i.dt
  br i1 %i.du, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_3vec3VecNtNtB7_6string6StringEEE8grow_oneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ak unwind label %.body107, !noalias !216944

bb.ag:                                            ; preds = %.lr.ph, %bb.au
  %i.dv = phi i64 [ 0, %.lr.ph ], [ %i.fz, %bb.au ]
  %.sroa.075.0222 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.au ] ; 7 uses
  %i.dw = add nuw i64 %.sroa.075.0222, 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.sroa.075.0222, ptr %i.r, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !216945)
  %i.dx = load ptr, ptr %i.dn, align 8, !alias.scope !216946, !noundef !416
  %.not.i.i110 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i110, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i64, ptr %i.do, align 8, !alias.scope !216945, !noundef !416
  %i.dz = icmp ult i64 %.sroa.075.0222, %i.dy
  br i1 %i.dz, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ai, !prof !439

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3125) #72
          to label %.noexc112 unwind label %bb.aj

.noexc112:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.an, %bb.am, %bb.ai, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit121
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.body107:                                         ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.m) #73, !noalias !216943
  br label %bb.s

bb.ak:                                            ; preds = %bb.af, %._crit_edge
  %i.ec = load ptr, ptr %i.au, align 8, !alias.scope !216943, !noalias !216944, !nonnull !416, !noundef !416 ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !216943
  %i.ee = add i64 %i.bi, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.av, align 8, !alias.scope !216943, !noalias !216944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !216947)
  call void @llvm.experimental.noalias.scope.decl(metadata !216948)
  %i.ef = load ptr, ptr %i.t, align 8, !alias.scope !216949, !nonnull !416, !noundef !416
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !216949
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit114

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit114 unwind label %.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit114: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit114, %bb.bf
  %i.ei = phi ptr [ %i.ec, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit114 ], [ %i.hc, %bb.bf ]
  %i.ej = phi i64 [ %i.ee, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit114 ], [ %i.he, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %exitcond274.not = icmp eq i64 %i.bj, %i.am
  br i1 %exitcond274.not, label %._crit_edge225, label %bb.j

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ah
  %i.ek = load ptr, ptr %i.dp, align 8, !alias.scope !216945, !noundef !416
  %i.el = load i64, ptr %i.dq, align 8, !alias.scope !216945, !noundef !416
  %i.em = add i64 %i.el, %.sroa.075.0222          ; 2 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !216945, !noundef !416
  %i.eq = trunc i64 %i.em to i8
  %i.er = and i8 %i.eq, 7
  %i.es = xor i8 %i.ep, -1
  %i.et = lshr i8 %i.es, %i.er
  %i.eu = trunc i8 %i.et to i1
  br i1 %i.eu, label %bb.an, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.ag, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !216950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.075.0222, ptr %i.c, align 8, !noalias !216950
  %i.ev = load i64, ptr %i.cz, align 8, !alias.scope !216950, !noundef !416
  %i.ew = lshr i64 %i.ev, 2                       ; 2 uses
  %i.ex = add nsw i64 %i.ew, -1                   ; 2 uses
  %i.ey = icmp ult i64 %.sroa.075.0222, %i.ex
  br i1 %i.ey, label %bb.ao, label %bb.am, !prof !439

bb.am:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216950
  store i64 %i.ex, ptr %i.b, align 8, !noalias !216950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216950
  store ptr %i.c, ptr %i.a, align 8, !noalias !216950
  %.sroa.42.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i115, align 8, !noalias !216950
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @561, ptr %i.ez, align 8, !noalias !216950
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !216950
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @3437, ptr %i.fa, align 8, !noalias !216950
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !216950
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.fb, align 8, !noalias !216950
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !216950
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3438, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3439) #72
          to label %.noexc116 unwind label %bb.aj

.noexc116:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.v, ptr %i.n, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.480.0..sroa_idx, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.r, ptr %i.fc, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.484.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @3477, ptr noundef nonnull %i.n)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.aj

bb.ao:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !216951)
  %i.fd = load ptr, ptr %i.dr, align 8, !alias.scope !216952, !noundef !416 ; 2 uses
  %i.fe = icmp samesign ult i64 %i.dw, %i.ew
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.dw
  %i.fg = load i32, ptr %i.ff, align 4, !noalias !216952, !noundef !416 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.sroa.075.0222
  %i.fi = load i32, ptr %i.fh, align 4, !noalias !216952, !noundef !416 ; 3 uses
  %i.fj = load ptr, ptr %i.ds, align 8, !alias.scope !216952, !noundef !416
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk
  %i.fm = sub i32 %i.fg, %i.fi                    ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, -1
  %i.fo = zext nneg i32 %i.fm to i64              ; 6 uses
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fp = icmp eq i32 %i.fg, %i.fi                ; 2 uses
  br i1 %i.fp, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216953
  %i.fq = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !216953 ; 3 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit121, label %bb.at

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit121: ; preds = %bb.ap
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.fo) #72
          to label %bb.av unwind label %bb.aj

.thread:                                          ; preds = %bb.ao, %bb.at
  %i.fs = phi i64 [ %.pre276, %bb.at ], [ %i.dv, %bb.ao ] ; 3 uses
  %i.ft = phi ptr [ %i.fq, %bb.at ], [ inttoptr (i64 1 to ptr), %bb.ao ] ; 2 uses
  %i.fu = load i64, ptr %i.s, align 8, !range !419, !alias.scope !216954, !noalias !216955, !noundef !416
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %.thread
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.au unwind label %bb.ar, !noalias !216955

bb.ar:                                            ; preds = %bb.aq
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.fp, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ft, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !216956
  br label %bb.bd

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fq, ptr align 1 %i.fl, i64 %i.fo, i1 false)
  %.pre276 = load i64, ptr %i.bf, align 8, !alias.scope !216954, !noalias !216955
  br label %.thread

bb.au:                                            ; preds = %bb.aq, %.thread
  %i.fx = load ptr, ptr %i.be, align 8, !alias.scope !216954, !noalias !216955, !nonnull !416, !noundef !416
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fs ; 3 uses
  store i64 %i.fo, ptr %i.fy, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.ft, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 %i.fo, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fz = add i64 %i.fs, 1                        ; 2 uses
  store i64 %i.fz, ptr %i.bf, align 8, !alias.scope !216954, !noalias !216955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %exitcond.not = icmp eq i64 %i.dw, %i.dc
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag

bb.av:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit121, %bb.ae
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
end_hunk_1
