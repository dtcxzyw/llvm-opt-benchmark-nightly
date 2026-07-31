inline.NumInlined: 39105
inline.NumDeleted: 7520
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZN8facebook5velox12printIndicesB5cxx11ERKN5boost13intrusive_ptrINS0_6BufferEEEi:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !124, !alias.scope !1366
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #48
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

bb.m:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.i, %_ZNSolsEm.exit, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph36.peel.next:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.peel ] ; 2 uses
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.29, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %.lr.ph36.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %.lr.ph36.peel.next
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv38
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !76
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %i.be)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29._crit_edge, label %.lr.ph36.peel.next, !llvm.loop !1367

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bg, ptr %7, align 8, !tbaa !8
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %7, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !319 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !124
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #48
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bm, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #41
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !8
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %7, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !952
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !1368 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.cb, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1369 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #48
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1370

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cd = load ptr, ptr %6, align 8, !tbaa !1348
  %i.ce = load i64, ptr %i.q, align 8, !tbaa !1354
  %i.cf = shl i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.cg = load ptr, ptr %6, align 8, !tbaa !1348  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.p
  br i1 %i.ch, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ci = load i64, ptr %i.q, align 8, !tbaa !1354
  %i.cj = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #48
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

.body:                                            ; preds = %bb.k, %.loopexit, %.loopexit.split-lp, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bb, %bb.n ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %i.au, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #41
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g
  %.pn25 = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn.pn, %bb.p ]
  call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn27 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn25, %bb.q ]
  resume { ptr, i32 } %.pn27
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1368 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1369 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #48
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1370

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1348
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1354
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !1348   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !1354
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #48
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define void @_ZN8facebook5velox10BaseVector16transposeIndicesEPKiiS3_Pi(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not29 = icmp slt i32 %1, 8
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31
  %i.c = load <8 x i32>, ptr %i.b, align 1, !tbaa !124
  %i.d = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.c, <8 x i32> splat (i32 -1), i8 4)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31
  store <8 x i32> %i.d, ptr %i.e, align 1, !tbaa !124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1371

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = and i32 %1, 2147483640
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit ] ; 3 uses
  %i.g = icmp slt i32 %.0.lcssa, %1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.h = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.j = load <8 x i32>, ptr %i.i, align 1, !tbaa !124
  %i.k = sub nsw i32 %1, %.0.lcssa
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 %i.l
  %.sroa.0.0.copyload.i.i.i28 = load <8 x i32>, ptr %i.m, align 32
  %i.n = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.j, <8 x i32> %.sroa.0.0.copyload.i.i.i28, i8 4)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  store <8 x i32> %i.n, ptr %i.o, align 1, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox10BaseVector25transposeIndicesWithNullsEPKiPKmiS3_S5_PiPm(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %.not31 = icmp eq ptr %1, null
  %i.b = zext nneg i32 %2 to i64                  ; 12 uses
  br i1 %.not31, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.c ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv57
  %i.d = load <4 x i64>, ptr %i.c, align 1, !tbaa !124 ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 8 ; 3 uses
  %i.e = icmp samesign ugt i64 %indvars.iv.next58, %i.b
  %i.f = sub nsw i64 %i.b, %indvars.iv57
  %notmask.i.us.us = shl nsw i64 -1, %i.f
  %i.g = trunc i64 %notmask.i.us.us to i8
  %i.h = xor i8 %i.g, -1
  %i.i = select i1 %i.e, i8 %i.h, i8 -1           ; 3 uses
  %.not30.us.us = icmp eq i8 %i.i, -1
  br i1 %.not30.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %i.j
  %.sroa.0.0.copyload.i.i.i.us.us = load <4 x i64>, ptr %i.k, align 32
  %i.l = and <4 x i64> %.sroa.0.0.copyload.i.i.i.us.us, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split.us
  %.sroa.037.0.us.us = phi <4 x i64> [ %i.d, %.lr.ph.split.us.split.us ], [ %i.l, %bb.b ]
  %i.m = lshr exact i64 %indvars.iv57, 3
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 %i.m
  store i8 %i.i, ptr %i.n, align 1, !tbaa !124
  %i.o = bitcast <4 x i64> %.sroa.037.0.us.us to <8 x i32>
  %i.p = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.o, <8 x i32> splat (i32 -1), i8 4)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv57
  store <8 x i32> %i.p, ptr %i.q, align 1, !tbaa !124
  %i.r = icmp samesign ult i64 %indvars.iv.next58, %i.b
  br i1 %i.r, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !1372

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.e
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %bb.e ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv54
  %i.t = load <4 x i64>, ptr %i.s, align 1, !tbaa !124 ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 8 ; 3 uses
  %i.u = icmp samesign ugt i64 %indvars.iv.next55, %i.b
  %i.v = sub nsw i64 %i.b, %indvars.iv54
  %notmask.i.us = shl nsw i64 -1, %i.v
  %i.w = trunc i64 %notmask.i.us to i8
  %i.x = xor i8 %i.w, -1
  %i.y = select i1 %i.u, i8 %i.x, i8 -1
  %i.z = lshr exact i64 %indvars.iv54, 3          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !124
  %i.ac = and i8 %i.ab, %i.y                      ; 3 uses
  %.not30.us = icmp eq i8 %i.ac, -1
  br i1 %.not30.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %i.ad
  %.sroa.0.0.copyload.i.i.i.us = load <4 x i64>, ptr %i.ae, align 32
  %i.af = and <4 x i64> %.sroa.0.0.copyload.i.i.i.us, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us.split
  %.sroa.037.0.us = phi <4 x i64> [ %i.t, %.lr.ph.split.us.split ], [ %i.af, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.z
  store i8 %i.ac, ptr %i.ag, align 1, !tbaa !124
  %i.ah = bitcast <4 x i64> %.sroa.037.0.us to <8 x i32>
  %i.ai = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.ah, <8 x i32> splat (i32 -1), i8 4)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv54
  store <8 x i32> %i.ai, ptr %i.aj, align 1, !tbaa !124
  %i.ak = icmp samesign ult i64 %indvars.iv.next55, %i.b
  br i1 %i.ak, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !1372

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us ], [ 0, %.lr.ph.split ] ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv51
  %i.am = load <4 x i64>, ptr %i.al, align 1, !tbaa !124 ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 8 ; 3 uses
  %i.an = icmp samesign ugt i64 %indvars.iv.next52, %i.b
  %i.ao = sub nsw i64 %i.b, %indvars.iv51
  %notmask.i.us42 = shl nsw i64 -1, %i.ao
  %i.ap = trunc i64 %notmask.i.us42 to i8
  %i.aq = xor i8 %i.ap, -1
  %i.ar = select i1 %i.an, i8 %i.aq, i8 -1        ; 3 uses
  %.not30.us44 = icmp eq i8 %i.ar, -1
  br i1 %.not30.us44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %i.as
  %.sroa.0.0.copyload.i.i.i.us45 = load <4 x i64>, ptr %i.at, align 32
  %i.au = and <4 x i64> %.sroa.0.0.copyload.i.i.i.us45, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us
  %.sroa.037.0.us46 = phi <4 x i64> [ %i.am, %.lr.ph.split.split.us ], [ %i.au, %bb.f ]
  %i.av = load atomic i8, ptr @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us, !prof !1373

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits) #41
  %.not.i.i.us = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.us, label %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <8 x i32> <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>, ptr @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits, align 32
  %i.ay = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits) #41
  br label %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us

