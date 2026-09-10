Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/rollback?download=true
inline.NumInlined: 1556
inline.NumDeleted: 599
begin_hunk_0_@_ZN15RollbackManager27actionRowFromRollbackActionERK14RollbackAction:bb.a
  store i32 0, ptr %i.aa, align 8, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.ad, align 8, !tbaa !52
  store i8 0, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %i.ag, align 8, !tbaa !52
  store i8 0, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = invoke noundef i32 @_ZN15RollbackManager10getActorIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !143
  %i.ak = load i64, ptr %2, align 8, !tbaa !181
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.an = load i8, ptr %i.am, align 1, !tbaa !182 ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !145
  %i.aq = icmp eq i8 %i.an, 2
  br i1 %i.aq, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 192
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 224
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23 unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.au = load i32, ptr %i.at, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.au, ptr %i.av, align 8, !tbaa !146
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !184, !range !185, !noundef !68
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !147
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(300) %i.g, ptr noundef nonnull align 8 dereferenceable(296) %i.ba)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bc = load i32, ptr %i.bb, align 8
  store i32 %i.bc, ptr %i.j, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !167, !range !185, !noundef !68
  store i8 %i.be, ptr %i.r, align 8, !tbaa !167
  %i.bf = icmp eq ptr %i.ba, %i.g
  br i1 %i.bf, label %_ZN9ItemStackaSERKS_.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 320
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.bg)
          to label %_ZN9ItemStackaSERKS_.exit.i unwind label %bb.f

_ZN9ItemStackaSERKS_.exit.i:                      ; preds = %bb.d, %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 376
  invoke void @_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, ptr noundef nonnull align 8 dereferenceable(120) %i.bi)
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %_ZN9ItemStackaSERKS_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 496
  invoke void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %i.bk)
          to label %_ZN12ItemStackRowaSERK9ItemStack.exit unwind label %bb.f

_ZN12ItemStackRowaSERK9ItemStack.exit:            ; preds = %.noexc25
  %i.bl = invoke noundef i32 @_ZN15RollbackManager9getNodeIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN12ItemStackRowaSERK9ItemStack.exit
  store i32 %i.bl, ptr %i.aa, align 8, !tbaa !148
  br label %bb.j

bb.f:                                             ; preds = %bb.i, %bb.h, %.noexc25, %_ZN9ItemStackaSERKS_.exit.i, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28, %bb.g, %_ZN12ItemStackRowaSERK9ItemStack.exit, %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9ActionRowD2Ev(ptr noundef nonnull align 8 dead_on_return(516) dereferenceable(516) %0) #27
  resume { ptr, i32 } %i.bm

bb.g:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !320
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !150
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !321
  %i.bt = sext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !151
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !322
  %i.bx = sext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !152
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ca = invoke noundef i32 @_ZN15RollbackManager9getNodeIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ce = load <2 x i32>, ptr %i.cc, align 8, !tbaa !186
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !186
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28 unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28: ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ch = invoke noundef i32 @_ZN15RollbackManager9getNodeIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !156
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.cl = load <2 x i32>, ptr %i.cj, align 8, !tbaa !186
  store <2 x i32> %i.cl, ptr %i.ck, align 4, !tbaa !186
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30 unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30: ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !187, !range !185, !noundef !68
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !159
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15RollbackManager29rollbackActionsFromActionRowsERKNSt7__cxx114listI9ActionRowSaIS2_EEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::list.42") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.RollbackAction, align 8     ; 56 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !162
  store ptr %0, ptr %0, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !165
  %.sroa.060.068 = load ptr, ptr %2, align 8, !tbaa !163 ; 2 uses
  %.not6369 = icmp eq ptr %.sroa.060.068, %2
  br i1 %.not6369, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 298
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 3 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -80
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 328
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 552
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 46
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 496
  br label %bb.b

