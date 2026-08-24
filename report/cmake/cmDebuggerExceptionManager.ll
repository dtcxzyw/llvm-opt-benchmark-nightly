Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDebuggerExceptionManager?download=true
inline.NumInlined: 1009
inline.NumDeleted: 549
begin_hunk_0_@_ZN3dap16ExceptionDetailsC2EOS0_
define linkonce_odr dso_local void @_ZN3dap16ExceptionDetailsC2EOS0_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !54
  %i.i = load i64, ptr %i.c, align 8, !tbaa !51
  store i64 %i.i, ptr %i.a, align 8, !tbaa !51
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  store ptr %i.c, ptr %1, align 8, !tbaa !54
  store i64 0, ptr %i.j, align 8, !tbaa !49
  store i8 0, ptr %i.c, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !65, !range !57, !noundef !58
  store i8 %i.o, ptr %i.m, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !46
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.c:                                             ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49   ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit
  store ptr %i.s, ptr %i.p, align 8, !tbaa !54
  %i.z = load i64, ptr %i.t, align 8, !tbaa !51
  store i64 %i.z, ptr %i.r, align 8, !tbaa !51
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit8

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.t, ptr %i.q, align 8, !tbaa !54
  store i64 0, ptr %i.aa, align 8, !tbaa !49
  store i8 0, ptr %i.t, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !65, !range !57, !noundef !58
  store i8 %i.af, ptr %i.ad, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !162
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !162
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !140
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !163, !range !57, !noundef !58
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !163
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !46
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.d:                                             ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit8
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !54
  %i.az = load i64, ptr %i.at, align 8, !tbaa !51
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !51
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !49
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !54
  store i64 0, ptr %i.ba, align 8, !tbaa !49
  store i8 0, ptr %i.at, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !65, !range !57, !noundef !58
  store i8 %i.bf, ptr %i.bd, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !46
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.e:                                             ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false)
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !54
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !51
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !51
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit12

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !54
  store i64 0, ptr %i.br, align 8, !tbaa !49
  store i8 0, ptr %i.bk, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !65, !range !57, !noundef !58
  store i8 %i.bw, ptr %i.bu, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !46
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !54 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

bb.f:                                             ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit12
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !49 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 16
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit12
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !54
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !51
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !51
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit14

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !49
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !54
  store i64 0, ptr %i.ci, align 8, !tbaa !49
  store i8 0, ptr %i.cb, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !65, !range !57, !noundef !58
  store i8 %i.cn, ptr %i.cl, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<MessageType, std::pair<const MessageType, cmDebugger::cmDebuggerExceptionFilter>, std::allocator<std::pair<const MessageType, cmDebugger::cmDebuggerExceptionFilter>>, std::__detail::_Select1st, std::equal_to<MessageType>, cmDebugger::cmDebuggerExceptionManager::MessageTypeHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !52     ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !165
  %i.m = icmp eq i64 %i.l, %i.b
  %i.n = load i32, ptr %i.j, align 8
  %i.o = icmp eq i32 %i.a, %i.n
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.r = icmp eq i64 %i.x, %i.b
  %i.s = load i32, ptr %i.q, align 8
  %i.t = icmp eq i32 %i.a, %i.s
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %.loopexit28, label %.lr.ph.i.i, !llvm.loop !167

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.v, %bb.c ], [ %i.i, %bb.b ]
  %i.v = load ptr, ptr %.020.i.i, align 8, !tbaa !60 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !165  ; 2 uses
  %i.y = urem i64 %i.x, %i.d
  %.not19.i.i = icmp eq i64 %i.y, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !167

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !167

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %0, ptr %2, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21 ; 9 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.a, ptr %i.ab, align 8, !tbaa !172
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !46
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !175
  %i.ah = invoke ptr @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.e, i64 noundef %i.b, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit28

bb.e:                                             ; preds = %.loopexit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.ai

.loopexit28:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ah, %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.v, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !177
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #17 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !176
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #18
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !36
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %2, ptr %i.t, align 8, !tbaa !165
  %i.u = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !164  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  store ptr %i.x, ptr %3, align 8, !tbaa !60
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !164
  store ptr %3, ptr %i.y, align 8, !tbaa !60
  br label %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !108
  store ptr %i.aa, ptr %3, align 8, !tbaa !60
  store ptr %3, ptr %i.z, align 8, !tbaa !108
  %i.ab = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !164
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !164
  br label %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !177
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !177
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !51
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterEELb1EEEEE18_M_deallocate_nodeEPS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !51
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #19
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterEELb1EEEEE18_M_deallocate_nodeEPS8_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterEELb1EEEEE18_M_deallocate_nodeEPS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #19
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterEELb1EEEEE18_M_deallocate_nodeEPS8_.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !178
  br label %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !56
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EEaSERKS3_:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i45, i64 152
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !55
  store i8 %i.eb, ptr %i.dz, align 8, !tbaa !55
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i45, i64 153
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !78, !range !57, !noundef !58
  %i.ee = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i44, i64 153
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !78
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i45, i64 160
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i44, i64 160
  %i.eh = add nsw i64 %.012.i.i.i.i.i43, -1
  %i.ei = icmp samesign ugt i64 %.012.i.i.i.i.i43, 1
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i42, label %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !195

