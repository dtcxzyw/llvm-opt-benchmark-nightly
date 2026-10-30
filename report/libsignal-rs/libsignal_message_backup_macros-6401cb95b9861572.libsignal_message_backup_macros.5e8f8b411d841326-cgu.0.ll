Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup_macros-6401cb95b9861572.libsignal_message_backup_macros.5e8f8b411d841326-cgu.0?download=true
inline.NumInlined: 275
inline.NumDeleted: 196
begin_hunk_0_@_RINvNvNtNtCsjOW1RlS57dv_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientNtB24_6Client7expand1NvCs87lmcIEqiMc_31libsignal_message_backup_macros27derive_visit_unknown_fieldsE0EB2D_:bb.a
          cleanup
          catch ptr null
  br label %bb.je

bb.jg:                                            ; preds = %bb.jd
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ci, i64 216
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs7T8VmuLB4gT_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.oy)
          to label %bb.jj unwind label %bb.ji, !noalias !74

bb.jh:                                            ; preds = %bb.ji, %bb.je
  %.pn15.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.oz, %bb.ji ], [ %.pn13.i.i.i.i.i.i.i.i.i.i, %bb.je ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn6derive4DataEBF_(ptr nonnull align 8 %i.ci) #15
          to label %.body.i.i.i.i.i.i unwind label %bb.ir, !noalias !74

bb.ji:                                            ; preds = %bb.jg
  %i.oz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.jh

bb.jj:                                            ; preds = %bb.jg
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn6derive4DataEBF_(ptr nonnull align 8 %i.ci)
          to label %_RNvCs87lmcIEqiMc_31libsignal_message_backup_macros32derive_visit_unknown_fields_impl.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ka, !noalias !74

bb.jk:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ci, i64 184
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.pa) #15
          to label %bb.jl unwind label %bb.ir, !noalias !74

bb.jl:                                            ; preds = %bb.jk
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jn, %bb.jl
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, label %bb.jp, label %bb.jo

bb.jn:                                            ; preds = %bb.jl
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ci, i64 216
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs7T8VmuLB4gT_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.pb) #15
          to label %bb.jm unwind label %bb.ir, !noalias !74

bb.jo:                                            ; preds = %bb.jp, %bb.jm
  %i.pc = load i64, ptr %i.ci, align 8, !noalias !85
  %i.pd = call i64 @llvm.usub.sat.i64(i64 %i.pc, i64 2)
  switch i64 %i.pd, label %bb.jq [
    i64 0, label %bb.jr
    i64 1, label %bb.js
  ]

bb.jp:                                            ; preds = %bb.jm
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.fo) #15
          to label %bb.jo unwind label %bb.ir, !noalias !74

bb.jq:                                            ; preds = %bb.jo
  br i1 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i, label %bb.jv, label %.body.i.i.i.i.i.i

bb.jr:                                            ; preds = %bb.jo
  br i1 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i, label %bb.jt, label %.body.i.i.i.i.i.i

bb.js:                                            ; preds = %bb.jo
  br i1 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, label %bb.ju, label %.body.i.i.i.i.i.i

bb.jt:                                            ; preds = %bb.jr
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn6derive10DataStructEBF_(ptr nonnull align 8 %i.ci) #15
          to label %.body.i.i.i.i.i.i unwind label %bb.ir, !noalias !74

bb.ju:                                            ; preds = %bb.js
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn6derive8DataEnumEBF_(ptr nonnull align 8 %i.pe) #15
          to label %.body.i.i.i.i.i.i unwind label %bb.ir, !noalias !74

bb.jv:                                            ; preds = %bb.jq
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn6derive9DataUnionEBF_(ptr nonnull align 8 %i.pf) #15
          to label %.body.i.i.i.i.i.i unwind label %bb.ir, !noalias !74

