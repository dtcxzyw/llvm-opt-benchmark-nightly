Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintSolver?download=true
inline.NumInlined: 8088
inline.NumDeleted: 3245
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4Luau16ConstraintSolver14pushConstraintENS_7NotNullINS_5ScopeEEERKNS_8LocationENS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bk = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #38, !noalias !1060 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load <2 x ptr>, ptr %4, align 8, !tbaa !75, !noalias !1060
  store ptr null, ptr %i.bl, align 8, !tbaa !114, !noalias !1060
  store <2 x ptr> %i.bm, ptr %5, align 16, !tbaa !75, !noalias !1060
  store ptr null, ptr %4, align 8, !tbaa !138, !noalias !1060
  invoke void @_ZN4Luau10ConstraintC1ENS_7NotNullINS_5ScopeEEERKNS_8LocationEONS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bk, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 %5)
          to label %bb.j unwind label %bb.q, !noalias !1060

bb.j:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bk, ptr %7, align 8, !tbaa !190, !alias.scope !1060
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !114, !noalias !1060 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8, !noalias !1060 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bp, align 8, !tbaa !117, !noalias !1060
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !118, !noalias !1060
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !120, !noalias !1060
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !1060
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #34, !noalias !1060, !inline_history !1048
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !120, !noalias !1060
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1060
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #34, !noalias !1060, !inline_history !1048
  br label %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.m:                                             ; preds = %bb.k
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !115, !noalias !1060
  %.not.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !67, !noalias !1060
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4, !noalias !1060
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.bs, %bb.n ], [ %i.cc, %bb.o ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cd, label %bb.p, label %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, !prof !78

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #34, !noalias !1060
  br label %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %bb.al, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.q ], [ %.pn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %.critedge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34, !noalias !1060
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 168) #36, !noalias !1060
  br label %common.resume

_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cf = load ptr, ptr %7, align 8               ; 6 uses
  %i.cg = load i8, ptr %i.a, align 8, !tbaa !192, !range !91, !noundef !92
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = ptrtoint ptr %i.cf to i64               ; 2 uses
  br i1 %i.ch, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  invoke void @_ZN4Luau6detail14DenseHashTableINS_23SubtypeConstraintRecordESt4pairIS2_PNS_10ConstraintEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EENS_27HashSubtypeConstraintRecordESt8equal_toIS2_EE14rehash_if_fullERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !203
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !200   ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = add i64 %i.co, 2654435769               ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !201 ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = add i64 %i.cs, 2654435769
  %i.cu = shl i64 %i.cp, 6
  %i.cv = add i64 %i.ct, %i.cu
  %i.cw = lshr i64 %i.cp, 2
  %i.cx = add i64 %i.cv, %i.cw
  %i.cy = xor i64 %i.cx, %i.cp                    ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !202 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = add nsw i64 %i.db, 2654435769
  %i.dd = shl i64 %i.cy, 6
  %i.de = add i64 %i.dc, %i.dd
  %i.df = lshr i64 %i.cy, 2
  %i.dg = add i64 %i.de, %i.df
  %i.dh = xor i64 %i.dg, %i.cy
  %i.di = load ptr, ptr %i.cj, align 8, !tbaa !204
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !200
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.do = load i32, ptr %i.dn, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i, %.noexc
  %.pn.i.i23 = phi i64 [ %i.dh, %.noexc ], [ %i.ej, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i ]
  %.02031.i.i = phi i64 [ 0, %.noexc ], [ %i.ei, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i ]
  %.02132.i.i = and i64 %.pn.i.i23, %i.cm         ; 2 uses
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %.02132.i.i ; 7 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !200 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dk
  br i1 %i.dr, label %bb.t, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !201
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i: ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !202
  %i.dx = icmp eq i32 %i.dw, %i.do
  br i1 %i.dx, label %bb.u, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24

bb.u:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !205
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !199
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !199
  br label %.loopexit

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24: ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i, %bb.t, %bb.s
  %i.eb = icmp eq ptr %i.dq, %i.cn
  br i1 %i.eb, label %bb.v, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i

