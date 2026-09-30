Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3MergeCond?download=true
inline.NumInlined: 1694
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7AstNode2isI6AstXorS_EEbPKT0_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI7AstCondS_EEPKT_PKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !155
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 302
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI8AstCCastS_EEPKT_PKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !155
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 311
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12AstNodeDType8widthMinEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !249  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not, i32 %i.d, i32 %i.b
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8VSigning8isSignedEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !250
  %i.b = icmp eq i8 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12AstNodeDType5widthEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !248
  ret i32 %i.b
}

declare noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #3

declare void @_ZNK7AstNode8dumpTreeERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI9AstNodeIfS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP7AstNodeSaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !136
  %i.ag = load ptr, ptr %0, align 8, !tbaa !134
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIP7AstNodeSaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIP7AstNodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIP7AstNodeSaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIP7AstNodeSaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !126
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.aq = load ptr, ptr %1, align 8, !tbaa !93
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !93
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !125
  store ptr %i.am, ptr %i.o, align 8, !tbaa !127
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !128
  store ptr %i.am, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstNetlist8modulespEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI13AstNodeModuleS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor20checkOrMakeMergeableEPK11AstNodeStmt(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val5.i = load i32, ptr %i.b, align 8, !tbaa !193
  %i.c = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !26
  %i.d = icmp ne i32 %.val5.i, %i.c
  %.not1.i = icmp eq i64 %.val.i, 0
  %.not.i = select i1 %i.d, i1 true, i1 %.not1.i
  br i1 %.not.i, label %bb.b, label %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.509, i32 noundef 97) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.510)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.g) #29
  unreachable

_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit: ; preds = %bb.a
  %i.h = inttoptr i64 %.val.i to ptr              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load i8, ptr %i.i, align 8, !tbaa !199, !range !72, !noundef !73
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, null
  %or.cond = select i1 %i.k, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i8, ptr %i.n, align 8, !tbaa !251, !range !72, !noundef !73
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !188  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %.not1315.i = icmp eq ptr %i.r, %i.s
  br i1 %.not1315.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.09.016.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.ac, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !252
  %i.y = icmp ne i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 4294967295
  %.not14.i = icmp eq i64 %i.ab, 0
  %.not.i5 = select i1 %i.y, i1 true, i1 %.not14.i
  br i1 %.not.i5, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.016.i) #27 ; 2 uses
  %.not13.i = icmp eq ptr %i.ac, %i.s
  br i1 %.not13.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 107
  %i.ae = load i8, ptr %i.ad, align 1, !range !72
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i = select i1 %i.p, i1 %i.af, i1 false
  br i1 %or.cond.i, label %.loopexit, label %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit

.loopexit:                                        ; preds = %bb.d, %bb.f
  tail call fastcc void @_ZN12_GLOBAL__N_116MergeCondVisitor8mergeEndEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit

_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit: ; preds = %bb.f, %.loopexit, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit
  %.0 = xor i1 %i.k, true
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 808) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.532)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.f) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.ptr89.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.3.idx.sroa.gep97.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.a, align 16, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.i, align 8, !tbaa !155
  %i.j = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i, 369
  br i1 %i.j, label %.noexc.i.i, label %bb.g