_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.05.0.copyload19.i.i.us = load <8 x i32>, ptr @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits, align 32
  %i.az = bitcast <4 x i64> %.sroa.037.0.us46 to <8 x i32> ; 3 uses
  %i.ba = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %.sroa.05.0.copyload19.i.i.us, <8 x i32> %i.az)
  %.sroa.0.0.copyload.i.i20.i.i.us = load <8 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 256), align 32
  %i.bb = ashr <8 x i32> %i.az, splat (i32 3)
  %i.bc = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %1, <8 x i32> %i.bb, <8 x i32> %.sroa.0.0.copyload.i.i20.i.i.us, i8 1)
  %i.bd = and <8 x i32> %i.bc, %i.ba
  %i.be = icmp ne <8 x i32> %i.bd, zeroinitializer
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = and i8 %i.ar, %i.bf
  %i.bh = lshr exact i64 %indvars.iv51, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 %i.bh
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !124
  %i.bj = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.az, <8 x i32> splat (i32 -1), i8 4)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv51
  store <8 x i32> %i.bj, ptr %i.bk, align 1, !tbaa !124
  %i.bl = icmp samesign ult i64 %indvars.iv.next52, %i.b
  br i1 %i.bl, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !1372

._crit_edge:                                      ; preds = %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit, %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit.us, %bb.e, %bb.c, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit ], [ 0, %.lr.ph.split ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bn = load <4 x i64>, ptr %i.bm, align 1, !tbaa !124 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.bo = icmp samesign ugt i64 %indvars.iv.next, %i.b
  %i.bp = sub nsw i64 %i.b, %indvars.iv
  %notmask.i = shl nsw i64 -1, %i.bp
  %i.bq = trunc i64 %notmask.i to i8
  %i.br = xor i8 %i.bq, -1
  %i.bs = select i1 %i.bo, i8 %i.br, i8 -1
  %i.bt = lshr exact i64 %indvars.iv, 3           ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !124
  %i.bw = and i8 %i.bv, %i.bs                     ; 3 uses
  %.not30 = icmp eq i8 %i.bw, -1
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %i.bx
  %.sroa.0.0.copyload.i.i.i = load <4 x i64>, ptr %i.by, align 32
  %i.bz = and <4 x i64> %.sroa.0.0.copyload.i.i.i, %i.bn
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.split
  %.sroa.037.0 = phi <4 x i64> [ %i.bn, %.lr.ph.split.split ], [ %i.bz, %bb.j ]
  %i.ca = load atomic i8, ptr @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits acquire, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.l, label %_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_.exit, !prof !1373

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10BaseVector25transposeDictionaryValuesEiRN5boost13intrusive_ptrINS0_6BufferEEES6_RSt10shared_ptrIS1_E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.e = getelementptr inbounds nuw i8, ptr %.pre77, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.g = load ptr, ptr %2, align 8, !tbaa !355    ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.j = load i8, ptr %i.i, align 4, !tbaa !376, !noalias !1374
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !383

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.277) #50, !noalias !1374
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !372, !noalias !1374
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !1374
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !1293, !noalias !1374
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIhEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %6, i64 noundef %i.m, ptr noundef %i.f, ptr noundef nonnull align 1 dereferenceable(2) %5, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !1374
  %i.o = load ptr, ptr %6, align 8, !tbaa !355, !alias.scope !1374 ; 3 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !355, !noalias !1374
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !372
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.ax, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn28, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  br label %common.resume

