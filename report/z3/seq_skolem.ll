Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_skolem?download=true
inline.NumInlined: 475
inline.NumDeleted: 246
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3seq6skolem6is_preEP4exprRS2_S3_:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  store ptr %i.f, ptr %3, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3seq6skolem7is_postEP4exprRS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef zeroext i1 @_ZNK3seq6skolem9is_skolemERK6symbolPK4expr(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  store ptr %i.d, ptr %2, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  store ptr %i.f, ptr %3, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3seq6skolem11mk_unit_invEP4expr(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 6 uses
  %3 = alloca %class.symbol, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 65535
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.i

_ZNK8seq_util3str7is_unitEPK4expr.exit.i:         ; preds = %bb.b
  %i.l = load i32, ptr %i.k, align 8, !tbaa !139
  %i.m = icmp eq i32 %i.l, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 0
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !148
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit, label %bb.d

_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit:      ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.v) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.23)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !198
  store ptr %2, ptr %i.a, align 16, !tbaa !42, !noalias !198
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not21.i.i = icmp eq ptr %i.w, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !noalias !196
  br i1 %.not21.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.c, %_ZNK8seq_util3str7is_unitEPK4expr.exit.i, %bb.a, %bb.b
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.21, i32 noundef 190, ptr noundef nonnull @.str.22)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  unreachable

bb.e:                                             ; preds = %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit
  %i.y = call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2), !noalias !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit
  %.0.i.i = phi ptr [ %i.w, %_ZNK8seq_util3str7is_unitEPK4exprRPS1_.exit ], [ %i.y, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = call noundef ptr @_ZN8seq_util9mk_skolemERK6symboljPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %.0.i.i), !noalias !198 ; 3 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !50, !noalias !198, !nonnull !35, !align !36
  store ptr %i.aa, ptr %0, align 8, !tbaa !52, !alias.scope !198
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !11, !alias.scope !198
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i:      ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45, !noalias !198
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !45, !noalias !198
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53, !noalias !198, !nonnull !35, !align !36
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN3seq6skolem2mkERK6symbolP4exprP4sort.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !198
  resume { ptr, i32 } %i.ai

_ZN3seq6skolem2mkERK6symbolP4exprP4sort.exit:     ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

declare void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3seq6skolem7mk_lastEP4expr(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 9 uses
  %3 = alloca %class.zstring, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 16, ptr %i.d, align 4, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = invoke noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK4exprR7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.h, -1
  %i.j = invoke noundef ptr @_ZNK8seq_util3str7mk_charERK7zstringj(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef %i.i)
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !50, !nonnull !35, !align !36
  store ptr %i.j, ptr %0, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !45
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.q = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34
  %i.w = load i32, ptr %i.s, align 8, !tbaa !139
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %_ZNK8seq_util6is_seqEP4sort.exit.i, label %bb.j

_ZNK8seq_util6is_seqEP4sort.exit.i:               ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !205
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK8seq_util6is_seqEP4sort.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !130 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !57
  switch i8 %i.ae, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.invoke [
    i8 1, label %bb.m
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i
  ], !prof !131

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i:   ; preds = %bb.i
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.invoke: ; preds = %bb.i, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i
  %.str.28.sink = phi ptr [ @.str.27, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i ], [ @.str.28, %bb.i ]
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.af, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.str.28.sink, ptr %i.ag, align 8, !tbaa !136
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #19
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.cont unwind label %bb.l

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.invoke
  unreachable

bb.j:                                             ; preds = %_ZNK8seq_util6is_seqEP4sort.exit.i, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %bb.h
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.21, i32 noundef 202, ptr noundef nonnull @.str.24)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.thread unwind label %bb.l

.thread:                                          ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !206
  store ptr %2, ptr %i.a, align 16, !tbaa !42, !noalias !206
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !noalias !207
  br label %bb.n

