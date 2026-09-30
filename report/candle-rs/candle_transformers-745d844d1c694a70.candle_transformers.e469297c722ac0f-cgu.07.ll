Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.07?download=true
inline.NumInlined: 4383
inline.NumDeleted: 408
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models10starcoder2NtB5_5Model7forward:bb.a

bb.pw:                                            ; preds = %bb.pu
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit162

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit165: ; preds = %bb.pt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit159, %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.experimental.noalias.scope.decl(metadata !15617)
  call void @llvm.experimental.noalias.scope.decl(metadata !15618)
  call void @llvm.experimental.noalias.scope.decl(metadata !15619)
  %i.ake = load ptr, ptr %i.ca, align 8, !alias.scope !15620, !nonnull !5, !noundef !5
  %i.akf = atomicrmw sub ptr %i.ake, i64 1 release, align 8, !noalias !15620
  %i.akg = icmp eq i64 %i.akf, 1
  br i1 %i.akg, label %bb.px, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169

bb.px:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit165
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169 unwind label %bb.pz

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167: ; preds = %bb.qj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153, %bb.qk, %bb.qe, %bb.qd, %bb.qf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit162, %bb.pv, %bb.pz
  %.pn132 = phi { ptr, i32 } [ %i.akk, %bb.pz ], [ %.pn130, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit162 ], [ %i.akp, %bb.qe ], [ %.pn130, %bb.pv ], [ %i.akp, %bb.qf ], [ %i.akp, %bb.qd ], [ %i.aiz, %bb.qk ], [ %i.aiz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153 ], [ %i.aiz, %bb.qj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15621)
  call void @llvm.experimental.noalias.scope.decl(metadata !15622)
  call void @llvm.experimental.noalias.scope.decl(metadata !15623)
  %i.akh = load ptr, ptr %i.by, align 8, !alias.scope !15624, !nonnull !5, !noundef !5
  %i.aki = atomicrmw sub ptr %i.akh, i64 1 release, align 8, !noalias !15624
  %i.akj = icmp eq i64 %i.aki, 1
  br i1 %i.akj, label %bb.py, label %common.resume

bb.py:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #26
          to label %common.resume unwind label %bb.qc

bb.pz:                                            ; preds = %bb.qh, %bb.px
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit165, %bb.px
  call void @llvm.experimental.noalias.scope.decl(metadata !15625)
  call void @llvm.experimental.noalias.scope.decl(metadata !15626)
  call void @llvm.experimental.noalias.scope.decl(metadata !15627)
  %i.akl = load ptr, ptr %i.by, align 8, !alias.scope !15628, !nonnull !5, !noundef !5
  %i.akm = atomicrmw sub ptr %i.akl, i64 1 release, align 8, !noalias !15628
  %i.akn = icmp eq i64 %i.akm, 1
  br i1 %i.akn, label %bb.qa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit172

bb.qa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit172

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit172: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit169, %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.qb

bb.qb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit172, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit149, %bb.b
  ret void

bb.qc:                                            ; preds = %bb.qn, %bb.qk, %bb.qf, %bb.py, %bb.pv, %bb.pr, %bb.pn, %bb.ph, %bb.ou, %bb.bk
  %i.ako = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.qd:                                            ; preds = %bb.pk
  %i.akp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15629)
  %i.akq = load ptr, ptr %i.cf, align 8, !alias.scope !15629, !noundef !5 ; 2 uses
  %i.akr = icmp eq ptr %i.akq, null
  br i1 %i.akr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.aks = atomicrmw sub ptr %i.akq, i64 1 release, align 8, !noalias !15630
  %i.akt = icmp eq i64 %i.aks, 1
  br i1 %i.akt, label %bb.qf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167

bb.qf:                                            ; preds = %bb.qe
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167 unwind label %bb.qc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit155: ; preds = %bb.pj, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !15631)
  %i.aku = load ptr, ptr %i.cf, align 8, !alias.scope !15631, !noundef !5 ; 2 uses
  %i.akv = icmp eq ptr %i.aku, null
  br i1 %i.akv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit178, label %bb.qg

bb.qg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit155
  %i.akw = atomicrmw sub ptr %i.aku, i64 1 release, align 8, !noalias !15632
  %i.akx = icmp eq i64 %i.akw, 1
  br i1 %i.akx, label %bb.qh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit178

bb.qh:                                            ; preds = %bb.qg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit178 unwind label %bb.pz

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit178: ; preds = %bb.qg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit155, %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.experimental.noalias.scope.decl(metadata !15633)
  call void @llvm.experimental.noalias.scope.decl(metadata !15634)
  call void @llvm.experimental.noalias.scope.decl(metadata !15635)
  %i.aky = load ptr, ptr %i.by, align 8, !alias.scope !15636, !nonnull !5, !noundef !5
  %i.akz = atomicrmw sub ptr %i.aky, i64 1 release, align 8, !noalias !15636
  %i.ala = icmp eq i64 %i.akz, 1
  br i1 %i.ala, label %bb.qi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179

