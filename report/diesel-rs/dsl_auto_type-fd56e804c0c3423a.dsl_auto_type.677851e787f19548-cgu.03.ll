Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.03?download=true
inline.NumInlined: 678
inline.NumDeleted: 243
begin_hunk_0_@_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer14register_error:bb.a
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCscI6d9CVNmLh_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.p unwind label %bb.q

.body:                                            ; preds = %bb.i, %bb.j, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.t, %bb.i ], [ %i.t, %bb.j ]
  %i.n = load i64, ptr %i.e, align 8, !noundef !13
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.e, align 8
  br label %.thread

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8, !noalias !1208
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1208, !noundef !13 ; 3 uses
  %i.r = load i64, ptr %i.g, align 8, !range !22, !alias.scope !1208, !noundef !13
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8grow_oneCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load i64, ptr %i.j, align 8, !noalias !1209, !noundef !13
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.j, align 8, !noalias !1209
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1208, !nonnull !13, !noundef !13
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  store ptr %i.j, ptr %i.aa, align 8
  %i.ab = add i64 %i.q, 1
  store i64 %i.ab, ptr %i.p, align 8, !alias.scope !1208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %i.e, align 8, !noundef !13
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c)
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private23push_underscore_spanned(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %3)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.c) #19
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.q, %bb.m
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.p:                                             ; preds = %bb.f
  unreachable

.thread:                                          ; preds = %.body, %bb.m, %bb.q
  %.pn8 = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn8

