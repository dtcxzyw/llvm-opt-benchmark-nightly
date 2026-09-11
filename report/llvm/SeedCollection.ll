Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SeedCollection?download=true
inline.NumInlined: 977
inline.NumDeleted: 675
begin_hunk_0_@_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE:bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !30
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.q, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm9sandboxir4Pass13printPipelineERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.15, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.i, align 1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9sandboxir4PassD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm9sandboxir4PassE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm9sandboxir4PassD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !114
  br label %_ZN4llvm9sandboxir4PassD2Ev.exit

_ZN4llvm9sandboxir4PassD2Ev.exit:                 ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %class.anon.193, align 8            ; 10 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !32
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %2, ptr %i.a, align 8, !tbaa !70
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %._crit_edge.i.i.i.i.thread, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.d
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.g, ptr %i.c, align 8, !tbaa !31
  br label %bb.f

._crit_edge.i.i.i.i:                              ; preds = %bb.d
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !31
  store i8 %i.h, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %i.i = phi ptr [ %i.f, %._crit_edge.i.i.i.i.thread ], [ %i.c, %._crit_edge.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %bb.e, %bb.f
  %i.j = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !33
  %i.l = load ptr, ptr %5, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.n = load i64, ptr %i.k, align 8, !tbaa !33, !noalias !240
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.n, i64 noundef 0, i64 noundef 1, i8 noundef signext 0) #20, !noalias !240 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !32, !alias.scope !240
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  store ptr %i.q, ptr %4, align 8, !tbaa !30, !alias.scope !240
  %i.x = load i64, ptr %i.r, align 8, !tbaa !31
  store i64 %i.x, ptr %i.p, align 8, !tbaa !31, !alias.scope !240
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = phi i64 [ %i.u, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !33, !alias.scope !240
  store ptr %i.r, ptr %i.o, align 8, !tbaa !30
  store i64 0, ptr %i.z, align 8, !tbaa !33
  store i8 0, ptr %i.r, align 8, !tbaa !31
  %i.ab = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.af = load ptr, ptr %4, align 8, !tbaa !30    ; 7 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !33 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEC2ERKS9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.al = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2) #20, !inline_history !238 ; 0 uses
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !36
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !16
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !36
  br label %_ZNSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEC2ERKS9_.exit

_ZNSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEC2ERKS9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.ao = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 9 uses
  %.not191 = icmp samesign eq i64 %i.ag, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEC2ERKS9_.exit
  %.sroa.11.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.11.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.11.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.11.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.ah, %bb.ai, %bb.al, %bb.l, %.preheader, %.outer307.backedge, %.outer.backedge, %bb.aj, %bb.ak
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEC2ERKS9_.exit
  %i.aq = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %_ZNSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEC2ERKS9_.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENUlS4_S4_S4_E_D2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3) #20, !inline_history !239 ; 0 uses
  br label %_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENUlS4_S4_S4_E_D2Ev.exit

_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENUlS4_S4_S4_E_D2Ev.exit: ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.as = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.p
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENUlS4_S4_S4_E_D2Ev.exit
  %i.au = load i64, ptr %i.p, align 8, !tbaa !31
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENUlS4_S4_S4_E_D2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.am

bb.j:                                             ; preds = %bb.al, %.lr.ph
  %.sroa.0115.0192296 = phi ptr [ %i.af, %.lr.ph ], [ %i.dq, %bb.al ] ; 7 uses
  %.sroa.7.0193288 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %bb.al ] ; 12 uses
  %.sroa.11.0194283 = phi i64 [ 0, %.lr.ph ], [ %.sroa.11.1.jt0, %bb.al ] ; 4 uses
  %.sroa.0121.0195279 = phi ptr [ null, %.lr.ph ], [ %.sroa.0121.1.jt0, %bb.al ] ; 4 uses
  %.065202245 = phi i32 [ 0, %.lr.ph ], [ %.166.jt0, %bb.al ] ; 5 uses
  %i.aw = load i8, ptr %.sroa.0115.0192296, align 1, !tbaa !31
  switch i8 %i.aw, label %bb.al [
    i8 60, label %bb.k
    i8 40, label %bb.l
    i8 62, label %bb.m
    i8 41, label %bb.m
    i8 0, label %bb.n
    i8 44, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = sext i32 %.065202245 to i64
  %.sroa.speculated3.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ax) ; 3 uses
  %11 = icmp ugt i64 %.sroa.7.0193288, %i.ag
  %.sroa.speculate.load.false.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %.sroa.7.0193288, i64 %.sroa.speculated3.i)
  %.sroa.speculated.i = select i1 %11, i64 %i.ag, i64 %.sroa.speculate.load.false.sroa.speculated.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated3.i
  %12 = sub i64 %.sroa.speculated.i, %.sroa.speculated3.i
  br label %.preheader