_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit: ; preds = %bb.e
  %.pr = load ptr, ptr %2, align 8, !tbaa !355    ; 7 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !355
  store ptr null, ptr %6, align 8, !tbaa !355
  store ptr %i.w, ptr %2, align 8, !tbaa !355
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.g
  %i.aa = load ptr, ptr %.pr, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.h, !inline_history !373

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !374
  %.not.i.i.i = icmp eq ptr %i.ae, null
  %i.af = load ptr, ptr %.pr, align 8, !tbaa !8
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %..i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.h, !inline_history !373

bb.h:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.g, %.noexc.i.i
  %.pr71 = load ptr, ptr %6, align 8, !tbaa !355  ; 7 uses
  %.not.i = icmp eq ptr %.pr71, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr71, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.i
  %i.an = load ptr, ptr %.pr71, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr71)
          to label %.noexc.i unwind label %bb.j, !inline_history !373

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr71, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !374
  %.not.i.i30 = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr71, align 8, !tbaa !8
  %..i.i = select i1 %.not.i.i30, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr71)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.j, !inline_history !373

bb.j:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %.pre = load ptr, ptr %3, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.a
  %i.ax = phi ptr [ %.pre, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ], [ %.pre77, %bb.a ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !361 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 312
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !355 ; 3 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !355
  %.not.i31 = icmp eq ptr %i.be, null
  br i1 %.not.i31, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.k, %bb.l
  %.not = icmp eq ptr %i.az, null
  %i.bh = load ptr, ptr %1, align 8, !tbaa !355   ; 3 uses
  br i1 %.not, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  store ptr null, ptr %8, align 8, !tbaa !355
  br label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %7, align 8, !tbaa !355
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !356 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !355   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !356 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !376
  %i.br = and i8 %i.bq, 2
  %.not.i32 = icmp eq i8 %i.br, 0
  br i1 %.not.i32, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.o, !prof !383

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #50
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.n
  %.not29.i = icmp slt i32 %0, 8
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.bs = zext nneg i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next32.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv31.i ; 2 uses
  %i.bu = load <8 x i32>, ptr %i.bt, align 1, !tbaa !124
  %i.bv = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bl, <8 x i32> %i.bu, <8 x i32> splat (i32 -1), i8 4)
  store <8 x i32> %i.bv, ptr %i.bt, align 1, !tbaa !124
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i33 = icmp samesign ugt i64 %indvars.iv.next.i, %i.bs
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 8
  br i1 %.not.i33, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1371

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bw = and i32 %0, 2147483640
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit ], [ %i.bw, %._crit_edge.loopexit.i ] ; 3 uses
  %i.bx = icmp slt i32 %.0.lcssa.i, %0
  br i1 %i.bx, label %bb.p, label %_ZN8facebook5velox10BaseVector16transposeIndicesEPKiiS3_Pi.exit

