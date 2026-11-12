Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/embedded-file-writer?download=true
inline.NumInlined: 444
inline.NumDeleted: 272
begin_hunk_0_@_ZN2v88internal18EmbeddedFileWriter37LookupOrAddExternallyCompiledFilenameEPKc:bb.a
  br i1 %i.k, label %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load i32, ptr %i.l, align 8
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.a, %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 102816
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = add nsw i32 %i.p, 1                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %1, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = call { ptr, i8 } @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE6insertIS4_IS1_iEEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 102824 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 102832 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 102840 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_.exit.thread
  store ptr %1, ptr %i.u, align 8
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.t, align 8
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE4findERS5_.exit.thread
  %i.z = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.e, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.d
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i2 = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i2)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #19 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store ptr %1, ptr %i.al, align 8
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.f, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.not.i17.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ao = load ptr, ptr %i.v, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ak, ptr %i.s, align 8
  store ptr %i.an, ptr %i.t, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ar, ptr %i.v, align 8
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit:    ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE6insertIS4_IS1_iEEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 !guid !44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit, label %bb.b, !llvm.loop !1

_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE12emplace_hintIJS4_IS1_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 8
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.s, null
  %i.u = icmp eq ptr %i.t, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.u
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp ult ptr %i.v, %i.x
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.z = phi i1 [ %i.y, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.l, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  br label %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE12emplace_hintIJS4_IS1_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #20
  br label %_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE12emplace_hintIJS4_IS1_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEE12emplace_hintIJS4_IS1_iEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.c, %bb.f, %.thread.i.i
  %.sroa.012.0 = phi ptr [ %i.s, %bb.f ], [ %i.l, %.thread.i.i ], [ %.19.i.i.i, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %bb.f ], [ 1, %.thread.i.i ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal18EmbeddedFileWriter29GetExternallyCompiledFilenameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(102880) %0, i32 noundef %1) unnamed_addr #5 align 2 !guid !45 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 102824
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK2v88internal18EmbeddedFileWriter34GetExternallyCompiledFilenameCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(102880) %0) unnamed_addr #6 align 2 !guid !46 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 102816
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18EmbeddedFileWriter31PrepareBuiltinSourcePositionMapEPNS0_8BuiltinsE(ptr noundef nonnull align 8 dereferenceable(102880) %0, ptr noundef %1) unnamed_addr #0 align 2 !guid !48 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %i.d) #17 ; 2 uses
  %i.f = add i64 %i.e, 15
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread, label %_ZNK2v88internal4Code25has_source_position_tableEv.exit

_ZNK2v88internal4Code25has_source_position_tableEv.exit: ; preds = %bb.c
  %i.i = add i64 %i.e, 51
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 15
  %.not = icmp eq i32 %i.l, 10
  br i1 %.not, label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal4Code25has_source_position_tableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.m = add i64 %i.h, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %3 = load i32, ptr %i.p, align 4                ; 4 uses
  %4 = sext i32 %3 to i64                         ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.q = icmp slt i32 %3, 0
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #18
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %5, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #19 ; 4 uses
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %4 ; 3 uses
  store ptr %i.s, ptr %i.a, align 8
  %.not16 = icmp eq i32 %3, 1
  br i1 %.not16, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.o, i64 %4, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit

5:                                                ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %6 = getelementptr inbounds nuw i8, ptr null, i64 %4 ; 2 uses
  store ptr %6, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.t = load i8, ptr %i.o, align 4
  store i8 %i.t, ptr %i.r, align 1
  br label %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit

_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit:      ; preds = %bb.f, %5, %bb.g
  %i.u = phi ptr [ %i.s, %bb.f ], [ %6, %5 ], [ %i.s, %bb.g ]
  store ptr %i.u, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.x = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread

_ZNK2v88internal4Code25has_source_position_tableEv.exit.thread: ; preds = %bb.c, %_ZNK2v88internal4Code25has_source_position_tableEv.exit, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2141
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !47
}

declare i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !guid !50 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !29

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1
  store i8 %i.q, ptr %i.o, align 1
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1
  store i8 %i.ad, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !29

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1
  store i8 %i.ag, ptr %i.i, align 1
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r, !prof !29

bb.q:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.au = load i8, ptr %i.an, align 1
  store i8 %i.au, ptr %i.ai, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !52 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
end_hunk_0