bb.q:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn5error5ErrorECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %2) #19
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer21infer_expression_type(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [224 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer25try_infer_expression_type(ptr noalias noundef align 8 captures(address) dereferenceable(224) %i.c, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) %3)
  %i.d = load i64, ptr %i.c, align 8, !range !28, !noundef !13
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvYRNtNtCs91tTATF2stA_3syn4expr4ExprNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens17into_token_streamCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2)
          to label %bb.e unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = invoke noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer14register_error(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.e, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn5error5ErrorECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer25try_infer_expression_type(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(224) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 19 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [224 x i8], align 8               ; 6 uses
  %i.j = alloca [224 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [224 x i8], align 8               ; 34 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [224 x i8], align 8               ; 7 uses
  %.sroa.6108 = alloca [24 x i8], align 8         ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [224 x i8], align 8              ; 7 uses
  %.sroa.6102 = alloca [24 x i8], align 8         ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [224 x i8], align 8              ; 4 uses
  %i.an = alloca [312 x i8], align 8              ; 5 uses
  %i.ao = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.674 = alloca [24 x i8], align 8          ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 11 uses
  %i.aq = alloca [128 x i8], align 8              ; 13 uses
  %.sroa.657 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.465 = alloca [32 x i8], align 8          ; 3 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [312 x i8], align 8              ; 5 uses
  %i.at = alloca [64 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [48 x i8], align 8               ; 9 uses
  %i.ax = alloca [224 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.ay = alloca [224 x i8], align 8              ; 18 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [12 x i8], align 4               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 5 uses
  %i.be = alloca [48 x i8], align 8               ; 5 uses
  %i.bf = alloca [48 x i8], align 8               ; 5 uses
  %i.bg = alloca [56 x i8], align 8               ; 9 uses
  %i.bh = alloca [32 x i8], align 8               ; 5 uses
  %i.bi = alloca [48 x i8], align 8               ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr246 = phi ptr [ %2, %bb.a ], [ %.tr246.be, %tailrecurse.backedge ] ; 23 uses
  %.tr247 = phi ptr [ %3, %bb.a ], [ %.sroa.02.0.i, %tailrecurse.backedge ] ; 3 uses
  %.not.i = icmp eq ptr %.tr247, null
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.bj = load i64, ptr %.tr247, align 8, !range !24, !alias.scope !1231, !noundef !13 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 3
  tail call void @llvm.assume(i1 %i.bk)
  %.not4.i = icmp eq i64 %i.bj, 6
  %..i = select i1 %.not4.i, ptr null, ptr %.tr247
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit: ; preds = %tailrecurse, %bb.b
  %.sroa.02.0.i = phi ptr [ null, %tailrecurse ], [ %..i, %bb.b ] ; 18 uses
  %i.bl = load i64, ptr %.tr246, align 8, !range !27, !noundef !13
  switch i64 %i.bl, label %bb.c [
    i64 4, label %bb.d
    i64 5, label %bb.e
    i64 7, label %bb.f
    i64 14, label %tailrecurse.backedge
    i64 19, label %bb.g
    i64 23, label %bb.h
    i64 24, label %tailrecurse.backedge
    i64 25, label %bb.i
    i64 34, label %bb.j
  ]

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %.not189 = icmp eq ptr %.sroa.02.0.i, null
  br i1 %.not189, label %bb.gf, label %.thread

bb.d:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %cond = icmp eq ptr %.sroa.02.0.i, null
  br i1 %cond, label %bb.k, label %.thread

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr246, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr246, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !13 ; 2 uses
  %.not178 = icmp eq i64 %i.bo, 0
  br i1 %.not178, label %bb.bl, label %bb.bk

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %cond194 = icmp eq ptr %.sroa.02.0.i, null
  br i1 %cond194, label %bb.cc, label %.thread

tailrecurse.backedge:                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %.tr246.be.in = getelementptr inbounds nuw i8, ptr %.tr246, i64 32
  %.tr246.be = load ptr, ptr %.tr246.be.in, align 8, !nonnull !13, !noundef !13
  br label %tailrecurse

bb.g:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %cond195 = icmp eq ptr %.sroa.02.0.i, null
  br i1 %cond195, label %bb.dn, label %.thread

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %cond196 = icmp eq ptr %.sroa.02.0.i, null
  br i1 %cond196, label %bb.ew, label %.thread

bb.i:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %cond197 = icmp eq ptr %.sroa.02.0.i, null
  br i1 %cond197, label %bb.fi, label %.thread

bb.j:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCs91tTATF2stA_3syn2ty4TypeE6filterNCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB1s_12TypeInferrer25try_infer_expression_type0EB1w_.exit
  %.not = icmp eq ptr %.sroa.02.0.i, null
  br i1 %.not, label %bb.fv, label %bb.fu

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bp = tail call noundef i32 @_RNvMsi_CsiD8eKn5yFCp_11proc_macro2NtB5_4Span10mixed_site()
  store i32 %i.bp, ptr %i.q, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr246, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvYRNtNtCs91tTATF2stA_3syn2op5BinOpNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens17into_token_streamCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bq)
  %i.br = call noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = call noundef i32 @_RNvMsi_CsiD8eKn5yFCp_11proc_macro2NtB5_4Span10located_at(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.q, i32 noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bt = load i32, ptr %i.bq, align 8, !range !1232, !noundef !13
  switch i32 %i.bt, label %default.unreachable287 [
    i32 0, label %bb.x
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
    i32 10, label %bb.u
    i32 11, label %bb.v
    i32 12, label %bb.q
    i32 13, label %bb.q
    i32 14, label %bb.q
    i32 15, label %bb.q
    i32 16, label %bb.q
    i32 17, label %bb.q
    i32 18, label %bb.w
    i32 19, label %bb.w
    i32 20, label %bb.w
    i32 21, label %bb.w
    i32 22, label %bb.w
    i32 23, label %bb.w
    i32 24, label %bb.w
    i32 25, label %bb.w
    i32 26, label %bb.w
    i32 27, label %bb.w
  ]

default.unreachable287:                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.cn, %bb.bk
  unreachable

bb.m:                                             ; preds = %bb.k
  br label %bb.x

bb.n:                                             ; preds = %bb.k
  br label %bb.x

bb.o:                                             ; preds = %bb.k
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  br label %bb.x

bb.q:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o)
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4)
          to label %bb.bg unwind label %bb.bf

bb.r:                                             ; preds = %bb.k
  br label %bb.x

bb.s:                                             ; preds = %bb.k
  br label %bb.x

bb.t:                                             ; preds = %bb.k
  br label %bb.x

bb.u:                                             ; preds = %bb.k
  br label %bb.x

bb.v:                                             ; preds = %bb.k
  br label %bb.x

bb.w:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l)
          to label %bb.bi unwind label %bb.bh

bb.x:                                             ; preds = %bb.k, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0120.0 = phi ptr [ @15, %bb.v ], [ @7, %bb.m ], [ @8, %bb.n ], [ @9, %bb.o ], [ @10, %bb.p ], [ @11, %bb.r ], [ @12, %bb.s ], [ @13, %bb.t ], [ @14, %bb.u ], [ @6, %bb.k ]
  %.sroa.11.0 = phi i64 [ 3, %bb.v ], [ 3, %bb.m ], [ 3, %bb.n ], [ 3, %bb.o ], [ 3, %bb.p ], [ 6, %bb.r ], [ 6, %bb.s ], [ 5, %bb.t ], [ 3, %bb.u ], [ 3, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsx_CsiD8eKn5yFCp_11proc_macro2NtB5_5Ident3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0120.0, i64 noundef %.sroa.11.0, i32 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr246, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !13, !noundef !13
  invoke void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer21infer_expression_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.j, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) null)
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %bb.ad, %bb.ab
  %.pn186 = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %.pn184, %bb.ad ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer25try_infer_expression_type:bb.a
bb.eg:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private18push_group_spanned(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef %i.gc, i8 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.eh unwind label %bb.eb

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bd

bb.ei:                                            ; preds = %bb.dr
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.ej:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bd

bb.ek:                                            ; preds = %bb.ds
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.el:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bd

bb.em:                                            ; preds = %bb.dt
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro27LiteralECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.en:                                            ; preds = %bb.dt
  %i.go = load i64, ptr %i.ab, align 8, !range !28, !noundef !13 ; 2 uses
  %i.gp = icmp eq i64 %i.go, -1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 24, i1 false)
  br i1 %i.gp, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro27LiteralECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6102)
  br label %bb.gg