_RNvCs87lmcIEqiMc_31libsignal_message_backup_macros32derive_visit_unknown_fields_impl.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.jj, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !74
  %i.pg = invoke i32 @_RNvXs2_Cs7T8VmuLB4gT_11proc_macro2NtCsjOW1RlS57dv_10proc_macro11TokenStreamINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.cj)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3set13RestoreOnDropECs87lmcIEqiMc_31libsignal_message_backup_macros.exit11.i.i.i.i.i.i unwind label %bb.ka, !noalias !74

bb.jw:                                            ; preds = %bb.jx
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !74
  unreachable

bb.jx:                                            ; preds = %bb.jy, %bb.s
  %i.pi = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.cl) #15
          to label %.body.i.i.i.i.i.i unwind label %bb.jw, !noalias !74

bb.jy:                                            ; preds = %bb.s
  %i.pj = invoke i32 @_RNvXs2_Cs7T8VmuLB4gT_11proc_macro2NtCsjOW1RlS57dv_10proc_macro11TokenStreamINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.ck)
          to label %bb.jz unwind label %bb.jx, !noalias !74

bb.jz:                                            ; preds = %bb.jy
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsaW2qW6gcVQ1_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.cl)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3set13RestoreOnDropECs87lmcIEqiMc_31libsignal_message_backup_macros.exit11.i.i.i.i.i.i unwind label %bb.ka, !noalias !74

bb.ka:                                            ; preds = %bb.jz, %_RNvCs87lmcIEqiMc_31libsignal_message_backup_macros32derive_visit_unknown_fields_impl.exit.i.i.i.i.i.i.i.i.i, %bb.jj, %bb.in, %_RINvCsaW2qW6gcVQ1_3syn5parseNtNtB2_6derive11DeriveInputECs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i, %_RNvXs7_NtNtCsjOW1RlS57dv_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ka, %bb.jx, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jh, %bb.ip, %bb.b
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pk, %bb.ka ], [ %.pn9.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %.pn8.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.pn15.i.i.i.i.i.i.i.i.i.i, %bb.jh ], [ %.pn11.i.i.i.i.i.i.i.i.i.i, %bb.jv ], [ %.pn11.i.i.i.i.i.i.i.i.i.i, %bb.jq ], [ %.pn11.i.i.i.i.i.i.i.i.i.i, %bb.jt ], [ %.pn11.i.i.i.i.i.i.i.i.i.i, %bb.jr ], [ %.pn11.i.i.i.i.i.i.i.i.i.i, %bb.ju ], [ %.pn11.i.i.i.i.i.i.i.i.i.i, %bb.js ], [ %i.pi, %bb.jx ]
  invoke void @_RNvXNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.cn)
          to label %.thread.i.i.i.i.i unwind label %bb.kb, !noalias !74

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3set13RestoreOnDropECs87lmcIEqiMc_31libsignal_message_backup_macros.exit11.i.i.i.i.i.i: ; preds = %bb.jz, %_RNvCs87lmcIEqiMc_31libsignal_message_backup_macros32derive_visit_unknown_fields_impl.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.pg, %_RNvCs87lmcIEqiMc_31libsignal_message_backup_macros32derive_visit_unknown_fields_impl.exit.i.i.i.i.i.i.i.i.i ], [ %i.pj, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !74
  invoke void @_RNvXNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.cn)
          to label %.thread60.i.i unwind label %bb.kc, !noalias !74

bb.kb:                                            ; preds = %.body.i.i.i.i.i.i
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !74
  unreachable

bb.kc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3set13RestoreOnDropECs87lmcIEqiMc_31libsignal_message_backup_macros.exit11.i.i.i.i.i.i
  %i.pm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.kc, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.pm, %bb.kc ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.310.0..sroa_idx.i.i.i.i.i, align 8, !noalias !74
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !74
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.po = load ptr, ptr %i.pn, align 8, !noalias !74
  call void %i.po(ptr nonnull byval([40 x i8]) align 8 %i.a) #17, !noalias !74, !inline_history !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  br label %.body.i.i

