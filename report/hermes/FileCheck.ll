inline.NumInlined: 1995
inline.NumDeleted: 840
begin_hunk_0_@_ZL10PrintMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEmmRKNS_16FileCheckRequestE:bb.a
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.p, ptr %12, align 8, !tbaa !69, !alias.scope !306
  %i.w = load i64, ptr %i.q, align 8, !tbaa !43
  store i64 %i.w, ptr %i.o, align 8, !tbaa !43, !alias.scope !306
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.x, ptr %i.z, align 8, !tbaa !67, !alias.scope !306
  store ptr %i.q, ptr %i.n, align 8, !tbaa !69
  store i64 0, ptr %i.y, align 8, !tbaa !67
  store i8 0, ptr %i.q, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.aa = and i64 %i.x, -8
  %i.ab = icmp eq i64 %i.aa, 4611686018427387896
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19, !noalias !309
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %.str.73..str.74, i64 noundef 8) #18, !noalias !309 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ad, ptr %11, align 8, !tbaa !78, !alias.scope !309
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25
  store ptr %i.ae, ptr %11, align 8, !tbaa !69, !alias.scope !309
  %i.al = load i64, ptr %i.af, align 8, !tbaa !43
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !43, !alias.scope !309
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i28 = load i64, ptr %.phi.trans.insert.i27, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit29

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.am = phi i64 [ %i.ai, %bb.h ], [ %.pre.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !67, !alias.scope !309
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !69
  store i64 0, ptr %i.an, align 8, !tbaa !67
  store i8 0, ptr %i.af, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.ap = add i64 %i.am, -4611686018427387882
  %i.aq = icmp ult i64 %i.ap, 22
  br i1 %i.aq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit29
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19, !noalias !312
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit29
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.86, i64 noundef 22) #18, !noalias !312 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.as, ptr %10, align 8, !tbaa !78, !alias.scope !312
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !67 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30
  store ptr %i.at, ptr %10, align 8, !tbaa !69, !alias.scope !312
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !43
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !43, !alias.scope !312
  %.phi.trans.insert.i32 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre.i33 = load i64, ptr %.phi.trans.insert.i32, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit34

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit34: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bb = phi i64 [ %i.ax, %bb.j ], [ %.pre.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !67, !alias.scope !312
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !69
  store i64 0, ptr %i.bc, align 8, !tbaa !67
  store i8 0, ptr %i.au, align 8, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 4, ptr %i.be, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.bf, align 1, !tbaa !53
  store ptr %10, ptr %9, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %4, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %14, i1 noundef zeroext true) #18
  %i.bg = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.as
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit34
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !43
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.bk = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ad
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.bo = load ptr, ptr %12, align 8, !tbaa !69   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.o
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !43
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %i.bs = load ptr, ptr %13, align 8, !tbaa !69   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !43
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 1, ptr %i.by, align 1, !tbaa !53
  store ptr @.str.87, ptr %15, align 8, !tbaa !43
  store i8 3, ptr %i.bx, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %i.h, ptr %16, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.h, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %15, ptr nonnull %16, i64 1, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %17, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  store ptr %i.h, ptr %18, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !41
  call void @_ZNK4llvh16FileCheckPattern17PrintVariableUsesERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.0.val, i64 poison, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull byval(%"class.llvh::SMRange") align 8 %18)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh9FileCheck21ValidateCheckPrefixesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Regex", align 8       ; 5 uses
  %2 = alloca %"struct.std::pair.115", align 8    ; 5 uses
  %3 = alloca %"class.llvh::StringSet", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, i8 0, i64 20, i1 false)
  store i32 16, ptr %i.a, align 4, !tbaa !315
  %i.b = load ptr, ptr %0, align 8, !tbaa !162    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not27 = icmp eq ptr %i.b, %i.d
  br i1 %.not27, label %_ZN4llvh9StringMapIcNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.021.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.021.028, align 8, !tbaa !69 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.critedge, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.f, ptr %2, align 8
  store i64 %i.h, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.j = call { ptr, i8 } @_ZN4llvh9StringMapIcNS_15MallocAllocatorEE11try_emplaceIJcEEESt4pairINS_17StringMapIteratorIcEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.f, i64 %i.h, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.2.0..sroa_idx.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.j, 1
  %i.k = trunc i8 %.fca.1.extract to i1
  br i1 %i.k, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN4llvh5RegexC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr nonnull @.str.88, i64 16, i32 noundef 0) #18
  %i.l = call noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %i.f, i64 %i.h, ptr noundef null) #18
  call void @_ZN4llvh5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br i1 %i.l, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %bb.d, %bb.b, %bb.c
  %.not.lcssa.ph = phi i1 [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.c ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !318
  %i.m = icmp eq i32 %.pre, 0
  br i1 %i.m, label %_ZN4llvh9StringMapIcNS_15MallocAllocatorEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !319  ; 2 uses
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %_ZN4llvh9StringMapIcNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.p = zext i32 %i.o to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !320
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117  ; 2 uses
  %magicptr.i = ptrtoint ptr %i.r to i64
  switch i64 %magicptr.i, label %bb.f [
    i64 0, label %bb.g
    i64 -8, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull align 8 dereferenceable(9) %i.r) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i, label %_ZN4llvh9StringMapIcNS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i, !llvm.loop !321

_ZN4llvh9StringMapIcNS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.g, %bb.a, %.critedge, %bb.e
  %.not.lcssa40 = phi i1 [ true, %bb.a ], [ %.not.lcssa.ph, %bb.e ], [ %.not.lcssa.ph, %.critedge ], [ %.not.lcssa.ph, %bb.g ]
  %5 = load ptr, ptr %3, align 8, !tbaa !320
  call void @free(ptr noundef %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %.not.lcssa40
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh9FileCheck21buildCheckPrefixRegexEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::Regex") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.llvh::SmallString.72", align 8 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !162    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 6 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) @.str.55, i64 5, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 5, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.g, align 1, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !322
  %.not.i.i = icmp eq ptr %i.a, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.j, ptr noundef nonnull align 8 dereferenceable(6) %i.e, i64 6, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 5, ptr %i.k, align 8, !tbaa !67
  store ptr %i.e, ptr %2, align 8, !tbaa !69
  store i64 0, ptr %i.f, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  store ptr %i.l, ptr %i.b, align 8, !tbaa !246
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %._crit_edge.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre20 = load ptr, ptr %2, align 8, !tbaa !69  ; 2 uses
  %i.m = icmp eq ptr %.pre20, %i.e
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.n = load i64, ptr %i.e, align 8, !tbaa !43
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %.pre20, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.pre21 = load ptr, ptr %1, align 8, !tbaa !162
  %.pre22 = load ptr, ptr %i.b, align 8, !tbaa !162
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.p = phi ptr [ %.pre22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.q = phi ptr [ %.pre21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 32, ptr %i.t, align 4, !tbaa !122
  %.not18 = icmp eq ptr %i.q, %i.p
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit
  %.pre23 = load ptr, ptr %3, align 8, !tbaa !119
  %i.u = zext i32 %i.bb to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.v = phi i64 [ %i.u, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.w = phi ptr [ %.pre23, %._crit_edge.loopexit ], [ %i.r, %bb.b ]
  call void @_ZN4llvh5RegexC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %i.w, i64 %i.v, i32 noundef 0) #18
  %i.x = load ptr, ptr %3, align 8, !tbaa !119    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.r
  br i1 %i.y, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.x) #18
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit
  %i.z = phi i32 [ %i.bb, %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit ], [ 0, %bb.b ] ; 4 uses
  %.sroa.010.019 = phi ptr [ %i.bc, %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit ], [ %i.q, %bb.b ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.010.019, align 8, !tbaa !69 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67 ; 8 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !67
  %i.ah = icmp eq i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp = call i32 @bcmp(ptr %i.aa, ptr %i.ae, i64 %i.ac)
  %.not17 = icmp eq i32 %bcmp, 0
  br i1 %.not17, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aj = load i32, ptr %i.t, align 4, !tbaa !122
  %.not.i = icmp ult i32 %i.z, %i.aj
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.e, !prof !157

bb.e:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !121
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %bb.e
  %i.ak = phi i32 [ %.pre.i, %bb.e ], [ %i.z, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  %i.al = load ptr, ptr %3, align 8, !tbaa !119
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  store i8 124, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.s, align 8, !tbaa !121
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !121
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread15

_ZNK4llvh9StringRef6equalsES0_.exit.thread15:     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aq = phi i32 [ %i.z, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.ap, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %i.ar = load i32, ptr %i.t, align 4, !tbaa !122
  %i.as = zext i32 %i.ar to i64
  %i.at = zext i32 %i.aq to i64                   ; 3 uses
  %i.au = sub nsw i64 %i.as, %i.at
  %i.av = icmp ugt i64 %i.ac, %i.au
  br i1 %i.av, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread15
  %i.aw = add i64 %i.ac, %i.at
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.r, i64 noundef %i.aw, i64 noundef 1) #18
  %.pre7.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !121
  %.pre24 = zext i32 %.pre7.pre.i.i to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread15
  %.not.i.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.pre-phi = phi i64 [ %i.at, %bb.f ], [ %.pre24, %.thread.i ]
  %i.ax = load ptr, ptr %3, align 8, !tbaa !119
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !121
  br label %_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit

_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.az = phi i32 [ %i.aq, %bb.f ], [ %.pre.i.i, %bb.g ], [ %i.z, %bb.d ]
  %i.ba = trunc i64 %i.ac to i32
  %i.bb = add i32 %i.az, %i.ba                    ; 3 uses
  store i32 %i.bb, ptr %i.s, align 8, !tbaa !121
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.p
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh9FileCheck10CheckInputERNS_9SourceMgrENS_9StringRefENS_8ArrayRefINS_15FileCheckStringEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SmallVector.101", align 8 ; 10 uses
  %7 = alloca %"struct.std::pair.30", align 8     ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.llvh::StringMap", align 8   ; 15 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, i8 0, i64 20, i1 false)
  store i32 24, ptr %i.d, align 4, !tbaa !315
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 2 uses
  %.not178181 = icmp eq ptr %i.f, %i.h
  br i1 %.not178181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK4llvh9StringRef5splitEc.exit, %bb.a
  %i.j = trunc i64 %5 to i32                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit, %._crit_edge
  %.sroa.093.0.ph = phi ptr [ %.sroa.093.3, %.loopexit ], [ %2, %._crit_edge ] ; 4 uses
  %.sroa.695.0.ph = phi i64 [ %.sroa.695.3, %.loopexit ], [ %3, %._crit_edge ] ; 5 uses
  %.048.ph = phi i32 [ %.351, %.loopexit ], [ 0, %._crit_edge ]
  %.043.ph = phi i32 [ %.346, %.loopexit ], [ 0, %._crit_edge ] ; 3 uses
  %.038.ph = phi i1 [ %.341, %.loopexit ], [ false, %._crit_edge ] ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvh9StringRef5splitEc.exit
  %.sroa.087.0182 = phi ptr [ %i.f, %.lr.ph ], [ %i.ac, %_ZNK4llvh9StringRef5splitEc.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.p = load ptr, ptr %.sroa.087.0182, align 8, !tbaa !69
  store ptr %i.p, ptr %9, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.087.0182, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  store i64 %i.r, ptr %i.i, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !tbaa !43, !noalias !323
  %i.s = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %i.a, i64 1, i64 noundef 0) #18, !noalias !326 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.082.0.copyload83 = load ptr, ptr %9, align 8, !tbaa !41
  %.sroa.3.0.copyload85 = load i64, ptr %i.i, align 8, !tbaa !44
  br label %_ZNK4llvh9StringRef5splitEc.exit

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.i, align 8, !tbaa !44, !noalias !326 ; 3 uses
  %i.v = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s)
  %i.w = load ptr, ptr %9, align 8, !tbaa !71, !noalias !326 ; 2 uses
  %i.x = add nuw i64 %i.s, 1
  %i.y = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = sub i64 %i.u, %i.y
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.c, %bb.d
  %.sroa.4.0 = phi ptr [ null, %bb.c ], [ %i.z, %bb.d ]
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.aa, %bb.d ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload85, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %.sroa.082.0.copyload83, %bb.c ], [ %i.w, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.082.0, ptr %7, align 8
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ab = call { ptr, i8 } @_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJS1_EEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr %.sroa.082.0, i64 %.sroa.3.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.087.0182, i64 32 ; 2 uses
  %.not178 = icmp eq ptr %i.ac, %i.h
  br i1 %.not178, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %.outer, %.thread
  %.048 = phi i32 [ %i.ai, %.thread ], [ %.048.ph, %.outer ] ; 4 uses
  %i.ad = icmp eq i32 %.048, %i.j
  br i1 %i.ad, label %.loopexit206, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = zext i32 %.048 to i64
  %i.af = getelementptr inbounds nuw [184 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !115
  %.not = icmp eq i32 %i.ah, 6
  br i1 %.not, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ai = add i32 %.048, 1
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !44
  %i.aj = call noundef i64 @_ZNK4llvh15FileCheckString5CheckERKNS_9SourceMgrENS_9StringRefEbRmRNS_9StringMapIS4_NS_15MallocAllocatorEEERNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %i.af, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.093.0.ph, i64 %.sroa.695.0.ph, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(86) %0) ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %.thread163, label %.thread145

.thread145:                                       ; preds = %bb.g
  %i.al = load i64, ptr %i.b, align 8, !tbaa !44
  %i.am = add i64 %i.al, %i.aj
  %.sroa.speculated129 = call i64 @llvm.umin.i64(i64 %.sroa.695.0.ph, i64 %i.am) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.093.0.ph, i64 %.sroa.speculated129
  %i.ao = sub i64 %.sroa.695.0.ph, %.sroa.speculated129
  %i.ap = add i32 %.048, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.loopexit206

.thread163:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.r

.loopexit206:                                     ; preds = %bb.e, %.thread145
  %.sroa.093.3 = phi ptr [ %i.an, %.thread145 ], [ %.sroa.093.0.ph, %bb.e ]
  %.sroa.695.3 = phi i64 [ %i.ao, %.thread145 ], [ %.sroa.695.0.ph, %bb.e ]
  %.sroa.8.2 = phi i64 [ %.sroa.speculated129, %.thread145 ], [ %.sroa.695.0.ph, %bb.e ]
  %.351 = phi i32 [ %i.ap, %.thread145 ], [ %i.j, %bb.e ] ; 6 uses
  %i.aq = load i8, ptr %i.k, align 2, !tbaa !329, !range !16, !noundef !17
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.l, ptr %6, align 8, !tbaa !119
  store i32 0, ptr %i.m, align 8, !tbaa !121
  store i32 16, ptr %i.n, align 4, !tbaa !122
  %i.as = load ptr, ptr %8, align 8, !tbaa !320   ; 3 uses
  %i.at = load i32, ptr %i.o, align 8, !tbaa !319 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5beginEv.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.h, %.critedge.i.i.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.aw, %.critedge.i.i.i.i.i ], [ %i.as, %bb.h ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !117
  %magicptr.i.i.i.i.i = ptrtoint ptr %i.av to i64
  switch i64 %magicptr.i.i.i.i.i, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5beginEv.exit.i [
    i64 0, label %.critedge.i.i.i.i.i
    i64 -8, label %.critedge.i.i.i.i.i
  ]

.critedge.i.i.i.i.i:                              ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  br label %.preheader.i.i.i.i, !llvm.loop !330

_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5beginEv.exit.i: ; preds = %.preheader.i.i.i.i, %bb.h
  %.sroa.0.1.i.i = phi ptr [ %i.as, %bb.h ], [ %.sroa.0.0.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.ax = zext i32 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ax ; 2 uses
  %.not2324.i = icmp eq ptr %.sroa.0.1.i.i, %i.ay
  br i1 %.not2324.i, label %_ZL14ClearLocalVarsRN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5beginEv.exit.i
  %.pre.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !117
  br label %.lr.ph.i

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i: ; preds = %.critedge.i.i.i
  %.not23.i = icmp eq ptr %storemerge.i.i, %i.ay
  br i1 %.not23.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit._crit_edge.i, label %.lr.ph.i

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit._crit_edge.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i
  %.pre29.i = load ptr, ptr %6, align 8, !tbaa !119 ; 3 uses
  %i.az = zext i32 %i.bn to i64
  %.idx.i = shl nuw nsw i64 %i.az, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre29.i, i64 %.idx.i
  %.not26.i = icmp eq i32 %i.bn, 0
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i, %.lr.ph.preheader.i
  %i.bb = phi i32 [ %i.bn, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.bc = phi ptr [ %i.bo, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.020.025.i = phi ptr [ %storemerge.i.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i ], [ %.sroa.0.1.i.i, %.lr.ph.preheader.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !331
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !43
  %.not13.i = icmp eq i8 %i.bf, 36
  br i1 %.not13.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bg = load i32, ptr %i.n, align 4, !tbaa !122
  %.not.i.i = icmp ult i32 %i.bb, %i.bg
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, label %bb.j, !prof !157

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !121
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i: ; preds = %bb.j, %bb.i
  %i.bh = phi i32 [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ]
  %i.bi = load ptr, ptr %6, align 8, !tbaa !119
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  store ptr %i.bd, ptr %i.bk, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.bl = load i32, ptr %i.m, align 8, !tbaa !121
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %i.m, align 8, !tbaa !121
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, %.lr.ph.i
  %i.bn = phi i32 [ %i.bm, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i ], [ %i.bb, %.lr.ph.i ] ; 3 uses
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.backedge, %bb.k
  %.pn.i.i = phi ptr [ %.sroa.020.025.i, %bb.k ], [ %storemerge.i.i, %.critedge.i.i.i.backedge ]
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 4 uses
  %i.bo = load ptr, ptr %storemerge.i.i, align 8, !tbaa !117 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.bo to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit.loopexit.i [
    i64 0, label %.critedge.i.i.i.backedge
    i64 -8, label %.critedge.i.i.i.backedge
  ]

.critedge.i.i.i.backedge:                         ; preds = %.critedge.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i, !llvm.loop !330

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5eraseES1_.exit.i
  %.pre30.i = load ptr, ptr %6, align 8, !tbaa !119
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit._crit_edge.i
  %i.bp = phi ptr [ %.pre30.i, %._crit_edge.loopexit.i ], [ %.pre29.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit._crit_edge.i ] ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.l
  br i1 %i.bq, label %_ZL14ClearLocalVarsRN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEEE.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.bp) #18
  br label %_ZL14ClearLocalVarsRN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEEE.exit

.lr.ph28.i:                                       ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit._crit_edge.i, %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5eraseES1_.exit.i
  %.027.i = phi ptr [ %i.bz, %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5eraseES1_.exit.i ], [ %.pre29.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorINS_9StringRefEEENS_14StringMapEntryIS2_EEEppEv.exit._crit_edge.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.027.i, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %i.br = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #18 ; 2 uses
  %i.bs = icmp ne i32 %i.br, -1
  %i.bt = load i32, ptr %i.o, align 8
  %i.bu = zext i32 %i.bt to i64
  %i.bv = sext i32 %i.br to i64                   ; 2 uses
  %i.bw = icmp ne i64 %i.bv, %i.bu
  %.not7.i.i = select i1 %i.bs, i1 %i.bw, i1 false
  br i1 %.not7.i.i, label %bb.m, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5eraseES1_.exit.i

bb.m:                                             ; preds = %.lr.ph28.i
  %i.bx = load ptr, ptr %8, align 8
  %.sroa.0.0.i.i.i = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bv
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !117 ; 2 uses
  call void @_ZN4llvh13StringMapImpl9RemoveKeyEPNS_18StringMapEntryBaseE(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull %i.by) #18
  call void @free(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #18
  br label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5eraseES1_.exit.i

_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5eraseES1_.exit.i: ; preds = %bb.m, %.lr.ph28.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.027.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, %i.ba
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph28.i

_ZL14ClearLocalVarsRN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEEE.exit: ; preds = %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE5beginEv.exit.i, %._crit_edge.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.n

bb.n:                                             ; preds = %_ZL14ClearLocalVarsRN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEEE.exit, %.loopexit206
  %.not59183 = icmp eq i32 %.043.ph, %.351
  br i1 %.not59183, label %.loopexit, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.n, %bb.p
  %.144186 = phi i32 [ %i.ci, %bb.p ], [ %.043.ph, %bb.n ] ; 2 uses
  %.sroa.8.3185 = phi i64 [ %i.ch, %bb.p ], [ %.sroa.8.2, %bb.n ] ; 3 uses
  %.sroa.0.3184 = phi ptr [ %i.cg, %bb.p ], [ %.sroa.093.0.ph, %bb.n ] ; 2 uses
  %i.ca = zext i32 %.144186 to i64
  %i.cb = getelementptr inbounds nuw [184 x i8], ptr %4, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.c, align 8, !tbaa !44
  %i.cc = call noundef i64 @_ZNK4llvh15FileCheckString5CheckERKNS_9SourceMgrENS_9StringRefEbRmRNS_9StringMapIS4_NS_15MallocAllocatorEEERNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.0.3184, i64 %.sroa.8.3185, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(86) %0) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph188
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !44
  %i.cf = add i64 %i.ce, %i.cc
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.3185, i64 %i.cf) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.3184, i64 %.sroa.speculated
  %i.ch = sub i64 %.sroa.8.3185, %.sroa.speculated
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ci = add i32 %.144186, 1                     ; 2 uses
  %.not59 = icmp eq i32 %i.ci, %.351
  br i1 %.not59, label %.loopexit, label %.lr.ph188, !llvm.loop !333

.loopexit:                                        ; preds = %bb.p, %bb.n, %bb.o
  %.346 = phi i32 [ %.351, %bb.o ], [ %.043.ph, %bb.n ], [ %.351, %bb.p ]
  %.341 = phi i1 [ true, %bb.o ], [ %.038.ph, %bb.n ], [ %.038.ph, %bb.p ] ; 2 uses
  %i.cj = icmp eq i32 %.351, %i.j
  br i1 %i.cj, label %bb.q, label %.outer

bb.q:                                             ; preds = %.loopexit
  %i.ck = xor i1 %.341, true
  br label %bb.r

bb.r:                                             ; preds = %.thread163, %bb.q
  %.5 = phi i1 [ false, %.thread163 ], [ %i.ck, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !318
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.o, align 8, !tbaa !319 ; 2 uses
  %.not10.i = icmp eq i32 %i.co, 0
  br i1 %.not10.i, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.preheader.i75

.lr.ph.preheader.i75:                             ; preds = %bb.s
  %i.cp = zext i32 %i.co to i64
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %bb.u, %.lr.ph.preheader.i75
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i75 ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %10 = load ptr, ptr %8, align 8, !tbaa !320
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !117 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.cr to i64
  switch i64 %magicptr.i, label %bb.t [
    i64 0, label %bb.u
    i64 -8, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph.i76
  call void @free(ptr noundef nonnull align 8 dereferenceable(24) %i.cr) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i76, %.lr.ph.i76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i77 = icmp eq i64 %indvars.iv.next.i, %i.cp
  br i1 %.not.i77, label %_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i76, !llvm.loop !334

_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.u, %bb.r, %bb.s
  %11 = load ptr, ptr %8, align 8, !tbaa !320
  call void @free(ptr noundef %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret i1 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !41    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = icmp ult ptr %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !335

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336
  %i.j = icmp ult ptr %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, %bb.b
  %.08.lcssa.i.i.i20 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %.pre, ptr %i.l, align 8, !tbaa !336
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 8, !tbaa !338
  %i.o = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.p, null
  %i.r = icmp eq ptr %i.q, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = icmp ult ptr %i.s, %i.u
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !187
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !187
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #21
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.b, %bb.e, %.thread.i.i
  %.sroa.018.0 = phi ptr [ %i.p, %bb.e ], [ %i.k, %.thread.i.i ], [ %.19.i.i.i, %bb.b ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %.thread.i.i ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !184    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not7.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i) #18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !339

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not7.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not7.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.09.i.i.i.i.i20 = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i19 ], [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i21 = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i21) #18
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i21, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !339

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.v, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24 ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #18
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !340

_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #21
  br label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !184
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !180
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !183
  ret void
}

declare void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread: ; preds = %.thread.i.i38, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39
  %i.ad = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92

._ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge: ; preds = %.thread.i.i23.thread
  %.sroa.0.0.copyload.i46.pre = load ptr, ptr %2, align 8, !tbaa !41
  %.sroa.01.0.copyload.i47.pre = load ptr, ptr %i.n, align 8, !tbaa !41
  br label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45: ; preds = %._ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit24
  %.sroa.01.0.copyload.i47 = phi ptr [ %.sroa.01.0.copyload.i47.pre, %._ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge ], [ %.sroa.0.0.copyload.i16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit24 ]
  %.sroa.0.0.copyload.i46 = phi ptr [ %.sroa.0.0.copyload.i46.pre, %._ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge ], [ %.sroa.01.0.copyload.i17, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit24 ]
  %i.ag = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i47, ptr noundef %.sroa.0.0.copyload.i46, i64 noundef %.sroa.speculated.i.i14) #20
  %.fr.i.i48 = freeze i32 %i.ag                   ; 2 uses
  %.not.i.not.i.i49 = icmp eq i32 %.fr.i.i48, 0
  br i1 %.not.i.not.i.i49, label %.thread.i.i53, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54

.thread.i.i53:                                    ; preds = %.thread.i.i23, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45
  %i.ah = icmp ult i64 %.sroa.2.0.copyload.i13, %.sroa.22.0.copyload.i11
  br i1 %i.ah, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45
  %.inv.i.i.i50 = icmp slt i32 %.fr.i.i48, 0
  br i1 %.inv.i.i.i50, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104: ; preds = %.thread.i.i53, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92, label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #20 ; 4 uses
  %.sroa.2.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.2.0.copyload.i58 = load i64, ptr %.sroa.2.0..sroa_idx.i57, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i59 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i58, i64 %.sroa.22.0.copyload.i11) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i59, 0
  br i1 %i.am, label %.thread.i.i68, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.0.0.copyload.i61 = load ptr, ptr %i.an, align 8, !tbaa !41
  %.sroa.01.0.copyload.i62 = load ptr, ptr %2, align 8, !tbaa !41
  %i.ao = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i62, ptr noundef %.sroa.0.0.copyload.i61, i64 noundef %.sroa.speculated.i.i59) #20
  %.fr.i.i63 = freeze i32 %i.ao                   ; 2 uses
  %.not.i.not.i.i64 = icmp eq i32 %.fr.i.i63, 0
  br i1 %.not.i.not.i.i64, label %.thread.i.i68, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69

.thread.i.i68:                                    ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60, %bb.f
  %i.ap = icmp ult i64 %.sroa.22.0.copyload.i11, %.sroa.2.0.copyload.i58
  br i1 %i.ap, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread108, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60
  %.inv.i.i.i65 = icmp slt i32 %.fr.i.i63, 0
  br i1 %.inv.i.i.i65, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread108, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread108: ; preds = %.thread.i.i68, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !342
  %i.as = icmp eq ptr %i.ar, null                 ; 2 uses
  %spec.select115 = select i1 %i.as, ptr null, ptr %i.al
  %spec.select116 = select i1 %i.as, ptr %1, ptr %i.al
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread: ; preds = %.thread.i.i68, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69
  %i.at = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %i.av = extractvalue { ptr, ptr } %i.at, 1
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread92: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread108, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread100, %.thread.i.i, %.thread.i.i53, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit24.thread96, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread
  %.sroa.090.2 = phi ptr [ %i.l, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread ], [ null, %.thread.i.i ], [ null, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit ], [ %spec.select115, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread108 ], [ %1, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54 ], [ %i.ae, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread ], [ %i.t, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit24.thread96 ], [ %1, %.thread.i.i53 ], [ %i.au, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread ], [ null, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104 ], [ %spec.select, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread100 ]
  %.sroa.12.2 = phi ptr [ %i.m, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread ], [ %i.f, %.thread.i.i ], [ %i.f, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit ], [ %spec.select116, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread108 ], [ null, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54 ], [ %i.af, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread ], [ %i.t, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit24.thread96 ], [ null, %.thread.i.i53 ], [ %i.av, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit69.thread ], [ %i.aj, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit54.thread104 ], [ %spec.select112, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit39.thread100 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.090.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.03544 = load ptr, ptr %i.a, align 8, !tbaa !90 ; 2 uses
  %.not45 = icmp eq ptr %.03544, null
  br i1 %.not45, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !44 ; 2 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37
  %.03546 = phi ptr [ %.03544, %.lr.ph ], [ %.035, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37 ] ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.03546, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i) ; 2 uses
  %i.c = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.c, label %.thread.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.03546, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i) #20
  %.fr.i.i = freeze i32 %i.e                      ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %.fr.i.i, 0
  br i1 %.not.i.not.i.i, label %.thread.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit

.thread.i.i:                                      ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.f, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit:   ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.inv.i.i.i = icmp slt i32 %.fr.i.i, 0
  br i1 %.inv.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread: ; preds = %.thread.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit, %.thread.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread
  %.sink = phi i64 [ 24, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread ], [ 16, %.thread.i.i ], [ 16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit ]
  %i.g = phi i1 [ false, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread ], [ true, %.thread.i.i ], [ true, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %.03546, i64 %.sink
  %.035 = load ptr, ptr %i.h, align 8, !tbaa !90  ; 2 uses
  %.not = icmp eq ptr %.035, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !388

._crit_edge:                                      ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread37
  br i1 %i.g, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.034.lcssa51 = phi ptr [ %.03546, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.k = icmp eq ptr %.034.lcssa51, %i.j
  br i1 %i.k, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread41, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.034.lcssa51) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.034.lcssa50 = phi ptr [ %.034.lcssa51, %bb.c ], [ %.03546, %._crit_edge ] ; 2 uses
  %.sroa.020.0 = phi ptr [ %i.l, %bb.c ], [ %.03546, %._crit_edge ] ; 3 uses
  %.sroa.22.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 40
  %.sroa.22.0.copyload.i6 = load i64, ptr %.sroa.22.0..sroa_idx.i5, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i8 = load i64, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i9 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i8, i64 %.sroa.22.0.copyload.i6) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i9, 0
  br i1 %i.m, label %.thread.i.i18, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 32
  %.sroa.0.0.copyload.i11 = load ptr, ptr %1, align 8, !tbaa !41
  %.sroa.01.0.copyload.i12 = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.o = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i12, ptr noundef %.sroa.0.0.copyload.i11, i64 noundef %.sroa.speculated.i.i9) #20
  %.fr.i.i13 = freeze i32 %i.o                    ; 2 uses
  %.not.i.not.i.i14 = icmp eq i32 %.fr.i.i13, 0
  br i1 %.not.i.not.i.i14, label %.thread.i.i18, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19

.thread.i.i18:                                    ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10, %bb.d
  %i.p = icmp ult i64 %.sroa.22.0.copyload.i6, %.sroa.2.0.copyload.i8
  br i1 %i.p, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread41, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10
  %.inv.i.i.i15 = icmp slt i32 %.fr.i.i13, 0
  br i1 %.inv.i.i.i15, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread41, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread: ; preds = %.thread.i.i18, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread41

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread41: ; preds = %.thread.i.i18, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19, %._crit_edge.thread, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread
  %.sroa.033.0 = phi ptr [ %.sroa.020.0, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread ], [ null, %._crit_edge.thread ], [ null, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19 ], [ null, %.thread.i.i18 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19.thread ], [ %.034.lcssa51, %._crit_edge.thread ], [ %.034.lcssa50, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit19 ], [ %.034.lcssa50, %.thread.i.i18 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.033.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #18 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !320
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  switch i64 %magicptr, label %.preheader.i.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i.i:                                   ; preds = %bb.a, %.critedge.i.i.i
  %i.f = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.029.0 = phi ptr [ %i.g, %.critedge.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i
    i64 -8, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !117
  br label %.preheader.i.i, !llvm.loop !330

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !389
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !389
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 25
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #24 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext true) #18
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit

_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !43
  store ptr %i.l, ptr %i.d, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !318
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !318
  %i.t = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #18
  %i.u = load ptr, ptr %0, align 8, !tbaa !320
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %.preheader.i.i22

.preheader.i.i22:                                 ; preds = %.critedge.i.i.i24, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJEEEPS2_S1_RT_DpOT0_.exit ], [ %i.y, %.critedge.i.i.i24 ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0, align 8, !tbaa !117
  %magicptr.i.i.i23 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i.i.i23, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i24
    i64 -8, label %.critedge.i.i.i24
  ]

.critedge.i.i.i24:                                ; preds = %.preheader.i.i22, %.preheader.i.i22
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i22, !llvm.loop !330

_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i22, %.preheader.i.i
  %.sroa.029.0.pn = phi ptr [ %.sroa.029.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i22 ]
  %.pn30 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i22 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.029.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn30, 1
  ret { ptr, i8 } %.pn
}

declare noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !78
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !69
  %i.o = load i64, ptr %i.i, align 8, !tbaa !43
  store i64 %i.o, ptr %i.g, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  store ptr %i.i, ptr %i.f, align 8, !tbaa !69
  store i64 0, ptr %i.p, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !116
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98
  store ptr %i.x, ptr %i.v, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !185
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !90
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !390
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !187
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !187
  store ptr null, ptr %i.z, align 8, !tbaa !89
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !123
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !186
  store i64 0, ptr %i.aj, align 8, !tbaa !187
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr null, ptr %i.am, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.y, ptr %i.an, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 0, ptr %i.ap, align 8, !tbaa !187
  br label %_ZN4llvh16FileCheckPatternC2EOS0_.exit

_ZN4llvh16FileCheckPatternC2EOS0_.exit:           ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ac, %bb.d ]
  store i32 %.sink.i.i.i.i.i, ptr %i.y, align 8, !tbaa !185
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !163
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh16FileCheckPatternC2EOS0_.exit
  %i.av = phi ptr [ %.pre, %bb.f ], [ %i.au, %_ZN4llvh16FileCheckPatternC2EOS0_.exit ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -136
  ret ptr %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !166    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880)
  %i.l = select i1 %i.j, i64 67818912035696880, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 136
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.q, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !69   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !67   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN4llvh16FileCheckPatternESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !69
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN4llvh16FileCheckPatternES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 136
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvh16FileCheckPatternaSERKS0_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.am, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ]
  ret ptr %.08.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh16FileCheckPatternaSERKS0_.exit
  %.012 = phi i64 [ %i.e, %.lr.ph ], [ %i.an, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 2 uses
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.am, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 12 uses
  %.0910 = phi ptr [ %0, %.lr.ph ], [ %i.al, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.0811, ptr noundef nonnull align 8 dereferenceable(136) %.0910, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.0910, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %.0811, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.0910, i64 56
  %i.l = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0811, i64 80 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0811, %.0910
  br i1 %.not.i.i.i, label %_ZN4llvh16FileCheckPatternaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %.0811, i64 96 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 4 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !407
  %i.p = getelementptr inbounds nuw i8, ptr %.0811, i64 112 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !409
  store ptr %i.m, ptr %i.g, align 8, !tbaa !393
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !390
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !343  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ null, %bb.c ]
  store ptr %.sink.i.i.i.i, ptr %i.f, align 8, !tbaa !409
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0811, i64 88 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %.0811, i64 104 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !123
  store ptr %i.u, ptr %i.p, align 8, !tbaa !186
  %i.w = getelementptr inbounds nuw i8, ptr %.0811, i64 120 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !187
  %i.x = getelementptr inbounds nuw i8, ptr %.0910, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i
  %i.z = call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull %i.y, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !343 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.f, !llvm.loop !395

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !90
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.z, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !342 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i, label %bb.g, !llvm.loop !396

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i.i, ptr %i.p, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !187
  store i64 %i.af, ptr %i.w, align 8, !tbaa !187
  store ptr %i.z, ptr %i.n, align 8, !tbaa !90
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !410
  %.pre6.i.i.i = load ptr, ptr %3, align 8, !tbaa !407
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i
  %i.ag = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i ], [ %i.o, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i ]
  %i.ah = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i ], [ %i.m, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvh16FileCheckPatternaSERKS0_.exit

_ZN4llvh16FileCheckPatternaSERKS0_.exit:          ; preds = %bb.b, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910, i64 128
  %i.ak = load i64, ptr %i.aj, align 8
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0910, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 136 ; 2 uses
  %i.an = add nsw i64 %.012, -1
  %i.ao = icmp sgt i64 %.012, 1
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !417
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !399    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %i.l = select i1 %i.j, i64 50127021939428129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 184
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !41
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.q, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store ptr %i.r, ptr %i.u, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i64 %i.t, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store ptr %.sroa.0.0.copyload.i, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = tail call noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = tail call noundef ptr @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.y, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.c, null
  br i1 %.not.i18, label %_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !245
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #21
  br label %_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNKSt6vectorIN4llvh15FileCheckStringESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !399
  store ptr %i.z, ptr %i.a, align 8, !tbaa !243
  %i.ae = getelementptr inbounds nuw [184 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !245
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvh9StringMapIcNS_15MallocAllocatorEE11try_emplaceIJcEEESt4pairINS_17StringMapIteratorIcEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #18 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !320
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  switch i64 %magicptr, label %.preheader.i.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i.i:                                   ; preds = %bb.a, %.critedge.i.i.i
  %i.f = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.030.0 = phi ptr [ %i.g, %.critedge.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIteratorIcEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i
    i64 -8, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !117
  br label %.preheader.i.i, !llvm.loop !418

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !389
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !389
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 17
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #24 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext true) #18
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i8, ptr %3, align 1, !tbaa !43
  store i8 %i.o, ptr %i.n, align 8, !tbaa !419
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit

_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %2
  store i8 0, ptr %i.q, align 1, !tbaa !43
  store ptr %i.l, ptr %i.d, align 8, !tbaa !117
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !318
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !318
  %i.u = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #18
  %i.v = load ptr, ptr %0, align 8, !tbaa !320
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  br label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %.critedge.i.i.i25, %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.x, %_ZN4llvh14StringMapEntryIcE6CreateINS_15MallocAllocatorEJcEEEPS1_NS_9StringRefERT_DpOT0_.exit ], [ %i.z, %.critedge.i.i.i25 ] ; 3 uses
  %i.y = load ptr, ptr %.sroa.0.0, align 8, !tbaa !117
  %magicptr.i.i.i24 = ptrtoint ptr %i.y to i64
  switch i64 %magicptr.i.i.i24, label %_ZN4llvh17StringMapIteratorIcEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i25
    i64 -8, label %.critedge.i.i.i25
  ]

.critedge.i.i.i25:                                ; preds = %.preheader.i.i23, %.preheader.i.i23
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i23, !llvm.loop !418

_ZN4llvh17StringMapIteratorIcEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i23, %.preheader.i.i
  %.sroa.030.0.pn = phi ptr [ %.sroa.030.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i23 ]
  %.pn31 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i23 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn31, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #19
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !78
  %i.s = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !69
  %i.z = load i64, ptr %i.t, align 8, !tbaa !43
  store i64 %i.z, ptr %i.r, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !67
  store ptr %i.t, ptr %2, align 8, !tbaa !69
  store i64 0, ptr %i.ab, align 8, !tbaa !67
  store i8 0, ptr %i.t, align 8, !tbaa !43
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !78, !alias.scope !421, !noalias !424
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !69, !alias.scope !424, !noalias !421 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67, !alias.scope !424, !noalias !421 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !426
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !69, !alias.scope !421, !noalias !424
  %i.al = load i64, ptr %i.af, align 8, !tbaa !43, !alias.scope !424, !noalias !421
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !43, !alias.scope !421, !noalias !424
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !67, !alias.scope !424, !noalias !421
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !67, !alias.scope !421, !noalias !424
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !69, !alias.scope !424, !noalias !421
  store i64 0, ptr %i.an, align 8, !tbaa !67, !alias.scope !424, !noalias !421
  store i8 0, ptr %i.af, align 8, !tbaa !43, !alias.scope !424, !noalias !421
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !427

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !78, !alias.scope !428, !noalias !431
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !69, !alias.scope !431, !noalias !428 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !67, !alias.scope !431, !noalias !428 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !433
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !69, !alias.scope !428, !noalias !431
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !43, !alias.scope !431, !noalias !428
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !43, !alias.scope !428, !noalias !431
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !67, !alias.scope !431, !noalias !428
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !67, !alias.scope !428, !noalias !431
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !69, !alias.scope !431, !noalias !428
  store i64 0, ptr %i.bc, align 8, !tbaa !67, !alias.scope !431, !noalias !428
  store i8 0, ptr %i.au, align 8, !tbaa !43, !alias.scope !431, !noalias !428
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !427

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !322
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !247
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !246
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJS1_EEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) #18 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !320
  %i.c = zext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %magicptr = ptrtoint ptr %i.e to i64
  switch i64 %magicptr, label %.preheader.i.i [
    i64 0, label %bb.c
    i64 -8, label %bb.b
  ]