bb.qi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit178
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179: ; preds = %bb.qi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit178, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.qb

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153: ; preds = %bb.pg, %bb.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !15637)
  %i.alb = load ptr, ptr %i.cf, align 8, !alias.scope !15637, !noundef !5 ; 2 uses
  %i.alc = icmp eq ptr %i.alb, null
  br i1 %i.alc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167, label %bb.qj

bb.qj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit153
  %i.ald = atomicrmw sub ptr %i.alb, i64 1 release, align 8, !noalias !15638
  %i.ale = icmp eq i64 %i.ald, 1
  br i1 %i.ale, label %bb.qk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167

bb.qk:                                            ; preds = %bb.qj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit167 unwind label %bb.qc

bb.ql:                                            ; preds = %bb.pe
  %i.alf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15639)
  %i.alg = load ptr, ptr %i.cf, align 8, !alias.scope !15639, !noundef !5 ; 2 uses
  %i.alh = icmp eq ptr %i.alg, null
  br i1 %i.alh, label %common.resume, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.ali = atomicrmw sub ptr %i.alg, i64 1 release, align 8, !noalias !15640
  %i.alj = icmp eq i64 %i.ali, 1
  br i1 %i.alj, label %bb.qn, label %common.resume

bb.qn:                                            ; preds = %bb.qm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #26
          to label %common.resume unwind label %bb.qc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151: ; preds = %bb.pd, %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !15641)
  %i.alk = load ptr, ptr %i.cf, align 8, !alias.scope !15641, !noundef !5 ; 2 uses
  %i.all = icmp eq ptr %i.alk, null
  br i1 %i.all, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit187, label %bb.qo

bb.qo:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151
  %i.alm = atomicrmw sub ptr %i.alk, i64 1 release, align 8, !noalias !15642
  %i.aln = icmp eq i64 %i.alm, 1
  br i1 %i.aln, label %bb.qp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit187

bb.qp:                                            ; preds = %bb.qo
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cf) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit187

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit187: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit151, %bb.qo, %bb.qp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit179
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs1dZk1kIfPhr_19candle_transformers6models15recurrent_gemmaNtB5_5Rglru3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 6 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8, !range !4, !noundef !5
  %3 = trunc nuw i64 %i.n to i1
  %spec.select.v = select i1 %3, i64 8, i64 72
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v
  %.sroa.0.0 = load i64, ptr %spec.select, align 8 ; 2 uses
  %i.o = udiv i64 %.sroa.0.0, %i.l                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 15)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #25
          to label %bb.e unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114, %bb.i, %bb.d
  %.pn111 = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn109, %bb.i ], [ %.pn109, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #29
          to label %bb.ah unwind label %bb.ae

bb.d:                                             ; preds = %bb.ag, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.i, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.564.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.561.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.q, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.463.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit126

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.s, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.l, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.u, align 8
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 17)
          to label %bb.k unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116, %bb.n, %bb.j
  %.pn109 = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn107, %bb.n ], [ %.pn107, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15691)
  call void @llvm.experimental.noalias.scope.decl(metadata !15692)
  call void @llvm.experimental.noalias.scope.decl(metadata !15693)
  %i.v = load ptr, ptr %i.j, align 8, !alias.scope !15694, !nonnull !5, !noundef !5
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !15694
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.af, %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114

bb.k:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.g, align 8, !range !9, !noundef !5 ; 2 uses
  %.not102 = icmp eq i64 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %.not102, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.570.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.z, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.472.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit124

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.ab, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.l, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 15)
          to label %bb.p unwind label %bb.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118, %bb.s, %bb.o
  %.pn107 = phi { ptr, i32 } [ %i.af, %bb.o ], [ %.pn, %bb.s ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15695)
  call void @llvm.experimental.noalias.scope.decl(metadata !15696)
  call void @llvm.experimental.noalias.scope.decl(metadata !15697)
  %i.ac = load ptr, ptr %i.h, align 8, !alias.scope !15698, !nonnull !5, !noundef !5
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !15698
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114 unwind label %bb.ae

bb.o:                                             ; preds = %bb.ad, %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116