bb.kd:                                            ; preds = %.invoke.i.i, %_RNvXsf_NtNtCsjOW1RlS57dv_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i.i.i.i, %.invoke291.i.i, %_RNvXsf_NtNtCsjOW1RlS57dv_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i6.i.i.i.i.i.i.i, %_RNvXsf_NtNtCsjOW1RlS57dv_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i2.i.i.i.i.i.i.i, %_RNvXsf_NtNtCsjOW1RlS57dv_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i.i.i.i.i, %.noexc23.i.i, %bb.a
  %i.pp = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.kd, %.thread.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.pp, %bb.kd ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.pq = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.pr = invoke { ptr, ptr } @_RNvNvNtCs9k3SxhrAWiO_3std9panicking12catch_unwind7cleanup(ptr %i.pq)
          to label %bb.kf unwind label %bb.ke, !noalias !74 ; 2 uses

bb.ke:                                            ; preds = %.body.i.i
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #16, !noalias !74
  unreachable

.thread60.i.i:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNvNtNtNtCsjOW1RlS57dv_10proc_macro6bridge6client5state3set13RestoreOnDropECs87lmcIEqiMc_31libsignal_message_backup_macros.exit11.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !74
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !noalias !74
  call void %i.pu(ptr nonnull byval([40 x i8]) align 8 %i.b) #17, !noalias !74, !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !74
  %.sroa.4.8.insert.ext.i.i = zext i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i64
  %i.pv = inttoptr i64 %.sroa.4.8.insert.ext.i.i to ptr
  store i64 0, ptr %i.ec, align 8, !noalias !74
  br label %.thread62.i.i

bb.kf:                                            ; preds = %.body.i.i
  %i.pw = extractvalue { ptr, ptr } %i.pr, 0      ; 2 uses
  %i.px = extractvalue { ptr, ptr } %i.pr, 1      ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 33 uses
  store i64 0, ptr %i.py, align 8, !noalias !74
  %.not.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i, label %.thread62.i.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  invoke void @_RNvXNtNtCsjOW1RlS57dv_10proc_macro6bridge13panic_messageNtB2_12PanicMessageINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB1g_3any3AnyNtNtB1g_6marker4SendEL_EE4from(ptr nonnull sret([24 x i8]) align 8 %i.dx, ptr nonnull %i.pw, ptr align 8 %i.px)
          to label %bb.kh unwind label %.critedge.body, !noalias !74

.thread62.i.i:                                    ; preds = %bb.kf, %.thread60.i.i
  %i.pz = phi ptr [ %i.ec, %.thread60.i.i ], [ %i.py, %bb.kf ]
  %i.qa = phi ptr [ %i.pv, %.thread60.i.i ], [ %i.px, %bb.kf ]
  %i.qb = ptrtoint ptr %i.qa to i64
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %i.qb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.kk

bb.kh:                                            ; preds = %bb.kg
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dx, align 8, !noalias !74 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i, label %bb.kk, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i, i64 12, i1 false), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !74
  %i.qc = load i64, ptr %i.py, align 8, !noalias !74 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 5 uses
  %i.qe = load i64, ptr %i.qd, align 8, !noalias !74
  %i.qf = icmp eq i64 %i.qc, %i.qe
  br i1 %i.qf, label %bb.kj, label %bb.kt

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !74
  %i.qg = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !noalias !74
  call void %i.qh(ptr nonnull sret([40 x i8]) align 8 %i.du, ptr nonnull byval([40 x i8]) align 8 %i.dv, i64 1) #17, !noalias !74, !inline_history !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !74
  %i.qi = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !74
  call void %i.qj(ptr nonnull byval([40 x i8]) align 8 %i.dt) #17, !noalias !74, !inline_history !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.du, i64 40, i1 false), !noalias !74
  %.pre.i.i.i.i = load i64, ptr %i.py, align 8, !noalias !74
  br label %bb.kt

