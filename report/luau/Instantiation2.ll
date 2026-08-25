Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Instantiation2?download=true
inline.NumInlined: 713
inline.NumDeleted: 443
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEE:bb.a
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i161, %._crit_edge.i160
  %i.bo = phi ptr [ %i.bf, %._crit_edge.i160 ], [ %i.bn, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i161 ]
  store ptr %i.aw, ptr %i.bo, align 8, !tbaa !47
  br label %bb.r

bb.r:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i, %bb.o
  %i.bp = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %.sroa.11.0320
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %bb.o, !llvm.loop !205

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i: ; preds = %bb.k, %._crit_edge28.i, %bb.n, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit
  %.sroa.11.2 = phi i64 [ %.sroa.11.0320, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit ], [ %spec.select.i, %._crit_edge28.i ], [ %spec.select.i, %bb.n ], [ %.sroa.11.0320, %bb.k ] ; 3 uses
  %.sroa.0211.2 = phi ptr [ %.sroa.0211.0323, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit ], [ %.sroa.0.0.i, %._crit_edge28.i ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0211.0323, %bb.k ] ; 5 uses
  %i.bq = add i64 %.sroa.11.2, -1                 ; 3 uses
  %i.br = ptrtoint ptr %i.z to i64
  %i.bs = mul i64 %i.br, -4658895280553007687     ; 2 uses
  %i.bt = lshr i64 %i.bs, 31
  %i.bu = xor i64 %i.bt, %i.bs
  %.02136.i6.i = and i64 %i.bq, %i.bu             ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0211.2, i64 %.02136.i6.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.s, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i
  %.02136.i.lcssa5.i = phi i64 [ %.02136.i6.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ], [ %.02136.i.i, %bb.s ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0211.2, i64 %.02136.i.lcssa5.i
  store ptr %i.z, ptr %i.by, align 8, !tbaa !47
  %i.bz = add i64 %.sroa.17.0322, 1
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, %bb.s
  %i.ca = phi ptr [ %i.cf, %bb.s ], [ %i.bw, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %.02136.i8.i = phi i64 [ %.02136.i.i, %bb.s ], [ %.02136.i6.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %.02035.i7.i = phi i64 [ %i.cc, %bb.s ], [ 0, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %i.cb = icmp eq ptr %i.ca, %i.z
  br i1 %i.cb, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.cc = add i64 %.02035.i7.i, 1                 ; 3 uses
  %i.cd = add i64 %i.cc, %.02136.i8.i
  %.not.i3.i = icmp ule i64 %i.cc, %i.bq
  tail call void @llvm.assume(i1 %.not.i3.i)
  %.02136.i.i = and i64 %i.cd, %i.bq              ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0211.2, i64 %.02136.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i, %bb.f
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit149

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit: ; preds = %.lr.ph.i, %bb.g, %bb.h, %._crit_edge.i
  %.sroa.11.1 = phi i64 [ %.sroa.11.2, %._crit_edge.i ], [ %.sroa.11.0320, %bb.g ], [ %.sroa.11.0320, %bb.h ], [ %.sroa.11.2, %.lr.ph.i ] ; 2 uses
  %.sroa.17.1 = phi i64 [ %i.bz, %._crit_edge.i ], [ %.sroa.17.0322, %bb.g ], [ %.sroa.17.0322, %bb.h ], [ %.sroa.17.0322, %.lr.ph.i ] ; 2 uses
  %.sroa.0211.1 = phi ptr [ %.sroa.0211.2, %._crit_edge.i ], [ %.sroa.0211.0323, %bb.g ], [ %.sroa.0211.0323, %bb.h ], [ %.sroa.0211.2, %.lr.ph.i ] ; 2 uses
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.cj = add i64 %.sroa.7207.0324, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cj) ; 3 uses
  %i.ck = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not538 = icmp eq i64 %.sroa.7207.0324, %i.ck
  br i1 %exitcond.not538, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph539.preheader

.lr.ph539.preheader:                              ; preds = %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  %i.cl = load ptr, ptr %1, align 8, !tbaa !49
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !47
  br label %.lr.ph539

bb.u:                                             ; preds = %.lr.ph539
  %exitcond.not = icmp eq i64 %i.co, %i.ck
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, label %.lr.ph539, !llvm.loop !106

.lr.ph539:                                        ; preds = %.lr.ph539.preheader, %bb.u
  %i.cn = phi i64 [ %i.co, %bb.u ], [ %.sroa.7207.0324, %.lr.ph539.preheader ]
  %i.co = add i64 %i.cn, 1                        ; 4 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = icmp eq ptr %i.cq, %i.cm
  br i1 %i.cr, label %bb.u, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge540, !llvm.loop !106

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge540: ; preds = %.lr.ph539
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, !llvm.loop !106

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit: ; preds = %bb.u, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge540, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  %.lcssa.i = phi i64 [ %umax.i, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ], [ %i.co, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit_crit_edge540 ], [ %umax.i, %bb.u ] ; 2 uses
  %.not = icmp eq i64 %.lcssa.i, %i.b
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f

.loopexit262:                                     ; preds = %bb.d, %._crit_edge
  %.sroa.0211.0.lcssa427 = phi ptr [ %.sroa.0211.0.lcssa, %._crit_edge ], [ %.sroa.0211.0.lcssa426, %bb.d ] ; 4 uses
  %.sroa.17.0.lcssa425 = phi i1 [ %.sroa.17.0.lcssa, %._crit_edge ], [ %.sroa.17.0.lcssa424, %bb.d ] ; 2 uses
  %.sroa.11.0.lcssa423 = phi i64 [ %.sroa.11.0.lcssa, %._crit_edge ], [ %.sroa.11.0.lcssa422, %bb.d ] ; 2 uses
  %i.cs = phi i64 [ 0, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i.i85 = phi i64 [ 0, %._crit_edge ], [ %.04.i.i84, %bb.d ] ; 2 uses
  %.not245327 = icmp eq i64 %.0.lcssa.i.i85, %i.cs
  br i1 %.not245327, label %._crit_edge331, label %.lr.ph330

.lr.ph330:                                        ; preds = %.loopexit262
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.x

._crit_edge331:                                   ; preds = %bb.e, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111, %.loopexit262
  %.sroa.11.0.lcssa423437 = phi i64 [ %.sroa.11.0.lcssa423, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111 ], [ %.sroa.11.0.lcssa423, %.loopexit262 ], [ %.sroa.11.0.lcssa422, %bb.e ] ; 2 uses
  %.sroa.17.0.lcssa425436 = phi i1 [ %.sroa.17.0.lcssa425, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111 ], [ %.sroa.17.0.lcssa425, %.loopexit262 ], [ %.sroa.17.0.lcssa424, %bb.e ]
  %.sroa.0211.0.lcssa427435 = phi ptr [ %.sroa.0211.0.lcssa427, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111 ], [ %.sroa.0211.0.lcssa427, %.loopexit262 ], [ %.sroa.0211.0.lcssa426, %bb.e ] ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !59 ; 4 uses
  %.not.i.i95 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i95, label %.loopexit261, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %._crit_edge331
  %i.cw = load ptr, ptr %2, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i.i96
  %.04.i.i97 = phi i64 [ 0, %.lr.ph.i.i96 ], [ %i.dc, %bb.w ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.04.i.i97
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !58
  %i.db = icmp eq ptr %i.da, %i.cy
  br i1 %i.db, label %bb.w, label %.loopexit261

bb.w:                                             ; preds = %bb.v
  %i.dc = add nuw i64 %.04.i.i97, 1               ; 2 uses
  %exitcond.not.i.i101 = icmp eq i64 %i.dc, %i.cv
  br i1 %exitcond.not.i.i101, label %._crit_edge336, label %bb.v, !llvm.loop !107

bb.x:                                             ; preds = %.lr.ph330, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111
  %.sroa.7196.0328 = phi i64 [ %.0.lcssa.i.i85, %.lr.ph330 ], [ %.lcssa.i110, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111 ] ; 4 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.sroa.7196.0328
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !47
  %i.dh = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.dg)
          to label %bb.y unwind label %bb.ac      ; 6 uses

bb.y:                                             ; preds = %bb.x
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !47
  %.not.i.i102 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i102, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !62
  %i.dj = icmp eq i32 %i.di, 2
  br i1 %i.dj, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread

_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103: ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 40 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !111
  %i.dm = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.dl)
          to label %.noexc105 unwind label %bb.ad ; 2 uses

.noexc105:                                        ; preds = %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103
  %.not.i.i104 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i104, label %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i, label %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i

_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i: ; preds = %.noexc105
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !62
  %i.do = icmp eq i32 %i.dn, 17
  br i1 %i.do, label %bb.aa, label %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i

bb.aa:                                            ; preds = %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !119
  br label %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit"

_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i: ; preds = %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i, %.noexc105
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 48 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !119
  %i.dt = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ds)
          to label %.noexc106 unwind label %bb.ad ; 2 uses

.noexc106:                                        ; preds = %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i
  %.not.i10.i = icmp eq ptr %i.dt, null
  br i1 %.not.i10.i, label %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i, label %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i

_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i: ; preds = %.noexc106
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !62
  %i.dv = icmp eq i32 %i.du, 16
  br i1 %i.dv, label %bb.ab, label %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i

bb.ab:                                            ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !111
  br label %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit"

_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i: ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i, %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !111
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !119
  invoke void @_ZN4Luau9Subtyping9isSubtypeEPKNS_4TypeES3_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %i.dx, ptr noundef %i.dy, ptr %4)
          to label %.noexc107 unwind label %bb.ad

.noexc107:                                        ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i
  %i.dz = load i8, ptr %6, align 8, !tbaa !155, !range !101, !noundef !102
  %i.ea = trunc nuw i8 %i.dz to i1
  %.val249 = load ptr, ptr %i.dk, align 8
  %i.eb = load ptr, ptr %i.dr, align 8
  %10 = select i1 %i.ea, ptr %.val249, ptr %i.eb
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit"

"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit": ; preds = %.noexc107, %bb.ab, %bb.aa
  %.0.i = phi ptr [ %i.dq, %bb.aa ], [ %i.dw, %bb.ab ], [ %10, %.noexc107 ]
  store ptr %.0.i, ptr %i.df, align 8, !tbaa !47
  br label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread

bb.ac:                                            ; preds = %bb.x
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit149

bb.ad:                                            ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i, %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit149

_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread: ; preds = %bb.y, %bb.z, %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit"
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !48
  %i.ef = add i64 %.sroa.7196.0328, 1
  %umax.i109 = call i64 @llvm.umax.i64(i64 %i.ee, i64 %i.ef) ; 3 uses
  %i.eg = add i64 %umax.i109, -1                  ; 2 uses
  %exitcond381.not542 = icmp eq i64 %.sroa.7196.0328, %i.eg
  br i1 %exitcond381.not542, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111, label %.lr.ph543.preheader

.lr.ph543.preheader:                              ; preds = %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread
  %i.eh = load ptr, ptr %1, align 8, !tbaa !49
  %i.ei = load ptr, ptr %i.ct, align 8, !tbaa !47
  br label %.lr.ph543

bb.ae:                                            ; preds = %.lr.ph543
  %exitcond381.not = icmp eq i64 %i.ek, %i.eg
  br i1 %exitcond381.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111, label %.lr.ph543, !llvm.loop !106

.lr.ph543:                                        ; preds = %.lr.ph543.preheader, %bb.ae
  %i.ej = phi i64 [ %i.ek, %bb.ae ], [ %.sroa.7196.0328, %.lr.ph543.preheader ]
  %i.ek = add i64 %i.ej, 1                        ; 4 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.en = icmp eq ptr %i.em, %i.ei
  br i1 %i.en, label %bb.ae, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111_crit_edge545, !llvm.loop !106

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111_crit_edge545: ; preds = %.lr.ph543
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111, !llvm.loop !106

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111: ; preds = %bb.ae, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111_crit_edge545, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread
  %.lcssa.i110 = phi i64 [ %umax.i109, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit103.thread ], [ %i.ek, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit111_crit_edge545 ], [ %umax.i109, %bb.ae ] ; 2 uses
  %.not245 = icmp eq i64 %.lcssa.i110, %i.cs
  br i1 %.not245, label %._crit_edge331, label %bb.x

.loopexit261:                                     ; preds = %bb.v, %._crit_edge331
  %.0.lcssa.i.i98 = phi i64 [ 0, %._crit_edge331 ], [ %.04.i.i97, %bb.v ] ; 2 uses
  %.not246332 = icmp eq i64 %.0.lcssa.i.i98, %i.cv
  br i1 %.not246332, label %._crit_edge336, label %.lr.ph335

.lr.ph335:                                        ; preds = %.loopexit261
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ag

._crit_edge336:                                   ; preds = %bb.w, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit, %.loopexit261
  %.not.i.i115 = icmp eq ptr %.sroa.0211.0.lcssa427435, null
  br i1 %.not.i.i115, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge336
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0211.0.lcssa427435) #19
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge336, %bb.af
  ret void