bb.ep:                                            ; preds = %bb.en
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.8104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.8104.0..sroa_idx105, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5147.0..sroa_idx, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %i.go, ptr %i.x, align 8
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102.0..sroa_idx103, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102, i64 24, i1 false)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro27LiteralECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6102)
  br label %bb.bd

bb.eq:                                            ; preds = %bb.du
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro27LiteralECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.y) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.er:                                            ; preds = %bb.du
  %i.gt = load i64, ptr %i.z, align 8, !range !28, !noundef !13 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, -1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108, ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 24, i1 false)
  br i1 %i.gu, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro27LiteralECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108)
  br label %bb.gg

bb.et:                                            ; preds = %bb.er
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.8110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.8110.0..sroa_idx111, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5150.0..sroa_idx, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.gt, ptr %i.x, align 8
  %.sroa.6108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108.0..sroa_idx109, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108, i64 24, i1 false)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro27LiteralECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108)
  br label %bb.bd

bb.eu:                                            ; preds = %bb.dv
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.v) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.ev:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bd

bb.ew:                                            ; preds = %bb.h
  %i.gy = getelementptr inbounds nuw i8, ptr %.tr246, i64 120
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr246, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ha = load ptr, ptr %1, align 8, !nonnull !13, !align !12, !noundef !13
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !13, !align !12, !noundef !13
  %i.hc = tail call { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hb) ; 2 uses
  %i.hd = extractvalue { ptr, ptr } %i.hc, 0      ; 4 uses
  %i.he = extractvalue { ptr, ptr } %i.hc, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.hf = load ptr, ptr %1, align 8, !nonnull !13, !align !12, !noundef !13
  %i.hg = load ptr, ptr %i.hf, align 8, !nonnull !13, !align !12, !noundef !13
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load i8, ptr %i.hh, align 8, !range !1241, !noundef !13
  invoke void @_RNvMNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type4caseNtB2_4Case15ident_with_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, i8 noundef %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy)
          to label %bb.ey unwind label %bb.ex

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit223: ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ex
  %.pn = phi { ptr, i32 } [ %i.hj, %bb.ex ], [ %i.hm, %bb.ez ], [ %i.hm, %bb.fa ], [ %i.hm, %bb.fb ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtCs91tTATF2stA_3syn10punctuated4IterNtNtB1k_4path11PathSegmentEEECs8SLDEF1Cvau_13dsl_auto_type(ptr %i.hd, ptr nonnull %i.he) #19
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit

bb.ex:                                            ; preds = %bb.ew
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit223

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr246, i64 144
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !13, !noundef !13
  invoke void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer21infer_expression_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.am, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.hl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) null)
          to label %bb.fc unwind label %bb.ez