bb.kk:                                            ; preds = %bb.kh, %.thread62.i.i
  %.sroa.4.04666.i.i = phi i32 [ %.sroa.4.8.extract.trunc.i.i, %.thread62.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.kh ] ; 2 uses
  %i.qk = phi ptr [ %i.pz, %.thread62.i.i ], [ %i.py, %bb.kh ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !74
  %2 = load i64, ptr %i.qk, align 8, !noalias !74 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 4 uses
  %i.qm = load i64, ptr %i.ql, align 8, !noalias !74
  %i.qn = icmp eq i64 %2, %i.qm
  br i1 %i.qn, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ds, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !74
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8, !noalias !74
  call void %i.qp(ptr nonnull sret([40 x i8]) align 8 %i.dr, ptr nonnull byval([40 x i8]) align 8 %i.ds, i64 1) #17, !noalias !74, !inline_history !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !74
  %i.qq = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8, !noalias !74
  call void %i.qr(ptr nonnull byval([40 x i8]) align 8 %i.dq) #17, !noalias !74, !inline_history !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.dr, i64 40, i1 false), !noalias !74
  %.pre.i6.i.i.i = load i64, ptr %i.qk, align 8, !noalias !74
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.qs = phi i64 [ %2, %bb.kk ], [ %.pre.i6.i.i.i, %bb.kl ]
  %i.qt = load ptr, ptr %i.dy, align 8, !noalias !74
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qs
  store i8 0, ptr %i.qu, align 1, !noalias !74
  %i.qv = load i64, ptr %i.qk, align 8, !noalias !74
  %i.qw = add i64 %i.qv, 1                        ; 5 uses
  store i64 %i.qw, ptr %i.qk, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !74
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.4.04666.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.kp, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !74
  %i.qx = load i64, ptr %i.ql, align 8, !noalias !74
  %i.qy = icmp eq i64 %i.qw, %i.qx
  br i1 %i.qy, label %bb.ko, label %bb.kr

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dp, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !74
  %i.qz = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !noalias !74
  call void %i.ra(ptr nonnull sret([40 x i8]) align 8 %i.do, ptr nonnull byval([40 x i8]) align 8 %i.dp, i64 1) #17, !noalias !74, !inline_history !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !74
  %i.rb = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !noalias !74
  call void %i.rc(ptr nonnull byval([40 x i8]) align 8 %i.dn) #17, !noalias !74, !inline_history !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.do, i64 40, i1 false), !noalias !74
  %.pre.i.i.i.i.i.i = load i64, ptr %i.qk, align 8, !noalias !74
  br label %bb.kr

bb.kp:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !74
  %i.rd = load i64, ptr %i.ql, align 8, !noalias !74
  %i.re = icmp eq i64 %i.qw, %i.rd
  br i1 %i.re, label %bb.kq, label %_RNvMs2_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs87lmcIEqiMc_31libsignal_message_backup_macros.exit7.i.i.i.i.i

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !74
  %i.rf = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !74
  call void %i.rg(ptr nonnull sret([40 x i8]) align 8 %i.dl, ptr nonnull byval([40 x i8]) align 8 %i.dm, i64 1) #17, !noalias !74, !inline_history !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !74
  %i.rh = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8, !noalias !74
  call void %i.ri(ptr nonnull byval([40 x i8]) align 8 %i.dk) #17, !noalias !74, !inline_history !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i64 40, i1 false), !noalias !74
  %.pre.i6.i.i.i.i.i = load i64, ptr %i.qk, align 8, !noalias !74
  br label %_RNvMs2_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs87lmcIEqiMc_31libsignal_message_backup_macros.exit7.i.i.i.i.i

_RNvMs2_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB5_6Buffer4pushCs87lmcIEqiMc_31libsignal_message_backup_macros.exit7.i.i.i.i.i: ; preds = %bb.kq, %bb.kp
  %i.rj = phi i64 [ %i.qw, %bb.kp ], [ %.pre.i6.i.i.i.i.i, %bb.kq ]
  %i.rk = load ptr, ptr %i.dy, align 8, !noalias !74
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rj
  store i8 1, ptr %i.rl, align 1, !noalias !74
  %i.rm = load i64, ptr %i.qk, align 8, !noalias !74
  %i.rn = add i64 %i.rm, 1
  store i64 %i.rn, ptr %i.qk, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !74
  br label %bb.lb

bb.kr:                                            ; preds = %bb.ko, %bb.kn
  %i.ro = phi i64 [ %i.qw, %bb.kn ], [ %.pre.i.i.i.i.i.i, %bb.ko ]
  %i.rp = load ptr, ptr %i.dy, align 8, !noalias !74
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.ro
  store i8 0, ptr %i.rq, align 1, !noalias !74
  %i.rr = load i64, ptr %i.qk, align 8, !noalias !74
  %i.rs = add i64 %i.rr, 1                        ; 3 uses
  store i64 %i.rs, ptr %i.qk, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !74
  %i.rt = load i64, ptr %i.ql, align 8, !noalias !74
  %i.ru = sub i64 %i.rt, %i.rs
  %i.rv = icmp ult i64 %i.ru, 4
  br i1 %i.rv, label %bb.ks, label %_RNvXs1_NtNtCsjOW1RlS57dv_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !74
  %i.rw = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !noalias !74
  call void %i.rx(ptr nonnull sret([40 x i8]) align 8 %i.di, ptr nonnull byval([40 x i8]) align 8 %i.dj, i64 4) #17, !noalias !74, !inline_history !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !74
  store ptr inttoptr (i64 1 to ptr), ptr %i.dy, align 8, !noalias !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false), !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !74
  store ptr @_RNvNvXs4_NtNtCsjOW1RlS57dv_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !74
  %i.ry = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !74
  call void %i.rz(ptr nonnull byval([40 x i8]) align 8 %i.dh) #17, !noalias !74, !inline_history !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.di, i64 40, i1 false), !noalias !74
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.qk, align 8, !noalias !74
  br label %_RNvXs1_NtNtCsjOW1RlS57dv_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i

