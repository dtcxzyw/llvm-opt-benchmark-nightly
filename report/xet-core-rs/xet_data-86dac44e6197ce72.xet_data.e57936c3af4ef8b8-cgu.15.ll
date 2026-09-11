Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.15?download=true
inline.NumInlined: 1048
inline.NumDeleted: 586
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBK_:bb.a
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit._crit_edge, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbReferenceEEB1g_.exit7.i
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit
  %.sroa.0.07 = phi i64 [ %i.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.07 ; 5 uses
  %i.d = add nuw nsw i64 %.sroa.0.07, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !546 ; 2 uses
  %i.f = icmp eq i64 %.val.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1b_2__CEEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !546, !nonnull !7, !noundef !7
  %i.h = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !547
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1b_2__CEEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1b_2__CEEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.val3.i = load i64, ptr %i.i, align 8, !alias.scope !546 ; 2 uses
  %i.j = icmp eq i64 %.val3.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbReferenceEEB1g_.exit7.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1b_2__CEEECsjHtSR7YjKD4_8xet_data.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val4.i = load ptr, ptr %i.k, align 8, !alias.scope !546, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %.val3.i, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !548
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbReferenceEEB1g_.exit7.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbReferenceEEB1g_.exit7.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1b_2__CEEECsjHtSR7YjKD4_8xet_data.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  invoke void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync9once_cellINtB5_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbBlockDataEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_.exit, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph9
  %i.n = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %._crit_edge, label %.lr.ph9

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbReferenceEEB1g_.exit7.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.d, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.18 = phi i64 [ %i.n, %bb.d ], [ %i.d, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.18
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBJ_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.r) #28
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %.lr.ph9
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBK_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.0.010 ; 4 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !566, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !566
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1h_.exit.i

bb.b:                                             ; preds = %.lr.ph
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1h_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !569, !nonnull !7, !noundef !7
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !570
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms14retrieval_urls22TermBlockRetrievalURLsE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #24
          to label %.body unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1h_.exit.i: ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !573, !nonnull !7, !noundef !7
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !574
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_.exit

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1h_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms14retrieval_urls22TermBlockRetrievalURLsE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1h_.exit.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph28
  %i.r = add i64 %.sroa.0.127, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge29, label %.lr.ph28

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %i.u = icmp eq i64 %i.c, %1
  br i1 %i.u, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %.body, %bb.g
  %.sroa.0.127 = phi i64 [ %i.r, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.0.127
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEBJ_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v) #28
          to label %bb.g unwind label %bb.i

._crit_edge29:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.lr.ph28
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4copy4copyINtNtNtCskKLDkoKarTP_4core2io4util5ChainINtBG_4TakeNtNtCsG258MDvU3F_3std2fs4FileEINtNtBI_6cursor6CursorINtNtB6_3vec3VechEEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteB1s_EECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1928) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io4util5ChainINtBZ_4TakeNtNtCsG258MDvU3F_3std2fs4FileEINtNtB11_6cursor6CursorINtNtB8_3vec3VechEEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteB1L_EECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1928) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4copy4copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB6_3vec3VechEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1928) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB8_3vec3VechEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1928) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4copy4copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1928) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1928) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1b_3zip3ZipINtNtB4_9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyEEIB2c_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB4r_14DataAggregator8finalize0ETyB2D_yEEB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !7
  %i.g = mul i64 %i.c, 184                        ; 7 uses
  %i.h = udiv i64 %i.g, 168                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB1i_3VecjEyEEIB1e_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB3R_14DataAggregator8finalize0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropTyB22_yEENCINvNtB1i_16in_place_collect24write_in_place_with_dropB6D_E0INtNtBc_6result6ResultB62_zEEB3V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.j, %bb.c ]
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB1u_3VecjEyEEIB1q_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB43_14DataAggregator8finalize0EEB47_(ptr noalias nofree noundef align 8 dereferenceable(80) %1) #28
  resume { ptr, i32 } %.pn

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 168                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !599, !nonnull !7, !noundef !7 ; 3 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !599, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 184
  store i64 0, ptr %i.b, align 8, !alias.scope !599
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !599
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !599
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEE32forget_allocation_drop_remainingCsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [184 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i ; 6 uses
  %i.y = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.val.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !603, !noalias !599 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.val1.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !603, !noalias !599, !nonnull !7, !noundef !7
  %i.ac = mul nuw i64 %.val.i.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !604
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.val2.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !603, !noalias !599 ; 2 uses
  %i.ae = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.val3.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !603, !noalias !599, !nonnull !7, !noundef !7
  %i.ag = mul nuw i64 %.val2.i.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !605
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %.val.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !606, !noalias !599 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %.val1.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !606, !noalias !599, !nonnull !7, !noundef !7
  %i.ak = shl nuw i64 %.val.i.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !607
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.al = icmp eq i64 %i.y, %i.v
  br i1 %i.al, label %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEE32forget_allocation_drop_remainingCsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtBG_3VecjEyETyB1M_yEEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
  br label %bb.b

_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEE32forget_allocation_drop_remainingCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i.i, %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.an = mul nuw i64 %i.h, 168                   ; 4 uses
  %i.ao = icmp ne i64 %i.g, %i.an
  %or.cond = select i1 %.not.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %2, %bb.k, %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEE32forget_allocation_drop_remainingCsjHtSR7YjKD4_8xet_data.exit, %bb.l
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ax, %bb.l ], [ %i.d, %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEE32forget_allocation_drop_remainingCsjHtSR7YjKD4_8xet_data.exit ], [ inttoptr (i64 8 to ptr), %bb.k ]
  store i64 %i.h, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %1)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i.i = load i64, ptr %i.ar, align 8, !alias.scope !610, !noundef !7 ; 2 uses
  %i.as = icmp eq i64 %.val1.i.i, 0
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB1u_3VecjEyEEIB1q_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB43_14DataAggregator8finalize0EEB47_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load ptr, ptr %i.at, align 8, !alias.scope !611, !nonnull !7, !noundef !7
  %i.au = shl nuw i64 %.val1.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !612
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB1u_3VecjEyEEIB1q_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB43_14DataAggregator8finalize0EEB47_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB1u_3VecjEyEEIB1q_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB43_14DataAggregator8finalize0EEB47_.exit: ; preds = %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread, %bb.i
  ret void

