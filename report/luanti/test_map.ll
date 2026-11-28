Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_map?download=true
inline.NumInlined: 891
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev:bb.a
bb.b:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !47
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7TestMap26testForEachNodeInAreaBlankEP8IGameDef(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader205.preheader.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %class.DummyMap, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %1, i48 0, i48 -1)
  %i.f = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0)
          to label %.preheader204.lr.ph.split.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader204.lr.ph.split.split.i:                ; preds = %.preheader205.preheader.i
  %.not75.i = icmp eq ptr %i.f, null
  br i1 %.not75.i, label %.preheader.us213.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader204.lr.ph.split.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 1, ptr %i.e, align 1, !tbaa !148
  %i.i = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0, ptr noundef nonnull %i.e)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.us213.us.i.preheader:                  ; preds = %.preheader204.lr.ph.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 1, ptr %i.e, align 1, !tbaa !148
  %i.j = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0, ptr noundef nonnull %i.e)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %.preheader.us213.us.i.preheader
  %or.cond11.i.us.us.us.i = icmp eq i32 %i.j, 127
  br i1 %or.cond11.i.us.us.us.i, label %bb.a, label %.noexc.i138.i

bb.a:                                             ; preds = %.noexc18
  %i.k = load i8, ptr %i.e, align 1, !tbaa !148, !range !91, !noundef !92
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.noexc.i122.i, label %._crit_edge.i, !llvm.loop !147

.noexc19:                                         ; preds = %.preheader.i.preheader
  %or.cond11.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, %i.i
  br i1 %or.cond11.i.i, label %bb.k, label %.noexc.i138.i

.noexc.i138.i:                                    ; preds = %.noexc19, %.noexc18
  %i.m = call ptr @__cxa_allocate_exception(i64 72) #22 ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 39, ptr %i.a, align 8, !tbaa !31
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

bb.b:                                             ; preds = %.noexc.i138.i
  store ptr %i.o, ptr %2, align 8, !tbaa !20
  %i.p = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.o, ptr noundef nonnull align 1 dereferenceable(39) @.str.41, i64 39, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 5 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !29
  %i.t = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.n
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i: ; preds = %bb.b
  store ptr %i.t, ptr %i.m, align 8, !tbaa !20
  %i.y = load i64, ptr %i.n, align 8, !tbaa !21
  store i64 %i.y, ptr %i.s, align 8, !tbaa !21
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i, %bb.c
  %i.z = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i ], [ %i.v, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !30
  store ptr %i.n, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %i.q, align 8, !tbaa !30
  store i8 0, ptr %i.n, align 8, !tbaa !21
  %i.ab = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef nonnull @.str.7)
          to label %bb.d unwind label %bb.i       ; 4 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !29
  %i.ae = icmp eq ptr %i.ab, null
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #24
          to label %.noexc.i133.i unwind label %bb.i

.noexc.i133.i:                                    ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.af, ptr %i.b, align 8, !tbaa !31
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i131.i, label %._crit_edge.i.i.i130.i

.noexc.i.i131.i:                                  ; preds = %bb.f
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc6.i132.i unwind label %bb.i ; 2 uses

.noexc6.i132.i:                                   ; preds = %.noexc.i.i131.i
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !20
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !21
  br label %._crit_edge.i.i.i130.i

._crit_edge.i.i.i130.i:                           ; preds = %.noexc6.i132.i, %bb.f
  %i.aj = phi ptr [ %i.ah, %.noexc6.i132.i ], [ %i.ad, %bb.f ] ; 2 uses
  switch i64 %i.af, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.j
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i130.i
  %i.ak = load i8, ptr %i.ab, align 1, !tbaa !21
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !21
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i130.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ab, i64 %i.af, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i.i131.i, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.s
  br i1 %i.an, label %.body134.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i: ; preds = %bb.i
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !21
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %.body134.i

bb.j:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i130.i
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !30
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i32 155, ptr %i.au, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.u unwind label %.body134.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i138.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.body134.i:                                       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i
  %i.aw = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.n
  br i1 %i.ax, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i: ; preds = %.body134.i
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !21
  %5 = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %5) #21
  br label %.sink.split.i.i

.body134.thread.i:                                ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.n
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.body134.thread.i
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !21
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

bb.k:                                             ; preds = %.noexc19
  %i.be = load i8, ptr %i.e, align 1, !tbaa !148, !range !91, !noundef !92
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc.i122.i, label %._crit_edge.i, !llvm.loop !147

.noexc.i122.i:                                    ; preds = %bb.k, %bb.a
  %i.bg = call ptr @__cxa_allocate_exception(i64 72) #22 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.bh, ptr %3, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 18, ptr %i.c, align 8, !tbaa !31
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ; 2 uses