bb.ag:                                            ; preds = %.lr.ph335, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit
  %.sroa.7.0333 = phi i64 [ %.0.lcssa.i.i98, %.lr.ph335 ], [ %.lcssa.i152, %_ZN4Luau6detail14DenseHashTableIPKNS_11TypePackVarESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit ] ; 4 uses
  %i.et = load ptr, ptr %2, align 8, !tbaa !60
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %.sroa.7.0333
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !58
  %i.ex = invoke noundef ptr @_ZN4Luau6followEPKNS_11TypePackVarE(ptr noundef %i.ew)
          to label %bb.ah unwind label %bb.bc     ; 6 uses

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i116 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i116, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit147, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !109
  %i.ez = icmp eq i32 %i.ey, 4
  br i1 %i.ez, label %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit147

_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit: ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !206 ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !181 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp ugt i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #22
          to label %.noexc117 unwind label %.thread.loopexit.split-lp

.noexc117:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit
  %.not247 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not247, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.ak
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #23
          to label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %.thread.loopexit ; 2 uses

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fg
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.ak
  %.sroa.0.9 = phi ptr [ %i.fi, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.ak ] ; 4 uses
  %.sroa.25.9 = phi ptr [ %i.fj, %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN4Luau5beginEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %7, ptr noundef nonnull %i.ex)
          to label %bb.al unwind label %bb.bd