bb.p:                                             ; preds = %._crit_edge.i
  %i.by = zext nneg i32 %.0.lcssa.i to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.by ; 2 uses
  %i.ca = load <8 x i32>, ptr %i.bz, align 1, !tbaa !124
  %i.cb = sub nsw i32 %0, %.0.lcssa.i
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 %i.cc
  %.sroa.0.0.copyload.i.i.i28.i = load <8 x i32>, ptr %i.cd, align 32
  %i.ce = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bl, <8 x i32> %i.ca, <8 x i32> %.sroa.0.0.copyload.i.i.i28.i, i8 4)
  store <8 x i32> %i.ce, ptr %i.bz, align 1, !tbaa !124
  br label %_ZN8facebook5velox10BaseVector16transposeIndicesEPKiiS3_Pi.exit

bb.q:                                             ; preds = %bb.o, %_ZN8facebook5velox10BaseVector16transposeIndicesEPKiiS3_Pi.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.r:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  store ptr null, ptr %8, align 8, !tbaa !355
  %i.cg = icmp eq ptr %i.bh, null
  br i1 %i.cg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.ci = load atomic i32, ptr %i.ch acquire, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ck = sext i32 %0 to i64
  %i.cl = load ptr, ptr %3, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !1377
  store i8 0, ptr %4, align 1, !tbaa !124, !noalias !1377
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.co, align 1, !tbaa !377, !noalias !1377
  %i.cp = add nsw i64 %i.ck, 7
  %i.cq = lshr i64 %i.cp, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(2) %4, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !1377
  %i.cr = load ptr, ptr %9, align 8, !tbaa !355
  store ptr null, ptr %9, align 8, !tbaa !355
  %i.cs = load ptr, ptr %8, align 8, !tbaa !355   ; 7 uses
  store ptr %i.cr, ptr %8, align 8, !tbaa !355
  %.not.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i35, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit46, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = atomicrmw sub ptr %i.ct, i32 1 acq_rel, align 4
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %.sink.split.i.i.i36, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit40

.sink.split.i.i.i36:                              ; preds = %bb.v
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %i.cs)
          to label %.noexc.i.i37 unwind label %bb.w, !inline_history !373

.noexc.i.i37:                                     ; preds = %.sink.split.i.i.i36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !374
  %.not.i.i.i38 = icmp eq ptr %i.da, null
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !8
  %..i.i.i39 = select i1 %.not.i.i.i38, i64 8, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %..i.i.i39
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(64) %i.cs)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit40 unwind label %bb.w, !inline_history !373

bb.w:                                             ; preds = %.noexc.i.i37, %.sink.split.i.i.i36
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit40: ; preds = %bb.v, %.noexc.i.i37
  %.pr74 = load ptr, ptr %9, align 8, !tbaa !355  ; 7 uses
  %.not.i41 = icmp eq ptr %.pr74, null
  br i1 %.not.i41, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit46, label %bb.x

bb.x:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit40
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr74, i64 40
  %i.dh = atomicrmw sub ptr %i.dg, i32 1 acq_rel, align 4
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %.sink.split.i.i42, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit46

.sink.split.i.i42:                                ; preds = %bb.x
  %i.dj = load ptr, ptr %.pr74, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(64) %.pr74)
          to label %.noexc.i43 unwind label %bb.y, !inline_history !373

