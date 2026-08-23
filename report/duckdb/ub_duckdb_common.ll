Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !139
  %i.ae = load ptr, ptr %3, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !178
  %i.ah = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !139 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.al, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !16
  %i.am = load i64, ptr %i.t, align 8, !tbaa !79
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !79
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.an = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.r, %bb.g ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.g ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6348)
  call void @llvm.experimental.noalias.scope.decl(metadata !6351)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6348, !noalias !6351
  %i.ar = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6351, !noalias !6348 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !139, !alias.scope !6351, !noalias !6348 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !6353
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6348, !noalias !6351
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !79, !alias.scope !6351, !noalias !6348
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !79, !alias.scope !6348, !noalias !6351
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6351, !noalias !6348
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.az = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.av, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !139, !alias.scope !6348, !noalias !6351
  store ptr %i.as, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6351, !noalias !6348
  store i64 0, ptr %i.ba, align 8, !tbaa !139, !alias.scope !6351, !noalias !6348
  store i8 0, ptr %i.as, align 8, !tbaa !79, !alias.scope !6351, !noalias !6348
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !34, !alias.scope !6351, !noalias !6348
  store ptr null, ptr %i.be, align 8, !tbaa !78, !alias.scope !6351, !noalias !6348
  store <2 x ptr> %i.bf, ptr %i.bc, align 8, !tbaa !34, !alias.scope !6348, !noalias !6351
  store ptr null, ptr %i.bd, align 8, !tbaa !2124, !alias.scope !6351, !noalias !6348
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4490

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.bh, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i31 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i31, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38
  %.012.i.i.i.i33 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ], [ %i.bi, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i34 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ], [ %1, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  call void @llvm.experimental.noalias.scope.decl(metadata !6357)
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 16 ; 3 uses
  store ptr %i.bj, ptr %.012.i.i.i.i33, align 8, !tbaa !178, !alias.scope !6354, !noalias !6357
  %i.bk = load ptr, ptr %.0911.i.i.i.i34, align 8, !tbaa !16, !alias.scope !6357, !noalias !6354 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 16 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35

bb.i:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !139, !alias.scope !6357, !noalias !6354 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !6359
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i32
  store ptr %i.bk, ptr %.012.i.i.i.i33, align 8, !tbaa !16, !alias.scope !6354, !noalias !6357
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !79, !alias.scope !6357, !noalias !6354
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !79, !alias.scope !6354, !noalias !6357
  %.phi.trans.insert.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %.pre.i.i.i.i.i37 = load i64, ptr %.phi.trans.insert.i.i.i.i.i36, align 8, !tbaa !139, !alias.scope !6357, !noalias !6354
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35, %bb.i
  %i.bs = phi i64 [ %.pre.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35 ], [ %i.bo, %bb.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !139, !alias.scope !6354, !noalias !6357
  store ptr %i.bl, ptr %.0911.i.i.i.i34, align 8, !tbaa !16, !alias.scope !6357, !noalias !6354
  store i64 0, ptr %i.bt, align 8, !tbaa !139, !alias.scope !6357, !noalias !6354
  store i8 0, ptr %i.bl, align 8, !tbaa !79, !alias.scope !6357, !noalias !6354
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 40
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !34, !alias.scope !6357, !noalias !6354
  store ptr null, ptr %i.bx, align 8, !tbaa !78, !alias.scope !6357, !noalias !6354
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !34, !alias.scope !6354, !noalias !6357
  store ptr null, ptr %i.bw, align 8, !tbaa !2124, !alias.scope !6357, !noalias !6354
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 48 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.bz, %i.c
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, label %.lr.ph.i.i.i.i32, !llvm.loop !4490

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i40 = phi ptr [ %i.bi, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ca, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ]
  %.not.i42 = icmp eq ptr %i.d, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41
  call void @_ZdlPv(ptr noundef nonnull %i.d) #60
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !2148
  store ptr %.0.lcssa.i.i.i.i40, ptr %i.b, align 8, !tbaa !2151
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.m
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !2155
  ret void

.body:                                            ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.ce) #58 ; 0 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.s) #58
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.r) #60
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44: ; preds = %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit, %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #59
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.cg