bb.v:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !201
  %i.ee = icmp eq ptr %i.ed, %i.cr
  br i1 %i.ee, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i: ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !202
  %i.eh = icmp eq i32 %i.eg, %i.da
  br i1 %i.eh, label %.loopexit, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i: ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i, %bb.v, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24
  %i.ei = add i64 %.02031.i.i, 1                  ; 3 uses
  %i.ej = add i64 %i.ei, %.02132.i.i
  %.not.i.i25 = icmp ule i64 %i.ei, %i.cm
  call void @llvm.assume(i1 %.not.i.i25)
  br label %bb.s

.loopexit:                                        ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i, %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %i.cf, ptr %i.ek, align 8, !tbaa !190
  br label %bb.x

bb.w:                                             ; preds = %.invoke, %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.x:                                             ; preds = %.loopexit, %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEESt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !208 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !209
  %.not.i.i26 = icmp eq ptr %i.eo, %i.eq
  br i1 %.not.i.i26, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %i.ci, ptr %i.eo, align 8, !tbaa !190
  store ptr null, ptr %7, align 8, !tbaa !190
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.er, ptr %i.en, align 8, !tbaa !208
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.z:                                             ; preds = %bb.x
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !210 ; 10 uses
  %i.et = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.ac, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #37
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.z
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i38 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i38)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #38
          to label %.noexc41 unwind label %bb.w   ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev
  store i64 %i.ci, ptr %i.fe, align 8, !tbaa !190
  store ptr null, ptr %7, align 8, !tbaa !190
  %.not10.i.i.i.i = icmp eq ptr %i.es, %i.eo
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc41
  %i.ff = add i64 %i.et, -8
  %i.fg = sub i64 %i.ff, %i.eu                    ; 3 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.fj = and i64 %i.fg, -8
  %i.fk = add i64 %i.fj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fd, i64 %i.fk
  %scevgep87 = getelementptr i8, ptr %i.es, i64 %i.fk
  %bound0 = icmp ult ptr %i.fd, %scevgep87
  %bound1 = icmp ult ptr %i.es, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fi, 4611686018427387900     ; 3 uses
  %i.fl = shl i64 %n.vec, 3                       ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fl  ; 2 uses
  %i.fn = getelementptr i8, ptr %i.es, i64 %i.fl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fd, i64 %i.fo ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.es, i64 %i.fo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.fp = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep88, align 8, !tbaa !190, !alias.scope !1063, !noalias !1061
  %wide.load89 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !190, !alias.scope !1063, !noalias !1061
  %i.fq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !190, !alias.scope !1064, !noalias !1063
  store <2 x i64> %wide.load89, ptr %i.fq, align 8, !tbaa !190, !alias.scope !1064, !noalias !1063
  %i.fr = getelementptr i8, ptr %next.gep88, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep88, align 8, !tbaa !190, !alias.scope !1063, !noalias !1061
  store <2 x ptr> splat (ptr null), ptr %i.fr, align 8, !tbaa !190, !alias.scope !1063, !noalias !1061
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !1055

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader91

.lr.ph.i.i.i.i.preheader91:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fd, %vector.memcheck ], [ %i.fd, %.lr.ph.i.i.i.i.preheader ], [ %i.fm, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.es, %vector.memcheck ], [ %i.es, %.lr.ph.i.i.i.i.preheader ], [ %i.fn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader91, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader91 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader91 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.ft = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !190, !alias.scope !1062, !noalias !1061
  store i64 %i.ft, ptr %.012.i.i.i.i, align 8, !tbaa !190, !alias.scope !1061, !noalias !1062
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !190, !alias.scope !1062, !noalias !1061
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.fu, %i.eo
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1056

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc41
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fd, %.noexc41 ], [ %i.fm, %middle.block ], [ %i.fv, %.lr.ph.i.i.i.i ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.es, null
  br i1 %.not.i23.i, label %.noexc27, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.fx = load ptr, ptr %i.ep, align 8, !tbaa !209
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.fz) #36
  br label %.noexc27