bb.l:                                             ; preds = %bb.j
  %i.az = sext i32 %.065202245 to i64
  %.sroa.speculated3.i88 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.az) ; 3 uses
  %13 = icmp ugt i64 %.sroa.7.0193288, %i.ag
  %.sroa.speculate.load.false.sroa.speculated.i89 = call i64 @llvm.umax.i64(i64 %.sroa.7.0193288, i64 %.sroa.speculated3.i88)
  %.sroa.speculated.i90 = select i1 %13, i64 %i.ag, i64 %.sroa.speculate.load.false.sroa.speculated.i89
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated3.i88 ; 4 uses
  %14 = sub i64 %.sroa.speculated.i90, %.sroa.speculated3.i88 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0115.0192296, i64 1 ; 2 uses
  %.not.jt3405409 = icmp eq ptr %i.bb, %i.ap
  br i1 %.not.jt3405409, label %._crit_edge.loopexit, label %.lr.ph408

bb.m:                                             ; preds = %bb.j, %bb.j
  %i.bc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull @.str.16)
  %i.be = load i8, ptr %.sroa.0115.0192296, align 1, !tbaa !31
  %i.bf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i8 noundef signext %i.be)
  %i.bg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull @.str.17) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.j
  %i.bh = sext i32 %.065202245 to i64
  %.sroa.speculated3.i93 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.bh) ; 3 uses
  %15 = icmp ugt i64 %.sroa.7.0193288, %i.ag
  %.sroa.speculate.load.false.sroa.speculated.i94 = call i64 @llvm.umax.i64(i64 %.sroa.7.0193288, i64 %.sroa.speculated3.i93)
  %.sroa.speculated.i95 = select i1 %15, i64 %i.ag, i64 %.sroa.speculate.load.false.sroa.speculated.i94
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated3.i93
  %16 = sub i64 %.sroa.speculated.i95, %.sroa.speculated3.i93
  store ptr %.sroa.0121.0195279, ptr %7, align 8, !tbaa !120
  store i64 %.sroa.11.0194283, ptr %.sroa.11.0..sroa_idx128, align 8, !tbaa !70
  call void @_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENKUlS4_S4_S4_E_clES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr %i.bi, i64 %16, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7)
  %i.bj = trunc i64 %.sroa.7.0193288 to i32
  %i.bk = add i32 %i.bj, 1
  br label %bb.al