bb.m:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #61
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE17_M_realloc_insertIJRNS0_15LocalFileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2871 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2880   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
  unreachable

_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #64
  br label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb9PathSplitESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !16     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139  ; 4 uses
  %i.y = icmp samesign ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !139
  store ptr %i.u, ptr %3, align 8, !tbaa !16
  store i64 0, ptr %i.aa, align 8, !tbaa !139
  store i8 0, ptr %i.u, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !178
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !79
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139 ; 2 uses
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !79
  store ptr %i.u, ptr %3, align 8, !tbaa !16
  store i64 0, ptr %i.ad, align 8, !tbaa !139
  store i8 0, ptr %i.u, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !178
  %i.ah = icmp eq ptr %i.t, %i.s
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ai = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.ak = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !16
  %i.an = load i64, ptr %i.s, align 8, !tbaa !79
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ao = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %bb.d ]
  %i.ap = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.aq = phi ptr [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !139
  store ptr %i.s, ptr %4, align 8, !tbaa !16
  store i64 0, ptr %i.ao, align 8, !tbaa !139
  store i8 0, ptr %i.s, align 8, !tbaa !79
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.e
  %.069.i.i = phi i64 [ %i.au, %bb.e ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.069.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !79
  switch i8 %i.at, label %bb.e [
    i8 42, label %.loopexit
    i8 63, label %.loopexit
    i8 91, label %.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.au = add nuw i64 %.069.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ap
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !2137

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.lcssa.i.i = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i8 %.lcssa.i.i, ptr %i.av, align 8, !tbaa !2873
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.q, %.loopexit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %.loopexit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  call void @llvm.experimental.noalias.scope.decl(metadata !6363)
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6360, !noalias !6363
  %i.ax = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6363, !noalias !6360 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !139, !alias.scope !6363, !noalias !6360 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !6365
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ax, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6360, !noalias !6363
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !79, !alias.scope !6363, !noalias !6360
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !79, !alias.scope !6360, !noalias !6363
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6363, !noalias !6360
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.bf = phi i64 [ %i.bb, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !139, !alias.scope !6360, !noalias !6363
  store ptr %i.ay, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6363, !noalias !6360
  store i64 0, ptr %i.bg, align 8, !tbaa !139, !alias.scope !6363, !noalias !6360
  store i8 0, ptr %i.ay, align 8, !tbaa !79, !alias.scope !6363, !noalias !6360
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !2873, !range !122, !alias.scope !6363, !noalias !6360, !noundef !123
  store i8 %i.bk, ptr %i.bi, align 8, !tbaa !2873, !alias.scope !6360, !noalias !6363
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6366

_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %.loopexit ], [ %i.bm, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35
  %.012.i.i.i.i30 = phi ptr [ %i.ce, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %i.bn, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %1, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6367)
  call void @llvm.experimental.noalias.scope.decl(metadata !6370)
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16 ; 3 uses
  store ptr %i.bo, ptr %.012.i.i.i.i30, align 8, !tbaa !178, !alias.scope !6367, !noalias !6370
  %i.bp = load ptr, ptr %.0911.i.i.i.i31, align 8, !tbaa !16, !alias.scope !6370, !noalias !6367 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.g:                                             ; preds = %.lr.ph.i.i.i.i29
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !139, !alias.scope !6370, !noalias !6367 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false), !alias.scope !6372
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i29
  store ptr %i.bp, ptr %.012.i.i.i.i30, align 8, !tbaa !16, !alias.scope !6367, !noalias !6370
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !79, !alias.scope !6370, !noalias !6367
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !79, !alias.scope !6367, !noalias !6370
  %.phi.trans.insert.i.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %.pre.i.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i.i33, align 8, !tbaa !139, !alias.scope !6370, !noalias !6367
  br label %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.g
  %i.bx = phi i64 [ %i.bt, %bb.g ], [ %.pre.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !139, !alias.scope !6367, !noalias !6370
  store ptr %i.bq, ptr %.0911.i.i.i.i31, align 8, !tbaa !16, !alias.scope !6370, !noalias !6367
  store i64 0, ptr %i.by, align 8, !tbaa !139, !alias.scope !6370, !noalias !6367
  store i8 0, ptr %i.bq, align 8, !tbaa !79, !alias.scope !6370, !noalias !6367
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 32
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !2873, !range !122, !alias.scope !6370, !noalias !6367, !noundef !123
  store i8 %i.cc, ptr %i.ca, align 8, !tbaa !2873, !alias.scope !6367, !noalias !6370
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.cd, %i.b
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29, !llvm.loop !6366

_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i37 = phi ptr [ %i.bn, %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ce, %_ZSt19__relocate_object_aIN6duckdb9PathSplitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ]
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb9PathSplitESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb9PathSplitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !2880
  store ptr %.0.lcssa.i.i.i.i37, ptr %i.a, align 8, !tbaa !2871
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.l
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !2872
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !139
  %i.ae = load ptr, ptr %4, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.ag = load i64, ptr %3, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !178
  %i.ai = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.t
  br i1 %i.aj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb15ExpandDirectoryEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPT_DpOT0_.exit
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !139 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.am, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN6duckdb15ExpandDirectoryEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPT_DpOT0_.exit
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !16
  %i.an = load i64, ptr %i.t, align 8, !tbaa !79
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !79
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !139
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.ag, ptr %i.aq, align 8, !tbaa !2889
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 0, ptr %i.ar, align 8, !tbaa !2887
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.r, %bb.g ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.g ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6410)
  call void @llvm.experimental.noalias.scope.decl(metadata !6413)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6410, !noalias !6413
  %i.at = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6413, !noalias !6410 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !139, !alias.scope !6413, !noalias !6410 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !6415
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.at, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6410, !noalias !6413
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !79, !alias.scope !6413, !noalias !6410
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !79, !alias.scope !6410, !noalias !6413
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6413, !noalias !6410
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.bb = phi i64 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !139, !alias.scope !6410, !noalias !6413
  store ptr %i.au, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6413, !noalias !6410
  store i64 0, ptr %i.bc, align 8, !tbaa !139, !alias.scope !6413, !noalias !6410
  store i8 0, ptr %i.au, align 8, !tbaa !79, !alias.scope !6413, !noalias !6410
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.be, ptr noundef nonnull align 8 dereferenceable(9) %i.bf, i64 9, i1 false), !alias.scope !6415
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4476

_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.bh, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35
  %.012.i.i.i.i30 = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %i.bi, %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %1, %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6416)
  call void @llvm.experimental.noalias.scope.decl(metadata !6419)
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16 ; 3 uses
  store ptr %i.bj, ptr %.012.i.i.i.i30, align 8, !tbaa !178, !alias.scope !6416, !noalias !6419
  %i.bk = load ptr, ptr %.0911.i.i.i.i31, align 8, !tbaa !16, !alias.scope !6419, !noalias !6416 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i.i29
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !139, !alias.scope !6419, !noalias !6416 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !6421
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i29
  store ptr %i.bk, ptr %.012.i.i.i.i30, align 8, !tbaa !16, !alias.scope !6416, !noalias !6419
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !79, !alias.scope !6419, !noalias !6416
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !79, !alias.scope !6416, !noalias !6419
  %.phi.trans.insert.i.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %.pre.i.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i.i33, align 8, !tbaa !139, !alias.scope !6419, !noalias !6416
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.i
  %i.bs = phi i64 [ %i.bo, %bb.i ], [ %.pre.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !139, !alias.scope !6416, !noalias !6419
  store ptr %i.bl, ptr %.0911.i.i.i.i31, align 8, !tbaa !16, !alias.scope !6419, !noalias !6416
  store i64 0, ptr %i.bt, align 8, !tbaa !139, !alias.scope !6419, !noalias !6416
  store i8 0, ptr %i.bl, align 8, !tbaa !79, !alias.scope !6419, !noalias !6416
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bv, ptr noundef nonnull align 8 dereferenceable(9) %i.bw, i64 9, i1 false), !alias.scope !6421
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 48 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.bx, %i.c
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29, !llvm.loop !4476

_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35, %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i37 = phi ptr [ %i.bi, %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.by, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ]
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  call void @_ZdlPv(ptr noundef nonnull %i.d) #60
  br label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !2882
  store ptr %.0.lcssa.i.i.i.i37, ptr %i.b, align 8, !tbaa !2883
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.m
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !2890
  ret void

bb.k:                                             ; preds = %.noexc.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.cc) #58 ; 0 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.l, label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41, label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41.sink.split

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41.sink.split: ; preds = %bb.k, %bb.l
  %.sink = phi ptr [ %i.ce, %bb.l ], [ %i.r, %bb.k ]
  call void @_ZdlPv(ptr noundef %.sink) #60
  br label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41.sink.split, %bb.l
  invoke void @__cxa_rethrow() #59
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ch