bb.ez:                                            ; preds = %bb.fc, %bb.ey
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ho = load i8, ptr %i.hn, align 8, !range !15, !alias.scope !1245, !noundef !13
  %i.hp = icmp eq i8 %i.ho, 2
  br i1 %i.hp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit223, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val1.i.i221 = load i64, ptr %i.hq, align 8, !alias.scope !1245, !noundef !13 ; 2 uses
  %i.hr = icmp eq i64 %.val1.i.i221, 0
  br i1 %i.hr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit223, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %.val.i.i222 = load ptr, ptr %i.ap, align 8, !alias.scope !1245, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i222, i64 noundef range(i64 1, 0) %.val1.i.i221, i64 noundef 1) #17, !noalias !1245
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit223

bb.fc:                                            ; preds = %bb.ey
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.479.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %i.am, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 18, ptr %i.an, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.tr246, i64 64 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !range !17, !noundef !13
  %.not165 = icmp eq i64 %i.ht, -1
  %. = select i1 %.not165, ptr null, ptr %i.hs
  invoke fastcc void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer27infer_generics_or_use_hints(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ao, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(312) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %.)
          to label %bb.fd unwind label %bb.ez

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.hu = load i64, ptr %i.ao, align 8, !range !1242, !noundef !13 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, -1
  %4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br i1 %i.hv, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.hy = load i8, ptr %i.hx, align 8, !range !15, !alias.scope !1248, !noundef !13
  %i.hz = icmp eq i8 %i.hy, 2
  br i1 %i.hz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit226, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val1.i.i224 = load i64, ptr %i.ia, align 8, !alias.scope !1248, !noundef !13 ; 2 uses
  %i.ib = icmp eq i64 %.val1.i.i224, 0
  br i1 %i.ib, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit226, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i225 = load ptr, ptr %i.ap, align 8, !alias.scope !1248, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i225, i64 noundef range(i64 1, 0) %.val1.i.i224, i64 noundef 1) #17, !noalias !1248
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit226

bb.fh:                                            ; preds = %bb.fd
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.6237.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6237.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5144.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.sroa.5236.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5236.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674, i64 24, i1 false)
  %.sroa.7238.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7238.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hd), "nonnull"(ptr %i.he) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store ptr %i.hd, ptr %i.ic, align 8, !alias.scope !1250
  %i.id = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store ptr %i.he, ptr %i.id, align 8, !alias.scope !1250
  store i64 1, ptr %i.aq, align 8, !alias.scope !1250
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1250
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 1, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1250
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %i.hu, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1251
  %i.ie = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @_RINvXs4_NtCs91tTATF2stA_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4path11PathSegmentNtNtB8_5token7PathSepEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1M_8adapters5chain5ChainINtNtB2Y_6cloned6ClonedINtB6_4IterBU_EEINtNtNtB1O_5array4iter8IntoIterBU_Kj1_EEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ie, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 0, ptr %.sroa.594.0..sroa_idx, align 8
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 -1, ptr %.sroa.897.0..sroa_idx, align 8
  store i64 10, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.674)
  br label %bb.bd

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit226: ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtCs91tTATF2stA_3syn10punctuated4IterNtNtB1k_4path11PathSegmentEEECs8SLDEF1Cvau_13dsl_auto_type(ptr %i.hd, ptr nonnull %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.674)
  br label %bb.gg