._crit_edge:                                      ; preds = %bb.q, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.060.070 = phi ptr [ %.sroa.060.068, %.lr.ph ], [ %.sroa.060.0, %bb.q ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !181
  store ptr %i.d, ptr %i.c, align 8, !tbaa !51
  store i64 0, ptr %i.e, align 8, !tbaa !52
  store i8 0, ptr %i.d, align 8, !tbaa !53
  store i64 0, ptr %i.f, align 8
  store ptr %i.h, ptr %i.g, align 8, !tbaa !51
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  store i32 0, ptr %i.j, align 8, !tbaa !188
  store i32 0, ptr %i.k, align 4, !tbaa !189
  store ptr %i.m, ptr %i.l, align 8, !tbaa !51
  store i64 0, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.m, align 8, !tbaa !53
  store ptr %i.p, ptr %i.o, align 8, !tbaa !51
  store i64 0, ptr %i.q, align 8, !tbaa !52
  store i8 0, ptr %i.p, align 8, !tbaa !53
  store i32 0, ptr %i.r, align 8, !tbaa !188
  store i32 0, ptr %i.s, align 4, !tbaa !189
  store ptr %i.u, ptr %i.t, align 8, !tbaa !51
  store i64 0, ptr %i.v, align 8, !tbaa !52
  store i8 0, ptr %i.u, align 8, !tbaa !53
  store ptr %i.x, ptr %i.w, align 8, !tbaa !51
  store i64 0, ptr %i.y, align 8, !tbaa !52
  store i8 0, ptr %i.x, align 8, !tbaa !53
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !51
  store i64 0, ptr %i.ab, align 8, !tbaa !52
  store i8 0, ptr %i.aa, align 8, !tbaa !53
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !51
  store i64 0, ptr %i.ae, align 8, !tbaa !52
  store i8 0, ptr %i.ad, align 8, !tbaa !53
  store i16 0, ptr %i.af, align 8, !tbaa !149
  store i16 0, ptr %i.ag, align 2, !tbaa !166
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !21
  %i.be = load i64, ptr %i.ak, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.ah, i64 %i.be
  store ptr %i.aj, ptr %i.bf, align 8, !tbaa !21
  store i8 0, ptr %i.al, align 8, !tbaa !167
  store ptr %i.an, ptr %i.am, align 8, !tbaa !168
  store i64 1, ptr %i.ao, align 8, !tbaa !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.ah, align 8, !tbaa !21
  store i8 0, ptr %i.as, align 8, !tbaa !171
  store i8 0, ptr %i.at, align 8, !tbaa !172
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !143 ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %_ZN15RollbackManager12getActorNameEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !117 ; 2 uses
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !117 ; 2 uses
  %.not11.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not11.i, label %_ZN15RollbackManager12getActorNameEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.04.012.i = phi ptr [ %i.bm, %bb.d ], [ %i.bi, %bb.c ] ; 3 uses
  %i.bk = load i32, ptr %.sroa.04.012.i, align 8, !tbaa !116
  %i.bl = icmp eq i32 %i.bk, %i.bh
  br i1 %i.bl, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.bj
  br i1 %.not.i, label %_ZN15RollbackManager12getActorNameEi.exit, label %.lr.ph.i, !llvm.loop !4

bb.e:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !79
  br label %_ZN15RollbackManager12getActorNameEi.exit

_ZN15RollbackManager12getActorNameEi.exit:        ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.bp = phi ptr [ @.str.21, %bb.b ], [ %i.bo, %bb.e ], [ @.str.21, %bb.c ], [ @.str.21, %bb.d ] ; 2 uses
  %i.bq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #27
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.bp, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN15RollbackManager12getActorNameEi.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !144
  store i64 %i.bt, ptr %3, align 8, !tbaa !181
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !145
  %i.bw = trunc i32 %i.bv to i8                   ; 2 uses
  store i8 %i.bw, ptr %i.aw, align 1, !tbaa !182
  switch i8 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit39 [
    i8 2, label %bb.g
    i8 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55, %_ZN15RollbackManager11getNodeNameEi.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit46, %_ZN15RollbackManager11getNodeNameEi.exit44, %_ZN15RollbackManager11getNodeNameEi.exit, %.noexc32, %_ZN17ItemStackMetadataaSERKS_.exit.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.g, %_ZN15RollbackManager12getActorNameEi.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt10_List_nodeI14RollbackActionEEED2Ev.exit9.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.f ], [ %i.er, %_ZNSt15__allocated_ptrISaISt10_List_nodeI14RollbackActionEEED2Ev.exit9.i.i.i ]
  call void @_ZN14RollbackActionD2Ev(ptr noundef nonnull align 8 dead_on_return(560) dereferenceable(560) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1110_List_baseI14RollbackActionSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30 unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 104
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !146
  store i32 %i.cb, ptr %i.ba, align 8, !tbaa !183
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !147
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i8
  store i8 %i.cf, ptr %i.bb, align 4, !tbaa !184
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 112 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(296) %i.ac, ptr noundef nonnull align 8 dereferenceable(296) %i.cg)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit30
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 144
  %i.ci = load i32, ptr %i.ch, align 8
  store i32 %i.ci, ptr %i.af, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 160
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !167, !range !185, !noundef !68
  store i8 %i.ck, ptr %i.al, align 8, !tbaa !167
  %i.cl = icmp eq ptr %i.cg, %i.ac
  br i1 %i.cl, label %_ZN17ItemStackMetadataaSERKS_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 168
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.cm)
          to label %_ZN17ItemStackMetadataaSERKS_.exit.i unwind label %bb.f