bb.o:                                             ; preds = %.lr.ph416, %bb.ak
  %i.bl = phi ptr [ %i.bp, %.lr.ph416 ], [ %i.do, %bb.ak ] ; 5 uses
  %.sroa.7.0193290415 = phi i64 [ %.sroa.7.0193290.ph303419, %.lr.ph416 ], [ %i.bm, %bb.ak ] ; 3 uses
  %.sroa.0115.0192298414 = phi ptr [ %.sroa.0115.0192298.ph302418, %.lr.ph416 ], [ %i.bl, %bb.ak ]
  %i.bm = add nuw i64 %.sroa.7.0193290415, 1      ; 3 uses
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !31
  switch i8 %i.bn, label %bb.ak [
    i8 60, label %bb.p
    i8 62, label %bb.q
    i8 0, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.bo = add nsw i32 %.172.jt1.ph304420, 1
  br label %.outer.backedge

.lr.ph416:                                        ; preds = %.preheader, %.outer.backedge
  %i.bp = phi ptr [ %i.bt, %.outer.backedge ], [ %i.db, %.preheader ]
  %.172.jt1.ph304420 = phi i32 [ %.172.jt1.ph304.be, %.outer.backedge ], [ 1, %.preheader ] ; 3 uses
  %.sroa.7.0193290.ph303419 = phi i64 [ %i.bm, %.outer.backedge ], [ %.sroa.7.0193290.ph, %.preheader ]
  %.sroa.0115.0192298.ph302418 = phi ptr [ %i.bl, %.outer.backedge ], [ %.sroa.0115.0192298.ph, %.preheader ]
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.bq = add nsw i32 %.172.jt1.ph304420, -1      ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp slt i32 %.172.jt1.ph304420, 1
  br i1 %i.bs, label %bb.s, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.r, %bb.p
  %.172.jt1.ph304.be = phi i32 [ %i.bo, %bb.p ], [ %i.bq, %bb.r ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %.not.jt1413 = icmp eq ptr %i.bt, %i.ap
  br i1 %.not.jt1413, label %._crit_edge.loopexit, label %.lr.ph416

bb.s:                                             ; preds = %bb.r
  %i.bu = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.bv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull @.str.18) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bw = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.bx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull @.str.19)
  %i.by = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr %.sroa.0145.1.jt1.ph, i64 %.sroa.10.1.jt1.ph)
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull @.str.20) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.u:                                             ; preds = %bb.ai
  %i.ca = load i8, ptr %i.dm, align 1, !tbaa !31
  switch i8 %i.ca, label %bb.w [
    i8 0, label %bb.v
    i8 44, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.cb = trunc i64 %i.dl to i32
  %i.cc = add i32 %i.cb, 1
  br label %bb.al

bb.w:                                             ; preds = %bb.u
  %i.cd = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.ce = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull @.str.21) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.x:                                             ; preds = %.lr.ph408, %bb.aj
  %i.cf = phi ptr [ %i.ck, %.lr.ph408 ], [ %i.dn, %bb.aj ] ; 5 uses
  %.sroa.7.0193292407 = phi i64 [ %.sroa.7.0193292.ph411, %.lr.ph408 ], [ %i.cg, %bb.aj ] ; 3 uses
  %.sroa.0115.0192300406 = phi ptr [ %.sroa.0115.0192300.ph410, %.lr.ph408 ], [ %i.cf, %bb.aj ]
  %i.cg = add nuw i64 %.sroa.7.0193292407, 1      ; 3 uses
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !31
  switch i8 %i.ch, label %bb.aj [
    i8 40, label %bb.y
    i8 41, label %bb.z
    i8 0, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.ci = add nsw i32 %.174.jt3.ph412, 1
  br label %.outer307.backedge

.outer307.backedge:                               ; preds = %bb.y, %bb.aa
  %.174.jt3.ph.be = phi i32 [ %i.cl, %bb.aa ], [ %i.ci, %bb.y ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  %.not.jt3405 = icmp eq ptr %i.cj, %i.ap
  br i1 %.not.jt3405, label %._crit_edge.loopexit, label %.lr.ph408

.lr.ph408:                                        ; preds = %bb.l, %.outer307.backedge
  %i.ck = phi ptr [ %i.cj, %.outer307.backedge ], [ %i.bb, %bb.l ]
  %.174.jt3.ph412 = phi i32 [ %.174.jt3.ph.be, %.outer307.backedge ], [ 1, %bb.l ] ; 3 uses
  %.sroa.7.0193292.ph411 = phi i64 [ %i.cg, %.outer307.backedge ], [ %.sroa.7.0193288, %bb.l ]
  %.sroa.0115.0192300.ph410 = phi ptr [ %i.cf, %.outer307.backedge ], [ %.sroa.0115.0192296, %bb.l ]
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.cl = add nsw i32 %.174.jt3.ph412, -1         ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = icmp slt i32 %.174.jt3.ph412, 1
  br i1 %i.cn, label %bb.ab, label %.outer307.backedge

bb.ab:                                            ; preds = %bb.aa
  %i.co = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.cp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull @.str.16)
  %i.cq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i8 noundef signext 41)
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull @.str.17) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cs = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull @.str.22)
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i8 noundef signext 41)
  %i.cv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull @.str.23)
  %i.cw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr %i.ba, i64 %14)
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, ptr noundef nonnull @.str.20) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.ad:                                            ; preds = %bb.ah
  %i.cy = load i8, ptr %i.di, align 1, !tbaa !31
  switch i8 %i.cy, label %bb.ag [
    i8 0, label %bb.ae
    i8 44, label %bb.af
    i8 60, label %.preheader
  ]

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.dg, ptr %9, align 8, !tbaa !120
  store i64 %17, ptr %.sroa.11.0..sroa_idx134, align 8, !tbaa !70
  call void @_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENKUlS4_S4_S4_E_clES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr %i.ba, i64 %14, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %9)
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  store ptr %i.dg, ptr %10, align 8, !tbaa !120
  store i64 %17, ptr %.sroa.11.0..sroa_idx136, align 8, !tbaa !70
  call void @_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENKUlS4_S4_S4_E_clES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr %i.ba, i64 %14, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %10)
  %i.cz = trunc i64 %i.dh to i32
  %i.da = add i32 %i.cz, 1
  br label %bb.al

