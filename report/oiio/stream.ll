inline.NumInlined: 202
inline.NumDeleted: 98
begin_hunk_0_@_ZN4YAML6Stream3getEv:bb.a
  %i.u = load i8, ptr %storemerge.i.i.i.i.i, align 1, !tbaa !36
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre1.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.pre1.i, i64 -1
  %.not.i.i = icmp eq ptr %i.d, %i.v
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef %i.g) #16
  %i.x = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.y, ptr %.phi.trans.insert, align 8, !tbaa !45
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52   ; 3 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 512 ; 2 uses
  store ptr %i.aa, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i

_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i:           ; preds = %bb.i, %bb.h
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.y, %bb.i ]
  %.pre.i = phi ptr [ %i.c, %bb.h ], [ %.pre.pre.i, %bb.i ]
  %i.ac = phi ptr [ %.pre1.i, %bb.h ], [ %i.aa, %bb.i ]
  %storemerge.i.i = phi ptr [ %i.w, %bb.h ], [ %i.z, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !66
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !66
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK4YAML6Stream4peekEv.exit.thread, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i
  %i.ag = phi ptr [ %i.ab, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %.pre, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %.0.i5 = phi i8 [ %i.u, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ 4, %_ZNK4YAML6Stream4peekEv.exit.thread ] ; 2 uses
  %i.ah = phi ptr [ %storemerge.i.i, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %i.c, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %i.ai = phi ptr [ %i.ac, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %.pre1.i4, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %i.aj = phi ptr [ %.pre.i, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %i.c, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ne ptr %i.al, null
  %.neg.i.i.i.i = sext i1 %i.aq to i64
  %i.ar = add nsw i64 %i.ap, %.neg.i.i.i.i
  %i.as = shl nsw i64 %i.ar, 9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.av = ptrtoint ptr %i.aj to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.ai to i64
  %i.ay = ptrtoint ptr %i.ah to i64
  %i.az = add i64 %i.av, %i.ax
  %i.ba = sub i64 %i.az, %i.aw
  %i.bb = add i64 %i.ba, %i.as
  %.not.i = icmp eq i64 %i.bb, %i.ay
  br i1 %.not.i, label %bb.j, label %_ZN4YAML6Stream14AdvanceCurrentEv.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.bc = tail call noundef zeroext i1 @_ZNK4YAML6Stream12_ReadAheadToEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 0) ; 0 uses
  br label %_ZN4YAML6Stream14AdvanceCurrentEv.exit

_ZN4YAML6Stream14AdvanceCurrentEv.exit:           ; preds = %._crit_edge.i, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !67
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !67
  %i.bg = icmp eq i8 %.0.i5, 10
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4YAML6Stream14AdvanceCurrentEv.exit
  store i32 0, ptr %i.bd, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !68
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4YAML6Stream14AdvanceCurrentEv.exit
  ret i8 %.0.i5
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6Stream14AdvanceCurrentEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre1 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 3 uses
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %.pre1, i64 -1
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  tail call void @_ZdlPv(ptr noundef %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !45
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 3 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512 ; 2 uses
  store ptr %i.n, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit

_ZNSt5dequeIcSaIcEE9pop_frontEv.exit:             ; preds = %bb.c, %bb.d
  %.pre = phi ptr [ %i.c, %bb.c ], [ %.pre.pre, %bb.d ]
  %i.o = phi ptr [ %.pre1, %bb.c ], [ %i.n, %bb.d ]
  %storemerge.i = phi ptr [ %i.g, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !66
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit
  %i.s = phi ptr [ %storemerge.i, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit ], [ %i.c, %bb.a ]
  %i.t = phi ptr [ %i.o, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit ], [ %.pre1, %bb.a ]
  %i.u = phi ptr [ %.pre, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = icmp ne ptr %i.w, null
  %.neg.i.i.i = sext i1 %i.ad to i64
  %i.ae = add nsw i64 %i.ac, %.neg.i.i.i
  %i.af = shl nsw i64 %i.ae, 9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = ptrtoint ptr %i.u to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.t to i64
  %i.al = ptrtoint ptr %i.s to i64
  %i.am = sub i64 %i.ai, %i.aj
  %i.an = add i64 %i.am, %i.ak
  %i.ao = add i64 %i.an, %i.af
  %.not = icmp eq i64 %i.ao, %i.al
  br i1 %.not, label %bb.e, label %_ZNK4YAML6Stream11ReadAheadToEm.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ap = tail call noundef zeroext i1 @_ZNK4YAML6Stream12_ReadAheadToEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 0) ; 0 uses
  br label %_ZNK4YAML6Stream11ReadAheadToEm.exit

_ZNK4YAML6Stream11ReadAheadToEm.exit:             ; preds = %._crit_edge, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6Stream3getB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !72
  store i8 0, ptr %i.a, align 8, !tbaa !36
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %.lr.ph unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.012 = phi i32 [ %i.q, %bb.g ], [ 0, %bb.b ]
  %i.f = invoke noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr %i.b, align 8, !tbaa !72   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a                   ; 2 uses
  br i1 %i.j, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.e, %bb.d
  %3 = load i64, ptr %i.a, align 8
  %4 = select i1 %i.j, i64 15, i64 %3
  %i.l = icmp ugt i64 %i.h, %4
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.m = phi ptr [ %.pre.i.i, %.noexc ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 %i.f, ptr %i.n, align 1, !tbaa !36
  store i64 %i.h, ptr %i.b, align 8, !tbaa !72
  %i.o = load ptr, ptr %0, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !36
  %i.q = add nuw nsw i32 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !75

bb.h:                                             ; preds = %bb.f, %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit:                                        ; preds = %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.e, %bb.c ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef %i.s) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 0 uses
  %i.c = add nuw nsw i32 %.03, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4YAML6Stream12_ReadAheadToEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !57, !nonnull !42, !align !58 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !45   ; 3 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp ne ptr %i.q, null
  %.neg.i.i = sext i1 %i.w to i64
  %i.x = add nsw i64 %i.v, %.neg.i.i
  %i.y = shl nsw i64 %i.x, 9
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.ab, %i.ac
  %i.ai = add i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = add i64 %i.ai, %i.y
  %i.ak = sub i64 %i.aj, %i.ag
  %.not = icmp ugt i64 %i.ak, %1
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i32, ptr %i.p, align 4, !tbaa !44
  switch i32 %i.al, label %bb.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK4YAML6Stream12StreamInUtf8Ev(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNK4YAML6Stream13StreamInUtf16Ev(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  tail call void @_ZNK4YAML6Stream13StreamInUtf16Ev(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  tail call void @_ZNK4YAML6Stream13StreamInUtf32Ev(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  tail call void @_ZNK4YAML6Stream13StreamInUtf32Ev(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.am = load ptr, ptr %0, align 8, !tbaa !57, !nonnull !42, !align !58 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.b, label %.critedge, !llvm.loop !77

.critedge:                                        ; preds = %bb.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 4, ptr %i.a, align 1, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !79
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -1
  %.not.i.i = icmp eq ptr %i.av, %i.ay
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  store i8 4, ptr %i.av, align 1, !tbaa !36
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !78
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

bb.k:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre9.pre = load ptr, ptr %i.au, align 8, !tbaa !46
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

_ZNSt5dequeIcSaIcEE9push_backEOc.exit:            ; preds = %bb.j, %bb.k
  %.pre9 = phi ptr [ %i.ba, %bb.j ], [ %.pre9.pre, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre7 = load ptr, ptr %.phi.trans.insert6, align 8, !tbaa !45
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !47
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !tbaa !48
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre15 = load ptr, ptr %.phi.trans.insert14, align 8, !tbaa !46
  %.pre17 = ptrtoint ptr %.pre to i64
  %.pre18 = ptrtoint ptr %.pre7 to i64
  %.pre20 = sub i64 %.pre17, %.pre18
  %.pre22 = ashr exact i64 %.pre20, 3
  %.pre24 = ptrtoint ptr %.pre9 to i64
  %.pre26 = ptrtoint ptr %.pre11 to i64
  %.pre28 = ptrtoint ptr %.pre13 to i64
  %.pre30 = ptrtoint ptr %.pre15 to i64
end_hunk_0
begin_hunk_1_@_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm:bb.a
bb.x:                                             ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit36
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !36
  %i.cq = load ptr, ptr %i.bt, align 8, !tbaa !78
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cr, ptr %i.bt, align 8, !tbaa !78
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit38

bb.y:                                             ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit36
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  %.pre42 = load ptr, ptr %i.bt, align 8, !tbaa !78
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit38

_ZNSt5dequeIcSaIcEE9push_backEOc.exit38:          ; preds = %bb.x, %bb.y
  %i.cs = phi ptr [ %i.cr, %bb.x ], [ %.pre42, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.ct = trunc i64 %spec.store.select to i8
  %i.cu = and i8 %i.ct, 63
  %i.cv = or disjoint i8 %i.cu, -128              ; 2 uses
  store i8 %i.cv, ptr %i.j, align 1, !tbaa !36
  %i.cw = load ptr, ptr %i.bv, align 8, !tbaa !79
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -1
  %.not.i.i39 = icmp eq ptr %i.cs, %i.cx
  br i1 %.not.i.i39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit38
  store i8 %i.cv, ptr %i.cs, align 1, !tbaa !36
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !78
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit40

bb.aa:                                            ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit38
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit40

_ZNSt5dequeIcSaIcEE9push_backEOc.exit40:          ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit26, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit40, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit32, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 9                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !92
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #14 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #14
          to label %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_.exit, !llvm.loop !93

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #15 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !52
  tail call void @_ZdlPv(ptr noundef %i.r) #16
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i, !llvm.loop !53

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #17
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #18
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #15 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !49
  tail call void @_ZdlPv(ptr noundef %i.z) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.aa

_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_.exit: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ac, align 8, !tbaa !45
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !52  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !45
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.am, ptr %i.an, align 8, !tbaa !48
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !65
  %i.ao = and i64 %1, 511
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !78
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #18
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 9
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.q, %i.r
  %i.y = add i64 %i.x, %i.v
  %i.z = add i64 %i.y, %i.m
  %i.aa = sub i64 %i.z, %i.w
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !92
  %i.ae = load ptr, ptr %0, align 8, !tbaa !49
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.g, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = sub i64 %i.ad, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.d, label %_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %3 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.ak, align 8, !tbaa !52
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.am = load i8, ptr %1, align 1, !tbaa !36
  store i8 %i.am, ptr %i.al, align 1, !tbaa !36
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !45
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !78
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !49
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !94

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !52
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !52
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !94

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !52
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !52
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit, !prof !95

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #14 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !94

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !52
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !52
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !49
  tail call void @_ZdlPv(ptr noundef %i.bc) #16
  store ptr %i.aq, ptr %0, align 8, !tbaa !49
  store i64 %i.am, ptr %i.k, align 8, !tbaa !92
  br label %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPcS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !45
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !52   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !45
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

end_hunk_1
