Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_simplify?download=true
inline.NumInlined: 867
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE12expand_tableEv:bb.a

bb.f:                                             ; preds = %.lr.ph37.i
  %i.as = getelementptr inbounds nuw i8, ptr %.136.i, i64 16 ; 2 uses
  %.not30.i = icmp eq ptr %i.as, %i.ak
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !156

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 213, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.c, %.lr.ph41.i
  %i.at = getelementptr inbounds nuw i8, ptr %.02839.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.ac
  br i1 %.not.i, label %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit.loopexit, label %.lr.ph41.i, !llvm.loop !157

_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit.loopexit: ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !94
  br label %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit

_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit: ; preds = %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit.loopexit, %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit
  %i.au = phi ptr [ %.pre, %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit.loopexit ], [ %i.y, %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit ] ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE12delete_tableEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.au)
  br label %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE12delete_tableEv.exit

_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE12delete_tableEv.exit: ; preds = %_ZN14core_hashtableI17default_map_entryIjN3sat7literalEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j.exit, %bb.h
  store ptr %i.f, ptr %0, align 8, !tbaa !94
  store i32 %i.c, ptr %i.a, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !86
  ret void
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

declare void @_ZN5nlsat6solver7dec_refEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5nlsat8simplify3imp8apply_fmEjR10ptr_vectorINS_6clauseEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 26 uses
  %4 = alloca %class.obj_ref, align 8             ; 25 uses
  %5 = alloca %class.vector.9, align 8            ; 16 uses
  %6 = alloca %class.vector.9, align 8            ; 15 uses
  %7 = alloca %"struct.nlsat::bound_constraint", align 8 ; 12 uses
  %8 = alloca %"struct.nlsat::bound_constraint", align 8 ; 12 uses
  %9 = alloca %"struct.nlsat::bound_constraint", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !35, !align !36 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !158
  %i.e = load ptr, ptr %2, align 8, !tbaa !15     ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6vectorIN5nlsat16bound_constraintELb1EjED2Ev.exit.thread, label %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit

_ZN6vectorIN5nlsat16bound_constraintELb1EjED2Ev.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN6vectorIN5nlsat16bound_constraintELb1EjED2Ev.exit269

_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit:     ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not398 = icmp eq i32 %i.h, 0
  br i1 %.not398, label %_ZNK6vectorIN5nlsat16bound_constraintELb1EjE5emptyEv.exit.thread, label %.lr.ph401

.lr.ph401:                                        ; preds = %_ZN6vectorIPN5nlsat6clauseELb0EjE3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph401, %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread
  %.096400 = phi ptr [ %i.e, %.lr.ph401 ], [ %i.hs, %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread ] ; 2 uses
  %.097399 = phi i1 [ true, %.lr.ph401 ], [ %.3100.ph, %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread ] ; 3 uses
  %i.s = load ptr, ptr %.096400, align 8, !tbaa !21 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 8589934592
  %.not348 = icmp eq i64 %i.v, 0
  br i1 %.not348, label %bb.c, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !60
  %.not127 = icmp eq i32 %i.x, 1
  br i1 %.not127, label %bb.d, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = trunc i32 %i.z to i1                    ; 4 uses
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !63, !nonnull !35, !align !36
  %i.ac = lshr i32 %i.z, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67 ; 4 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !69
  switch i32 %i.ah, label %bb.f [
    i32 10, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread
    i32 0, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread
  ]

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !72
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76 ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 7
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.n, %bb.j, %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit: ; preds = %bb.g
  %i.ar = invoke noundef i32 @_ZN10polynomial7manager6degreeEPKNS_10polynomialEj(ptr noundef %i.am, i32 noundef %1)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit
  %.not128 = icmp eq i32 %i.ar, 1
  br i1 %.not128, label %bb.j, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !35, !align !36
  %i.at = invoke noundef ptr @_ZN10polynomial7manager5coeffEPKNS_10polynomialEjjR7obj_refIS1_S0_E(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.am, i32 noundef %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.k unwind label %bb.h       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.noexc, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.at)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.l, %bb.k
  %i.av = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.av)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %.noexc, %bb.m
  store ptr %i.at, ptr %3, align 8, !tbaa !96
  %i.ax = invoke noundef zeroext i1 @_ZN5nlsat8simplify3imp13is_invertibleEjR7obj_refIN10polynomial10polynomialENS3_7managerEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  br i1 %i.ax, label %bb.p, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %3, align 8, !tbaa !96
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN10polynomial7manager5coeffEPKNS_10polynomialEj(ptr noundef %i.ay, i32 noundef 0)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !35, !align !36
  %i.bb = invoke noundef nonnull align 8 dereferenceable(600) ptr @_ZNK10polynomial7manager1mEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !161
  %.fr349 = freeze i32 %i.bc
  %i.bd = icmp sgt i32 %.fr349, 0                 ; 7 uses
  %i.be = load i32, ptr %i.ag, align 8, !tbaa !69
  switch i32 %i.be, label %bb.bz [
    i32 1, label %bb.u
    i32 2, label %bb.ah
    i32 0, label %bb.au
  ]