bb.fi:                                            ; preds = %bb.i
  %i.if = getelementptr inbounds nuw i8, ptr %.tr246, i64 32 ; 2 uses
  %i.ig = tail call noundef align 8 ptr @_RNvMs_NtCs91tTATF2stA_3syn4pathNtB4_4Path9get_ident(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.if) ; 3 uses
  %.not162 = icmp eq ptr %i.ig, null
  br i1 %.not162, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @41, ptr %i.d, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.ih, align 8
  %i.ii = call noundef zeroext i1 @_RNvXss_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_5IdentINtNtCscI6d9CVNmLh_4core3cmp9PartialEqReE2eqCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ii, label %bb.fm, label %bb.fl

bb.fk:                                            ; preds = %bb.fi, %bb.fl
  %i.ij = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @_RNvXs21_NtNtCs91tTATF2stA_3syn3gen5cloneNtNtBa_4path4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.if)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 -1, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 10, ptr %i.x, align 8
  br label %bb.bd

bb.fl:                                            ; preds = %bb.fj
  %i.ik = load ptr, ptr %1, align 8, !nonnull !13, !align !12, !noundef !13
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = call noundef align 8 ptr @_RNvMNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19local_variables_mapNtB2_22LocalVariablesMapInner3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.il, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig) ; 4 uses
  %.not163 = icmp eq ptr %i.im, null
  br i1 %.not163, label %bb.fk, label %bb.fn

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az)
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 4)
          to label %bb.ft unwind label %bb.fs

bb.fn:                                            ; preds = %bb.fl
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.io = load i64, ptr %i.in, align 8, !noundef !13
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.fo, label %bb.fp, !prof !29

bb.fo:                                            ; preds = %bb.fn
  store i64 -1, ptr %i.in, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 232
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 240
  %i.iu = load i64, ptr %i.it, align 8, !noundef !13
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.iu
  invoke void @_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtB1T_5slice4iter4IterBG_EEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull %i.is, ptr noundef nonnull %i.iv)
          to label %bb.fr unwind label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  call void @_RNvNtCscI6d9CVNmLh_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #21
  unreachable

bb.fq:                                            ; preds = %bb.fo
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load i64, ptr %i.in, align 8, !noundef !13
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.in, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit

bb.fr:                                            ; preds = %bb.fo
  %i.iz = load i64, ptr %i.in, align 8, !noundef !13
  %i.ja = add i64 %i.iz, 1
  store i64 %i.ja, ptr %i.in, align 8
  call void @_RNvXs2p_NtNtCs91tTATF2stA_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.im)
  br label %bb.bd

bb.fs:                                            ; preds = %bb.fm
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.az) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.ft:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.bd

bb.fu:                                            ; preds = %bb.j
  %i.jc = load i64, ptr %.sroa.02.0.i, align 8, !range !24, !noundef !13 ; 2 uses
  %i.jd = icmp ne i64 %i.jc, 3
  tail call void @llvm.assume(i1 %i.jd)
  %i.je = icmp eq i64 %i.jc, 15
  br i1 %i.je, label %bb.fy, label %.thread

bb.fv:                                            ; preds = %bb.j
  %i.jf = getelementptr inbounds nuw i8, ptr %.tr246, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.jg = tail call { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr4ExprNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jf) ; 2 uses
  %i.jh = extractvalue { ptr, ptr } %i.jg, 0
  %i.ji = extractvalue { ptr, ptr } %i.jg, 1
  store ptr %i.jh, ptr %i.bc, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ji, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %1, ptr %i.jk, align 8
  call void @_RINvXs4_NtCs91tTATF2stA_3syn10punctuatedINtB6_10PunctuatedNtNtB8_2ty4TypeNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1A_8adapters3map3MapINtB6_4IterNtNtB8_4expr4ExprENCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB3J_12TypeInferrer25try_infer_expression_types0_0EEB3N_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvXsj8_NtCs91tTATF2stA_3syn5tokenNtB6_5ParenNtNtCscI6d9CVNmLh_4core7default7Default7default(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bb)
          to label %bb.fx unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.bd) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.fx:                                            ; preds = %bb.fv
  %i.jm = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jm, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jn, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false)
  store i64 15, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.bd