.noexc.i43:                                       ; preds = %.sink.split.i.i42
  %i.dm = getelementptr inbounds nuw i8, ptr %.pr74, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !374
  %.not.i.i44 = icmp eq ptr %i.dn, null
  %i.do = load ptr, ptr %.pr74, align 8, !tbaa !8
  %..i.i45 = select i1 %.not.i.i44, i64 8, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %..i.i45
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(64) %.pr74)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit46 unwind label %bb.y, !inline_history !373

bb.y:                                             ; preds = %.noexc.i43, %.sink.split.i.i42
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #49
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit46: ; preds = %bb.u, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit40, %bb.x, %.noexc.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

bb.z:                                             ; preds = %bb.t
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.aj

bb.aa:                                            ; preds = %bb.s
  %i.du = load ptr, ptr %1, align 8, !tbaa !355   ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.du, null
  br i1 %.not.i.i47, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = atomicrmw add ptr %i.dv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.ab, %bb.aa
  %i.dx = load ptr, ptr %8, align 8, !tbaa !355   ; 7 uses
  store ptr %i.du, ptr %8, align 8, !tbaa !355
  %.not.i2.i = icmp eq ptr %i.dx, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = atomicrmw sub ptr %i.dy, i32 1 acq_rel, align 4
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %.sink.split.i.i.i48, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i48:                              ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %i.dx)
          to label %.noexc.i.i49 unwind label %bb.ad, !inline_history !373

.noexc.i.i49:                                     ; preds = %.sink.split.i.i.i48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !374
  %.not.i.i.i50 = icmp eq ptr %i.ef, null
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !8
  %..i.i.i51 = select i1 %.not.i.i.i50, i64 8, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %..i.i.i51
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(64) %i.dx)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.ad, !inline_history !373

bb.ad:                                            ; preds = %.noexc.i.i49, %.sink.split.i.i.i48
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #49
  unreachable

bb.ae:                                            ; preds = %.invoke
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i49, %bb.ac, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit46
  %i.em = load ptr, ptr %7, align 8, !tbaa !355
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !356
  %i.ep = load ptr, ptr %2, align 8, !tbaa !355   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !356 ; 2 uses
  %i.es = load ptr, ptr %1, align 8, !tbaa !355   ; 2 uses
  %.not76 = icmp eq ptr %i.es, null
  br i1 %.not76, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !356
  br label %bb.ag
end_hunk_1
begin_hunk_2_@_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_11ComplexTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERiSE_St10shared_ptrINS1_10BaseVectorEENS1_17SimpleVectorStatsIS3_EEEEES5_DpOT_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_11ComplexTypeEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = load ptr, ptr %1, align 8, !tbaa !417
  %i.e = load i32, ptr %2, align 4, !tbaa !76
  %i.f = load i32, ptr %3, align 4, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load <2 x ptr>, ptr %4, align 8, !tbaa !131
  store ptr null, ptr %i.g, align 8, !tbaa !123
  store <2 x ptr> %i.h, ptr %6, align 16, !tbaa !131
  store ptr null, ptr %4, align 8, !tbaa !52
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_11ComplexTypeEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 1 dereferenceable(4) %5)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !134
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #41, !inline_history !7403
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #41, !inline_history !7403
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !76
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %bb.i, !prof !130

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #41
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #41
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !658  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !661    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #50
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #47 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !131
  store ptr null, ptr %i.r, align 8, !tbaa !123
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !131
  store ptr null, ptr %2, align 8, !tbaa !52
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.t = sub i64 %i.m, %i.e
  %i.u = add i64 %i.t, -16                        ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.x = add i64 %i.m, -16
  %i.y = sub i64 %i.x, %i.e
  %i.z = and i64 %i.y, -16                        ; 2 uses
  %i.aa = or disjoint i64 %i.z, 8                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.aa
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.aa
  %scevgep36 = getelementptr i8, ptr %i.c, i64 8
  %i.ab = add i64 %i.z, 16                        ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.c, i64 %i.ab
  %scevgep38 = getelementptr i8, ptr %i.p, i64 8
  %scevgep39 = getelementptr i8, ptr %i.p, i64 %i.ab
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound040 = icmp ult ptr %scevgep36, %scevgep39
  %bound141 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 2305843009213693948      ; 3 uses
  %i.ac = shl i64 %n.vec, 4                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep43 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7407)
  %wide.vec = load <8 x ptr>, ptr %next.gep43, align 8, !tbaa !131, !alias.scope !7407, !noalias !7404
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !131, !alias.scope !7404, !noalias !7407
  store <8 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !131, !alias.scope !7407, !noalias !7404
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !7409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader79