.preheader:                                       ; preds = %bb.ad, %bb.k
  %.sroa.0115.0192298.ph = phi ptr [ %.sroa.0115.0192296, %bb.k ], [ %i.di, %bb.ad ] ; 2 uses
  %.sroa.7.0193290.ph = phi i64 [ %.sroa.7.0193288, %bb.k ], [ %i.dh, %bb.ad ] ; 2 uses
  %.sroa.11.1.jt1.ph = phi i64 [ %.sroa.11.0194283, %bb.k ], [ %17, %bb.ad ]
  %.sroa.0121.1.jt1.ph = phi ptr [ %.sroa.0121.0195279, %bb.k ], [ %i.dg, %bb.ad ]
  %.sroa.10.1.jt1.ph = phi i64 [ %12, %bb.k ], [ %14, %bb.ad ] ; 2 uses
  %.sroa.0145.1.jt1.ph = phi ptr [ %i.ay, %bb.k ], [ %i.ba, %bb.ad ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0115.0192298.ph, i64 1 ; 2 uses
  %.not.jt1413417 = icmp eq ptr %i.db, %i.ap
  br i1 %.not.jt1413417, label %._crit_edge.loopexit, label %.lr.ph416

bb.ag:                                            ; preds = %bb.ad
  %i.dc = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull @.str.24) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.ah:                                            ; preds = %bb.z
  %i.de = shl i64 %.sroa.7.0193288, 32
  %sext = add i64 %i.de, 4294967296
  %i.df = ashr exact i64 %sext, 32
  %.sroa.speculated3.i103 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.df) ; 3 uses
  %.not = icmp ult i64 %.sroa.7.0193292407, %i.ag
  %.sroa.speculate.load.false.sroa.speculated.i104 = call i64 @llvm.umax.i64(i64 %i.cg, i64 %.sroa.speculated3.i103)
  %.sroa.speculated.i105 = select i1 %.not, i64 %.sroa.speculate.load.false.sroa.speculated.i104, i64 %i.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated3.i103 ; 4 uses
  %17 = sub i64 %.sroa.speculated.i105, %.sroa.speculated3.i103 ; 4 uses
  %i.dh = add nuw i64 %.sroa.7.0193292407, 2      ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0115.0192300406, i64 2 ; 5 uses
  %.not.jt4 = icmp eq ptr %i.di, %i.ap
  br i1 %.not.jt4, label %._crit_edge.loopexit, label %bb.ad

bb.ai:                                            ; preds = %bb.q
  %.168.jt1.ph = shl i64 %.sroa.7.0193290.ph, 32
  %sext349 = add i64 %.168.jt1.ph, 4294967296
  %i.dj = ashr exact i64 %sext349, 32
  %.sroa.speculated3.i98 = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.dj) ; 3 uses
  %.not350 = icmp ult i64 %.sroa.7.0193290415, %i.ag
  %.sroa.speculate.load.false.sroa.speculated.i99 = call i64 @llvm.umax.i64(i64 %i.bm, i64 %.sroa.speculated3.i98)
  %.sroa.speculated.i100 = select i1 %.not350, i64 %.sroa.speculate.load.false.sroa.speculated.i99, i64 %i.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated3.i98
  %18 = sub i64 %.sroa.speculated.i100, %.sroa.speculated3.i98
  store ptr %.sroa.0121.1.jt1.ph, ptr %8, align 8, !tbaa !120
  store i64 %.sroa.11.1.jt1.ph, ptr %.sroa.11.0..sroa_idx130, align 8, !tbaa !70
  call void @_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENKUlS4_S4_S4_E_clES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr %.sroa.0145.1.jt1.ph, i64 %.sroa.10.1.jt1.ph, ptr %i.dk, i64 %18, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %8)
  %i.dl = add nuw i64 %.sroa.7.0193290415, 2      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0115.0192298414, i64 2 ; 3 uses
  %.not.jt2 = icmp eq ptr %i.dm, %i.ap
  br i1 %.not.jt2, label %._crit_edge.loopexit, label %bb.u

bb.aj:                                            ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  %.not.jt3 = icmp eq ptr %i.dn, %i.ap
  br i1 %.not.jt3, label %._crit_edge.loopexit, label %bb.x

bb.ak:                                            ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %.not.jt1 = icmp eq ptr %i.do, %i.ap
  br i1 %.not.jt1, label %._crit_edge.loopexit, label %bb.o

