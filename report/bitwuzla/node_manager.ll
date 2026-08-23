Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/node_manager?download=true
inline.NumInlined: 1117
inline.NumDeleted: 438
begin_hunk_0_@_ZN4bzla11NodeManager15garbage_collectEPNS_4node8NodeDataE:bb.a
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !317
  %i.bf = ptrtoint ptr %i.ar to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = add nsw i64 %i.bd, %i.bi
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !318
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !308
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3
  %i.bq = add nsw i64 %i.bj, %i.bp
  %i.br = icmp eq i64 %i.bq, 1152921504606846975
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.n, align 8, !tbaa !325
  %i.bt = load ptr, ptr %2, align 8, !tbaa !326
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.ax, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = sub i64 %i.bs, %i.bw
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %bb.q, label %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE22_M_reserve_map_at_backEm.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef 1, i1 noundef zeroext false)
          to label %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE22_M_reserve_map_at_backEm.exit.i unwind label %.loopexit

_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %bb.q, %bb.p
  %i.bz = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
          to label %.noexc unwind label %.loopexit ; 4 uses

.noexc:                                           ; preds = %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !327
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !316
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !323
  store ptr %i.am, ptr %i.cc, align 8, !tbaa !23
  store ptr %i.cb, ptr %i.d, align 8, !tbaa !315
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !317
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  store ptr %i.cd, ptr %i.m, align 8, !tbaa !318
  br label %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE9push_backERKS3_.exit.sink.split

.loopexit:                                        ; preds = %bb.q, %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE22_M_reserve_map_at_backEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE9push_backERKS3_.exit.sink.split: ; preds = %bb.m, %.noexc
  %.sink = phi ptr [ %i.bz, %.noexc ], [ %i.au, %bb.m ]
  store ptr %.sink, ptr %i.l, align 8, !tbaa !323
  br label %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE9push_backERKS3_.exit

_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE9push_backERKS3_.exit.sink.split, %bb.k
  %i.ce = add nuw i64 %.034, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond.not, label %_ZNSt13unordered_setIPN4bzla4node8NodeDataESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE5eraseERKS3_.exit, label %bb.k, !llvm.loop !328

.thread:                                          ; preds = %bb.e, %bb.i
  %i.cf = and i8 %i.ae, -3
  %or.cond3 = icmp eq i8 %i.cf, 1
  br i1 %or.cond3, label %bb.r, label %_ZNSt13unordered_setIPN4bzla4node8NodeDataESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE5eraseERKS3_.exit

bb.r:                                             ; preds = %.thread
  %i.cg = invoke noundef i64 @_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_setIPN4bzla4node8NodeDataESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE5eraseERKS3_.exit unwind label %bb.h ; 0 uses

_ZNSt13unordered_setIPN4bzla4node8NodeDataESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE5eraseERKS3_.exit: ; preds = %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EE9push_backERKS3_.exit, %bb.r, %.thread
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !23
  invoke void @_ZN4bzla4node8NodeData7deallocEPS1_(ptr noundef %i.ch)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %_ZNSt13unordered_setIPN4bzla4node8NodeDataESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE5eraseERKS3_.exit
  %i.ci = load <2 x i64>, ptr %i.o, align 8, !tbaa !101
  %i.cj = add <2 x i64> %i.ci, <i64 -1, i64 1>
  store <2 x i64> %i.cj, ptr %i.o, align 8, !tbaa !101
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !308
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !308 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.t, label %bb.b, !llvm.loop !329

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cn = load ptr, ptr %2, align 8, !tbaa !326   ; 2 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !314 ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !327 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i ], [ %i.co, %bb.u ] ; 3 uses
  %i.cs = load ptr, ptr %.06.i.i.i, align 8, !tbaa !316
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef 512) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cu = icmp ult ptr %.06.i.i.i, %i.cp
  br i1 %i.cu, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !330

_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !326
  br label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.u
  %i.cv = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.cn, %bb.u ]
  %i.cw = load i64, ptr %i.n, align 8, !tbaa !325
  %i.cx = shl i64 %i.cw, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cx) #21
  br label %_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit

_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit: ; preds = %bb.t, %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ai, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.p, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef i64 @_ZNK4bzla4node8NodeData16get_num_childrenEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