.preheader.i.i:                                   ; preds = %bb.a, %.critedge.i.i.i
  %i.f = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.e, %bb.a ]
  %.sroa.030.0 = phi ptr [ %i.g, %.critedge.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i
    i64 -8, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.030.0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !117
  br label %.preheader.i.i, !llvm.loop !330

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !389
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !389
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = add i64 %2, 25
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #24 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext true) #18
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.d, %bb.c
  store i64 %2, ptr %i.l, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit

_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !43
  store ptr %i.l, ptr %i.d, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !318
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !318
  %i.t = tail call noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.a) #18
  %i.u = load ptr, ptr %0, align 8, !tbaa !320
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  br label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %.critedge.i.i.i25, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit
  %.sroa.0.0 = phi ptr [ %i.w, %_ZN4llvh14StringMapEntryINS_9StringRefEE6CreateINS_15MallocAllocatorEJS1_EEEPS2_S1_RT_DpOT0_.exit ], [ %i.y, %.critedge.i.i.i25 ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0, align 8, !tbaa !117
  %magicptr.i.i.i24 = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i.i.i24, label %_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit [
    i64 0, label %.critedge.i.i.i25
    i64 -8, label %.critedge.i.i.i25
  ]

.critedge.i.i.i25:                                ; preds = %.preheader.i.i23, %.preheader.i.i23
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  br label %.preheader.i.i23, !llvm.loop !330

_ZN4llvh17StringMapIteratorINS_9StringRefEEC2EPPNS_18StringMapEntryBaseEb.exit: ; preds = %.preheader.i.i23, %.preheader.i.i
  %.sroa.030.0.pn = phi ptr [ %.sroa.030.0, %.preheader.i.i ], [ %.sroa.0.0, %.preheader.i.i23 ]
  %.pn31 = phi i8 [ 0, %.preheader.i.i ], [ 1, %.preheader.i.i23 ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.sroa.030.0.pn, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn31, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !15, i64 81}
!8 = !{!"_ZTSN4llvh16FileCheckRequestE", !9, i64 0, !15, i64 24, !9, i64 32, !9, i64 56, !15, i64 80, !15, i64 81, !15, i64 82, !15, i64 83, !15, i64 84, !15, i64 85}
!9 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !10, i64 0}
!10 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !11, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!19, !4, i64 132}
!19 = !{!"_ZTSN4llvh16FileCheckPatternE", !20, i64 0, !22, i64 8, !24, i64 24, !26, i64 56, !31, i64 80, !40, i64 128, !4, i64 132}
!20 = !{!"_ZTSN4llvh5SMLocE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !14, i64 0}
!22 = !{!"_ZTSN4llvh9StringRefE", !21, i64 0, !23, i64 8}
!23 = !{!"long", !5, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !23, i64 8, !5, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!26 = !{!"_ZTSSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSSt4pairIN4llvh9StringRefEjE", !14, i64 0}
!31 = !{!"_ZTSSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE", !32, i64 0}
!32 = !{!"_ZTSSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !33, i64 0}
!33 = !{!"_ZTSNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !34, i64 0, !36, i64 8}
!34 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvh9StringRefEEE", !35, i64 0}
!35 = !{!"_ZTSSt4lessIN4llvh9StringRefEE"}
!36 = !{!"_ZTSSt15_Rb_tree_header", !37, i64 0, !23, i64 32}
!37 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!38 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!39 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!40 = !{!"_ZTSN4llvh5Check13FileCheckTypeE", !5, i64 0}
!41 = !{!21, !21, i64 0}
!42 = !{!8, !15, i64 24}
!43 = !{!5, !5, i64 0}
!44 = !{!23, !23, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !49, i64 16}
!48 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !49, i64 16, !49, i64 17}
!49 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4llvhplEPKcRKNS_9StringRefE: argument 0"}
!52 = distinct !{!52, !"_ZN4llvhplEPKcRKNS_9StringRefE"}
!53 = !{!48, !49, i64 17}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!56 = distinct !{!56, !"_ZNK4llvh5Twine6concatERKS0_"}
!57 = distinct !{!57, !58, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!58 = distinct !{!58, !"_ZN4llvhplERKNS_5TwineES2_"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4llvhplEPKcRKNS_9StringRefE: argument 0"}
!61 = distinct !{!61, !"_ZN4llvhplEPKcRKNS_9StringRefE"}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!64 = distinct !{!64, !"_ZNK4llvh5Twine6concatERKS0_"}
!65 = distinct !{!65, !66, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!66 = distinct !{!66, !"_ZN4llvhplERKNS_5TwineES2_"}
!67 = !{!24, !23, i64 8}
!68 = !{i64 0, i64 8, !41, i64 8, i64 8, !44}
!69 = !{!24, !21, i64 0}
!70 = !{!22, !23, i64 8}
!71 = !{!22, !21, i64 0}
!72 = distinct !{!72, !46, !73}
!73 = !{!"llvm.loop.peeled.count", i32 1}
!74 = distinct !{!74, !46, !73}
!75 = distinct !{!75, !46}
!76 = !{!77, !4, i64 16}
!77 = !{!"_ZTSSt4pairIN4llvh9StringRefEjE", !22, i64 0, !4, i64 16}
!78 = !{!25, !21, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!81 = distinct !{!81, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!82 = !{!83, !80}
!83 = distinct !{!83, !84, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!84 = distinct !{!84, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!87 = distinct !{!87, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!88 = distinct !{!88, !46}
!89 = !{!36, !39, i64 8}
!90 = !{!39, !39, i64 0}
!91 = distinct !{!91, !46}
!92 = !{!93, !93, i64 0}
!93 = !{!"p1 _ZTSN4llvh9StringRefE", !14, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!96 = distinct !{!96, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!97 = !{!29, !30, i64 8}
!98 = !{!29, !30, i64 16}
!99 = !{!29, !30, i64 0}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!102 = distinct !{!102, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_"}
!103 = distinct !{!103, !102, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!104 = distinct !{!104, !46}
!105 = !{!106, !106, i64 0}
!106 = !{!"long long", !5, i64 0}
!107 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN4llvh6utostrB5cxx11Emb: argument 0"}
!110 = distinct !{!110, !"_ZN4llvh6utostrB5cxx11Emb"}
!111 = distinct !{!111, !46}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN4llvh6utostrB5cxx11Emb: argument 0"}
!114 = distinct !{!114, !"_ZN4llvh6utostrB5cxx11Emb"}
!115 = !{!19, !40, i64 128}
!116 = !{!30, !30, i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN4llvh18StringMapEntryBaseE", !14, i64 0}
!119 = !{!120, !14, i64 0}
!120 = !{!"_ZTSN4llvh15SmallVectorBaseE", !14, i64 0, !4, i64 8, !4, i64 12}
!121 = !{!120, !4, i64 8}
!122 = !{!120, !4, i64 12}
!123 = !{!36, !39, i64 16}
!124 = !{!125, !4, i64 16}
!125 = !{!"_ZTSSt4pairIKN4llvh9StringRefEjE", !22, i64 0, !4, i64 16}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK4llvh9StringRef5splitEc: argument 0"}
!128 = distinct !{!128, !"_ZNK4llvh9StringRef5splitEc"}
!129 = !{!130, !127}
!130 = distinct !{!130, !131, !"_ZNK4llvh9StringRef5splitES0_: argument 0"}
!131 = distinct !{!131, !"_ZNK4llvh9StringRef5splitES0_"}
!132 = !{!133, !134, i64 32}
!133 = !{!"_ZTSN4llvh11raw_ostreamE", !21, i64 8, !21, i64 16, !21, i64 24, !134, i64 32}
!134 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"vtable pointer", !6, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"p1 _ZTSN4llvh15SmallVectorImplIcEE", !14, i64 0}
!139 = !{!133, !21, i64 16}
!140 = !{!133, !21, i64 24}
!141 = !{!20, !21, i64 0}
!142 = !{!143, !138, i64 40}
!143 = !{!"_ZTSN4llvh19raw_svector_ostreamE", !144, i64 0, !138, i64 40}
!144 = !{!"_ZTSN4llvh17raw_pwrite_streamE", !133, i64 0}
!145 = !{i64 8}
!146 = !{i64 0, i64 8, !41, i64 8, i64 8, !41}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNK4llvh9StringRef5splitEc: argument 0"}
!149 = distinct !{!149, !"_ZNK4llvh9StringRef5splitEc"}
!150 = !{!151, !148}
!151 = distinct !{!151, !152, !"_ZNK4llvh9StringRef5splitES0_: argument 0"}
!152 = distinct !{!152, !"_ZNK4llvh9StringRef5splitES0_"}
!153 = distinct !{!153, !46}
!154 = !{!155, !21, i64 16}
!155 = !{!"_ZTSN4llvh12MemoryBufferE", !21, i64 8, !21, i64 16}
!156 = !{!155, !21, i64 8}
!157 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!158 = !{!159, !15, i64 24}
!159 = !{!"_ZTSN4llvh9FileCheckE", !8, i64 0}
!160 = distinct !{!160, !46}
!161 = distinct !{!161, !46}
!162 = !{!13, !13, i64 0}
!163 = !{!164, !165, i64 8}
!164 = !{!"_ZTSNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE17_Vector_impl_dataE", !165, i64 0, !165, i64 8, !165, i64 16}
!165 = !{!"p1 _ZTSN4llvh16FileCheckPatternE", !14, i64 0}
!166 = !{!164, !165, i64 0}
!167 = !{!164, !165, i64 16}
!168 = distinct !{!168, !46}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!171 = distinct !{!171, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!172 = !{!173, !170}
!173 = distinct !{!173, !174, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!174 = distinct !{!174, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!177 = distinct !{!177, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!178 = !{!179, !179, i64 0}
!179 = !{!"p1 _ZTSN4llvh12MemoryBufferE", !14, i64 0}
!180 = !{!181, !182, i64 8}
!181 = !{!"_ZTSNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!182 = !{!"p1 _ZTSN4llvh9SourceMgr9SrcBufferE", !14, i64 0}
!183 = !{!181, !182, i64 16}
!184 = !{!181, !182, i64 0}
!185 = !{!36, !38, i64 0}
!186 = !{!36, !39, i64 24}
!187 = !{!36, !23, i64 32}
!188 = !{!165, !165, i64 0}
!189 = distinct !{null, null}
!190 = distinct !{!190, !46, !191, !192}
!191 = !{!"llvm.loop.isvectorized", i32 1}
!192 = !{!"llvm.loop.unroll.runtime.disable"}
!193 = distinct !{!193, !46, !192, !191}
!194 = distinct !{!194, !46}
!195 = distinct !{!195, !46}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN4llvhplEPKcRKNS_9StringRefE: argument 0"}
!198 = distinct !{!198, !"_ZN4llvhplEPKcRKNS_9StringRefE"}
!199 = !{!200, !202}
!200 = distinct !{!200, !201, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!201 = distinct !{!201, !"_ZNK4llvh5Twine6concatERKS0_"}
!202 = distinct !{!202, !203, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!203 = distinct !{!203, !"_ZN4llvhplERKNS_5TwineES2_"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN4llvhplEPKcRKNS_9StringRefE: argument 0"}
!206 = distinct !{!206, !"_ZN4llvhplEPKcRKNS_9StringRefE"}
!207 = !{!208, !210}
!208 = distinct !{!208, !209, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!209 = distinct !{!209, !"_ZNK4llvh5Twine6concatERKS0_"}
!210 = distinct !{!210, !211, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!211 = distinct !{!211, !"_ZN4llvhplERKNS_5TwineES2_"}
!212 = !{!213, !213, i64 0}
!213 = !{!"p1 _ZTSN4llvh15FileCheckStringE", !14, i64 0}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN4llvhplEPKcRKNS_9StringRefE: argument 0"}
!216 = distinct !{!216, !"_ZN4llvhplEPKcRKNS_9StringRefE"}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!219 = distinct !{!219, !"_ZNK4llvh5Twine6concatERKS0_"}
!220 = distinct !{!220, !221, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!221 = distinct !{!221, !"_ZN4llvhplERKNS_5TwineES2_"}
!222 = !{!223, !225}
!223 = distinct !{!223, !224, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!224 = distinct !{!224, !"_ZNK4llvh5Twine6concatERKS0_"}
!225 = distinct !{!225, !226, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!226 = distinct !{!226, !"_ZN4llvhplERKNS_5TwineES2_"}
!227 = !{!228, !230}
!228 = distinct !{!228, !229, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!229 = distinct !{!229, !"_ZNK4llvh5Twine6concatERKS0_"}
!230 = distinct !{!230, !231, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!231 = distinct !{!231, !"_ZN4llvhplERKNS_5TwineES2_"}
!232 = !{!233, !235}
!233 = distinct !{!233, !234, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!234 = distinct !{!234, !"_ZNK4llvh5Twine6concatERKS0_"}
!235 = distinct !{!235, !236, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!236 = distinct !{!236, !"_ZN4llvhplERKNS_5TwineES2_"}
!237 = !{!238, !240}
!238 = distinct !{!238, !239, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!239 = distinct !{!239, !"_ZNK4llvh5Twine6concatERKS0_"}
!240 = distinct !{!240, !241, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!241 = distinct !{!241, !"_ZN4llvhplERKNS_5TwineES2_"}
!242 = distinct !{!242, !46}
!243 = !{!244, !213, i64 8}
!244 = !{!"_ZTSNSt12_Vector_baseIN4llvh15FileCheckStringESaIS1_EE17_Vector_impl_dataE", !213, i64 0, !213, i64 8, !213, i64 16}
!245 = !{!244, !213, i64 16}
!246 = !{!12, !13, i64 8}
!247 = !{!12, !13, i64 0}
!248 = distinct !{!248, !46}
!249 = distinct !{!249, !46}
!250 = distinct !{!250, !46}
!251 = distinct !{!251, !46}
!252 = !{!8, !15, i64 85}
!253 = !{!254, !255, i64 0}
!254 = !{!"_ZTSNSt12_Vector_baseIPKN4llvh16FileCheckPatternESaIS3_EE17_Vector_impl_dataE", !255, i64 0, !255, i64 8, !255, i64 16}
!255 = !{!"p2 _ZTSN4llvh16FileCheckPatternE", !256, i64 0}
!256 = !{!"any p2 pointer", !14, i64 0}
!257 = !{!254, !255, i64 16}
!258 = !{!259, !260, i64 8}
!259 = !{!"_ZTSNSt8__detail15_List_node_baseE", !260, i64 0, !260, i64 8}
!260 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !14, i64 0}
!261 = !{!259, !260, i64 0}
!262 = !{!263, !23, i64 16}
!263 = !{!"_ZTSNSt8__detail17_List_node_headerE", !259, i64 0, !23, i64 16}
!264 = !{!254, !255, i64 8}
!265 = !{!8, !15, i64 83}
!266 = !{!267, !23, i64 16}
!267 = !{!"_ZTSNSt7__cxx1110_List_baseIZNK4llvh15FileCheckString8CheckDagERKNS1_9SourceMgrENS1_9StringRefERSt6vectorIPKNS1_16FileCheckPatternESaISA_EERNS1_9StringMapIS6_NS1_15MallocAllocatorEEERKNS1_16FileCheckRequestEE10MatchRangeSaISL_EEE", !268, i64 0}
!268 = !{!"_ZTSNSt7__cxx1110_List_baseIZNK4llvh15FileCheckString8CheckDagERKNS1_9SourceMgrENS1_9StringRefERSt6vectorIPKNS1_16FileCheckPatternESaISA_EERNS1_9StringMapIS6_NS1_15MallocAllocatorEEERKNS1_16FileCheckRequestEE10MatchRangeSaISL_EE10_List_implE", !263, i64 0}
!269 = !{!270, !23, i64 0}
!270 = !{!"_ZTSZNK4llvh15FileCheckString8CheckDagERKNS_9SourceMgrENS_9StringRefERSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestEE10MatchRange", !23, i64 0, !23, i64 8}
!271 = !{!270, !23, i64 8}
!272 = distinct !{!272, !46}
!273 = distinct !{!273, !46}
!274 = !{!255, !255, i64 0}
!275 = distinct !{!275, !46}
!276 = distinct !{!276, !46}
!277 = !{!278, !280}
!278 = distinct !{!278, !279, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!279 = distinct !{!279, !"_ZNK4llvh5Twine6concatERKS0_"}
!280 = distinct !{!280, !281, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!281 = distinct !{!281, !"_ZN4llvhplERKNS_5TwineES2_"}
!282 = !{!49, !49, i64 0}
!283 = !{!284, !286}
!284 = distinct !{!284, !285, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!285 = distinct !{!285, !"_ZNK4llvh5Twine6concatERKS0_"}
!286 = distinct !{!286, !287, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!287 = distinct !{!287, !"_ZN4llvhplERKNS_5TwineES2_"}
!288 = !{!289, !291}
!289 = distinct !{!289, !290, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!290 = distinct !{!290, !"_ZNK4llvh5Twine6concatERKS0_"}
!291 = distinct !{!291, !292, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!292 = distinct !{!292, !"_ZN4llvhplERKNS_5TwineES2_"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZN4llvhplERKNS_9StringRefEPKc: argument 0"}
!295 = distinct !{!295, !"_ZN4llvhplERKNS_9StringRefEPKc"}
!296 = distinct !{!296, !46}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!299 = distinct !{!299, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!302 = distinct !{!302, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!305 = distinct !{!305, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!308 = distinct !{!308, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!311 = distinct !{!311, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!314 = distinct !{!314, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!315 = !{!316, !4, i64 20}
!316 = !{!"_ZTSN4llvh13StringMapImplE", !317, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!317 = !{!"p2 _ZTSN4llvh18StringMapEntryBaseE", !256, i64 0}
!318 = !{!316, !4, i64 12}
!319 = !{!316, !4, i64 8}
!320 = !{!316, !317, i64 0}
!321 = distinct !{!321, !46}
!322 = !{!12, !13, i64 16}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZNK4llvh9StringRef5splitEc: argument 0"}
!325 = distinct !{!325, !"_ZNK4llvh9StringRef5splitEc"}
!326 = !{!327, !324}
!327 = distinct !{!327, !328, !"_ZNK4llvh9StringRef5splitES0_: argument 0"}
!328 = distinct !{!328, !"_ZNK4llvh9StringRef5splitES0_"}
!329 = !{!159, !15, i64 82}
!330 = distinct !{!330, !46}
!331 = !{!332, !23, i64 0}
!332 = !{!"_ZTSN4llvh18StringMapEntryBaseE", !23, i64 0}
!333 = distinct !{!333, !46}
!334 = distinct !{!334, !46}
!335 = distinct !{!335, !46}
!336 = !{!337, !21, i64 0}
!337 = !{!"_ZTSSt4pairIKPKcjE", !21, i64 0, !4, i64 8}
!338 = !{!337, !4, i64 8}
!339 = distinct !{!339, !46}
!340 = distinct !{!340, !46}
!341 = distinct !{!341, !46}
!342 = !{!37, !39, i64 24}
!343 = !{!37, !39, i64 16}
!344 = distinct !{!344, !46}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!347 = distinct !{!347, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!350 = distinct !{!350, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!351 = !{!349, !346}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!354 = distinct !{!354, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!357 = distinct !{!357, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!360 = distinct !{!360, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!363 = distinct !{!363, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!366 = distinct !{!366, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!369 = distinct !{!369, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!372 = distinct !{!372, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!375 = distinct !{!375, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!378 = distinct !{!378, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!381 = distinct !{!381, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!384 = distinct !{!384, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!387 = distinct !{!387, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!388 = distinct !{!388, !46}
!389 = !{!316, !4, i64 16}
!390 = !{!37, !39, i64 8}
!391 = distinct !{!391, !46}
!392 = distinct !{!392, !46}
!393 = !{!394, !394, i64 0}
!394 = !{!"p1 _ZTSSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !14, i64 0}
!395 = distinct !{!395, !46}
!396 = distinct !{!396, !46}
!397 = !{!37, !38, i64 0}
!398 = distinct !{!398, !46}
!399 = !{!244, !213, i64 0}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!402 = distinct !{!402, !"_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_ZSt19__relocate_object_aIN4llvh15FileCheckStringES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!405 = !{!401, !404}
!406 = distinct !{!406, !46}
!407 = !{!408, !39, i64 0}
!408 = !{!"_ZTSNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeE", !39, i64 0, !39, i64 8, !394, i64 16}
!409 = !{!408, !39, i64 8}
!410 = !{!408, !394, i64 16}
!411 = distinct !{!411, !46}
!412 = distinct !{!412, !46}
!413 = distinct !{!413, !46}
!414 = distinct !{!414, !46}
!415 = distinct !{!415, !46}
!416 = distinct !{!416, !46}
!417 = distinct !{!417, !46}
!418 = distinct !{!418, !46}
!419 = !{!420, !5, i64 8}
!420 = !{!"_ZTSN4llvh14StringMapEntryIcEE", !332, i64 0, !5, i64 8}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!423 = distinct !{!423, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!424 = !{!425}
!425 = distinct !{!425, !423, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!426 = !{!422, !425}
!427 = distinct !{!427, !46}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!430 = distinct !{!430, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!431 = !{!432}
!432 = distinct !{!432, !430, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!433 = !{!429, !432}
end_hunk_2