bb.j:                                             ; preds = %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB7_3VecjEyEE32forget_allocation_drop_remainingCsjHtSR7YjKD4_8xet_data.exit
  %i.av = icmp ult i64 %i.g, 168
  br i1 %i.av, label %2, label %bb.l

2:                                                ; preds = %bb.j
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread, label %bb.k

bb.k:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #26
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.aw = icmp ule i64 %i.an, %i.g
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.an) #26 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.m, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB4_3VecjEyETyB12_yEECsjHtSR7YjKD4_8xet_data.exit.thread, !prof !613

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.an) #27
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB6_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB20_IB1F_zENCINvXsI_B1H_IB1F_INtBV_3VecB20_EEINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B3w_EB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx6, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %.not20.i.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload
  br i1 %.not20.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %bb.b
  %.sroa.4.021.i.i.i.i.i.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.0.0.copyload, %bb.a ] ; 4 uses
  %i.a = phi ptr [ %i.b, %bb.b ], [ %.sroa.4.0.copyload, %bb.a ] ; 3 uses
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !664 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, 2 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.610.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.021.i.i.i.i.i.i.i, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.610.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !664
  store i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.021.i.i.i.i.i.i.i, align 8, !noalias !665
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.021.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, %.sroa.6.0.copyload
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.not.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.not.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.021.i.pn.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload, %bb.a ], [ %.sroa.4.021.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.e = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.h = icmp eq ptr %.sroa.6.0.copyload, %.val.i.i.i.i.i
  br i1 %i.h, label %_RNCINvXsI_NtCskKLDkoKarTP_4core6optionINtB8_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_EE9from_iterINtNtBQ_9into_iter8IntoIterB37_EE0B1q_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i ; 5 uses
  %i.j = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.k = load i64, ptr %i.i, align 8, !range !13, !alias.scope !668, !noalias !669, !noundef !7
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !671, !noalias !669 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !671, !noalias !669, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !672
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !range !14, !alias.scope !671, !noalias !669, !noundef !7 ; 2 uses
  %i.q = icmp sgt i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !671, !noalias !669, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !673
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.s = icmp eq i64 %i.j, %i.g
  br i1 %i.s, label %_RNCINvXsI_NtCskKLDkoKarTP_4core6optionINtB8_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_EE9from_iterINtNtBQ_9into_iter8IntoIterB37_EE0B1q_.exit, label %.lr.ph.i.i.i.i.i.i

_RNCINvXsI_NtCskKLDkoKarTP_4core6optionINtB8_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_EE9from_iterINtNtBQ_9into_iter8IntoIterB37_EE0B1q_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB13_.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.t = ptrtoint ptr %.sroa.4.021.i.pn.i.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 6                   ; 2 uses
  br i1 %.sroa.0.0, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNCINvXsI_NtCskKLDkoKarTP_4core6optionINtB8_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_EE9from_iterINtNtBQ_9into_iter8IntoIterB37_EE0B1q_.exit
  store i64 %.sroa.5.0.copyload, ptr %0, align 8, !alias.scope !674
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !674
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.513.0..sroa_idx, align 8, !alias.scope !674
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB1e_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB1e_.exit: ; preds = %bb.j, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i, %bb.f
  ret void

bb.g:                                             ; preds = %_RNCINvXsI_NtCskKLDkoKarTP_4core6optionINtB8_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_EE9from_iterINtNtBQ_9into_iter8IntoIterB37_EE0B1q_.exit
  store i64 -1, ptr %0, align 8, !alias.scope !675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.x = icmp eq ptr %.sroa.4.021.i.pn.i.i.i.i.i.i, %.sroa.0.0.copyload
  br i1 %i.x, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEBH_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEBH_.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.z = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !678, !noalias !679 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !678, !noalias !679, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !680
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.val2.i.i.i.i = load i64, ptr %i.ad, align 8, !range !14, !alias.scope !678, !noalias !679, !noundef !7 ; 2 uses
  %i.ae = icmp sgt i64 %.val2.i.i.i.i, 0
  br i1 %i.ae, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEBH_.exit.i.i.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.val3.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !678, !noalias !679, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !681
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEBH_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEBH_.exit.i.i.i: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i.i
  %i.ag = icmp eq i64 %i.z, %i.w
  br i1 %i.ag, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEBH_.exit.i.i.i, %bb.g
  %i.ah = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB1e_.exit, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_.exit.i
  %i.ai = shl nuw i64 %.sroa.5.0.copyload, 6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !679
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoEEB1e_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB6_6option6OptionTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEEB20_IB1F_zENCINvXsI_B1H_IB1F_INtBV_3VecB20_EEINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B3z_EB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx7, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %.not20.i.i.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload
  br i1 %.not20.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %bb.b
  %.sroa.4.021.i.i.i.i.i.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.0.0.copyload, %bb.a ] ; 4 uses
  %i.a = phi ptr [ %i.b, %bb.b ], [ %.sroa.4.0.copyload, %bb.a ] ; 3 uses
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !740 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, 2 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.610.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.021.i.i.i.i.i.i.i, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.610.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !740
  store i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.021.i.i.i.i.i.i.i, align 8, !noalias !741
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.021.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, %.sroa.6.0.copyload
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.not.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.not.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.021.i.pn.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload, %bb.a ], [ %.sroa.4.021.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.e = ptrtoint ptr %.val.i.i.i.i.i to i64
end_hunk_0