bb.p:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.e, align 8, !range !9, !noundef !5 ; 2 uses
  %.not103 = icmp eq i64 %i.ag, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %.not103, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.582.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.579.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.ag, ptr %0, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.481.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit122

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ai, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 21)
          to label %bb.u unwind label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118: ; preds = %bb.x, %bb.y, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.aq, %bb.y ], [ %i.aq, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15699)
  call void @llvm.experimental.noalias.scope.decl(metadata !15700)
  call void @llvm.experimental.noalias.scope.decl(metadata !15701)
  %i.aj = load ptr, ptr %i.f, align 8, !alias.scope !15702, !nonnull !5, !noundef !5
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !15702
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit116 unwind label %bb.ae

bb.t:                                             ; preds = %bb.ab, %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118

bb.u:                                             ; preds = %bb.r
  %i.an = load i64, ptr %i.c, align 8, !range !9, !noundef !5 ; 2 uses
  %.not104 = icmp eq i64 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 5 uses
  br i1 %.not104, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.591.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.588.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.an, ptr %0, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %.sroa.490.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit120

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ap, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.l, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 19)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !15703
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118 unwind label %bb.ae
end_hunk_0
begin_hunk_1_@_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models15recurrent_gemma8rnn_scan:bb.a

bb.en:                                            ; preds = %bb.dl, %bb.di
  %.sroa.0241.9 = phi i8 [ 1, %bb.di ], [ 0, %bb.dl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37202)
  call void @llvm.experimental.noalias.scope.decl(metadata !37203)
  call void @llvm.experimental.noalias.scope.decl(metadata !37204)
  %i.iq = load ptr, ptr %i.i, align 8, !alias.scope !37205, !nonnull !5, !noundef !5
  %i.ir = atomicrmw sub ptr %i.iq, i64 1 release, align 8, !noalias !37205
  %i.is = icmp eq i64 %i.ir, 1
  br i1 %i.is, label %bb.eo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit558

bb.eo:                                            ; preds = %bb.en
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit558 unwind label %.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit558: ; preds = %bb.en, %bb.eo, %bb.dd
  %.sroa.0241.10 = phi i8 [ 1, %bb.dd ], [ %.sroa.0241.9, %bb.eo ], [ %.sroa.0241.9, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.db

bb.ep:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.it = trunc nuw i8 %.sroa.0241.6 to i1
  br i1 %i.it, label %bb.eq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit560

bb.eq:                                            ; preds = %bb.es, %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !37206)
  call void @llvm.experimental.noalias.scope.decl(metadata !37207)
  call void @llvm.experimental.noalias.scope.decl(metadata !37208)
  %i.iu = load ptr, ptr %i.q, align 8, !alias.scope !37209, !nonnull !5, !noundef !5
  %i.iv = atomicrmw sub ptr %i.iu, i64 1 release, align 8, !noalias !37209
  %i.iw = icmp eq i64 %i.iv, 1
  br i1 %i.iw, label %bb.er, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit560

bb.er:                                            ; preds = %bb.eq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit560 unwind label %bb.q

bb.es:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.eq

bb.et:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !37210)
  call void @llvm.experimental.noalias.scope.decl(metadata !37211)
  call void @llvm.experimental.noalias.scope.decl(metadata !37212)
  %i.ix = load ptr, ptr %i.q, align 8, !alias.scope !37213, !nonnull !5, !noundef !5
  %i.iy = atomicrmw sub ptr %i.ix, i64 1 release, align 8, !noalias !37213
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.eu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit507

bb.eu:                                            ; preds = %bb.et
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit507 unwind label %bb.ao

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit517: ; preds = %bb.ap, %bb.aq, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.experimental.noalias.scope.decl(metadata !37214)
  call void @llvm.experimental.noalias.scope.decl(metadata !37215)
  call void @llvm.experimental.noalias.scope.decl(metadata !37216)
  %i.ja = load ptr, ptr %i.an, align 8, !alias.scope !37217, !nonnull !5, !noundef !5
  %i.jb = atomicrmw sub ptr %i.ja, i64 1 release, align 8, !noalias !37217
  %i.jc = icmp eq i64 %i.jb, 1
  br i1 %i.jc, label %bb.ev, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit563