bb.s:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.t:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.u:                                             ; preds = %bb.r
  br i1 %i.aa, label %bb.cb, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !145, !noalias !164, !nonnull !35, !align !36 ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !96, !noalias !164
  %i.bj = invoke noundef ptr @_ZN10polynomial7manager3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bi)
          to label %.noexc147 unwind label %bb.ae ; 3 uses

.noexc147:                                        ; preds = %bb.v
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit, label %bb.w

bb.w:                                             ; preds = %.noexc147
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.bj)
          to label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit unwind label %bb.ae

_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit: ; preds = %.noexc147, %bb.w
  %i.bk = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i150, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bk)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #16
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.x, %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit
  store ptr %i.bj, ptr %3, align 8, !tbaa !96
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !167, !nonnull !35, !align !36 ; 2 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !96, !noalias !167
  %i.bq = invoke noundef ptr @_ZN10polynomial7manager3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp)
          to label %.noexc153 unwind label %bb.af ; 3 uses

.noexc153:                                        ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %.not.i.i.i152 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i152, label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit155, label %bb.z

bb.z:                                             ; preds = %.noexc153
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.bq)
          to label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit155 unwind label %bb.af

_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit155: ; preds = %.noexc153, %bb.z
  %i.br = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.br, null
  br i1 %.not.i.i157, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit160, label %bb.aa

bb.aa:                                            ; preds = %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit155
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.br)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit160 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #16
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit160: ; preds = %bb.aa, %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit155
  store ptr %i.bq, ptr %4, align 8, !tbaa !96
  %i.bv = load ptr, ptr %0, align 8, !tbaa !28, !nonnull !35, !align !36
  %i.bw = invoke noundef zeroext i1 @_ZNK5nlsat6solver6is_intEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i32 noundef %1)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit160
  %10 = xor i1 %i.bd, true
  br i1 %i.bw, label %bb.ad, label %bb.cb

bb.ad:                                            ; preds = %bb.ac
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !35, !align !36 ; 2 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  br i1 %i.bd, label %.invoke523, label %.invoke524

bb.ae:                                            ; preds = %bb.w, %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.af:                                            ; preds = %bb.z, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ag:                                            ; preds = %.invoke524, %.invoke523, %.invoke522.a, %.invoke, %bb.ca, %bb.bz, %bb.ar, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit160
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ah:                                            ; preds = %bb.r
  br i1 %i.aa, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !145, !noalias !170, !nonnull !35, !align !36 ; 2 uses
  %i.ce = load ptr, ptr %3, align 8, !tbaa !96, !noalias !170
  %i.cf = invoke noundef ptr @_ZN10polynomial7manager3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce)
          to label %.noexc162 unwind label %bb.ap ; 3 uses

.noexc162:                                        ; preds = %bb.ai
  %.not.i.i.i161 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i161, label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit164, label %bb.aj

bb.aj:                                            ; preds = %.noexc162
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull %i.cf)
          to label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit164 unwind label %bb.ap

_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit164: ; preds = %.noexc162, %bb.aj
  %i.cg = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i166, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit169, label %bb.ak

bb.ak:                                            ; preds = %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit164
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.cg)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit169 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #16
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit169: ; preds = %bb.ak, %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit164
  store ptr %i.cf, ptr %3, align 8, !tbaa !96
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !173, !nonnull !35, !align !36 ; 2 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !96, !noalias !173
  %i.cm = invoke noundef ptr @_ZN10polynomial7manager3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %i.cl)
          to label %.noexc171 unwind label %bb.aq ; 3 uses

.noexc171:                                        ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit169
  %.not.i.i.i170 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i170, label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit173, label %bb.am

bb.am:                                            ; preds = %.noexc171
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull %i.cm)
          to label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit173 unwind label %bb.aq

_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit173: ; preds = %.noexc171, %bb.am
  %i.cn = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %.not.i.i175 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i175, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit178, label %bb.an

bb.an:                                            ; preds = %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit173
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit178 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #16
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit178: ; preds = %bb.an, %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit173
  store ptr %i.cm, ptr %4, align 8, !tbaa !96
  br i1 %i.bd, label %.thread325, label %.thread

bb.ap:                                            ; preds = %bb.aj, %bb.ai
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.aq:                                            ; preds = %bb.am, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit169
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ar:                                            ; preds = %bb.ah
  %i.ct = load ptr, ptr %0, align 8, !tbaa !28, !nonnull !35, !align !36
  %i.cu = invoke noundef zeroext i1 @_ZNK5nlsat6solver6is_intEj(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i32 noundef %1)
          to label %bb.as unwind label %bb.ag

bb.as:                                            ; preds = %bb.ar
  br i1 %i.cu, label %bb.at, label %bb.cb

bb.at:                                            ; preds = %bb.as
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !35, !align !36 ; 2 uses
  %i.cw = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  br i1 %i.bd, label %.invoke524, label %.invoke523