_RNvXs1_NtNtCsjOW1RlS57dv_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCs87lmcIEqiMc_31libsignal_message_backup_macros.exit.i.i.i.i.i: ; preds = %bb.ks, %bb.kr
  %i.sa = phi i64 [ %i.rs, %bb.kr ], [ %.pre.i.i.i.i.i.i.i, %bb.ks ]
  %i.sb = load ptr, ptr %i.dy, align 8, !noalias !74
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sa
  store i32 %.sroa.4.04666.i.i, ptr %i.sc, align 1, !noalias !74
  %i.sd = load i64, ptr %i.qk, align 8, !noalias !74
  %i.se = add i64 %i.sd, 4
  store i64 %i.se, ptr %i.qk, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !74
  br label %bb.lb

bb.kt:                                            ; preds = %bb.kj, %bb.ki
  %i.sf = phi i64 [ %i.qc, %bb.ki ], [ %.pre.i.i.i.i, %bb.kj ]
  %i.sg = load ptr, ptr %i.dy, align 8, !noalias !74
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sf
  store i8 1, ptr %i.sh, align 1, !noalias !74
  %i.si = load i64, ptr %i.py, align 8, !noalias !74
  %i.sj = add i64 %i.si, 1                        ; 5 uses
  store i64 %i.sj, ptr %i.py, align 8, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !74
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.dw, align 8, !noalias !74
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !74
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !noalias !74
  %i.sk = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775806
  br i1 %i.sk, label %.thread.i.i.i.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !74 ; 2 uses
  %.sroa.4.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.sroa.4.0.i.i.i.i = load i64, ptr %.sroa.4.0.in.i.i.i.i, align 8, !noalias !74 ; 5 uses
  %.not.i.i8.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i8.i.i.i, label %.thread.i.i.i.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !74
end_hunk_0