bb.al:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %8, ptr noundef nonnull %i.ex)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.al, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0.9, %bb.al ] ; 21 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0.9, %bb.al ] ; 13 uses
  %.sroa.25.0 = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.25.9, %bb.al ] ; 12 uses
  %.0 = phi i1 [ %.1, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ false, %bb.al ] ; 3 uses
  %i.fk = invoke noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %.preheader
  br i1 %i.fk, label %bb.an, label %bb.bk

bb.an:                                            ; preds = %bb.am
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.ao unwind label %bb.be

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !47
  %i.fn = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.fm)
          to label %bb.ap unwind label %bb.be     ; 9 uses

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i119 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i119, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !62
  %i.fp = icmp ne i32 %i.fo, 2
  %or.cond = select i1 %i.fp, i1 true, i1 %.sroa.17.0.lcssa425436
  br i1 %or.cond, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = mul i64 %i.fq, -4658895280553007687     ; 2 uses
  %i.fs = lshr i64 %i.fr, 31
  %i.ft = xor i64 %i.fs, %i.fr
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar
  %.pn.i.i = phi i64 [ %i.ft, %bb.ar ], [ %i.fz, %bb.au ]
  %.01832.i.i = phi i64 [ 0, %bb.ar ], [ %i.fy, %bb.au ]
  %.01933.i.i = and i64 %.pn.i.i, %.sroa.11.0.lcssa423437 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0211.0.lcssa427435, i64 %.01933.i.i
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !47 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fn
  br i1 %i.fw, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = icmp eq ptr %i.fv, null
  br i1 %i.fx, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.fz = add i64 %i.fy, %.01933.i.i
  %.not.i.i121 = icmp ugt i64 %i.fy, %.sroa.11.0.lcssa423437
  br i1 %.not.i.i121, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread, label %bb.as, !llvm.loop !204