bb.o:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #61
  unreachable

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE13_M_deallocateEPS1_m.exit41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4 = alloca %union.anon.2, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2151 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2148   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
  unreachable

_ZNKSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #64
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.s = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE11_M_allocateEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !139  ; 4 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %i.z, align 8, !tbaa !139
  store i8 0, ptr %i.t, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !178
  %3 = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %3, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE11_M_allocateEm.exit
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !79
  store i64 %i.ab, ptr %.sroa.4, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %i.ac, align 8, !tbaa !139
  store i8 0, ptr %i.t, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.r, align 8, !tbaa !16
  %.sroa.4.0..sroa.4.16. = load i64, ptr %.sroa.4, align 8, !tbaa !79
  store i64 %.sroa.4.0..sroa.4.16., ptr %i.ad, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.ae = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !139
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.q, %bb.d ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %bb.d ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6425)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6422, !noalias !6425
  %i.ai = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6425, !noalias !6422 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !139, !alias.scope !6425, !noalias !6422 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !6427
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6422, !noalias !6425
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !79, !alias.scope !6425, !noalias !6422
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !79, !alias.scope !6422, !noalias !6425
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6425, !noalias !6422
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.aq = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.am, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !139, !alias.scope !6422, !noalias !6425
  store ptr %i.aj, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6425, !noalias !6422
  store i64 0, ptr %i.ar, align 8, !tbaa !139, !alias.scope !6425, !noalias !6422
  store i8 0, ptr %i.aj, align 8, !tbaa !79, !alias.scope !6425, !noalias !6422
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !34, !alias.scope !6425, !noalias !6422
  store ptr null, ptr %i.av, align 8, !tbaa !78, !alias.scope !6425, !noalias !6422
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !34, !alias.scope !6422, !noalias !6425
  store ptr null, ptr %i.au, align 8, !tbaa !2124, !alias.scope !6425, !noalias !6422
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4490

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.ay, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i30, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37
  %.012.i.i.i.i32 = phi ptr [ %i.br, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37 ], [ %i.az, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i33 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37 ], [ %1, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6431)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i.i32, align 8, !tbaa !178, !alias.scope !6428, !noalias !6431
  %i.bb = load ptr, ptr %.0911.i.i.i.i33, align 8, !tbaa !16, !alias.scope !6431, !noalias !6428 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34