bb.al:                                            ; preds = %bb.af, %bb.ae, %bb.v, %bb.n, %bb.j
  %.sroa.0115.0192299 = phi ptr [ %i.di, %bb.af ], [ %i.di, %bb.ae ], [ %i.dm, %bb.v ], [ %.sroa.0115.0192296, %bb.n ], [ %.sroa.0115.0192296, %bb.j ]
  %.sroa.7.0193291 = phi i64 [ %i.dh, %bb.af ], [ %i.dh, %bb.ae ], [ %i.dl, %bb.v ], [ %.sroa.7.0193288, %bb.n ], [ %.sroa.7.0193288, %bb.j ]
  %.sroa.11.1.jt0 = phi i64 [ 0, %bb.af ], [ %17, %bb.ae ], [ 0, %bb.v ], [ %.sroa.11.0194283, %bb.n ], [ %.sroa.11.0194283, %bb.j ]
  %.sroa.0121.1.jt0 = phi ptr [ null, %bb.af ], [ %i.dg, %bb.ae ], [ null, %bb.v ], [ %.sroa.0121.0195279, %bb.n ], [ %.sroa.0121.0195279, %bb.j ]
  %.166.jt0 = phi i32 [ %i.da, %bb.af ], [ %.065202245, %bb.ae ], [ %i.cc, %bb.v ], [ %i.bk, %bb.n ], [ %.065202245, %bb.j ]
  %i.dp = add nuw i64 %.sroa.7.0193291, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0115.0192299, i64 1 ; 2 uses
  %.not.jt0 = icmp eq ptr %i.dq, %i.ap
  br i1 %.not.jt0, label %._crit_edge.loopexit, label %bb.j

bb.am:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_ED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E13printPipelineERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.d) #20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.b, i64 %i.d, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.b, %bb.c, %bb.d
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.o, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %1, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.15, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i8 10, ptr %i.p, align 1
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.u, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %.lr.ph
  %.011 = phi ptr [ %i.ah, %.lr.ph ], [ %i.y, %_ZN4llvm11raw_ostreamlsEPKc.exit ] ; 2 uses
  %i.ad = load ptr, ptr %.011, align 8, !tbaa !111 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %1) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.ac
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9sandboxir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm9sandboxir4PassE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEc(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %.not = icmp ult ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext %1) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !55
  store i8 %1, ptr %i.b, align 1, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEENKUlS4_S4_S4_E_clES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef byval(%"class.llvm::StringRef") align 8 %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.25) ; 0 uses
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %6, align 8, !noalias !245
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.e, align 8, !noalias !245
  store ptr %3, ptr %7, align 8, !noalias !245
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %i.f, align 8, !noalias !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16, !noalias !245
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEclES7_S7_S7_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #22, !noalias !245
  unreachable

_ZNKSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EEclES7_S7_S7_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38, !noalias !245
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #20, !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.l = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.f

end_hunk_0
begin_hunk_1_@_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm2cl11initializerIA7_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !22 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !32
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !70
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !30
  %i.g = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.g, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !31
  store i8 %i.i, ptr %i.h, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !33
  %i.l = load ptr, ptr %2, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 1, ptr %i.o, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %i.q = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !31
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EPS8_E9_M_invokeERKSt9_Any_dataOS7_SE_SE_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36, !noalias !305
  %.sroa.01.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !120, !noalias !305
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !70, !noalias !305
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !120, !noalias !305
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !70, !noalias !305
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.22.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4) #20, !inline_history !304
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  br label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split: ; preds = %bb.b, %bb.a, %.sink.split.i
  %.sink.i.sink = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ], [ null, %.sink.split.i ]
  store ptr %.sink.i.sink, ptr %0, align 8, !tbaa !36
  br label %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS4_EENS2_9StringRefES8_S8_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SeedCollection.cpp() #15 section ".text.startup" {