.invoke524:                                       ; preds = %bb.ad, %bb.at
  %i.cy = phi ptr [ %i.cv, %bb.at ], [ %i.bx, %bb.ad ]
  %i.cz = phi ptr [ %i.cw, %bb.at ], [ %i.by, %bb.ad ]
  %i.da = phi ptr [ %i.cx, %bb.at ], [ %i.bz, %bb.ad ]
  %i.db = invoke noundef ptr @_ZN10polynomial7manager3subEPKNS_10polynomialES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz, ptr noundef %i.da)
          to label %.invoke522.a unwind label %bb.ag

.invoke522.a:                                     ; preds = %.invoke524
  %i.dc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.db)
          to label %.thread unwind label %bb.ag   ; 0 uses

.invoke523:                                       ; preds = %bb.at, %bb.ad
  %i.dd = phi ptr [ %i.bx, %bb.ad ], [ %i.cv, %bb.at ]
  %i.de = phi ptr [ %i.by, %bb.ad ], [ %i.cw, %bb.at ]
  %i.df = phi ptr [ %i.bz, %bb.ad ], [ %i.cx, %bb.at ]
  %i.dg = invoke noundef ptr @_ZN10polynomial7manager3addEPKNS_10polynomialES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.de, ptr noundef %i.df)
          to label %.invoke unwind label %bb.ag

.invoke:                                          ; preds = %.invoke523
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.dg)
          to label %.thread325 unwind label %bb.ag ; 0 uses

bb.au:                                            ; preds = %bb.r
  br i1 %i.aa, label %_ZN5nlsat8simplify3imp14is_single_polyERKNS_9ineq_atomERPN10polynomial10polynomialE.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i32 %1, ptr %7, align 8, !tbaa !143
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dj = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36 ; 2 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !23
  %.not.i.i.i179 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i179, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.dj)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i unwind label %bb.bt

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i: ; preds = %bb.aw, %bb.av
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !96    ; 3 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !96
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !145, !nonnull !35, !align !36 ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !23
  %.not.i.i7.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i7.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull %i.dn)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.di) #15
  br label %.body

bb.az:                                            ; preds = %bb.ax, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.dr, align 8, !tbaa !146
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.s, ptr %i.ds, align 8, !tbaa !147
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !145, !noalias !176, !nonnull !35, !align !36 ; 2 uses
  %i.du = load ptr, ptr %3, align 8, !tbaa !96, !noalias !176
  %i.dv = invoke noundef ptr @_ZN10polynomial7manager3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du)
          to label %.noexc182 unwind label %bb.bu ; 3 uses

.noexc182:                                        ; preds = %bb.az
  %.not.i.i.i181 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i181, label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit184, label %bb.ba

bb.ba:                                            ; preds = %.noexc182
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull %i.dv)
          to label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit184 unwind label %bb.bu

_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit184: ; preds = %.noexc182, %bb.ba
  %i.dw = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i186, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit189, label %bb.bb

bb.bb:                                            ; preds = %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit184
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull %i.dw)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit189 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #16
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit189: ; preds = %bb.bb, %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit184
  store ptr %i.dv, ptr %3, align 8, !tbaa !96
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !179, !nonnull !35, !align !36 ; 2 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !96, !noalias !179
  %i.ec = invoke noundef ptr @_ZN10polynomial7manager3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %.noexc191 unwind label %bb.bv ; 4 uses

.noexc191:                                        ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit189
  %.not.i.i.i190 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i190, label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit193, label %bb.bd

bb.bd:                                            ; preds = %.noexc191
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull %i.ec)
          to label %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit193 unwind label %bb.bv

_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit193: ; preds = %.noexc191, %bb.bd
  %i.ed = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i195, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit198, label %bb.be

bb.be:                                            ; preds = %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit193
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !145, !nonnull !35, !align !36
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull %i.ed)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit198 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #16
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit198: ; preds = %bb.be, %_ZngRK7obj_refIN10polynomial10polynomialENS0_7managerEE.exit193
  store ptr %i.ec, ptr %4, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 %1, ptr %8, align 8, !tbaa !143
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !96
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !145, !nonnull !35, !align !36 ; 2 uses
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !23
  %.not.i.i.i199 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i199, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200, label %bb.bg

bb.bg:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit198
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull %i.ei)
          to label %._ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200_crit_edge unwind label %bb.bw

._ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200_crit_edge: ; preds = %bb.bg
  %.pre = load ptr, ptr %4, align 8, !tbaa !96
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200: ; preds = %._ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200_crit_edge, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit198
  %i.el = phi ptr [ %.pre, %._ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200_crit_edge ], [ %i.ec, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit198 ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !145, !nonnull !35, !align !36 ; 2 uses
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !23
  %.not.i.i7.i201 = icmp eq ptr %i.el, null
  br i1 %.not.i.i7.i201, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull %i.el)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.eh) #15
  br label %.body203

bb.bj:                                            ; preds = %bb.bh, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i200
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.eq, align 8, !tbaa !146
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.s, ptr %i.er, align 8, !tbaa !147
  invoke void @_ZN5nlsat8simplify3imp17apply_fm_equalityEjR10ptr_vectorINS_6clauseEERNS_16bound_constraintES7_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
end_hunk_0