_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit: ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !111
  %i.gc = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.gb)
          to label %.noexc131 unwind label %.loopexit248 ; 2 uses

.noexc131:                                        ; preds = %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit
  %.not.i.i122 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i122, label %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i124, label %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i123

_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i123: ; preds = %.noexc131
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !62
  %i.ge = icmp eq i32 %i.gd, 17
  br i1 %i.ge, label %bb.av, label %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i124

bb.av:                                            ; preds = %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i123
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !119
  br label %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit134"

_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i124: ; preds = %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.i123, %.noexc131
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !119
  %i.gj = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.gi)
          to label %.noexc132 unwind label %.loopexit248 ; 2 uses

.noexc132:                                        ; preds = %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i124
  %.not.i10.i125 = icmp eq ptr %i.gj, null
  br i1 %.not.i10.i125, label %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i127, label %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i126

_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i126: ; preds = %.noexc132
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !62
  %i.gl = icmp eq i32 %i.gk, 16
  br i1 %i.gl, label %bb.aw, label %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i127

bb.aw:                                            ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i126
  %i.gm = load ptr, ptr %i.ga, align 8, !tbaa !111
  br label %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit134"

_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i127: ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.i126, %.noexc132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.gn = load ptr, ptr %i.ga, align 8, !tbaa !111
  %i.go = load ptr, ptr %i.gh, align 8, !tbaa !119
  invoke void @_ZN4Luau9Subtyping9isSubtypeEPKNS_4TypeES3_NS_7NotNullINS_5ScopeEEE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SubtypingResult") align 8 %5, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %i.gn, ptr noundef %i.go, ptr %4)
          to label %.noexc133 unwind label %.loopexit248