bb.a:
  %0 = alloca %"struct.llvm::cl::initializer.25", align 8 ; 4 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL18OverrideVecRegBitsE, i32 noundef 0, i32 noundef 0) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 120), align 8, !tbaa !92
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 128), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvmL18OverrideVecRegBitsE, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 144), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL18OverrideVecRegBitsE, ptr nonnull align 1 dereferenceable(19) @.str, i64 18) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 120), align 8, !tbaa !92
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 140), align 4, !tbaa !133
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 136), align 8, !tbaa !306
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 32), align 8, !tbaa !120
  store i64 84, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL18OverrideVecRegBitsE, i64 40), align 8, !tbaa !70
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL18OverrideVecRegBitsE) #20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvmL18OverrideVecRegBitsE, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvmL12AllowNonPow2E, i32 noundef 0, i32 noundef 0) #20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 120), align 8, !tbaa !104
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 128), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4llvmL12AllowNonPow2E, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 144), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL12AllowNonPow2E, ptr nonnull align 1 dereferenceable(21) @.str.3, i64 20) #20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 120), align 8, !tbaa !104
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 137), align 1, !tbaa !134
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 136), align 8, !tbaa !307
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 10), align 2
  %i.f = and i16 %i.e, -97
  %i.g = or disjoint i16 %i.f, 32
  store i16 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 10), align 2
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 32), align 8, !tbaa !120
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL12AllowNonPow2E, i64 40), align 8, !tbaa !70
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvmL12AllowNonPow2E) #20
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4llvmL12AllowNonPow2E, ptr nonnull @__dso_handle) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr @.str.7, ptr %0, align 8
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvm12CollectSeedsB5cxx11E, i32 noundef 0, i32 noundef 0) #20
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 136), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 120), align 8, !tbaa !32
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 128), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 136), align 8, !tbaa !31
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 160), align 8, !tbaa !32
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 168), align 8, !tbaa !33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 176), align 8, !tbaa !31
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 192), align 8, !tbaa !116
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 152), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZN4llvm12CollectSeedsB5cxx11E, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 200), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 208), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvm12CollectSeedsB5cxx11E, ptr nonnull align 1 dereferenceable(20) @.str.6, i64 19) #20
  call void @_ZNK4llvm2cl11initializerIA7_cE5applyINS0_3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserISB_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvm12CollectSeedsB5cxx11E)
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 10), align 2
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 10), align 2
  store ptr @.str.8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 32), align 8, !tbaa !120
  store i64 90, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12CollectSeedsB5cxx11E, i64 40), align 8, !tbaa !70
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZN4llvm12CollectSeedsB5cxx11E) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZN4llvm12CollectSeedsB5cxx11E, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !109}
!3 = distinct !{!3, !109}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"_ZTSSt14_Function_base", !8, i64 0, !14, i64 16}
!16 = !{!15, !14, i64 16}
!17 = !{!"any p2 pointer", !14, i64 0}
!18 = !{!"bool", !8, i64 0}
!19 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !17, i64 0, !9, i64 8, !9, i64 12, !18, i64 16}
!20 = !{!19, !18, i64 16}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!19, !17, i64 0}
!24 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !14, i64 0, !9, i64 8, !9, i64 12}
!25 = !{!24, !14, i64 0}
!26 = !{!"p1 omnipotent char", !14, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !8, i64 16}
!30 = !{!29, !26, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!27, !26, i64 0}
!33 = !{!29, !28, i64 8}
!34 = !{!24, !9, i64 8}
!35 = !{!24, !9, i64 12}
!36 = !{!14, !14, i64 0}
!37 = !{!"_ZTSSt8functionIFSt10unique_ptrIN4llvm9sandboxir10RegionPassESt14default_deleteIS3_EENS1_9StringRefES7_S7_EE", !15, i64 0, !14, i64 24}
!38 = !{!37, !14, i64 24}
!39 = !{!"_ZTSN4llvm9sandboxir4PassE", !29, i64 8}
!40 = !{!"_ZTSN4llvm9sandboxir12FunctionPassE", !39, i64 0}
!41 = !{!"_ZTSN4llvm9sandboxir10RegionPassE", !39, i64 0}
!42 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrINS_9sandboxir10RegionPassESt14default_deleteIS3_EEvEE", !24, i64 0}
!43 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir10RegionPassESt14default_deleteIS3_EELb0EEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrINS_9sandboxir10RegionPassESt14default_deleteIS3_EEEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm18SmallVectorStorageISt10unique_ptrINS_9sandboxir10RegionPassESt14default_deleteIS3_EELj6EEE", !8, i64 0}
!46 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrINS_9sandboxir10RegionPassESt14default_deleteIS3_EELj6EEE", !44, i64 0, !45, i64 16}
!47 = !{!"_ZTSN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_EE", !41, i64 0, !46, i64 40}
!48 = !{!"_ZTSN4llvm9sandboxir17RegionPassManagerE", !47, i64 0}
!49 = !{!"_ZTSN4llvm9sandboxir14SeedCollectionE", !40, i64 0, !48, i64 40, !18, i64 144}
!50 = !{!49, !18, i64 144}
!51 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !8, i64 0}
!52 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !8, i64 0}
!53 = !{!"_ZTSN4llvm11raw_ostreamE", !51, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !18, i64 40, !52, i64 44}
!54 = !{!53, !26, i64 24}
!55 = !{!53, !26, i64 32}
!56 = !{!"_ZTSN4llvm9sandboxir5Value7ClassIDE", !8, i64 0}
!57 = !{!"p1 _ZTSN4llvm5ValueE", !14, i64 0}
!58 = !{!"p1 _ZTSN4llvm9sandboxir7ContextE", !14, i64 0}
!59 = !{!"_ZTSN4llvm9sandboxir5ValueE", !56, i64 8, !57, i64 16, !58, i64 24}
!60 = !{!59, !57, i64 16}
!61 = !{!"p1 _ZTSN4llvm4TypeE", !14, i64 0}
!62 = !{!"p1 _ZTSN4llvm9MapVectorISt5tupleIJPNS_9sandboxir5ValueEPNS2_4TypeENS2_11Instruction6OpcodeEEENS_11SmallVectorISt10unique_ptrINS2_10SeedBundleESt14default_deleteISC_EELj6EEENS_8DenseMapIS9_jNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEENSA_ISt4pairIS9_SG_ELj0EEELj0EEE", !14, i64 0}
!63 = !{!"p1 _ZTSSt4pairISt5tupleIJPN4llvm9sandboxir5ValueEPNS2_4TypeENS2_11Instruction6OpcodeEEENS1_11SmallVectorISt10unique_ptrINS2_10SeedBundleESt14default_deleteISC_EELj6EEEE", !14, i64 0}
!64 = !{!"p1 _ZTSN4llvm11SmallVectorISt10unique_ptrINS_9sandboxir10SeedBundleESt14default_deleteIS3_EELj6EEE", !14, i64 0}
!65 = !{!"_ZTSN4llvm9sandboxir13SeedContainer8iteratorE", !62, i64 0, !63, i64 8, !64, i64 16, !28, i64 24}
!66 = !{!65, !62, i64 0}
!67 = !{!65, !63, i64 8}
!68 = !{!65, !64, i64 16}
!69 = !{!65, !28, i64 24}
!70 = !{!28, !28, i64 0}
!71 = !{!"p1 _ZTSN4llvm9sandboxir10SeedBundleE", !14, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !24, i64 0}
!74 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !74, i64 0}
!76 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !8, i64 0}
!77 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !75, i64 0, !76, i64 16}
!78 = !{!"_ZTSN4llvm9BitVectorE", !77, i64 0, !9, i64 64}
!79 = !{!"p1 _ZTSN4llvm9sandboxir11InstructionE", !14, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p1 _ZTSN4llvm11LLVMContextE", !14, i64 0}
!82 = !{!"_ZTSN4llvm4Type6TypeIDE", !8, i64 0}
!83 = !{!"p2 _ZTSN4llvm4TypeE", !17, i64 0}
!84 = !{!"_ZTSN4llvm4TypeE", !81, i64 0, !82, i64 8, !9, i64 9, !9, i64 12, !83, i64 16}
!85 = !{!84, !83, i64 16}
!86 = !{!61, !61, i64 0}
!87 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!88 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !87, i64 0, !9, i64 8, !18, i64 12}
!89 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !89, i64 0}
!91 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !9, i64 0, !90, i64 8}
!92 = !{!91, !9, i64 0}
!93 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_9sandboxir11InstructionEvEE", !24, i64 0}
!94 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_9sandboxir11InstructionELb1EEE", !93, i64 0}
!95 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_9sandboxir11InstructionEEE", !94, i64 0}
!96 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_9sandboxir11InstructionELj6EEE", !8, i64 0}
!97 = !{!"_ZTSN4llvm11SmallVectorIPNS_9sandboxir11InstructionELj6EEE", !95, i64 0, !96, i64 16}
!98 = !{!"_ZTSN4llvm9sandboxir10SeedBundleE", !97, i64 8, !78, i64 72, !9, i64 144, !9, i64 148}
!99 = !{!98, !9, i64 144}
!100 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !87, i64 0, !18, i64 8, !18, i64 9}
!101 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !100, i64 0}
!102 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !101, i64 0}
!103 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !18, i64 0, !102, i64 8}
!104 = !{!103, !18, i64 0}
!105 = !{!"_ZTSN4llvm15InstructionCost9CostStateE", !8, i64 0}
!106 = !{!"_ZTSN4llvm15InstructionCostE", !28, i64 0, !105, i64 8}
!107 = !{!106, !105, i64 8}
!108 = !{!106, !28, i64 0}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"p1 _ZTSN4llvm9sandboxir10RegionPassE", !14, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{ptr @_ZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_ED2Ev}
!113 = !{ptr @_ZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_ED2Ev, ptr @_ZN4llvm9sandboxir4PassD2Ev}
!114 = !{ptr @_ZN4llvm9sandboxir4PassD2Ev}
!115 = !{!"_ZTSN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !87, i64 0, !29, i64 8, !18, i64 40}
!116 = !{!115, !18, i64 40}
!117 = !{!"p1 _ZTSN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_EE", !14, i64 0}
!118 = !{!"_ZTSZN4llvm9sandboxir11PassManagerINS0_10RegionPassES2_E15setPassPipelineENS_9StringRefESt8functionIFSt10unique_ptrIS2_St14default_deleteIS2_EES4_S4_S4_EEEUlS4_S4_S4_E_", !117, i64 0, !37, i64 8}
!119 = !{!118, !117, i64 0}
!120 = !{!26, !26, i64 0}
!121 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!122 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_9sandboxir11InstructionEEE", !14, i64 0}
!123 = !{!"p1 int", !14, i64 0}
!124 = !{!"_ZTSN4llvm8DenseMapIPNS_9sandboxir11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEE", !122, i64 0, !123, i64 8, !9, i64 16, !9, i64 20}
!125 = !{!124, !122, i64 0}
!126 = !{!124, !123, i64 8}
!127 = !{!124, !9, i64 20}
!128 = !{!9, !9, i64 0}
!129 = !{!"branch_weights", i32 1, i32 1999}
!130 = !{!"branch_weights", i32 0, i32 1}
!131 = !{!122, !122, i64 0}
!132 = !{!124, !9, i64 16}
!133 = !{!88, !18, i64 12}
!134 = !{!100, !18, i64 9}
!135 = distinct !{null, null}
!136 = !{!53, !51, i64 8}
!137 = !{!53, !18, i64 40}
!138 = !{!53, !52, i64 44}
!139 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!140 = !{!139, !139, i64 0}
!141 = distinct !{!141, !"_ZNK4llvm9sandboxir8Function5beginEv"}
!142 = distinct !{!142, !141, !"_ZNK4llvm9sandboxir8Function5beginEv: argument 0"}
!143 = distinct !{!143, !"_ZN4llvm9sandboxir13SeedCollector13getStoreSeedsEv"}
!144 = distinct !{!144, !143, !"_ZN4llvm9sandboxir13SeedCollector13getStoreSeedsEv: argument 0"}
!145 = distinct !{!145, !"_ZN4llvm9adl_beginIRNS_9sandboxir13SeedContainerEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS4_"}
!146 = distinct !{!146, !145, !"_ZN4llvm9adl_beginIRNS_9sandboxir13SeedContainerEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS4_: argument 0"}
!147 = distinct !{!147, !"_ZN4llvm10adl_detail10begin_implIRNS_9sandboxir13SeedContainerEEEDTcl5beginclsr3stdE7forwardIT_Efp_EEEOS5_"}
!148 = distinct !{!148, !147, !"_ZN4llvm10adl_detail10begin_implIRNS_9sandboxir13SeedContainerEEEDTcl5beginclsr3stdE7forwardIT_Efp_EEEOS5_: argument 0"}
!149 = distinct !{!149, !"_ZN4llvm9sandboxir13SeedContainer5beginEv"}
!150 = distinct !{!150, !149, !"_ZN4llvm9sandboxir13SeedContainer5beginEv: argument 0"}
!151 = distinct !{!151, !"_ZN4llvm9sandboxir13SeedContainer3endEv"}
!152 = distinct !{!152, !151, !"_ZN4llvm9sandboxir13SeedContainer3endEv: argument 0"}
!153 = distinct !{!153, !"_ZN4llvm7adl_endIRNS_9sandboxir13SeedContainerEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOS4_"}
!154 = distinct !{!154, !153, !"_ZN4llvm7adl_endIRNS_9sandboxir13SeedContainerEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOS4_: argument 0"}
!155 = distinct !{!155, !"_ZN4llvm10adl_detail8end_implIRNS_9sandboxir13SeedContainerEEEDTcl3endclsr3stdE7forwardIT_Efp_EEEOS5_"}
!156 = distinct !{!156, !155, !"_ZN4llvm10adl_detail8end_implIRNS_9sandboxir13SeedContainerEEEDTcl3endclsr3stdE7forwardIT_Efp_EEEOS5_: argument 0"}
!157 = distinct !{!157, !"_ZN4llvm9sandboxir13SeedContainer3endEv"}
!158 = distinct !{!158, !157, !"_ZN4llvm9sandboxir13SeedContainer3endEv: argument 0"}
!159 = distinct !{!159, !"_ZN4llvm9sandboxir13SeedCollector12getLoadSeedsEv"}
!160 = distinct !{!160, !159, !"_ZN4llvm9sandboxir13SeedCollector12getLoadSeedsEv: argument 0"}
end_hunk_1