bb.fy:                                            ; preds = %bb.fu
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !13 ; 2 uses
  %i.jr = icmp ult i64 %i.jq, 39755913951960241
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !align !12, !noundef !13
  %.not158 = icmp ne ptr %i.jt, null
  %.198 = zext i1 %.not158 to i64
  %i.ju = add nuw nsw i64 %i.jq, %.198
  %i.jv = getelementptr inbounds nuw i8, ptr %.tr246, i64 48
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !13 ; 2 uses
  %i.jx = icmp ult i64 %i.jw, 50127021939428130
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw i8, ptr %.tr246, i64 56
  %i.jz = load ptr, ptr %i.jy, align 8, !align !12, !noundef !13
  %.not159 = icmp ne ptr %i.jz, null
  %.sroa.0126.0 = zext i1 %.not159 to i64
  %i.ka = add nuw nsw i64 %i.jw, %.sroa.0126.0
  %.not160 = icmp eq i64 %i.ju, %i.ka
  br i1 %.not160, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.kb = getelementptr inbounds nuw i8, ptr %.tr246, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.kc = tail call { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jo) ; 2 uses
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0      ; 3 uses
  %i.ke = extractvalue { ptr, ptr } %i.kc, 1      ; 4 uses
  %i.kf = invoke { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr4ExprNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kb)
          to label %bb.gb unwind label %bb.ge     ; 2 uses

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvYRNtNtCs91tTATF2stA_3syn2ty9TypeTupleNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens17into_token_streamCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jo)
  %i.kg = call noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kh, i32 noundef %i.kg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 74)
  store i64 -1, ptr %0, align 8
  br label %bb.gg

bb.gb:                                            ; preds = %bb.fz
  %i.ki = extractvalue { ptr, ptr } %i.kf, 0
  %i.kj = extractvalue { ptr, ptr } %i.kf, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kd), "nonnull"(ptr %i.ke) ]
  %.sroa.7228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7228.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.kd, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.ke, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.kj, ptr %.sroa.6227.0..sroa_idx, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %1, ptr %i.kk, align 8
  call void @_RINvXs4_NtCs91tTATF2stA_3syn10punctuatedINtB6_10PunctuatedNtNtB8_2ty4TypeNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1A_8adapters3map3MapINtNtB2M_3zip3ZipINtB6_4IterBU_EIB3r_NtNtB8_4expr4ExprEENCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4a_12TypeInferrer25try_infer_expression_types_0EEB4e_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvXs2F_NtNtCs91tTATF2stA_3syn3gen5cloneNtNtBa_2ty9TypeTupleNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jo)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.bh) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.be

bb.gd:                                            ; preds = %bb.gb
  %i.km = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kn, ptr noundef nonnull align 8 dereferenceable(12) %i.km, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ko, ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i64 48, i1 false)
  store i64 15, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bf), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.bd

bb.ge:                                            ; preds = %bb.fz
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ke) ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated4IterNtNtBG_2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type(ptr %i.kd, ptr nonnull %i.ke) #19
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit

.thread:                                          ; preds = %bb.fu, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  call void @_RNvXs2p_NtNtCs91tTATF2stA_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.02.0.i)
  br label %bb.bd

bb.gf:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYRNtNtCs91tTATF2stA_3syn4expr4ExprNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens17into_token_streamCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.tr246)
  %i.kq = call noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kr, i32 noundef %i.kq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 64)
  store i64 -1, ptr %0, align 8
  br label %bb.gg

