inline.NumInlined: 13952
inline.NumDeleted: 6687
begin_hunk_0_@_ZNK6duckdb17PhysicalRangeJoin13ProjectResultERNS_9DataChunkES2_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !272
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !186
  %.not24 = icmp eq ptr %i.v, %i.w
  br i1 %.not24, label %._crit_edge23, label %.lr.ph22

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01719 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.01719)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.01719)
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68
  %i.aa = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.z)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.aa)
  %i.ab = add nuw i64 %.01719, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1936

._crit_edge23:                                    ; preds = %.lr.ph22, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !41
  ret void

.lr.ph22:                                         ; preds = %._crit_edge, %.lr.ph22
  %.020 = phi i64 [ %i.al, %.lr.ph22 ], [ 0, %._crit_edge ] ; 3 uses
  %i.af = add i64 %.020, %i.h
  %i.ag = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.af)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.020)
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.aj = add i64 %i.ai, %i.s
  %i.ak = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aj)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, ptr noundef nonnull align 8 dereferenceable(104) %i.ak)
  %i.al = add nuw i64 %.020, 1                    ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !184
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !186
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp ult i64 %i.al, %i.ar
  br i1 %i.as, label %.lr.ph22, label %._crit_edge23, !llvm.loop !1937
}

declare void @_ZN6duckdb9DataChunk6VerifyEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !270    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb23IEJoinGlobalSourceState19TryPrepareNextStageEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = zext i8 %i.b to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.d)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = load atomic i8, ptr %i.a seq_cst, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %.not = icmp uge i64 %i.k, %i.f                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i8, ptr %i.a seq_cst, align 8 ; 3 uses
  %.old1 = icmp ult i8 %i.l, 11
  br i1 %.old1, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.l to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.m, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %indvars.iv.next)
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68
  %i.p = icmp eq i64 %i.o, 0
  %i.q = icmp samesign ult i64 %indvars.iv, 10
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %.preheader, label %.loopexit.loopexit, !llvm.loop !1902

.loopexit.loopexit:                               ; preds = %.preheader
  %i.r = trunc nuw nsw i64 %indvars.iv.next to i8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.1 = phi i8 [ %i.l, %bb.b ], [ %i.r, %.loopexit.loopexit ]
  store atomic i8 %.1, ptr %i.a seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6duckdb23IEJoinGlobalSourceState10MaxThreadsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.f, %i.d
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !68
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.g = phi i64 [ %1, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.h = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.b, %.lr.ph.preheader.i.i ]
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.j = icmp ult i64 %i.g, %i.i
  %1 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %spec.select.i.i = select i1 %i.j, ptr %i.h, ptr %.sroa.02.010.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1938

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.02.2.i.i = phi ptr [ %i.b, %bb.a ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.l = load i64, ptr %.sroa.02.2.i.i, align 8, !tbaa !68
  ret i64 %i.l
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6duckdb23IEJoinGlobalSourceState10FinishTaskENS_12optional_ptrINS_16IEJoinSourceTaskELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, ptr nofree readnone captures(address_is_null) %1) local_unnamed_addr #17 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb23IEJoinGlobalSourceState11TryNextTaskERNS_16IEJoinSourceTaskE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 11)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %.not = icmp ult i64 %i.b, %i.e
  br i1 %.not, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %.preheader.1

bb.b:                                             ; preds = %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.034.lcssa = phi i8 [ -1, %.preheader.preheader ], [ 0, %.preheader.1 ], [ 1, %.preheader.2 ], [ 2, %.preheader.3 ], [ 3, %.preheader.4 ], [ 4, %.preheader.5 ], [ 5, %.preheader.6 ], [ 6, %.preheader.7 ], [ 7, %.preheader.8 ], [ 8, %.preheader.9 ], [ 9, %.preheader.10 ], [ 10, %.preheader.11 ] ; 2 uses
  store i8 %.034.lcssa, ptr %1, align 8, !tbaa !1882
  %i.j = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.k = zext i8 %.034.lcssa to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.k)
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !1888
  br label %.loopexit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.p = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !68
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.t = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 2)
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.x = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 3)
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 4)
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.b, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.af = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 5)
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !68
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.b, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 6)
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.am = icmp ult i64 %i.aj, %i.al
  br i1 %i.am, label %bb.b, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.an = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 7)
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !68
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.b, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 8)
  %i.at = load i64, ptr %i.as, align 8, !tbaa !68
  %i.au = icmp ult i64 %i.ar, %i.at
  br i1 %i.au, label %bb.b, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.av = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 9)
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !68
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.b, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.az = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 10)
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !68
  %i.bc = icmp ult i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.b, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !1939
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 11)
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !68
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.preheader.11, %bb.b
  %i.bh = load i8, ptr %1, align 8, !tbaa !1882
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bj = load atomic i8, ptr %i.bi seq_cst, align 8
  %.not27 = icmp eq i8 %i.bh, %i.bj
  br i1 %.not27, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.loopexit
  %i.bk = load atomic i8, ptr %i.bi seq_cst, align 8
  switch i8 %i.bk, label %bb.j [
    i8 1, label %bb.d
    i8 10, label %bb.g
    i8 9, label %bb.f
    i8 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !1888
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !1847 ; 2 uses
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1819
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1821
  %i.bu = add i64 %i.bt, %i.br                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bu) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !1889
  %i.bx = add i64 %i.bv, %i.bo
  %i.by = tail call noundef i64 @llvm.umin.i64(i64 %i.bx, i64 %i.bu)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !1888
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1847
  %i.cd = mul i64 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cf = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %i.ck = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.cj)
  %i.cl = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ck) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !1889
  %i.cn = load i64, ptr %i.cb, align 8, !tbaa !1847
  %i.co = add i64 %i.cn, %i.cl
  %i.cp = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
  %i.cu = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ct)
  %i.cv = tail call noundef i64 @llvm.umin.i64(i64 %i.co, i64 %i.cu)
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1888
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1847 ; 2 uses
  %i.da = mul i64 %i.cz, %i.cx                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.da, ptr %i.db, align 8, !tbaa !1889
  %i.dc = add i64 %i.da, %i.cz
end_hunk_0
