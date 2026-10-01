Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/seqno_to_time_mapping?download=true
inline.NumInlined: 1017
inline.NumDeleted: 343
begin_hunk_0_@_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !23
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !23
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !23
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit, !prof !67

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !42  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !66

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !23
  store ptr %i.be, ptr %i.av, align 8, !tbaa !23
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !69
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !68
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #22
  store ptr %i.aq, ptr %0, align 8, !tbaa !69
  store i64 %i.am, ptr %i.k, align 8, !tbaa !68
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !22
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !23   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !22
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt15__copy_move_ditILb0EN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairERKS2_PS3_St20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET3_St15_Deque_iteratorIT0_T1_T2_ESG_SB_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i ], [ %i.u, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i ] ; 2 uses
  %.056.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.t, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i, i64 16, i1 false), !tbaa.struct !46
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.m, align 8, !tbaa !50
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i)
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i

_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 16
  %i.u = add nsw i64 %.07.i.i.i, -1
  %i.v = icmp sgt i64 %.07.i.i.i, 1
  br i1 %i.v, label %bb.c, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit.loopexit, !llvm.loop !427

_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  %.pre35 = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit

_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit: ; preds = %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit.loopexit, %bb.b
  %i.w = phi ptr [ %.pre35, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit.loopexit ], [ %i.d, %bb.b ]
  %i.x = phi ptr [ %.pre, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit.loopexit ], [ %i.b, %bb.b ]
  %.031 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not1132 = icmp eq ptr %.031, %i.w
  br i1 %.not1132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre36.pre = load ptr, ptr %i.y, align 8, !tbaa !50
  %.pre36.pre.a = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %bb.i

._crit_edge:                                      ; preds = %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !29
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i12, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit17

.lr.ph.i.i.i12:                                   ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16, %.lr.ph.i.i.i12
  %.07.i.i.i13 = phi i64 [ %i.an, %.lr.ph.i.i.i12 ], [ %i.ax, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16 ] ; 2 uses
  %.056.i.i.i14 = phi ptr [ %i.ai, %.lr.ph.i.i.i12 ], [ %i.aw, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16 ] ; 3 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !51
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i.i.i.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i14, i64 16, i1 false), !tbaa.struct !46
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !50
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i14)
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16

_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16: ; preds = %bb.h, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.056.i.i.i14, i64 16
  %i.ax = add nsw i64 %.07.i.i.i13, -1
  %i.ay = icmp sgt i64 %.07.i.i.i13, 1
  br i1 %i.ay, label %bb.f, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit17, !llvm.loop !427

bb.i:                                             ; preds = %.lr.ph, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23
  %.pre38 = phi ptr [ %.pre36.pre.a, %.lr.ph ], [ %4, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23 ]
  %.pre36 = phi ptr [ %.pre36.pre, %.lr.ph ], [ %storemerge, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23 ]
  %.033 = phi ptr [ %.031, %.lr.ph ], [ %.0, %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23 ] ; 2 uses
  %i.az = load ptr, ptr %.033, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22, %bb.i
  %i.ba = phi ptr [ %.pre38, %bb.i ], [ %4, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22 ]
  %3 = phi ptr [ %.pre36, %bb.i ], [ %storemerge, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22 ] ; 3 uses
  %.07.i.i.i19 = phi i64 [ 32, %bb.i ], [ %i.eq, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22 ] ; 2 uses
  %.056.i.i.i20 = phi ptr [ %i.az, %bb.i ], [ %i.ep, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22 ] ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16
  %.not.i.i.i.i.i21 = icmp eq ptr %3, %i.bb
  br i1 %.not.i.i.i.i.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i20, i64 16, i1 false), !tbaa.struct !46
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.pre37 = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 3 uses
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 6 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %i.bk = icmp ne ptr %i.be, null
  %.neg.i.i.i = sext i1 %i.bk to i64
  %i.bl = add nsw i64 %i.bj, %.neg.i.i.i
  %i.bm = shl nsw i64 %i.bl, 5
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.bo = ptrtoint ptr %3 to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 4
  %i.bs = add nsw i64 %i.bm, %i.br
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 4
  %i.bz = add nsw i64 %i.bs, %i.by
  %i.ca = icmp eq i64 %i.bz, 1152921504606846975
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cb = load i64, ptr %i.af, align 8, !tbaa !68 ; 5 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.bg, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = sub i64 %i.cb, %i.cf
  %i.ch = icmp ult i64 %i.cg, 2
  br i1 %i.ch, label %bb.o, label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit

bb.o:                                             ; preds = %bb.n
  %i.ci = add nsw i64 %i.bj, 1                    ; 2 uses
  %i.cj = add nsw i64 %i.bj, 2                    ; 3 uses
  %i.ck = shl nsw i64 %i.cj, 1
  %i.cl = icmp ugt i64 %i.cb, %i.ck
  br i1 %i.cl, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cm = sub i64 %i.cb, %i.cj
  %i.cn = lshr i64 %i.cm, 1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cn ; 10 uses
  %i.cp = icmp ult ptr %i.co, %i.bf
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  br i1 %i.cp, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.bh                    ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, 8
  br i1 %i.ct, label %bb.r, label %bb.s, !prof !66

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.co, ptr nonnull align 8 %i.bf, i64 %i.cs, i1 false)
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

bb.s:                                             ; preds = %bb.q
  %i.cu = icmp eq i64 %i.cs, 8
  br i1 %i.cu, label %bb.t, label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.bf, align 8, !tbaa !23
  store ptr %i.cv, ptr %i.co, align 8, !tbaa !23
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

bb.u:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ci ; 2 uses
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cx, %i.bh                    ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 1
  br i1 %i.da, label %bb.v, label %bb.w, !prof !66

bb.v:                                             ; preds = %bb.u
  %i.db = sub nsw i64 0, %i.cz
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 8 %i.bf, i64 %i.cy, i1 false)
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

bb.w:                                             ; preds = %bb.u
  %i.dd = icmp eq i64 %i.cy, 8
  br i1 %i.dd, label %bb.x, label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.df = load ptr, ptr %i.bf, align 8, !tbaa !23
  store ptr %i.df, ptr %i.de, align 8, !tbaa !23
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

bb.y:                                             ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.dg = add i64 %i.cb, 2
  %i.dh = add i64 %i.dg, %.sroa.speculated.i      ; 5 uses
  %i.di = icmp ugt i64 %i.dh, 1152921504606846975
  br i1 %i.di, label %bb.z, label %_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit.i, !prof !67

bb.z:                                             ; preds = %bb.y
  %i.dj = icmp ugt i64 %i.dh, 2305843009213693951
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.y
  %i.dk = shl nuw nsw i64 %i.dh, 3
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #24 ; 2 uses
  %i.dm = sub nsw i64 %i.dh, %i.cj
  %i.dn = lshr i64 %i.dm, 1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  %i.dp = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %i.dq = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 8
  br i1 %i.dv, label %bb.ac, label %bb.ad, !prof !66

bb.ac:                                            ; preds = %_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr align 8 %i.dp, i64 %i.du, i1 false)
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24.i

bb.ad:                                            ; preds = %_ZNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE15_M_allocate_mapEm.exit.i
  %i.dw = icmp eq i64 %i.du, 8
  br i1 %i.dw, label %bb.ae, label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24.i

bb.ae:                                            ; preds = %bb.ad
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !23
  store ptr %i.dx, ptr %i.do, align 8, !tbaa !23
  br label %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24.i

_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dy = load ptr, ptr %2, align 8, !tbaa !69
  %i.dz = load i64, ptr %i.af, align 8, !tbaa !68
  %i.ea = shl i64 %i.dz, 3
  tail call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ea) #22
  store ptr %i.dl, ptr %2, align 8, !tbaa !69
  store i64 %i.dh, ptr %i.af, align 8, !tbaa !68
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit

_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24.i
  %.0.i = phi ptr [ %i.do, %_ZSt4copyIPPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairES4_ET0_T_S6_S5_.exit24.i ], [ %i.co, %bb.t ], [ %i.co, %bb.r ], [ %i.co, %bb.s ], [ %i.co, %bb.v ], [ %i.co, %bb.w ], [ %i.co, %bb.x ] ; 3 uses
  store ptr %.0.i, ptr %i.ac, align 8, !tbaa !22
  %i.eb = load ptr, ptr %.0.i, align 8, !tbaa !23 ; 2 uses
  store ptr %i.eb, ptr %i.ag, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 512
  store ptr %i.ec, ptr %i.ae, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ci
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 2 uses
  store ptr %i.ee, ptr %i.ab, align 8, !tbaa !22
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !23 ; 2 uses
  store ptr %i.ef, ptr %i.ad, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 512
  store ptr %i.eg, ptr %i.z, align 8, !tbaa !21
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit

_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit: ; preds = %bb.n, %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb.exit
  %i.eh = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
  %i.ei = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !23
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i20, i64 16, i1 false), !tbaa.struct !46
  %i.el = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.ab, align 8, !tbaa !22
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !23 ; 3 uses
  store ptr %i.en, ptr %i.ad, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 512 ; 2 uses
  store ptr %i.eo, ptr %i.z, align 8, !tbaa !21
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22

_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22: ; preds = %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit, %bb.k
  %4 = phi ptr [ %.pre37, %bb.k ], [ %i.eo, %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ] ; 2 uses
  %storemerge = phi ptr [ %i.bd, %bb.k ], [ %i.en, %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit ] ; 3 uses
  store ptr %storemerge, ptr %i.y, align 8, !tbaa !50
  %i.ep = getelementptr inbounds nuw i8, ptr %.056.i.i.i20, i64 16
  %i.eq = add nsw i64 %.07.i.i.i19, -1
  %i.er = icmp samesign ugt i64 %.07.i.i.i19, 1
  br i1 %i.er, label %bb.j, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23, !llvm.loop !427

_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit23: ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i22
  %.0 = getelementptr inbounds nuw i8, ptr %.033, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !32
  %.not11 = icmp eq ptr %.0, %i.es
  br i1 %.not11, label %._crit_edge, label %bb.i, !llvm.loop !428

bb.af:                                            ; preds = %bb.a
  %i.et = load ptr, ptr %1, align 8, !tbaa !29
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.e to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 4                 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %.lr.ph.i.i.i24, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit17

.lr.ph.i.i.i24:                                   ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28, %.lr.ph.i.i.i24
  %.07.i.i.i25 = phi i64 [ %i.ex, %.lr.ph.i.i.i24 ], [ %i.fh, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28 ] ; 2 uses
  %.056.i.i.i26 = phi ptr [ %i.e, %.lr.ph.i.i.i24 ], [ %i.fg, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28 ] ; 3 uses
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !50 ; 2 uses
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !51
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -16
  %.not.i.i.i.i.i27 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not.i.i.i.i.i27, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i26, i64 16, i1 false), !tbaa.struct !46
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.ff, ptr %i.ez, align 8, !tbaa !50
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28

bb.ai:                                            ; preds = %bb.ag
  tail call void @_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %.056.i.i.i26)
  br label %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28

_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28: ; preds = %bb.ai, %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %.056.i.i.i26, i64 16
  %i.fh = add nsw i64 %.07.i.i.i25, -1
  %i.fi = icmp sgt i64 %.07.i.i.i25, 1
  br i1 %i.fi, label %bb.ag, label %_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit17, !llvm.loop !427

_ZSt14__copy_move_a1ILb0EPN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESt20back_insert_iteratorISt5dequeIS2_SaIS2_EEEET1_T0_SA_S9_.exit17: ; preds = %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i16, %_ZNSt20back_insert_iteratorISt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS3_EEEaSERKS3_.exit.i.i.i28, %bb.af, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !68
  %i.ag = load ptr, ptr %0, align 8, !tbaa !69
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !23
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !46
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !22
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !21
  store ptr %i.as, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !66

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  store i8 %i.v, ptr %i.t, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
end_hunk_0