bb.ev:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit517
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit563

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit505, %bb.k, %bb.d, %bb.e
  %.pn496.pn = phi { ptr, i32 } [ %i.ay, %bb.d ], [ %i.ay, %bb.e ], [ %.pn496, %bb.k ], [ %.pn496, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit505 ]
  resume { ptr, i32 } %.pn496.pn

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit499: ; preds = %bb.h, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit563
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models15recurrent_gemma8softplus(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3exp(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.d = load i64, ptr %i.a, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.521.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.423.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsq_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noundef nonnull %i.f, double noundef 1.000000e+00)
  %i.g = load i64, ptr %i.b, align 8, !range !9, !noundef !5 ; 2 uses
  %.not37 = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.530.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.432.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.c, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3log(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !37230
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !37231
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit38: ; preds = %bb.i, %bb.h, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models25quantized_recurrent_gemma5rglru(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 10 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 17 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 22 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 27 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 34 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 36 uses
  %i.o = alloca [80 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 36 uses
  %i.q = alloca [80 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 36 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 24 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 6 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i64, ptr %1, align 8, !range !4, !noundef !5
  %3 = trunc nuw i64 %i.x to i1
  %spec.select.v = select i1 %3, i64 8, i64 72
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v
  %.sroa.0.0 = load i64, ptr %spec.select, align 8 ; 2 uses
  %i.y = udiv i64 %.sroa.0.0, %i.v                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RINvMNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builderNtB3_10VarBuilder3getTjEEB5_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 15)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #25
          to label %bb.e unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit427, %bb.ev, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit409, %bb.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit387, %bb.du, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit361, %bb.dc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit307, %bb.br, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270, %bb.i, %bb.d
  %.pn267 = phi { ptr, i32 } [ %i.z, %bb.d ], [ %.pn265, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270 ], [ %.pn251, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit409 ], [ %.pn241, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit387 ], [ %.pn229, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit361 ], [ %.pn215, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit307 ], [ %.pn265, %bb.i ], [ %.pn215, %bb.br ], [ %.pn229, %bb.dc ], [ %.pn241, %bb.du ], [ %.pn251, %bb.ej ], [ %.pn259, %bb.ev ], [ %.pn259, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit427 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builder10VarBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #29
          to label %bb.ez unwind label %bb.ci

bb.d:                                             ; preds = %.invoke.invoke, %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.s, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5107.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.aa, ptr %0, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %.sroa.4109.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit433

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.ac, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.v, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %i.ae, align 8
  invoke void @_RINvMNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builderNtB3_10VarBuilder3getTjjjEEB5_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 17)
          to label %bb.k unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272, %bb.n, %bb.j
  %.pn265 = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %.pn263, %bb.n ], [ %.pn263, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37626)
  call void @llvm.experimental.noalias.scope.decl(metadata !37627)
  %i.af = load ptr, ptr %i.t, align 8, !alias.scope !37628, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !37628
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.ci

bb.j:                                             ; preds = %bb.ey, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270

bb.k:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.q, align 8, !range !9, !noundef !5 ; 2 uses
  %.not193 = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.not193, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5116.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.aj, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %.sroa.4118.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit437

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.al, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builderNtB3_10VarBuilder3getTjjEEB5_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.v, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 15)
          to label %bb.p unwind label %bb.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274, %bb.s, %bb.o
  %.pn263 = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %.pn261, %bb.s ], [ %.pn261, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37629)
  call void @llvm.experimental.noalias.scope.decl(metadata !37630)
  %i.am = load ptr, ptr %i.r, align 8, !alias.scope !37631, !nonnull !5, !noundef !5
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !37631
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit270 unwind label %bb.ci

bb.o:                                             ; preds = %bb.ex, %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272

bb.p:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.o, align 8, !range !9, !noundef !5 ; 2 uses
  %.not194 = icmp eq i64 %i.aq, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  br i1 %.not194, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5128.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5125.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.aq, ptr %0, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4127.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit435

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr %i.as, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builderNtB3_10VarBuilder3getTjjjEEB5_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 21)
          to label %bb.u unwind label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit278, %bb.x, %bb.t
  %.pn261 = phi { ptr, i32 } [ %i.aw, %bb.t ], [ %.pn, %bb.x ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit278 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37632)
  call void @llvm.experimental.noalias.scope.decl(metadata !37633)
  %i.at = load ptr, ptr %i.p, align 8, !alias.scope !37634, !nonnull !5, !noundef !5
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !37634
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit272 unwind label %bb.ci

bb.t:                                             ; preds = %bb.ab, %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274

bb.u:                                             ; preds = %bb.r
  %i.ax = load i64, ptr %i.m, align 8, !range !9, !noundef !5 ; 2 uses
  %.not195 = icmp eq i64 %i.ax, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  br i1 %.not195, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5134.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.ax, ptr %0, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.4136.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit276

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.az, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMNtCs1dZk1kIfPhr_19candle_transformers21quantized_var_builderNtB3_10VarBuilder3getTjjEEB5_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.v, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 19)
          to label %bb.z unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit278: ; preds = %bb.ad, %bb.ae, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.y ], [ %i.bn, %bb.ae ], [ %i.bn, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37635)
  call void @llvm.experimental.noalias.scope.decl(metadata !37636)
  %i.ba = load ptr, ptr %i.n, align 8, !alias.scope !37637, !nonnull !5, !noundef !5
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !37637
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit278
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECs1dZk1kIfPhr_19candle_transformers.exit274 unwind label %bb.ci
end_hunk_1