_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i42
  %.pre50 = load ptr, ptr %1, align 8, !tbaa !89
  %.pre51 = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %.pre52 = load ptr, ptr %0, align 8, !tbaa !89
  %.pre53 = load ptr, ptr %i.a, align 8, !tbaa !80
  %.pre54 = ptrtoint ptr %.pre51 to i64
  %.pre55 = ptrtoint ptr %.pre52 to i64
  %.pre57 = sub i64 %.pre54, %.pre55
  br label %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit, %bb.g
  %.pre-phi58 = phi i64 [ %.pre57, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.az, %bb.g ]
  %i.ej = phi ptr [ %.pre53, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.b, %bb.g ] ; 2 uses
  %i.ek = phi ptr [ %.pre51, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.ax, %bb.g ] ; 2 uses
  %i.el = phi ptr [ %.pre50, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.pre-phi58 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.em, %i.ej
  br i1 %.not14.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.eo, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ek, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.en, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.em, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit ] ; 2 uses
  invoke void @_ZN3dap26ExceptionBreakpointsFilterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(154) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(154) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.h

_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 160 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 160
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.ej
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !196

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  %i.er = tail call ptr @__cxa_begin_catch(ptr %i.eq) #17 ; 0 uses
  invoke void @_ZSt8_DestroyIPN3dap26ExceptionBreakpointsFilterEEvT_S3_(ptr noundef %i.ek, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #20
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.es

bb.l:                                             ; preds = %bb.j
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  tail call void @__clang_call_terminate(ptr %i.eu) #18
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN3dap26ExceptionBreakpointsFilterEEvPT_.exit.i.i34, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN3dap26ExceptionBreakpointsFilterES2_ET0_T_S4_S3_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ev = load ptr, ptr %0, align 8, !tbaa !89
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.f
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 57646075230342348
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN3dap26ExceptionBreakpointsFilterEE8allocateEmPKv.exit.i, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 115292150460684697
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt15__new_allocatorIN3dap26ExceptionBreakpointsFilterEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 160
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
  br label %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN3dap26ExceptionBreakpointsFilterEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN3dap26ExceptionBreakpointsFilterEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN3dap26ExceptionBreakpointsFilterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(154) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(154) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 160 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 160
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !197

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #17 ; 0 uses
  invoke void @_ZSt8_DestroyIPN3dap26ExceptionBreakpointsFilterEEvT_S3_(ptr noundef %i.e, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #20
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN3dap26ExceptionBreakpointsFilterESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN3dap26ExceptionBreakpointsFilterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #17 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = mul i64 %1, 160
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #20
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #18
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN3dap26ExceptionBreakpointsFilterESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<MessageType, std::pair<const MessageType, cmDebugger::cmDebuggerExceptionFilter>, std::allocator<std::pair<const MessageType, cmDebugger::cmDebuggerExceptionFilter>>, std::__detail::_Select1st, std::equal_to<MessageType>, cmDebugger::cmDebuggerExceptionManager::MessageTypeHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !52     ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !165
  %i.m = icmp eq i64 %i.l, %i.b
  %i.n = load i32, ptr %i.j, align 8
  %i.o = icmp eq i32 %i.a, %i.n
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.r = icmp eq i64 %i.x, %i.b
  %i.s = load i32, ptr %i.q, align 8
  %i.t = icmp eq i32 %i.a, %i.s
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %.loopexit28, label %.lr.ph.i.i, !llvm.loop !167

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.v, %bb.c ], [ %i.i, %bb.b ]
  %i.v = load ptr, ptr %.020.i.i, align 8, !tbaa !60 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !165  ; 2 uses
  %i.y = urem i64 %i.x, %i.d
  %.not19.i.i = icmp eq i64 %i.y, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !167

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !167

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %0, ptr %2, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21 ; 9 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.a, ptr %i.ab, align 8, !tbaa !172
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !46
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !175
  %i.ah = invoke ptr @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.e, i64 noundef %i.b, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit28

bb.e:                                             ; preds = %.loopexit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.ai

.loopexit28:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ah, %_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.v, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger19cmDebuggerExceptionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !56

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !51
  store i8 %i.j, ptr %i.a, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %0, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !51
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49
  store i64 %i.q, ptr %i.o, align 8, !tbaa !49
  %i.r = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.r, ptr %i.b, align 8, !tbaa !51
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !51
  store ptr %i.d, ptr %0, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !49
  %i.w = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.w, ptr %i.b, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.a, ptr %1, align 8, !tbaa !54
  store i64 %i.s, ptr %i.e, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %1, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !49
  store i8 0, ptr %i.x, align 1, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !54  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %.thread.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !49 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %.not21.i6 = icmp eq ptr %1, %0
  br i1 %.not21.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11, label %bb.i, !prof !56

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ai, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !51
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7: ; preds = %bb.k, %bb.j, %bb.i
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.al, ptr %i.am, align 8, !tbaa !49
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !51
  %.pre.i8 = load ptr, ptr %i.aa, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

.thread.i10:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !49
  %i.as = load i64, ptr %i.af, align 8, !tbaa !51
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !51
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !51
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !49
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !51
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !51
  %.not.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !54
  store i64 %i.at, ptr %i.af, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4, %.thread.i10
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7, %bb.l, %bb.m
  %i.ay = phi ptr [ %.pre.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7 ], [ %i.ab, %bb.l ], [ %i.af, %bb.m ], [ %i.ae, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.az, align 8, !tbaa !49
end_hunk_1