.noexc27:                                         ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.fd, ptr %i.em, align 8, !tbaa !210
  store ptr %i.fw, ptr %i.en, align 8, !tbaa !208
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.ga, ptr %i.ep, align 8, !tbaa !209
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc27, %bb.y
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !215 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !216
  %.not.i28 = icmp eq ptr %i.gd, %i.gf
  br i1 %.not.i28, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  store ptr %i.cf, ptr %i.gd, align 8, !tbaa !218
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gg, ptr %i.gc, align 8, !tbaa !215
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !219 ; 5 uses
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 3 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775800
  br i1 %i.gl, label %.invoke, label %_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.gm = ashr exact i64 %i.gk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 1152921504606846975)
  %i.gq = select i1 %i.go, i64 1152921504606846975, i64 %i.gp ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i29)
  %i.gr = shl nuw nsw i64 %i.gq, 3
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #38
          to label %.noexc31 unwind label %bb.w   ; 5 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gk
  store ptr %i.cf, ptr %i.gt, align 8, !tbaa !218
  %.not10.i.i.i.i.i = icmp eq ptr %i.gh, %i.gd
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %i.gs, %.noexc31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i ], [ %i.gh, %.noexc31 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.gu = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !190, !alias.scope !1066, !noalias !1065
  store i64 %i.gu, ptr %.012.i.i.i.i.i, align 8, !tbaa !190, !alias.scope !1065, !noalias !1066
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, %i.gd
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc31
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gs, %.noexc31 ], [ %i.gw, %.lr.ph.i.i.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.gy = load ptr, ptr %i.ge, align 8, !tbaa !216
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.ha) #36
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.gs, ptr %i.gb, align 8, !tbaa !219
  store ptr %i.gx, ptr %i.gc, align 8, !tbaa !215
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.hb, ptr %i.ge, align 8, !tbaa !216
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !339 ; 2 uses
  %.not21 = icmp eq i64 %i.hd, 0
  br i1 %.not21, label %_ZNSt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit
  %i.he = add i64 %i.hd, -1                       ; 2 uses
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !339
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.af, label %_ZNSt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store i32 15, ptr %8, align 8, !tbaa !135
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !138 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.hj = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(136) %8)
          to label %.noexc32 unwind label %bb.aj  ; 0 uses

.noexc32:                                         ; preds = %bb.af
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !141
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc32
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !138
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc32
  %i.hp = phi ptr [ %i.ho, %bb.ag ], [ %i.hh, %.noexc32 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !143
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %i.hp)
          to label %_ZN4Luau16ConstraintSolver11reportErrorEONS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchE unwind label %bb.aj

_ZN4Luau16ConstraintSolver11reportErrorEONS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchE: ; preds = %bb.ah
  %i.ht = load i32, ptr %8, align 8, !tbaa !135
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !75
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void %i.hw(ptr noundef nonnull %i.hx)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.ai

end_hunk_0
begin_hunk_1_@_ZN4Luau16ConstraintSolver25DEPRECATED_pushConstraintENS_7NotNullINS_5ScopeEEERKNS_8LocationENS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEE:bb.a
  %i.aj = shl i64 %i.ah, 6
  %i.ak = lshr i64 %i.ah, 2
  %i.al = add nsw i64 %i.ai, 2654435769
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %i.am, %i.ak
  %i.ao = xor i64 %i.an, %i.ah
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !204
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i
  %.pn.i.i = phi i64 [ %i.ao, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i ], [ %i.bh, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i ]
  %.01830.i.i = phi i64 [ 0, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i ], [ %i.bg, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i ]
  %.01931.i.i = and i64 %.pn.i.i, %i.y            ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %.01931.i.i ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !200 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %.sink77
  br i1 %i.as, label %bb.g, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !201
  %i.av = icmp eq ptr %i.au, %i.n
  br i1 %i.av, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.i.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.i.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !202
  %i.ay = icmp eq i32 %i.ax, %i.s
  br i1 %i.ay, label %bb.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.thread.i.i: ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.i.i, %bb.g, %bb.f
  %i.az = icmp eq ptr %i.ar, %i.k
  br i1 %i.az, label %bb.h, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i