.noexc.i.i:                                       ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val22.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !212 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val22.i.i.i, i64 104
  store i64 1, ptr %i.l, align 8, !tbaa !22
  %i.m = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %.val22.i.i.i, i64 112
  store i32 %i.m, ptr %i.n, align 8, !tbaa !252
  %i.o = tail call noundef zeroext i1 @_ZNK6AstVar11isSigPublicEv(ptr noundef nonnull align 8 dereferenceable(280) %.val22.i.i.i)
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val22.i.i.i, i64 260
  %i.q = load i64, ptr %i.p, align 4
  %i.r = and i64 %i.q, 4503599627370496
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.s, align 8, !tbaa !251
  br label %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !253  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.u, ptr %.ptr89.i.i, align 16, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.idx.sroa.phi.i.i = phi ptr [ %.ptr89.i.i, %bb.g ], [ %.3.idx.sroa.gep97.i.i, %bb.h ]
  %.3.idx.i.i = phi i64 [ 16, %bb.g ], [ 24, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92   ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not19.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.3.add.i.i = add nuw nsw i64 %.3.idx.i.i, 8
  store ptr %i.w, ptr %.3.idx.sroa.phi.i.i, align 8, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4.idx.i.i = phi i64 [ %.3.idx.i.i, %bb.i ], [ %.3.add.i.i, %bb.j ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !148  ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not20.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.4.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx.i.i
  %.4.add.i.i = add nuw nsw i64 %.4.idx.i.i, 8
  store ptr %i.y, ptr %.4.ptr.i.i, align 8, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5.idx.i.i = phi i64 [ %.4.idx.i.i, %bb.k ], [ %.4.add.i.i, %bb.l ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !137 ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not21.i.i.i, label %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.i.i, label %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.thread109.i.i

_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.thread109.i.i: ; preds = %bb.m
  %.5.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx.i.i
  %.5.add.i.i = add nuw nsw i64 %.5.idx.i.i, 8
  store ptr %i.aa, ptr %.5.ptr.i.i, align 8, !tbaa !93
  br label %.lr.ph.preheader.i.i

_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.i.i: ; preds = %bb.m
  %i.ab = icmp samesign ugt i64 %.5.idx.i.i, 16
  br i1 %i.ab, label %.lr.ph.preheader.i.i, label %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit, !prof !390

.lr.ph.preheader.i.i:                             ; preds = %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.thread109.i.i
  %.6.idx111.i.i = phi i64 [ %.5.add.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.thread109.i.i ], [ %.5.idx.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.i.i ]
  %.6.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx111.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i, %.lr.ph.preheader.i.i
  %.03288.i.i = phi ptr [ %.133.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i ], [ %i.h, %.lr.ph.preheader.i.i ] ; 2 uses
  %.03487.i.i = phi ptr [ %.135.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i ], [ %.ptr89.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03686.i.i = phi i64 [ %.137.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i ], [ 32, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.062.085.i.i = phi ptr [ %.sroa.062.1.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i ], [ null, %.lr.ph.preheader.i.i ] ; 4 uses
  %.084.i.i = phi ptr [ %.10.i.i, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i ], [ %.6.ptr.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.084.i.i, i64 -8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 7 uses
  %i.af = getelementptr inbounds i8, ptr %.084.i.i, i64 -24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !93 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ai, i32 0, i32 3, i32 1)
  %.not40.i.i = icmp ult ptr %i.ad, %.03288.i.i
  br i1 %.not40.i.i, label %bb.q, label %bb.n, !prof !152

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.aj = shl i64 %.03686.i.i, 1                  ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 2305843009213693951
  %i.al = shl i64 %.03686.i.i, 4
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #30
          to label %bb.o unwind label %bb.p       ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.ao = ptrtoint ptr %i.ad to i64
  %i.ap = ptrtoint ptr %.03487.i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.03487.i.i, i64 -16
  %i.as = add i64 %i.aq, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.ar, i64 %i.as, i1 false)
  %.not.i.i47.i.i = icmp eq ptr %.sroa.062.085.i.i, null
  br i1 %.not.i.i47.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %.sroa.062.085.i.i) #26
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aj
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -40
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.au, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 3 uses
  %.sroa.062.1.i.i = phi ptr [ %.sroa.062.085.i.i, %.lr.ph.i.i ], [ %i.an, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 4 uses
  %.137.i.i = phi i64 [ %.03686.i.i, %.lr.ph.i.i ], [ %i.aj, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %.135.i.i = phi ptr [ %.03487.i.i, %.lr.ph.i.i ], [ %i.at, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 2 uses
  %.133.i.i = phi ptr [ %.03288.i.i, %.lr.ph.i.i ], [ %i.aw, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !131 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.az, null
  br i1 %.not41.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store ptr %i.az, ptr %.1.i.i, align 8, !tbaa !93
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i.i = phi ptr [ %.1.i.i, %bb.q ], [ %i.ba, %bb.r ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.0.0.copyload.i.i.i48.i.i = load i16, ptr %i.bb, align 8, !tbaa !155
  %i.bc = icmp eq i16 %.sroa.0.0.copyload.i.i.i48.i.i, 369
  br i1 %i.bc, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr i8, ptr %i.ae, i64 152
  %.val22.i54.i.i = load ptr, ptr %i.bd, align 8, !tbaa !212 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val22.i54.i.i, i64 104
  store i64 1, ptr %i.be, align 8, !tbaa !22
  %i.bf = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %.val22.i54.i.i, i64 112
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !252
  %i.bh = invoke noundef zeroext i1 @_ZNK6AstVar11isSigPublicEv(ptr noundef nonnull align 8 dereferenceable(280) %.val22.i54.i.i)
          to label %.noexc56.i.i unwind label %bb.ae

.noexc56.i.i:                                     ; preds = %bb.t
  br i1 %i.bh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc56.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.val22.i54.i.i, i64 260
  %i.bj = load i64, ptr %i.bi, align 4
  %i.bk = and i64 %i.bj, 4503599627370496
  %.not.i.i55.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i55.i.i, label %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc56.i.i
  store i8 1, ptr %i.ac, align 8, !tbaa !251
  br label %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i

bb.w:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !253 ; 2 uses
  %.not.i49.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i49.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 8
  store ptr %i.bm, ptr %.2.i.i, align 8, !tbaa !93
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.7.i.i = phi ptr [ %.2.i.i, %bb.w ], [ %i.bn, %bb.x ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92 ; 2 uses
  %.not19.i50.i.i = icmp eq ptr %i.bp, null
  br i1 %.not19.i50.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 8
  store ptr %i.bp, ptr %.7.i.i, align 8, !tbaa !93
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.8.i.i = phi ptr [ %.7.i.i, %bb.y ], [ %i.bq, %bb.z ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !148 ; 2 uses
  %.not20.i51.i.i = icmp eq ptr %i.bs, null
  br i1 %.not20.i51.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 8
  store ptr %i.bs, ptr %.8.i.i, align 8, !tbaa !93
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.9.i.i = phi ptr [ %.8.i.i, %bb.aa ], [ %i.bt, %bb.ab ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !137 ; 2 uses
  %.not21.i52.i.i = icmp eq ptr %i.bv, null
  br i1 %.not21.i52.i.i, label %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %.9.i.i, i64 8
  store ptr %i.bv, ptr %.9.i.i, align 8, !tbaa !93
  br label %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i

_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i: ; preds = %bb.ad, %bb.ac, %bb.v, %bb.u
  %.10.i.i = phi ptr [ %.2.i.i, %bb.v ], [ %.2.i.i, %bb.u ], [ %.9.i.i, %bb.ac ], [ %i.bw, %bb.ad ] ; 2 uses
  %i.bx = icmp ugt ptr %.10.i.i, %.135.i.i
  br i1 %i.bx, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !391

bb.ae:                                            ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.i.i:                                  ; preds = %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit57.i.i
  %.not.i58.i.i = icmp eq ptr %.sroa.062.1.i.i, null
  br i1 %.not.i58.i.i, label %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i: ; preds = %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.062.1.i.i) #26
  br label %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit

bb.af:                                            ; preds = %bb.ae, %bb.p
  %.sroa.062.2.i.i = phi ptr [ %.sroa.062.1.i.i, %bb.ae ], [ %.sroa.062.085.i.i, %bb.p ] ; 2 uses
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %i.ax, %bb.p ]
  %.not.i59.i.i = icmp eq ptr %.sroa.062.2.i.i, null
  br i1 %.not.i59.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit61.i.i, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i60.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i60.i.i: ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %.sroa.062.2.i.i) #26
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit61.i.i

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit61.i.i: ; preds = %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i60.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn.pn.i.i

_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit: ; preds = %bb.e, %bb.f, %_ZZN7AstNode11foreachImplI9AstVarRefZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPKS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESK_.exit.i.i, %._crit_edge.i.i, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !122
  %i.cb = call fastcc noundef nonnull align 8 dereferenceable(120) ptr @_ZN20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclIJEEERS2_PS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef %1) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !251, !range !72, !noundef !73
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !188 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %.not1315.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not1315.i, label %bb.ai, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit
  %i.ci = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i
  %.sroa.09.016.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.cr, %bb.ah ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !213 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !252
  %i.cn = icmp ne i32 %i.cm, %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = and i64 %i.cp, 4294967295
  %.not14.i = icmp eq i64 %i.cq, 0
  %.not.i = select i1 %i.cn, i1 true, i1 %.not14.i
  br i1 %.not.i, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.016.i) #27 ; 2 uses
  %.not13.i = icmp eq ptr %i.cr, %i.ch
  br i1 %.not13.i, label %bb.ai, label %bb.ag

bb.ai:                                            ; preds = %bb.ah, %_ZN7AstNode7foreachIZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExprEUlPK9AstVarRefE_EEvOT_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 107
  %i.ct = load i8, ptr %i.cs, align 1, !range !72
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond.i = select i1 %i.ce, i1 %i.cu, i1 false
  br i1 %or.cond.i, label %.loopexit, label %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit

.loopexit:                                        ; preds = %bb.ag, %bb.ai
  call void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
  store i8 0, ptr %i.cc, align 8, !tbaa !251
  br label %bb.at

_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit: ; preds = %bb.ai
  store ptr %1, ptr %i.b, align 8, !tbaa !133
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.cv, align 8, !tbaa !147
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 0, ptr %i.cw, align 4, !tbaa !151
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !130 ; 2 uses
  %.not.i2645 = icmp eq ptr %i.cy, null
  br i1 %.not.i2645, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit, %bb.aq
  %i.cz = phi ptr [ %i.ei, %bb.aq ], [ %i.cy, %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit ] ; 10 uses
  %i.da = phi ptr [ %i.cz, %bb.aq ], [ %1, %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.db, align 8, !tbaa !155
  %i.dc = add i16 %.sroa.0.0.copyload.i.i.i, -405
  %spec.select.i.i = icmp ult i16 %i.dc, 79
  br i1 %spec.select.i.i, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit, label %.thread

_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit:   ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !131
  %.not24 = icmp eq ptr %i.de, %i.da
  br i1 %.not24, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit
  %i.df = load ptr, ptr %i.bz, align 8, !tbaa !122
  %i.dg = call fastcc noundef nonnull align 8 dereferenceable(120) ptr @_ZN20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclIJEEERS2_PS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull %i.cz) ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !199, !range !72, !noundef !73
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i8, ptr %i.cc, align 8, !tbaa !251, !range !72, !noundef !73
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !188 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 64 ; 2 uses
  %.not1315.i27 = icmp eq ptr %i.dn, %i.do
  br i1 %.not1315.i27, label %bb.an, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.ak
  %i.dp = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i28
  %.sroa.09.016.i29 = phi ptr [ %i.dn, %.lr.ph.i28 ], [ %i.dy, %bb.am ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i29, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !213 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !252
  %i.du = icmp ne i32 %i.dt, %i.dp
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, 4294967295
  %.not14.i30 = icmp eq i64 %i.dx, 0
  %.not.i31 = select i1 %i.du, i1 true, i1 %.not14.i30
  br i1 %.not.i31, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.dy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.016.i29) #27 ; 2 uses
  %.not13.i33 = icmp eq ptr %i.dy, %i.do
  br i1 %.not13.i33, label %bb.an, label %bb.al

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 107
  %i.ea = load i8, ptr %i.dz, align 1, !range !72
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond.i35 = select i1 %i.dl, i1 %i.eb, i1 false
  br i1 %or.cond.i35, label %.thread, label %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit35

_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit35: ; preds = %bb.an
  %i.ec = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor18isSimplifiableNodeEP7AstNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cz)
  br i1 %i.ec, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit35
  %i.ed = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor11isCheapNodeEP7AstNode(ptr noundef nonnull %i.cz)
  br i1 %i.ed, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 120
  store i64 1, ptr %i.ee, align 8, !tbaa !22
  %i.ef = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !26
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cz, i64 116
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !149
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit35
  %storemerge.in = load i32, ptr %i.cw, align 4, !tbaa !151
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.cw, align 4, !tbaa !151
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !133
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !130 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ei, null
  br i1 %.not.i26, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit, %bb.aj, %bb.an, %bb.ao, %bb.aq, %.lr.ph, %bb.al, %_ZNK12_GLOBAL__N_114StmtProperties18writesConditionVarEb.exit, %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !151
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !151
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.em, align 8, !tbaa !150
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !131 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !146
  %.not25 = icmp eq ptr %i.eo, null
  br i1 %.not25, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.thread
  call fastcc void @_ZN12_GLOBAL__N_116MergeCondVisitor8mergeEndEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.thread
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !77
  %i.es = fadd double %i.er, 1.000000e+00
  store double %i.es, ptr %i.eq, align 8, !tbaa !77
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor24addIfHelpfulElseEndMergeEP11AstNodeStmt(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 864) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.534)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor20checkOrMakeMergeableEPK11AstNodeStmt(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  br i1 %i.f, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !133
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !146
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor18isSimplifiableNodeEP7AstNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !133
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 808) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.532)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.o) #29
  unreachable

.thread.i:                                        ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !151
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !151
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.s, align 8, !tbaa !150
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131  ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !146
  %.not25.i = icmp eq ptr %i.u, null
  br i1 %.not25.i, label %bb.i, label %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit

bb.i:                                             ; preds = %.thread.i
  tail call fastcc void @_ZN12_GLOBAL__N_116MergeCondVisitor8mergeEndEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit

_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit: ; preds = %.thread.i, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !77
  %i.x = fadd double %i.w, 1.000000e+00
  store double %i.x, ptr %i.v, align 8, !tbaa !77
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.y = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor11isCheapNodeEP7AstNode(ptr noundef %1)
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 1, ptr %i.z, align 8, !tbaa !22
  %i.aa = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !149
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !133
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %bb.l, label %.thread.i13

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 808) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.532)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.af) #29
  unreachable

