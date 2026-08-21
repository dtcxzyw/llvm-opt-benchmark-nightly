Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN7httplib6detail14parse_trailersERNS0_18stream_line_readerERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKSC_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i, %bb.df
  %.pn.pn.i = phi { ptr, i32 } [ %i.tr, %bb.df ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.uq = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.ph
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, %.critedge4.i, %bb.cu, %_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.cs
  %.1171 = phi i64 [ %.0, %bb.cs ], [ %.0, %_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.0, %.critedge4.i ], [ %.2172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i ], [ %.0, %bb.cu ], [ %.0, %.lr.ph.i.i.i ]
  %i.us = phi ptr [ %.pre114.i, %bb.cs ], [ %.pre114.i, %_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre114.i, %.critedge4.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i ], [ %.pre114.i, %bb.cu ], [ %.pre114.i, %.lr.ph.i.i.i ] ; 2 uses
  %.344.i = phi i1 [ false, %bb.cs ], [ false, %_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %.critedge4.i ], [ %.3.i.i6291.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i ], [ false, %bb.cu ], [ false, %.lr.ph.i.i.i ]
  %i.ut = icmp eq ptr %i.us, %i.ph
  br i1 %i.ut, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  %i.uu = load i64, ptr %i.ph, align 8, !tbaa !65
  %i.uv = add i64 %i.uu, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uv) #46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i
  %i.uw = load i64, ptr %i.ph, align 8, !tbaa !65
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ux) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt14_Function_baseD2Ev.exit156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80.i: ; preds = %_ZN7httplib6detail6fields13is_field_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.344.i, label %bb.dm, label %.critedge

bb.dl:                                            ; preds = %.noexc.i.i, %bb.dm
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit156

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80.i
  %i.uz = invoke noundef zeroext i1 @_ZN7httplib6detail18stream_line_reader7getlineEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.dn unwind label %bb.dl

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.uz, label %sub_0, label %.critedge, !llvm.loop !348

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80.i, %.tail, %.tail.thread, %bb.dn
  %.not137353 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80.i ], [ true, %.tail ], [ false, %.tail.thread ], [ false, %bb.dn ]
  %i.va = load ptr, ptr %i.gf, align 8, !tbaa !349 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.vb, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.va, %.critedge ] ; 4 uses
  %i.vb = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !350 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !77 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.vg = load i64, ptr %i.ve, align 8, !tbaa !65
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vh) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #46
  %.not.i.i.i.i166 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i.i.i166, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !351

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %.critedge
  %i.vi = load ptr, ptr %37, align 8, !tbaa !335
  %i.vj = load i64, ptr %i.ge, align 8, !tbaa !337
  %i.vk = shl i64 %i.vj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vi, i8 0, i64 %i.vk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i8 0, i64 16, i1 false)
  %i.vl = load ptr, ptr %37, align 8, !tbaa !335  ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.gd
  br i1 %i.vm, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.vn = load i64, ptr %i.ge, align 8, !tbaa !337
  %i.vo = shl i64 %i.vn, 3
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #46
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  ret i1 %.not137353