bb.l:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.invoke, %.noexc8, %bb.n, %bb.k, %bb.j, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !137 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !210
  store ptr %2, ptr %i.a, align 16, !tbaa !42, !noalias !210
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not21.i.i = icmp eq ptr %i.ak, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !noalias !208
  br i1 %.not21.i.i, label %bb.n, label %.noexc8

bb.n:                                             ; preds = %.thread, %bb.m
  %i.an = phi ptr [ %i.ah, %.thread ], [ %i.al, %bb.m ]
  %i.ao = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %.noexc8 unwind label %bb.l

.noexc8:                                          ; preds = %bb.n, %bb.m
  %i.ap = phi ptr [ %i.al, %bb.m ], [ %i.an, %bb.n ]
  %.0.i.i = phi ptr [ %i.ak, %bb.m ], [ %i.ao, %bb.n ]
  %i.aq = invoke noundef ptr @_ZN8seq_util9mk_skolemERK6symboljPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %.0.i.i)
          to label %.noexc9 unwind label %bb.l    ; 3 uses

.noexc9:                                          ; preds = %.noexc8
  %i.ar = load ptr, ptr %1, align 8, !tbaa !50, !noalias !210, !nonnull !35, !align !36
  store ptr %i.aq, ptr %0, align 8, !tbaa !52, !alias.scope !210
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !11, !alias.scope !210
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i:      ; preds = %.noexc9
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !45, !noalias !210
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !45, !noalias !210
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i, %.noexc9
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53, !noalias !210, !nonnull !35, !align !36
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !210
  br label %.body

bb.p:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !210
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %bb.e, %bb.p
  %i.az = load ptr, ptr %3, align 8, !tbaa !141   ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.az, %i.b
  %i.ba = icmp eq ptr %i.az, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i10, %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN7zstringD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.az)
          to label %_ZN7zstringD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #18
  unreachable

_ZN7zstringD2Ev.exit:                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

.body:                                            ; preds = %bb.l, %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.aj, %bb.l ], [ %i.ay, %bb.o ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3seq6skolem8mk_firstEP4expr(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 6 uses
  %3 = alloca %class.zstring, align 8             ; 11 uses
  %4 = alloca %class.zstring, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 16, ptr %i.d, align 4, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = invoke noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK4exprR7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.h = add i32 %i.g, -1
  invoke void @_ZNK7zstring7extractEjj(ptr dead_on_unwind nonnull writable sret(%class.zstring) align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef 0, i32 noundef %i.h)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef ptr @_ZNK8seq_util3str9mk_stringERK7zstring(ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.f unwind label %bb.k       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !50, !nonnull !35, !align !36
  store ptr %i.i, ptr %0, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !45
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %bb.f
  %i.o = load ptr, ptr %4, align 8, !tbaa !141    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  %i.q = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.q
  br i1 %or.cond.i.i.i.i, label %_ZN7zstringD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
          to label %_ZN7zstringD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #18
  unreachable

_ZN7zstringD2Ev.exit:                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.i:                                             ; preds = %.noexc, %bb.m, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.body

bb.m:                                             ; preds = %bb.c, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !213
  store ptr %2, ptr %i.a, align 16, !tbaa !42, !noalias !213
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = invoke noundef ptr @_ZN8seq_util9mk_skolemERK6symboljPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.x)
          to label %.noexc8 unwind label %bb.i    ; 3 uses

.noexc8:                                          ; preds = %.noexc
  %i.ab = load ptr, ptr %1, align 8, !tbaa !50, !noalias !213, !nonnull !35, !align !36
  store ptr %i.aa, ptr %0, align 8, !tbaa !52, !alias.scope !213
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !11, !alias.scope !213
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45, !noalias !213
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !45, !noalias !213
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53, !noalias !213, !nonnull !35, !align !36
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !213
  br label %.body

_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb.exit: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !213
  br label %bb.o

bb.o:                                             ; preds = %_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb.exit, %_ZN7zstringD2Ev.exit
  %i.aj = load ptr, ptr %3, align 8, !tbaa !141   ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.aj, %i.b
  %i.ak = icmp eq ptr %i.aj, null
  %or.cond.i.i.i.i10 = or i1 %.not.i.i.i.i9, %i.ak
  br i1 %or.cond.i.i.i.i10, label %_ZN7zstringD2Ev.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.aj)
          to label %_ZN7zstringD2Ev.exit11 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #18
  unreachable

_ZN7zstringD2Ev.exit11:                           ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

.body:                                            ; preds = %bb.i, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.t, %bb.i ], [ %i.ai, %bb.n ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3seq6skolem7mk_stepEP4exprS2_S2_jjS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.obj_ref) align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.ref_vector, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !50, !nonnull !35, !align !36
  %i.b = ptrtoint ptr %i.a to i64
  store i64 %i.b, ptr %8, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 17 uses
  store ptr null, ptr %i.c, align 8, !tbaa !39
  %.not.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.a, %bb.b
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.aa

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !39 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4 ; 3 uses
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !40 ; 2 uses
  %i.g = zext i32 %.pre2.i.i to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.g
  store ptr %2, ptr %i.h, align 8, !tbaa !42
  %i.i = add i32 %.pre2.i.i, 1
  store i32 %i.i, ptr %.phi.trans.insert.i.i, align 4, !tbaa !40
  %.not.i.i.i.i8 = icmp eq ptr %3, null
  br i1 %.not.i.i.i.i8, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9: ; preds = %bb.c, %bb.d
  %i.m = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !40 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc13 unwind label %bb.aa

