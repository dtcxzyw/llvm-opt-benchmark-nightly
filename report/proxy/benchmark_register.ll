Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFdRKS_IdSaIdEEERNS0_13StatisticUnitEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !61, !alias.scope !958, !noalias !957 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !959
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !tbaa !76, !alias.scope !957, !noalias !958
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !62, !alias.scope !958, !noalias !957
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !62, !alias.scope !957, !noalias !958
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !61, !alias.scope !958, !noalias !957
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.as = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !61, !alias.scope !957, !noalias !958
  store ptr %i.al, ptr %.0911.i.i.i, align 8, !tbaa !76, !alias.scope !958, !noalias !957
  store i64 0, ptr %i.at, align 8, !tbaa !61, !alias.scope !958, !noalias !957
  store i8 0, ptr %i.al, align 8, !tbaa !62, !alias.scope !958, !noalias !957
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, i64 12, i1 false), !alias.scope !959
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !953

_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ay, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.az, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i31 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i30, align 8, !tbaa !58, !alias.scope !960, !noalias !961
  %i.bb = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !76, !alias.scope !961, !noalias !960 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.g:                                             ; preds = %.lr.ph.i.i.i29
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !61, !alias.scope !961, !noalias !960 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !962
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bb, ptr %.012.i.i.i30, align 8, !tbaa !76, !alias.scope !960, !noalias !961
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !62, !alias.scope !961, !noalias !960
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !62, !alias.scope !960, !noalias !961
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !61, !alias.scope !961, !noalias !960
  br label %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.g
  %i.bj = phi i64 [ %i.bf, %bb.g ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !61, !alias.scope !960, !noalias !961
  store ptr %i.bc, ptr %.0911.i.i.i31, align 8, !tbaa !76, !alias.scope !961, !noalias !960
  store i64 0, ptr %i.bk, align 8, !tbaa !61, !alias.scope !961, !noalias !960
  store i8 0, ptr %i.bc, align 8, !tbaa !62, !alias.scope !961, !noalias !960
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bm, ptr noundef nonnull align 8 dereferenceable(12) %i.bn, i64 12, i1 false), !alias.scope !962
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !953

_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38: ; preds = %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.az, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bp, %_ZSt19__relocate_object_aIN9benchmark8internal10StatisticsES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !168
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bt) #34
  br label %_ZNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit38, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !174
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !167
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !168
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #37
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal16AddNegatedPowersIiEEvPSt6vectorIT_SaIS3_EES3_S3_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, !prof !41

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i11 = icmp eq i32 %i.f, 0
  br i1 %.not.i11, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12

_ZN9benchmark8internal18GetNullLogInstanceEv.exit12: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, !prof !41

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i13 = icmp eq i32 %i.i, 0
  br i1 %.not.i13, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14

_ZN9benchmark8internal18GetNullLogInstanceEv.exit14: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, %bb.f, %bb.g
  %i.j = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.h, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, !prof !41

bb.h:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i15 = icmp eq i32 %i.l, 0
  br i1 %.not.i15, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16

_ZN9benchmark8internal18GetNullLogInstanceEv.exit16: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit14, %bb.h, %bb.i
  %i.m = sub nsw i32 0, %1
  %i.n = sub nsw i32 0, %2
  %i.o = tail call ptr @_ZN9benchmark8internal9AddPowersIiEENSt6vectorIT_SaIS3_EE8iteratorEPS5_S3_S3_i(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.m, i32 noundef %3) ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 6 uses
  %.not4.i.not = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.not, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %4 = ptrtoaddr ptr %i.q to i64                  ; 2 uses
  %5 = ptrtoaddr ptr %i.o to i64                  ; 4 uses
  %i.r = add i64 %4, -4
  %i.s = sub i64 %i.r, %5                         ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.v = shl i64 %n.vec, 2
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !83
  %wide.load21 = load <4 x i32>, ptr %i.y, align 4, !tbaa !83
  %i.z = sub nsw <4 x i32> zeroinitializer, %wide.load
  %i.aa = sub nsw <4 x i32> zeroinitializer, %wide.load21
  store <4 x i32> %i.z, ptr %next.gep, align 4, !tbaa !83
  store <4 x i32> %i.aa, ptr %i.y, align 4, !tbaa !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !963

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.01.05.i.ph = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader40, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader40 ] ; 3 uses
  %i.ac = load i32, ptr %.sroa.01.05.i, align 4, !tbaa !83
  %i.ad = sub nsw i32 0, %i.ac
  store i32 %i.ad, ptr %.sroa.01.05.i, align 4, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ae, %i.q
  br i1 %.not.i17, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit, label %.lr.ph.i, !llvm.loop !964