bb.h:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.thread.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !201
  %i.bc = icmp eq ptr %i.bb, %i.p
  br i1 %i.bc, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.i.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.i.i: ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !202
  %i.bf = icmp eq i32 %i.be, %i.u
  br i1 %i.bf, label %.critedge, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i: ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.i.i, %bb.h, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.thread.i.i
  %i.bg = add i64 %.01830.i.i, 1                  ; 3 uses
  %i.bh = add i64 %i.bg, %.01931.i.i
  %.not.i.i = icmp ugt i64 %i.bg, %i.y
  br i1 %.not.i.i, label %.critedge, label %bb.f, !llvm.loop !12

bb.i:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit24.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !190
  br label %bb.ad

.critedge:                                        ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.i.i, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit25.thread.i.i, %bb.a, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.bk = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #38, !noalias !1080 ; 8 uses
  invoke void @_ZN4Luau10ConstraintC1ENS_7NotNullINS_5ScopeEEERKNS_8LocationEONS_7VariantIJNS_17SubtypeConstraintENS_21PackSubtypeConstraintENS_24GeneralizationConstraintENS_18IterableConstraintENS_14NameConstraintENS_28TypeAliasExpansionConstraintENS_22FunctionCallConstraintENS_23FunctionCheckConstraintENS_34DEPRECATED_PrimitiveTypeConstraintENS_17HasPropConstraintENS_20HasIndexerConstraintENS_20AssignPropConstraintENS_21AssignIndexConstraintENS_16UnpackConstraintENS_16ReduceConstraintENS_20ReducePackConstraintENS_18EqualityConstraintENS_18SimplifyConstraintENS_26PushFunctionTypeConstraintENS_18PushTypeConstraintENS_27TypeInstantiationConstraintEEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bk, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.j, !noalias !1080

common.resume:                                    ; preds = %bb.ac, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %.critedge
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 168) #36, !noalias !1080
  br label %common.resume

_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.critedge
  store ptr %i.bk, ptr %5, align 8, !tbaa !190, !alias.scope !1080
  %i.bm = load i8, ptr %i.a, align 8, !tbaa !192, !range !91, !noundef !92
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = ptrtoint ptr %i.bk to i64               ; 2 uses
  br i1 %i.bn, label %bb.k, label %bb.q

bb.k:                                             ; preds = %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  invoke void @_ZN4Luau6detail14DenseHashTableINS_23SubtypeConstraintRecordESt4pairIS2_PNS_10ConstraintEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EENS_27HashSubtypeConstraintRecordESt8equal_toIS2_EE14rehash_if_fullERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(20) %4)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !203
  %i.bs = add i64 %i.br, -1                       ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 2654435769               ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !201 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = add i64 %i.by, 2654435769
  %i.ca = shl i64 %i.bv, 6
  %i.cb = add i64 %i.bz, %i.ca
  %i.cc = lshr i64 %i.bv, 2
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = xor i64 %i.cd, %i.bv                    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !202 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, 2654435769
  %i.cj = shl i64 %i.ce, 6
  %i.ck = add i64 %i.ci, %i.cj
  %i.cl = lshr i64 %i.ce, 2
  %i.cm = add i64 %i.ck, %i.cl
  %i.cn = xor i64 %i.cm, %i.ce
  %i.co = load ptr, ptr %i.bp, align 8, !tbaa !204
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !200
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.cu = load i32, ptr %i.ct, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i, %.noexc
  %.pn.i.i23 = phi i64 [ %i.cn, %.noexc ], [ %i.dp, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i ]
  %.02031.i.i = phi i64 [ 0, %.noexc ], [ %i.do, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i ]
  %.02132.i.i = and i64 %.pn.i.i23, %i.bs         ; 2 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %.02132.i.i ; 7 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !200 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cq
  br i1 %i.cx, label %bb.m, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !201
  %i.da = icmp eq ptr %i.cz, %i.cs
  br i1 %i.da, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !202
  %i.dd = icmp eq i32 %i.dc, %i.cu
  br i1 %i.dd, label %bb.n, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24

bb.n:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !205
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !199
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !199
  br label %.loopexit

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24: ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.i.i, %bb.m, %bb.l
  %i.dh = icmp eq ptr %i.cw, %i.bt
  br i1 %i.dh, label %bb.o, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i