.noexc13:                                         ; preds = %bb.e
  %.pre.i.i10 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i11 = getelementptr inbounds i8, ptr %.pre.i.i10, i64 -4
  %.pre2.i.i12 = load i32, ptr %.phi.trans.insert.i.i11, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %.noexc13, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9
  %i.q = phi i32 [ %.pre2.i.i12, %.noexc13 ], [ %i.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9 ] ; 2 uses
  %i.r = phi ptr [ %.pre.i.i10, %.noexc13 ], [ %.pre.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i9 ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  store ptr %3, ptr %i.u, align 8, !tbaa !42
  %i.v = add i32 %i.q, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !40
  %.not.i.i.i.i15 = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i15, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16: ; preds = %bb.f, %bb.g
  %i.z = load i32, ptr %i.s, align 4, !tbaa !40   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc20 unwind label %bb.aa

.noexc20:                                         ; preds = %bb.h
  %.pre.i.i17 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i18 = getelementptr inbounds i8, ptr %.pre.i.i17, i64 -4
  %.pre2.i.i19 = load i32, ptr %.phi.trans.insert.i.i18, align 4, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %.noexc20, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16
  %i.ad = phi i32 [ %.pre2.i.i19, %.noexc20 ], [ %i.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16 ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i.i17, %.noexc20 ], [ %i.r, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i16 ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %4, ptr %i.ah, align 8, !tbaa !42
  %i.ai = add i32 %i.ad, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ak = invoke noundef ptr @_ZN10arith_util6mk_intEj(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i32 noundef %5)
          to label %bb.j unwind label %bb.aa      ; 3 uses

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i22, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i23

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i23: ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !39  ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i23
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i23
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc27 unwind label %bb.aa

.noexc27:                                         ; preds = %bb.m
  %.pre.i.i24 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i25 = getelementptr inbounds i8, ptr %.pre.i.i24, i64 -4
  %.pre2.i.i26 = load i32, ptr %.phi.trans.insert.i.i25, align 4, !tbaa !40
  br label %bb.n

bb.n:                                             ; preds = %.noexc27, %bb.l
  %i.av = phi i32 [ %.pre2.i.i26, %.noexc27 ], [ %i.ar, %bb.l ] ; 2 uses
  %i.aw = phi ptr [ %.pre.i.i24, %.noexc27 ], [ %i.ao, %bb.l ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  store ptr %i.ak, ptr %i.az, align 8, !tbaa !42
  %i.ba = add i32 %i.av, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !40
  %i.bb = invoke noundef ptr @_ZN10arith_util6mk_intEj(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i32 noundef %6)
          to label %bb.o unwind label %bb.aa      ; 3 uses

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i29, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !45
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30: ; preds = %bb.p, %bb.o
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !39  ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
end_hunk_0
begin_hunk_1_@_ZN3seq6skolem7mk_stepEP4exprS2_S2_jjS2_:bb.a
_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.df = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.cq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dg)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #18
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #18
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.aa:                                            ; preds = %bb.u, %bb.r, %bb.m, %bb.h, %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.n, %bb.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %i.dl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10arith_util6mk_intEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 0, ptr %2, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !147
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !150 ; 2 uses
  %i.k = icmp sgt i32 %1, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %2, align 8, !tbaa !146
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN8rationalC2Ej.exit

bb.c:                                             ; preds = %bb.a
  %i.l = zext i32 %1 to i64
  call void @_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.l)
  br label %_ZN8rationalC2Ej.exit

_ZN8rationalC2Ej.exit:                            ; preds = %bb.b, %bb.c
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !146
  %i.m = load i8, ptr %i.f, align 4
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.f, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.d, label %_ZNK10arith_util6pluginEv.exit.i

bb.d:                                             ; preds = %_ZN8rationalC2Ej.exit
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !151
  br label %_ZNK10arith_util6pluginEv.exit.i

_ZNK10arith_util6pluginEv.exit.i:                 ; preds = %.noexc, %_ZN8rationalC2Ej.exit
  %i.q = phi ptr [ %.pre.i.i, %.noexc ], [ %i.p, %_ZN8rationalC2Ej.exit ]
  %i.r = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %_ZNK10arith_util10mk_numeralERK8rationalb.exit unwind label %bb.f

_ZNK10arith_util10mk_numeralERK8rationalb.exit:   ; preds = %_ZNK10arith_util6pluginEv.exit.i
  %i.s = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !150 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i, %_ZNK10arith_util10mk_numeralERK8rationalb.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #18
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.r

bb.f:                                             ; preds = %_ZNK10arith_util6pluginEv.exit.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !42 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !43, !nonnull !35, !align !36
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !45
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3seq6skolem11mk_digit2bvEP4exprP4sort(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 6 uses
  %4 = alloca %class.symbol, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.25)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !216
  store ptr %2, ptr %i.a, align 16, !tbaa !42, !noalias !216
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not20.i = icmp ne ptr %2, null
  %i.c = zext i1 %.not20.i to i32
  %.not21.i = icmp eq ptr %3, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not21.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2), !noalias !216
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %3, %bb.a ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = call noundef ptr @_ZN8seq_util9mk_skolemERK6symboljPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef %.0.i), !noalias !216 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !50, !noalias !216, !nonnull !35, !align !36
  store ptr %i.f, ptr %0, align 8, !tbaa !52, !alias.scope !216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !11, !alias.scope !216
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45, !noalias !216
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !45, !noalias !216
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53, !noalias !216, !nonnull !35, !align !36
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !216
  resume { ptr, i32 } %i.n

