Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Sched?download=true
inline.NumInlined: 4815
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN8AstCStmt15profExecSectionEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
.critedge275:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %.body194.thread254
  %.pn54.pn.pn257 = phi { ptr, i32 } [ %i.lz, %.body194.thread254 ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ] ; 2 uses
  %i.mq = load ptr, ptr %14, align 8, !tbaa !176  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %.critedge275
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !148
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i170
  %.sink363 = phi i64 [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i170 ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ]
  %.sink361 = phi ptr [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i170 ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ]
  %.pn54.pn.pn.pn.ph.ph = phi { ptr, i32 } [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i170 ], [ %.pn54.pn.pn257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ]
  %i.mu = add i64 %.sink363, 1
  call void @_ZdlPvm(ptr noundef %.sink361, i64 noundef %i.mu) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172.sink.split, %.critedge275, %bb.au
  %.pn54.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn54.pn.pn257, %.critedge275 ], [ %i.in, %bb.au ], [ %.pn54.pn.pn.pn.ph.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.body178

.body178:                                         ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.thread, %.split.thread270, %.split.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172
  %.pn54.pn.pn.pn260 = phi { ptr, i32 } [ %.pn54.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i172 ], [ %i.ma, %.split ], [ %i.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.thread ], [ %i.jv, %.split.thread ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %i.mj, %.split.thread270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef 160) #29
  br label %bb.bi

bb.bi:                                            ; preds = %.body178, %bb.bf
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn260, %.body178 ], [ %i.ly, %bb.bf ] ; 2 uses
  %i.mv = load ptr, ptr %12, align 8, !tbaa !176  ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.hg
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.bi
  %i.mx = load i64, ptr %i.hg, align 8, !tbaa !148
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.be
  %.pn54.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lx, %bb.be ], [ %.pn54.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.pn54.pn.pn.pn.pn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %.body, %bb.an
  %.pn54.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.gr, %bb.an ], [ %.pn51.pn, %.body ] ; 2 uses
  %i.mz = load ptr, ptr %9, align 8, !tbaa !176   ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.ek
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.bj
  %i.nb = load i64, ptr %i.ek, align 8, !tbaa !148
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236, %bb.am
  %.pn54.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.am ], [ %.pn54.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236 ], [ %.pn54.pn.pn.pn.pn.pn.pn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.j
  %.pn54.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %i.ax, %bb.j ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.dr, %bb.z ]
  %i.nd = load ptr, ptr %3, align 8, !tbaa !176   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.f
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.bk
  %i.nf = load i64, ptr %i.f, align 8, !tbaa !148
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9V3Options9hierChildEv(ptr noundef nonnull align 8 dereferenceable(1728) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.b = load i32, ptr %i.a, align 8, !tbaa !429
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8AstCStmt3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #27 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(184) %i.b, i16 59, ptr noundef %i.d)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV7AstText, i64 16), ptr %i.b, align 8, !tbaa !248
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !174
  %i.g = load ptr, ptr %1, align 8, !tbaa !176    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !175  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.i, ptr %i.a, align 8, !tbaa !177
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3 unwind label %bb.e    ; 2 uses

.noexc3:                                          ; preds = %.noexc.i.i
  store ptr %i.k, ptr %i.e, align 8, !tbaa !176
  %i.l = load i64, ptr %i.a, align 8, !tbaa !177
  store i64 %i.l, ptr %i.f, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc3, %.noexc
  %i.m = phi ptr [ %i.k, %.noexc3 ], [ %i.f, %.noexc ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !148
  store i8 %i.n, ptr %i.m, align 1, !tbaa !148
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.o, ptr %i.p, align 8, !tbaa !175
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !176
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.b)
  ret void

bb.e:                                             ; preds = %.noexc.i.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #29
  resume { ptr, i32 } %i.s
}

declare noundef ptr @_ZN10AstNetlist18stlFirstIterationpEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

declare noundef ptr @_ZN7V3Sched4util6setVarEP11AstVarScopej(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152), i8) local_unnamed_addr #2

declare noundef ptr @_ZNK7V3Sched10TriggerKit15newCompBaseCallEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @"_ZNSt17_Function_handlerIFP11AstNodeStmtP11AstVarScopeEN7V3Sched12_GLOBAL__N_13$_0EE9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #19 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFP11AstNodeStmtP11AstVarScopeEN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7V3Sched12_GLOBAL__N_13$_0E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !186
  br label %"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7V3Sched12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !182    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.j = load ptr, ptr %0, align 8, !tbaa !182    ; 9 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !182      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #29
  br label %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !185
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !181  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ad = load <2 x ptr>, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !186
  store <2 x ptr> %i.ad, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !868

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.g, 8
  br i1 %i.ah, label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ai = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !186
  store <2 x ptr> %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !186
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !186
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !186
  store <2 x ptr> %i.ao, ptr %i.an, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !186
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !186
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !186
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !186
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !186
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !186
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 96
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !186
  store <2 x ptr> %i.ba, ptr %i.az, align 8, !tbaa !186
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 112
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !186
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !186
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 128
  %i.bg = add nsw i64 %.012.i.i.i.i.i, -8
  %i.bh = icmp sgt i64 %.012.i.i.i.i.i, 8
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit, !llvm.loop !869

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.bj = ashr exact i64 %i.ab, 4                 ; 5 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter44 = and i64 %i.bj, 7                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 2 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 2 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bl = load <2 x ptr>, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !186
  store <2 x ptr> %i.bl, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !186
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !870

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i26.prol ]
  %i.bp = icmp ult i64 %i.bj, 8
  br i1 %i.bp, label %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bq = load <2 x ptr>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !186
  store <2 x ptr> %i.bq, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !186
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bt = load <2 x ptr>, ptr %i.br, align 8, !tbaa !186
  store <2 x ptr> %i.bt, ptr %i.bs, align 8, !tbaa !186
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.bw = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !186
  store <2 x ptr> %i.bw, ptr %i.bv, align 8, !tbaa !186
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.bz = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !186
  store <2 x ptr> %i.bz, ptr %i.by, align 8, !tbaa !186
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cc = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !186
  store <2 x ptr> %i.cc, ptr %i.cb, align 8, !tbaa !186
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 80
  %i.cf = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !186
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !186
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 96
  %i.ci = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !186
  store <2 x ptr> %i.ci, ptr %i.ch, align 8, !tbaa !186
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 112
  %i.cl = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !186
  store <2 x ptr> %i.cl, ptr %i.ck, align 8, !tbaa !186
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 128
  %i.co = add nsw i64 %.012.i.i.i.i.i27, -8
  %i.cp = icmp sgt i64 %.012.i.i.i.i.i27, 8
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit, !llvm.loop !871

_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bi, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.bi, %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !872

_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.cs = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIP8AstScopeP9AstActiveES6_ET0_T_S8_S7_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.f
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !181
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIP8AstScopeP9AstActiveES6_S5_ET0_T_S8_S7_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9V3Options7systemCEv(ptr noundef nonnull align 8 dereferenceable(1728) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load i8, ptr %i.a, align 8, !tbaa !231, !range !172, !noundef !173
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8AstScope5varspEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  ret ptr %i.b
}

end_hunk_0