bb.f:                                             ; preds = %.lr.ph.i.i.i.i31
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !139, !alias.scope !6431, !noalias !6428 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !6433
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i31
  store ptr %i.bb, ptr %.012.i.i.i.i32, align 8, !tbaa !16, !alias.scope !6428, !noalias !6431
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !79, !alias.scope !6431, !noalias !6428
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !79, !alias.scope !6428, !noalias !6431
  %.phi.trans.insert.i.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 8
  %.pre.i.i.i.i.i36 = load i64, ptr %.phi.trans.insert.i.i.i.i.i35, align 8, !tbaa !139, !alias.scope !6431, !noalias !6428
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34, %bb.f
  %i.bj = phi i64 [ %.pre.i.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34 ], [ %i.bf, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !139, !alias.scope !6428, !noalias !6431
  store ptr %i.bc, ptr %.0911.i.i.i.i33, align 8, !tbaa !16, !alias.scope !6431, !noalias !6428
  store i64 0, ptr %i.bk, align 8, !tbaa !139, !alias.scope !6431, !noalias !6428
  store i8 0, ptr %i.bc, align 8, !tbaa !79, !alias.scope !6431, !noalias !6428
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 40
  %i.bp = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !34, !alias.scope !6431, !noalias !6428
  store ptr null, ptr %i.bo, align 8, !tbaa !78, !alias.scope !6431, !noalias !6428
  store <2 x ptr> %i.bp, ptr %i.bm, align 8, !tbaa !34, !alias.scope !6428, !noalias !6431
  store ptr null, ptr %i.bn, align 8, !tbaa !2124, !alias.scope !6431, !noalias !6428
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 48 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 48 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i.i38, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i.i31, !llvm.loop !4490

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i39 = phi ptr [ %i.az, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.br, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37 ]
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !2148
  store ptr %.0.lcssa.i.i.i.i39, ptr %i.a, align 8, !tbaa !2151
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !2155
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2883 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2882   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
  unreachable

_ZNKSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #64
  br label %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb15ExpandDirectoryESaIS1_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %4, align 8, !tbaa !16
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !79
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = phi ptr [ %i.s, %bb.d ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.ac = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %i.ad, align 8, !tbaa !139
  store i8 0, ptr %i.u, align 8, !tbaa !79
  %i.ae = load i64, ptr %3, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.r, align 8, !tbaa !178
  %i.ag = icmp eq ptr %i.ab, %i.s
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ah = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.ai, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !16
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !79
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !139
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %i.ae, ptr %i.al, align 8, !tbaa !2889
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i8 0, ptr %i.am, align 8, !tbaa !2887
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.q, %bb.f ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %bb.f ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6434)
  call void @llvm.experimental.noalias.scope.decl(metadata !6437)
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.an, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6434, !noalias !6437
  %i.ao = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6437, !noalias !6434 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !139, !alias.scope !6437, !noalias !6434 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false), !alias.scope !6439
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6434, !noalias !6437
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !79, !alias.scope !6437, !noalias !6434
  store i64 %i.av, ptr %i.an, align 8, !tbaa !79, !alias.scope !6434, !noalias !6437
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6437, !noalias !6434
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.aw = phi i64 [ %i.as, %bb.g ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !139, !alias.scope !6434, !noalias !6437
  store ptr %i.ap, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6437, !noalias !6434
  store i64 0, ptr %i.ax, align 8, !tbaa !139, !alias.scope !6437, !noalias !6434
  store i8 0, ptr %i.ap, align 8, !tbaa !79, !alias.scope !6437, !noalias !6434
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.az, ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i64 9, i1 false), !alias.scope !6439
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4476