_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb.exit: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

declare noundef ptr @_ZNK11ast_manager10get_pluginEi(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN14family_manager12mk_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager12mk_func_declEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZplRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !147
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !150 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !146
  store i32 %i.o, ptr %3, align 8, !tbaa !146
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !146
  store i32 %i.u, ptr %i.e, align 8, !tbaa !146
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !150
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.k

_ZN8rationalpLERKS_.exit:                         ; preds = %_ZN8rationalC2ERKS_.exit
  store i32 0, ptr %0, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !146
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !147
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !150 ; 2 uses
  %i.ai = load i8, ptr %i.a, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalpLERKS_.exit
  %i.al = load i32, ptr %3, align 8, !tbaa !146
  store i32 %i.al, ptr %0, align 8, !tbaa !146
  store i8 %i.aa, ptr %i.y, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3

bb.g:                                             ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3 unwind label %bb.k

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3:  ; preds = %bb.g, %bb.f
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !146
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !146
  %i.aq = load i8, ptr %i.ad, align 4
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit5

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalC2ERKS_.exit5 unwind label %bb.k

_ZN8rationalC2ERKS_.exit5:                        ; preds = %bb.h, %bb.i
  %i.as = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !150 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_ZN8rationalC2ERKS_.exit5
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i, %_ZN8rationalC2ERKS_.exit5
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #18
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZN8rationalC2ERKS_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #17
end_hunk_1
begin_hunk_2_@_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_:bb.a
  %i.au = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %i.au, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 1
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = load i32, ptr %i.av, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
  store i32 1, ptr %i.bd, align 8, !tbaa !146
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN11mpq_managerILb1EE7rat_addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb1EE3setER3mpqRKS1_.exit:       ; preds = %bb.l, %bb.k, %bb.f, %bb.e, %bb.p, %bb.o
  ret void
}