bb.o:                                             ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !201
  %i.dk = icmp eq ptr %i.dj, %i.bx
  br i1 %i.dk, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i: ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !202
  %i.dn = icmp eq i32 %i.dm, %i.cg
  br i1 %i.dn, label %.loopexit, label %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i

_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.thread.i.i: ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i, %bb.o, %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit.thread.i.i24
  %i.do = add i64 %.02031.i.i, 1                  ; 3 uses
  %i.dp = add i64 %i.do, %.02132.i.i
  %.not.i.i25 = icmp ule i64 %i.do, %i.bs
  call void @llvm.assume(i1 %.not.i.i25)
  br label %bb.l

.loopexit:                                        ; preds = %_ZNKSt8equal_toIN4Luau23SubtypeConstraintRecordEEclERKS1_S4_.exit26.i.i, %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.bk, ptr %i.dq, align 8, !tbaa !190
  br label %bb.q

bb.p:                                             ; preds = %.invoke, %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.k
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %.loopexit, %_ZSt11make_uniqueIN4Luau10ConstraintEJRNS0_7NotNullINS0_5ScopeEEERKNS0_8LocationENS0_7VariantIJNS0_17SubtypeConstraintENS0_21PackSubtypeConstraintENS0_24GeneralizationConstraintENS0_18IterableConstraintENS0_14NameConstraintENS0_28TypeAliasExpansionConstraintENS0_22FunctionCallConstraintENS0_23FunctionCheckConstraintENS0_34DEPRECATED_PrimitiveTypeConstraintENS0_17HasPropConstraintENS0_20HasIndexerConstraintENS0_20AssignPropConstraintENS0_21AssignIndexConstraintENS0_16UnpackConstraintENS0_16ReduceConstraintENS0_20ReducePackConstraintENS0_18EqualityConstraintENS0_18SimplifyConstraintENS0_26PushFunctionTypeConstraintENS0_18PushTypeConstraintENS0_27TypeInstantiationConstraintEEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !208 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !209
  %.not.i.i26 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i26, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.bo, ptr %i.du, align 8, !tbaa !190
  store ptr null, ptr %5, align 8, !tbaa !190
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dx, ptr %i.dt, align 8, !tbaa !208
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !210 ; 10 uses
  %i.dz = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.v, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #37
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.ed = ashr exact i64 %i.eb, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 1152921504606846975)
  %i.eh = select i1 %i.ef, i64 1152921504606846975, i64 %i.eg ; 3 uses
  %.not.i.i37 = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i37)
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #38
          to label %.noexc39 unwind label %bb.p   ; 10 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  store i64 %i.bo, ptr %i.ek, align 8, !tbaa !190
  store ptr null, ptr %5, align 8, !tbaa !190
  %.not10.i.i.i.i = icmp eq ptr %i.dy, %i.du
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc39
  %i.el = add i64 %i.dz, -8
  %i.em = sub i64 %i.el, %i.ea                    ; 3 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.em, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ep = and i64 %i.em, -8
  %i.eq = add i64 %i.ep, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ej, i64 %i.eq
  %scevgep83 = getelementptr i8, ptr %i.dy, i64 %i.eq
  %bound0 = icmp ult ptr %i.ej, %scevgep83
  %bound1 = icmp ult ptr %i.dy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, 4611686018427387900     ; 3 uses
  %i.er = shl i64 %n.vec, 3                       ; 2 uses
  %i.es = getelementptr i8, ptr %i.ej, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.dy, i64 %i.er
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.eu ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.dy, i64 %i.eu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.ev = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep84, align 8, !tbaa !190, !alias.scope !1083, !noalias !1081
  %wide.load85 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !190, !alias.scope !1083, !noalias !1081
  %i.ew = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !190, !alias.scope !1084, !noalias !1083
  store <2 x i64> %wide.load85, ptr %i.ew, align 8, !tbaa !190, !alias.scope !1084, !noalias !1083
  %i.ex = getelementptr i8, ptr %next.gep84, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep84, align 8, !tbaa !190, !alias.scope !1083, !noalias !1081
  store <2 x ptr> splat (ptr null), ptr %i.ex, align 8, !tbaa !190, !alias.scope !1083, !noalias !1081
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader87