_ZNSt14_Function_baseD2Ev.exit156:                ; preds = %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, %bb.cm, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %.pn138 = phi { ptr, i32 } [ %i.hb, %bb.cm ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %i.hb, %.body ], [ %i.uy, %bb.dl ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ]
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit156, %.loopexit
  %.pn138.pn = phi { ptr, i32 } [ %.pn138, %_ZNSt14_Function_baseD2Ev.exit156 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn177, %.loopexit ]
  resume { ptr, i32 } %.pn138.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !349  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !350 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !65
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #46
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !351

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !335
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !337
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !335    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !337
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #46
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7httplib6detail16get_header_valueERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_PKcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readnone captures(ret: address, provenance) %2, i64 noundef %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.httplib::detail::insertion_ordered_multimap<std::__cxx11::basic_string<char>, httplib::detail::case_ignore::equal_to>::iterator_t.118", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %.fr.i = freeze i64 %i.c                        ; 6 uses
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not8.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %.fr.i, 3                   ; 3 uses
  %i.d = icmp ult i64 %.fr.i, 4
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.fr.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.x, %.lr.ph.i.i ]
  %.sroa.05.09.i.i = phi ptr [ %i.a, %.lr.ph.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.e = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !65
  %i.f = mul i32 %.010.i.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = mul i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65
  %i.p = mul i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = mul i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %.sroa.05.09.i.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.010.i.i.epil = phi i32 [ %i.ad, %.lr.ph.i.i.epil ], [ %.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.09.i.i.epil = phi ptr [ %i.ae, %.lr.ph.i.i.epil ], [ %.sroa.05.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.i.epil, align 1, !tbaa !65
  %i.aa = mul i32 %.010.i.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !352

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ], [ %i.ad, %.lr.ph.i.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 16923016, label %bb.b
    i32 16377058, label %bb.b
    i32 49322369, label %bb.b
    i32 48576171, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.114, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !65
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #47
          to label %bb.l unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !65
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ak) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ar, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !65
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !108, !noalias !353 ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !107, !noalias !353 ; 6 uses
  %.not.i.i19 = icmp eq ptr %i.az, %i.ba
  %.pre.i = ptrtoint ptr %i.az to i64
  %.pre26.i = ptrtoint ptr %i.ba to i64
  %.pre28.i = sub i64 %.pre.i, %.pre26.i
  %.pre30.i = ashr exact i64 %.pre28.i, 6         ; 4 uses
  br i1 %.not.i.i19, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.us.i

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !108, !noalias !353 ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !107, !noalias !353 ; 6 uses
  %.not.i.i1940 = icmp eq ptr %i.bc, %i.bd
  %.pre.i41 = ptrtoint ptr %i.bc to i64
  %.pre26.i42 = ptrtoint ptr %i.bd to i64
  %.pre28.i43 = sub i64 %.pre.i41, %.pre26.i42
  %.pre30.i44 = ashr exact i64 %.pre28.i43, 6     ; 4 uses
  br i1 %.not.i.i1940, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i
  %.0712.i.us.i = phi i64 [ %i.bi, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %.0712.i.us.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !64, !noalias !353
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.bi = add nuw i64 %.0712.i.us.i, 1            ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.bi, %.pre30.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !118

.lr.ph.i.split.i:                                 ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i
  %.0712.i.i = phi i64 [ %i.ca, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.bd, i64 %.0712.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !64, !noalias !353
  %i.bm = icmp eq i64 %i.bl, %.fr.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.lr.ph.i.split.i
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !77, !noalias !353 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.fr.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.by, %bb.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bp = load i8, ptr %.sroa.03.07.i.i.i.i.i.i, align 1, !tbaa !65, !noalias !353
  %i.bq = load i8, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !65, !noalias !353
  %i.br = zext i8 %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !65, !noalias !353
  %i.bu = zext i8 %i.bq to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !65, !noalias !353
  %i.bx = icmp eq i8 %i.bt, %i.bw
  br i1 %i.bx, label %bb.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !119

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.split.i
  %i.ca = add nuw i64 %.0712.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %.pre30.i44
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.i, !llvm.loop !118

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i: ; preds = %bb.i, %.lr.ph.i.split.us.i
  %i.cb = phi ptr [ %i.ba, %.lr.ph.i.split.us.i ], [ %i.bd, %bb.i ]
  %.pre30.i4549 = phi i64 [ %.pre30.i, %.lr.ph.i.split.us.i ], [ %.pre30.i44, %bb.i ] ; 2 uses
  %.0712.i20.i = phi i64 [ %.0712.i.us.i, %.lr.ph.i.split.us.i ], [ %.0712.i.i, %bb.i ] ; 3 uses
  %i.cc = icmp eq i64 %.0712.i20.i, -1
  %spec.select.i = select i1 %i.cc, i64 %.pre30.i4549, i64 %.0712.i20.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i
  %.pre30.i46 = phi i64 [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.pre30.i4549, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.pre30.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ %.pre30.i44, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.bd, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.cb, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i ], [ %i.ba, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ba, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ %i.bd, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ]
  %.0712.i20.sink45.i = phi i64 [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.pre30.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ %.pre30.i44, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ]
  %.0712.i20.sink.i = phi i64 [ -1, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.0712.i20.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i ], [ -1, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
end_hunk_0
begin_hunk_1_@getnameinfo

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail21get_local_ip_and_portEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"struct.std::array", align 1       ; 6 uses
  %4 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 128, ptr %i.a, align 4, !tbaa !175
  %i.b = call i32 @getsockname(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #23
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %4, align 8, !tbaa !444
  switch i16 %i.c, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit [
    i16 2, label %bb.c
    i16 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = load i32, ptr %i.a, align 4, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !446
  %rev.i10.i = call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %storemerge.i = zext i16 %rev.i10.i to i32
  store i32 %storemerge.i, ptr %2, align 4, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1025) %3, i8 0, i64 1025, i1 false)
  %i.g = call i32 @getnameinfo(ptr noundef nonnull align 8 dereferenceable(128) %4, i32 noundef %i.d, ptr noundef nonnull %3, i32 noundef 1025, ptr noundef null, i32 noundef 0, i32 noundef 1)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %3, i64 noundef %i.j) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit: ; preds = %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail22get_remote_ip_and_portEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"struct.std::array", align 1       ; 6 uses
  %4 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.ucred, align 4              ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 128, ptr %i.a, align 4, !tbaa !175
  %i.c = call i32 @getpeername(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %4, align 8, !tbaa !444
  switch i16 %i.d, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit [
    i16 1, label %bb.c
    i16 2, label %bb.f
    i16 10, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 12, ptr %i.b, align 4, !tbaa !175
  %i.e = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %5, align 4, !tbaa !447
  store i32 %i.g, ptr %2, align 4, !tbaa !175
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !446
  %rev.i10.i = call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %storemerge.i = zext i16 %rev.i10.i to i32
  store i32 %storemerge.i, ptr %2, align 4, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1025) %3, i8 0, i64 1025, i1 false)
  %i.k = call i32 @getnameinfo(ptr noundef nonnull align 8 dereferenceable(128) %4, i32 noundef %i.h, ptr noundef nonnull %3, i32 noundef 1025, ptr noundef null, i32 noundef 0, i32 noundef 1)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !64
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %3, i64 noundef %i.n) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit: ; preds = %bb.b, %bb.h, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 67108864) i32 @_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %.not8 = icmp samesign eq i64 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.05.09.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.010.epil = phi i32 [ %i.i, %.lr.ph.epil ], [ %.010.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.05.09.epil = phi ptr [ %i.j, %.lr.ph.epil ], [ %.sroa.05.09.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.e = load i8, ptr %.sroa.05.09.epil, align 1, !tbaa !65
  %i.f = mul i32 %.010.epil, 33
  %i.g = and i32 %i.f, 67108863
  %i.h = zext i8 %i.e to i32
  %i.i = xor i32 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !449

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %.sroa.05.09 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.k = load i8, ptr %.sroa.05.09, align 1, !tbaa !65
  %i.l = mul i32 %.010, 33
  %i.m = zext i8 %i.k to i32
  %i.n = xor i32 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !65
  %i.q = mul i32 %i.n, 33
  %i.r = zext i8 %i.p to i32
  %i.s = xor i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65
  %i.v = mul i32 %i.s, 33
  %i.w = zext i8 %i.u to i32
  %i.x = xor i32 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65
  %i.aa = mul i32 %i.x, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail17find_content_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"class.std::allocator", align 1   ; 4 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 4 uses
  %21 = alloca %"class.std::allocator", align 1   ; 4 uses
  %22 = alloca %"class.std::allocator", align 1   ; 4 uses
  %23 = alloca %"class.std::allocator", align 1   ; 4 uses
  %24 = alloca %"class.std::allocator", align 1   ; 4 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::allocator", align 1   ; 4 uses
  %27 = alloca %"class.std::allocator", align 1   ; 4 uses
  %28 = alloca %"class.std::allocator", align 1   ; 4 uses
  %29 = alloca %"class.std::allocator", align 1   ; 4 uses
  %30 = alloca %"class.std::allocator", align 1   ; 4 uses
  %31 = alloca %"class.std::allocator", align 1   ; 4 uses
  %32 = alloca %"class.std::allocator", align 1   ; 4 uses
  %33 = alloca %"class.std::allocator", align 1   ; 4 uses
  %34 = alloca %"class.std::allocator", align 1   ; 4 uses
  %35 = alloca %"class.std::allocator", align 1   ; 4 uses
  %36 = alloca %"class.std::allocator", align 1   ; 4 uses
  %37 = alloca %"class.std::allocator", align 1   ; 4 uses
  %38 = alloca %"class.std::allocator", align 1   ; 4 uses
  %39 = alloca %"class.std::allocator", align 1   ; 4 uses
  %40 = alloca %"class.std::allocator", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN7httplib6detail14file_extensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  %.pre = load ptr, ptr %4, align 8               ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre33 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !64 ; 8 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre33, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.k = call i32 @memcmp(ptr noundef %i.j, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.l = sub i64 %i.g, %.pre33
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !450

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.n, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %.pre33) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.t = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.u = sub i64 %.pre33, %i.p
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !63
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !77   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !78
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !77
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !78
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.x, %bb.c ] ; 2 uses
  switch i64 %i.aa, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !65
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !64
  %i.ai = load ptr, ptr %0, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.dl

bb.f:                                             ; preds = %.noexc.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread: ; preds = %bb.a, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %.not8.i = icmp samesign eq i64 %.pre33, 0
  br i1 %.not8.i, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  %xtraiter = and i64 %.pre33, 3                  ; 3 uses
  %i.al = icmp ult i64 %.pre33, 4
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.pre33, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.bf, %.lr.ph.i ]
  %.sroa.05.09.i = phi ptr [ %.pre, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.am = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !65
  %i.an = mul i32 %.010.i, 33
  %i.ao = zext i8 %i.am to i32
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !65
  %i.as = mul i32 %i.ap, 33
  %i.at = zext i8 %i.ar to i32
  %i.au = xor i32 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !65
  %i.ax = mul i32 %i.au, 33
  %i.ay = zext i8 %i.aw to i32
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !65
  %i.bc = mul i32 %i.az, 33
  %i.bd = and i32 %i.bc, 67108863
  %i.be = zext i8 %i.bb to i32
  %i.bf = xor i32 %i.bd, %i.be                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, label %.lr.ph.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bf, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %.sroa.05.09.i.epil.init = phi ptr [ %.pre, %.lr.ph.i.preheader ], [ %i.bg, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i32 [ %i.bl, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.05.09.i.epil = phi ptr [ %i.bm, %.lr.ph.i.epil ], [ %.sroa.05.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = load i8, ptr %.sroa.05.09.i.epil, align 1, !tbaa !65
  %i.bi = mul i32 %.010.i.epil, 33
  %i.bj = and i32 %i.bi, 67108863
  %i.bk = zext i8 %i.bh to i32
  %i.bl = xor i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil, !llvm.loop !451

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.bf, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ], [ %i.bl, %.lr.ph.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 107203, label %bb.g
    i32 107206, label %bb.j
    i32 110833, label %._crit_edge.i.i7
    i32 3657597, label %._crit_edge.i.i7
    i32 3545, label %._crit_edge.i.i10
    i32 121652, label %._crit_edge.i.i10
    i32 123000, label %bb.m
    i32 129014, label %bb.p
    i32 3611448, label %bb.s
    i32 3613464, label %bb.v
    i32 108255, label %bb.y
    i32 111240, label %bb.ab
    i32 119225, label %bb.ae
    i32 123682, label %bb.ah
    i32 4233056, label %bb.ak
    i32 117573, label %bb.an
    i32 123483, label %bb.aq
    i32 4074973, label %bb.at
    i32 117117, label %._crit_edge.i.i14
    i32 3864888, label %._crit_edge.i.i14
    i32 122409, label %bb.aw
    i32 4042015, label %bb.az
    i32 4233085, label %bb.bc
    i32 122414, label %bb.bf
    i32 4042203, label %bb.bi
    i32 4233073, label %bb.bl
    i32 128384, label %bb.bo
    i32 120317, label %bb.br
    i32 122598, label %bb.bu
    i32 4244088, label %bb.bx
    i32 5837130, label %bb.ca
    i32 1901, label %bb.cd
    i32 3615575, label %bb.cg
    i32 119026, label %bb.cj
    i32 3857208, label %bb.cm
    i32 124562, label %bb.cp
    i32 123207, label %bb.cs
    i32 127332, label %.noexc.i19
    i32 4443845, label %.noexc.i19
    i32 4190355, label %bb.cw
    i32 127449, label %bb.cz
    i32 3389, label %bb.dc
    i32 133699, label %bb.df
    i32 4236872, label %bb.di
  ]

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.dl unwind label %bb.f

bb.g:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.dl

bb.i:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.dm

bb.j:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dl

bb.l:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dm

._crit_edge.i.i7:                                 ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bp, ptr noundef nonnull align 1 dereferenceable(9) @.str.69, i64 9, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.bq, align 8, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.br, align 1, !tbaa !65
  br label %bb.dl

._crit_edge.i.i10:                                ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bs, ptr noundef nonnull align 1 dereferenceable(15) @.str.70, i64 15, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.bt, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.bu, align 1, !tbaa !65
  br label %bb.dl

bb.m:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.dl

bb.o:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.dm

bb.p:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.dl

bb.r:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.dm

bb.s:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dl

bb.u:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dm

bb.v:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dl

bb.x:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dm

bb.y:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.dl

end_hunk_1
begin_hunk_2_@_ZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE:bb.a
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !159 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.w unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #48
  unreachable

bb.t:                                             ; preds = %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !159 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.by, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.v      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #48
  unreachable

bb.w:                                             ; preds = %bb.r
  %.pre36 = load ptr, ptr %i.bp, align 8, !tbaa !159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i20 = icmp eq ptr %.pre36, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = invoke noundef zeroext i1 %.pre36(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #48
  unreachable

bb.z:                                             ; preds = %.noexc10.i.i, %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.aa:                                            ; preds = %.noexc10.i.i17
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Function_baseD2Ev.exit22

.body:                                            ; preds = %bb.u
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !159 ; 2 uses
  %.not.i21 = icmp eq ptr %.pre, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.ab

bb.ab:                                            ; preds = %.body
  %i.ch = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit22 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.thread, %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.u
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !65
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ad

_ZNSt14_Function_baseD2Ev.exit22:                 ; preds = %bb.t, %bb.ab, %.body, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.aa ], [ %i.bx, %.body ], [ %i.bx, %bb.ab ], [ %i.bx, %bb.t ] ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.u
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt14_Function_baseD2Ev.exit22
  %i.cq = load i64, ptr %i.u, align 8, !tbaa !65
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt14_Function_baseD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN7httplib6detail9trim_copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.e
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ae
  %i.cu = load i64, ptr %i.e, align 8, !tbaa !65
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn12 = phi { ptr, i32 } [ %i.cw, %bb.af ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cx = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.e
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.ag
  %i.cz = load i64, ptr %i.e, align 8, !tbaa !65
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail25can_compress_content_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef null)
  %i.a = load ptr, ptr %1, align 8, !tbaa !77     ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %.not8.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not8.i, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ]
  %.sroa.05.09.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !65
  %i.f = mul i32 %.010.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = mul i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65
  %i.p = mul i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = mul i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, label %.lr.ph.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %.sroa.05.09.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.05.09.i.epil = phi ptr [ %i.ae, %.lr.ph.i.epil ], [ %.sroa.05.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.epil, align 1, !tbaa !65
  %i.aa = mul i32 %.010.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil, !llvm.loop !462

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 1756376, label %bb.c
    i32 10962214, label %bb.c
    i32 16216627, label %bb.c
    i32 36997869, label %bb.c
    i32 49498926, label %bb.c
    i32 45836908, label %bb.c
    i32 832610, label %bb.c
    i32 10752053, label %bb.c
    i32 50414672, label %bb.c
    i32 26386452, label %bb.c
    i32 46606002, label %bb.c
    i32 11954703, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br label %bb.c

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.af = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.106, i64 noundef 0, i64 noundef 5) #23
  %.not = icmp eq i64 %i.af, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %bb.b
  %i.ag = phi ptr [ %.pre, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.a, %bb.b ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.0 = phi i1 [ %.not, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ false, %bb.b ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail13parse_qualityEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %2, ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::function.148", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::function.150", align 8 ; 9 uses
  store double 1.000000e+00, ptr %3, align 8, !tbaa !463
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !64
  %i.e = load ptr, ptr %2, align 8, !tbaa !77
  store i8 0, ptr %i.e, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 4 uses
  store ptr %2, ptr %i.l, align 16, !tbaa !164
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.a, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !465
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !467
  store ptr %i.l, ptr %4, align 8, !tbaa !71
  store ptr @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSI_SJ_", ptr %i.j, align 8, !tbaa !373
  store ptr @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.i, align 8, !tbaa !159
  invoke void @_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE(ptr noundef %0, i64 noundef %i.h, i8 noundef signext 59, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !159  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !64
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.p, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !159  ; 2 uses
  %.not.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #48
  unreachable

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !295
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !314  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.c, ptr %5, align 8, !tbaa !469
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !471
  store ptr @"_ZNSt17_Function_handlerIFbPKcS1_EZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1E9_M_invokeERKSt9_Any_dataOS1_SI_", ptr %i.ac, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbPKcS1_EZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ab, align 8, !tbaa !159
  %i.ad = invoke noundef zeroext i1 @_ZN7httplib6detail10split_findEPKcS2_cmSt8functionIFbS2_S2_EE(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i8 noundef signext 59, i64 noundef -1, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !159 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ae, null
  br i1 %.not.i15, label %_ZNSt14_Function_baseD2Ev.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit16 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit16:                 ; preds = %bb.j, %bb.k
  %i.ai = load i8, ptr %i.c, align 1, !tbaa !295, !range !79, !noundef !80
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = xor i1 %i.aj, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !159 ; 2 uses
  %.not.i17 = icmp eq ptr %i.am, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit18 unwind label %bb.o ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN7httplib6detail19create_decompressorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.o = and i8 %i.n, -33
  %i.p = icmp eq i8 %i.o, 73
  br i1 %i.p, label %.lr.ph.i.i.i.3, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %.sroa.03.07.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.q = load i8, ptr %.sroa.03.07.i.i.ptr.i.3, align 1, !tbaa !65
  %i.r = and i8 %i.q, -33
  %i.s = icmp eq i8 %i.r, 80
  br i1 %i.s, label %.noexc, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread

_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread: ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br label %.loopexit

_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.113, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.v, align 1, !tbaa !65
  %i.w = icmp eq i64 %i.e, 7
  br i1 %i.w, label %.lr.ph.i.preheader.i29.i, label %.loopexit

.lr.ph.i.preheader.i29.i:                         ; preds = %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !77     ; 7 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !65
  %i.z = and i8 %i.y, -33
  %i.aa = icmp eq i8 %i.z, 68
  br i1 %i.aa, label %.lr.ph.i.i30.i.1, label %.loopexit

.lr.ph.i.i30.i.1:                                 ; preds = %.lr.ph.i.preheader.i29.i
  %.sroa.03.07.i.i32.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %.sroa.03.07.i.i32.ptr.i.1, align 1, !tbaa !65
  %i.ac = and i8 %i.ab, -33
  %i.ad = icmp eq i8 %i.ac, 69
  br i1 %i.ad, label %.lr.ph.i.i30.i.2, label %.loopexit

.lr.ph.i.i30.i.2:                                 ; preds = %.lr.ph.i.i30.i.1
  %.sroa.03.07.i.i32.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ae = load i8, ptr %.sroa.03.07.i.i32.ptr.i.2, align 1, !tbaa !65
  %i.af = and i8 %i.ae, -33
  %i.ag = icmp eq i8 %i.af, 70
  br i1 %i.ag, label %.lr.ph.i.i30.i.3, label %.loopexit

.lr.ph.i.i30.i.3:                                 ; preds = %.lr.ph.i.i30.i.2
  %.sroa.03.07.i.i32.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ah = load i8, ptr %.sroa.03.07.i.i32.ptr.i.3, align 1, !tbaa !65
  %i.ai = and i8 %i.ah, -33
  %i.aj = icmp eq i8 %i.ai, 76
  br i1 %i.aj, label %.lr.ph.i.i30.i.4, label %.loopexit

.lr.ph.i.i30.i.4:                                 ; preds = %.lr.ph.i.i30.i.3
  %.sroa.03.07.i.i32.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ak = load i8, ptr %.sroa.03.07.i.i32.ptr.i.4, align 1, !tbaa !65
  %i.al = and i8 %i.ak, -33
  %i.am = icmp eq i8 %i.al, 65
  br i1 %i.am, label %.lr.ph.i.i30.i.5, label %.loopexit

.lr.ph.i.i30.i.5:                                 ; preds = %.lr.ph.i.i30.i.4
  %.sroa.03.07.i.i32.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.an = load i8, ptr %.sroa.03.07.i.i32.ptr.i.5, align 1, !tbaa !65
  %i.ao = and i8 %i.an, -33
  %i.ap = icmp eq i8 %i.ao, 84
  br i1 %i.ap, label %.lr.ph.i.i30.i.6, label %.loopexit

.lr.ph.i.i30.i.6:                                 ; preds = %.lr.ph.i.i30.i.5
  %.sroa.03.07.i.i32.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.aq = load i8, ptr %.sroa.03.07.i.i32.ptr.i.6, align 1, !tbaa !65
  %i.ar = and i8 %i.aq, -33
  %i.as = icmp eq i8 %i.ar, 69
  br i1 %i.as, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.i30.i.6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.noexc

.noexc:                                           ; preds = %.lr.ph.i.i.i.3, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.at = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #50 ; 3 uses
  invoke void @_ZN7httplib6detail17gzip_decompressorC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.at)
          to label %.sink.split unwind label %bb.c, !noalias !545

bb.c:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 128) #46, !noalias !545
  br label %_ZNSt10unique_ptrIN7httplib6detail12decompressorESt14default_deleteIS2_EED2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i.preheader.i29.i, %.lr.ph.i.i30.i.1, %.lr.ph.i.i30.i.2, %.lr.ph.i.i30.i.3, %.lr.ph.i.i30.i.4, %.lr.ph.i.i30.i.5, %.lr.ph.i.i30.i.6, %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread, %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.av = call noundef zeroext i1 @_ZN7httplib6detail20contains_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.110)
  br i1 %i.av, label %.noexc8, label %bb.e

.noexc8:                                          ; preds = %.loopexit
  %i.aw = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 3 uses
  invoke void @_ZN7httplib6detail19brotli_decompressorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.sink.split unwind label %bb.d, !noalias !548

bb.d:                                             ; preds = %.noexc8
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 24) #46, !noalias !548
  br label %_ZNSt10unique_ptrIN7httplib6detail12decompressorESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %.loopexit
  %i.ay = call noundef zeroext i1 @_ZN7httplib6detail20contains_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111)
  br i1 %i.ay, label %.noexc14, label %bb.g

.noexc14:                                         ; preds = %bb.e
  %i.az = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50 ; 3 uses
  invoke void @_ZN7httplib6detail17zstd_decompressorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.sink.split unwind label %bb.f, !noalias !551

bb.f:                                             ; preds = %.noexc14
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 16) #46, !noalias !551
  br label %_ZNSt10unique_ptrIN7httplib6detail12decompressorESt14default_deleteIS2_EED2Ev.exit

.sink.split:                                      ; preds = %.noexc14, %.noexc8, %.noexc
  %.sink = phi ptr [ %i.at, %.noexc ], [ %i.aw, %.noexc8 ], [ %i.az, %.noexc14 ]
  store ptr %.sink, ptr %0, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  ret void

_ZNSt10unique_ptrIN7httplib6detail12decompressorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.au, %bb.c ], [ %i.ax, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail17create_compressorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.251") align 8 captures(none) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50, !noalias !554 ; 3 uses
  invoke void @_ZN7httplib6detail17brotli_compressorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZNSt10unique_ptrIN7httplib6detail17brotli_compressorESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !554

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #46, !noalias !554
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN7httplib6detail17brotli_compressorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !490
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.110, ptr %i.c, align 8, !tbaa !557
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %.not8.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not8.i, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ]
  %.sroa.05.09.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !65
  %i.f = mul i32 %.010.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = mul i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65
  %i.p = mul i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = mul i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, label %.lr.ph.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %.sroa.05.09.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.05.09.i.epil = phi ptr [ %i.ae, %.lr.ph.i.epil ], [ %.sroa.05.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.epil, align 1, !tbaa !65
  %i.aa = mul i32 %.010.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil, !llvm.loop !564

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 16923016, label %bb.b
    i32 16377058, label %bb.b
    i32 49322369, label %bb.b
    i32 48576171, label %bb.b
  ]

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br label %bb.b

bb.b:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.0 = phi i1 [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %.fr.i = freeze i64 %i.c                        ; 6 uses
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not8.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %.fr.i, 3                   ; 3 uses
  %i.d = icmp ult i64 %.fr.i, 4
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.fr.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.x, %.lr.ph.i.i ]
  %.sroa.05.09.i.i = phi ptr [ %i.a, %.lr.ph.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.e = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !65
  %i.f = mul i32 %.010.i.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = mul i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65
  %i.p = mul i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = mul i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %.sroa.05.09.i.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.010.i.i.epil = phi i32 [ %i.ad, %.lr.ph.i.i.epil ], [ %.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.09.i.i.epil = phi ptr [ %i.ae, %.lr.ph.i.i.epil ], [ %.sroa.05.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.i.epil, align 1, !tbaa !65
  %i.aa = mul i32 %.010.i.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !565

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ], [ %i.ad, %.lr.ph.i.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24 [
    i32 16923016, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i32 16377058, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i32 49322369, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i32 48576171, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  ]

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108, !noalias !566 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !107, !noalias !566 ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.ag, %i.ah
  %.pre.i = ptrtoint ptr %i.ag to i64
  %.pre14.i = ptrtoint ptr %i.ah to i64
  %.pre16.i = sub i64 %.pre.i, %.pre14.i
  %.pre18.i = ashr exact i64 %.pre16.i, 6         ; 2 uses
  br i1 %.not.i.i5, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.us.i

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24: ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108, !noalias !566 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !107, !noalias !566 ; 3 uses
  %.not.i.i525 = icmp eq ptr %i.aj, %i.ak
  %.pre.i26 = ptrtoint ptr %i.aj to i64
  %.pre14.i27 = ptrtoint ptr %i.ak to i64
  %.pre16.i28 = sub i64 %.pre.i26, %.pre14.i27
  %.pre18.i29 = ashr exact i64 %.pre16.i28, 6     ; 2 uses
  br i1 %.not.i.i525, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i
  %.0712.i.us.i = phi i64 [ %i.ap, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %.0712.i.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !64, !noalias !566
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.ap = add nuw i64 %.0712.i.us.i, 1            ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.ap, %.pre18.i
  br i1 %exitcond.not.i.us.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.us.i, !llvm.loop !118

.lr.ph.i.split.i:                                 ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i
  %.0712.i.i = phi i64 [ %i.bh, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.0712.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !64, !noalias !566
  %i.at = icmp eq i64 %i.as, %.fr.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.lr.ph.i.split.i
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !77, !noalias !566 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.fr.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.b ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.b ], [ %i.au, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.aw = load i8, ptr %.sroa.03.07.i.i.i.i.i.i, align 1, !tbaa !65, !noalias !566
  %i.ax = load i8, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !65, !noalias !566
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !65, !noalias !566
  %i.bb = zext i8 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !65, !noalias !566
  %i.be = icmp eq i8 %i.ba, %i.bd
  br i1 %i.be, label %bb.b, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !119

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.split.i
  %i.bh = add nuw i64 %.0712.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %.pre18.i29
  br i1 %exitcond.not.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !118

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i: ; preds = %bb.b, %.lr.ph.i.split.us.i
  %.pre18.i3034 = phi i64 [ %.pre18.i, %.lr.ph.i.split.us.i ], [ %.pre18.i29, %bb.b ]
  %.0712.i8.i = phi i64 [ %.0712.i.us.i, %.lr.ph.i.split.us.i ], [ %.0712.i.i, %bb.b ] ; 2 uses
  %i.bi = icmp ne i64 %.0712.i8.i, -1
  %i.bj = icmp ne i64 %.0712.i8.i, %.pre18.i3034
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.0 = phi i1 [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24 ], [ %i.bk, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !63, !alias.scope !569
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !64, !alias.scope !569
  store i8 0, ptr %i.e, align 8, !tbaa !65, !alias.scope !569
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !64, !alias.scope !569
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !64, !alias.scope !569
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !77, !alias.scope !569 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !65, !alias.scope !569
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #46
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #14

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN7httplib6detail22get_header_value_countERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
end_hunk_3
begin_hunk_4_@_ZN7httplib6Server15process_requestERNS_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_ibRbRKSt8functionIFvRNS_7RequestEEEPb:bb.a
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1597
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.k unwind label %bb.l, !inline_history !1598

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cy) #23 ; 0 uses
  br label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cy) #23 ; 0 uses
  br label %.body

_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit: ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !789 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 400 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !787
  %.not.i.i.i = icmp eq ptr %i.dj, %i.dh
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke, label %_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !787
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.d
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit310, %bb.p, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEaSERKSA_.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.o:                                             ; preds = %bb.h
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.dm, %bb.o ], [ %i.de, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  br label %bb.jv

bb.p:                                             ; preds = %bb.e
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 11 uses
  %i.do = invoke noundef zeroext i1 @_ZN7httplib6detail12read_headersERNS_6StreamERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  br i1 %i.do, label %.noexc.i326, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 400, ptr %i.bn, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i32 26, ptr %i.m, align 4, !tbaa !169
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !159
  %.not.i.i.not.i312 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.not.i312, label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit320, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.dt = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ds) #23 ; 2 uses
  %.not.i.i4.i313 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i4.i313, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i314, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.dt) #47
          to label %.noexc317 unwind label %bb.y

.noexc317:                                        ; preds = %bb.t
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i314:     ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %12, ptr %i.j, align 8, !tbaa !1595
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !159
  %.not.i.i5.i315 = icmp eq ptr %i.du, null
  br i1 %.not.i.i5.i315, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i314
  invoke void @_ZSt25__throw_bad_function_callv() #47
          to label %.noexc.i316 unwind label %bb.x

.noexc.i316:                                      ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i314
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1597
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.x, !inline_history !1598

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ds) #23 ; 0 uses
  br label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit320

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ds) #23 ; 0 uses
  br label %.body318

_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit320: ; preds = %bb.w, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !789 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 400 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !787
  %.not.i.i.i321 = icmp eq ptr %i.ed, %i.eb
  br i1 %.not.i.i.i321, label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke, label %_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i322

_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i322: ; preds = %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit320
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !787
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke

bb.y:                                             ; preds = %bb.t
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body318

.body318:                                         ; preds = %bb.x, %bb.y
  %eh.lpad-body319 = phi { ptr, i32 } [ %i.ee, %bb.y ], [ %i.dy, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  br label %bb.jv

.noexc.i326:                                      ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ef, ptr %14, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 17, ptr %i.i, align 8, !tbaa !78
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc327 unwind label %bb.ae ; 2 uses

.noexc327:                                        ; preds = %.noexc.i326
  store ptr %i.eg, ptr %14, align 8, !tbaa !77
  %i.eh = load i64, ptr %i.i, align 8, !tbaa !78  ; 3 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.eg, ptr noundef nonnull align 1 dereferenceable(17) @.str.120, i64 17, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !64
  %i.ej = load ptr, ptr %14, align 8, !tbaa !77
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.el = load ptr, ptr %14, align 8, !tbaa !77   ; 12 uses
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !64
  %.fr.i.i = freeze i64 %i.em                     ; 6 uses
  %.not8.i.i.i = icmp eq i64 %.fr.i.i, 0
  br i1 %.not8.i.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc327
  %xtraiter = and i64 %.fr.i.i, 3                 ; 3 uses
  %i.en = icmp ult i64 %.fr.i.i, 4
  br i1 %i.en, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %.fr.i.i, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.010.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fh, %.lr.ph.i.i.i ]
  %.sroa.05.09.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.preheader.new ], [ %i.fi, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.eo = load i8, ptr %.sroa.05.09.i.i.i, align 1, !tbaa !65
  %i.ep = mul i32 %.010.i.i.i, 33
  %i.eq = zext i8 %i.eo to i32
  %i.er = xor i32 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !65
  %i.eu = mul i32 %i.er, 33
  %i.ev = zext i8 %i.et to i32
  %i.ew = xor i32 %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !65
  %i.ez = mul i32 %i.ew, 33
  %i.fa = zext i8 %i.ey to i32
  %i.fb = xor i32 %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !65
  %i.fe = mul i32 %i.fb, 33
  %i.ff = and i32 %i.fe, 67108863
  %i.fg = zext i8 %i.fd to i32
  %i.fh = xor i32 %i.ff, %i.fg                    ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.010.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fh, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa ]
  %.sroa.05.09.i.i.i.epil.init = phi ptr [ %i.el, %.lr.ph.i.i.i.preheader ], [ %i.fi, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa ]
  %lcmp.mod1169 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1169)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.010.i.i.i.epil = phi i32 [ %i.fn, %.lr.ph.i.i.i.epil ], [ %.010.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.05.09.i.i.i.epil = phi ptr [ %i.fo, %.lr.ph.i.i.i.epil ], [ %.sroa.05.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.fj = load i8, ptr %.sroa.05.09.i.i.i.epil, align 1, !tbaa !65
  %i.fk = mul i32 %.010.i.i.i.epil, 33
  %i.fl = and i32 %i.fk, 67108863
  %i.fm = zext i8 %i.fj to i32
  %i.fn = xor i32 %i.fl, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1854

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa
  %.lcssa1167 = phi i32 [ %i.fh, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa ], [ %i.fn, %.lr.ph.i.i.i.epil ]
  switch i32 %.lcssa1167, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i [
    i32 16923016, label %.critedge295
    i32 16377058, label %.critedge295
    i32 49322369, label %.critedge295
    i32 48576171, label %.critedge295
  ]

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc327
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !108, !noalias !1855 ; 2 uses
  %i.fr = load ptr, ptr %i.dn, align 8, !tbaa !107, !noalias !1855 ; 3 uses
  %.not.i.i5.i710 = icmp eq ptr %i.fq, %i.fr
  %.pre.i.i = ptrtoint ptr %i.fq to i64
  %.pre14.i.i = ptrtoint ptr %i.fr to i64
  %.pre16.i.i = sub i64 %.pre.i.i, %.pre14.i.i
  %.pre18.i.i = ashr exact i64 %.pre16.i.i, 6     ; 2 uses
  br i1 %.not.i.i5.i710, label %.critedge295, label %.lr.ph.i.split.us.i.i

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i: ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !108, !noalias !1855 ; 2 uses
  %i.fu = load ptr, ptr %i.dn, align 8, !tbaa !107, !noalias !1855 ; 3 uses
  %.not.i.i525.i = icmp eq ptr %i.ft, %i.fu
  %.pre.i26.i = ptrtoint ptr %i.ft to i64
  %.pre14.i27.i = ptrtoint ptr %i.fu to i64
  %.pre16.i28.i = sub i64 %.pre.i26.i, %.pre14.i27.i
  %.pre18.i29.i = ashr exact i64 %.pre16.i28.i, 6 ; 2 uses
  br i1 %.not.i.i525.i, label %.critedge295, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i
  %.0712.i.us.i.i = phi i64 [ %i.fz, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [64 x i8], ptr %i.fr, i64 %.0712.i.us.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !64, !noalias !1855
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i: ; preds = %.lr.ph.i.split.us.i.i
  %i.fz = add nuw i64 %.0712.i.us.i.i, 1          ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %i.fz, %.pre18.i.i
  br i1 %exitcond.not.i.us.i.i, label %.critedge295, label %.lr.ph.i.split.us.i.i, !llvm.loop !118

.lr.ph.i.split.i.i:                               ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i
  %.0712.i.i.i = phi i64 [ %i.gr, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [64 x i8], ptr %i.fu, i64 %.0712.i.i.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !64, !noalias !1855
  %i.gd = icmp eq i64 %i.gc, %.fr.i.i
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %.lr.ph.i.split.i.i
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !77, !noalias !1855 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.fr.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.gq, %bb.z ], [ %i.el, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.gp, %bb.z ], [ %i.ge, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.gg = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !65, !noalias !1855
  %i.gh = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !65, !noalias !1855
  %i.gi = zext i8 %i.gg to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !65, !noalias !1855
  %i.gl = zext i8 %i.gh to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !65, !noalias !1855
  %i.go = icmp eq i8 %i.gk, %i.gn
  br i1 %i.go, label %bb.z, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gp, %i.gf
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !119

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i
  %i.gr = add nuw i64 %.0712.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gr, %.pre18.i29.i
  br i1 %exitcond.not.i.i.i, label %.critedge295, label %.lr.ph.i.split.i.i, !llvm.loop !118

_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit: ; preds = %bb.z, %.lr.ph.i.split.us.i.i
  %.pre18.i3034.i = phi i64 [ %.pre18.i.i, %.lr.ph.i.split.us.i.i ], [ %.pre18.i29.i, %bb.z ]
  %.0712.i8.i.i = phi i64 [ %.0712.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %.0712.i.i.i, %bb.z ] ; 2 uses
  %i.gs = icmp ne i64 %.0712.i8.i.i, -1
  %i.gt = icmp ne i64 %.0712.i8.i.i, %.pre18.i3034.i
  %i.gu = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %i.gu, label %._crit_edge.i.i328, label %.critedge295

._crit_edge.i.i328:                               ; preds = %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.gv, ptr %15, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gv, ptr noundef nonnull align 1 dereferenceable(14) @.str.116, i64 14, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 14, ptr %i.gw, align 8, !tbaa !64
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 30
  store i8 0, ptr %i.gx, align 2, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i8 0, ptr %i.h, align 1, !tbaa !295
  %i.gy = invoke noundef i64 @_ZN7httplib6detail20get_header_value_u64ERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_mmRb(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %._crit_edge.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %.not = icmp eq i64 %i.gy, 0
  br i1 %.not, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.gz = invoke noundef zeroext i1 @_ZN7httplib6detail28is_chunked_transfer_encodingERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ha = xor i1 %i.gz, true
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.ac
  %.ph = phi i1 [ %i.ha, %bb.ac ], [ true, %bb.aa ]
  %i.hb = load ptr, ptr %15, align 8, !tbaa !77   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gv
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.hd = load i64, ptr %i.gv, align 8, !tbaa !65
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pre = load ptr, ptr %14, align 8, !tbaa !77
  br label %.critedge295

.critedge295:                                     ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hf = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit ], [ %i.el, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.el, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.el, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.el, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.el, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i ], [ %i.el, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.el, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i ], [ %i.el, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i ] ; 2 uses
  %i.hg = phi i1 [ %.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i ]
  %i.hh = icmp eq ptr %i.hf, %i.ef
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %.critedge295
  %i.hi = load i64, ptr %i.ef, align 8, !tbaa !65
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %.critedge295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %i.hg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  store i8 1, ptr %7, align 1, !tbaa !295
  store i32 400, ptr %i.bn, align 8, !tbaa !86
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !789 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 400 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !787
  %.not.i.i.i336 = icmp eq ptr %i.hn, %i.hl
  br i1 %.not.i.i.i336, label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke, label %_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i337

_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i337: ; preds = %bb.ad
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !787
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i358.invoke

bb.ae:                                            ; preds = %.noexc.i326
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.af:                                            ; preds = %._crit_edge.i.i328, %bb.ab
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SN_mRKSD_RKSC_RKS6_St17integral_constantIbLb1EE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !337
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !85

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !3070
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !85

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #47
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #50
          to label %.noexc10.i unwind label %bb.g ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.d ], [ %i.m, %.noexc10.i ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !335
  store i64 %i.f, ptr %i.b, align 8, !tbaa !337
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %0, ptr %7, align 8, !tbaa !3071
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !3073

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, httplib::detail::case_ignore::equal_to, httplib::detail::case_ignore::hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3074
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.023.041 = load ptr, ptr %i.c, align 8, !tbaa !350 ; 3 uses
  %.not42 = icmp eq ptr %.sroa.023.041, null
  br i1 %.not42, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.023.043.us = phi ptr [ %.sroa.023.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.023.041, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.023.043.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.023.0.us = load ptr, ptr %.sroa.023.043.us, align 8, !tbaa !350 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.023.0.us, null
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !3075

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.023.043 = phi ptr [ %.sroa.023.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.023.041, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !64
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !65
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !65
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !65
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.023.0 = load ptr, ptr %.sroa.023.043, align 8, !tbaa !350 ; 2 uses
  %.not = icmp eq ptr %.sroa.023.0, null
  br i1 %.not, label %.thread, label %.lr.ph.split, !llvm.loop !3075

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !64
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %.thread
  %i.ad = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !65
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !65
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !65
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !65
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !65
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !65
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, %.thread
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %.thread ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !337 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 4 uses
  br i1 %.not.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !335
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2435 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !350 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !2433 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !350 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !2433 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !3076

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !64
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !65
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !65
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !65
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !65
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !119

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !350 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !2433 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !3076

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit: ; preds = %bb.j
  %.not18 = icmp eq ptr %.0.i.i, null
  br i1 %.not18, label %.critedge, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30

.critedge:                                        ; preds = %bb.k, %.loopexit.i.i, %bb.g, %bb.h, %bb.d, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cs = load ptr, ptr %3, align 8, !tbaa !3077, !nonnull !80
  %i.ct = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  store ptr %0, ptr %4, align 8, !tbaa !3079
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !3082
  %i.cv = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bg, i64 noundef %.tr8.lcssa.i.i.i, ptr noundef %i.ct, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.l

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30

bb.l:                                             ; preds = %.critedge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.cw

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30: ; preds = %bb.c, %.lr.ph.split.us, %bb.f, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.cv, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.023.043.us, %.lr.ph.split.us ], [ %.0.us.i.i, %bb.f ], [ %.0.i.i, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit ], [ %.sroa.023.043, %bb.c ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %bb.f ], [ 0, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2438
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !337
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3074
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !2438
  invoke void @__cxa_rethrow() #47
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
  tail call void @__clang_call_terminate(ptr %i.q) #48
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !337
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail14parse_trailersERNS4_18stream_line_readerERNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEERKSG_E3$_0E9_M_invokeERKSt9_Any_dataOS1_SP_":bb.a
  br i1 %i.ac, label %.critedge8.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail14parse_trailersERNS0_18stream_line_readerERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKSC_E19prohibited_trailersB5cxx11)
  %i.ae = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i unwind label %bb.h

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i: ; preds = %bb.f
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %.critedge8.i.i.i

bb.g:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i
  %i.ag = load ptr, ptr %0, align 8, !tbaa !3086, !nonnull !80, !align !156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ag, ptr %3, align 8, !tbaa !3071
  %i.ah = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE6insertERKS5_.exit.i.i.i unwind label %bb.i ; 0 uses

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE6insertERKS5_.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge8.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.critedge8.i.i.i:                                 ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE6insertERKS5_.exit.i.i.i, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i, %bb.e
  %i.ak = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.p
  br i1 %i.al, label %"_ZSt10__invoke_rIvRZN7httplib6detail14parse_trailersERNS1_18stream_line_readerERNS1_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEEERKSD_E3$_0JPKcSK_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge8.i.i.i
  %i.am = load i64, ptr %i.p, align 8, !tbaa !65
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #46
  br label %"_ZSt10__invoke_rIvRZN7httplib6detail14parse_trailersERNS1_18stream_line_readerERNS1_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEEERKSD_E3$_0JPKcSK_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.ai, %bb.h ]
  %i.ao = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.p
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i.i: ; preds = %bb.j
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !65
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZN7httplib6detail14parse_trailersERNS1_18stream_line_readerERNS1_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEEERKSD_E3$_0JPKcSK_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %.critedge8.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail14parse_trailersERNS4_18stream_line_readerERNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEERKSG_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail14parse_trailersERNS0_18stream_line_readerERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKSC_E3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !339
  store i64 %.val.i, ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3074
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.c, align 8, !tbaa !350 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.06.017, null
  br i1 %.not18, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.06.019.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.06.017, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.019.us, align 8, !tbaa !350 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !3088

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !64
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !65
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !65
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !65
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.019, align 8, !tbaa !350 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !3088

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !64
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !65
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !65
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !65
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !65
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !65
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !65
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %bb.d
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !337 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !335
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2435 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !350 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !2433 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !350 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !2433 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !3089

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !64
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !77
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !65
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !65
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !65
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !65
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !119

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !350 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !2433 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !3089

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.019, %bb.c ], [ %.sroa.06.019.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS6_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #50 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !63, !alias.scope !3090, !noalias !3093
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !3093, !noalias !3090 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !64, !alias.scope !3093, !noalias !3090 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !3095
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !3090, !noalias !3093
  %i.z = load i64, ptr %i.t, align 8, !tbaa !65, !alias.scope !3093, !noalias !3090
  store i64 %i.z, ptr %i.r, align 8, !tbaa !65, !alias.scope !3090, !noalias !3093
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !64, !alias.scope !3093, !noalias !3090
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !64, !alias.scope !3090, !noalias !3093
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !3093, !noalias !3090
  store i64 0, ptr %i.ab, align 8, !tbaa !64, !alias.scope !3093, !noalias !3090
  store i8 0, ptr %i.t, align 8, !tbaa !65, !alias.scope !3093, !noalias !3090
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !63, !alias.scope !3090, !noalias !3093
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !77, !alias.scope !3093, !noalias !3090 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFbPKcmmmEZNK7httplib6Server17read_content_coreERNS3_6StreamERNS3_7RequestERNS3_8ResponseESt8functionIFbS1_mEESB_IFbRKNS3_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation":bb.a
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK7httplib6Server17read_content_coreERNS_6StreamERNS_7RequestERNS_8ResponseESt8functionIFbPKcmEES7_IFbRKNS_8FormDataEEESB_E3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %.val, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !3682
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !71 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7httplib6detail14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS4_IFbS3_mEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.httplib::detail::insertion_ordered_multimap.65", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 16 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3683 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 20 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3684 ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %.not.i = icmp ne i64 %i.j, %i.l
  %.not22.i = icmp ne i64 %i.l, 0
  %or.cond.not27.i = and i1 %.not.i, %.not22.i
  br i1 %or.cond.not27.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = sub i64 %i.l, %i.j
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.m, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01823.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ar, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.q = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 %.01823.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.01823.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !65
  %i.w = or disjoint i64 %.01823.i, 1             ; 2 uses
  %i.x = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !65
  %i.ad = or disjoint i64 %.01823.i, 2            ; 2 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ad
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !65
  %i.ak = or disjoint i64 %.01823.i, 3            ; 2 uses
  %i.al = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !65
  %i.ar = add nuw i64 %.01823.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3685

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i
  %.01823.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ar, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod963 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod963)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.01823.i.epil = phi i64 [ %.01823.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.as = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %.01823.i.epil
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !65
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.01823.i.epil
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !65
  %i.ay = add nuw i64 %.01823.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.c, !llvm.loop !3686

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.c, %bb.a
  store i64 0, ptr %i.k, align 8, !tbaa !3684
  store i64 %i.m, ptr %i.i, align 8, !tbaa !3683
  %i.az = add i64 %i.m, %2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 14 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.bd = icmp ugt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.az, i8 noundef signext 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.not28.i = icmp eq i64 %2, 0
  br i1 %.not28.i, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.e
  %xtraiter964 = and i64 %2, 3                    ; 3 uses
  %i.be = icmp ult i64 %2, 4
  br i1 %i.be, label %.lr.ph25.i.epil.preheader, label %.lr.ph25.i.preheader.new

.lr.ph25.i.preheader.new:                         ; preds = %.lr.ph25.i.preheader
  %unroll_iter968 = and i64 %2, -4
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.i.preheader.new
  %.024.i = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %i.cg, %.lr.ph25.i ] ; 6 uses
  %niter969 = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %niter969.next.3, %.lr.ph25.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !65
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %.024.i
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !65
  %i.bl = or disjoint i64 %.024.i, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !65
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bl
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !65
  %i.bs = or disjoint i64 %.024.i, 2              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !65
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs
  store i8 %i.bu, ptr %i.by, align 1, !tbaa !65
  %i.bz = or disjoint i64 %.024.i, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !65
  %i.cc = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.cd = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bz
  store i8 %i.cb, ptr %i.cf, align 1, !tbaa !65
  %i.cg = add nuw i64 %.024.i, 4                  ; 2 uses
  %niter969.next.3 = add nuw i64 %niter969, 4     ; 2 uses
  %niter969.ncmp.3 = icmp eq i64 %niter969.next.3, %unroll_iter968
  br i1 %niter969.ncmp.3, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !3687

_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph25.i
  %lcmp.mod966.not = icmp eq i64 %xtraiter964, 0
  br i1 %lcmp.mod966.not, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, %.lr.ph25.i.preheader
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph25.i.preheader ], [ %i.cg, %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod967 = icmp ne i64 %xtraiter964, 0
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %.lr.ph25.i.epil

.lr.ph25.i.epil:                                  ; preds = %.lr.ph25.i.epil, %.lr.ph25.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.cn, %.lr.ph25.i.epil ], [ %.024.i.epil.init, %.lr.ph25.i.epil.preheader ] ; 3 uses
  %epil.iter965 = phi i64 [ %epil.iter965.next, %.lr.ph25.i.epil ], [ 0, %.lr.ph25.i.epil.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i.epil
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !65
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.ck = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.024.i.epil
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !65
  %i.cn = add nuw i64 %.024.i.epil, 1
  %epil.iter965.next = add i64 %epil.iter965, 1   ; 2 uses
  %epil.iter965.cmp.not = icmp eq i64 %epil.iter965.next, %xtraiter964
  br i1 %epil.iter965.cmp.not, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.epil, !llvm.loop !3688

_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit: ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, %.lr.ph25.i.epil, %bb.e
  %i.co = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.cp = add i64 %i.co, %2                       ; 3 uses
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !3683
  %i.cq = load i64, ptr %i.k, align 8, !tbaa !3684 ; 10 uses
  %.not504 = icmp eq i64 %i.cp, %i.cq
  br i1 %.not504, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.pre = load i64, ptr %i.cr, align 8, !tbaa !1735
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.dl
  %i.ej = phi i64 [ %i.cp, %.lr.ph ], [ %i.vj, %bb.dl ] ; 11 uses
  switch i64 %.pre, label %bb.dl [
    i64 0, label %bb.g
    i64 1, label %.loopexit771
    i64 2, label %.loopexit772
    i64 3, label %.loopexit773.loopexit
    i64 4, label %.loopexit774.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !77 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !65  ; 2 uses
  %i.em = icmp ult i64 %i.cq, %i.ej
  br i1 %i.em, label %.preheader.lr.ph.i, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.en = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.eo = load i64, ptr %i.ei, align 8
  %.fr40.i = freeze i64 %i.eo                     ; 3 uses
  %i.ep = icmp eq i64 %.fr40.i, 0
  br i1 %i.ep, label %.preheader.us.i, label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %bb.h
  %.01633.us.i = phi i64 [ %i.et, %bb.h ], [ %i.cq, %.preheader.lr.ph.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01633.us.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !65
  %i.es = icmp eq i8 %i.er, %i.el
  br i1 %i.es, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.us.i
  %i.et = add i64 %.01633.us.i, 1                 ; 2 uses
  %i.eu = icmp eq i64 %i.et, %i.ej
  br i1 %i.eu, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.us.i, !llvm.loop !3689

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheader.i.backedge
  %.01633.i = phi i64 [ %.01633.i.be, %.preheader.i.backedge ], [ %i.cq, %.preheader.lr.ph.i ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01633.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !65
  %i.ex = icmp eq i8 %i.ew, %i.el
  br i1 %i.ex, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.ey = add i64 %.01633.i, 1                    ; 2 uses
  %i.ez = icmp eq i64 %i.ey, %i.ej
  br i1 %i.ez, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.i, %bb.l
  %.01633.i.be = phi i64 [ %i.ey, %bb.i ], [ %i.fh, %bb.l ]
  br label %.preheader.i, !llvm.loop !3690

bb.j:                                             ; preds = %.preheader.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01633.i
  %i.fb = sub i64 %i.ej, %.01633.i
  %i.fc = icmp ugt i64 %.fr40.i, %i.fb
  br i1 %i.fc, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.fd = add nuw i64 %.01214.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fd, %.fr40.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !3691

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.01214.i.i = phi i64 [ %i.fd, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %gep.i.i = getelementptr i8, ptr %i.fa, i64 %.01214.i.i
  %i.fe = load i8, ptr %gep.i.i, align 1, !tbaa !65
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.01214.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.fe, %i.fg
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.fh = add i64 %.01633.i, 1                    ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.ej
  br i1 %i.fi, label %.preheader.i.backedge, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.k, %.preheader.us.i
  %.pn.i = phi i64 [ %.01633.us.i, %.preheader.us.i ], [ %.01633.i, %bb.k ] ; 2 uses
  %i.fj = icmp eq i64 %.pn.i, %i.ej
  br i1 %i.fj, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %bb.m

bb.m:                                             ; preds = %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fk = load i64, ptr %i.ei, align 8, !tbaa !64
  %i.fl = add i64 %i.fk, %.pn.i
  br label %bb.dp

.loopexit771:                                     ; preds = %bb.f, %bb.dp
  store i64 0, ptr %i.ee, align 8, !tbaa !64
  %i.fm = load ptr, ptr %i.dp, align 8, !tbaa !77
  store i8 0, ptr %i.fm, align 1, !tbaa !65
  store i64 0, ptr %i.ea, align 8, !tbaa !64
  %i.fn = load ptr, ptr %i.ds, align 8, !tbaa !77
  store i8 0, ptr %i.fn, align 1, !tbaa !65
  store i64 0, ptr %i.dj, align 8, !tbaa !64
  %i.fo = load ptr, ptr %i.df, align 8, !tbaa !77
  store i8 0, ptr %i.fo, align 1, !tbaa !65
  %i.fp = load ptr, ptr %i.ef, align 8, !tbaa !107 ; 3 uses
  %i.fq = load ptr, ptr %i.eg, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i.i.i.i, label %bb.do, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.loopexit771, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gc, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i ], [ %i.fp, %.loopexit771 ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !77 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !65
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
end_hunk_7