declare void @_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpq_managerILb1EE7rat_addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11mpz_managerILb1EE9is_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #1

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !39
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !133
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !153
  %i.r = load ptr, ptr %1, align 8, !tbaa !155    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !156  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !155
  %i.y = load i64, ptr %i.s, align 8, !tbaa !157
  store i64 %i.y, ptr %i.q, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !156
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !156
  store ptr %i.s, ptr %1, align 8, !tbaa !155
  store i64 0, ptr %i.aa, align 8, !tbaa !156
  store i8 0, ptr %i.s, align 8, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !155   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !157
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @__cxa_free_exception(ptr %i.o) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !39
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !153
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #19
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !217

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !155
  store i64 %i.c, ptr %i.a, align 8, !tbaa !157
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !157
  store i8 %i.j, ptr %i.i, align 1, !tbaa !157
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !157
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !133
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !157
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { cold noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !46}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11ast_manager", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11th_rewriter", !9, i64 0}
!13 = !{!"p1 _ZTS15seq_decl_plugin", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"_ZTS6symbol", !16, i64 0}
!18 = !{!"p1 _ZTS4sort", !9, i64 0}
!19 = !{!"p1 _ZTS16char_decl_plugin", !9, i64 0}
!20 = !{!"p1 _ZTS8seq_util", !9, i64 0}
!21 = !{!"_ZTSN8seq_util3strE", !20, i64 0, !10, i64 8, !6, i64 16}
!22 = !{!"p1 _ZTSN8seq_util3rex4infoE", !9, i64 0}
!23 = !{!"_ZTS6vectorIN8seq_util3rex4infoELb1EjE", !22, i64 0}
!24 = !{!"_ZTS19ref_manager_wrapperI4expr11ast_managerE", !10, i64 0}
!25 = !{!"p2 _ZTS4expr", !14, i64 0}
!26 = !{!"_ZTS6vectorIP4exprLb0EjE", !25, i64 0}
!27 = !{!"_ZTS10ptr_vectorI4exprE", !26, i64 0}
!28 = !{!"_ZTS15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE", !24, i64 0, !27, i64 8}
!29 = !{!"_ZTS10ref_vectorI4expr11ast_managerE", !28, i64 0}
!30 = !{!"_ZTS5lbool", !5, i64 0}
!31 = !{!"_ZTSN8seq_util3rex4infoE", !30, i64 0, !15, i64 4, !30, i64 8, !6, i64 12, !15, i64 16}
!32 = !{!"_ZTSN8seq_util3rexE", !20, i64 0, !10, i64 8, !6, i64 16, !23, i64 24, !29, i64 32, !31, i64 48, !31, i64 68}
!33 = !{!"_ZTS8seq_util", !10, i64 0, !13, i64 8, !19, i64 16, !6, i64 24, !21, i64 32, !32, i64 56}
!34 = !{!33, !6, i64 24}
!35 = !{}
!36 = !{i64 8}
!37 = !{!21, !6, i64 16}
!38 = !{!23, !22, i64 0}
!39 = !{!26, !25, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!"p1 _ZTS4expr", !9, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!24, !10, i64 0}
!44 = !{!"_ZTS3ast", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 6, !6, i64 6, !6, i64 8, !6, i64 12}
!45 = !{!44, !6, i64 8}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"p1 _ZTS17arith_decl_plugin", !9, i64 0}
!48 = !{!"_ZTS10arith_util", !10, i64 0, !47, i64 8}
!49 = !{!"_ZTSN3seq6skolemE", !10, i64 0, !12, i64 8, !33, i64 16, !48, i64 160, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336}
!50 = !{!49, !10, i64 0}
!51 = !{!"_ZTS7obj_refI4expr11ast_managerE", !41, i64 0, !10, i64 8}
!52 = !{!51, !41, i64 0}
!53 = !{!49, !12, i64 8}
!54 = !{!51, !10, i64 8}
!55 = !{!16, !16, i64 0}
!56 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJiP3ast6symbolP7zstring8rationaldjEEE", !5, i64 0, !5, i64 32}
!57 = !{!56, !5, i64 32}
!58 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIiLb1EEE", !6, i64 0}
!59 = !{!58, !6, i64 0}
!60 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!61 = !{!"_ZTSSt6atomicIjE", !60, i64 0}
!62 = !{!"long", !5, i64 0}
!63 = !{!"p1 long", !9, i64 0}
!64 = !{!"_ZTS6vectorImLb0EjE", !63, i64 0}
!65 = !{!"_ZTS7svectorImjE", !64, i64 0}
!66 = !{!"p2 _ZTS8reslimit", !14, i64 0}
!67 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !66, i64 0}
!68 = !{!"_ZTS10ptr_vectorI8reslimitE", !67, i64 0}
!69 = !{!"_ZTS8reslimit", !61, i64 0, !15, i64 4, !62, i64 8, !62, i64 16, !65, i64 24, !68, i64 32}
!70 = !{!"_ZTS22small_object_allocator", !5, i64 0, !5, i64 256, !62, i64 512}
!71 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !9, i64 0}
!72 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !71, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!73 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !9, i64 0}
!74 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !73, i64 0}
!75 = !{!"p1 int", !9, i64 0}
!76 = !{!"_ZTS6vectorIiLb0EjE", !75, i64 0}
!77 = !{!"_ZTS7svectorIijE", !76, i64 0}
!78 = !{!"_ZTS12symbol_tableIiE", !72, i64 0, !74, i64 24, !77, i64 32}
!79 = !{!"p1 _ZTS6symbol", !9, i64 0}
!80 = !{!"_ZTS6vectorI6symbolLb0EjE", !79, i64 0}
!81 = !{!"_ZTS7svectorI6symboljE", !80, i64 0}
!82 = !{!"_ZTS14family_manager", !6, i64 0, !78, i64 8, !81, i64 48}
!83 = !{!"p1 _ZTS22small_object_allocator", !9, i64 0}
!84 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !14, i64 0}
!85 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !84, i64 0}
!86 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !85, i64 0}
!87 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !10, i64 0, !83, i64 8, !86, i64 16, !86, i64 24}
!88 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !14, i64 0}
!89 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !88, i64 0}
!90 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !89, i64 0}
!91 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !10, i64 0, !83, i64 8, !90, i64 16}
!92 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !14, i64 0}
!93 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !92, i64 0}
!94 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !93, i64 0}
!95 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !10, i64 0, !83, i64 8, !94, i64 16, !94, i64 24}
!96 = !{!"p2 _ZTS11decl_plugin", !14, i64 0}
!97 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !96, i64 0}
!98 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !97, i64 0}
!99 = !{!"_ZTS14proof_gen_mode", !5, i64 0}
!100 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !9, i64 0}
!101 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !100, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !100, i64 40, !100, i64 48, !100, i64 56}
!102 = !{!"_ZTS9ast_table", !101, i64 0}
!103 = !{!"_ZTS6vectorIjLb0EjE", !75, i64 0}
!104 = !{!"_ZTS7svectorIjjE", !103, i64 0}
!105 = !{!"_ZTS6id_gen", !6, i64 0, !104, i64 8}
!106 = !{!"p1 _ZTS3app", !9, i64 0}
!107 = !{!"p1 _ZTS17default_map_entryIjjE", !9, i64 0}
!108 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !107, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!109 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !108, i64 0}
!110 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !109, i64 0}
!111 = !{!"_ZTS5u_mapIjE", !110, i64 0}
!112 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !9, i64 0}
!113 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !9, i64 0}
!114 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !113, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!115 = !{!"_ZTS7obj_mapI9func_declPS0_E", !114, i64 0}
!116 = !{!"p1 _ZTS15some_value_proc", !9, i64 0}
!117 = !{!"_ZTS11ast_manager", !69, i64 0, !70, i64 40, !82, i64 560, !87, i64 616, !91, i64 648, !95, i64 672, !98, i64 704, !99, i64 712, !15, i64 716, !102, i64 720, !105, i64 784, !105, i64 800, !18, i64 816, !18, i64 824, !106, i64 832, !106, i64 840, !106, i64 848, !6, i64 856, !15, i64 860, !111, i64 864, !112, i64 888, !15, i64 896, !15, i64 897, !10, i64 904, !17, i64 912, !115, i64 920, !116, i64 944}
!118 = !{!117, !18, i64 816}
!119 = !{!"p1 _ZTS3ast", !9, i64 0}
!120 = !{!"_ZTS4expr", !44, i64 0}
!121 = !{!"p1 _ZTS9func_decl", !9, i64 0}
!122 = !{!"_ZTS9app_flags", !6, i64 0, !6, i64 2, !6, i64 2, !6, i64 2}
!123 = !{!"_ZTS3app", !120, i64 0, !121, i64 16, !6, i64 24, !122, i64 28, !5, i64 32}
!124 = !{!123, !121, i64 16}
!125 = !{!"p1 _ZTS9decl_info", !9, i64 0}
!126 = !{!"_ZTS4decl", !44, i64 0, !17, i64 16, !125, i64 24}
!127 = !{!126, !125, i64 24}
!128 = !{!"p1 _ZTS9parameter", !9, i64 0}
!129 = !{!"_ZTS6vectorI9parameterLb1EjE", !128, i64 0}
!130 = !{!129, !128, i64 0}
!131 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!132 = !{!"vtable pointer", !4, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSSt9exception"}
!135 = !{!"_ZTSSt18bad_variant_access", !134, i64 0, !16, i64 8}
!136 = !{!135, !16, i64 8}
!137 = !{!119, !119, i64 0}
!138 = !{!"_ZTS9decl_info", !6, i64 0, !6, i64 4, !129, i64 8, !15, i64 16}
!139 = !{!138, !6, i64 0}
!140 = !{!"_ZTS6bufferIjLb1ELj16EE", !75, i64 0, !6, i64 8, !6, i64 12, !5, i64 16}
!141 = !{!140, !75, i64 0}
!142 = !{!140, !6, i64 8}
!143 = !{!140, !6, i64 12}
!144 = !{!"p1 _ZTS8mpz_cell", !9, i64 0}
!145 = !{!"_ZTS3mpz", !6, i64 0, !6, i64 4, !6, i64 4, !144, i64 8}
!146 = !{!145, !6, i64 0}
!147 = !{!145, !144, i64 8}
!148 = !{!123, !6, i64 24}
!149 = !{!"p1 _ZTS11mpq_managerILb1EE", !9, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!48, !47, i64 8}
!152 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!153 = !{!152, !16, i64 0}
!154 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !152, i64 0, !62, i64 8, !5, i64 16}
!155 = !{!154, !16, i64 0}
!156 = !{!154, !62, i64 8}
!157 = !{!5, !5, i64 0}
!158 = !{!12, !12, i64 0}
!159 = !{!13, !13, i64 0}
!160 = !{!"_ZTS11decl_plugin", !10, i64 8, !6, i64 16}
!161 = !{!"p2 _ZTSN15seq_decl_plugin4psigE", !14, i64 0}
!162 = !{!"_ZTS6vectorIPN15seq_decl_plugin4psigELb0EjE", !161, i64 0}
!163 = !{!"_ZTS10ptr_vectorIN15seq_decl_plugin4psigEE", !162, i64 0}
!164 = !{!"p2 _ZTS4sort", !14, i64 0}
!165 = !{!"_ZTS6vectorIP4sortLb0EjE", !164, i64 0}
!166 = !{!"_ZTS10ptr_vectorI4sortE", !165, i64 0}
!167 = !{!"_ZTS15seq_decl_plugin", !160, i64 0, !163, i64 24, !166, i64 32, !15, i64 40, !17, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !15, i64 80, !15, i64 81, !19, i64 88}
!168 = !{!167, !19, i64 88}
!169 = !{!19, !19, i64 0}
!170 = !{!160, !6, i64 16}
!171 = !{!20, !20, i64 0}
!172 = !{!33, !10, i64 0}
!173 = !{!32, !6, i64 16}
!174 = !{!31, !30, i64 0}
!175 = !{!31, !15, i64 4}
!176 = !{!31, !30, i64 8}
!177 = !{!31, !6, i64 12}
!178 = !{!31, !15, i64 16}
!179 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIP3astLb1EEE", !119, i64 0}
!180 = !{!179, !119, i64 0}
!181 = !{!17, !16, i64 0}
!182 = distinct !{!182, i1 false, !"_ZplRK8rationali"}
!183 = distinct !{!183, !182, !"_ZplRK8rationali: argument 0"}
!184 = distinct !{!184, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb"}
!185 = distinct !{!185, !184, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0"}
!186 = distinct !{!186, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb"}
!187 = distinct !{!187, !186, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0"}
!188 = !{!21, !10, i64 8}
!189 = !{!183}
!190 = !{!185}
!191 = !{!187}
!192 = distinct !{!192, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprP4sort"}
!193 = distinct !{!193, !192, !"_ZN3seq6skolem2mkERK6symbolP4exprP4sort: argument 0"}
!194 = distinct !{!194, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb"}
!195 = distinct !{!195, !194, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0"}
!196 = !{!193}
!197 = !{!195}
!198 = !{!195, !193}
!199 = distinct !{!199, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprP4sort"}
!200 = distinct !{!200, !199, !"_ZN3seq6skolem2mkERK6symbolP4exprP4sort: argument 0:thread"}
!201 = distinct !{!201, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb"}
!202 = distinct !{!202, !201, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0:thread"}
!203 = distinct !{!203, !199, !"_ZN3seq6skolem2mkERK6symbolP4exprP4sort: argument 0"}
!204 = distinct !{!204, !201, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0"}
!205 = !{!138, !6, i64 4}
!206 = !{!202, !200}
!207 = !{!200}
!208 = !{!203}
!209 = !{!204}
!210 = !{!204, !203}
!211 = distinct !{!211, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb"}
!212 = distinct !{!212, !211, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0"}
!213 = !{!212}
!214 = distinct !{!214, i1 false, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb"}
!215 = distinct !{!215, !214, !"_ZN3seq6skolem2mkERK6symbolP4exprS5_S5_S5_P4sortb: argument 0"}
!216 = !{!215}
!217 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_2