bb.gg:                                            ; preds = %bb.do, %bb.eo, %bb.es, %bb.cb, %bb.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit226, %bb.ga, %bb.gf, %bb.bj, %bb.bg, %bb.bd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB4_12TypeInferrer27infer_generics_or_use_hints(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(312) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.sroa.4 = alloca [16 x i8], align 8     ; 4 uses
  %i.a = alloca [312 x i8], align 8               ; 5 uses
  %i.b = alloca [376 x i8], align 8               ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %2, i64 312, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.4)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr4ExprNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.e, 0        ; 3 uses
  %i.i = extractvalue { ptr, ptr } %i.e, 1        ; 4 uses
  %i.j = invoke { ptr, ptr } @_RNvMNtCs91tTATF2stA_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4expr4ExprNtNtB4_5token5CommaE4iterCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h), "nonnull"(ptr %i.i) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.4, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.sroa.8.sroa.0.0 = phi ptr [ %i.i, %bb.f ], [ undef, %bb.c ]
  %.sroa.731.0 = phi ptr [ %i.h, %bb.f ], [ %1, %bb.c ]
  %.pn43 = phi { ptr, ptr } [ %i.j, %bb.f ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i32 [ 1, %bb.f ], [ -1, %bb.c ]
  %.sroa.528.0 = extractvalue { ptr, ptr } %.pn43, 0
  %.sroa.6.0 = extractvalue { ptr, ptr } %.pn43, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef nonnull align 8 dereferenceable(312) %2, i64 312, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store i32 %.sroa.0.0, ptr %i.k, align 8, !alias.scope !1261
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  store i32 0, ptr %.sroa.5.0..sroa_idx26, align 4, !alias.scope !1261
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store ptr %.sroa.528.0, ptr %.sroa.528.0..sroa_idx, align 8, !alias.scope !1261
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1261
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store ptr %.sroa.731.0, ptr %.sroa.731.0..sroa_idx, align 8, !alias.scope !1261
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store ptr %.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !1261
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.4, i64 16, i1 false), !alias.scope !1261
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %1, ptr %.sroa.833.0..sroa_idx, align 8, !alias.scope !1261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvXs4_NtCs91tTATF2stA_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4path15GenericArgumentNtNtB8_5token5CommaEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBU_E9from_iterINtNtNtB1O_8adapters5chain5ChainINtNtB1Q_6option8IntoIterBU_EINtCs5nPpgB8ORV1_6either6EitherINtNtB30_3map3MapINtB6_4IterNtNtB8_4expr4ExprENCNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inferenceNtB5g_12TypeInferrer27infer_generics_or_use_hints0EIB4q_INtNtB30_3zip3ZipIB4H_BU_EIB2W_IB4q_B4G_NcNtINtB3u_6OptionRB4R_E4Some0EIB4q_INtNtNtB1Q_3ops5range9RangeFromlENCB5b_s_0EEENCB5b_s0_0EEEEB5k_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(376) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = invoke noundef i32 @_RNvXsfw_NtCs91tTATF2stA_3syn5tokenNtB6_2LtNtNtCscI6d9CVNmLh_4core7default7Default7default()
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.c) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs91tTATF2stA_3syn4path15GenericArgumentEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = invoke noundef i32 @_RNvXsf9_NtCs91tTATF2stA_3syn5tokenNtB6_2GtNtNtCscI6d9CVNmLh_4core7default7Default7default()
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.l, ptr %i.p, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.n, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !13 ; 2 uses
  %i.t = icmp ult i64 %i.s, 28823037615171175
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !align !12
  %.not22 = icmp eq ptr %i.w, null
  %or.cond = select i1 %i.u, i1 %.not22, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path30AngleBracketedGenericArgumentsECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(56) %i.d)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.q, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs91tTATF2stA_3syn4path15GenericArgumentEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.p, %bb.q, %bb.h
  %.pn20 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %.pn, %bb.q ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %.pn20

bb.o:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated4IterNtNtBG_4path15GenericArgumentEECs8SLDEF1Cvau_13dsl_auto_type(ptr %i.h, ptr nonnull %i.i) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.y, %bb.o ] ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !range !1262, !alias.scope !1263, !noundef !13
  %i.aa = icmp eq i64 %i.z, -1
end_hunk_1