.thread.i13:                                      ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !151
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !151
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.aj, align 8, !tbaa !150
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !131 ; 2 uses
  store ptr %i.al, ptr %i.h, align 8, !tbaa !146
  %.not25.i14 = icmp eq ptr %i.al, null
  br i1 %.not25.i14, label %bb.m, label %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit15

bb.m:                                             ; preds = %.thread.i13
  tail call fastcc void @_ZN12_GLOBAL__N_116MergeCondVisitor8mergeEndEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit15

_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit15: ; preds = %.thread.i13, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !77
  %i.ao = fadd double %i.an, 1.000000e+00
  store double %i.ao, ptr %i.am, align 8, !tbaa !77
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.e
  tail call fastcc void @_ZN12_GLOBAL__N_116MergeCondVisitor8mergeEndEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit15, %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit, %bb.d, %bb.c, %bb.n
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.n ], [ true, %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit ], [ false, %bb.c ], [ true, %_ZN12_GLOBAL__N_116MergeCondVisitor9addToListEP11AstNodeStmtP11AstNodeExpr.exit15 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user1uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
  %i.c = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !26
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116MergeCondVisitor18isSimplifiableNodeEP7AstNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 788) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.533)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !155
  %i.g = add i16 %.sroa.0.0.copyload.i.i.i, -466
  %spec.select.i.i = icmp ult i16 %i.g, 6
  br i1 %spec.select.i.i, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.thread

_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233  ; 3 uses
  %.not.i18 = icmp eq ptr %i.k, null
  br i1 %.not.i18, label %_ZN7AstNode4castI13AstNodeAssignS_EEPT_PT0_.exit.thread, label %_ZNK7AstNode8widthMinEv.exit

end_hunk_0