_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.f ], [ %i.bc, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35
  %.012.i.i.i.i30 = phi ptr [ %i.bt, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %i.bd, %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.bs, %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %1, %_ZNSt6vectorIN6duckdb15ExpandDirectoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6440)
  call void @llvm.experimental.noalias.scope.decl(metadata !6443)
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16 ; 3 uses
  store ptr %i.be, ptr %.012.i.i.i.i30, align 8, !tbaa !178, !alias.scope !6440, !noalias !6443
  %i.bf = load ptr, ptr %.0911.i.i.i.i31, align 8, !tbaa !16, !alias.scope !6443, !noalias !6440 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.h:                                             ; preds = %.lr.ph.i.i.i.i29
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !139, !alias.scope !6443, !noalias !6440 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false), !alias.scope !6445
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i29
  store ptr %i.bf, ptr %.012.i.i.i.i30, align 8, !tbaa !16, !alias.scope !6440, !noalias !6443
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !79, !alias.scope !6443, !noalias !6440
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !79, !alias.scope !6440, !noalias !6443
  %.phi.trans.insert.i.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %.pre.i.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i.i33, align 8, !tbaa !139, !alias.scope !6443, !noalias !6440
  br label %_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZSt19__relocate_object_aIN6duckdb15ExpandDirectoryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.h
  %i.bn = phi i64 [ %i.bj, %bb.h ], [ %.pre.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !139, !alias.scope !6440, !noalias !6443
  store ptr %i.bg, ptr %.0911.i.i.i.i31, align 8, !tbaa !16, !alias.scope !6443, !noalias !6440
  store i64 0, ptr %i.bo, align 8, !tbaa !139, !alias.scope !6443, !noalias !6440
  store i8 0, ptr %i.bg, align 8, !tbaa !79, !alias.scope !6443, !noalias !6440
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bq, ptr noundef nonnull align 8 dereferenceable(9) %i.br, i64 9, i1 false), !alias.scope !6445
end_hunk_1