_ZN17ItemStackMetadataaSERKS_.exit.i:             ; preds = %bb.h, %.noexc
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 224
  invoke void @_ZNSt22_Optional_payload_baseI16ToolCapabilitiesE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %i.bc, ptr noundef nonnull align 8 dereferenceable(120) %i.cn)
          to label %.noexc32 unwind label %bb.f

.noexc32:                                         ; preds = %_ZN17ItemStackMetadataaSERKS_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 344
  invoke void @_ZNSt22_Optional_payload_baseI13WearBarParamsE14_M_copy_assignERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.co)
          to label %_ZN9ItemStackaSERKS_.exit unwind label %bb.f

_ZN9ItemStackaSERKS_.exit:                        ; preds = %.noexc32
  %i.cp = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit39

bb.i:                                             ; preds = %_ZN9ItemStackaSERKS_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 408
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !148
  %i.ct = load ptr, ptr %i.ay, align 8, !tbaa !117 ; 2 uses
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !117 ; 2 uses
  %.not11.i34 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not11.i34, label %_ZN15RollbackManager11getNodeNameEi.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.i, %bb.j
  %.sroa.04.012.i36 = phi ptr [ %i.cx, %bb.j ], [ %i.ct, %bb.i ] ; 3 uses
  %i.cv = load i32, ptr %.sroa.04.012.i36, align 8, !tbaa !116
  %i.cw = icmp eq i32 %i.cv, %i.cs
  br i1 %i.cw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i35
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i36, i64 40 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cx, %i.cu
  br i1 %.not.i37, label %_ZN15RollbackManager11getNodeNameEi.exit, label %.lr.ph.i35, !llvm.loop !5

bb.k:                                             ; preds = %.lr.ph.i35
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i36, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !79
  br label %_ZN15RollbackManager11getNodeNameEi.exit

_ZN15RollbackManager11getNodeNameEi.exit:         ; preds = %bb.j, %bb.i, %bb.k
  %i.da = phi ptr [ %i.cz, %bb.k ], [ @.str.21, %bb.i ], [ @.str.21, %bb.j ] ; 2 uses
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #27
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.da, i64 noundef %i.db)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit39 unwind label %bb.f ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 420
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 428
  %i.df = load i32, ptr %i.de, align 4, !tbaa !152
  %i.dg = trunc i32 %i.df to i16
  %i.dh = load <2 x i32>, ptr %i.dd, align 4, !tbaa !186
  %i.di = trunc <2 x i32> %i.dh to <2 x i16>
  store <2 x i16> %i.di, ptr %i.ax, align 2, !tbaa !323
  store i16 %i.dg, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !323
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 432
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !153
  %i.dl = load ptr, ptr %i.ay, align 8, !tbaa !117 ; 2 uses
  %i.dm = load ptr, ptr %i.az, align 8, !tbaa !117 ; 2 uses
  %.not11.i40 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not11.i40, label %_ZN15RollbackManager11getNodeNameEi.exit44, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.l, %bb.m
  %.sroa.04.012.i42 = phi ptr [ %i.dp, %bb.m ], [ %i.dl, %bb.l ] ; 3 uses
  %i.dn = load i32, ptr %.sroa.04.012.i42, align 8, !tbaa !116
  %i.do = icmp eq i32 %i.dn, %i.dk
  br i1 %i.do, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i41
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i42, i64 40 ; 2 uses
  %.not.i43 = icmp eq ptr %i.dp, %i.dm
  br i1 %.not.i43, label %_ZN15RollbackManager11getNodeNameEi.exit44, label %.lr.ph.i41, !llvm.loop !5

bb.n:                                             ; preds = %.lr.ph.i41
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i42, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !79
  br label %_ZN15RollbackManager11getNodeNameEi.exit44

_ZN15RollbackManager11getNodeNameEi.exit44:       ; preds = %bb.m, %bb.l, %bb.n
  %i.ds = phi ptr [ %i.dr, %bb.n ], [ @.str.21, %bb.l ], [ @.str.21, %bb.m ] ; 2 uses
  %i.dt = load i64, ptr %i.i, align 8, !tbaa !52
  %i.du = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #27
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 0, i64 noundef %i.dt, ptr noundef nonnull %i.ds, i64 noundef %i.du)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit46 unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit46: ; preds = %_ZN15RollbackManager11getNodeNameEi.exit44
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 436
  %i.dx = load <2 x i32>, ptr %i.dw, align 4, !tbaa !186
  store <2 x i32> %i.dx, ptr %i.j, align 8, !tbaa !186
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.060.070, i64 448
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit48 unwind label %bb.f

end_hunk_0
