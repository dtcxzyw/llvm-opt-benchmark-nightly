Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_map?download=true
inline.NumInlined: 891
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7TestMap21testForEachNodeInAreaEP8IGameDef:bb.a
  br i1 %.not.not.i.i385, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %.sroa.06.012.i.i394 = load ptr, ptr %i.q, align 8, !tbaa !94 ; 2 uses
  %.not13.i.i395 = icmp eq ptr %.sroa.06.012.i.i394, null
  br i1 %.not13.i.i395, label %.loopexit, label %.lr.ph.i.i396

.lr.ph.i.i396:                                    ; preds = %bb.fs
  %i.ul = load i16, ptr %6, align 8, !tbaa !36
  %i.um = load i16, ptr %.sroa.9.0..sroa_idx, align 2
  %i.un = load i16, ptr %.sroa.13.0..sroa_idx, align 4
  br label %bb.ft

bb.ft:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398, %.lr.ph.i.i396
  %.sroa.06.014.i.i397 = phi ptr [ %.sroa.06.012.i.i394, %.lr.ph.i.i396 ], [ %.sroa.06.0.i.i399, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398 ] ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i397, i64 8
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !36
  %i.uq = icmp eq i16 %i.ul, %i.up
  br i1 %i.uq, label %bb.fu, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398

bb.fu:                                            ; preds = %bb.ft
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i397, i64 10
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !37
  %i.ut = icmp eq i16 %i.um, %i.us
  br i1 %i.ut, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i401, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i401: ; preds = %bb.fu
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i397, i64 12
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !38
  %i.uw = icmp eq i16 %i.un, %i.uv
  br i1 %i.uw, label %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit402, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i401, %bb.fu, %bb.ft
  %.sroa.06.0.i.i399 = load ptr, ptr %.sroa.06.014.i.i397, align 8, !tbaa !94 ; 2 uses
  %.not.i.i400 = icmp eq ptr %.sroa.06.0.i.i399, null
  br i1 %.not.i.i400, label %.loopexit, label %bb.ft, !llvm.loop !130

bb.fv:                                            ; preds = %bb.fr
  %i.ux = load i16, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.uy = sext i16 %i.ux to i64                   ; 2 uses
  %i.uz = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !37 ; 2 uses
  %i.va = sext i16 %i.uz to i64                   ; 2 uses
  %i.vb = load i16, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !38 ; 2 uses
  %i.vc = sext i16 %i.vb to i64
  %i.vd = call i64 @llvm.fshl.i64(i64 %i.uy, i64 %i.uy, i64 40)
  %i.ve = call i64 @llvm.fshl.i64(i64 %i.va, i64 %i.va, i64 16)
  %i.vf = xor i64 %i.ve, %i.vd
  %i.vg = xor i64 %i.vf, %i.vc                    ; 2 uses
  %i.vh = load i64, ptr %i.p, align 8, !tbaa !50  ; 2 uses
  %i.vi = urem i64 %i.vg, %i.vh                   ; 2 uses
  %i.vj = load ptr, ptr %8, align 8, !tbaa !49
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vi
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i386 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i.i386, label %.loopexit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !94 ; 2 uses
  %.phi.trans.insert.i.i.i.i387 = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %.pre.i.i.i.i388 = load i64, ptr %.phi.trans.insert.i.i.i.i387, align 8, !tbaa !97
  br label %bb.fx

bb.fx:                                            ; preds = %bb.ga, %bb.fw
  %i.vn = phi i64 [ %.pre.i.i.i.i388, %bb.fw ], [ %i.wb, %bb.ga ]
  %i.vo = phi ptr [ %i.vm, %bb.fw ], [ %i.vz, %bb.ga ] ; 4 uses
  %i.vp = icmp eq i64 %i.vg, %i.vn
  br i1 %i.vp, label %bb.fy, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389

bb.fy:                                            ; preds = %bb.fx
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !36
  %i.vs = icmp eq i16 %i.ux, %i.vr
  br i1 %i.vs, label %bb.fz, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389

bb.fz:                                            ; preds = %bb.fy
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 10
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !37
  %i.vv = icmp eq i16 %i.uz, %i.vu
  br i1 %i.vv, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i.i.i393, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i.i.i393: ; preds = %bb.fz
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vo, i64 12
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !38
  %i.vy = icmp eq i16 %i.vb, %i.vx
  br i1 %i.vy, label %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit402, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i.i.i393, %bb.fz, %bb.fy, %bb.fx
  %i.vz = load ptr, ptr %i.vo, align 8, !tbaa !94 ; 3 uses
  %.not18.i.i.i.i390 = icmp eq ptr %i.vz, null
  br i1 %.not18.i.i.i.i390, label %.loopexit, label %bb.ga

bb.ga:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !97 ; 2 uses
  %i.wc = urem i64 %i.wb, %i.vh
  %.not19.i.i.i.i391 = icmp eq i64 %i.wc, %i.vi
  br i1 %.not19.i.i.i.i391, label %bb.fx, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i.i.i389, %bb.ga, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i398, %bb.fv, %bb.fs
  %i.wd = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.gb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread

bb.gb:                                            ; preds = %.loopexit
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.wd, ptr noundef nonnull align 8 %31, ptr noundef nonnull @.str.7, i32 noundef 143)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  invoke void @__cxa_throw(ptr nonnull %i.wd, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.gw unwind label %bb.gd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread: ; preds = %.loopexit
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.080 = phi i1 [ false, %bb.gc ], [ true, %bb.gb ] ; 2 uses
  %i.wf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.wg = load ptr, ptr %31, align 8, !tbaa !20   ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.gd
  %i.wj = load i64, ptr %i.wh, align 8, !tbaa !21
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wk) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br i1 %.080, label %bb.ge, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br i1 %.080, label %bb.ge, label %.body

bb.ge:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %.pn182535 = phi { ptr, i32 } [ %i.we, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread ], [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ], [ %i.wf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ]
  call void @__cxa_free_exception(ptr %i.wd) #22
  br label %.body

_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit402: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i.i.i393, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i401
  %i.wl = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeESaIS7_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEEixERS9_.exit407 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEEixERS9_.exit407: ; preds = %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit402
  %i.wm = load i16, ptr %i.wl, align 4, !tbaa !136 ; 2 uses
  %i.wn = icmp eq i16 %i.wm, %i.g
  br i1 %i.wn, label %bb.gp, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEEixERS9_.exit407
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %33)
          to label %bb.gg unwind label %bb.gj

bb.gg:                                            ; preds = %bb.gf
  %i.wo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.32, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409 unwind label %bb.gk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409: ; preds = %bb.gg
  %i.wp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %_ZNSolsEPFRSoS_E.exit411 unwind label %bb.gk, !inline_history !129 ; 2 uses

_ZNSolsEPFRSoS_E.exit411:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409
  %i.wq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wp, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413 unwind label %bb.gk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413: ; preds = %_ZNSolsEPFRSoS_E.exit411
  %i.wr = zext i16 %i.wm to i64
  %i.ws = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.wp, i64 noundef %i.wr)
          to label %_ZNSolsEt.exit415 unwind label %bb.gk ; 0 uses

_ZNSolsEt.exit415:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %_ZNSolsEPFRSoS_E.exit417 unwind label %bb.gk, !inline_history !129 ; 2 uses

_ZNSolsEPFRSoS_E.exit417:                         ; preds = %_ZNSolsEt.exit415
  %i.wu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wt, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419 unwind label %bb.gk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419: ; preds = %_ZNSolsEPFRSoS_E.exit417
  %i.wv = zext i16 %i.g to i64
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.wt, i64 noundef %i.wv)
          to label %_ZNSolsEt.exit421 unwind label %bb.gk ; 0 uses

_ZNSolsEt.exit421:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419
  %i.wx = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(112) %33)
          to label %bb.gh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.thread

bb.gh:                                            ; preds = %_ZNSolsEt.exit421
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.wx, ptr noundef nonnull align 8 %34, ptr noundef nonnull @.str.7, i32 noundef 144)
          to label %bb.gi unwind label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  invoke void @__cxa_throw(ptr nonnull %i.wx, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.gw unwind label %bb.gl

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader189.lr.ph.i, %.loopexit.i.i, %.critedge.i.i, %.preheader189.lr.ph.i.us.preheader, %.noexc228.us, %.noexc228.us.1, %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit402, %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit362, %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit322, %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE4findERS9_.exit
  %lpad.loopexit.split-lp959 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gj:                                            ; preds = %bb.gf
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit419, %_ZNSolsEPFRSoS_E.exit417, %_ZNSolsEt.exit415, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413, %_ZNSolsEPFRSoS_E.exit411, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409, %bb.gg
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.thread: ; preds = %_ZNSolsEt.exit421
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gi, %bb.gh
  %.0 = phi i1 [ false, %bb.gi ], [ true, %bb.gh ] ; 2 uses
  %i.xb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xc = load ptr, ptr %34, align 8, !tbaa !20   ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.gl
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !21
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #21
  br i1 %.0, label %bb.gm, label %bb.gn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.gl
  br i1 %.0, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  %.pn177538 = phi { ptr, i32 } [ %i.xa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.thread ], [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424 ], [ %i.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422 ]
  call void @__cxa_free_exception(ptr %i.wx) #22
  br label %bb.gn

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, %bb.gm, %bb.gk
  %.pn177.pn = phi { ptr, i32 } [ %.pn177538, %bb.gm ], [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424 ], [ %i.wz, %bb.gk ], [ %i.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %33) #22
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gj
  %.pn177.pn.pn = phi { ptr, i32 } [ %.pn177.pn, %bb.gn ], [ %i.wy, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %.body

bb.gp:                                            ; preds = %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEEixERS9_.exit407
  %i.xh = load ptr, ptr %i.q, align 8, !tbaa !103 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.xh, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.gp, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.xi, %.lr.ph.i.i.i.i ], [ %i.xh, %bb.gp ] ; 2 uses
  %i.xi = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #21
  %.not.i.i.i.i425 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i.i425, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.gp
  %i.xj = load ptr, ptr %8, align 8, !tbaa !49
  %i.xk = load i64, ptr %i.p, align 8, !tbaa !50
  %i.xl = shl i64 %i.xk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.xj, i8 0, i64 %i.xl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.xm = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.o
  br i1 %i.xn, label %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.xo = load i64, ptr %i.p, align 8, !tbaa !50
  %i.xp = shl i64 %i.xo, 3
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xp) #21
  br label %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit

_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.xq = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.not5.i.i.i.i426 = icmp eq ptr %i.xq, null
  br i1 %.not5.i.i.i.i426, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i427

.lr.ph.i.i.i.i427:                                ; preds = %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit, %.lr.ph.i.i.i.i427
  %.06.i.i.i.i428 = phi ptr [ %i.xr, %.lr.ph.i.i.i.i427 ], [ %i.xq, %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit ] ; 2 uses
  %i.xr = load ptr, ptr %.06.i.i.i.i428, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i428, i64 noundef 24) #21
  %.not.i.i.i.i429 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i.i429, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i427, !llvm.loop !3

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i427, %_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit
  %i.xs = load ptr, ptr %7, align 8, !tbaa !46
  %i.xt = load i64, ptr %i.k, align 8, !tbaa !47
  %i.xu = shl i64 %i.xt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.xs, i8 0, i64 %i.xu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.xv = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.j
  br i1 %i.xw, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.xx = load i64, ptr %i.k, align 8, !tbaa !47
  %i.xy = shl i64 %i.xx, 3
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #21
  br label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.body.i, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.go, %bb.fq, %bb.es, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %bb.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %bb.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.ck, %bb.da, %bb.cf, %bb.bs
  %.pn188.pn = phi { ptr, i32 } [ %.pn188514, %bb.dk ], [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %.pn186521, %bb.ei ], [ %i.qm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ %.pn184528, %bb.fg ], [ %i.tj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ %.pn182535, %bb.ge ], [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ], [ %.pn167.pn.pn, %bb.es ], [ %i.tj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %.pn172.pn.pn, %bb.fq ], [ %i.qm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323 ], [ %.pn177.pn.pn, %bb.go ], [ %eh.lpad-body115.i, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.body.i ], [ %i.wf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %eh.lpad-body.i, %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.body.i ], [ %.pn158.pn.pn, %bb.da ], [ %.pn156507, %bb.cp ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.pn154504, %bb.ck ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn150.pn.pn, %bb.cf ], [ %.pn.pn.pn, %bb.bs ], [ %.pn162.pn.pn, %bb.du ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ], [ %lpad.loopexit.split-lp959, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.gs

bb.gs:                                            ; preds = %.body, %bb.bm
  %.pn188.pn.pn = phi { ptr, i32 } [ %.pn188.pn, %.body ], [ %i.jo, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.bl
  %.pn188.pn.pn.pn = phi { ptr, i32 } [ %.pn188.pn.pn, %bb.gs ], [ %i.jn, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.bk
  %.pn188.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn188.pn.pn.pn, %bb.gt ], [ %i.jm, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.bj
  %.pn188.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn188.pn.pn.pn.pn, %bb.gu ], [ %i.jl, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn188.pn.pn.pn.pn.pn

bb.gw:                                            ; preds = %bb.gi, %bb.gc, %bb.fk, %bb.fe, %bb.em, %bb.eg, %bb.do, %bb.di, %bb.cu, %bb.cn, %bb.ci, %bb.bz, %bb.bi
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i48 %2, i48 %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.016.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.217.0.extract.shift = lshr i48 %2, 16
  %.sroa.217.0.extract.trunc = trunc i48 %.sroa.217.0.extract.shift to i16 ; 2 uses
  %.sroa.318.0.extract.shift = lshr i48 %2, 32
  %.sroa.318.0.extract.trunc = trunc nuw i48 %.sroa.318.0.extract.shift to i16 ; 2 uses
  %.sroa.015.0.extract.trunc = trunc i48 %3 to i16 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %3, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  tail call void @_ZN3MapC2EP8IGameDef(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV8DummyMap, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = ashr i48 %3, 32
  %i.b = trunc nsw i48 %i.a to i32                ; 2 uses
  %i.c = sext i16 %.sroa.318.0.extract.trunc to i32
  %.not48 = icmp sgt i32 %i.c, %i.b
  br i1 %.not48, label %._crit_edge50, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not2342 = icmp sgt i16 %.sroa.016.0.extract.trunc, %.sroa.015.0.extract.trunc
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not2440 = icmp sgt i16 %.sroa.217.0.extract.trunc, %.sroa.2.0.extract.trunc
  br i1 %.not2342, label %._crit_edge50, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge47
  %.01949 = phi i16 [ %i.g, %._crit_edge47 ], [ %.sroa.318.0.extract.trunc, %.preheader.lr.ph ] ; 4 uses
  %.sroa.7.0.insert.ext = zext i16 %.01949 to i32
  %.sroa.7.0.insert.shift = shl nuw i32 %.sroa.7.0.insert.ext, 16
  %i.f = sext i16 %.01949 to i64
  br label %bb.b

._crit_edge50:                                    ; preds = %._crit_edge47, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge47:                                    ; preds = %._crit_edge
  %i.g = add i16 %.01949, 1                       ; 2 uses
  %i.h = sext i16 %i.g to i32
  %.not = icmp sgt i32 %i.h, %i.b
  br i1 %.not, label %._crit_edge50, label %.preheader, !llvm.loop !137

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.02243 = phi i16 [ %.sroa.016.0.extract.trunc, %.preheader ], [ %i.al, %._crit_edge ] ; 4 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

end_hunk_0
begin_hunk_1_@_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = sext i16 %.02243 to i64                  ; 2 uses
  %i.k = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 32)
  %i.l = xor i64 %i.k, %i.f                       ; 3 uses
  %i.m = load i64, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.n = urem i64 %i.l, %i.m                      ; 3 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.s = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.ae, %bb.g ]
  %i.t = phi ptr [ %i.r, %bb.e ], [ %i.ac, %bb.g ] ; 4 uses
  %i.u = icmp eq i64 %i.l, %i.s
  br i1 %i.u, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i16, ptr %i.v, align 2, !tbaa !142
  %i.x = icmp eq i16 %.02243, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %.01949, %i.z
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %.loopexit34, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %bb.f
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !94  ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.af = urem i64 %i.ae, %i.m
  %.not19.i.i.i = icmp eq i64 %i.af, %i.n
  br i1 %.not19.i.i.i, label %bb.f, label %.loopexit.i, !llvm.loop !138

.loopexit.i:                                      ; preds = %bb.g, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i, %bb.d
  %i.ag = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %.loopexit.i
  store ptr null, ptr %i.ag, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !145
  %i.aj = invoke ptr @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.n, i64 noundef %i.l, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit34 unwind label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #21
  br label %.body

.loopexit34:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %.noexc
  %.pn.i = phi ptr [ %i.aj, %.noexc ], [ %i.t, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %i.i, ptr %.1.i, align 8, !tbaa !146
  br i1 %.not2440, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.loopexit34
  %i.al = add i16 %.02243, 1                      ; 2 uses
  %.not23 = icmp sgt i16 %i.al, %.sroa.015.0.extract.trunc
  br i1 %.not23, label %._crit_edge47, label %bb.b, !llvm.loop !139

bb.h:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21
  br label %.body

.lr.ph:                                           ; preds = %.loopexit34, %bb.i
  %.041 = phi i16 [ %i.ao, %bb.i ], [ %.sroa.217.0.extract.trunc, %.loopexit34 ] ; 2 uses
  %i.an = invoke noundef ptr @_ZN9MapSector16createBlankBlockEs(ptr noundef nonnull align 8 dereferenceable(98) %i.i, i16 noundef signext %.041)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.lr.ph
  %i.ao = add i16 %.041, 1                        ; 2 uses
  %.not24 = icmp sgt i16 %i.ao, %.sroa.2.0.extract.trunc
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !140

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %.loopexit.i, %bb.b
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.ak, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN3Map7setNodeEN4core8vector3dIsEE7MapNode(ptr noundef nonnull align 8 dereferenceable(144), i48, i32) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !50
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

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
  br i1 %.not75.i, label %.preheader.i.preheader, label %bb.a

.preheader.i.preheader:                           ; preds = %.preheader204.lr.ph.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 1, ptr %i.e, align 1, !tbaa !147
  %i.g = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0, ptr noundef nonnull %i.e)
          to label %.preheader.us213.us.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.us213.us.i.preheader:                  ; preds = %.preheader.i.preheader
  %or.cond11.i.us.us.us.i = icmp eq i32 %i.g, 127
  br i1 %or.cond11.i.us.us.us.i, label %.noexc18, label %_ZNK7MapNodeeqERKS_.exit.thread.i.i

.noexc18:                                         ; preds = %.preheader.us213.us.i.preheader
  %5 = load i8, ptr %i.e, align 1, !tbaa !147, !range !91, !noundef !92
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %.noexc.i122.i, label %._crit_edge.i

bb.a:                                             ; preds = %.preheader204.lr.ph.split.split.i
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %.sroa.0.0.copyload.i.i = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 1, ptr %i.e, align 1, !tbaa !147
  %9 = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0, ptr noundef nonnull %i.e)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.a
  %or.cond11.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, %9
  br i1 %or.cond11.i.i, label %bb.j, label %_ZNK7MapNodeeqERKS_.exit.thread.i.i

_ZNK7MapNodeeqERKS_.exit.thread.i.i:              ; preds = %.noexc19, %.preheader.us213.us.i.preheader
  %i.h = call ptr @__cxa_allocate_exception(i64 72) #22 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 39, ptr %i.a, align 8, !tbaa !31
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc139.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc139.i:                                      ; preds = %_ZNK7MapNodeeqERKS_.exit.thread.i.i
  store ptr %i.j, ptr %2, align 8, !tbaa !20
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.j, ptr noundef nonnull align 1 dereferenceable(39) @.str.41, i64 39, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !29
  %i.o = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i

bb.b:                                             ; preds = %.noexc139.i
  %i.q = load i64, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i: ; preds = %.noexc139.i
  store ptr %i.o, ptr %i.h, align 8, !tbaa !20
  %i.t = load i64, ptr %i.i, align 8, !tbaa !21
  store i64 %i.t, ptr %i.n, align 8, !tbaa !21
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i, %bb.b
  %i.u = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i ], [ %i.q, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !30
  store ptr %i.i, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %i.l, align 8, !tbaa !30
  store i8 0, ptr %i.i, align 8, !tbaa !21
  %i.w = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.h       ; 4 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !29
  %i.z = icmp eq ptr %i.w, null
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #24
          to label %.noexc.i133.i unwind label %bb.h

.noexc.i133.i:                                    ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !31
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i131.i, label %._crit_edge.i.i.i130.i

.noexc.i.i131.i:                                  ; preds = %bb.e
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc6.i132.i unwind label %bb.h ; 2 uses

.noexc6.i132.i:                                   ; preds = %.noexc.i.i131.i
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !20
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !21
  br label %._crit_edge.i.i.i130.i

._crit_edge.i.i.i130.i:                           ; preds = %.noexc6.i132.i, %bb.e
  %i.ae = phi ptr [ %i.ac, %.noexc6.i132.i ], [ %i.y, %bb.e ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i130.i
  %i.af = load i8, ptr %i.w, align 1, !tbaa !21
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !21
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i.i130.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.w, i64 %i.aa, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i.i131.i, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %.body134.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !21
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #21
  br label %.body134.i

bb.i:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i130.i
  %i.al = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.al, ptr %i.am, align 8, !tbaa !30
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 155, ptr %i.ap, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.s unwind label %.body134.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %_ZNK7MapNodeeqERKS_.exit.thread.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.body134.i:                                       ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.i
  br i1 %i.as, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i: ; preds = %.body134.i
  %i.at = load i64, ptr %i.i, align 8, !tbaa !21
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #21
  br label %.sink.split.i.i

.body134.thread.i:                                ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.i
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.body134.thread.i
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !21
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

bb.j:                                             ; preds = %.noexc19
  %i.ba = load i8, ptr %i.e, align 1, !tbaa !147, !range !91, !noundef !92
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.noexc.i122.i, label %._crit_edge.i

.noexc.i122.i:                                    ; preds = %bb.j, %.noexc18
  %i.bc = call ptr @__cxa_allocate_exception(i64 72) #22 ; 13 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.bd, ptr %3, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 18, ptr %i.c, align 8, !tbaa !31
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc123.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ; 2 uses

.noexc123.i:                                      ; preds = %.noexc.i122.i
  store ptr %i.be, ptr %3, align 8, !tbaa !20
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.be, ptr noundef nonnull align 1 dereferenceable(18) @.str.42, i64 18, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !30
  %i.bh = load ptr, ptr %3, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 5 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !29
  %i.bk = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bd
  br i1 %i.bl, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

bb.k:                                             ; preds = %.noexc123.i
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !30 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %.noexc123.i
  store ptr %i.bk, ptr %i.bc, align 8, !tbaa !20
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !21
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !21
  %.pre281.i = load i64, ptr %i.bg, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i, %bb.k
  %i.bq = phi i64 [ %.pre281.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %i.bm, %bb.k ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !30
  store ptr %i.bd, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %i.bg, align 8, !tbaa !30
  store i8 0, ptr %i.bd, align 8, !tbaa !21
  %i.bs = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef nonnull @.str.7)
          to label %bb.l unwind label %bb.q       ; 4 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 3 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !29
  %i.bv = icmp eq ptr %i.bs, null
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #24
          to label %.noexc.i117.i unwind label %bb.q

.noexc.i117.i:                                    ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bs) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.bw, ptr %i.d, align 8, !tbaa !31
  %i.bx = icmp ugt i64 %i.bw, 15
  br i1 %i.bx, label %.noexc.i.i115.i, label %._crit_edge.i.i.i114.i

.noexc.i.i115.i:                                  ; preds = %bb.n
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc6.i116.i unwind label %bb.q ; 2 uses

.noexc6.i116.i:                                   ; preds = %.noexc.i.i115.i
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !20
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !31
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !21
  br label %._crit_edge.i.i.i114.i

._crit_edge.i.i.i114.i:                           ; preds = %.noexc6.i116.i, %bb.n
  %i.ca = phi ptr [ %i.by, %.noexc6.i116.i ], [ %i.bu, %bb.n ] ; 2 uses
  switch i64 %i.bw, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.r
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i114.i
  %i.cb = load i8, ptr %i.bs, align 1, !tbaa !21
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !21
  br label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i.i114.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr nonnull align 1 %i.bs, i64 %i.bw, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %.noexc.i.i115.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i110.i
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bj
  br i1 %i.ce, label %.body118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.i: ; preds = %bb.q
  %i.cf = load i64, ptr %i.bj, align 8, !tbaa !21
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #21
  br label %.body118.i

bb.r:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i114.i
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !30
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store i32 156, ptr %i.cl, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.s unwind label %.body118.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i: ; preds = %.noexc.i122.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.body118.i:                                       ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111.i
  %i.cn = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bd
  br i1 %i.co, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i: ; preds = %.body118.i
  %i.cp = load i64, ptr %i.bd, align 8, !tbaa !21
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #21
  br label %.sink.split.i.i

.body118.thread.i:                                ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bd
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i: ; preds = %.body118.thread.i
  %i.cu = load i64, ptr %i.bd, align 8, !tbaa !21
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

.sink.split.i.i:                                  ; preds = %.body118.i, %.body134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.sink.i.i = phi ptr [ %i.h, %.body134.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i ], [ %i.bc, %.body118.i ]
  %.pn20.pn.ph.i.i = phi { ptr, i32 } [ %i.ag, %.body134.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i ], [ %i.cc, %.body118.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i: ; preds = %.body118.thread.i, %.body134.thread.i, %.sink.split.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn20.pn.i.i = phi { ptr, i32 } [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn20.pn.ph.i.i, %.sink.split.i.i ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i ], [ %i.av, %.body134.thread.i ], [ %i.cr, %.body118.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body

bb.s:                                             ; preds = %bb.r, %bb.i
  unreachable

._crit_edge.i:                                    ; preds = %bb.j, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a, %.preheader.i.preheader, %.preheader205.preheader.i
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
  br i1 %i.b, label %bb.b, label %_ZN11TestManager14getTestModulesEv.exit, !prof !148

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
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !149 ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !109
  %.not.i1 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  store ptr %0, ptr %i.e, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !149
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
  store ptr %0, ptr %i.t, align 8, !tbaa !151
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
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !149
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8DummyMapD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN3Map12emergeSectorEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3Map11emergeBlockEN4core8vector3dIsEEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1)
  ret ptr %i.a
}

declare void @_ZN3Map16addNodeAndUpdateEN4core8vector3dIsEE7MapNodeRSt3mapIS2_P8MapBlockSt4lessIS2_ESaISt4pairIKS2_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(144), i48, i32, ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3Map9beginSaveEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3Map7endSaveEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3Map4saveE13ModifiedState(ptr noundef nonnull align 8 dereferenceable(144) %0, i16 noundef zeroext %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN3Map4saveE13ModifiedState) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8DummyMap13maySaveBlocksEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3Map9saveBlockEP8MapBlock(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3Map11deleteBlockEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN3Map9PrintInfoERSo(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3Map13reportMetricsEmjj(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !98
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !105
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.t, align 8, !tbaa !97
  %i.u = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  store ptr %i.x, ptr %3, align 8, !tbaa !94
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !93
  store ptr %3, ptr %i.y, align 8, !tbaa !94
  br label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  store ptr %i.aa, ptr %3, align 8, !tbaa !94
  store ptr %3, ptr %i.z, align 8, !tbaa !111
  %i.ab = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !105
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !93
  br label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !152
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !152
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !154
  br label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector2dIsEEP9MapSectorELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector2dIsEEP9MapSectorELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector2dIsEEP9MapSectorELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector2dIsEEP9MapSectorELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !111
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !94 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !97
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !111
  store ptr %i.o, ptr %.02530, align 8, !tbaa !94
  store ptr %.02530, ptr %i.g, align 8, !tbaa !111
  store ptr %i.g, ptr %i.m, align 8, !tbaa !93
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !94
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !93
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !94
  store ptr %i.r, ptr %.02530, align 8, !tbaa !94
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !93
  store ptr %.02530, ptr %i.s, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !105
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #21
  br label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !105
  store ptr %.0.i, ptr %0, align 8, !tbaa !106
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7TestMap8runTestsEP8IGameDefE3$_0", ptr %0, align 8, !tbaa !113
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !114
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !25
  store i64 %.val.i, ptr %0, align 8, !tbaa !25
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_1E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !156
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !23
  tail call void @_ZN7TestMap21testForEachNodeInAreaEP8IGameDef(ptr nonnull readnone align 8 poison, ptr noundef %.val1.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7TestMap8runTestsEP8IGameDefE3$_1", ptr %0, align 8, !tbaa !113
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !114
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !115
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_2E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !158
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !23
  tail call void @_ZN7TestMap26testForEachNodeInAreaBlankEP8IGameDef(ptr nonnull readnone align 8 poison, ptr noundef %.val1.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7TestMap8runTestsEP8IGameDefE3$_2", ptr %0, align 8, !tbaa !113
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !114
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !115
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_3E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.DummyMap, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !160
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %.val.val, i48 0, i48 0)
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN7TestMap8runTestsEP8IGameDefE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7TestMap8runTestsEP8IGameDefE3$_3", ptr %0, align 8, !tbaa !113
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !114
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !115
  br label %"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7TestMap8runTestsEP8IGameDefE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeESaIS7_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !36     ; 2 uses
  %i.b = sext i16 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !37   ; 2 uses
  %i.e = sext i16 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i16, ptr %i.f, align 2, !tbaa !38   ; 2 uses
  %i.h = sext i16 %i.g to i64
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 40)
  %i.j = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.e, i64 16)
  %i.k = xor i64 %i.j, %i.i
  %i.l = xor i64 %i.k, %i.h                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.t = phi i64 [ %.pre.i.i, %bb.b ], [ %i.ah, %bb.f ]
  %i.u = phi ptr [ %i.s, %bb.b ], [ %i.af, %bb.f ] ; 5 uses
  %i.v = icmp eq i64 %i.l, %i.t
  br i1 %i.v, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i16, ptr %i.w, align 2, !tbaa !36
  %i.y = icmp eq i16 %i.a, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !37
  %i.ab = icmp eq i16 %i.d, %i.aa
  br i1 %i.ab, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !38
  %i.ae = icmp eq i16 %i.g, %i.ad
  br i1 %i.ae, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i, %bb.e, %bb.d, %bb.c
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !94  ; 3 uses
  %.not18.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.n
  %.not19.i.i = icmp eq i64 %i.ai, %i.o
  br i1 %.not19.i.i, label %bb.c, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.thread.i.i, %bb.f, %bb.a
  %i.aj = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 5 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !161
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = invoke ptr @_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.o, i64 noundef %i.l, ptr noundef nonnull %i.aj, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22: ; preds = %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #21
  resume { ptr, i32 } %i.an

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i, %.loopexit
  %.pn = phi ptr [ %i.am, %.loopexit ], [ %i.u, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEESt4pairIKS3_7MapNodeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS7_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !101
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !98
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !50
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.t, align 8, !tbaa !97
  %i.u = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  store ptr %i.x, ptr %3, align 8, !tbaa !94
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !93
  store ptr %3, ptr %i.y, align 8, !tbaa !94
  br label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  store ptr %i.aa, ptr %3, align 8, !tbaa !94
  store ptr %3, ptr %i.z, align 8, !tbaa !103
  %i.ab = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !93
  br label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !101
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !101
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !102
  br label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector3dIsEE7MapNodeELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !99

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector3dIsEE7MapNodeELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector3dIsEE7MapNodeELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4core8vector3dIsEE7MapNodeELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !103
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !94 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !97
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !103
  store ptr %i.o, ptr %.02530, align 8, !tbaa !94
  store ptr %.02530, ptr %i.g, align 8, !tbaa !103
  store ptr %i.g, ptr %i.m, align 8, !tbaa !93
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !94
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !93
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !94
  store ptr %i.r, ptr %.02530, align 8, !tbaa !94
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !93
  store ptr %.02530, ptr %i.s, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i
end_hunk_1
begin_hunk_2_@llvm.fshl.i64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #20

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !95}
!1 = distinct !{!1, !95}
!2 = distinct !{!2, !95}
!3 = distinct !{!3, !95}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !18, i64 8, !9, i64 16}
!20 = !{!19, !16, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!"p1 _ZTS8IGameDef", !15, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS7TestMap", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"any p2 pointer", !15, i64 0}
!27 = !{!"p2 _ZTS8IGameDef", !26, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!17, !16, i64 0}
!30 = !{!19, !18, i64 8}
!31 = !{!18, !18, i64 0}
!32 = !{!"_ZTS19TestFailedException", !19, i64 0, !19, i64 32, !10, i64 64}
!33 = !{!32, !10, i64 64}
!34 = !{!"short", !9, i64 0}
!35 = !{!"_ZTSN4core8vector3dIsEE", !34, i64 0, !34, i64 2, !34, i64 4}
!36 = !{!35, !34, i64 0}
!37 = !{!35, !34, i64 2}
!38 = !{!35, !34, i64 4}
!39 = !{!34, !34, i64 0}
!40 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !26, i64 0}
!41 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!42 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !41, i64 0}
!43 = !{!"float", !9, i64 0}
!44 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !43, i64 0, !18, i64 8}
!45 = !{!"_ZTSSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !40, i64 0, !18, i64 8, !42, i64 16, !18, i64 24, !44, i64 32, !41, i64 48}
!46 = !{!45, !40, i64 0}
!47 = !{!45, !18, i64 8}
!48 = !{!"_ZTSSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !40, i64 0, !18, i64 8, !42, i64 16, !18, i64 24, !44, i64 32, !41, i64 48}
!49 = !{!48, !40, i64 0}
!50 = !{!48, !18, i64 8}
!51 = !{!"bool", !9, i64 0}
!52 = !{!"p1 _ZTS7MapNode", !15, i64 0}
!53 = !{!"p1 short", !15, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseItSaItEE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorItSaItEE", !56, i64 0}
!58 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!59 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !58, i64 0}
!60 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!61 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!62 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!63 = !{!"_ZTSSt15_Rb_tree_header", !62, i64 0, !18, i64 32}
!64 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !59, i64 0, !63, i64 8}
!65 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !64, i64 0}
!66 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !65, i64 0}
!67 = !{!"_ZTS16NodeMetadataList", !51, i64 0, !66, i64 8}
!68 = !{!"p1 _ZTS12StaticObject", !15, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseI12StaticObjectSaIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorI12StaticObjectSaIS0_EE", !71, i64 0}
!73 = !{!"_ZTSSt4lessItE"}
!74 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessItEE", !73, i64 0}
!75 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !74, i64 0, !63, i64 8}
!76 = !{!"_ZTSSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE", !75, i64 0}
!77 = !{!"_ZTSSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE", !76, i64 0}
!78 = !{!"_ZTS16StaticObjectList", !72, i64 0, !77, i64 24}
!79 = !{!"_ZTSSt4lessIdE"}
!80 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIdEE", !79, i64 0}
!81 = !{!"_ZTSNSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !80, i64 0, !63, i64 8}
!82 = !{!"_ZTSSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE", !81, i64 0}
!83 = !{!"_ZTSSt8multimapId9NodeTimerSt4lessIdESaISt4pairIKdS0_EEE", !82, i64 0}
!84 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !59, i64 0, !63, i64 8}
!85 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE", !84, i64 0}
!86 = !{!"_ZTSSt3mapIN4core8vector3dIsEESt17_Rb_tree_iteratorISt4pairIKd9NodeTimerEESt4lessIS2_ESaIS4_IKS2_S8_EEE", !85, i64 0}
!87 = !{!"double", !9, i64 0}
!88 = !{!"_ZTS13NodeTimerList", !83, i64 0, !86, i64 48, !87, i64 96, !87, i64 104}
!89 = !{!"_ZTS8MapBlock", !51, i64 0, !35, i64 2, !35, i64 8, !34, i64 14, !52, i64 16, !22, i64 24, !43, i64 32, !51, i64 36, !51, i64 37, !57, i64 40, !51, i64 64, !51, i64 65, !34, i64 66, !10, i64 68, !10, i64 72, !10, i64 76, !34, i64 80, !51, i64 82, !51, i64 83, !67, i64 88, !78, i64 144, !88, i64 216}
!90 = !{!89, !52, i64 16}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!41, !41, i64 0}
!94 = !{!42, !41, i64 0}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !18, i64 0}
!97 = !{!96, !18, i64 0}
!98 = !{!44, !18, i64 8}
!99 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!100 = !{!45, !41, i64 16}
!101 = !{!48, !18, i64 24}
!102 = !{!48, !41, i64 48}
!103 = !{!48, !41, i64 16}
!104 = !{!"_ZTSSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !40, i64 0, !18, i64 8, !42, i64 16, !18, i64 24, !44, i64 32, !41, i64 48}
!105 = !{!104, !18, i64 8}
!106 = !{!104, !40, i64 0}
!107 = !{!"p2 _ZTS8TestBase", !26, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIP8TestBaseSaIS1_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!108, !107, i64 16}
!110 = !{!108, !107, i64 0}
!111 = !{!104, !41, i64 16}
!112 = !{!"p1 _ZTSSt9type_info", !15, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!15, !15, i64 0}
!115 = !{i64 0, i64 8, !25, i64 8, i64 8, !28}
!116 = !{!"_ZTSSt14_Function_base", !9, i64 0, !15, i64 16}
!117 = !{!"_ZTSSt8functionIFvvEE", !116, i64 0, !15, i64 24}
!118 = !{!117, !15, i64 24}
!119 = !{!116, !15, i64 16}
!120 = distinct !{!120, !95}
!121 = distinct !{!121, !95}
!122 = distinct !{!122, !95}
!123 = distinct !{!123, !95}
!124 = distinct !{!124, !95}
!125 = distinct !{!125, !95}
!126 = distinct !{!126, !95}
!127 = distinct !{!127, !95}
!128 = distinct !{!128, !95}
!129 = distinct !{null}
!130 = distinct !{!130, !95}
!131 = !{!44, !43, i64 0}
!132 = !{!89, !51, i64 36}
!133 = !{!45, !18, i64 24}
!134 = !{!45, !41, i64 48}
!135 = !{!"_ZTS7MapNode", !34, i64 0, !9, i64 2, !9, i64 3}
!136 = !{!135, !34, i64 0}
!137 = distinct !{!137, !95}
!138 = distinct !{!138, !95}
!139 = distinct !{!139, !95}
!140 = distinct !{!140, !95}
!141 = !{!"_ZTSN4core8vector2dIsEE", !34, i64 0, !34, i64 2}
!142 = !{!141, !34, i64 0}
!143 = !{!"p1 _ZTS9MapSector", !15, i64 0}
!144 = !{!"_ZTSSt4pairIKN4core8vector2dIsEEP9MapSectorE", !141, i64 0, !143, i64 8}
!145 = !{!144, !143, i64 8}
!146 = !{!143, !143, i64 0}
!147 = !{!51, !51, i64 0}
!148 = !{!"branch_weights", i32 1, i32 1048575}
!149 = !{!108, !107, i64 8}
!150 = !{!"p1 _ZTS8TestBase", !15, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!104, !18, i64 24}
!153 = distinct !{!153, !95}
!154 = !{!104, !41, i64 48}
!155 = !{!"_ZTSZN7TestMap8runTestsEP8IGameDefE3$_1", !24, i64 0, !27, i64 8}
!156 = !{!155, !27, i64 8}
!157 = !{!"_ZTSZN7TestMap8runTestsEP8IGameDefE3$_2", !24, i64 0, !27, i64 8}
!158 = !{!157, !27, i64 8}
!159 = !{!"_ZTSZN7TestMap8runTestsEP8IGameDefE3$_3", !24, i64 0, !27, i64 8}
!160 = !{!159, !27, i64 8}
!161 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39}
end_hunk_2