_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit: ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 5 uses
  %i.af = icmp ult ptr %i.o, %.sroa.0.08.i.i
  br i1 %i.af, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit
  %i.ag = add i64 %4, -8
  %i.ah = add i64 %5, 4
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ah)
  %i.aj = add i64 %i.ai, -4                       ; 2 uses
  %i.ak = icmp ne i64 %i.aj, %5
  %i.al = zext i1 %i.ak to i64                    ; 3 uses
  %i.am = add i64 %5, %i.al
  %i.an = sub i64 %i.aj, %i.am                    ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, %i.al            ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check24 = icmp samesign ult i64 %i.ap, 31
  br i1 %min.iters.check24, label %.lr.ph.i.i.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ar = lshr i64 %i.an, 3
  %i.as = add nuw nsw i64 %i.ar, %i.al
  %i.at = shl nuw i64 %i.as, 2                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.o, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = sub nuw nsw i64 -4, %i.at
  %i.ax = getelementptr i8, ptr %i.q, i64 %i.aw
  %bound0 = icmp ult ptr %i.o, %i.q
  %bound1 = icmp ult ptr %i.ax, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader39, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck
  %n.vec26 = and i64 %i.aq, 9223372036854775804   ; 4 uses
  %i.ay = mul i64 %n.vec26, -4
  %i.az = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ay
  %i.ba = shl i64 %n.vec26, 2
  %i.bb = getelementptr i8, ptr %i.o, i64 %i.ba
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph25
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body27 ] ; 3 uses
  %i.bc = mul i64 %index28, -4
  %next.gep29 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bc
  %i.bd = shl i64 %index28, 2
  %next.gep30 = getelementptr i8, ptr %i.o, i64 %i.bd ; 2 uses
  %wide.load31 = load <4 x i32>, ptr %next.gep30, align 4, !tbaa !83, !alias.scope !970, !noalias !971
  %i.be = getelementptr i8, ptr %next.gep29, i64 -12 ; 2 uses
  %wide.load32 = load <4 x i32>, ptr %i.be, align 4, !tbaa !83, !alias.scope !971
  %reverse = shufflevector <4 x i32> %wide.load32, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep30, align 4, !tbaa !83, !alias.scope !970, !noalias !971
  %reverse33 = shufflevector <4 x i32> %wide.load31, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse33, ptr %i.be, align 4, !tbaa !83, !alias.scope !971
  %index.next34 = add nuw i64 %index28, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next34, %n.vec26
  br i1 %i.bf, label %middle.block35, label %vector.body27, !llvm.loop !968

middle.block35:                                   ; preds = %vector.body27
  %cmp.n36 = icmp eq i64 %i.aq, %n.vec26
  br i1 %cmp.n36, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader39

.lr.ph.i.i.preheader39:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block35
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.az, %middle.block35 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.preheader ], [ %i.bb, %middle.block35 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader39, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader39 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader39 ] ; 3 uses
  %i.bg = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !83
  %i.bh = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !83
  store i32 %i.bh, ptr %.sroa.05.09.i.i, align 4, !tbaa !83
  store i32 %i.bg, ptr %.sroa.0.010.i.i, align 4, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %.sroa.0.0.i.i
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !969

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block35, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN9benchmark8internal16AddNegatedPowersIiEEvPS3_IT_SaISA_EESA_SA_iEUlRiE_ET0_SA_SA_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN9benchmark8internal9AddPowersIiEENSt6vectorIT_SaIS3_EE8iteratorEPS5_S3_S3_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, !prof !41

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i9, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10

_ZN9benchmark8internal18GetNullLogInstanceEv.exit10: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, !prof !41

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i11 = icmp eq i32 %i.i, 0
  br i1 %.not.i11, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12

_ZN9benchmark8internal18GetNullLogInstanceEv.exit12: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit10, %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !178  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !172    ; 3 uses
  %.not16 = icmp slt i32 %2, 1
  br i1 %.not16, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.lr.ph
  %i.n = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.o = phi ptr [ %i.k, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %storemerge17 = phi i32 [ 1, %.lr.ph ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.not8 = icmp slt i32 %storemerge17, %1
  br i1 %.not8, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !173
  %.not.i13 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %storemerge17, ptr %i.o, align 4, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.j, align 8, !tbaa !178
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #36 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i32 %storemerge17, ptr %i.ac, align 4, !tbaa !83
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.n, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !173
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #34
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !172
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !178
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j, %bb.h
  %i.aj = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.n, %bb.j ], [ %i.n, %bb.h ]
  %i.ak = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.j ], [ %i.o, %bb.h ]
  %i.al = sdiv i32 2147483647, %3
end_hunk_0