.lr.ph.i.i.i.preheader79:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader79, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader79 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7407)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !131, !alias.scope !7407, !noalias !7404
  store ptr null, ptr %i.ah, align 8, !tbaa !123, !alias.scope !7407, !noalias !7404
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !131, !alias.scope !7404, !noalias !7407
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !52, !alias.scope !7407, !noalias !7404
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !7410

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 4 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.am = sub i64 %i.d, %i.m
  %i.an = add i64 %i.am, -16                      ; 2 uses
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.an, 368
  br i1 %min.iters.check61, label %.lr.ph.i.i.i17.preheader78, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -16
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -16                      ; 4 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep47 = getelementptr i8, ptr %i.at, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep48 = getelementptr i8, ptr %i.au, i64 8
  %scevgep49 = getelementptr i8, ptr %1, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.as
  %scevgep50 = getelementptr i8, ptr %i.av, i64 16
  %scevgep51 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep52 = getelementptr i8, ptr %i.aw, i64 32
  %bound053 = icmp ult ptr %i.al, %scevgep48
  %bound154 = icmp ult ptr %1, %scevgep47
  %found.conflict55 = and i1 %bound053, %bound154
  %bound056 = icmp ult ptr %scevgep49, %scevgep52
  %bound157 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %found.conflict55, %found.conflict58
  br i1 %conflict.rdx59, label %.lr.ph.i.i.i17.preheader78, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck46
  %n.vec64 = and i64 %i.ap, 2305843009213693948   ; 3 uses
  %i.ax = shl i64 %n.vec64, 4                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph62
  %index66 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body65 ] ; 2 uses
  %i.ba = shl i64 %index66, 4                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.al, i64 %i.ba
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7414)
  %wide.vec69 = load <8 x ptr>, ptr %next.gep68, align 8, !tbaa !131, !alias.scope !7414, !noalias !7411
  store <8 x ptr> %wide.vec69, ptr %next.gep67, align 8, !tbaa !131, !alias.scope !7411, !noalias !7414
  store <8 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !131, !alias.scope !7414, !noalias !7411
  %index.next73 = add nuw i64 %index66, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.bb, label %middle.block74, label %vector.body65, !llvm.loop !7416

middle.block74:                                   ; preds = %vector.body65
  %cmp.n75 = icmp eq i64 %i.ap, %n.vec64
  br i1 %cmp.n75, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader78

.lr.ph.i.i.i17.preheader78:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block74
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck46 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block74 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.az, %middle.block74 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader78, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader78 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader78 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7414)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !131, !alias.scope !7414, !noalias !7411
  store ptr null, ptr %i.bc, align 8, !tbaa !123, !alias.scope !7414, !noalias !7411
  store <2 x ptr> %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !131, !alias.scope !7411, !noalias !7414
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !52, !alias.scope !7414, !noalias !7411
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !7417

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block74, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ay, %middle.block74 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !659
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #48
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !661
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !658
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !659
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_12UnknownValueEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.2023", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.425", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.425", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %1, -64                          ; 2 uses
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 160) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !130

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !7418
  store ptr @.str.62, ptr %9, align 16, !tbaa !124, !noalias !7418
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.a, ptr %i.d, align 16, !tbaa !124, !noalias !7418
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 160, ptr %i.e, align 16, !tbaa !124, !noalias !7418
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.76, i64 20, i64 1100, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !7418
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.76) #50
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %10, align 8, !tbaa !319   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !124
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.b, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !130

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41, !noalias !7421
  store ptr @.str.62, ptr %7, align 16, !tbaa !124, !noalias !7421
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %1, ptr %i.o, align 16, !tbaa !124, !noalias !7421
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 96, ptr %i.p, align 16, !tbaa !124, !noalias !7421
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.76, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !7421
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.76) #50
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %8, align 8, !tbaa !319    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !124
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.m, 0
  %i.x = load ptr, ptr %2, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.l, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.aa, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !8
end_hunk_2
