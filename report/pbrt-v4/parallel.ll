Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parallel?download=true
inline.NumInlined: 1169
inline.NumDeleted: 335
begin_hunk_0_@_ZN4pbrt10ThreadPoolC2Ei:bb.a
  %min.iters.check = icmp ult i64 %i.al, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  %i.ao = add i64 %i.x, -8
  %i.ap = sub i64 %i.ao, %i.y
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %i.aq
  %scevgep26 = getelementptr i8, ptr %i.w, i64 8
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.aq
  %bound0 = icmp ult ptr %i.ah, %scevgep27
  %bound1 = icmp ult ptr %i.w, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.al, 120
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 4611686018427387888     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.w, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.av ; 4 uses
  %next.gep29 = getelementptr i8, ptr %i.w, i64 %i.av ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.aw = getelementptr i8, ptr %next.gep29, i64 32 ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep29, i64 64 ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep29, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep29, align 8, !tbaa !55, !alias.scope !148
  %wide.load30 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !55, !alias.scope !148
  %wide.load31 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !55, !alias.scope !148
  %wide.load32 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !55, !alias.scope !148
  %i.az = getelementptr i8, ptr %next.gep, i64 32
  %i.ba = getelementptr i8, ptr %next.gep, i64 64
  %i.bb = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !55, !alias.scope !149, !noalias !150
  store <4 x i64> %wide.load30, ptr %i.az, align 8, !tbaa !55, !alias.scope !149, !noalias !150
  store <4 x i64> %wide.load31, ptr %i.ba, align 8, !tbaa !55, !alias.scope !149, !noalias !150
  store <4 x i64> %wide.load32, ptr %i.bb, align 8, !tbaa !55, !alias.scope !149, !noalias !150
  store <4 x i64> zeroinitializer, ptr %next.gep29, align 8, !tbaa !55, !alias.scope !148
  store <4 x i64> zeroinitializer, ptr %i.aw, align 8, !tbaa !55, !alias.scope !148
  store <4 x i64> zeroinitializer, ptr %i.ax, align 8, !tbaa !55, !alias.scope !148
  store <4 x i64> zeroinitializer, ptr %i.ay, align 8, !tbaa !55, !alias.scope !148
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.bd = shl i64 %n.vec33, 3                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.ah, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.w, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index34, 3                     ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ah, i64 %i.bg
  %next.gep36 = getelementptr i8, ptr %i.w, i64 %i.bg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %wide.load37 = load <4 x i64>, ptr %next.gep36, align 8, !tbaa !55, !alias.scope !148
  store <4 x i64> %wide.load37, ptr %next.gep35, align 8, !tbaa !55, !alias.scope !149, !noalias !150
  store <4 x i64> zeroinitializer, ptr %next.gep36, align 8, !tbaa !55, !alias.scope !148
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.an, %n.vec33
  br i1 %cmp.n39, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.bi = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !55, !alias.scope !147
  store i64 %i.bi, ptr %.012.i.i.i.i, align 8, !tbaa !55, !alias.scope !146
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !55, !alias.scope !147
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %.noexc15 ], [ %i.be, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, %bb.h
  store ptr %i.ah, ptr %0, align 8, !tbaa !56
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bp, ptr %i.e, align 8, !tbaa !54
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %3, align 8, !tbaa !55
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.pr, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  call void @_ZSt9terminatev() #27
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bq = add nuw nsw i32 %.0618, 1
  %exitcond.not = icmp eq i32 %.0618, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !137

bb.j:                                             ; preds = %bb.b
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %3, align 8, !tbaa !55
  %.not.i11 = icmp eq i64 %.sroa.0.0.copyload.i.i10, 0
  br i1 %.not.i11, label %.body, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZSt9terminatev() #27
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.br, %bb.j ], [ %i.n, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #23
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool6WorkerEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !156
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @.str.5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  store i8 1, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = load i8, ptr %i.f, align 8, !tbaa !57, !range !41, !noundef !58
  %2 = trunc nuw i8 %i.g to i1
  br i1 %2, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4pbrt10ThreadPool10WorkOrWaitEPSt11unique_lockISt5mutexEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1, i1 noundef zeroext false)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !154

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.j
  %lpad.loopexit.split-lp7 = landingpad { ptr, i32 }
          cleanup
  %i.h = load i8, ptr %i.d, align 8, !tbaa !31, !range !41, !noundef !58
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.j = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp7

bb.i:                                             ; preds = %bb.e
  %i.l = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !156
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = load i8, ptr %i.d, align 8, !tbaa !31, !range !41, !noundef !58
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

bb.l:                                             ; preds = %bb.k
  %i.p = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZNSt11unique_lockISt5mutexED2Ev.exit3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #23 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit3

_ZNSt11unique_lockISt5mutexED2Ev.exit3:           ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !0

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !55
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

declare void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool10WorkOrWaitEPSt11unique_lockISt5mutexEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not13 = xor i1 %2, true
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.b = load i8, ptr %i.a, align 1, !range !41
  %3 = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %.not13, i1 %3, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(9) %1)
  br label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.018 = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %.not19 = icmp eq ptr %.018, null
  br i1 %.not19, label %.critedge16, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.020 = phi ptr [ %.0, %bb.d ], [ %.018, %bb.c ] ; 8 uses
  %i.e = load ptr, ptr %.020, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(33) %.020)
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %.0 = load ptr, ptr %i.i, align 8, !tbaa !59    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge16, label %.lr.ph, !llvm.loop !157

.critedge:                                        ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !61
  %i.m = load ptr, ptr %.020, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(33) %.020, ptr noundef %1)
  %i.p = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  tail call void @_ZSt20__throw_system_errori(i32 noundef 1) #25
  unreachable

bb.f:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !31, !range !41, !noundef !58
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.t) #25
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %bb.h
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %i.u = load i32, ptr %i.j, align 8, !tbaa !61
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !61
  %i.w = load ptr, ptr %.020, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(33) %.020), !inline_history !1
  br i1 %i.z, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit

_ZNK4pbrt11ParallelJob8FinishedEv.exit:           ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !61
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

bb.j:                                             ; preds = %_ZNK4pbrt11ParallelJob8FinishedEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #23
  br label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

.critedge16:                                      ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(9) %1)
  br label %_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread

_ZNK4pbrt11ParallelJob8FinishedEv.exit.thread:    ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit, %.critedge16, %bb.j, %_ZNK4pbrt11ParallelJob8FinishedEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_lock") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.f, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !63
  store ptr %2, ptr %i.d, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h) #23
  ret void
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4pbrt10ThreadPool17RemoveFromJobListEPNS_11ParallelJobE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef captures(none) initializes((32, 33)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.d, ptr %i.f, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.b, ptr %i.g, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4pbrt10ThreadPool12WorkOrReturnEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.01124 = load ptr, ptr %i.d, align 8, !tbaa !59 ; 2 uses
  %.not25.not = icmp eq ptr %.01124, null
  br i1 %.not25.not, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.d
  %.01126 = phi ptr [ %.011, %bb.d ], [ %.01124, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 8 uses
  %i.e = load ptr, ptr %.01126, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(33) %.01126)
          to label %bb.c unwind label %.loopexit.split-lp.thread

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01126, i64 24
end_hunk_0