.noexc133:                                        ; preds = %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i127
  %i.gp = load i8, ptr %5, align 8, !tbaa !155, !range !101, !noundef !102
  %i.gq = trunc nuw i8 %i.gp to i1
  %.val = load ptr, ptr %i.ga, align 8
  %i.gr = load ptr, ptr %i.gh, align 8
  %11 = select i1 %i.gq, ptr %.val, ptr %i.gr
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit134"

"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit134": ; preds = %.noexc133, %bb.aw, %bb.av
  %.0.i130 = phi ptr [ %i.gg, %bb.av ], [ %i.gm, %bb.aw ], [ %11, %.noexc133 ] ; 2 uses
  %.not.i.i135 = icmp eq ptr %.sroa.15.0, %.sroa.25.0
  br i1 %.not.i.i135, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit134"
  store ptr %.0.i130, ptr %.sroa.15.0, align 8, !tbaa !47
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 8
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.ay:                                            ; preds = %"_ZZN4Luau27resolveGenericSubstitutionsEPNS_9TypeArenaERNS_12DenseHashMapIPKNS_4TypeES5_NS_16DenseHashPointerESt8equal_toIS5_EEERNS2_IPKNS_11TypePackVarESD_S6_S7_ISD_EEENS_7NotNullINS_9SubtypingEEENSH_INS_5ScopeEEEENK3$_0clEPKNS_8FreeTypeE.exit134"
  %i.gt = ptrtoint ptr %.sroa.15.0 to i64
  %i.gu = ptrtoint ptr %.sroa.0.0 to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 6 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775800
  br i1 %i.gw, label %bb.az, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #22
          to label %.noexc136 unwind label %.loopexit.split-lp249

.noexc136:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ay
  %i.gx = ashr exact i64 %i.gv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 1152921504606846975)
  %i.hb = select i1 %i.gz, i64 1152921504606846975, i64 %i.ha ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #23
          to label %.noexc137 unwind label %.loopexit248 ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  store ptr %.0.i130, ptr %i.he, align 8, !tbaa !47
  %i.hf = icmp sgt i64 %i.gv, 0
  br i1 %i.hf, label %bb.ba, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ba:                                            ; preds = %.noexc137
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr align 8 %.sroa.0.0, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ba, %.noexc137
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.gv) #21
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bb, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hb
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.bc:                                            ; preds = %bb.ag
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit149