declare void @_ZN4bzla4node15NodeUniqueTable5eraseEPKNS0_8NodeDataE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4bzla4node8NodeDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !326    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !327  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !316
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #21
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, !llvm.loop !330

_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !326
  br label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !325
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #21
  br label %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN4bzla4node8NodeDataESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i8 } @_ZNK4bzla11NodeManager10get_symbolB5cxx11EPKNS_4node8NodeDataE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !68
  switch i8 %i.b, label %_ZNSt8optionalISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS6_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_T_EESt16is_constructibleIS8_JRKSE_EESt14is_convertibleISJ_S8_ESC_ISt5__or_IJSH_IS8_JRKS_ISE_EEESH_IS8_JRSO_EESH_IS8_JOSP_EESH_IS8_JOSO_EESL_ISQ_S8_ESL_ISS_S8_ESL_ISU_S8_ESL_ISW_S8_EEEEEEbE4typeELb1EEESQ_.exit [
    i8 1, label %bb.b
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i8, ptr %i.d, align 8, !tbaa !331, !range !64, !noundef !65
  br label %_ZNSt8optionalISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS6_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_T_EESt16is_constructibleIS8_JRKSE_EESt14is_convertibleISJ_S8_ESC_ISt5__or_IJSH_IS8_JRKS_ISE_EEESH_IS8_JRSO_EESH_IS8_JOSP_EESH_IS8_JOSO_EESL_ISQ_S8_ESL_ISS_S8_ESL_ISU_S8_ESL_ISW_S8_EEEEEEbE4typeELb1EEESQ_.exit

_ZNSt8optionalISt17reference_wrapperIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS6_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_T_EESt16is_constructibleIS8_JRKSE_EESt14is_convertibleISJ_S8_ESC_ISt5__or_IJSH_IS8_JRKS_ISE_EEESH_IS8_JRSO_EESH_IS8_JOSP_EESH_IS8_JOSO_EESL_ISQ_S8_ESL_ISS_S8_ESL_ISU_S8_ESL_ISW_S8_EEEEEEbE4typeELb1EEESQ_.exit: ; preds = %bb.b, %bb.a
  %.sroa.2.0 = phi i8 [ 0, %bb.a ], [ %i.e, %bb.b ]
  %.sroa.0.0 = phi ptr [ undef, %bb.a ], [ %i.c, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRS3_EEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !333
  %.not.not = icmp eq i64 %i.e, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = urem i64 %i.f, %i.h                      ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !334  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.m, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !8 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq ptr %i.c, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit, label %bb.c, !llvm.loop !335

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = urem i64 %i.q, %i.s
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = icmp eq ptr %i.c, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %i.c, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit, label %.lr.ph.i.i, !llvm.loop !336

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i, align 8, !tbaa !8 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.h
  %.not19.i.i = icmp eq i64 %i.ad, %i.i
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !336

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !336

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ae = phi i64 [ %i.t, %bb.e ], [ %i.i, %.thread ], [ %i.i, %..loopexit_crit_edge21.i.i ], [ %i.i, %.lr.ph.i.i ]
  %i.af = phi i64 [ %i.q, %bb.e ], [ %i.f, %.thread ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ag = invoke ptr @_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29

_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29: ; preds = %.critedge27
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  resume { ptr, i32 } %i.ah

_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.042.0.ph = phi ptr [ %.sroa.034.0, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  br label %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit
  %.sroa.443.055 = phi i8 [ 0, %_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit ], [ 1, %.critedge27 ]
  %.sroa.042.053 = phi ptr [ %.sroa.042.0.ph, %_ZNKSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS3_m.exit ], [ %i.ag, %.critedge27 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.042.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.443.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !337
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !333
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !337
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
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !22
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !334  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  store ptr %i.w, ptr %3, align 8, !tbaa !8
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !334
  store ptr %3, ptr %i.x, align 8, !tbaa !8
  br label %_ZNSt10_HashtableIPN4bzla4node8NodeDataES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  store ptr %i.z, ptr %3, align 8, !tbaa !8
  store ptr %3, ptr %i.y, align 8, !tbaa !12
  %i.aa = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !22
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !334
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !334
end_hunk_0