bb.l:                                             ; preds = %.noexc.i122.i
  store ptr %i.bi, ptr %3, align 8, !tbaa !20
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bi, ptr noundef nonnull align 1 dereferenceable(18) @.str.42, i64 18, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !30
  %i.bl = load ptr, ptr %3, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !29
  %i.bo = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bh
  br i1 %i.bp, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

bb.m:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !30 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %bb.l
  store ptr %i.bo, ptr %i.bg, align 8, !tbaa !20
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !21
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !21
  %.pre281.i = load i64, ptr %i.bk, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i, %bb.m
  %i.bu = phi i64 [ %.pre281.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %i.bq, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !30
  store ptr %i.bh, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %i.bk, align 8, !tbaa !30
  store i8 0, ptr %i.bh, align 8, !tbaa !21
  %i.bw = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef nonnull @.str.7)
          to label %bb.n unwind label %bb.s       ; 4 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !29
  %i.bz = icmp eq ptr %i.bw, null
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #24
          to label %.noexc.i117.i unwind label %bb.s

.noexc.i117.i:                                    ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ca = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.ca, ptr %i.d, align 8, !tbaa !31
  %i.cb = icmp ugt i64 %i.ca, 15
  br i1 %i.cb, label %.noexc.i.i115.i, label %._crit_edge.i.i.i114.i

.noexc.i.i115.i:                                  ; preds = %bb.p
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc6.i116.i unwind label %bb.s ; 2 uses

.noexc6.i116.i:                                   ; preds = %.noexc.i.i115.i
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !20
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !31
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !21
  br label %._crit_edge.i.i.i114.i

._crit_edge.i.i.i114.i:                           ; preds = %.noexc6.i116.i, %bb.p
  %i.ce = phi ptr [ %i.cc, %.noexc6.i116.i ], [ %i.by, %bb.p ] ; 2 uses
  switch i64 %i.ca, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.t
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i114.i
  %i.cf = load i8, ptr %i.bw, align 1, !tbaa !21
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !21
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge.i.i.i114.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull align 1 %i.bw, i64 %i.ca, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %.noexc.i.i115.i, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %i.bg, align 8, !tbaa !20 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bn
  br i1 %i.ci, label %.body118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.i: ; preds = %bb.s
  %i.cj = load i64, ptr %i.bn, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #21
  br label %.body118.i

bb.t:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i114.i
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !30
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  store i32 156, ptr %i.cp, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.u unwind label %.body118.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i: ; preds = %.noexc.i122.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.body118.i:                                       ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bh
  br i1 %i.cs, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i: ; preds = %.body118.i
  %i.ct = load i64, ptr %i.bh, align 8, !tbaa !21
  %6 = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %6) #21
  br label %.sink.split.i.i

.body118.thread.i:                                ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bh
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i: ; preds = %.body118.thread.i
  %i.cx = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

.sink.split.i.i:                                  ; preds = %.body118.i, %.body134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.sink.i.i = phi ptr [ %i.m, %.body134.i ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i ], [ %i.bg, %.body118.i ]
  %.pn20.pn.ph.i.i = phi { ptr, i32 } [ %i.al, %.body134.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i ], [ %i.cg, %.body118.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i: ; preds = %.body118.thread.i, %.body134.thread.i, %.sink.split.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn20.pn.i.i = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn20.pn.ph.i.i, %.sink.split.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i ], [ %i.az, %.body134.thread.i ], [ %i.cu, %.body118.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body

bb.u:                                             ; preds = %bb.t, %bb.j
  unreachable

._crit_edge.i:                                    ; preds = %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i.preheader, %.preheader.us213.us.i.preheader, %.preheader205.preheader.i
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i
  %.pn.pn = phi { ptr, i32 } [ %.pn20.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7TestMap26testForEachNodeInAreaEmptyEP8IGameDef(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.DummyMap, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %1, i48 0, i48 0)
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7TestMap7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str.37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11TestManager18registerTestModuleEP8TestBase(ptr noundef %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11TestManager14getTestModulesEv.exit, !prof !149

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #22
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11TestManager14getTestModulesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev, ptr nonnull @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #22
  br label %_ZN11TestManager14getTestModulesEv.exit

_ZN11TestManager14getTestModulesEv.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !150 ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !109
  %.not.i1 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  store ptr %0, ptr %i.e, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !150
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  %i.h = load ptr, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !110 ; 4 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.f, label %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #24
  unreachable

_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !152
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !109
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #21
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.s, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !110
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !150
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !109
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #21
  br label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN3MapC2EP8IGameDef(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) unnamed_addr #3

declare void @_ZN9MapSectorC1EP3MapN4core8vector2dIsEEP8IGameDef(ptr noundef nonnull align 8 dereferenceable(98), ptr noundef, i32, ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN9MapSector16createBlankBlockEs(ptr noundef nonnull align 8 dereferenceable(98), i16 noundef signext) local_unnamed_addr #3

end_hunk_0