.thread.loopexit:                                 ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit.i
  %lpad.loopexit258.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit149

.thread.loopexit.split-lp:                        ; preds = %bb.aj
  %lpad.loopexit.split-lp259.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit149

bb.bd:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE7reserveEm.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.be:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit, %bb.ao, %bb.an
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0.0, %bb.ao ], [ %.sroa.0.0, %bb.an ]
  %.sroa.25.2 = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.25.0, %bb.ao ], [ %.sroa.25.0, %bb.an ]
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

.loopexit253:                                     ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit255 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

.loopexit.split-lp254:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

.loopexit248:                                     ; preds = %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i124, %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i127, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.25.0.lcssa345 = phi ptr [ %.sroa.25.0, %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit ], [ %.sroa.25.0, %_ZN4Luau2isIJNS_9NeverTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i124 ], [ %.sroa.25.0, %_ZN4Luau2isIJNS_11UnknownTypeEEPKNS_4TypeEEEbOT0_.exit.thread.i127 ], [ %.sroa.15.0, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

.loopexit.split-lp249:                            ; preds = %bb.az
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread: ; preds = %bb.at, %bb.au, %bb.ap, %bb.aq
  %.not.i138 = icmp eq ptr %.sroa.15.0, %.sroa.25.0
  br i1 %.not.i138, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread
  store ptr %i.fn, ptr %.sroa.15.0, align 8, !tbaa !47
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 8
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

bb.bg:                                            ; preds = %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit120.thread
  %i.hm = ptrtoint ptr %.sroa.15.0 to i64
  %i.hn = ptrtoint ptr %.sroa.0.0 to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775800
  br i1 %i.hp, label %bb.bh, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #22
          to label %.noexc140 unwind label %.loopexit.split-lp254

.noexc140:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.hq = ashr exact i64 %i.ho, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 1152921504606846975)
  %i.hu = select i1 %i.hs, i64 1152921504606846975, i64 %i.ht ; 3 uses
  %.not.i.i.i139 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i139)
  %i.hv = shl nuw nsw i64 %i.hu, 3
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #23
          to label %.noexc141 unwind label %.loopexit253 ; 4 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  store ptr %i.fn, ptr %i.hx, align 8, !tbaa !47
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.bi, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bi:                                            ; preds = %.noexc141
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr align 8 %.sroa.0.0, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bi, %.noexc141
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ho) #21
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bj, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hu
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.bf, %bb.ax, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %bb.ax ], [ %i.hd, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.hw, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0.0, %bb.bf ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %i.gs, %bb.ax ], [ %i.hg, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.hz, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.hl, %bb.bf ]
  %.sroa.25.3 = phi ptr [ %.sroa.25.0, %bb.ax ], [ %i.hh, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ia, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.25.0, %bb.bf ] ; 2 uses
  %.1 = phi i1 [ true, %bb.ax ], [ true, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.0, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.0, %bb.bf ]
  %i.ib = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau16TypePackIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %.preheader unwind label %bb.be, !llvm.loop !207 ; 0 uses

bb.bk:                                            ; preds = %bb.am
  br i1 %.0, label %bb.bl, label %_ZN4Luau8TypePackD2Ev.exit

bb.bl:                                            ; preds = %bb.bk
  store ptr %.sroa.0.0, ptr %9, align 8, !tbaa !181
  store ptr %.sroa.15.0, ptr %i.eo, align 8, !tbaa !206
  store ptr %.sroa.25.0, ptr %i.ep, align 8, !tbaa !182
  %i.ic = invoke { ptr, i8 } @_ZN4Luau16TypePackIterator4tailEv(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.bm unwind label %bb.bp     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.id = extractvalue { ptr, i8 } %i.ic, 0
  store ptr %i.id, ptr %i.eq, align 8
  %i.ie = extractvalue { ptr, i8 } %i.ic, 1
  store i8 %i.ie, ptr %i.er, align 8
  %i.if = invoke noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 %9)
          to label %bb.bn unwind label %bb.br
end_hunk_0