.lr.ph.i.i.i.i.preheader87:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.i.i.i.preheader ], [ %i.es, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dy, %vector.memcheck ], [ %i.dy, %.lr.ph.i.i.i.i.preheader ], [ %i.et, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader87, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader87 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader87 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.ez = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !190, !alias.scope !1082, !noalias !1081
  store i64 %i.ez, ptr %.012.i.i.i.i, align 8, !tbaa !190, !alias.scope !1081, !noalias !1082
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !190, !alias.scope !1082, !noalias !1081
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, %i.du
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1076

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc39
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ej, %.noexc39 ], [ %i.es, %middle.block ], [ %i.fb, %.lr.ph.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.dy, null
  br i1 %.not.i23.i, label %.noexc27, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !209
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ff) #36
  br label %.noexc27

.noexc27:                                         ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.ej, ptr %i.ds, align 8, !tbaa !210
  store ptr %i.fc, ptr %i.dt, align 8, !tbaa !208
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.fg, ptr %i.dv, align 8, !tbaa !209
  br label %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc27, %bb.r
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !215 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !216
  %.not.i28 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  store ptr %i.bk, ptr %i.fj, align 8, !tbaa !218
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fm, ptr %i.fi, align 8, !tbaa !215
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !219 ; 5 uses
  %i.fo = ptrtoint ptr %i.fj to i64
  %i.fp = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %.invoke, label %_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.fs = ashr exact i64 %i.fq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 1152921504606846975)
  %i.fw = select i1 %i.fu, i64 1152921504606846975, i64 %i.fv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fx = shl nuw nsw i64 %i.fw, 3
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #38
          to label %.noexc30 unwind label %bb.p   ; 5 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq
  store ptr %i.bk, ptr %i.fz, align 8, !tbaa !218
  %.not10.i.i.i.i.i = icmp eq ptr %i.fn, %i.fj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i ], [ %i.fy, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i ], [ %i.fn, %.noexc30 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.ga = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !190, !alias.scope !1086, !noalias !1085
  store i64 %i.ga, ptr %.012.i.i.i.i.i, align 8, !tbaa !190, !alias.scope !1085, !noalias !1086
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, %i.fj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc30
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fy, %.noexc30 ], [ %i.gc, %.lr.ph.i.i.i.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.ge = load ptr, ptr %i.fk, align 8, !tbaa !216
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.gg) #36
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.fy, ptr %i.fh, align 8, !tbaa !219
  store ptr %i.gd, ptr %i.fi, align 8, !tbaa !215
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gh, ptr %i.fk, align 8, !tbaa !216
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE17_M_realloc_insertIJRNS1_IS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.u
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !339 ; 2 uses
  %.not21 = icmp eq i64 %i.gj, 0
  br i1 %.not21, label %_ZNSt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EE12emplace_backIJRNS1_IS2_EEEEERS4_DpOT_.exit
  %i.gk = add i64 %i.gj, -1                       ; 2 uses
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !339
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.y, label %_ZNSt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i32 15, ptr %6, align 8, !tbaa !135
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.gn = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(136) %6)
          to label %.noexc31 unwind label %bb.aa  ; 0 uses

.noexc31:                                         ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !146
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !143
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.gq)
          to label %_ZN4Luau16ConstraintSolver22DEPRECATED_reportErrorEONS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePa unwind label %bb.aa

_ZN4Luau16ConstraintSolver22DEPRECATED_reportErrorEONS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePa: ; preds = %.noexc31
  %i.gu = load i32, ptr %6, align 8, !tbaa !135
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !75
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.gx(ptr noundef nonnull %i.gy)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.z

bb.z:                                             ; preds = %_ZN4Luau16ConstraintSolver22DEPRECATED_reportErrorEONS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePa
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #35
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %_ZN4Luau16ConstraintSolver22DEPRECATED_reportErrorEONS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %_ZNSt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS1_EED2Ev.exit

end_hunk_1
